// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {LPFeeLibrary} from "v4-core/libraries/LPFeeLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId} from "v4-core/types/PoolId.sol";
import {Currency, CurrencyLibrary} from "v4-core/types/Currency.sol";
import {LimitOrderManager} from "./LimitOrderManager.sol";
import {LimitOrderLens} from "./periphery/LimitOrderLens.sol";
import {LimitOrderHook} from "./hooks/LimitOrderHook.sol";
import {DynamicFeeHookRegistry} from "./hooks/DynamicFeeHookRegistry.sol";
import {VolatilityDynamicFeeHookRegistry} from "./hooks/VolatilityDynamicFeeHookRegistry.sol";
import {IDynamicFeeHook} from "./interfaces/IDynamicFeeHook.sol";
import {IVolatilityDynamicFeeHook} from "./interfaces/IVolatilityDynamicFeeHook.sol";
import {HookMiner} from "v4-periphery/src/utils/HookMiner.sol";
import {CurrencySettler} from "./libraries/CurrencySettler.sol";
import {TransientStateLibrary} from "v4-core/libraries/TransientStateLibrary.sol";
import {console} from "forge-std/console.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";
import {IHooks} from "v4-core/interfaces/IHooks.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {MultiPositionFactory} from "../MultiPositionManager/MultiPositionFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {RebalanceLogic} from "../MultiPositionManager/libraries/RebalanceLogic.sol";
/**
 * @title OrderBookFactory
 * @notice Factory contract for creating Uniswap V4 pools with limit order support and initial liquidity
 * @dev This contract creates pools and mints initial liquidity using PositionManager's command interface.
 * Users must approve their tokens directly to the OrderBookFactory before calling pool creation functions.
 *
 * WARNING: TOKEN COMPATIBILITY
 * ============================
 * This contract and the associated LimitOrderManager DO NOT support the following token types:
 *
 * 1. Fee-on-transfer tokens: Tokens that charge a fee on transfer will cause transactions to fail
 *    because the received amount will not match the expected amount, breaking order accounting.
 *
 * 2. Rebasing tokens: Tokens that adjust balances will cause unpredictable behavior as position
 *    liquidity and order amounts will not match expected values after rebasing events.
 *
 * 3. Tokens with non-standard transfer behaviors: Including tokens with transfer hooks that can
 *    fail, pause mechanisms, or blacklisting features may cause orders to become stuck or fail.
 *
 * Using unsupported token types may result in:
 * - Failed order creation, cancellation, or claiming
 * - Loss of funds if tokens change behavior after pool creation
 * - Inability to interact with positions
 *
 * POOLS ARE CREATED AT YOUR OWN RISK. Always verify token compatibility before creating pools.
 */
contract OrderBookFactory is AccessControl {
    using CurrencySettler for Currency;
    using CurrencyLibrary for Currency;
    using TransientStateLibrary for IPoolManager;
    using StateLibrary for IPoolManager;

    // Custom errors for better gas efficiency
    error ZeroAddress();
    error TokenOrderingIncorrect();
    error NoLiquidityProvided();
    error NoFullRangeLiquidityProvided();
    error DynamicFeeNotAllowed();
    error TooManyBlacklistAddresses();
    error InvalidTickRange();
    error InsufficientETH();
    error ETHRefundFailed();
    error FeePercentageTooHigh();
    error NoFeesToWithdraw();
    error ETHTransferFailed();
    error InvalidSqrtPrice();
    error InvalidAmount();
    error ProtectionDurationTooLong();
    error CooldownPeriodTooLong();

    bytes32 public constant FEE_COLLECTOR_ROLE = keccak256("FEE_COLLECTOR_ROLE");
    
    // Anti-snipe safeguard constants (must match hook values)
    uint256 public constant MAX_PROTECTION_DURATION = 7 days;
    uint256 public constant MAX_COOLDOWN_PERIOD = 1 hours;

    // Struct to store pool information
    struct PoolInfo {
        bytes32 poolId;
        PoolKey poolKey;
        bool isDynamic;
    }

    // Struct for regular pool creation parameters
    struct RegularPoolParams {
        Currency currency0;
        Currency currency1;
        uint24 fee;
        int24 tickSpacing;
        uint160 sqrtPriceX96;
        uint256 deposit0Desired;
        uint256 deposit1Desired;
        address managerOwner;
        string name;
        address to;
        bool useSwap;
        RebalanceLogic.SwapParams swapParams;
        uint256[2][] inMin;
        IMultiPositionManager.RebalanceParams rebalanceParams;
    }

    // Struct for dynamic pool creation parameters
    struct DynamicPoolParams {
        Currency currency0;
        Currency currency1;
        int24 tickSpacing;
        uint160 sqrtPriceX96;
        bytes32 salt;
        uint24 initialFee;
        uint256 deposit0Desired;
        uint256 deposit1Desired;
        address managerOwner;
        string name;
        address to;
        bool useSwap;
        RebalanceLogic.SwapParams swapParams;
        uint256[2][] inMin;
        IMultiPositionManager.RebalanceParams rebalanceParams;
    }

    // Struct for volatility dynamic pool creation parameters
    struct VolatilityDynamicPoolParams {
        Currency currency0;
        Currency currency1;
        int24 tickSpacing;
        uint160 sqrtPriceX96;
        bytes32 salt;
        uint24 baseFee;
        uint24 surgeMultiplier;
        uint32 surgeDuration;
        uint24 initialMaxTicksPerBlock;
        uint256 deposit0Desired;
        uint256 deposit1Desired;
        address managerOwner;
        string name;
        address to;
        bool useSwap;
        RebalanceLogic.SwapParams swapParams;
        uint256[2][] inMin;
        IMultiPositionManager.RebalanceParams rebalanceParams;
    }

    LimitOrderManager public limitOrderManager;
    LimitOrderLens public limitOrderLens;
    IPoolManager public poolManager;
    LimitOrderHook public limitOrderHook;
    MultiPositionFactory public immutable multiPositionFactory;
    
    // Pool creation fee settings for each pool type
    uint256 public regularPoolCreationFee;
    uint256 public dynamicPoolCreationFee;
    uint256 public volatilityDynamicCreationFee;
    uint256 public collectedFees;

    // Bytecode registries for hook deployments
    DynamicFeeHookRegistry public dynamicFeeRegistry;
    VolatilityDynamicFeeHookRegistry public volatilityDynamicRegistry;

    // One dynamic fee hook per creator
    mapping(address => address) public creatorDynamicHooks;

    // One volatility dynamic fee hook per creator
    mapping(address => address) public creatorVolatilityDynamicHooks;

    // Track pool creators using pool ID as key
    mapping(bytes32 => address) public poolCreators;
    
    // Track pool info by user address (creator)
    mapping(address => PoolInfo[]) public userToPoolInfo;

    // Shared volatility hook for token launches (pre-deployed, standardized parameters)
    address public tokenLaunchVolatilityHook;

    // Pool reservation system: poolId => authorized strategy address
    // Prevents front-running by reserving specific pools for authorized strategies
    mapping(bytes32 => address) public reservedPools;

    // Authorized strategy factory that can reserve pools
    address public authorizedStrategyFactory;

    // Events for tracking pool creation
    event PoolCreated(bytes32 indexed poolId, address indexed creator, address indexed hook, uint24 fee);
    event PoolInfoStored(address indexed user, bytes32 indexed poolId, bool isDynamic);
    event PoolReserved(bytes32 indexed poolId, address indexed authorizedStrategy);
    event TokenLaunchVolatilityHookSet(address indexed hook);
    event AuthorizedStrategyFactorySet(address indexed factory);
    event RegularPoolCreationFeeUpdated(uint256 newFee);
    event DynamicPoolCreationFeeUpdated(uint256 newFee);
    event VolatilityDynamicCreationFeeUpdated(uint256 newFee);
    event PoolCreationFeeCollected(address indexed creator, uint256 fee);
    event FeesWithdrawn(address indexed recipient, uint256 amount);
    event DynamicFeeRegistryUpdated(address indexed oldRegistry, address indexed newRegistry);
    event VolatilityDynamicRegistryUpdated(address indexed oldRegistry, address indexed newRegistry);

    constructor(
        address _limitOrderLens,
        address _limitOrderHook,
        address _multiPositionFactory,
        address _dynamicFeeRegistry,
        address _volatilityDynamicRegistry
    ) {
        if (_limitOrderHook == address(0)) revert ZeroAddress();
        if (_multiPositionFactory == address(0)) revert ZeroAddress();
        if (_dynamicFeeRegistry == address(0)) revert ZeroAddress();
        if (_volatilityDynamicRegistry == address(0)) revert ZeroAddress();

        limitOrderLens = LimitOrderLens(_limitOrderLens);
        poolManager = limitOrderLens.poolManager();
        limitOrderManager = limitOrderLens.limitOrderManager();

        // Store bytecode registries
        dynamicFeeRegistry = DynamicFeeHookRegistry(_dynamicFeeRegistry);
        volatilityDynamicRegistry = VolatilityDynamicFeeHookRegistry(_volatilityDynamicRegistry);
        limitOrderHook = LimitOrderHook(_limitOrderHook);
        multiPositionFactory = MultiPositionFactory(_multiPositionFactory);

        // Grant roles to deployer
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(FEE_COLLECTOR_ROLE, msg.sender);
    }

    /**
     * @notice Create a regular pool with limit order hook and deploy MultiPositionManager
     * @dev Creates pool and deploys MPM with initial liquidity
     * @dev WARNING: Do not use with fee-on-transfer, rebasing, or other non-standard tokens.
     * Such tokens will cause order failures and potential loss of funds.
     */
    function createRegularPoolWithManager(
        RegularPoolParams calldata params
    ) external payable returns (PoolKey memory poolKey, address mpm) {
        // Validate inputs
        if (Currency.unwrap(params.currency0) >= Currency.unwrap(params.currency1)) revert TokenOrderingIncorrect();
        if (params.managerOwner == address(0)) revert ZeroAddress();
        if (params.to == address(0)) revert ZeroAddress();
        if (params.deposit0Desired == 0 && params.deposit1Desired == 0) revert NoLiquidityProvided();
        if (params.fee == LPFeeLibrary.DYNAMIC_FEE_FLAG) revert DynamicFeeNotAllowed();
        if (params.useSwap && params.swapParams.aggregatorAddress == address(0)) revert ZeroAddress();

        // Create the pool
        poolKey = PoolKey({
            currency0: params.currency0,
            currency1: params.currency1,
            fee: params.fee,
            tickSpacing: params.tickSpacing,
            hooks: limitOrderHook
        });

        // Initialize pool and store info
        _initializePool(poolKey, params.sqrtPriceX96, false);

        // Calculate ETH for deployment and collect fees
        uint256 ethForDeployment = _validateETHAndCollectFee(params.currency0, params.deposit0Desired, regularPoolCreationFee);

        // Deploy MultiPositionManager first
        mpm = _deployMultiPositionManager(
            poolKey,
            ethForDeployment,
            params.managerOwner,
            params.name,
            params.deposit0Desired,
            params.deposit1Desired,
            params.to,
            params.useSwap,
            params.swapParams,
            params.inMin,
            params.rebalanceParams
        );

        // Refund excess ETH
        _refundExcessETH(params.currency0, params.deposit0Desired, regularPoolCreationFee);
    }

    /**
     * @notice Create a dynamic fee pool and deploy MultiPositionManager
     * @dev Creates pool with dynamic fee hook and deploys MPM with initial liquidity
     * @dev WARNING: Do not use with fee-on-transfer, rebasing, or other non-standard tokens.
     * Such tokens will cause order failures and potential loss of funds.
     */
    function createDynamicPoolWithManager(
        DynamicPoolParams calldata params
    ) external payable returns (PoolKey memory poolKey, address mpm) {
        // Validate inputs
        if (Currency.unwrap(params.currency0) >= Currency.unwrap(params.currency1)) revert TokenOrderingIncorrect();
        if (params.managerOwner == address(0)) revert ZeroAddress();
        if (params.to == address(0)) revert ZeroAddress();
        if (params.deposit0Desired == 0 && params.deposit1Desired == 0) revert NoLiquidityProvided();
        if (params.useSwap && params.swapParams.aggregatorAddress == address(0)) revert ZeroAddress();

        // Deploy or get dynamic fee hook
        address hookAddr = creatorDynamicHooks[msg.sender];
        if (hookAddr == address(0)) {
            hookAddr = _deployDynamicFeeHook(params.salt);
            creatorDynamicHooks[msg.sender] = hookAddr;
        }

        // Create the pool
        poolKey = PoolKey({
            currency0: params.currency0,
            currency1: params.currency1,
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: params.tickSpacing,
            hooks: IHooks(hookAddr)
        });

        // Register and initialize
        IDynamicFeeHook(hookAddr).registerPool(poolKey);
        _initializePool(poolKey, params.sqrtPriceX96, true);

        // Set initial fee if specified
        if (params.initialFee > 0) {
            IDynamicFeeHook(hookAddr).updateDynamicLPFee(poolKey, params.initialFee);
        }

        // Calculate ETH for deployment and collect fees
        uint256 ethForDeployment = _validateETHAndCollectFee(params.currency0, params.deposit0Desired, dynamicPoolCreationFee);

        // Deploy MultiPositionManager
        mpm = _deployMultiPositionManager(
            poolKey,
            ethForDeployment,
            params.managerOwner,
            params.name,
            params.deposit0Desired,
            params.deposit1Desired,
            params.to,
            params.useSwap,
            params.swapParams,
            params.inMin,
            params.rebalanceParams
        );

        // Refund excess ETH
        _refundExcessETH(params.currency0, params.deposit0Desired, dynamicPoolCreationFee);
    }

    /**
     * @notice Create a volatility dynamic fee pool and deploy MultiPositionManager
     * @dev Creates pool with volatility-based dynamic fee adjustment and deploys MPM with initial liquidity
     * @dev WARNING: Do not use with fee-on-transfer, rebasing, or other non-standard tokens.
     * Such tokens will cause order failures and potential loss of funds.
     */
    function createVolatilityDynamicPoolWithManager(
        VolatilityDynamicPoolParams calldata params
    ) external payable returns (PoolKey memory poolKey, address mpm) {
        // Validate inputs
        if (Currency.unwrap(params.currency0) >= Currency.unwrap(params.currency1)) revert TokenOrderingIncorrect();
        if (params.managerOwner == address(0)) revert ZeroAddress();
        if (params.to == address(0)) revert ZeroAddress();
        if (params.deposit0Desired == 0 && params.deposit1Desired == 0) revert NoLiquidityProvided();
        if (params.surgeMultiplier > 100000) revert InvalidAmount(); // Max 10x multiplier (100000 BPS)
        if (params.surgeMultiplier < 10000) revert InvalidAmount(); // Min 1x multiplier (10000 BPS)
        if (params.useSwap && params.swapParams.aggregatorAddress == address(0)) revert ZeroAddress();

        // Determine which hook to use and check reservations
        address hookAddr = _getOrCheckVolatilityHook(params);

        // Create the pool
        poolKey = PoolKey({
            currency0: params.currency0,
            currency1: params.currency1,
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: params.tickSpacing,
            hooks: IHooks(hookAddr)
        });

        // Register pool with volatility parameters (only if not already registered)
        IVolatilityDynamicFeeHook(hookAddr).registerPool(
            poolKey,
            params.baseFee,
            params.surgeMultiplier,
            params.surgeDuration,
            params.initialMaxTicksPerBlock
        );
        _initializePool(poolKey, params.sqrtPriceX96, true);

        // Calculate ETH for deployment and collect fees
        uint256 ethForDeployment = _validateETHAndCollectFee(params.currency0, params.deposit0Desired, volatilityDynamicCreationFee);

        // Deploy MultiPositionManager
        mpm = _deployMultiPositionManager(
            poolKey,
            ethForDeployment,
            params.managerOwner,
            params.name,
            params.deposit0Desired,
            params.deposit1Desired,
            params.to,
            params.useSwap,
            params.swapParams,
            params.inMin,
            params.rebalanceParams
        );

        // Refund excess ETH
        _refundExcessETH(params.currency0, params.deposit0Desired, volatilityDynamicCreationFee);
    }

    function _initializePool(PoolKey memory poolKey, uint160 sqrtPriceX96, bool isDynamic) internal {
        poolManager.initialize(poolKey, sqrtPriceX96);
        limitOrderLens.addPoolId(poolKey.toId(), poolKey);

        // Store pool creator information
        bytes32 poolId = PoolId.unwrap(poolKey.toId());
        poolCreators[poolId] = msg.sender;

        userToPoolInfo[msg.sender].push(PoolInfo({
            poolId: poolId,
            poolKey: poolKey,
            isDynamic: isDynamic
        }));

        emit PoolCreated(poolId, msg.sender, address(poolKey.hooks), isDynamic ? LPFeeLibrary.DYNAMIC_FEE_FLAG : poolKey.fee);
        emit PoolInfoStored(msg.sender, poolId, isDynamic);
        
        // Whitelist the pool and enable the hook
        limitOrderManager.setWhitelistedPool(poolKey.toId(), true);
        limitOrderManager.enableHook(address(poolKey.hooks));
    }

    /**
     * @notice Validate ETH amount and collect pool creation fees
     * @param currency0 The first currency
     * @param deposit0Desired Amount of currency0 to deposit
     * @param creationFee The pool creation fee to collect
     * @return ethForDeployment Amount of ETH to forward to MultiPositionFactory
     */
    function _validateETHAndCollectFee(
        Currency currency0,
        uint256 deposit0Desired,
        uint256 creationFee
    ) internal returns (uint256 ethForDeployment) {
        // Calculate total ETH needed
        uint256 ethNeeded = creationFee;
        if (currency0.isAddressZero()) {
            ethNeeded += deposit0Desired;
            ethForDeployment = deposit0Desired;
        }
        if (msg.value < ethNeeded) revert InsufficientETH();

        // Collect pool creation fee
        if (creationFee > 0) {
            collectedFees += creationFee;
            emit PoolCreationFeeCollected(msg.sender, creationFee);
        }
    }

    /**
     * @notice Transfer tokens from user and approve for MultiPositionFactory
     * @param currency0 The first currency
     * @param currency1 The second currency
     * @param amount0 Amount of currency0 to transfer
     * @param amount1 Amount of currency1 to transfer
     */
    function _transferAndApproveTokens(
        Currency currency0,
        Currency currency1,
        uint256 amount0,
        uint256 amount1
    ) internal {
        // Transfer token0 if not ETH
        if (!currency0.isAddressZero() && amount0 > 0) {
            IERC20(Currency.unwrap(currency0)).transferFrom(msg.sender, address(this), amount0);
            IERC20(Currency.unwrap(currency0)).approve(address(multiPositionFactory), amount0);
        }

        // Transfer token1 (always ERC20)
        if (amount1 > 0) {
            IERC20(Currency.unwrap(currency1)).transferFrom(msg.sender, address(this), amount1);
            IERC20(Currency.unwrap(currency1)).approve(address(multiPositionFactory), amount1);
        }
    }

    /**
     * @notice Refund excess ETH to the user
     * @param currency0 The first currency
     * @param deposit0Desired Amount of currency0 deposited
     * @param creationFee The pool creation fee collected
     */
    function _refundExcessETH(
        Currency currency0,
        uint256 deposit0Desired,
        uint256 creationFee
    ) internal {
        uint256 ethUsed = creationFee;
        if (currency0.isAddressZero()) {
            ethUsed += deposit0Desired;
        }

        uint256 ethRemaining = msg.value - ethUsed;
        if (ethRemaining > 0) {
            (bool success, ) = msg.sender.call{value: ethRemaining}("");
            if (!success) revert ETHRefundFailed();
        }
    }

    /**
     * @notice Transfer tokens from user to OrderBookFactory
     * @param currency0 First currency
     * @param currency1 Second currency
     * @param amount0 Amount of currency0 to transfer
     * @param amount1 Amount of currency1 to transfer
     */
    function _transferTokensFromUser(
        Currency currency0,
        Currency currency1,
        uint256 amount0,
        uint256 amount1
    ) internal {
        if (!currency0.isAddressZero() && amount0 > 0) {
            IERC20(Currency.unwrap(currency0)).transferFrom(msg.sender, address(this), amount0);
        }
        if (amount1 > 0) {
            IERC20(Currency.unwrap(currency1)).transferFrom(msg.sender, address(this), amount1);
        }
    }

    /**
     * @notice Approve tokens for future MultiPositionManager
     * @param currency0 First currency
     * @param currency1 Second currency
     * @param amount0 Amount of currency0 to approve
     * @param amount1 Amount of currency1 to approve
     * @param mpm Address of MultiPositionManager to approve
     */
    function _approveTokensForMPM(
        Currency currency0,
        Currency currency1,
        uint256 amount0,
        uint256 amount1,
        address mpm
    ) internal {
        if (!currency0.isAddressZero() && amount0 > 0) {
            IERC20(Currency.unwrap(currency0)).approve(mpm, amount0);
        }
        if (amount1 > 0) {
            IERC20(Currency.unwrap(currency1)).approve(mpm, amount1);
        }
    }

    /**
     * @notice Deploy MultiPositionManager via MultiPositionFactory
     * @param poolKey The pool key
     * @param ethForDeployment Amount of ETH to forward to the factory
     * @param managerOwner Owner of the MultiPositionManager
     * @param name Name for the MPM
     * @param deposit0Desired Amount of currency0 to deposit
     * @param deposit1Desired Amount of currency1 to deposit
     * @param to Recipient of LP tokens
     * @param useSwap Whether to use swap during deployment
     * @param swapParams Swap parameters (if useSwap is true)
     * @param inMin Minimum amounts for deposit
     * @param rebalanceParams Rebalance parameters
     * @return mpm Address of the deployed MultiPositionManager
     */
    function _deployMultiPositionManager(
        PoolKey memory poolKey,
        uint256 ethForDeployment,
        address managerOwner,
        string memory name,
        uint256 deposit0Desired,
        uint256 deposit1Desired,
        address to,
        bool useSwap,
        RebalanceLogic.SwapParams memory swapParams,
        uint256[2][] memory inMin,
        IMultiPositionManager.RebalanceParams memory rebalanceParams
    ) internal returns (address mpm) {
        // Step 1: Transfer tokens from user to OrderBookFactory
        _transferTokensFromUser(poolKey.currency0, poolKey.currency1, deposit0Desired, deposit1Desired);

        // Step 2: Pre-compute future MPM address using factory's computeAddress
        address futureMPM = multiPositionFactory.computeAddress(poolKey, managerOwner, name);

        // Step 3: Pre-approve the future MPM address (before it exists!)
        _approveTokensForMPM(poolKey.currency0, poolKey.currency1, deposit0Desired, deposit1Desired, futureMPM);

        // Step 4: Deploy and deposit (with or without rebalance based on strategy)
        if (rebalanceParams.strategy == address(0)) {
            // No strategy - deploy and deposit with empty rebalance
            mpm = multiPositionFactory.deployDepositAndRebalance{value: ethForDeployment}(
                poolKey, managerOwner, name, deposit0Desired, deposit1Desired, to, inMin, rebalanceParams
            );
        } else if (useSwap) {
            // With strategy and swap
            mpm = multiPositionFactory.deployDepositAndRebalanceSwap{value: ethForDeployment}(
                poolKey, managerOwner, name, deposit0Desired, deposit1Desired, to, swapParams, inMin, rebalanceParams
            );
        } else {
            // With strategy, no swap
            mpm = multiPositionFactory.deployDepositAndRebalance{value: ethForDeployment}(
                poolKey, managerOwner, name, deposit0Desired, deposit1Desired, to, inMin, rebalanceParams
            );
        }

        // Step 5: Sanity check - verify deployed address matches prediction
        assert(mpm == futureMPM);
    }

    function _deployDynamicFeeHook(bytes32 salt) internal returns (address) {
        address dynamicFeeHookAddr;
        bytes memory bytecode = abi.encodePacked(
            dynamicFeeRegistry.getBytecode(),
            abi.encode(poolManager, address(limitOrderManager), msg.sender, address(this))
        );

        assembly {
            dynamicFeeHookAddr := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
            if iszero(extcodesize(dynamicFeeHookAddr)) {
                revert(0, 0)
            }
        }

        return dynamicFeeHookAddr;
    }

    function _deployVolatilityDynamicFeeHook(bytes32 salt) internal returns (address) {
        address volatilityHookAddr;
        bytes memory bytecode = abi.encodePacked(
            volatilityDynamicRegistry.getBytecode(),
            abi.encode(poolManager, address(limitOrderManager), msg.sender, address(this))
        );

        assembly {
            volatilityHookAddr := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
            if iszero(extcodesize(volatilityHookAddr)) {
                revert(0, 0)
            }
        }

        return volatilityHookAddr;
    }

    function setRegularPoolCreationFee(uint256 _fee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        regularPoolCreationFee = _fee;
        emit RegularPoolCreationFeeUpdated(_fee);
    }

    function setDynamicPoolCreationFee(uint256 _fee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        dynamicPoolCreationFee = _fee;
        emit DynamicPoolCreationFeeUpdated(_fee);
    }

    function setVolatilityDynamicCreationFee(uint256 _fee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        volatilityDynamicCreationFee = _fee;
        emit VolatilityDynamicCreationFeeUpdated(_fee);
    }

    function setDynamicFeeRegistry(address _registry) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_registry == address(0)) revert ZeroAddress();
        address oldRegistry = address(dynamicFeeRegistry);
        dynamicFeeRegistry = DynamicFeeHookRegistry(_registry);
        emit DynamicFeeRegistryUpdated(oldRegistry, _registry);
    }

    function setVolatilityDynamicRegistry(address _registry) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_registry == address(0)) revert ZeroAddress();
        address oldRegistry = address(volatilityDynamicRegistry);
        volatilityDynamicRegistry = VolatilityDynamicFeeHookRegistry(_registry);
        emit VolatilityDynamicRegistryUpdated(oldRegistry, _registry);
    }

    function withdrawFees(address recipient) external onlyRole(FEE_COLLECTOR_ROLE) {
        if (recipient == address(0)) revert ZeroAddress();
        uint256 amount = collectedFees;
        if (amount == 0) revert NoFeesToWithdraw();

        collectedFees = 0;
        emit FeesWithdrawn(recipient, amount);

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) revert ETHTransferFailed();
    }
    
    
    function computeSaltForCreator(
        address creator,
        address _limitOrderManager,
        address factory
    ) public view returns (bytes32 salt, address hookAddress) {
        uint160 flags = uint160(
            Hooks.BEFORE_SWAP_FLAG |
            Hooks.AFTER_SWAP_FLAG
        );

        bytes memory creationCode = dynamicFeeRegistry.getBytecode();
        bytes memory constructorArgs = abi.encode(
            poolManager,
            _limitOrderManager,
            creator,
            factory
        );

        (hookAddress, salt) = HookMiner.find(
            factory, flags, creationCode, constructorArgs
        );
    }

    function computeSaltForVolatilityDynamic(
        address creator,
        address _limitOrderManager,
        address factory
    ) public view returns (bytes32 salt, address hookAddress) {
        uint160 flags = uint160(
            Hooks.BEFORE_SWAP_FLAG |
            Hooks.AFTER_SWAP_FLAG |
            Hooks.AFTER_INITIALIZE_FLAG
        );

        bytes memory creationCode = volatilityDynamicRegistry.getBytecode();
        bytes memory constructorArgs = abi.encode(
            poolManager,
            _limitOrderManager,
            creator,
            factory
        );

        (hookAddress, salt) = HookMiner.find(
            factory, flags, creationCode, constructorArgs
        );
    }

    /// @notice Get all pool IDs created by a specific creator
    /// @param creator The address of the creator
    /// @return poolIds Array of pool IDs created by this address
    function getPoolsByCreator(address creator) external view returns (bytes32[] memory poolIds) {
        PoolInfo[] memory pools = userToPoolInfo[creator];
        poolIds = new bytes32[](pools.length);
        for (uint256 i = 0; i < pools.length; i++) {
            poolIds[i] = pools[i].poolId;
        }
    }
    
    /// @notice Get all pool information for a specific creator
    /// @param creator The address of the creator
    /// @return Array of PoolInfo structs containing pool details
    function getPoolInfoByCreator(address creator) external view returns (PoolInfo[] memory) {
        return userToPoolInfo[creator];
    }

    /// @notice Set the shared volatility hook for token launches
    /// @dev Only admin can set this. Should be called once during deployment.
    /// @param hook The address of the pre-deployed VolatilityDynamicFeeHook
    function setTokenLaunchVolatilityHook(address hook) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (hook == address(0)) revert ZeroAddress();
        tokenLaunchVolatilityHook = hook;
        emit TokenLaunchVolatilityHookSet(hook);
    }

    /// @notice Set the authorized strategy factory that can reserve pools
    /// @dev Only admin can set this. Should be called once during deployment.
    /// @param factory The address of the SuperchainLBPStrategyFactory
    function setAuthorizedStrategyFactory(address factory) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (factory == address(0)) revert ZeroAddress();
        authorizedStrategyFactory = factory;
        emit AuthorizedStrategyFactorySet(factory);
    }

    /// @notice Reserve a pool for a specific strategy to prevent front-running
    /// @dev Only the authorized strategy factory can call this
    /// @param key The pool key to reserve
    /// @param strategy The address of the strategy authorized to initialize this pool
    function reservePoolForStrategy(PoolKey calldata key, address strategy) external {
        if (msg.sender != authorizedStrategyFactory) revert("OnlyStrategyFactory");
        if (strategy == address(0)) revert ZeroAddress();

        bytes32 poolId = PoolId.unwrap(key.toId());
        if (reservedPools[poolId] != address(0)) revert("PoolAlreadyReserved");

        reservedPools[poolId] = strategy;
        emit PoolReserved(poolId, strategy);
    }

    /// @notice Internal helper to determine which volatility hook to use and check reservations
    /// @param params The pool creation parameters
    /// @return hookAddr The address of the hook to use
    function _getOrCheckVolatilityHook(VolatilityDynamicPoolParams calldata params)
        internal
        returns (address hookAddr)
    {
        // First, check if we should use the shared hook (for token launches)
        if (tokenLaunchVolatilityHook != address(0)) {
            // Compute pool ID to check if it's reserved
            bytes32 poolId = PoolId.unwrap(
                PoolKey({
                    currency0: params.currency0,
                    currency1: params.currency1,
                    fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
                    tickSpacing: params.tickSpacing,
                    hooks: IHooks(tokenLaunchVolatilityHook)
                }).toId()
            );

            // Check if this pool is reserved
            address authorizedStrategy = reservedPools[poolId];
            if (authorizedStrategy != address(0)) {
                // Pool is reserved - only authorized strategy can proceed
                if (msg.sender != authorizedStrategy) revert("PoolReservedForStrategy");
                return tokenLaunchVolatilityHook;
            }
        }

        // Use per-creator pattern for non-reserved pools
        hookAddr = creatorVolatilityDynamicHooks[msg.sender];
        if (hookAddr == address(0)) {
            hookAddr = _deployVolatilityDynamicFeeHook(params.salt);
            creatorVolatilityDynamicHooks[msg.sender] = hookAddr;
        }
    }

    receive() external payable {}
}