// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {FixedPoint96} from "v4-core/libraries/FixedPoint96.sol";
import {LiquidityAmounts} from "v4-periphery/lib/v4-core/test/utils/LiquidityAmounts.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IMultiPositionManager} from "../interfaces/IMultiPositionManager.sol";
import {ILiquidityStrategy} from "../strategies/ILiquidityStrategy.sol";
import {SharedStructs} from "../base/SharedStructs.sol";
import {PoolManagerUtils} from "./PoolManagerUtils.sol";
import {PositionLogic} from "./PositionLogic.sol";

/**
 * @title RebalanceLogic
 * @notice Library containing all rebalance-related logic for MultiPositionManager
 */
library RebalanceLogic {
    using PoolIdLibrary for PoolKey;
    using StateLibrary for IPoolManager;
    using SafeERC20 for IERC20;

    uint256 constant PRECISION = 1e18;

    // Custom errors
    error OutMinLengthMismatch();
    error InvalidWeightSum();
    error NoStrategySpecified();
    error CarpetRequiresBothTokens();
    error InsufficientLiquidityForCarpet();
    error InvalidTickRange();
    error DuplicatedRange(IMultiPositionManager.Range range);
    error InvalidAggregator();
    error InMinLengthMismatch(uint256 provided, uint256 required);
    error InsufficientTokensForSwap();
    error InsufficientOutput();

    // Events
    event SwapExecuted(address indexed aggregator, uint256 amountIn, uint256 amountOut, bool swapToken0);

    struct StrategyContext {
        address resolvedStrategy;
        int24 center;
        uint24 tLeft;
        uint24 tRight;
        ILiquidityStrategy strategy;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        uint24 limitWidth;
        bool useAssetWeights;
    }

    struct DensityParams {
        int24[] lowerTicks;
        int24[] upperTicks;
        int24 tick;
        int24 center;
        uint24 tLeft;
        uint24 tRight;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        int24 tickSpacing;
    }

    struct WeightCalculationParams {
        ILiquidityStrategy strategy;
        int24 center;
        uint24 tLeft;
        uint24 tRight;
        int24 tickSpacing;
        bool useCarpet;
        uint160 sqrtPriceX96;
        int24 currentTick;
    }

    /// @notice Supported swap aggregators
    enum Aggregator {
        ZERO_X, // 0
        KYBERSWAP, // 1
        ODOS, // 2
        PARASWAP // 3

    }

    /// @notice Parameters for executing a swap through an aggregator
    struct SwapParams {
        Aggregator aggregator; // Which aggregator to use
        address aggregatorAddress; // Aggregator router address
        bytes swapData; // Complete encoded function call from JavaScript
        bool swapToken0; // Direction: true = swap token0 for token1
        uint256 swapAmount; // Amount being swapped (for validation)
        uint256 minAmountOut; // Minimum output amount (slippage protection)
    }

    /**
     * @notice Main rebalance function
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param params Rebalance parameters
     * @param outMin Minimum output amounts for withdrawals
     * @param inMin Minimum input amounts for new positions (slippage protection)
     * @return baseRanges The base ranges to rebalance to
     * @return liquidities The liquidity amounts for each range
     * @return limitWidth The limit width for limit positions
     */
    function rebalance(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.RebalanceParams calldata params,
        uint256[2][] memory outMin,
        uint256[2][] memory inMin
    )
        external
        returns (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities, uint24 limitWidth)
    {
        if (outMin.length != s.basePositionsLength + s.limitPositionsLength) {
            revert OutMinLengthMismatch();
        }

        // Process in helper to avoid stack issues
        return _processRebalance(s, poolManager, params, outMin, inMin);
    }

    function _processRebalance(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.RebalanceParams memory params,
        uint256[2][] memory outMin,
        uint256[2][] memory inMin
    )
        internal
        returns (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities, uint24 limitWidth)
    {
        // Bundle strategy parameters in a struct to reduce stack depth
        StrategyContext memory ctx;

        ctx.weight0 = params.weight0;
        ctx.weight1 = params.weight1;
        ctx.useAssetWeights = (ctx.weight0 == 0 && ctx.weight1 == 0);
        if (ctx.useAssetWeights) {
            (uint256 available0, uint256 available1) = _getTotalAvailable(s, poolManager);
            (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(s.poolKey.toId());
            (ctx.weight0, ctx.weight1) = calculateWeightsFromAmounts(available0, available1, sqrtPriceX96);
        }

        if (ctx.weight0 + ctx.weight1 != 1e18) revert InvalidWeightSum();

        // Resolve strategy parameters
        ctx.resolvedStrategy = params.strategy != address(0) ? params.strategy : s.lastStrategyParams.strategy;

        if (params.center == type(int24).max) {
            (, int24 currentTick,,) = poolManager.getSlot0(s.poolKey.toId());
            // Always round down to ensure the range contains the current tick
            int24 compressed = currentTick / s.poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % s.poolKey.tickSpacing != 0) {
                compressed--; // Round down for negative ticks with remainder
            }
            ctx.center = compressed * s.poolKey.tickSpacing;
        } else {
            ctx.center = params.center;
        }

        ctx.tLeft = params.tLeft;
        ctx.tRight = params.tRight;
        ctx.useCarpet = params.useCarpet;

        // In proportional mode (weights 0,0), force limitWidth to 0
        // Limit positions don't make sense when weights are derived from amounts
        if (params.weight0 == 0 && params.weight1 == 0) {
            ctx.limitWidth = 0;
        } else {
            ctx.limitWidth = params.limitWidth;
        }

        // Get strategy interface
        if (ctx.resolvedStrategy == address(0)) revert NoStrategySpecified();
        ctx.strategy = ILiquidityStrategy(ctx.resolvedStrategy);

        // Generate ranges
        (int24[] memory lowerTicks, int24[] memory upperTicks) =
            ctx.strategy.generateRanges(ctx.center, ctx.tLeft, ctx.tRight, s.poolKey.tickSpacing, ctx.useCarpet);

        // Convert to Range array
        uint256 length = lowerTicks.length;
        baseRanges = new IMultiPositionManager.Range[](length);
        for (uint256 i = 0; i < length;) {
            baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
            unchecked {
                ++i;
            }
        }

        // Calculate weights in separate function to avoid stack issues
        uint256[] memory weights = calculateWeights(s, poolManager, ctx, lowerTicks, upperTicks);

        // Continue processing in another helper to further reduce stack
        return _executeRebalance(s, poolManager, ctx, baseRanges, weights, outMin, inMin);
    }

    /**
     * @notice Calculate weights for positions from strategy
     * @dev Made public so SimpleLens can use the exact same logic for preview
     */
    function calculateWeights(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        StrategyContext memory ctx,
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) public view returns (uint256[] memory) {
        return calculateWeightsWithPoolKey(s.poolKey, poolManager, ctx, lowerTicks, upperTicks);
    }

    /**
     * @notice Calculate weights (pure version for SimpleLens)
     * @dev Accepts poolKey as parameter instead of reading from storage
     */
    function calculateWeightsWithPoolKey(
        PoolKey memory poolKey,
        IPoolManager poolManager,
        StrategyContext memory ctx,
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) public view returns (uint256[] memory) {
        // Store flag early to avoid stack too deep
        bool useAssetWeights = ctx.useAssetWeights;

        DensityParams memory params;
        params.lowerTicks = lowerTicks;
        params.upperTicks = upperTicks;

        // Get current tick
        (, params.tick,,) = poolManager.getSlot0(poolKey.toId());

        params.center = ctx.center;
        params.tLeft = ctx.tLeft;
        params.tRight = ctx.tRight;
        params.weight0 = ctx.weight0;
        params.weight1 = ctx.weight1;
        params.useCarpet = ctx.useCarpet;
        params.tickSpacing = poolKey.tickSpacing;

        // Check weights support
        {
            bool supportsWeightedDist = false;
            try ctx.strategy.supportsWeights() returns (bool supported) {
                supportsWeightedDist = supported;
            } catch {}

            // Use default weights if needed
            if (!params.useCarpet && !supportsWeightedDist && (params.weight0 != 0.5e18 || params.weight1 != 0.5e18)) {
                params.weight0 = 0.5e18;
                params.weight1 = 0.5e18;
            }
        }

        return ctx.strategy.calculateDensities(
            params.lowerTicks,
            params.upperTicks,
            params.tick,
            params.center,
            params.tLeft,
            params.tRight,
            params.weight0,
            params.weight1,
            params.useCarpet,
            params.tickSpacing,
            useAssetWeights
        );
    }

    function _executeRebalance(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        StrategyContext memory ctx,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256[] memory weights,
        uint256[2][] memory, /* outMin */
        uint256[2][] memory /* inMin */
    ) internal returns (IMultiPositionManager.Range[] memory, uint128[] memory, uint24) {
        // Calculate liquidities from weights
        uint128[] memory liquidities = new uint128[](baseRanges.length);

        // Store flag early to avoid stack too deep
        bool useAssetWeights = ctx.useAssetWeights;

        // Process in separate scope to reduce stack
        {
            // Get current pool state
            (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(s.poolKey.toId());

            // Get total available amounts (will be calculated by caller)
            (uint256 available0, uint256 available1) = _getTotalAvailable(s, poolManager);

            // Carpet mode requires both tokens to create base layer across all positions
            if (ctx.useCarpet && (available0 == 0 || available1 == 0)) {
                revert CarpetRequiresBothTokens();
            }

            // Use existing helper to calculate liquidities from weights
            _calculateLiquiditiesFromWeights(
                liquidities, weights, baseRanges, available0, available1, sqrtPriceX96, useAssetWeights
            );
        }

        // Verify carpet positions have sufficient liquidity
        if (ctx.useCarpet) {
            _validateCarpetLiquidity(baseRanges, liquidities, s.poolKey.tickSpacing);
        }

        // Store the parameters for future use (useSwap = false for regular rebalance)
        _updateStrategyParams(s, ctx, false);

        // Return the data needed for the unlock
        // Note: Rebalance event will be emitted in MultiPositionManager after unlock completes
        return (baseRanges, liquidities, ctx.limitWidth);
    }

    function _updateStrategyParams(SharedStructs.ManagerStorage storage s, StrategyContext memory ctx, bool useSwap)
        internal
    {
        s.lastStrategyParams = SharedStructs.StrategyParams({
            strategy: ctx.resolvedStrategy,
            centerTick: ctx.center,
            ticksLeft: ctx.tLeft,
            ticksRight: ctx.tRight,
            limitWidth: ctx.limitWidth,
            weight0: uint120(ctx.weight0),
            weight1: uint120(ctx.weight1),
            useCarpet: ctx.useCarpet,
            useSwap: useSwap,
            useAssetWeights: ctx.useAssetWeights
        });
    }

    struct AllocationData {
        uint256[] token0Allocations;
        uint256[] token1Allocations;
        uint256 totalToken0Needed;
        uint256 totalToken1Needed;
        uint256 currentRangeIndex;
        int24 currentTick;
        bool hasCurrentRange;
    }

    /**
     * @notice Helper to calculate liquidities from weights using pre-mint allocation fixing
     * @dev Allocate, fix current range, redistribute excess, then mint
     */
    function _calculateLiquiditiesFromWeights(
        uint128[] memory liquidities,
        uint256[] memory weights,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256 total0,
        uint256 total1,
        uint160 sqrtPriceX96,
        bool useAssetWeights
    ) internal pure {
        if (!useAssetWeights) {
            // For explicit weights, use direct liquidity calculation (old approach)
            calculateLiquiditiesDirectly(liquidities, weights, baseRanges, total0, total1, sqrtPriceX96);
            return;
        }

        // For proportional weights, use allocation-based approach with redistribution
        AllocationData memory data;
        uint256 rangesLength = baseRanges.length;

        // Initialize arrays
        data.token0Allocations = new uint256[](rangesLength);
        data.token1Allocations = new uint256[](rangesLength);

        // Get current tick from sqrtPrice
        data.currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);

        // Step 1: Calculate initial token allocations based on weights
        calculateInitialAllocations(data, baseRanges, weights, sqrtPriceX96);

        // Step 2: Scale allocations proportionally to available tokens
        scaleAllocations(data, total0, total1, true);

        // Step 3: Fix current range allocation and redistribute excess
        if (data.hasCurrentRange) {
            fixCurrentRangeAndRedistribute(data, baseRanges, sqrtPriceX96);
        }

        // Step 4: Mint all positions with corrected allocations
        mintFromAllocations(liquidities, data, baseRanges, sqrtPriceX96);
    }

    /**
     * @notice Calculate liquidities directly using limiting token approach (for explicit weights)
     * @dev Old approach: calculate global limiting factor, then set each position's liquidity
     */
    function calculateLiquiditiesDirectly(
        uint128[] memory liquidities,
        uint256[] memory weights,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256 total0,
        uint256 total1,
        uint160 sqrtPriceX96
    ) internal pure {
        uint256 rangesLength = baseRanges.length;

        // Calculate total weighted amounts needed for liquidity = 1e18
        uint256 totalWeightedToken0;
        uint256 totalWeightedToken1;

        for (uint256 i = 0; i < rangesLength;) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick);

            // Get amounts needed for 1e18 liquidity
            (uint256 amount0For1e18, uint256 amount1For1e18) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, 1e18);

            // Add weighted amounts
            totalWeightedToken0 += FullMath.mulDiv(amount0For1e18, weights[i], 1e18);
            totalWeightedToken1 += FullMath.mulDiv(amount1For1e18, weights[i], 1e18);
            unchecked {
                ++i;
            }
        }

        // Calculate maximum liquidity we can provide given our token amounts
        uint256 maxLiquidityFromToken0 =
            totalWeightedToken0 != 0 ? FullMath.mulDiv(total0, 1e18, totalWeightedToken0) : type(uint256).max;
        uint256 maxLiquidityFromToken1 =
            totalWeightedToken1 != 0 ? FullMath.mulDiv(total1, 1e18, totalWeightedToken1) : type(uint256).max;

        // Use the limiting factor (smaller of the two)
        uint256 totalLiquidity =
            maxLiquidityFromToken0 < maxLiquidityFromToken1 ? maxLiquidityFromToken0 : maxLiquidityFromToken1;

        // Set each position's liquidity based on its weight and the total liquidity
        for (uint256 i = 0; i < rangesLength;) {
            liquidities[i] = uint128(FullMath.mulDiv(weights[i], totalLiquidity, 1e18));
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Calculate initial token allocations based on weights
     */
    function calculateInitialAllocations(
        AllocationData memory data,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256[] memory weights,
        uint160 sqrtPriceX96
    ) internal pure {
        uint256 rangesLength = baseRanges.length;

        for (uint256 i = 0; i < rangesLength;) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick);

            // Calculate token amounts for 1e18 liquidity
            (uint256 token0For1e18, uint256 token1For1e18) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, 1e18);

            // Apply weights to get initial allocations
            data.token0Allocations[i] = FullMath.mulDiv(token0For1e18, weights[i], 1e18);
            data.token1Allocations[i] = FullMath.mulDiv(token1For1e18, weights[i], 1e18);

            // Track totals
            data.totalToken0Needed += data.token0Allocations[i];
            data.totalToken1Needed += data.token1Allocations[i];

            // Check if this is the current range
            if (baseRanges[i].lowerTick <= data.currentTick && data.currentTick < baseRanges[i].upperTick) {
                data.currentRangeIndex = i;
                data.hasCurrentRange = true;
            }
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Scale allocations proportionally to available tokens
     * @dev Two modes:
     *      - Proportional weights (0,0): Scale independently, will redistribute later
     *      - Explicit weights: Use limiting token approach, leave excess
     */
    function scaleAllocations(
        AllocationData memory data,
        uint256 available0,
        uint256 available1,
        bool useAssetWeights
    ) internal pure {
        uint256 rangesLength = data.token0Allocations.length;

        if (useAssetWeights) {
            // Proportional mode: Scale each token independently to use 100%
            // Excess will be redistributed in _fixCurrentRangeAndRedistribute
            if (data.totalToken0Needed != 0) {
                for (uint256 i = 0; i < rangesLength;) {
                    data.token0Allocations[i] =
                        FullMath.mulDiv(data.token0Allocations[i], available0, data.totalToken0Needed);
                    unchecked {
                        ++i;
                    }
                }
            }

            if (data.totalToken1Needed != 0) {
                for (uint256 i = 0; i < rangesLength;) {
                    data.token1Allocations[i] =
                        FullMath.mulDiv(data.token1Allocations[i], available1, data.totalToken1Needed);
                    unchecked {
                        ++i;
                    }
                }
            }
        } else {
            // Explicit weights mode: Use limiting token approach
            // Calculate max liquidity from each token
            uint256 maxLiquidityFromToken0 = data.totalToken0Needed != 0
                ? FullMath.mulDiv(available0, 1e18, data.totalToken0Needed)
                : type(uint256).max;
            uint256 maxLiquidityFromToken1 = data.totalToken1Needed != 0
                ? FullMath.mulDiv(available1, 1e18, data.totalToken1Needed)
                : type(uint256).max;

            // Use the limiting factor (smaller of the two)
            uint256 scaleFactor =
                maxLiquidityFromToken0 < maxLiquidityFromToken1 ? maxLiquidityFromToken0 : maxLiquidityFromToken1;

            // Scale both allocations by the same factor
            for (uint256 i = 0; i < rangesLength;) {
                data.token0Allocations[i] = FullMath.mulDiv(data.token0Allocations[i], scaleFactor, 1e18);
                data.token1Allocations[i] = FullMath.mulDiv(data.token1Allocations[i], scaleFactor, 1e18);
                unchecked {
                    ++i;
                }
            }
        }
    }

    struct ExcessData {
        uint256 excessToken0;
        uint256 excessToken1;
        uint256 actualToken0;
        uint256 actualToken1;
    }

    /**
     * @notice Fix current range allocation and redistribute excess
     */
    function fixCurrentRangeAndRedistribute(
        AllocationData memory data,
        IMultiPositionManager.Range[] memory baseRanges,
        uint160 sqrtPriceX96
    ) internal pure {
        ExcessData memory excess = calculateCurrentRangeExcess(data, baseRanges[data.currentRangeIndex], sqrtPriceX96);

        // Update current range to actual usage
        data.token0Allocations[data.currentRangeIndex] = excess.actualToken0;
        data.token1Allocations[data.currentRangeIndex] = excess.actualToken1;

        // Redistribute excesses
        if (excess.excessToken0 > 0) {
            redistributeToken0(data, baseRanges, excess.excessToken0);
        }
        if (excess.excessToken1 > 0) {
            redistributeToken1(data, baseRanges, excess.excessToken1);
        }
    }

    /**
     * @notice Calculate excess from current range allocation
     */
    function calculateCurrentRangeExcess(
        AllocationData memory data,
        IMultiPositionManager.Range memory range,
        uint160 sqrtPriceX96
    ) internal pure returns (ExcessData memory excess) {
        uint256 idx = data.currentRangeIndex;

        uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(range.lowerTick);
        uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(range.upperTick);

        // EXACT Python logic from mint_position function:
        // if lower_price<pool_price<upper_price:

        // Python: assume token y (token1) is in excess
        // position_y=y
        // position_liquidity=position_y/(np.sqrt(pool_price)-np.sqrt(lower_price))
        uint128 liquidityFrom1 = 0;
        if (sqrtPriceX96 > sqrtPriceLower) {
            // Direct division as Python does: liquidity = amount1 / (sqrtPrice - sqrtPriceLower)
            liquidityFrom1 =
                uint128(FullMath.mulDiv(data.token1Allocations[idx], FixedPoint96.Q96, sqrtPriceX96 - sqrtPriceLower));
        }

        // Python: position_x=position_liquidity*(1/np.sqrt(pool_price)-1/np.sqrt(upper_price))
        uint256 token0Needed = 0;
        if (sqrtPriceX96 < sqrtPriceUpper && liquidityFrom1 > 0) {
            // Calculate how much token0 would be needed with this liquidity
            token0Needed = FullMath.mulDiv(
                liquidityFrom1,
                sqrtPriceUpper - sqrtPriceX96,
                FullMath.mulDiv(sqrtPriceUpper, sqrtPriceX96, FixedPoint96.Q96)
            );
        }

        // Python: if x<position_x:  #if token y is actually in excess
        uint128 actualLiquidity;
        if (data.token0Allocations[idx] < token0Needed) {
            // Token0 is actually limiting, recalculate
            // position_x=x
            // position_liquidity=position_x/(1/np.sqrt(pool_price)-1/np.sqrt(upper_price))
            if (sqrtPriceX96 < sqrtPriceUpper) {
                uint256 intermediate = FullMath.mulDiv(sqrtPriceUpper, sqrtPriceX96, FixedPoint96.Q96);
                actualLiquidity =
                    uint128(FullMath.mulDiv(data.token0Allocations[idx], intermediate, sqrtPriceUpper - sqrtPriceX96));
            } else {
                actualLiquidity = 0;
            }
        } else {
            // Token1 is limiting, use liquidityFrom1
            actualLiquidity = liquidityFrom1;
        }

        // Calculate actual usage with the determined liquidity
        (excess.actualToken0, excess.actualToken1) =
            LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, actualLiquidity);

        // Calculate excess
        excess.excessToken0 =
            data.token0Allocations[idx] > excess.actualToken0 ? data.token0Allocations[idx] - excess.actualToken0 : 0;
        excess.excessToken1 =
            data.token1Allocations[idx] > excess.actualToken1 ? data.token1Allocations[idx] - excess.actualToken1 : 0;
    }

    /**
     * @notice Redistribute excess token0 to positions above current tick
     */
    function redistributeToken0(
        AllocationData memory data,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256 excessToken0
    ) internal pure {
        uint256 totalToken0Only;
        uint256 rangesLength = data.token0Allocations.length;

        // Find total weight of positions above current tick
        for (uint256 i = 0; i < rangesLength;) {
            if (baseRanges[i].lowerTick > data.currentTick) {
                totalToken0Only += data.token0Allocations[i];
            }
            unchecked {
                ++i;
            }
        }

        // Redistribute proportionally
        if (totalToken0Only != 0) {
            for (uint256 i = 0; i < rangesLength;) {
                if (baseRanges[i].lowerTick > data.currentTick) {
                    data.token0Allocations[i] +=
                        FullMath.mulDiv(excessToken0, data.token0Allocations[i], totalToken0Only);
                }
                unchecked {
                    ++i;
                }
            }
        }
    }

    /**
     * @notice Redistribute excess token1 to positions below current tick
     */
    function redistributeToken1(
        AllocationData memory data,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256 excessToken1
    ) internal pure {
        uint256 totalToken1Only;
        uint256 rangesLength = data.token0Allocations.length;

        // Find total weight of positions below current tick
        for (uint256 i = 0; i < rangesLength;) {
            if (baseRanges[i].upperTick <= data.currentTick) {
                totalToken1Only += data.token1Allocations[i];
            }
            unchecked {
                ++i;
            }
        }

        // Redistribute proportionally
        if (totalToken1Only != 0) {
            for (uint256 i = 0; i < rangesLength;) {
                if (baseRanges[i].upperTick <= data.currentTick) {
                    data.token1Allocations[i] +=
                        FullMath.mulDiv(excessToken1, data.token1Allocations[i], totalToken1Only);
                }
                unchecked {
                    ++i;
                }
            }
        }
    }

    /**
     * @notice Mint positions from corrected allocations
     */
    function mintFromAllocations(
        uint128[] memory liquidities,
        AllocationData memory data,
        IMultiPositionManager.Range[] memory baseRanges,
        uint160 sqrtPriceX96
    ) internal pure {
        uint256 rangesLength = baseRanges.length;

        for (uint256 i = 0; i < rangesLength;) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick);

            // EXACT Python mint_position logic for each position type
            if (baseRanges[i].upperTick <= data.currentTick) {
                // Position entirely below current tick - only needs token1
                // Python: position_liquidity=position_y/(np.sqrt(upper_price)-np.sqrt(lower_price))
                if (sqrtPriceUpper > sqrtPriceLower && data.token1Allocations[i] > 0) {
                    liquidities[i] = uint128(
                        FullMath.mulDiv(data.token1Allocations[i], FixedPoint96.Q96, sqrtPriceUpper - sqrtPriceLower)
                    );
                } else {
                    liquidities[i] = 0;
                }
            } else if (baseRanges[i].lowerTick > data.currentTick) {
                // Position entirely above current tick - only needs token0
                // Python: position_liquidity=position_x/(1/np.sqrt(lower_price)-1/np.sqrt(upper_price))
                if (sqrtPriceUpper > sqrtPriceLower && data.token0Allocations[i] > 0) {
                    uint256 intermediate = FullMath.mulDiv(sqrtPriceUpper, sqrtPriceLower, FixedPoint96.Q96);
                    liquidities[i] = uint128(
                        FullMath.mulDiv(data.token0Allocations[i], intermediate, sqrtPriceUpper - sqrtPriceLower)
                    );
                } else {
                    liquidities[i] = 0;
                }
            } else {
                // Current range - use Python's exact logic
                // First assume token1 is limiting
                uint128 liquidityFrom1 = 0;
                if (sqrtPriceX96 > sqrtPriceLower && data.token1Allocations[i] > 0) {
                    liquidityFrom1 = uint128(
                        FullMath.mulDiv(data.token1Allocations[i], FixedPoint96.Q96, sqrtPriceX96 - sqrtPriceLower)
                    );
                }

                // Calculate token0 needed with this liquidity
                uint256 token0Needed = 0;
                if (sqrtPriceX96 < sqrtPriceUpper && liquidityFrom1 > 0) {
                    token0Needed = FullMath.mulDiv(
                        liquidityFrom1,
                        sqrtPriceUpper - sqrtPriceX96,
                        FullMath.mulDiv(sqrtPriceUpper, sqrtPriceX96, FixedPoint96.Q96)
                    );
                }

                // Check if token0 is actually limiting
                if (data.token0Allocations[i] < token0Needed && data.token0Allocations[i] > 0) {
                    // Token0 is limiting
                    if (sqrtPriceX96 < sqrtPriceUpper) {
                        uint256 intermediate = FullMath.mulDiv(sqrtPriceUpper, sqrtPriceX96, FixedPoint96.Q96);
                        liquidities[i] = uint128(
                            FullMath.mulDiv(data.token0Allocations[i], intermediate, sqrtPriceUpper - sqrtPriceX96)
                        );
                    } else {
                        liquidities[i] = 0;
                    }
                } else {
                    // Token1 is limiting
                    liquidities[i] = liquidityFrom1;
                }
            }
            unchecked {
                ++i;
            }
        }
    }

    function _validateCarpetLiquidity(
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory liquidities,
        int24 tickSpacing
    ) internal pure {
        int24 minUsable = TickMath.minUsableTick(tickSpacing);
        int24 maxUsable = TickMath.maxUsableTick(tickSpacing);

        if (baseRanges[0].lowerTick == minUsable && liquidities[0] == 0) {
            revert InsufficientLiquidityForCarpet();
        }

        uint256 lastIdx = baseRanges.length - 1;
        if (baseRanges[lastIdx].upperTick == maxUsable && liquidities[lastIdx] == 0) {
            revert InsufficientLiquidityForCarpet();
        }
    }

    /**
     * @notice Get total available token amounts
     * @dev Gets total amounts from all positions including fees and unused balances
     */
    function _getTotalAvailable(SharedStructs.ManagerStorage storage s, IPoolManager poolManager)
        internal
        view
        returns (uint256 total0, uint256 total1)
    {
        uint256 totalFee0;
        uint256 totalFee1;

        // Cache poolKey to avoid repeated SLOADs
        PoolKey memory poolKey = s.poolKey;

        // Get amounts from base positions including fees
        for (uint256 i = 0; i < s.basePositionsLength;) {
            (, uint256 amount0, uint256 amount1, uint256 feesOwed0, uint256 feesOwed1) =
                PoolManagerUtils.getAmountsOf(poolManager, poolKey, s.basePositions[i]);
            total0 += amount0;
            total1 += amount1;
            totalFee0 += feesOwed0;
            totalFee1 += feesOwed1;
            unchecked {
                ++i;
            }
        }

        // Get amounts from limit positions including fees
        for (uint256 i = 0; i < s.limitPositionsLength;) {
            (, uint256 amount0, uint256 amount1, uint256 feesOwed0, uint256 feesOwed1) =
                PoolManagerUtils.getAmountsOf(poolManager, poolKey, s.limitPositions[i]);
            total0 += amount0;
            total1 += amount1;
            totalFee0 += feesOwed0;
            totalFee1 += feesOwed1;
            unchecked {
                ++i;
            }
        }

        // Exclude protocol fee from the total fees
        totalFee0 = totalFee0 - (totalFee0 / s.fee);
        totalFee1 = totalFee1 - (totalFee1 / s.fee);

        // Add fees net of protocol fees to the total amount
        total0 += totalFee0;
        total1 += totalFee1;

        // Add unused balances
        total0 += s.currency0.balanceOfSelf();
        total1 += s.currency1.balanceOfSelf();

        return (total0, total1);
    }

    /**
     * @notice Process REBALANCE action in callback
     * @dev Handles the complete rebalance flow including zeroBurn, burn old positions, and mint new ones
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param params Encoded rebalance parameters
     * @param totalSupply Current total supply
     * @return Empty bytes (no return value needed)
     */
    function processRebalanceInCallback(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        bytes memory params,
        uint256 totalSupply
    ) external returns (bytes memory) {
        // Decode parameters
        (
            IMultiPositionManager.Range[] memory baseRanges,
            uint128[] memory liquidities,
            uint24 limitWidth,
            uint256[2][] memory inMin,
            uint256[2][] memory outMin,
            IMultiPositionManager.RebalanceParams memory rebalanceParams
        ) = abi.decode(
            params,
            (
                IMultiPositionManager.Range[],
                uint128[],
                uint24,
                uint256[2][],
                uint256[2][],
                IMultiPositionManager.RebalanceParams
            )
        );

        // Burn old positions and set up new ones
        _burnAndSetupPositions(s, poolManager, baseRanges, limitWidth, outMin, totalSupply);

        // Ensure inMin has correct length for slippage protection
        // If empty array passed, create zero-filled array (no slippage protection)
        if (inMin.length == 0) {
            inMin = new uint256[2][](baseRanges.length);
        } else if (inMin.length != baseRanges.length) {
            revert InMinLengthMismatch(inMin.length, baseRanges.length);
        }

        // Mint new positions and capture position data
        IMultiPositionManager.PositionData[] memory positionData =
            PositionLogic.mintLiquidities(poolManager, s, liquidities, inMin);

        // Build complete ranges array including base and limit positions
        uint256 baseLength = s.basePositionsLength;
        IMultiPositionManager.Range[] memory ranges = new IMultiPositionManager.Range[](baseLength + 2);
        uint256 rangeCount = 0;

        for (uint8 i = 0; i < baseLength;) {
            ranges[rangeCount++] = s.basePositions[i];
            unchecked {
                ++i;
            }
        }

        if (s.limitPositions[0].lowerTick != s.limitPositions[0].upperTick) {
            ranges[rangeCount++] = s.limitPositions[0];
        }

        if (s.limitPositions[1].lowerTick != s.limitPositions[1].upperTick) {
            ranges[rangeCount++] = s.limitPositions[1];
        }

        // Resize ranges array to actual count
        assembly {
            mstore(ranges, rangeCount)
        }

        // Emit rebalance event
        emit IMultiPositionManager.Rebalance(ranges, positionData, rebalanceParams);

        return "";
    }

    /**
     * @notice Perform zeroBurn if there are active positions
     */
    function _performZeroBurnIfNeeded(SharedStructs.ManagerStorage storage s, IPoolManager poolManager) private {
        uint256 baseLength = s.basePositionsLength;
        // Check cheaper condition first for short-circuit optimization
        if (baseLength != 0 || s.limitPositionsLength != 0) {
            // Get ranges for zeroBurn
            IMultiPositionManager.Range[] memory baseRangesArray = new IMultiPositionManager.Range[](baseLength);
            for (uint8 i = 0; i < baseLength;) {
                baseRangesArray[i] = s.basePositions[i];
                unchecked {
                    ++i;
                }
            }
            IMultiPositionManager.Range[2] memory limitRangesArray = [s.limitPositions[0], s.limitPositions[1]];

            PoolManagerUtils.zeroBurnAll(
                poolManager, s.poolKey, baseRangesArray, limitRangesArray, s.currency0, s.currency1, s.fee
            );
        }
    }

    /**
     * @notice Burn old positions and set up new ones
     */
    function _burnAndSetupPositions(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.Range[] memory baseRanges,
        uint24 limitWidth,
        uint256[2][] memory outMin,
        uint256 totalSupply
    ) private {
        // Only burn if there are actual positions to burn
        if (totalSupply > 0 && (s.basePositionsLength > 0 || s.limitPositionsLength > 0)) {
            PositionLogic.burnLiquidities(poolManager, s, totalSupply, totalSupply, outMin);
        }

        // Set up new base positions
        uint256 newBaseLength = baseRanges.length;
        IMultiPositionManager.Range[] memory allRanges = new IMultiPositionManager.Range[](newBaseLength + 2);
        s.basePositionsLength = newBaseLength;
        for (uint8 i = 0; i < newBaseLength;) {
            s.basePositions[i] = baseRanges[i];
            allRanges[i] = baseRanges[i];
            unchecked {
                ++i;
            }
        }

        // Set limit ranges
        (, int24 curTick,,) = poolManager.getSlot0(s.poolId);
        PositionLogic.setLimitRanges(s, limitWidth, baseRanges, s.poolKey.tickSpacing, curTick);
        allRanges[baseRanges.length] = s.limitPositions[0];
        allRanges[baseRanges.length + 1] = s.limitPositions[1];

        // Check ranges for duplicates
        PositionLogic.checkRanges(allRanges);
    }

    /**
     * @notice Process rebalance after a single token withdrawal
     * @dev This function handles the rebalance logic when there are remaining tokens after withdrawal
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param remainingToken0 Amount of token0 remaining after withdrawal
     * @param remainingToken1 Amount of token1 remaining after withdrawal
     */
    function processRebalanceAfterWithdraw(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        uint256 remainingToken0,
        uint256 remainingToken1
    ) external {
        // Check if we need to rebalance - need remaining tokens and a strategy
        if ((remainingToken0 == 0 && remainingToken1 == 0) || s.lastStrategyParams.strategy == address(0)) {
            return;
        }

        // Create rebalance params from stored strategy
        IMultiPositionManager.RebalanceParams memory rebalanceParams = IMultiPositionManager.RebalanceParams({
            strategy: s.lastStrategyParams.strategy,
            center: s.lastStrategyParams.centerTick,
            tLeft: s.lastStrategyParams.ticksLeft,
            tRight: s.lastStrategyParams.ticksRight,
            limitWidth: s.lastStrategyParams.limitWidth,
            weight0: uint256(s.lastStrategyParams.weight0),
            weight1: uint256(s.lastStrategyParams.weight1),
            useCarpet: s.lastStrategyParams.useCarpet
        });

        // Empty outMin for internal rebalance (no withdrawal happening)
        uint256[2][] memory outMin = new uint256[2][](0);

        // Rebalance using the remaining amounts
        (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities,) =
            _processRebalance(s, poolManager, rebalanceParams, outMin, new uint256[2][](0));

        // Set positions
        uint256 newBaseLength = baseRanges.length;
        for (uint256 i = 0; i < newBaseLength;) {
            s.basePositions[i] = baseRanges[i];
            unchecked {
                ++i;
            }
        }
        s.basePositionsLength = newBaseLength;

        // Create empty inMin for internal deposit (no slippage protection needed for internal calls)
        uint256[2][] memory inMin = new uint256[2][](baseRanges.length);

        // Mint positions and capture position data
        IMultiPositionManager.PositionData[] memory positionData =
            PositionLogic.mintLiquidities(poolManager, s, liquidities, inMin);

        // Build ranges array including base and limit positions
        uint256 baseLength = s.basePositionsLength;
        IMultiPositionManager.Range[] memory ranges = new IMultiPositionManager.Range[](baseLength + 2);
        uint256 rangeCount = 0;

        for (uint8 i = 0; i < baseLength;) {
            ranges[rangeCount++] = s.basePositions[i];
            unchecked {
                ++i;
            }
        }

        if (s.limitPositions[0].lowerTick != s.limitPositions[0].upperTick) {
            ranges[rangeCount++] = s.limitPositions[0];
        }

        if (s.limitPositions[1].lowerTick != s.limitPositions[1].upperTick) {
            ranges[rangeCount++] = s.limitPositions[1];
        }

        // Resize ranges array to actual count
        assembly {
            mstore(ranges, rangeCount)
        }

        // Emit rebalance event
        emit IMultiPositionManager.Rebalance(ranges, positionData, rebalanceParams);
    }

    /**
     * @notice Calculate weights based on current token amounts and price
     * @param amount0 Current amount of token0
     * @param amount1 Current amount of token1
     * @param sqrtPriceX96 Current pool sqrt price
     * @return weight0 Weight for token0 (in 1e18)
     * @return weight1 Weight for token1 (in 1e18)
     */
    function calculateWeightsFromAmounts(uint256 amount0, uint256 amount1, uint160 sqrtPriceX96)
        internal
        pure
        returns (uint256 weight0, uint256 weight1)
    {
        // Calculate value0 in token1 terms using sqrtPriceX96 directly
        uint256 value0InToken1 =
            FullMath.mulDiv(FullMath.mulDiv(amount0, uint256(sqrtPriceX96), 1 << 96), uint256(sqrtPriceX96), 1 << 96);
        uint256 totalValue = value0InToken1 + amount1;

        if (totalValue == 0) {
            return (0.5e18, 0.5e18);
        }

        weight0 = FullMath.mulDiv(value0InToken1, 1e18, totalValue);
        weight1 = 1e18 - weight0;
    }

    /**
     * @notice Get density weights from strategy
     */
    function _getDensities(WeightCalculationParams memory params, int24[] memory lowerTicks, int24[] memory upperTicks)
        private
        view
        returns (uint256[] memory)
    {
        return params.strategy.calculateDensities(
            lowerTicks,
            upperTicks,
            params.currentTick,
            params.center,
            params.tLeft,
            params.tRight,
            0,
            0,
            params.useCarpet,
            params.tickSpacing,
            true
        );
    }

    /**
     * @notice Calculate weighted token amounts based on strategy densities
     * @dev Helper function to avoid stack too deep in calculateWeightsFromStrategy
     */
    function _calculateWeightedAmounts(
        WeightCalculationParams memory params,
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) private view returns (uint256 totalAmount0, uint256 totalAmount1) {
        uint256[] memory densities = _getDensities(params, lowerTicks, upperTicks);

        uint160 sqrtPrice = params.sqrtPriceX96;
        uint256 length = lowerTicks.length;
        for (uint256 i = 0; i < length;) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(lowerTicks[i]);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(upperTicks[i]);

            (uint256 amount0For1e18, uint256 amount1For1e18) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPrice, sqrtPriceLower, sqrtPriceUpper, 1e18);

            totalAmount0 += (amount0For1e18 * densities[i]) / 1e18;
            totalAmount1 += (amount1For1e18 * densities[i]) / 1e18;
            unchecked {
                ++i;
            }
        }
    }

    function calculateWeightsFromStrategy(
        ILiquidityStrategy strategy,
        int24 center,
        uint24 tLeft,
        uint24 tRight,
        int24 tickSpacing,
        bool useCarpet,
        uint160 sqrtPriceX96,
        int24 currentTick
    ) internal view returns (uint256 weight0, uint256 weight1) {
        WeightCalculationParams memory params = WeightCalculationParams({
            strategy: strategy,
            center: center,
            tLeft: tLeft,
            tRight: tRight,
            tickSpacing: tickSpacing,
            useCarpet: useCarpet,
            sqrtPriceX96: sqrtPriceX96,
            currentTick: currentTick
        });

        (int24[] memory lowerTicks, int24[] memory upperTicks) =
            strategy.generateRanges(center, tLeft, tRight, tickSpacing, useCarpet);

        if (lowerTicks.length == 0) return (0.5e18, 0.5e18);

        (uint256 totalAmount0, uint256 totalAmount1) = _calculateWeightedAmounts(params, lowerTicks, upperTicks);

        if (totalAmount0 == 0 && totalAmount1 == 0) return (0.5e18, 0.5e18);

        uint256 value0InToken1 = FullMath.mulDiv(
            FullMath.mulDiv(totalAmount0, uint256(sqrtPriceX96), 1 << 96), uint256(sqrtPriceX96), 1 << 96
        );
        uint256 totalValue = value0InToken1 + totalAmount1;

        if (totalValue == 0) return (0.5e18, 0.5e18);

        weight0 = FullMath.mulDiv(value0InToken1, 1e18, totalValue);
        weight1 = 1e18 - weight0;
    }

    /**
     * @notice Calculate optimal swap amount to achieve target weight distribution
     * @param amount0 Current amount of token0
     * @param amount1 Current amount of token1
     * @param sqrtPriceX96 Current pool sqrt price
     * @param weight0 Target weight for token0 (in 1e18)
     * @return swapToken0 True if swapping token0 to token1, false otherwise
     * @return swapAmount Amount to swap
     */
    function calculateOptimalSwap(
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        uint256 weight0,
        uint256 /* weight1 */
    ) public pure returns (bool swapToken0, uint256 swapAmount) {
        // Calculate value0 in token1 terms using sqrtPriceX96 directly to avoid precision loss
        uint256 value0InToken1 =
            FullMath.mulDiv(FullMath.mulDiv(amount0, uint256(sqrtPriceX96), 1 << 96), uint256(sqrtPriceX96), 1 << 96);

        // Total value in token1 terms
        uint256 totalValue = value0InToken1 + amount1;

        // Target token0 value in token1 terms
        uint256 target0ValueInToken1 = FullMath.mulDiv(totalValue, weight0, 1e18);

        // Convert target back to token0 amount
        // target0Amount = target0ValueInToken1 / (sqrtPriceX96^2 / 2^192)
        // = target0ValueInToken1 * 2^192 / sqrtPriceX96^2
        // = (target0ValueInToken1 * 2^96 / sqrtPriceX96) * 2^96 / sqrtPriceX96
        uint256 target0Amount = FullMath.mulDiv(
            FullMath.mulDiv(target0ValueInToken1, 1 << 96, uint256(sqrtPriceX96)), 1 << 96, uint256(sqrtPriceX96)
        );

        if (amount0 > target0Amount) {
            swapToken0 = true;
            swapAmount = amount0 - target0Amount;
        } else {
            swapToken0 = false;
            uint256 token0Deficit = target0Amount - amount0;
            // Convert token0Deficit to token1 amount
            swapAmount = FullMath.mulDiv(
                FullMath.mulDiv(token0Deficit, uint256(sqrtPriceX96), 1 << 96), uint256(sqrtPriceX96), 1 << 96
            );
        }
    }

    /**
     * @notice Rebalance with token swap through aggregator
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param params Rebalance parameters
     * @param aggregator Aggregator contract address
     * @param swapData Encoded swap calldata
     * @param minAmountOut Minimum amount expected from swap
     * @param outMin Minimum output amounts for withdrawals
     * @param inMin Minimum input amounts for new positions (slippage protection)
     * @param totalSupply Current total supply of shares
     * @return baseRanges The base ranges to rebalance to
     * @return liquidities The liquidity amounts for each range
     * @return limitWidth The limit width for limit positions
     */
    /**
     * @notice Execute swap exactly as specified in swapParams
     * @dev Trusts off-chain calculation from SimpleLens.calculateOptimalSwapForRebalance
     * @param s Storage struct
     * @param swapParams Complete swap parameters from JavaScript including aggregator and calldata
     * @param amount0 Current amount of token0
     * @param amount1 Current amount of token1
     * @return Updated amount0 and amount1 after swap
     */
    function _executeProvidedSwap(
        SharedStructs.ManagerStorage storage s,
        SwapParams calldata swapParams,
        uint256 amount0,
        uint256 amount1
    ) private returns (uint256, uint256) {
        if (swapParams.swapData.length == 0) {
            // No swap needed
            return (amount0, amount1);
        }

        // Get token addresses for swap execution
        address currency0 = Currency.unwrap(s.poolKey.currency0);
        address currency1 = Currency.unwrap(s.poolKey.currency1);

        // Execute aggregator swap with validation
        uint256 amountOut = _executeAggregatorSwap(swapParams, amount0, amount1, currency0, currency1);

        emit SwapExecuted(swapParams.aggregatorAddress, swapParams.swapAmount, amountOut, swapParams.swapToken0);

        // Update amounts based on swap direction
        if (swapParams.swapToken0) {
            return (amount0 - swapParams.swapAmount, amount1 + amountOut);
        }
        return (amount0 + amountOut, amount1 - swapParams.swapAmount);
    }

    /**
     * @notice Execute swap and calculate rebalance ranges in one call
     * @dev Combines swap execution and range calculation for cleaner flow
     * @param s Storage struct
     * @param poolManager The pool manager
     * @param params Rebalance parameters including swap details
     * @return baseRanges The base ranges to rebalance to
     * @return liquidities The liquidity amounts for each range
     * @return limitWidth The limit width for limit positions
     */
    function executeSwapAndCalculateRanges(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.RebalanceSwapParams calldata params
    )
        external
        returns (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities, uint24 limitWidth)
    {
        // 1. Get current balances
        uint256 amount0 = s.currency0.balanceOfSelf();
        uint256 amount1 = s.currency1.balanceOfSelf();

        // 2. Execute swap if needed
        if (params.swapParams.swapData.length > 0) {
            (amount0, amount1) = _executeProvidedSwap(s, params.swapParams, amount0, amount1);
        }

        // 3. Calculate ranges with updated amounts
        return _calculateRebalanceRanges(s, poolManager, params.rebalanceParams, amount0, amount1);
    }

    /**
     * @notice Execute swap for compound operation
     * @dev Used by compoundSwap to execute validated swap between ZERO_BURN and COMPOUND
     * @param s Storage struct
     * @param params Swap parameters including aggregator details
     * @return amount0 Updated amount of token0 after swap
     * @return amount1 Updated amount of token1 after swap
     */
    function executeCompoundSwap(SharedStructs.ManagerStorage storage s, SwapParams calldata params)
        external
        returns (uint256 amount0, uint256 amount1)
    {
        // Get current balances
        amount0 = s.currency0.balanceOfSelf();
        amount1 = s.currency1.balanceOfSelf();

        // Execute swap if swap data provided
        if (params.swapData.length > 0) {
            (amount0, amount1) = _executeProvidedSwap(s, params, amount0, amount1);
        }

        return (amount0, amount1);
    }

    /**
     * @notice Execute swap through aggregator with validation
     * @dev JavaScript builds complete function call, Solidity just executes it
     * @param params Swap parameters including aggregator type and encoded calldata
     * @param amount0 Available amount of token0
     * @param amount1 Available amount of token1
     * @param currency0 Address of token0
     * @param currency1 Address of token1
     * @return amountOut Amount of output token received
     */
    function _executeAggregatorSwap(
        SwapParams calldata params,
        uint256 amount0,
        uint256 amount1,
        address currency0,
        address currency1
    ) private returns (uint256 amountOut) {
        // Validate aggregator type (prevents arbitrary contract calls)
        if (uint8(params.aggregator) > 3) revert InvalidAggregator();

        // Validate we have sufficient tokens for the swap
        if (params.swapToken0) {
            if (amount0 < params.swapAmount) revert InsufficientTokensForSwap();
        } else {
            if (amount1 < params.swapAmount) revert InsufficientTokensForSwap();
        }

        // Determine input and output tokens
        address inputToken = params.swapToken0 ? currency0 : currency1;
        address outputToken = params.swapToken0 ? currency1 : currency0;

        // Check if input token is native ETH (address(0))
        bool isETHIn = inputToken == address(0);

        // Approve aggregator to spend input tokens (skip if native ETH)
        if (!isETHIn) {
            IERC20(inputToken).forceApprove(params.aggregatorAddress, params.swapAmount);
        }

        // Record balance before swap
        uint256 balanceBefore = _getBalance(outputToken);

        // Determine ETH value to send with call
        // If swapping native ETH, send the swap amount; otherwise send 0
        uint256 ethValue = isETHIn ? params.swapAmount : 0;

        // Execute the aggregator's function call
        // swapData already contains the complete, ready-to-execute function call from JavaScript
        (bool success,) = params.aggregatorAddress.call{value: ethValue}(params.swapData);

        // Reset approval for security (skip if native ETH)
        if (!isETHIn) {
            IERC20(inputToken).forceApprove(params.aggregatorAddress, 0);
        }

        // Bubble up revert reason if swap failed
        if (!success) {
            assembly {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }
        }

        // Calculate and validate output amount
        amountOut = _getBalance(outputToken) - balanceBefore;
        if (amountOut < params.minAmountOut) revert InsufficientOutput();

        return amountOut;
    }

    /**
     * @notice Get balance of a token (handles both ERC20 and native ETH)
     * @param token Token address (address(0) for native ETH)
     * @return balance Current balance
     */
    function _getBalance(address token) private view returns (uint256) {
        if (token == address(0)) {
            return address(this).balance;
        } else {
            return IERC20(token).balanceOf(address(this));
        }
    }

    /**
     * @notice Process the rebalance result after swap
     * @dev Helper to avoid stack too deep
     */
    function _calculateRebalanceRanges(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.RebalanceParams calldata params,
        uint256 amount0,
        uint256 amount1
    )
        private
        returns (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities, uint24 limitWidth)
    {
        (uint160 sqrtPriceX96, int24 currentTick,,) = poolManager.getSlot0(s.poolKey.toId());
        StrategyContext memory ctx = _buildStrategyContext(s, params, amount0, amount1, sqrtPriceX96, currentTick);

        (baseRanges, liquidities) = generateRangesAndLiquidities(s, poolManager, ctx, amount0, amount1);

        _updateStrategyParams(s, ctx, true);

        s.basePositionsLength = 0;
        s.limitPositionsLength = 0;

        return (baseRanges, liquidities, ctx.limitWidth);
    }

    /**
     * @notice Build strategy context from params
     */
    function _buildStrategyContext(
        SharedStructs.ManagerStorage storage s,
        IMultiPositionManager.RebalanceParams calldata params,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        int24 currentTick
    ) private view returns (StrategyContext memory ctx) {
        ctx.useAssetWeights = (params.weight0 == 0 && params.weight1 == 0);
        if (ctx.useAssetWeights) {
            (ctx.weight0, ctx.weight1) = calculateWeightsFromAmounts(amount0, amount1, sqrtPriceX96);
        } else {
            ctx.weight0 = params.weight0;
            ctx.weight1 = params.weight1;
        }

        ctx.resolvedStrategy = params.strategy != address(0) ? params.strategy : s.lastStrategyParams.strategy;

        if (params.center == type(int24).max) {
            // Always round down to ensure the range contains the current tick
            int24 compressed = currentTick / s.poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % s.poolKey.tickSpacing != 0) {
                compressed--; // Round down for negative ticks with remainder
            }
            ctx.center = compressed * s.poolKey.tickSpacing;
        } else {
            ctx.center = params.center;
        }

        ctx.tLeft = params.tLeft;
        ctx.tRight = params.tRight;
        ctx.useCarpet = params.useCarpet;
        ctx.limitWidth = params.limitWidth;

        if (ctx.resolvedStrategy == address(0)) revert NoStrategySpecified();
        ctx.strategy = ILiquidityStrategy(ctx.resolvedStrategy);
    }

    /**
     * @notice Generate ranges and calculate liquidities
     */
    /**
     * @notice Generate ranges and calculate liquidities for given amounts
     * @dev Made public so SimpleLens can use the exact same logic for preview
     */
    function generateRangesAndLiquidities(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        StrategyContext memory ctx,
        uint256 amount0,
        uint256 amount1
    ) public view returns (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities) {
        return generateRangesAndLiquiditiesWithPoolKey(s.poolKey, poolManager, ctx, amount0, amount1);
    }

    /**
     * @notice Generate ranges and calculate liquidities (pure version for SimpleLens)
     * @dev Accepts poolKey as parameter instead of reading from storage
     */
    function generateRangesAndLiquiditiesWithPoolKey(
        PoolKey memory poolKey,
        IPoolManager poolManager,
        StrategyContext memory ctx,
        uint256 amount0,
        uint256 amount1
    ) public view returns (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities) {
        // Generate tick ranges
        (int24[] memory lowerTicks, int24[] memory upperTicks) =
            ctx.strategy.generateRanges(ctx.center, ctx.tLeft, ctx.tRight, poolKey.tickSpacing, ctx.useCarpet);

        // Convert to Range array
        baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint256 i = 0; i < lowerTicks.length;) {
            baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
            unchecked {
                ++i;
            }
        }

        // Calculate weights using pure version
        uint256[] memory weights = calculateWeightsWithPoolKey(poolKey, poolManager, ctx, lowerTicks, upperTicks);

        // Initialize liquidities array
        liquidities = new uint128[](baseRanges.length);

        // Get current sqrt price
        (uint160 sqrtPriceX96Current,,,) = poolManager.getSlot0(poolKey.toId());

        // Calculate liquidities using global limiting factor approach
        _calculateLiquiditiesFromWeights(
            liquidities, weights, baseRanges, amount0, amount1, sqrtPriceX96Current, ctx.useAssetWeights
        );
    }
}
