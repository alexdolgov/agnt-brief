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
import {TransientSlot} from "openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/TransientSlot.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {BeforeSwapDeltaLibrary} from "v4-core/types/BeforeSwapDelta.sol";
import {SafeCast} from "v4-core/libraries/SafeCast.sol";
import {FixedPointMathLib} from "solmate/src/utils/FixedPointMathLib.sol";
import {VolatilityOracle} from "../libraries/VolatilityOracle.sol";

/// @title VolatilityDynamicFeeHook
/// @notice Hook with fixed base fee + surge fee on CAP events (no limit order functionality)
/// @dev Uses VolatilityOracle for CAP detection but does not execute limit orders
contract VolatilityDynamicFeeHook is BaseHook, Ownable {
    using PoolIdLibrary for PoolKey;
    using TransientSlot for *;
    using SafeCast for *;
    using FixedPointMathLib for uint256;

    uint256 private constant BPS_DENOMINATOR = 10_000; // For surge multiplier

    VolatilityOracle public immutable volatilityOracle;
    address public immutable creator;
    address public orderBookFactory;

    // Track which pools this hook manages
    mapping(PoolId => bool) public managedPools;

    // Track if creator already created a pool with specific parameters
    mapping(bytes32 => bool) public poolParametersUsed;

    // Track trading enabled block per pool (1-block delay)
    mapping(PoolId => uint256) public tradingEnabledBlock;

    // Fee parameters per pool
    struct FeeParams {
        uint24 baseFee;           // Fixed base fee set by user (never changes)
        bool enabled;             // Whether dynamic fees are active
    }

    mapping(PoolId => FeeParams) public feeParams;

    // Surge fee state per pool
    struct SurgeState {
        uint24 surgeMultiplier;     // bps (e.g., 30000 = 3x base fee)
        uint32 surgeDuration;       // decay window in seconds (e.g., 3600 = 1 hour)
        uint32 capStartTime;        // timestamp when CAP was triggered
        bool isActive;              // is surge mode active
    }

    mapping(PoolId => SurgeState) public surgeStates;

    // System-wide default oracle policy parameters
    uint24 public defaultMinCap = 10;
    uint24 public defaultMaxCap = 1000;
    uint32 public defaultStepPpm = 20000;        // 2%
    uint32 public defaultBudgetPpm = 1000000;    // 100% = 1 CAP/day target
    uint32 public defaultDecayWindow = 15552000; // 180 days
    uint32 public defaultUpdateInterval = 86400; // 24 hours

    // Errors
    error TradingNotYetEnabled(uint256 enabledBlock, uint256 currentBlock);

    // Events
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

    /// @notice Get pool-specific transient storage slot for previous tick
    /// @dev Each pool gets unique slot to avoid collisions in multi-pool transactions
    function _getPreviousTickSlot(PoolId poolId) private pure returns (bytes32) {
        return keccak256(abi.encodePacked("xyz.hooks.volatility.fee.previous-tick", poolId));
    }

    constructor(
        IPoolManager _poolManager,
        address _volatilityOracle,
        address _creator,
        address _orderBookFactory
    ) BaseHook(_poolManager) Ownable(_creator) {
        if (_volatilityOracle == address(0)) revert("ZeroAddress");
        if (_creator == address(0)) revert("ZeroAddress");
        if (_orderBookFactory == address(0)) revert("ZeroAddress");
        volatilityOracle = VolatilityOracle(_volatilityOracle);
        creator = _creator;
        orderBookFactory = _orderBookFactory;
    }

    function getHookPermissions() public pure override returns (Hooks.Permissions memory) {
        return Hooks.Permissions({
            beforeInitialize: false, // No pool reservation for fee-only hook
            afterInitialize: false,
            beforeAddLiquidity: false,
            afterAddLiquidity: false,
            beforeRemoveLiquidity: false,
            afterRemoveLiquidity: false,
            beforeSwap: true,         // Calculate and apply surge fee
            afterSwap: true,          // Detect CAPs (no limit order execution)
            beforeDonate: false,
            afterDonate: false,
            beforeSwapReturnDelta: false,
            afterSwapReturnDelta: false,
            afterAddLiquidityReturnDelta: false,
            afterRemoveLiquidityReturnDelta: false
        });
    }

    function _beforeSwap(
        address,
        PoolKey calldata key,
        SwapParams calldata,
        bytes calldata
    ) internal override returns (bytes4, BeforeSwapDelta, uint24) {
        PoolId poolId = key.toId();

        // Enforce 1-block delay before trading is enabled
        uint256 enabledBlock = tradingEnabledBlock[poolId];
        if (enabledBlock > 0) {
            if (block.number < enabledBlock) {
                revert TradingNotYetEnabled(enabledBlock, block.number);
            }
            // Delete storage slot after first successful trade to save gas on future swaps
            delete tradingEnabledBlock[poolId];
        }

        uint24 lpFee;
        {
            (,int24 tickBeforeSwap,,uint24 fee) = StateLibrary.getSlot0(poolManager, poolId);
            lpFee = fee;
            bytes32 slot = _getPreviousTickSlot(poolId);
            // Store tick for CAP detection in afterSwap
            // Equivalent Solidity: previousTick[poolId] = tickBeforeSwap
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
        SwapParams calldata,
        BalanceDelta,
        bytes calldata
    ) internal override returns (bytes4, int128) {
        PoolId poolId = key.toId();
        (,int24 tickAfterSwap,,) = StateLibrary.getSlot0(poolManager, poolId);

        int24 tickBeforeSwap;
        {
            bytes32 slot = _getPreviousTickSlot(poolId);
            // Load previous tick for CAP detection
            // Equivalent Solidity: tickBeforeSwap = previousTick[poolId]
            assembly ("memory-safe") {
                tickBeforeSwap := tload(slot)
            }
        }

        // Check for CAP event (no limit order execution)
        bool wasCapped = volatilityOracle.pushObservationAndCheckCap(poolId, tickBeforeSwap);

        if (wasCapped) {
            // CAP detected - activate surge mode
            surgeStates[poolId].isActive = true;
            surgeStates[poolId].capStartTime = uint32(block.timestamp);
            emit CAPDetected(poolId, uint32(block.timestamp), tickAfterSwap - tickBeforeSwap);
        }

        return (BaseHook.afterSwap.selector, 0);
    }

    /// @notice Register a pool with fixed base fee and surge parameters
    /// @param key The pool key
    /// @param baseFee Fixed base fee (user-set, e.g., 3000 = 0.3%)
    /// @param surgeMultiplier Surge fee multiplier in bps (e.g., 30000 = 3x)
    /// @param surgeDuration Surge decay duration in seconds (e.g., 3600 = 1 hour)
    /// @param initialMaxTicksPerBlock Initial CAP threshold (e.g., 50)
    function registerPool(
        PoolKey calldata key,
        uint24 baseFee,
        uint24 surgeMultiplier,
        uint32 surgeDuration,
        uint24 initialMaxTicksPerBlock
    ) external {
        if (msg.sender != orderBookFactory) revert("OnlyOrderBookFactory");

        PoolId poolId = key.toId();

        // Create a unique identifier for the pool parameters
        bytes32 parametersHash = keccak256(abi.encodePacked(
            Currency.unwrap(key.currency0),
            Currency.unwrap(key.currency1),
            key.tickSpacing
        ));

        if (poolParametersUsed[parametersHash]) revert("PoolParametersAlreadyUsed");

        managedPools[poolId] = true;
        poolParametersUsed[parametersHash] = true;

        // Set fixed base fee
        feeParams[poolId] = FeeParams({
            baseFee: baseFee,
            enabled: true
        });

        // Set surge parameters
        surgeStates[poolId] = SurgeState({
            surgeMultiplier: surgeMultiplier,
            surgeDuration: surgeDuration,
            capStartTime: 0,
            isActive: false
        });

        // Initialize oracle with system-wide default policy params
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

        // Set trading enabled block (1-block delay)
        tradingEnabledBlock[poolId] = block.number + 1;

        emit PoolRegistered(poolId, baseFee, surgeMultiplier, surgeDuration, initialMaxTicksPerBlock);
    }

    /// @notice Update base fee for a pool (owner only)
    function updateBaseFee(PoolKey calldata key, uint24 newBaseFee) external onlyOwner {
        PoolId poolId = key.toId();
        if (!managedPools[poolId]) revert("NotManagedPool");

        feeParams[poolId].baseFee = newBaseFee;
        emit FeeParamsUpdated(poolId, newBaseFee);
    }

    /// @notice Update surge parameters for a pool (owner only)
    function updateSurgeParams(
        PoolKey calldata key,
        uint24 multiplier,
        uint32 duration
    ) external onlyOwner {
        PoolId poolId = key.toId();
        if (!managedPools[poolId]) revert("NotManagedPool");

        surgeStates[poolId].surgeMultiplier = multiplier;
        surgeStates[poolId].surgeDuration = duration;
    }

    /// @notice Update oracle policy parameters (owner only)
    function updateOraclePolicy(
        PoolKey calldata key,
        uint24 minCap,
        uint24 maxCap,
        uint32 stepPpm,
        uint32 budgetPpm,
        uint32 decayWindow,
        uint32 updateInterval
    ) external onlyOwner {
        PoolId poolId = key.toId();
        if (!managedPools[poolId]) revert("NotManagedPool");

        volatilityOracle.refreshPolicyCache(
            poolId,
            minCap,
            maxCap,
            stepPpm,
            budgetPpm,
            decayWindow,
            updateInterval
        );
    }

    /// @notice Update system-wide default oracle policy parameters (owner only)
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

    /// @notice Pause/unpause auto-tuning for a pool (owner only)
    function pauseAutoTune(PoolKey calldata key, bool paused) external onlyOwner {
        PoolId poolId = key.toId();
        if (!managedPools[poolId]) revert("NotManagedPool");

        volatilityOracle.setAutoTunePaused(poolId, paused);
    }

    /// @notice Observe TWAP ticks at specified times (forwards to oracle)
    function observe(PoolKey calldata key, uint32 secondsAgo0, uint32 secondsAgo1)
        external
        view
        returns (int56 tickCumulative0, int56 tickCumulative1)
    {
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = secondsAgo0;
        secondsAgos[1] = secondsAgo1;

        (int56[] memory tickCumulatives,) = volatilityOracle.observe(key, secondsAgos);
        return (tickCumulatives[0], tickCumulatives[1]);
    }
}
