// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { IMultiPositionManager } from "../interfaces/IMultiPositionManager.sol";
import { ILiquidityStrategy } from "../strategies/ILiquidityStrategy.sol";
import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { PoolId, PoolIdLibrary } from "v4-core/types/PoolId.sol";
import { TickMath } from "v4-core/libraries/TickMath.sol";
import { LiquidityAmounts } from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import { FullMath } from "v4-core/libraries/FullMath.sol";
import { FixedPoint96 } from "v4-core/libraries/FixedPoint96.sol";
import { MultiPositionManager } from "../MultiPositionManager.sol";
import { PoolManagerUtils } from "../PoolManagerUtils.sol";
import { SimpleLensRatioUtils } from "./SimpleLensRatioUtils.sol";
import { RebalanceLogic } from "../lib/RebalanceLogic.sol";
import { PositionLogic } from "../lib/PositionLogic.sol";

/**
 * @title SimpleLensInMin
 * @notice Library for calculating minimum input amounts (slippage protection) for MultiPositionManager operations
 */
library SimpleLensInMin {
    using StateLibrary for IPoolManager;
    using PoolIdLibrary for PoolKey;

    uint256 constant PRECISION = 1e18;

    // Custom errors
    error GenerateRangesFailed();
    error CalculateDensitiesFailed();

    struct InitialDepositWithSwapParams {
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        int24 limitWidth;
        uint256 weight0;           // Strategy weights (0,0 = calculate from strategy)
        uint256 weight1;
        bool useCarpet;
        uint256 amount0;           // User provides BOTH amounts (any ratio)
        uint256 amount1;
        uint256 maxSlippageBps;
    }

    struct PreviewContext {
        int24 resolvedCenter;
        int24 currentTick;
        uint160 sqrtPriceX96;
        uint256 finalAmount0;
        uint256 finalAmount1;
    }

    struct RebalancePreviewParams {
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        int24 limitWidth;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        bool swap;
        uint256 maxSlippage;
    }

    struct RebalancePreview {
        // Input parameters
        IMultiPositionManager.Range[] ranges;
        address strategy;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;

        // Calculated liquidities per position
        uint128[] liquidities;

        // Expected position data after rebalance
        SimpleLensRatioUtils.PositionStats[] expectedPositions;

        // Total amounts after rebalance
        uint256 expectedTotal0;
        uint256 expectedTotal1;

        // Swap information (only populated for swap previews)
        bool swapToken0;        // true if swapping token0 for token1
        uint256 swapAmount;     // Amount to swap
        uint256 expectedAmountOut; // Expected output from swap
    }

    struct InMinRebalanceParams {
        MultiPositionManager manager;
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        int24 limitWidth;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        bool swap;
        uint256 maxSlippage;
    }

    struct DensityCalcParams {
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        bool weightsAreProportional;
    }

    struct InMinCalcData {
        uint256 amount0;
        uint256 amount1;
        int24 tickSpacing;
        uint160 sqrtPriceX96;
        int24 currentTick;
        uint256 maxSlippage;
    }

    struct InMinCalcState {
        uint256 totalWeightedToken0;
        uint256 totalWeightedToken1;
        uint128 maxLiquidityFromToken0;
        uint128 maxLiquidityFromToken1;
        uint128 totalLiquidity;
        uint256 slippageMultiplier;
        uint256[] token0Needs;
        uint256[] token1Needs;
    }

    struct SqrtPriceCache {
        uint160[] sqrtPriceLowers;
        uint160[] sqrtPriceUppers;
    }

    /**
     * @notice Calculate minimum input amounts for rebalance operation
     */
    function calculateInMinForRebalance(
        InMinRebalanceParams memory params
    ) external view returns (uint256[2][] memory) {
        return _calculateInMinInternal(params);
    }

    /**
     * @notice Calculate minimum input amounts from existing ranges and weights
     */
    function calculateInMinFromExistingData(
        IMultiPositionManager.Range[] memory ranges,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        uint256 maxSlippage
    ) external pure returns (uint256[2][] memory inMin) {
        return _calculateInMinFromExistingData(ranges, weights, amount0, amount1, sqrtPriceX96, maxSlippage);
    }

    function _calculateInMinFromExistingData(
        IMultiPositionManager.Range[] memory ranges,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        uint256 maxSlippage
    ) private pure returns (uint256[2][] memory inMin) {
        uint256 rangesLength = ranges.length;
        inMin = new uint256[2][](rangesLength);

        if (rangesLength == 0) return inMin;

        InMinCalcState memory state;

        // First pass: calculate weighted token requirements
        for (uint256 i = 0; i < rangesLength; i++) {
            if (ranges[i].lowerTick == 0 && ranges[i].upperTick == 0) continue;

            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

            (uint256 amount0For1e18, uint256 amount1For1e18) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                sqrtPriceLower,
                sqrtPriceUpper,
                1e18
            );

            state.totalWeightedToken0 += (amount0For1e18 * weights[i]) / 1e18;
            state.totalWeightedToken1 += (amount1For1e18 * weights[i]) / 1e18;
        }

        // Calculate total liquidity based on limiting token
        {
            state.maxLiquidityFromToken0 = state.totalWeightedToken0 > 0
                ? uint128((amount0 * 1e18) / state.totalWeightedToken0)
                : type(uint128).max;
            state.maxLiquidityFromToken1 = state.totalWeightedToken1 > 0
                ? uint128((amount1 * 1e18) / state.totalWeightedToken1)
                : type(uint128).max;

            state.totalLiquidity = state.maxLiquidityFromToken0 < state.maxLiquidityFromToken1
                ? state.maxLiquidityFromToken0
                : state.maxLiquidityFromToken1;
        }

        // Apply slippage protection
        state.slippageMultiplier = 10000 - maxSlippage;

        // Second pass: calculate inMin for each position
        for (uint256 i = 0; i < rangesLength; i++) {
            if (ranges[i].lowerTick == 0 && ranges[i].upperTick == 0) {
                inMin[i] = [uint256(0), uint256(0)];
                continue;
            }

            // Check if this is a carpet position (extreme ticks)
            // Carpet positions use min/max usable ticks and should have minimal inMin
            bool isCarpet = _isCarpetPosition(ranges[i].lowerTick, ranges[i].upperTick);

            if (isCarpet) {
                // Carpet positions are dust catchers - set inMin to 0
                inMin[i] = [uint256(0), uint256(0)];
                continue;
            }

            // Calculate liquidity for this position
            uint128 positionLiquidity = uint128((uint256(state.totalLiquidity) * weights[i]) / 1e18);

            if (positionLiquidity > 0) {
                uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
                uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

                (uint256 amt0, uint256 amt1) = LiquidityAmounts.getAmountsForLiquidity(
                    sqrtPriceX96,
                    sqrtPriceLower,
                    sqrtPriceUpper,
                    positionLiquidity
                );

                inMin[i] = [
                    (amt0 * state.slippageMultiplier) / 10000,
                    (amt1 * state.slippageMultiplier) / 10000
                ];
            } else {
                inMin[i] = [uint256(0), uint256(0)];
            }
        }

        return inMin;
    }

    /**
     * @notice Check if a position is a carpet position based on extreme ticks
     * @param lowerTick Lower tick of the position
     * @param upperTick Upper tick of the position
     * @return True if this is a carpet position
     */
    function _isCarpetPosition(int24 lowerTick, int24 upperTick) private pure returns (bool) {
        // Carpet positions typically span from min/max usable ticks
        // Check if either bound is at or near the extreme
        int24 threshold = 800000; // Ticks beyond +/- 800k are likely carpet positions

        return (lowerTick <= -threshold || upperTick >= threshold);
    }

    function _calculateInMinInternal(
        InMinRebalanceParams memory params
    ) private view returns (uint256[2][] memory) {
        DensityCalcParams memory densityParams;
        InMinCalcData memory calcData;

        // Block 1: Get amounts and estimate post-swap if needed
        {
            (uint256 amount0, uint256 amount1) = _getTotalAmountsForRebalance(params.manager);

            // If swap is involved, estimate post-swap amounts
            if (params.swap) {
                (amount0, amount1) = _estimatePostSwapAmounts(
                    params,
                    amount0,
                    amount1
                );
            }

            calcData.amount0 = amount0;
            calcData.amount1 = amount1;
        }

        // Block 2: Get pool state
        {
            PoolKey memory poolKey = params.manager.poolKey();
            IPoolManager poolManager = params.manager.poolManager();
            (calcData.sqrtPriceX96, calcData.currentTick, , ) = poolManager.getSlot0(poolKey.toId());
            calcData.tickSpacing = poolKey.tickSpacing;
            calcData.maxSlippage = params.maxSlippage;
        }

        // Block 3: Prepare density params
        {
            int24 resolvedCenterTick = params.centerTick;
            if (params.centerTick == type(int24).max) {
                int24 compressed = calcData.currentTick / calcData.tickSpacing;
                if (calcData.currentTick < 0 && calcData.currentTick % calcData.tickSpacing != 0) {
                    compressed--;
                }
                resolvedCenterTick = compressed * calcData.tickSpacing;
            }

            // For proportional weights, calculate from post-swap amounts (matches RebalanceLogic behavior)
            // When swap=true, amounts are already post-swap. When swap=false, amounts are current.
            // This ensures inMin calculation uses the same weights that RebalanceLogic will use.
            uint256 weight0 = params.weight0;
            uint256 weight1 = params.weight1;
            if (params.weight0 == 0 && params.weight1 == 0) {
                (weight0, weight1) = RebalanceLogic.calculateWeightsFromAmounts(
                    calcData.amount0,
                    calcData.amount1,
                    calcData.sqrtPriceX96
                );
            }

            densityParams = DensityCalcParams({
                strategyAddress: params.strategyAddress,
                centerTick: resolvedCenterTick,
                ticksLeft: params.ticksLeft,
                ticksRight: params.ticksRight,
                weight0: weight0,
                weight1: weight1,
                useCarpet: params.useCarpet,
                weightsAreProportional: (params.weight0 == 0 && params.weight1 == 0)
            });
        }

        return _calculateInMinWithStructs(densityParams, calcData);
    }

    function _calculateInMinWithStructs(
        DensityCalcParams memory densityParams,
        InMinCalcData memory calcData
    ) private view returns (uint256[2][] memory) {
        int24[] memory lowerTicks;
        int24[] memory upperTicks;
        uint256[] memory weights;

        // Step 1: Generate ranges
        {
            (lowerTicks, upperTicks) = _callGenerateRanges(
                densityParams.strategyAddress,
                densityParams,
                calcData.tickSpacing
            );
        }

        // Step 2: Calculate weights
        {
            weights = _callCalculateDensities(
                densityParams,
                lowerTicks,
                upperTicks,
                calcData.currentTick,
                calcData.tickSpacing
            );
        }

        // Step 3: Calculate final inMin
        {
            return _calculateInMinArrayFromAmounts(
                lowerTicks,
                upperTicks,
                weights,
                calcData.amount0,
                calcData.amount1,
                calcData.sqrtPriceX96,
                calcData.maxSlippage,
                densityParams.weightsAreProportional
            );
        }
    }

    function calculateInMinArrayFromAmounts(
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        uint256 maxSlippage,
        bool weightsAreProportional
    ) external pure returns (uint256[2][] memory inMin) {
        return _calculateInMinArrayFromAmounts(
            lowerTicks,
            upperTicks,
            weights,
            amount0,
            amount1,
            sqrtPriceX96,
            maxSlippage,
            weightsAreProportional
        );
    }

    function _calculateInMinArrayFromAmounts(
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        uint256 maxSlippage,
        bool weightsAreProportional
    ) private pure returns (uint256[2][] memory inMin) {
        inMin = new uint256[2][](lowerTicks.length);
        if (lowerTicks.length == 0) return inMin;

        RebalanceLogic.AllocationData memory data;
        data.token0Allocations = new uint256[](lowerTicks.length);
        data.token1Allocations = new uint256[](lowerTicks.length);
        data.currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);

        // Convert ticks to ranges for RebalanceLogic functions
        IMultiPositionManager.Range[] memory baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint i = 0; i < lowerTicks.length; i++) {
            baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
        }

        // Step 1: Calculate initial allocations based on weights
        RebalanceLogic.calculateInitialAllocations(data, baseRanges, weights, sqrtPriceX96);

        // Step 2: Scale allocations proportionally
        RebalanceLogic.scaleAllocations(data, amount0, amount1, weightsAreProportional);

        // Step 3: Fix current range and redistribute (only for proportional weights)
        if (weightsAreProportional && data.hasCurrentRange) {
            RebalanceLogic.fixCurrentRangeAndRedistribute(data, baseRanges, sqrtPriceX96);
        }

        // Step 4: Convert allocations to inMin with slippage
        uint256 slippageMultiplier = 10000 - maxSlippage;
        _convertAllocationsToInMin(inMin, data, lowerTicks, upperTicks, sqrtPriceX96, slippageMultiplier);

        return inMin;
    }




    function _convertAllocationsToInMin(
        uint256[2][] memory inMin,
        RebalanceLogic.AllocationData memory data,
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        uint160 sqrtPriceX96,
        uint256 slippageMultiplier
    ) private pure {
        uint256 length = lowerTicks.length;

        for (uint i = 0; i < length; i++) {
            // Round-trip calculation to get actual consumption amounts:
            // 1. Calculate sqrtPrice bounds
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(lowerTicks[i]);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(upperTicks[i]);

            // 2. Get liquidity that will be minted (constraining factor)
            uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
                sqrtPriceX96,
                sqrtPriceLower,
                sqrtPriceUpper,
                data.token0Allocations[i],
                data.token1Allocations[i]
            );

            // 3. Get actual amounts that will be consumed
            (uint256 actualAmount0, uint256 actualAmount1) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                sqrtPriceLower,
                sqrtPriceUpper,
                liquidity
            );

            // 4. Apply slippage to actual consumption (not allocated amounts)
            inMin[i] = [
                FullMath.mulDiv(actualAmount0, slippageMultiplier, 10000),
                FullMath.mulDiv(actualAmount1, slippageMultiplier, 10000)
            ];
        }
    }

    function _getTotalAmountsForRebalance(
        MultiPositionManager manager
    ) private view returns (uint256 total0, uint256 total1) {
        (total0, total1, , ) = manager.getTotalAmounts();
    }

    /**
     * @notice Estimate post-swap amounts for inMin calculation
     * @dev Calculates optimal swap and estimates output using sqrtPriceX96
     */
    function _estimatePostSwapAmounts(
        InMinRebalanceParams memory params,
        uint256 amount0,
        uint256 amount1
    ) private view returns (uint256 newAmount0, uint256 newAmount1) {
        // Get pool state
        PoolKey memory poolKey = params.manager.poolKey();
        IPoolManager poolManager = params.manager.poolManager();
        (uint160 sqrtPriceX96, int24 currentTick, , ) = poolManager.getSlot0(poolKey.toId());

        // Get weights for swap calculation
        (uint256 weight0, uint256 weight1) = _getWeightsForSwap(
            params,
            poolKey,
            sqrtPriceX96,
            currentTick
        );

        // Calculate optimal swap using the resolved weights
        (bool swapToken0, uint256 swapAmount) = RebalanceLogic.calculateOptimalSwap(
            amount0,
            amount1,
            sqrtPriceX96,
            weight0,
            weight1
        );

        // Apply swap estimate
        (newAmount0, newAmount1) = _applySwapEstimate(
            amount0,
            amount1,
            swapToken0,
            swapAmount,
            sqrtPriceX96
        );
    }

    /**
     * @notice Get weights for swap calculation
     * @dev For proportional weights, calculates from strategy. Otherwise uses explicit weights.
     */
    function _getWeightsForSwap(
        InMinRebalanceParams memory params,
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        int24 currentTick
    ) private view returns (uint256 weight0, uint256 weight1) {
        // For proportional weights, calculate from strategy (matches calculateOptimalSwapForRebalance)
        if (params.weight0 == 0 && params.weight1 == 0) {
            // Resolve center tick
            int24 resolvedCenter = params.centerTick;
            if (params.centerTick == type(int24).max) {
                int24 compressed = currentTick / poolKey.tickSpacing;
                if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) {
                    compressed--;
                }
                resolvedCenter = compressed * poolKey.tickSpacing;
            }

            // Calculate weights from strategy
            (weight0, weight1) = RebalanceLogic.calculateWeightsFromStrategy(
                ILiquidityStrategy(params.strategyAddress),
                resolvedCenter,
                params.ticksLeft,
                params.ticksRight,
                poolKey.tickSpacing,
                params.useCarpet,
                sqrtPriceX96,
                currentTick
            );
        } else {
            // Use explicit weights
            weight0 = params.weight0;
            weight1 = params.weight1;
        }
    }

    /**
     * @notice Calculate weights from post-swap amounts (for proportional mode)
     * @dev This is no longer used - keeping for potential future use
     */
    function _getWeightsAndPrice(
        InMinRebalanceParams memory params
    ) private view returns (uint256 weight0, uint256 weight1, uint160 sqrtPriceX96) {
        PoolKey memory poolKey = params.manager.poolKey();
        IPoolManager poolManager = params.manager.poolManager();
        int24 currentTick;
        (sqrtPriceX96, currentTick, , ) = poolManager.getSlot0(poolKey.toId());

        // Resolve center tick
        int24 resolvedCenter = params.centerTick;
        if (params.centerTick == type(int24).max) {
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) {
                compressed--;
            }
            resolvedCenter = compressed * poolKey.tickSpacing;
        }

        // Calculate weights
        if (params.weight0 == 0 && params.weight1 == 0) {
            (weight0, weight1) = RebalanceLogic.calculateWeightsFromStrategy(
                ILiquidityStrategy(params.strategyAddress),
                resolvedCenter,
                params.ticksLeft,
                params.ticksRight,
                poolKey.tickSpacing,
                params.useCarpet,
                sqrtPriceX96,
                currentTick
            );
        } else {
            weight0 = params.weight0;
            weight1 = params.weight1;
        }
    }

    /**
     * @notice Apply swap estimate to amounts
     */
    function _applySwapEstimate(
        uint256 amount0,
        uint256 amount1,
        bool swapToken0,
        uint256 swapAmount,
        uint160 sqrtPriceX96
    ) private pure returns (uint256 newAmount0, uint256 newAmount1) {
        if (swapToken0) {
            // Swapping token0 → token1
            uint256 estimatedOutput = FullMath.mulDiv(
                FullMath.mulDiv(swapAmount, uint256(sqrtPriceX96), FixedPoint96.Q96),
                uint256(sqrtPriceX96),
                FixedPoint96.Q96
            );
            newAmount0 = amount0 - swapAmount;
            newAmount1 = amount1 + estimatedOutput;
        } else {
            // Swapping token1 → token0
            uint256 estimatedOutput = FullMath.mulDiv(
                FullMath.mulDiv(swapAmount, FixedPoint96.Q96, uint256(sqrtPriceX96)),
                FixedPoint96.Q96,
                uint256(sqrtPriceX96)
            );
            newAmount0 = amount0 + estimatedOutput;
            newAmount1 = amount1 - swapAmount;
        }
    }

    function _callGenerateRanges(
        address strategyAddress,
        DensityCalcParams memory params,
        int24 tickSpacing
    ) private view returns (int24[] memory lowerTicks, int24[] memory upperTicks) {
        bytes memory callData = abi.encodeWithSelector(
            ILiquidityStrategy.generateRanges.selector,
            params.centerTick,
            params.ticksLeft,
            params.ticksRight,
            tickSpacing,
            params.useCarpet
        );

        (bool success, bytes memory returnData) = strategyAddress.staticcall(callData);
        if (!success) revert GenerateRangesFailed();

        return abi.decode(returnData, (int24[], int24[]));
    }

    struct DensityCallContext {
        address strategy;
        int24[] lowerTicks;
        int24[] upperTicks;
        int24 currentTick;
        int24 centerTick;
        int24 tickSpacing;
    }

    function _callCalculateDensities(
        DensityCalcParams memory params,
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        int24 currentTick,
        int24 tickSpacing
    ) private view returns (uint256[] memory) {
        DensityCallContext memory ctx;
        ctx.strategy = params.strategyAddress;
        ctx.lowerTicks = lowerTicks;
        ctx.upperTicks = upperTicks;
        ctx.currentTick = currentTick;
        ctx.centerTick = params.centerTick;
        ctx.tickSpacing = tickSpacing;

        return _executeDensityCall(ctx, params);
    }

    function _executeDensityCall(
        DensityCallContext memory ctx,
        DensityCalcParams memory params
    ) private view returns (uint256[] memory) {
        // Directly staticcall without storing callData in variable
        (bool success, bytes memory returnData) = ctx.strategy.staticcall(
            abi.encodeWithSelector(
                ILiquidityStrategy.calculateDensities.selector,
                ctx.lowerTicks,
                ctx.upperTicks,
                ctx.currentTick,
                ctx.centerTick,
                params.ticksLeft,
                params.ticksRight,
                params.weight0,
                params.weight1,
                params.useCarpet,
                ctx.tickSpacing,
                params.weightsAreProportional
            )
        );

        if (!success) revert CalculateDensitiesFailed();
        return abi.decode(returnData, (uint256[]));
    }

    /**
     * @notice Calculate liquidities based on weights and available token amounts
     * @dev This matches the _calculateLiquiditiesFromWeights algorithm from RebalanceLogic.sol
     * @param baseRanges Array of position ranges
     * @param weights Array of weights for each position
     * @param amount0 Available amount of token0
     * @param amount1 Available amount of token1
     * @param sqrtPriceX96 Current sqrt price
     * @param weightsAreProportional True if weights are 0,0 (uses redistribution), false for explicit weights
     * @return liquidities Array of calculated liquidity values
     */
    function calculateLiquidities(
        IMultiPositionManager.Range[] memory baseRanges,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        bool weightsAreProportional
    ) external pure returns (uint128[] memory liquidities) {
        // Can't use console.log in pure functions, so we'll debug via test
        if (!weightsAreProportional) {
            // For explicit weights, use limiting token approach (old behavior)
            liquidities = new uint128[](baseRanges.length);
            RebalanceLogic.calculateLiquiditiesDirectly(liquidities, weights, baseRanges, amount0, amount1, sqrtPriceX96);
            return liquidities;
        }

        // For proportional weights, approximate the redistribution behavior
        // Since redistribution uses 100% of both tokens, scale weights to consume all available
        uint256 rangesLength = baseRanges.length;
        liquidities = new uint128[](rangesLength);

        // Calculate how much each token needs per unit of liquidity
        uint256 totalWeightedToken0 = 0;
        uint256 totalWeightedToken1 = 0;

        for (uint i = 0; i < rangesLength; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick);

            (uint256 amount0For1e18, uint256 amount1For1e18) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                sqrtPriceLower,
                sqrtPriceUpper,
                1e18
            );

            totalWeightedToken0 += (amount0For1e18 * weights[i]) / 1e18;
            totalWeightedToken1 += (amount1For1e18 * weights[i]) / 1e18;
        }

        // For proportional mode, scale both independently (redistribution will make it work)
        // This approximation: use larger of the two liquidity factors to be conservative
        uint256 liquidityFromToken0 = totalWeightedToken0 > 0
            ? (amount0 * 1e18) / totalWeightedToken0
            : type(uint256).max;
        uint256 liquidityFromToken1 = totalWeightedToken1 > 0
            ? (amount1 * 1e18) / totalWeightedToken1
            : type(uint256).max;

        // Use larger value to ensure inMin is conservative (won't revert)
        uint256 totalLiquidity = liquidityFromToken0 > liquidityFromToken1
            ? liquidityFromToken0
            : liquidityFromToken1;

        for (uint i = 0; i < rangesLength; i++) {
            liquidities[i] = uint128((totalLiquidity * weights[i]) / 1e18);
        }
    }


    struct GetWeightsParams {
        IMultiPositionManager.Range[] baseRanges;
        address strategyAddress;
        int24 currentTick;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        int24 tickSpacing;
    }

    struct WeightCalcParams {
        int24[] lowerTicks;
        int24[] upperTicks;
        int24 currentTick;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        int24 tickSpacing;
    }

    /**
     * @notice Get weights for positions from strategy or default uniform distribution
     * @param params Parameters for weight calculation
     * @return weights Array of weights for each position
     */
    function getWeights(
        GetWeightsParams memory params
    ) external view returns (uint256[] memory weights) {
        uint256 rangesLength = params.baseRanges.length;

        if (params.strategyAddress != address(0)) {
            // Prepare tick arrays
            int24[] memory lowerTicks = new int24[](rangesLength);
            int24[] memory upperTicks = new int24[](rangesLength);

            // Find min and max ticks
            int24 minTick = params.baseRanges[0].lowerTick;
            int24 maxTick = params.baseRanges[0].upperTick;

            for (uint i = 0; i < rangesLength; i++) {
                lowerTicks[i] = params.baseRanges[i].lowerTick;
                upperTicks[i] = params.baseRanges[i].upperTick;

                if (params.baseRanges[i].lowerTick < minTick) minTick = params.baseRanges[i].lowerTick;
                if (params.baseRanges[i].upperTick > maxTick) maxTick = params.baseRanges[i].upperTick;
            }

            // Use provided ticks or calculate from ranges
            if (params.ticksLeft == 0 || params.ticksRight == 0) {
                params.ticksLeft = uint24(uint256(int256(params.centerTick - minTick)));
                params.ticksRight = uint24(uint256(int256(maxTick - params.centerTick)));
            }

            // Get weights from strategy
            if (params.useCarpet) {
                WeightCalcParams memory wParams = WeightCalcParams({
                    lowerTicks: lowerTicks,
                    upperTicks: upperTicks,
                    currentTick: params.currentTick,
                    centerTick: params.centerTick,
                    ticksLeft: params.ticksLeft,
                    ticksRight: params.ticksRight,
                    tickSpacing: params.tickSpacing
                });
                weights = _getWeightsWithCarpet(params.strategyAddress, wParams, params.weight0, params.weight1);
            } else {
                WeightCalcParams memory wParams = WeightCalcParams({
                    lowerTicks: lowerTicks,
                    upperTicks: upperTicks,
                    currentTick: params.currentTick,
                    centerTick: params.centerTick,
                    ticksLeft: params.ticksLeft,
                    ticksRight: params.ticksRight,
                    tickSpacing: params.tickSpacing
                });
                weights = _getWeightsWithoutCarpet(params.strategyAddress, wParams, params.weight0, params.weight1);
            }
        } else {
            // Default to uniform distribution
            weights = new uint256[](rangesLength);
            uint256 uniformWeight = 1e18 / rangesLength;
            for (uint i = 0; i < rangesLength; i++) {
                weights[i] = uniformWeight;
            }
            weights[rangesLength - 1] = 1e18 - (uniformWeight * (rangesLength - 1));
        }
    }

    function _getWeightsWithCarpet(
        address strategyAddress,
        WeightCalcParams memory params,
        uint256 weight0,
        uint256 weight1
    ) private view returns (uint256[] memory weights) {
        bool weightsAreProportional = (weight0 == 0 && weight1 == 0);

        if (weightsAreProportional) {
            weight0 = 0.5e18;
            weight1 = 0.5e18;
        }

        return ILiquidityStrategy(strategyAddress).calculateDensities(
            params.lowerTicks,
            params.upperTicks,
            params.currentTick,
            params.centerTick,
            params.ticksLeft,
            params.ticksRight,
            weight0,
            weight1,
            true, // useCarpet
            params.tickSpacing,
            weightsAreProportional
        );
    }

    function _getWeightsWithoutCarpet(
        address strategyAddress,
        WeightCalcParams memory params,
        uint256 weight0,
        uint256 weight1
    ) private view returns (uint256[] memory weights) {
        bool weightsAreProportional = (weight0 == 0 && weight1 == 0);

        if (weightsAreProportional) {
            weight0 = 0.5e18;
            weight1 = 0.5e18;
        }

        return ILiquidityStrategy(strategyAddress).calculateDensities(
            params.lowerTicks,
            params.upperTicks,
            params.currentTick,
            params.centerTick,
            params.ticksLeft,
            params.ticksRight,
            weight0,
            weight1,
            false, // useCarpet
            params.tickSpacing,
            weightsAreProportional
        );
    }

    /**
     * @notice Calculate minimum output amounts for burning shares with slippage protection
     * @param manager MultiPositionManager address
     * @param shares Number of shares to burn
     * @param maxSlippage Maximum slippage in basis points (10000 = 100%)
     * @return outMin Array of minimum amounts for each position
     */
    function getOutMinForShares(
        MultiPositionManager manager,
        uint256 shares,
        uint256 maxSlippage
    ) external view returns (uint256[2][] memory outMin) {
        uint256 totalPositionsLength = manager.basePositionsLength() + manager.limitPositionsLength();

        if (totalPositionsLength == 0) {
            return outMin;
        }

        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        outMin = new uint256[2][](totalPositionsLength);

        {
            IPoolManager pm = manager.poolManager();
            PoolKey memory poolKey = manager.poolKey();
            uint256 totalSupply = manager.totalSupply();

            _calculateOutMin(
                outMin,
                ranges,
                positionData,
                shares,
                totalSupply,
                maxSlippage,
                pm,
                poolKey
            );
        }

        return outMin;
    }

    function _calculateOutMin(
        uint256[2][] memory outMin,
        IMultiPositionManager.Range[] memory ranges,
        IMultiPositionManager.PositionData[] memory positionData,
        uint256 shares,
        uint256 totalSupply,
        uint256 maxSlippage,
        IPoolManager pm,
        PoolKey memory poolKey
    ) private view {
        uint256 slippageMultiplier = 10000 - maxSlippage;

        for(uint i = 0; i < ranges.length; i++) {
            uint256 liquidityToBurn = FullMath.mulDiv(
                positionData[i].liquidity,
                shares,
                totalSupply
            );

            (uint256 amount0, uint256 amount1) = PoolManagerUtils.getAmountsForLiquidity(
                pm,
                poolKey,
                ranges[i],
                uint128(liquidityToBurn)
            );

            unchecked {
                outMin[i] = [
                    amount0 * slippageMultiplier / 10000,
                    amount1 * slippageMultiplier / 10000
                ];
            }
        }
    }

    /**
     * @notice Calculate both outMin and inMin for rebalance operation
     * @param manager MultiPositionManager address
     * @param strategyAddress Address of liquidity strategy contract
     * @param centerTick Center tick for new positions (type(int24).max for current tick)
     * @param ticksLeft Number of ticks left of center
     * @param ticksRight Number of ticks right of center
     * @param limitWidth Width of limit positions
     * @param weight0 Weight for token0 (0 for proportional)
     * @param weight1 Weight for token1 (0 for proportional)
     * @param useCarpet Whether to use carpet positions
     * @param swap Whether to simulate swap
     * @param maxSlippage Maximum slippage in basis points
     * @return outMin Array of minimum amounts for burning current positions
     * @return inMin Array of minimum amounts for new positions
     */
    function getOutMinAndInMinForRebalance(
        MultiPositionManager manager,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        int24 limitWidth,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet,
        bool swap,
        uint256 maxSlippage
    ) external view returns (
        uint256[2][] memory outMin,
        uint256[2][] memory inMin
    ) {
        // In proportional mode (weights 0,0), force limitWidth to 0
        // Limit positions don't make sense when weights are derived from amounts
        if (weight0 == 0 && weight1 == 0) {
            limitWidth = 0;
        }

        outMin = _calculateOutMinForRebalance(manager, maxSlippage);

        InMinRebalanceParams memory inMinParams;
        inMinParams.manager = manager;
        inMinParams.strategyAddress = strategyAddress;
        inMinParams.centerTick = centerTick;
        inMinParams.ticksLeft = ticksLeft;
        inMinParams.ticksRight = ticksRight;
        inMinParams.limitWidth = limitWidth;
        inMinParams.weight0 = weight0;
        inMinParams.weight1 = weight1;
        inMinParams.useCarpet = useCarpet;
        inMinParams.swap = swap;
        inMinParams.maxSlippage = maxSlippage;

        inMin = _calculateInMinInternal(inMinParams);

        return (outMin, inMin);
    }

    function _calculateOutMinForRebalance(
        MultiPositionManager manager,
        uint256 maxSlippage
    ) private view returns (uint256[2][] memory outMin) {
        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        return PoolManagerUtils.calculateOutMinForRebalance(
            manager.poolManager(),
            manager.poolKey(),
            ranges,
            positionData,
            maxSlippage
        );
    }

    /**
     * @notice Calculate swap amounts and preview for initial deposit
     * @param poolManager The pool manager instance
     * @param poolKey The pool key
     * @param params Initial deposit parameters with swap
     * @return finalAmount0 Final amount of token0 after swap
     * @return finalAmount1 Final amount of token1 after swap
     * @return swapParams Swap parameters (direction, amount, weights)
     * @return inMin Minimum input amounts for slippage protection
     * @return preview Preview of the rebalance
     */
    function calculateSwapAndPreview(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        InitialDepositWithSwapParams calldata params
    ) external view returns (
        uint256 finalAmount0,
        uint256 finalAmount1,
        SimpleLensRatioUtils.SwapParams memory swapParams,
        uint256[2][] memory inMin,
        RebalancePreview memory preview
    ) {
        // 1. Build context
        PreviewContext memory ctx;
        (ctx.sqrtPriceX96, ctx.currentTick, ctx.resolvedCenter) =
            _getPoolStateAndResolveCenter(poolManager, poolKey, params.centerTick);

        // 2. Calculate swap
        (swapParams, ctx.finalAmount0, ctx.finalAmount1) = _calculateSwapDetails(
            params,
            ctx.sqrtPriceX96,
            ctx.resolvedCenter,
            poolKey.tickSpacing,
            ctx.currentTick
        );

        // 3. Use RebalanceLogic to generate ranges and liquidities (same logic as actual deployment!)
        RebalanceLogic.StrategyContext memory rbCtx = RebalanceLogic.StrategyContext({
            resolvedStrategy: params.strategyAddress,
            center: ctx.resolvedCenter,
            tLeft: params.ticksLeft,
            tRight: params.ticksRight,
            strategy: ILiquidityStrategy(params.strategyAddress),
            weight0: swapParams.weight0,
            weight1: swapParams.weight1,
            useCarpet: params.useCarpet,
            limitWidth: params.limitWidth,
            weightsAreProportional: (params.weight0 == 0 && params.weight1 == 0)
        });

        // Generate ranges and liquidities using EXACT same function as deployment
        (IMultiPositionManager.Range[] memory ranges, uint128[] memory liquidities) =
            RebalanceLogic.generateRangesAndLiquiditiesWithPoolKey(
                poolKey,
                poolManager,
                rbCtx,
                ctx.finalAmount0,
                ctx.finalAmount1
            );

        // 4. Build preview and inMin from the generated ranges/liquidities
        (inMin, preview) = _buildPreviewFromRangesAndLiquidities(
            poolManager,
            poolKey,
            ranges,
            liquidities,
            params,
            ctx,
            swapParams
        );

        return (ctx.finalAmount0, ctx.finalAmount1, swapParams, inMin, preview);
    }

    function _buildPreviewFromRangesAndLiquidities(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        IMultiPositionManager.Range[] memory ranges,
        uint128[] memory liquidities,
        InitialDepositWithSwapParams calldata params,
        PreviewContext memory ctx,
        SimpleLensRatioUtils.SwapParams memory swapParams
    ) private view returns (uint256[2][] memory inMin, RebalancePreview memory preview) {
        // Calculate inMin from liquidities
        inMin = new uint256[2][](ranges.length);
        uint256 slippageMultiplier = 10000 - params.maxSlippageBps;

        for (uint i = 0; i < ranges.length; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

            (uint256 amount0, uint256 amount1) = LiquidityAmounts.getAmountsForLiquidity(
                ctx.sqrtPriceX96,
                sqrtPriceLower,
                sqrtPriceUpper,
                liquidities[i]
            );

            inMin[i] = [
                (amount0 * slippageMultiplier) / 10000,
                (amount1 * slippageMultiplier) / 10000
            ];
        }

        // Build preview
        preview.strategy = params.strategyAddress;
        preview.centerTick = ctx.resolvedCenter;
        preview.ticksLeft = params.ticksLeft;
        preview.ticksRight = params.ticksRight;
        preview.ranges = ranges;
        preview.liquidities = liquidities;

        _calculateExpectedTotalsWithPoolKey(poolManager, poolKey, ranges, preview);
    }

    function _generateRangesWithLimit(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        InitialDepositWithSwapParams calldata params
    ) private view returns (IMultiPositionManager.Range[] memory) {
        // Only generate base ranges for preview
        // Limit positions are calculated dynamically at deployment time based on current tick
        // and cannot be accurately predicted in advance
        return _generateRangesFromStrategyWithPoolKey(
            poolManager,
            poolKey,
            params.strategyAddress,
            params.centerTick,
            params.ticksLeft,
            params.ticksRight,
            params.useCarpet
        );
    }

    function _getPoolStateAndResolveCenter(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        int24 centerTick
    ) private view returns (uint160 sqrtPriceX96, int24 currentTick, int24 resolvedCenter) {
        (sqrtPriceX96, currentTick, , ) = poolManager.getSlot0(poolKey.toId());
        resolvedCenter = centerTick;

        if (centerTick == type(int24).max) {
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) {
                compressed--;
            }
            resolvedCenter = compressed * poolKey.tickSpacing;
        }
    }

    function _calculateSwapDetails(
        InitialDepositWithSwapParams calldata params,
        uint160 sqrtPriceX96,
        int24 resolvedCenter,
        int24 tickSpacing,
        int24 currentTick
    ) private view returns (
        SimpleLensRatioUtils.SwapParams memory swapParams,
        uint256 finalAmount0,
        uint256 finalAmount1
    ) {
        // Calculate target weights
        if (params.weight0 == 0 && params.weight1 == 0) {
            (swapParams.weight0, swapParams.weight1) = RebalanceLogic.calculateWeightsFromStrategy(
                ILiquidityStrategy(params.strategyAddress),
                resolvedCenter,
                params.ticksLeft,
                params.ticksRight,
                tickSpacing,
                params.useCarpet,
                sqrtPriceX96,
                currentTick
            );
        } else {
            swapParams.weight0 = params.weight0;
            swapParams.weight1 = params.weight1;
        }

        // Calculate optimal swap
        (swapParams.swapToken0, swapParams.swapAmount) = RebalanceLogic.calculateOptimalSwap(
            params.amount0,
            params.amount1,
            sqrtPriceX96,
            swapParams.weight0,
            swapParams.weight1
        );

        // Calculate final amounts using library
        (finalAmount0, finalAmount1) = SimpleLensRatioUtils.applySwap(
            params.amount0,
            params.amount1,
            swapParams.swapToken0,
            swapParams.swapAmount,
            sqrtPriceX96
        );
    }

    function _generateRangesFromStrategyWithPoolKey(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        bool useCarpet
    ) private view returns (IMultiPositionManager.Range[] memory ranges) {
        int24 resolvedCenter = centerTick;
        if (centerTick == type(int24).max) {
            (, int24 currentTick, , ) = poolManager.getSlot0(poolKey.toId());
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) {
                compressed--;
            }
            resolvedCenter = compressed * poolKey.tickSpacing;
        }

        (int24[] memory lowerTicks, int24[] memory upperTicks) = ILiquidityStrategy(strategyAddress).generateRanges(
            resolvedCenter,
            ticksLeft,
            ticksRight,
            poolKey.tickSpacing,
            useCarpet
        );

        ranges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint256 i = 0; i < lowerTicks.length; i++) {
            ranges[i] = IMultiPositionManager.Range({
                lowerTick: lowerTicks[i],
                upperTick: upperTicks[i]
            });
        }
    }

    function _calculateExpectedTotalsWithPoolKey(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        IMultiPositionManager.Range[] memory ranges,
        RebalancePreview memory preview
    ) private view {
        (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(poolKey.toId());

        preview.expectedTotal0 = 0;
        preview.expectedTotal1 = 0;

        for (uint256 i = 0; i < ranges.length; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

            (uint256 amount0, uint256 amount1) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                sqrtPriceLower,
                sqrtPriceUpper,
                preview.liquidities[i]
            );

            preview.expectedTotal0 += amount0;
            preview.expectedTotal1 += amount1;
        }
    }
}