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
import {ILimitOrderManager} from "../interfaces/ILimitOrderManager.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {BeforeSwapDeltaLibrary, toBeforeSwapDelta} from "v4-core/types/BeforeSwapDelta.sol";
import {SafeCast} from "v4-core/libraries/SafeCast.sol";
import {FixedPointMathLib} from "solmate/src/utils/FixedPointMathLib.sol";
import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {IOrderBookFactory} from "../interfaces/IOrderBookFactory.sol";
import {VolatilityOracle} from "../libraries/VolatilityOracle.sol";

/// @title VolatilityDynamicFeeLimitOrderHook
/// @notice Hook with fixed base fee + surge fee on CAP events + limit order execution
/// @dev Uses VolatilityOracle for CAP detection and limit order execution
contract VolatilityDynamicFeeLimitOrderHook is BaseHook, Ownable {
    using PoolIdLibrary for PoolKey;
    using TransientSlot for *;
    using SafeCast for *;
    using FixedPointMathLib for uint256;

    uint256 private constant FEE_DENOMINATOR = 1_000_000; // For fee calculations
    uint256 private constant BPS_DENOMINATOR = 10_000; // For surge multiplier
    uint24 private constant MAX_LP_FEE = 1_000_000; // 100% - Uniswap V4 max

    ILimitOrderManager public immutable limitOrderManager;
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
    // Applied to all new pools unless overridden via updateOraclePolicy()
    uint24 public defaultMinCap = 10;
    uint24 public defaultMaxCap = 1000;
    uint32 public defaultStepPpm = 20000;        // 2%
    uint32 public defaultBudgetPpm = 1000000;    // 100% = 1 CAP/day target
    uint32 public defaultDecayWindow = 15552000; // 180 days
    uint32 public defaultUpdateInterval = 86400; // 24 hours

    // Errors
    error TradingNotYetEnabled(uint256 enabledBlock, uint256 currentBlock);
    error PoolReservedForOther();
    error InvalidFeeConfiguration();

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
        return keccak256(abi.encodePacked("xyz.hooks.volatility.previous-tick", poolId));
    }

    constructor(
        IPoolManager _poolManager,
        address _limitOrderManager,
        address _volatilityOracle,
        address _creator,
        address _orderBookFactory
    ) BaseHook(_poolManager) Ownable(_creator) {
        if (_limitOrderManager == address(0)) revert("ZeroAddress");
        if (_volatilityOracle == address(0)) revert("ZeroAddress");
        if (_creator == address(0)) revert("ZeroAddress");
        if (_orderBookFactory == address(0)) revert("ZeroAddress");
        limitOrderManager = ILimitOrderManager(_limitOrderManager);
        volatilityOracle = VolatilityOracle(_volatilityOracle);
        creator = _creator;
        orderBookFactory = _orderBookFactory;
    }

    function getHookPermissions() public pure override returns (Hooks.Permissions memory) {
        return Hooks.Permissions({
            beforeInitialize: true,   // Check pool reservation for front-running protection
            afterInitialize: false,
            beforeAddLiquidity: false,
            afterAddLiquidity: false,
            beforeRemoveLiquidity: false,
            afterRemoveLiquidity: false,
            beforeSwap: true,         // Calculate and apply surge fee
            afterSwap: true,          // Execute limit orders + detect CAPs
            beforeDonate: false,
            afterDonate: false,
            beforeSwapReturnDelta: false,
            afterSwapReturnDelta: false,
            afterAddLiquidityReturnDelta: false,
            afterRemoveLiquidityReturnDelta: false
        });
    }

    /// @notice Validates pool initialization - enforces reservation system for front-running protection
    /// @dev If a pool is reserved, only the reserved strategy or OrderBookFactory can initialize it.
    ///      Unreserved pools remain permissionless.
    /// @param sender The address that called poolManager.initialize()
    /// @param key The pool key being initialized
    function _beforeInitialize(address sender, PoolKey calldata key, uint160)
        internal
        override
        returns (bytes4)
    {
        bytes32 poolId = PoolId.unwrap(key.toId());
        address reservedFor = IOrderBookFactory(orderBookFactory).reservedPools(poolId);

        // If pool is reserved, only the reserved strategy or OrderBookFactory can initialize
        if (reservedFor != address(0)) {
            if (sender != reservedFor && sender != orderBookFactory) {
                revert PoolReservedForOther();
            }
        }
        // If not reserved, anyone can initialize (permissionless)

        return this.beforeInitialize.selector;
    }

    function _beforeSwap(
        address,
        PoolKey calldata key,
        SwapParams calldata params,
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
        (,int24 tickAfterSwap,,) = StateLibrary.getSlot0(poolManager, poolId);

        int24 tickBeforeSwap;
        {
            bytes32 slot = _getPreviousTickSlot(poolId);
            assembly ("memory-safe") {
                tickBeforeSwap := tload(slot)
            }
        }

        // Execute limit orders
        limitOrderManager.executeOrder(key, tickBeforeSwap, tickAfterSwap, params.zeroForOne);

        // Check for CAP event
        bool wasCapped = volatilityOracle.pushObservationAndCheckCap(poolId, tickBeforeSwap);

        if (wasCapped) {
            // CAP detected - activate surge mode
            surgeStates[poolId].isActive = true;
            surgeStates[poolId].capStartTime = uint32(block.timestamp);
            emit CAPDetected(poolId, uint32(block.timestamp), tickAfterSwap - tickBeforeSwap);
        }

        return (BaseHook.afterSwap.selector, 0);
    }

    /// @dev Validates that max possible fee doesn't exceed MAX_LP_FEE
    function _validateFeeParams(uint24 baseFee, uint24 surgeMultiplier) internal pure {
        uint256 maxPossibleFee = uint256(baseFee) + (uint256(baseFee) * surgeMultiplier / BPS_DENOMINATOR);
        if (maxPossibleFee > MAX_LP_FEE) revert InvalidFeeConfiguration();
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
        _validateFeeParams(baseFee, surgeMultiplier);

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
        // (owner can update defaults via updateDefaultOraclePolicy() or override specific pools via updateOraclePolicy())
        volatilityOracle.enableOracleForPool(
            key,
            initialMaxTicksPerBlock,  // user-set initial maxTicksPerBlock
            defaultMinCap,             // system default
            defaultMaxCap,             // system default
            defaultStepPpm,            // system default
            defaultBudgetPpm,          // system default
            defaultDecayWindow,        // system default
            defaultUpdateInterval      // system default
        );

        // Set trading enabled block (1-block delay)
        tradingEnabledBlock[poolId] = block.number + 1;

        emit PoolRegistered(poolId, baseFee, surgeMultiplier, surgeDuration, initialMaxTicksPerBlock);
    }

    /// @notice Update base fee for a pool (owner only)
    /// @param key The pool key
    /// @param newBaseFee New fixed base fee
    function updateBaseFee(PoolKey calldata key, uint24 newBaseFee) external onlyOwner {
        PoolId poolId = key.toId();
        if (!managedPools[poolId]) revert("NotManagedPool");
        _validateFeeParams(newBaseFee, surgeStates[poolId].surgeMultiplier);

        feeParams[poolId].baseFee = newBaseFee;
        emit FeeParamsUpdated(poolId, newBaseFee);
    }

    /// @notice Update surge parameters for a pool (owner only)
    /// @param key The pool key
    /// @param multiplier New surge multiplier in bps
    /// @param duration New surge duration in seconds
    function updateSurgeParams(
        PoolKey calldata key,
        uint24 multiplier,
        uint32 duration
    ) external onlyOwner {
        PoolId poolId = key.toId();
        if (!managedPools[poolId]) revert("NotManagedPool");
        _validateFeeParams(feeParams[poolId].baseFee, multiplier);

        surgeStates[poolId].surgeMultiplier = multiplier;
        surgeStates[poolId].surgeDuration = duration;
    }

    /// @notice Update oracle policy parameters (owner only)
    /// @param key The pool key
    /// @param minCap Minimum maxTicksPerBlock
    /// @param maxCap Maximum maxTicksPerBlock
    /// @param stepPpm Auto-tune step size in PPM
    /// @param budgetPpm Target CAP frequency in PPM
    /// @param decayWindow Frequency decay window in seconds
    /// @param updateInterval Min time between auto-tune adjustments
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
    /// @dev These defaults apply to all future pool registrations
    /// @param minCap Minimum maxTicksPerBlock
    /// @param maxCap Maximum maxTicksPerBlock
    /// @param stepPpm Auto-tune step size in PPM
    /// @param budgetPpm Target CAP frequency in PPM
    /// @param decayWindow Frequency decay window in seconds
    /// @param updateInterval Min time between auto-tune adjustments
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
    /// @param key The pool key
    /// @param paused True to pause, false to unpause
    function pauseAutoTune(PoolKey calldata key, bool paused) external onlyOwner {
        PoolId poolId = key.toId();
        if (!managedPools[poolId]) revert("NotManagedPool");

        volatilityOracle.setAutoTunePaused(poolId, paused);
    }

    /// @notice Observe TWAP ticks at specified times (forwards to oracle)
    /// @param key The pool key
    /// @param secondsAgo0 First time point
    /// @param secondsAgo1 Second time point
    /// @return tickCumulative0 First tick cumulative
    /// @return tickCumulative1 Second tick cumulative
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
