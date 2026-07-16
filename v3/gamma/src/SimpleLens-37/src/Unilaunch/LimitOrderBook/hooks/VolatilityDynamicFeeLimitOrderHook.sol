// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";
import {BaseHook} from "v4-periphery/src/utils/BaseHook.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {BeforeSwapDelta} from "v4-core/types/BeforeSwapDelta.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {SwapParams} from "v4-core/types/PoolOperation.sol";
import {TransientSlot} from "@openzeppelin-latest/contracts/utils/TransientSlot.sol";
import {ILimitOrderManager} from "../interfaces/ILimitOrderManager.sol";
import {BeforeSwapDeltaLibrary} from "v4-core/types/BeforeSwapDelta.sol";
import {SafeCast} from "v4-core/libraries/SafeCast.sol";
import {FixedPointMathLib} from "solmate/src/utils/FixedPointMathLib.sol";
import {VolatilityOracle} from "../libraries/VolatilityOracle.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title VolatilityDynamicFeeLimitOrderHook
/// @notice Singleton volatility hook for Unilaunch pools with limit order execution
contract VolatilityDynamicFeeLimitOrderHook is BaseHook, Ownable {
    using PoolIdLibrary for PoolKey;
    using TransientSlot for *;
    using SafeCast for *;
    using FixedPointMathLib for uint256;

    uint256 private constant FEE_DENOMINATOR = 1_000_000;
    uint256 private constant BPS_DENOMINATOR = 10_000;
    uint24 private constant MAX_LP_FEE = 1_000_000;

    ILimitOrderManager public immutable limitOrderManager;
    VolatilityOracle public immutable volatilityOracle;
    address public immutable orderBookFactory;

    mapping(PoolId => bool) public managedPools;
    mapping(bytes32 => bool) public poolParametersUsed;
    mapping(PoolId => uint256) public tradingEnabledBlock;

    struct FeeParams {
        uint24 baseFee;
        bool enabled;
    }

    mapping(PoolId => FeeParams) public feeParams;

    struct SurgeState {
        uint24 surgeMultiplier;
        uint32 surgeDuration;
        uint32 capStartTime;
        bool isActive;
    }

    mapping(PoolId => SurgeState) public surgeStates;

    uint24 public defaultMinCap = 10;
    uint24 public defaultMaxCap = 1000;
    uint32 public defaultStepPpm = 20000;
    uint32 public defaultBudgetPpm = 1000000;
    uint32 public defaultDecayWindow = 15552000;
    uint32 public defaultUpdateInterval = 86400;

    error TradingNotYetEnabled(uint256 enabledBlock, uint256 currentBlock);
    error InvalidFeeConfiguration();
    error UnauthorizedInitializer();

    event DynamicLPFeeUpdated(PoolId indexed poolId, uint24 newFee, uint24 surgeFee);
    event FeeParamsUpdated(PoolId indexed poolId, uint24 baseFee);
    event CAPDetected(PoolId indexed poolId, uint32 timestamp, int24 tickDelta);
    event SurgeFeeApplied(PoolId indexed poolId, uint24 surgeFee, uint32 timeRemaining);
    event SurgeDeactivated(PoolId indexed poolId, uint32 timestamp);
    event PoolRegistered(
        PoolId indexed poolId,
        uint24 baseFee,
        uint24 surgeMultiplier,
        uint32 surgeDuration,
        uint24 initialMaxTicksPerBlock
    );
    event DefaultOraclePolicyUpdated(
        uint24 minCap,
        uint24 maxCap,
        uint32 stepPpm,
        uint32 budgetPpm,
        uint32 decayWindow,
        uint32 updateInterval
    );

    constructor(
        IPoolManager _poolManager,
        address _limitOrderManager,
        address _volatilityOracle,
        address _orderBookFactory
    ) BaseHook(_poolManager) Ownable(_orderBookFactory) {
        if (_limitOrderManager == address(0)) revert("ZeroAddress");
        if (_volatilityOracle == address(0)) revert("ZeroAddress");
        if (_orderBookFactory == address(0)) revert("ZeroAddress");
        limitOrderManager = ILimitOrderManager(_limitOrderManager);
        volatilityOracle = VolatilityOracle(_volatilityOracle);
        orderBookFactory = _orderBookFactory;
    }

    function getHookPermissions() public pure override returns (Hooks.Permissions memory) {
        return Hooks.Permissions({
            beforeInitialize: true,
            afterInitialize: false,
            beforeAddLiquidity: false,
            afterAddLiquidity: false,
            beforeRemoveLiquidity: false,
            afterRemoveLiquidity: false,
            beforeSwap: true,
            afterSwap: true,
            beforeDonate: false,
            afterDonate: false,
            beforeSwapReturnDelta: false,
            afterSwapReturnDelta: false,
            afterAddLiquidityReturnDelta: false,
            afterRemoveLiquidityReturnDelta: false
        });
    }

    function _beforeInitialize(address sender, PoolKey calldata, uint160)
        internal
        override
        returns (bytes4)
    {
        if (sender != orderBookFactory) revert UnauthorizedInitializer();
        return this.beforeInitialize.selector;
    }

    function _beforeSwap(
        address,
        PoolKey calldata key,
        SwapParams calldata,
        bytes calldata
    ) internal override returns (bytes4, BeforeSwapDelta, uint24) {
        PoolId poolId = key.toId();

        uint256 enabledBlock = tradingEnabledBlock[poolId];
        if (enabledBlock > 0) {
            if (block.number < enabledBlock) {
                revert TradingNotYetEnabled(enabledBlock, block.number);
            }
            delete tradingEnabledBlock[poolId];
        }

        uint24 lpFee;
        {
            (,int24 tickBeforeSwap,,uint24 fee) = StateLibrary.getSlot0(poolManager, poolId);
            lpFee = fee;
            bytes32 slot = _getPreviousTickSlot(poolId);
            assembly ("memory-safe") {
                tstore(slot, tickBeforeSwap)
            }
        }

        FeeParams memory params_ = feeParams[poolId];
        if (!params_.enabled) {
            return (BaseHook.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, 0);
        }

        uint24 totalFee;
        {
            SurgeState storage surge = surgeStates[poolId];
            uint24 surgeFee = 0;

            if (surge.isActive) {
                uint32 elapsed = uint32(block.timestamp) - surge.capStartTime;

                if (elapsed >= surge.surgeDuration) {
                    surge.isActive = false;
                    emit SurgeDeactivated(poolId, uint32(block.timestamp));
                } else {
                    uint32 remaining = surge.surgeDuration - elapsed;
                    surgeFee = uint24(
                        (uint256(params_.baseFee) * surge.surgeMultiplier * remaining / surge.surgeDuration) / BPS_DENOMINATOR
                    );
                    emit SurgeFeeApplied(poolId, surgeFee, remaining);
                }
            }

            totalFee = params_.baseFee + surgeFee;
            if (totalFee != lpFee) {
                poolManager.updateDynamicLPFee(key, totalFee);
                emit DynamicLPFeeUpdated(poolId, totalFee, surgeFee);
            }
        }

        return (BaseHook.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, 0);
    }

    function _afterSwap(
        address,
        PoolKey calldata key,
        SwapParams calldata params,
        BalanceDelta,
        bytes calldata
    ) internal override returns (bytes4, int128) {
        PoolId poolId = key.toId();

        int24 tickBeforeSwap;
        bytes32 slot = _getPreviousTickSlot(poolId);
        assembly ("memory-safe") {
            tickBeforeSwap := tload(slot)
        }

        (, int24 tickAfterSwap,,) = StateLibrary.getSlot0(poolManager, poolId);

        limitOrderManager.executeOrder(key, tickBeforeSwap, tickAfterSwap, params.zeroForOne);

        bool wasCapped = volatilityOracle.pushObservationAndCheckCap(poolId, tickBeforeSwap);
        if (wasCapped) {
            surgeStates[poolId].isActive = true;
            surgeStates[poolId].capStartTime = uint32(block.timestamp);
            emit CAPDetected(poolId, uint32(block.timestamp), tickAfterSwap - tickBeforeSwap);
        }

        return (BaseHook.afterSwap.selector, 0);
    }

    function _getPreviousTickSlot(PoolId poolId) private pure returns (bytes32) {
        return keccak256(abi.encodePacked("unilaunch.hooks.volatility.previous-tick", poolId));
    }

    function _validateFeeParams(uint24 baseFee, uint24 surgeMultiplier) internal pure {
        uint256 maxPossibleFee = uint256(baseFee) + (uint256(baseFee) * surgeMultiplier / BPS_DENOMINATOR);
        if (maxPossibleFee > MAX_LP_FEE) revert InvalidFeeConfiguration();
    }

    function registerPool(
        PoolKey calldata key,
        uint24 baseFee,
        uint24 surgeMultiplier,
        uint32 surgeDuration,
        uint24 initialMaxTicksPerBlock
    ) external {
        if (msg.sender != orderBookFactory) revert("OnlyOrderBookFactory");
        _validateFeeParams(baseFee, surgeMultiplier);

        PoolId poolId = key.toId();

        bytes32 parametersHash = keccak256(abi.encodePacked(
            Currency.unwrap(key.currency0),
            Currency.unwrap(key.currency1),
            key.tickSpacing
        ));

        if (poolParametersUsed[parametersHash]) revert("PoolParametersAlreadyUsed");

        managedPools[poolId] = true;
        poolParametersUsed[parametersHash] = true;

        feeParams[poolId] = FeeParams({baseFee: baseFee, enabled: true});
        surgeStates[poolId] = SurgeState({
            surgeMultiplier: surgeMultiplier,
            surgeDuration: surgeDuration,
            capStartTime: 0,
            isActive: false
        });

        volatilityOracle.enableOracleForPool(
            key,
            initialMaxTicksPerBlock,
            defaultMinCap,
            defaultMaxCap,
            defaultStepPpm,
            defaultBudgetPpm,
            defaultDecayWindow,
            defaultUpdateInterval
        );

        tradingEnabledBlock[poolId] = block.number + 1;

        emit PoolRegistered(poolId, baseFee, surgeMultiplier, surgeDuration, initialMaxTicksPerBlock);
    }

    function updateBaseFee(PoolKey calldata key, uint24 newBaseFee) external onlyOwner {
        PoolId poolId = key.toId();
        if (!managedPools[poolId]) revert("NotManagedPool");
        _validateFeeParams(newBaseFee, surgeStates[poolId].surgeMultiplier);
        feeParams[poolId].baseFee = newBaseFee;
        emit FeeParamsUpdated(poolId, newBaseFee);
    }

    function updateSurgeParams(PoolKey calldata key, uint24 multiplier, uint32 duration) external onlyOwner {
        PoolId poolId = key.toId();
        if (!managedPools[poolId]) revert("NotManagedPool");
        _validateFeeParams(feeParams[poolId].baseFee, multiplier);
        surgeStates[poolId].surgeMultiplier = multiplier;
        surgeStates[poolId].surgeDuration = duration;
    }

    function updateOraclePolicy(
        PoolKey calldata key,
        uint24 minCap,
        uint24 maxCap,
        uint32 stepPpm,
        uint32 budgetPpm,
        uint32 decayWindow,
        uint32 updateInterval
    ) external onlyOwner {
        volatilityOracle.refreshPolicyCache(
            key.toId(),
            minCap,
            maxCap,
            stepPpm,
            budgetPpm,
            decayWindow,
            updateInterval
        );
    }

    function updateDefaultOraclePolicy(
        uint24 minCap,
        uint24 maxCap,
        uint32 stepPpm,
        uint32 budgetPpm,
        uint32 decayWindow,
        uint32 updateInterval
    ) external onlyOwner {
        defaultMinCap = minCap;
        defaultMaxCap = maxCap;
        defaultStepPpm = stepPpm;
        defaultBudgetPpm = budgetPpm;
        defaultDecayWindow = decayWindow;
        defaultUpdateInterval = updateInterval;
        emit DefaultOraclePolicyUpdated(minCap, maxCap, stepPpm, budgetPpm, decayWindow, updateInterval);
    }
}
