// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {MultiPositionManager} from "../../MultiPositionManager.sol";
import {IMultiPositionManager} from "../../interfaces/IMultiPositionManager.sol";
import {ILiquidityStrategy} from "../../strategies/ILiquidityStrategy.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {LiquidityAmounts} from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import {PoolManagerUtils} from "../PoolManagerUtils.sol";
import {RebalanceLogic} from "../RebalanceLogic.sol";
import {PositionLogic} from "../PositionLogic.sol";
import {LensRatioUtils} from "./LensRatioUtils.sol";

/**
 * @title LensInMin
 * @notice Library for calculating minimum amounts (slippage protection) for SimpleLens
 * @dev Adapted from SimpleLensInMin - removes withdrawal-related functions
 */
library LensInMin {
    using PoolIdLibrary for PoolKey;
    using StateLibrary for IPoolManager;

    /// @notice Parameters for getOutMinAndInMinForRebalance
    struct RebalanceMinParams {
        MultiPositionManager manager;
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint24 limitWidth;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        bool swap;
        uint256 maxSlippageOutMin;
        uint256 maxSlippageInMin;
        bool deductFees;
    }

    struct InMinRebalanceParams {
        MultiPositionManager manager;
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint24 limitWidth;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        bool swap;
        uint256 maxSlippage;
        bool deductFees;
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
        LensRatioUtils.PositionStats[] expectedPositions;
        // Total amounts after rebalance
        uint256 expectedTotal0;
        uint256 expectedTotal1;
        // Swap details (if swap is performed)
        bool swapToken0;
        uint256 swapAmount;
        uint256 expectedAmountOut;
        // Post-swap amounts (if swap)
        uint256 postSwapAmount0;
        uint256 postSwapAmount1;
    }

    struct DensityCalcParams {
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        bool useAssetWeights;
        int24 currentTick;
        int24 tickSpacing;
    }

    struct InMinCalcData {
        uint256 amount0;
        uint256 amount1;
        uint160 sqrtPriceX96;
        int24 currentTick;
        int24 tickSpacing;
        uint256 maxSlippage;
    }

    struct InMinCalcState {
        uint256 totalWeightedToken0;
        uint256 totalWeightedToken1;
        uint128 maxLiquidityFromToken0;
        uint128 maxLiquidityFromToken1;
        uint128 totalLiquidity;
        uint256 slippageMultiplier;
    }

    struct PreviewContext {
        uint160 sqrtPriceX96;
        int24 currentTick;
        int24 resolvedCenter;
        uint256 finalAmount0;
        uint256 finalAmount1;
    }

    struct LimitPositionsParams {
        uint24 limitWidth;
        int24 currentTick;
        int24 tickSpacing;
        uint256 maxSlippageBps;
        uint160 sqrtPriceX96;
        uint256 totalAmount0;
        uint256 totalAmount1;
    }

    /**
     * @notice Calculate inMin for rebalance
     * @param params Parameters for the calculation
     * @return inMin Array of minimum amounts for each position
     */
    function calculateInMinForRebalance(InMinRebalanceParams memory params)
        external
        view
        returns (uint256[2][] memory)
    {
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

            (uint256 amount0For1e18, uint256 amount1For1e18) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, 1e18);

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
            bool isCarpet = _isCarpetPosition(ranges[i].lowerTick, ranges[i].upperTick);

            if (isCarpet) {
                // For carpet positions, use minimal inMin
                inMin[i] = [uint256(0), uint256(0)];
                continue;
            }

            uint128 positionLiquidity = uint128((uint256(state.totalLiquidity) * weights[i]) / 1e18);

            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

            (uint256 amount0For, uint256 amount1For) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, positionLiquidity);

            inMin[i] = [
                FullMath.mulDiv(amount0For, state.slippageMultiplier, 10000),
                FullMath.mulDiv(amount1For, state.slippageMultiplier, 10000)
            ];
        }
    }

    /**
     * @notice Check if a position is a carpet position (extreme ticks)
     */
    function _isCarpetPosition(int24 lowerTick, int24 upperTick) private pure returns (bool) {
        return (lowerTick < -800000 || upperTick > 800000);
    }

    function _calculateInMinInternal(InMinRebalanceParams memory params) private view returns (uint256[2][] memory) {
        DensityCalcParams memory densityParams;
        InMinCalcData memory calcData;

        // Block 1: Get amounts and estimate post-swap if needed
        {
            (uint256 amount0, uint256 amount1) = _getTotalAmountsForRebalance(params.manager, params.deductFees);

            // If swap is involved, estimate post-swap amounts
            if (params.swap) {
                (amount0, amount1) = _estimatePostSwapAmounts(params, amount0, amount1);
            }

            calcData.amount0 = amount0;
            calcData.amount1 = amount1;
        }

        // Block 2: Get pool state
        {
            PoolKey memory poolKey = params.manager.poolKey();
            IPoolManager poolManager = params.manager.poolManager();
            (calcData.sqrtPriceX96, calcData.currentTick,,) = poolManager.getSlot0(poolKey.toId());
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

            // For proportional weights, calculate from post-swap amounts
            uint256 weight0 = params.weight0;
            uint256 weight1 = params.weight1;
            if (params.weight0 == 0 && params.weight1 == 0) {
                (weight0, weight1) = RebalanceLogic.calculateWeightsFromAmounts(
                    calcData.amount0, calcData.amount1, calcData.sqrtPriceX96
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
                useAssetWeights: (params.weight0 == 0 && params.weight1 == 0),
                currentTick: calcData.currentTick,
                tickSpacing: calcData.tickSpacing
            });
        }

        return _calculateInMinWithStructs(densityParams, calcData);
    }

    function _calculateInMinWithStructs(DensityCalcParams memory densityParams, InMinCalcData memory calcData)
        private
        view
        returns (uint256[2][] memory)
    {
        int24[] memory lowerTicks;
        int24[] memory upperTicks;
        uint256[] memory weights;

        // Step 1: Generate ranges
        {
            (lowerTicks, upperTicks) =
                _callGenerateRanges(densityParams.strategyAddress, densityParams, calcData.tickSpacing);
        }

        // Step 2: Calculate weights
        {
            weights = _callCalculateDensities(densityParams, lowerTicks, upperTicks);
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
                densityParams.useAssetWeights
            );
        }
    }

    function _calculateInMinArrayFromAmounts(
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        uint256 maxSlippage,
        bool useAssetWeights
    ) private pure returns (uint256[2][] memory inMin) {
        inMin = new uint256[2][](lowerTicks.length);
        if (lowerTicks.length == 0) return inMin;

        // Use RebalanceLogic's allocation algorithm to match actual rebalance behavior
        RebalanceLogic.AllocationData memory data;
        data.token0Allocations = new uint256[](lowerTicks.length);
        data.token1Allocations = new uint256[](lowerTicks.length);
        data.currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);

        // Convert ticks to ranges for RebalanceLogic functions
        IMultiPositionManager.Range[] memory baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint256 i = 0; i < lowerTicks.length; i++) {
            baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
        }

        // Step 1: Calculate initial allocations based on weights
        RebalanceLogic.calculateInitialAllocations(data, baseRanges, weights, sqrtPriceX96, false, 1);

        // Step 2: Scale allocations proportionally
        RebalanceLogic.scaleAllocations(data, amount0, amount1, useAssetWeights);

        // Step 3: Fix current range and redistribute (only for proportional weights)
        if (useAssetWeights && data.hasCurrentRange) {
            RebalanceLogic.fixCurrentRangeAndRedistribute(data, baseRanges, sqrtPriceX96);
        }

        // Step 4: Convert allocations to inMin with slippage using round-trip calculation
        uint256 slippageMultiplier = 10000 - maxSlippage;
        _convertAllocationsToInMin(inMin, data, lowerTicks, upperTicks, sqrtPriceX96, slippageMultiplier);

        return inMin;
    }

    /**
     * @notice Convert token allocations to inMin values using round-trip calculation
     */
    function _convertAllocationsToInMin(
        uint256[2][] memory inMin,
        RebalanceLogic.AllocationData memory data,
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        uint160 sqrtPriceX96,
        uint256 slippageMultiplier
    ) private pure {
        uint256 length = lowerTicks.length;

        for (uint256 i = 0; i < length; i++) {
            // Check if this is a carpet position (extreme ticks)
            bool isCarpet = _isCarpetPosition(lowerTicks[i], upperTicks[i]);
            if (isCarpet) {
                // For carpet positions, use minimal inMin (0)
                inMin[i] = [uint256(0), uint256(0)];
                continue;
            }

            // Round-trip calculation to get actual consumption amounts
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(lowerTicks[i]);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(upperTicks[i]);

            // Get liquidity that will be minted (constraining factor)
            uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
                sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, data.token0Allocations[i], data.token1Allocations[i]
            );

            // Get actual amounts that will be consumed
            (uint256 actualAmount0, uint256 actualAmount1) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, liquidity);

            // Apply slippage to actual consumption (not allocated amounts)
            inMin[i] = [
                FullMath.mulDiv(actualAmount0, slippageMultiplier, 10000),
                FullMath.mulDiv(actualAmount1, slippageMultiplier, 10000)
            ];
        }
    }

    function _getTotalAmountsForRebalance(MultiPositionManager manager, bool deductFees)
        private
        view
        returns (uint256 total0, uint256 total1)
    {
        uint256 fee0;
        uint256 fee1;
        (total0, total1, fee0, fee1) = manager.getTotalAmounts();

        // When compoundFees=false, fees are claimed before rebalance, so subtract them
        if (deductFees) {
            total0 = total0 > fee0 ? total0 - fee0 : 0;
            total1 = total1 > fee1 ? total1 - fee1 : 0;
        }
    }

    function _estimatePostSwapAmounts(InMinRebalanceParams memory params, uint256 amount0, uint256 amount1)
        private
        view
        returns (uint256, uint256)
    {
        // Get pool state
        PoolKey memory poolKey = params.manager.poolKey();
        IPoolManager poolManager = params.manager.poolManager();
        (uint160 sqrtPriceX96, int24 currentTick,,) = poolManager.getSlot0(poolKey.toId());

        // Calculate target weights using helper function to avoid stack too deep
        (uint256 weight0, uint256 weight1) = _calculateTargetWeights(params, poolKey, sqrtPriceX96, currentTick);

        // Estimate post-swap amounts (simplified calculation)
        uint256 price =
            FullMath.mulDiv(FullMath.mulDiv(uint256(sqrtPriceX96), uint256(sqrtPriceX96), 1 << 96), 1e18, 1 << 96);

        uint256 total0InToken1 = amount0 + FullMath.mulDiv(amount1, 1e18, price);
        uint256 targetAmount0 = FullMath.mulDiv(total0InToken1, weight0, weight0 + weight1);
        uint256 targetAmount1 = FullMath.mulDiv(total0InToken1, weight1, weight0 + weight1);

        // Convert back to token amounts
        targetAmount1 = FullMath.mulDiv(targetAmount1, price, 1e18);

        return (targetAmount0, targetAmount1);
    }

    function _calculateTargetWeights(
        InMinRebalanceParams memory params,
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        int24 currentTick
    ) private view returns (uint256 weight0, uint256 weight1) {
        // Get resolved center tick
        int24 centerTick = params.centerTick;
        if (params.centerTick == type(int24).max) {
            int24 tickSpacing = poolKey.tickSpacing;
            int24 compressed = currentTick / tickSpacing;
            if (currentTick < 0 && currentTick % tickSpacing != 0) {
                compressed--;
            }
            centerTick = compressed * tickSpacing;
        }

        // Calculate target weights from strategy (not from current amounts)
        weight0 = params.weight0;
        weight1 = params.weight1;
        if (params.weight0 == 0 && params.weight1 == 0) {
            (weight0, weight1) = RebalanceLogic.calculateWeightsFromStrategy(
                ILiquidityStrategy(params.strategyAddress),
                centerTick,
                params.ticksLeft,
                params.ticksRight,
                poolKey.tickSpacing,
                params.useCarpet,
                sqrtPriceX96,
                currentTick
            );
        }
    }

    function _callGenerateRanges(address strategyAddress, DensityCalcParams memory params, int24 tickSpacing)
        private
        view
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        ILiquidityStrategy strategy = ILiquidityStrategy(strategyAddress);

        (lowerTicks, upperTicks) = strategy.generateRanges(
            params.centerTick, params.ticksLeft, params.ticksRight, tickSpacing, params.useCarpet
        );
    }

    function _callCalculateDensities(
        DensityCalcParams memory params,
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) private view returns (uint256[] memory) {
        return ILiquidityStrategy(params.strategyAddress).calculateDensities(
            lowerTicks,
            upperTicks,
            params.currentTick,
            params.centerTick,
            params.ticksLeft,
            params.ticksRight,
            params.weight0,
            params.weight1,
            params.useCarpet,
            params.tickSpacing,
            params.useAssetWeights
        );
    }

    /**
     * @notice Public function to get all outMin and inMin for rebalance (struct version)
     * @param params RebalanceMinParams struct containing all parameters
     */
    function getOutMinAndInMinForRebalance(RebalanceMinParams memory params)
        external
        view
        returns (uint256[2][] memory outMin, uint256[2][] memory inMin)
    {
        // In proportional mode (weights 0,0), force limitWidth to 0
        uint24 limitWidth = params.limitWidth;
        if (params.weight0 == 0 && params.weight1 == 0) {
            limitWidth = 0;
        }

        outMin = _calculateOutMinForRebalance(params.manager, params.maxSlippageOutMin);

        InMinRebalanceParams memory inMinParams;
        inMinParams.manager = params.manager;
        inMinParams.strategyAddress = params.strategyAddress;
        inMinParams.centerTick = params.centerTick;
        inMinParams.ticksLeft = params.ticksLeft;
        inMinParams.ticksRight = params.ticksRight;
        inMinParams.limitWidth = limitWidth;
        inMinParams.weight0 = params.weight0;
        inMinParams.weight1 = params.weight1;
        inMinParams.useCarpet = params.useCarpet;
        inMinParams.swap = params.swap;
        inMinParams.maxSlippage = params.maxSlippageInMin;
        inMinParams.deductFees = params.deductFees;

        inMin = _calculateInMinInternal(inMinParams);

        return (outMin, inMin);
    }

    function _calculateOutMinForRebalance(MultiPositionManager manager, uint256 maxSlippage)
        private
        view
        returns (uint256[2][] memory outMin)
    {
        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        return PoolManagerUtils.calculateOutMinForRebalance(
            manager.poolManager(), manager.poolKey(), ranges, positionData, maxSlippage
        );
    }

    /**
     * @notice Simulate rebalance positions
     * @param manager The MultiPositionManager
     * @param totalAmount0 Total token0 to rebalance
     * @param totalAmount1 Total token1 to rebalance
     * @param params Rebalance parameters
     * @return preview Rebalance preview
     */
    function simulateRebalance(
        MultiPositionManager manager,
        uint256 totalAmount0,
        uint256 totalAmount1,
        IMultiPositionManager.RebalanceParams memory params
    ) internal view returns (RebalancePreview memory preview) {
        IPoolManager poolManager = manager.poolManager();
        PoolKey memory poolKey = manager.poolKey();

        // Get pool state and resolve center
        PreviewContext memory ctx;
        (ctx.sqrtPriceX96, ctx.currentTick,,) = poolManager.getSlot0(poolKey.toId());
        ctx.resolvedCenter = _resolveCenterTick(params.center, ctx.currentTick, poolKey.tickSpacing);

        // Calculate swap (assuming no swap for simplicity, weight0/weight1 passed through)
        ctx.finalAmount0 = totalAmount0;
        ctx.finalAmount1 = totalAmount1;

        // Use RebalanceLogic to generate ranges and liquidities
        RebalanceLogic.StrategyContext memory rbCtx = RebalanceLogic.StrategyContext({
            resolvedStrategy: params.strategy,
            center: ctx.resolvedCenter,
            tLeft: params.tLeft,
            tRight: params.tRight,
            strategy: ILiquidityStrategy(params.strategy),
            weight0: params.weight0,
            weight1: params.weight1,
            useCarpet: params.useCarpet,
            limitWidth: params.limitWidth,
            useAssetWeights: (params.weight0 == 0 && params.weight1 == 0)
        });

        (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory baseLiquidities) = RebalanceLogic
            .generateRangesAndLiquiditiesWithPoolKey(poolKey, poolManager, rbCtx, ctx.finalAmount0, ctx.finalAmount1);

        // Add limit positions
        IMultiPositionManager.Range[] memory allRanges;
        uint128[] memory allLiquidities;

        if (params.limitWidth > 0) {
            // Calculate limit ranges using PositionLogic
            (IMultiPositionManager.Range memory lowerLimit, IMultiPositionManager.Range memory upperLimit) =
                PositionLogic.calculateLimitRanges(params.limitWidth, baseRanges, poolKey.tickSpacing, ctx.currentTick);

            // Create arrays for base + 2 limit positions
            allRanges = new IMultiPositionManager.Range[](baseRanges.length + 2);
            allLiquidities = new uint128[](baseRanges.length + 2);

            // Copy base ranges and liquidities
            for (uint256 i = 0; i < baseRanges.length; i++) {
                allRanges[i] = baseRanges[i];
                allLiquidities[i] = baseLiquidities[i];
            }

            // Calculate remainders from base positions
            (uint256 remainderToken0, uint256 remainderToken1) =
                _calculateRemainders(baseRanges, baseLiquidities, ctx.sqrtPriceX96, ctx.finalAmount0, ctx.finalAmount1);

            // Add limit positions
            allRanges[baseRanges.length] = lowerLimit;
            allRanges[baseRanges.length + 1] = upperLimit;

            // Lower limit (below current tick) gets remainder token1
            if (lowerLimit.lowerTick != lowerLimit.upperTick && remainderToken1 > 0) {
                allLiquidities[baseRanges.length] = LiquidityAmounts.getLiquidityForAmounts(
                    ctx.sqrtPriceX96,
                    TickMath.getSqrtPriceAtTick(lowerLimit.lowerTick),
                    TickMath.getSqrtPriceAtTick(lowerLimit.upperTick),
                    0,
                    remainderToken1
                );
            }

            // Upper limit (above current tick) gets remainder token0
            if (upperLimit.lowerTick != upperLimit.upperTick && remainderToken0 > 0) {
                allLiquidities[baseRanges.length + 1] = LiquidityAmounts.getLiquidityForAmounts(
                    ctx.sqrtPriceX96,
                    TickMath.getSqrtPriceAtTick(upperLimit.lowerTick),
                    TickMath.getSqrtPriceAtTick(upperLimit.upperTick),
                    remainderToken0,
                    0
                );
            }
        } else {
            allRanges = baseRanges;
            allLiquidities = baseLiquidities;
        }

        // Build preview
        preview.ranges = allRanges;
        preview.strategy = params.strategy;
        preview.centerTick = ctx.resolvedCenter;
        preview.ticksLeft = params.tLeft;
        preview.ticksRight = params.tRight;
        preview.liquidities = allLiquidities;
        preview.postSwapAmount0 = ctx.finalAmount0;
        preview.postSwapAmount1 = ctx.finalAmount1;

        // Calculate expected positions
        preview.expectedPositions = new LensRatioUtils.PositionStats[](allRanges.length);
        _populateExpectedPositions(allRanges, allLiquidities, ctx.sqrtPriceX96, preview, baseRanges.length);
    }

    function _resolveCenterTick(int24 centerTick, int24 currentTick, int24 tickSpacing)
        private
        pure
        returns (int24 resolvedCenter)
    {
        if (centerTick == type(int24).max) {
            int24 compressed = currentTick / tickSpacing;
            if (currentTick < 0 && currentTick % tickSpacing != 0) {
                compressed--;
            }
            resolvedCenter = compressed * tickSpacing;
        } else {
            resolvedCenter = centerTick;
        }
    }

    function _calculateRemainders(
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory baseLiquidities,
        uint160 sqrtPriceX96,
        uint256 totalAmount0,
        uint256 totalAmount1
    ) private pure returns (uint256 remainderToken0, uint256 remainderToken1) {
        uint256 consumedToken0;
        uint256 consumedToken1;
        for (uint256 i = 0; i < baseRanges.length; i++) {
            (uint256 amt0, uint256 amt1) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick),
                TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick),
                baseLiquidities[i]
            );
            consumedToken0 += amt0;
            consumedToken1 += amt1;
        }
        remainderToken0 = totalAmount0 > consumedToken0 ? totalAmount0 - consumedToken0 : 0;
        remainderToken1 = totalAmount1 > consumedToken1 ? totalAmount1 - consumedToken1 : 0;
    }

    function _populateExpectedPositions(
        IMultiPositionManager.Range[] memory ranges,
        uint128[] memory liquidities,
        uint160 sqrtPriceX96,
        RebalancePreview memory preview,
        uint256 baseLength
    ) private pure {
        // Get current price for value calculations
        uint256 price =
            FullMath.mulDiv(FullMath.mulDiv(uint256(sqrtPriceX96), uint256(sqrtPriceX96), 1 << 96), 1e18, 1 << 96);

        preview.expectedTotal0 = 0;
        preview.expectedTotal1 = 0;

        for (uint256 i = 0; i < ranges.length; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

            (uint256 amount0, uint256 amount1) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, liquidities[i]);

            uint256 valueInToken1 = amount1 + FullMath.mulDiv(amount0, price, 1e18);

            preview.expectedPositions[i] = LensRatioUtils.PositionStats({
                tickLower: ranges[i].lowerTick,
                tickUpper: ranges[i].upperTick,
                sqrtPriceLower: sqrtPriceLower,
                sqrtPriceUpper: sqrtPriceUpper,
                liquidity: liquidities[i],
                token0Quantity: amount0,
                token1Quantity: amount1,
                valueInToken1: valueInToken1,
                isLimit: i >= baseLength
            });

            preview.expectedTotal0 += amount0;
            preview.expectedTotal1 += amount1;
        }
    }

    /**
     * @notice Add limit positions and calculate inMin
     */
    function addLimitPositionsAndCalculateInMin(
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory baseLiquidities,
        LimitPositionsParams memory params
    )
        external
        pure
        returns (
            IMultiPositionManager.Range[] memory allRanges,
            uint128[] memory allLiquidities,
            uint256[2][] memory inMin
        )
    {
        // Add limit positions if needed
        if (params.limitWidth > 0) {
            IMultiPositionManager.Range memory lowerLimit;
            IMultiPositionManager.Range memory upperLimit;

            {
                (lowerLimit, upperLimit) = PositionLogic.calculateLimitRanges(
                    params.limitWidth, baseRanges, params.tickSpacing, params.currentTick
                );
            }

            allRanges = new IMultiPositionManager.Range[](baseRanges.length + 2);
            allLiquidities = new uint128[](baseRanges.length + 2);

            // Copy base ranges and liquidities
            for (uint256 i = 0; i < baseRanges.length; i++) {
                allRanges[i] = baseRanges[i];
                allLiquidities[i] = baseLiquidities[i];
            }

            // Calculate consumed tokens and remainders
            (uint256 remainderToken0, uint256 remainderToken1) = _calculateRemainders(
                baseRanges, baseLiquidities, params.sqrtPriceX96, params.totalAmount0, params.totalAmount1
            );

            // Add limit positions with liquidity from remainders
            allRanges[baseRanges.length] = lowerLimit;
            allRanges[baseRanges.length + 1] = upperLimit;

            // Lower limit (below current tick) gets remainder token1
            if (lowerLimit.lowerTick != lowerLimit.upperTick && remainderToken1 > 0) {
                allLiquidities[baseRanges.length] = LiquidityAmounts.getLiquidityForAmounts(
                    params.sqrtPriceX96,
                    TickMath.getSqrtPriceAtTick(lowerLimit.lowerTick),
                    TickMath.getSqrtPriceAtTick(lowerLimit.upperTick),
                    0,
                    remainderToken1
                );
            }

            // Upper limit (above current tick) gets remainder token0
            if (upperLimit.lowerTick != upperLimit.upperTick && remainderToken0 > 0) {
                allLiquidities[baseRanges.length + 1] = LiquidityAmounts.getLiquidityForAmounts(
                    params.sqrtPriceX96,
                    TickMath.getSqrtPriceAtTick(upperLimit.lowerTick),
                    TickMath.getSqrtPriceAtTick(upperLimit.upperTick),
                    remainderToken0,
                    0
                );
            }
        } else {
            allRanges = baseRanges;
            allLiquidities = baseLiquidities;
        }

        // Calculate inMin
        inMin = _calculateInMin(baseRanges, baseLiquidities, params.maxSlippageBps, params.sqrtPriceX96);
    }

    function _calculateInMin(
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory baseLiquidities,
        uint256 maxSlippageBps,
        uint160 sqrtPriceX96
    ) internal pure returns (uint256[2][] memory inMin) {
        inMin = new uint256[2][](baseRanges.length);
        uint256 slippageMultiplier = 10000 - maxSlippageBps;

        for (uint256 i = 0; i < baseRanges.length; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick);

            (uint256 amt0, uint256 amt1) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, baseLiquidities[i]
            );

            inMin[i] =
                [FullMath.mulDiv(amt0, slippageMultiplier, 10000), FullMath.mulDiv(amt1, slippageMultiplier, 10000)];
        }
    }
}
