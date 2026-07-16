// SPDX-License-Identifier: BSL
pragma solidity ^0.8.24;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";
import {BaseHook} from "@uniswap/v4-periphery/src/utils/BaseHook.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {BeforeSwapDelta} from "v4-core/types/BeforeSwapDelta.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {TransientSlot} from "../../../lib/openzeppelin-contracts/contracts/utils/TransientSlot.sol";
import {ILimitOrderManager} from "../interfaces/ILimitOrderManager.sol";
import {SwapParams} from "v4-core/types/PoolOperation.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {BeforeSwapDeltaLibrary} from "v4-core/types/BeforeSwapDelta.sol";
import {SafeCast} from "v4-core/libraries/SafeCast.sol";
import {Oracle, ORACLE_CARDINALITY} from "../libraries/Oracle.sol";

/// @title VolatilityAntiSnipeDynamicFeeHook
/// @notice Combines volatility-based dynamic fees with anti-snipe protection
/// @dev Fees adjust based on TWAP deviation, with optional anti-snipe safeguards during early trading
contract VolatilityAntiSnipeDynamicFeeHook is BaseHook, Ownable {
    using PoolIdLibrary for PoolKey;
    using TransientSlot for *;
    using BeforeSwapDeltaLibrary for BeforeSwapDelta;
    using SafeCast for *;
    using Oracle for Oracle.Observation[ORACLE_CARDINALITY];

    bytes32 private constant PREVIOUS_TICK_SLOT = keccak256("xyz.hooks.limitorder.previous-tick");
    bytes32 public constant FEE_MANAGER_ROLE = keccak256("FEE_MANAGER_ROLE");

    // Maximum fees
    uint24 public constant MAX_LP_FEE = 50_000; // 5% max fee
    uint256 private constant FEE_DENOMINATOR = 1_000_000;

    // Oracle constants - Optimized for Unichain (1s blocks)
    uint32 public constant MIN_OBSERVATION_INTERVAL = 0; // Write every block (max once per block)

    // Anti-snipe constants
    uint256 public constant MAX_PROTECTION_DURATION = 7 days;
    uint256 public constant MAX_COOLDOWN_PERIOD = 1 hours;

    ILimitOrderManager public immutable limitOrderManager;
    address public immutable creator;
    address public orderBookFactory;

    // Track managed pools
    mapping(PoolId => bool) public managedPools;
    mapping(bytes32 => bool) public poolParametersUsed;

    // Volatility fee parameters per pool
    struct FeeParams {
        uint24 baseFee;           // Base fee (minimum)
        uint24 maxFee;            // Maximum fee cap
        uint256 volatilityScale;  // Volatility multiplier 'k' (higher = MORE sensitive to price deviations)
        uint32 twapWindow;        // TWAP window in seconds
    }

    mapping(PoolId => FeeParams) public feeParams;

    // Oracle state per pool
    struct ObservationState {
        uint16 index;
        Oracle.Observation intermediate;
    }

    mapping(PoolId => ObservationState) public observationStates;
    mapping(PoolId => Oracle.Observation[ORACLE_CARDINALITY]) public observations;

    // Anti-snipe configuration per pool
    struct AntiSnipeConfig {
        uint256 tradeLimitCurrency0;
        uint256 protectionEndTime;
        uint256 cooldownPeriod;
        uint256 tradingEnabledBlock;
    }

    mapping(PoolId => AntiSnipeConfig) public antiSnipeConfigs;
    mapping(PoolId => mapping(address => uint256)) public lastSwapTime;
    mapping(PoolId => mapping(address => bool)) public blacklistedAddresses;
    mapping(PoolId => uint256) public blacklistCount;

    // Errors
    error TradingNotYetEnabled(uint256 enabledBlock, uint256 currentBlock);
    error AddressIsBlacklisted();
    error InvalidFeeParams();
    error NotManagedPool();
    error PoolParametersAlreadyUsed();
    error FeeExceedsMaximum();
    error ProtectionDurationTooLong();
    error CooldownPeriodTooLong();
    error OnlyFactoryAdmin();

    // Events
    event DynamicLPFeeUpdated(PoolId indexed poolId, uint24 newFee, uint256 volatility);
    event FeeParamsUpdated(
        PoolId indexed poolId,
        uint24 baseFee,
        uint24 maxFee,
        uint256 volatilityScale,
        uint32 twapWindow
    );
    event AntiSnipeConfigured(
        PoolId indexed poolId,
        uint256 tradeLimitCurrency0,
        uint256 protectionEndTime,
        uint256 cooldownPeriod
    );

    constructor(
        IPoolManager _poolManager,
        address _limitOrderManager,
        address _orderBookFactory,
        address _owner
    ) BaseHook(_poolManager) Ownable(_owner) {
        // limitOrderManager can be zero for pools with locked liquidity
        // orderBookFactory can be set later via setOrderBookFactory()

        limitOrderManager = ILimitOrderManager(_limitOrderManager);
        creator = _owner;
        orderBookFactory = _orderBookFactory;
    }

    /// @notice Set the orderBookFactory address (for deployment flexibility)
    /// @dev Can only be called by owner, typically used during initial deployment
    /// @param _orderBookFactory The orderBookFactory address
    function setOrderBookFactory(address _orderBookFactory) external onlyOwner {
        require(_orderBookFactory != address(0), "ZeroAddress");
        orderBookFactory = _orderBookFactory;
    }

    function getHookPermissions() public pure override returns (Hooks.Permissions memory) {
        return Hooks.Permissions({
            beforeInitialize: false,
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

    function _beforeSwap(
        address swapper,
        PoolKey calldata key,
        SwapParams calldata params,
        bytes calldata
    ) internal override returns (bytes4, BeforeSwapDelta, uint24) {
        PoolId poolId = key.toId();
        (,int24 tickBeforeSwap,,uint24 lpFee) = StateLibrary.getSlot0(poolManager, poolId);

        // Store previous tick for limit order execution
        TransientSlot.tstore(TransientSlot.asInt256(PREVIOUS_TICK_SLOT), int256(tickBeforeSwap));

        // Check anti-snipe protection FIRST
        AntiSnipeConfig memory antiSnipeConfig = antiSnipeConfigs[poolId];

        if (block.timestamp <= antiSnipeConfig.protectionEndTime) {
            // Enforce 5-block delay during protection period
            if (block.number < antiSnipeConfig.tradingEnabledBlock) {
                revert TradingNotYetEnabled(antiSnipeConfig.tradingEnabledBlock, block.number);
            }

            // Check blacklist
            if (blacklistedAddresses[poolId][swapper]) {
                revert AddressIsBlacklisted();
            }

            // Check cooldown period
            if (antiSnipeConfig.cooldownPeriod > 0) {
                uint256 lastSwap = lastSwapTime[poolId][swapper];
                if (lastSwap > 0 && block.timestamp < lastSwap + antiSnipeConfig.cooldownPeriod) {
                    revert("AntiSnipe: Cooldown period not met");
                }
            }

            // Check trade limits (only currency0/ETH is limited during anti-snipe)
            if (params.zeroForOne && antiSnipeConfig.tradeLimitCurrency0 > 0) {
                uint256 amountIn = params.amountSpecified > 0
                    ? uint256(params.amountSpecified)
                    : uint256(-params.amountSpecified);
                if (amountIn > antiSnipeConfig.tradeLimitCurrency0) {
                    revert("AntiSnipe: Trade limit exceeded for currency0");
                }
            }
            // Note: currency1 (token) selling is blocked at ERC20 level via WhitelistableERC20

            // Update last swap timestamp
            lastSwapTime[poolId][swapper] = block.timestamp;
        }

        // Update oracle and adjust fee (if pool is registered with dynamic fees)
        if (managedPools[poolId]) {
            // Write new observation (handles first write automatically via lazy initialization)
            _writeObservation(poolId, tickBeforeSwap);

            // Calculate volatility and adjust fee
            uint256 volatility = _calculateVolatility(poolId, tickBeforeSwap);
            uint24 newFee = _calculateFee(poolId, volatility);

            // Update pool fee if changed
            if (newFee != lpFee) {
                poolManager.updateDynamicLPFee(key, newFee);
                emit DynamicLPFeeUpdated(poolId, newFee, volatility);
            }
        }

        // No hook fees for launchpad pools
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

        TransientSlot.Int256Slot slot = TransientSlot.asInt256(PREVIOUS_TICK_SLOT);
        int24 tickBeforeSwap = int24(int256(TransientSlot.tload(slot)));

        // Execute limit orders (skip if no limit order manager)
        if (address(limitOrderManager) != address(0)) {
            limitOrderManager.executeOrder(key, tickBeforeSwap, tickAfterSwap, params.zeroForOne);
        }

        return (BaseHook.afterSwap.selector, 0);
    }

    /// @notice Write a new observation to the oracle
    function _writeObservation(PoolId poolId, int24 tick) internal {
        ObservationState memory state = observationStates[poolId];

        (
            Oracle.Observation memory intermediateUpdated,
            uint16 indexUpdated
        ) = observations[poolId].write(
            state.intermediate,
            state.index,
            uint32(block.timestamp),
            tick
        );

        // Update state
        observationStates[poolId].intermediate = intermediateUpdated;
        observationStates[poolId].index = indexUpdated;
    }

    /// @notice Get TWAP tick for a pool
    function _getTwapTick(PoolId poolId, int24 currentTick) private view returns (int24) {
        ObservationState storage state = observationStates[poolId];
        uint32 window = feeParams[poolId].twapWindow;
        if (window == 0) window = 300;

        Oracle.Observation[ORACLE_CARDINALITY] storage obs = observations[poolId];
        uint16 oldestIndex = obs.getOldestIndex(state.index);

        (int56 t0, int56 t1) = obs.observeDouble(
            state.intermediate,
            uint32(block.timestamp),
            window,
            0,
            currentTick,
            state.index,
            oldestIndex
        );

        return int24((t1 - t0) / int56(uint56(window)));
    }

    /// @notice Calculate volatility as squared price ratio deviation from TWAP
    /// @dev Returns (p/p̄ - 1)² scaled by 1e18 for precision
    function _calculateVolatility(PoolId poolId, int24 currentTick) internal view returns (uint256) {
        // Oracle.sol handles cardinality=1 via transform() extrapolation
        // No need to check cardinality - it works from the first observation
        int24 twapTick = _getTwapTick(poolId, currentTick);

        // Convert ticks to price ratios using sqrtPrice
        // price = 1.0001^tick, so price_current / price_twap = 1.0001^(currentTick - twapTick)
        // For small deviations, we can approximate: (p/p̄ - 1) ≈ (currentTick - twapTick) * ln(1.0001)
        // But for accuracy, we'll use the full calculation

        int24 tickDiff = currentTick - twapTick;

        // Calculate (tick_diff / 10000)² for normalized squared deviation
        // This gives us a dimensionless measure of volatility
        // Scale by 1e18 for precision in fee calculations
        int256 tickDiffScaled = int256(tickDiff) * 1e9; // Scale up first
        int256 deviation = tickDiffScaled / 10000; // Normalize by tick spacing factor
        uint256 squaredDeviation = uint256((deviation * deviation) / 1e9); // Square and scale back

        return squaredDeviation;
    }

    /// @notice Calculate fee based on volatility
    /// @dev Implements: f(p, p̄) = min(f_min + k · (p/p̄ - 1)², f_max)
    function _calculateFee(PoolId poolId, uint256 squaredDeviation) internal view returns (uint24) {
        FeeParams memory params = feeParams[poolId];

        // Formula: fee = baseFee + (volatilityScale * squaredDeviation)
        // squaredDeviation is already scaled by 1e9, so divide result by 1e9
        uint256 volatilityFee = (squaredDeviation * params.volatilityScale) / 1e9;
        uint256 totalFee = uint256(params.baseFee) + volatilityFee;

        // Cap at maxFee
        if (totalFee > params.maxFee) {
            totalFee = params.maxFee;
        }

        return uint24(totalFee);
    }

    /// @notice Register a pool with volatility dynamic fees
    function registerPool(
        PoolKey calldata key,
        uint24 baseFee,
        uint24 maxFee,
        uint256 volatilityScale,
        uint32 twapWindow
    ) external {
        require(msg.sender == orderBookFactory, "OnlyFactory");

        if (baseFee > maxFee) revert InvalidFeeParams();
        if (maxFee > MAX_LP_FEE) revert FeeExceedsMaximum();

        // Hash pool parameters to prevent duplicate pools
        bytes32 paramsHash = keccak256(abi.encodePacked(
            key.currency0,
            key.currency1,
            key.tickSpacing,
            key.hooks,
            baseFee,
            maxFee,
            volatilityScale,
            twapWindow
        ));

        require(!poolParametersUsed[paramsHash], "PoolParametersAlreadyUsed");
        poolParametersUsed[paramsHash] = true;

        PoolId poolId = key.toId();
        managedPools[poolId] = true;

        feeParams[poolId] = FeeParams({
            baseFee: baseFee,
            maxFee: maxFee,
            volatilityScale: volatilityScale,
            twapWindow: twapWindow
        });

        emit FeeParamsUpdated(poolId, baseFee, maxFee, volatilityScale, twapWindow);
    }

    /// @notice Update fee parameters for a pool
    function updateFeeParams(
        PoolKey calldata key,
        uint24 baseFee,
        uint24 maxFee,
        uint256 volatilityScale,
        uint32 twapWindow
    ) external onlyOwner {
        PoolId poolId = key.toId();
        require(managedPools[poolId], "NotManagedPool");

        if (baseFee > maxFee) revert InvalidFeeParams();
        if (maxFee > MAX_LP_FEE) revert FeeExceedsMaximum();

        feeParams[poolId] = FeeParams({
            baseFee: baseFee,
            maxFee: maxFee,
            volatilityScale: volatilityScale,
            twapWindow: twapWindow
        });

        emit FeeParamsUpdated(poolId, baseFee, maxFee, volatilityScale, twapWindow);
    }

    /// @notice Configure anti-snipe protection for a pool
    function configureAntiSnipe(
        PoolKey calldata key,
        uint256 tradeLimitCurrency0,
        uint256 protectionDuration,
        uint256 cooldownPeriod
    ) external onlyOwner {
        PoolId poolId = key.toId();
        require(managedPools[poolId], "NotManagedPool");

        if (protectionDuration > MAX_PROTECTION_DURATION) revert ProtectionDurationTooLong();
        if (cooldownPeriod > MAX_COOLDOWN_PERIOD) revert CooldownPeriodTooLong();

        uint256 protectionEndTime = block.timestamp + protectionDuration;
        uint256 tradingEnabledBlock = block.number + 1; // 1-block delay

        antiSnipeConfigs[poolId] = AntiSnipeConfig({
            tradeLimitCurrency0: tradeLimitCurrency0,
            protectionEndTime: protectionEndTime,
            cooldownPeriod: cooldownPeriod,
            tradingEnabledBlock: tradingEnabledBlock
        });

        emit AntiSnipeConfigured(poolId, tradeLimitCurrency0, protectionEndTime, cooldownPeriod);
    }


    /// @notice Blacklist addresses
    function blacklistAddresses(PoolKey calldata key, address[] calldata addresses) external onlyOwner {
        PoolId poolId = key.toId();
        for (uint i = 0; i < addresses.length; i++) {
            if (!blacklistedAddresses[poolId][addresses[i]]) {
                blacklistedAddresses[poolId][addresses[i]] = true;
                blacklistCount[poolId]++;
            }
        }
    }

    /// @notice Get current volatility for a pool
    function getCurrentVolatility(PoolKey calldata key) external view returns (uint256) {
        PoolId poolId = key.toId();
        (,int24 currentTick,,) = StateLibrary.getSlot0(poolManager, poolId);
        return _calculateVolatility(poolId, currentTick);
    }

}
