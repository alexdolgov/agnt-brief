// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {LPFeeLibrary} from "v4-core/libraries/LPFeeLibrary.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {Currency, CurrencyLibrary} from "v4-core/types/Currency.sol";
import {LimitOrderManager} from "./LimitOrderManager.sol";
import {LimitOrderLens} from "./periphery/LimitOrderLens.sol";
import {RebalanceLogic} from "../MultiPositionManager/libraries/RebalanceLogic.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {MultiPositionFactory} from "../MultiPositionManager/MultiPositionFactory.sol";
import {VolatilityDynamicFeeLimitOrderHook} from "./hooks/VolatilityDynamicFeeLimitOrderHook.sol";
import {VolatilityOracle} from "./libraries/VolatilityOracle.sol";

/// @title OrderBookFactory
/// @notice Unilaunch pool factory for creating pools/MPMs with a singleton volatility hook
contract OrderBookFactory is AccessControl {
    using CurrencyLibrary for Currency;
    using PoolIdLibrary for PoolKey;
    using SafeERC20 for IERC20;

    bytes32 public constant HOOK_PARAM_MANAGER_ROLE = keccak256("HOOK_PARAM_MANAGER_ROLE");

    error ZeroAddress();
    error NotAuthorizedStrategy();
    error TokenOrderingIncorrect();
    error InvalidAmount();
    error UnauthorizedInitializer();
    error TokenLaunchFactoryNotSet();
    error TokenLaunchFactoryAlreadySet();
    error InvalidTokenLaunchFactory();

    struct VolatilityDynamicPoolParams {
        Currency currency0;
        Currency currency1;
        int24 tickSpacing;
        uint160 sqrtPriceX96;
        uint256 deposit0Desired;
        uint256 deposit1Desired;
        address managerOwner;
        string name;
        address to;
        uint256[2][] inMin;
        IMultiPositionManager.RebalanceParams rebalanceParams;
    }

    IPoolManager public immutable poolManager;
    LimitOrderManager public immutable limitOrderManager;
    LimitOrderLens public immutable limitOrderLens;
    MultiPositionFactory public immutable multiPositionFactory;
    VolatilityDynamicFeeLimitOrderHook public immutable hook;
    VolatilityOracle public immutable volatilityOracle;

    address public tokenLaunchFactory;

    uint24 public baseFee;
    uint24 public surgeMultiplier;
    uint32 public surgeDuration;
    uint24 public initialMaxTicksPerBlock;

    event PoolCreated(bytes32 indexed poolId, address indexed strategy, address indexed hook);
    event HookParamsUpdated(uint24 baseFee, uint24 surgeMultiplier, uint32 surgeDuration, uint24 initialMaxTicksPerBlock);
    event TokenLaunchFactorySet(address indexed tokenLaunchFactory);

    constructor(
        address admin,
        IPoolManager _poolManager,
        LimitOrderManager _limitOrderManager,
        LimitOrderLens _limitOrderLens,
        MultiPositionFactory _multiPositionFactory,
        VolatilityOracle _volatilityOracle,
        VolatilityDynamicFeeLimitOrderHook _hook,
        uint24 _baseFee,
        uint24 _surgeMultiplier,
        uint32 _surgeDuration,
        uint24 _initialMaxTicksPerBlock
    ) {
        if (admin == address(0)) revert ZeroAddress();
        if (address(_poolManager) == address(0)) revert ZeroAddress();
        if (address(_limitOrderManager) == address(0)) revert ZeroAddress();
        if (address(_limitOrderLens) == address(0)) revert ZeroAddress();
        if (address(_multiPositionFactory) == address(0)) revert ZeroAddress();
        if (address(_volatilityOracle) == address(0)) revert ZeroAddress();
        if (address(_hook) == address(0)) revert ZeroAddress();

        poolManager = _poolManager;
        limitOrderManager = _limitOrderManager;
        limitOrderLens = _limitOrderLens;
        multiPositionFactory = _multiPositionFactory;
        volatilityOracle = _volatilityOracle;

        hook = _hook;

        baseFee = _baseFee;
        surgeMultiplier = _surgeMultiplier;
        surgeDuration = _surgeDuration;
        initialMaxTicksPerBlock = _initialMaxTicksPerBlock;

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(HOOK_PARAM_MANAGER_ROLE, admin);
    }

    function setTokenLaunchFactory(address factory) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (factory == address(0)) revert ZeroAddress();
        if (factory.code.length == 0) revert InvalidTokenLaunchFactory();
        if (tokenLaunchFactory != address(0)) revert TokenLaunchFactoryAlreadySet();
        tokenLaunchFactory = factory;
        emit TokenLaunchFactorySet(factory);
    }

    function registerHookWithOracle() external onlyRole(DEFAULT_ADMIN_ROLE) {
        volatilityOracle.addAuthorizedHook(address(hook));
    }

    function setHookParams(
        uint24 _baseFee,
        uint24 _surgeMultiplier,
        uint32 _surgeDuration,
        uint24 _initialMaxTicksPerBlock
    ) external onlyRole(HOOK_PARAM_MANAGER_ROLE) {
        baseFee = _baseFee;
        surgeMultiplier = _surgeMultiplier;
        surgeDuration = _surgeDuration;
        initialMaxTicksPerBlock = _initialMaxTicksPerBlock;
        emit HookParamsUpdated(_baseFee, _surgeMultiplier, _surgeDuration, _initialMaxTicksPerBlock);
    }

    function updatePoolBaseFee(PoolKey calldata key, uint24 newBaseFee) external onlyRole(HOOK_PARAM_MANAGER_ROLE) {
        hook.updateBaseFee(key, newBaseFee);
    }

    function updatePoolSurgeParams(PoolKey calldata key, uint24 multiplier, uint32 duration)
        external
        onlyRole(HOOK_PARAM_MANAGER_ROLE)
    {
        hook.updateSurgeParams(key, multiplier, duration);
    }

    function updatePoolOraclePolicy(
        PoolKey calldata key,
        uint24 minCap,
        uint24 maxCap,
        uint32 stepPpm,
        uint32 budgetPpm,
        uint32 decayWindow,
        uint32 updateInterval
    ) external onlyRole(HOOK_PARAM_MANAGER_ROLE) {
        hook.updateOraclePolicy(key, minCap, maxCap, stepPpm, budgetPpm, decayWindow, updateInterval);
    }

    function createVolatilityDynamicLimitOrderPoolWithManager(VolatilityDynamicPoolParams calldata params)
        external
        payable
        returns (PoolKey memory poolKey, address mpm)
    {
        _requireRegisteredStrategy();
        // Enforce canonical ordering (currency0 < currency1) and ensure currency1 is never native.
        // If one side is native (address(0)), this guarantees native is always currency0.
        if (Currency.unwrap(params.currency0) >= Currency.unwrap(params.currency1)) revert TokenOrderingIncorrect();
        if (Currency.unwrap(params.currency1) == address(0)) revert TokenOrderingIncorrect();
        if (params.managerOwner == address(0) || params.to == address(0)) revert ZeroAddress();
        if (params.deposit0Desired == 0 && params.deposit1Desired == 0) revert InvalidAmount();
        if (params.currency0.isAddressZero()) {
            if (msg.value != params.deposit0Desired) revert InvalidAmount();
        } else {
            if (msg.value != 0) revert InvalidAmount();
        }

        poolKey = PoolKey({
            currency0: params.currency0,
            currency1: params.currency1,
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: params.tickSpacing,
            hooks: hook
        });

        hook.registerPool(poolKey, baseFee, surgeMultiplier, surgeDuration, initialMaxTicksPerBlock);
        poolManager.initialize(poolKey, params.sqrtPriceX96);
        limitOrderLens.addPoolId(poolKey.toId(), poolKey);
        limitOrderManager.setWhitelistedPool(poolKey.toId(), true);
        limitOrderManager.enableHook(address(hook));

        // Pull any ERC20 deposits (native deposits are provided via msg.value).
        _pullTokenFromCaller(poolKey.currency0, params.deposit0Desired);
        _pullTokenFromCaller(poolKey.currency1, params.deposit1Desired);

        address futureMPM = multiPositionFactory.computeAddress(poolKey, params.managerOwner, params.name);
        _approveTokenForMPM(poolKey.currency0, params.deposit0Desired, futureMPM);
        _approveTokenForMPM(poolKey.currency1, params.deposit1Desired, futureMPM);

        mpm = multiPositionFactory.deployDepositAndRebalance{value: msg.value}(
            poolKey,
            params.managerOwner,
            params.name,
            params.deposit0Desired,
            params.deposit1Desired,
            params.to,
            params.inMin,
            params.rebalanceParams
        );

        emit PoolCreated(PoolId.unwrap(poolKey.toId()), msg.sender, address(hook));
    }

    function _requireRegisteredStrategy() private view {
        address factory = tokenLaunchFactory;
        if (factory == address(0)) revert TokenLaunchFactoryNotSet();
        (bool ok,) = factory.staticcall(
            abi.encodeWithSignature("getLaunchByStrategy(address)", msg.sender)
        );
        if (!ok) revert NotAuthorizedStrategy();
    }

    function _pullTokenFromCaller(Currency currency, uint256 amount) private {
        if (amount == 0 || currency.isAddressZero()) return;
        IERC20(Currency.unwrap(currency)).safeTransferFrom(msg.sender, address(this), amount);
    }

    function _approveTokenForMPM(Currency currency, uint256 amount, address mpm) private {
        if (amount == 0 || currency.isAddressZero()) return;
        IERC20(Currency.unwrap(currency)).forceApprove(mpm, amount);
    }
}
