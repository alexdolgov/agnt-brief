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
import { MultiPositionManager } from "../MultiPositionManager.sol";
import { PoolManagerUtils } from "../PoolManagerUtils.sol";

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

    function _calculateInMinInternal(
        InMinRebalanceParams memory params
    ) private view returns (uint256[2][] memory) {
        DensityCalcParams memory densityParams;
        InMinCalcData memory calcData;

        // Block 1: Get amounts
        {
            (uint256 amount0, uint256 amount1) = _getTotalAmountsForRebalance(params.manager);

            // For swap case (not implemented in this simplified version)
            if (params.swap) {
                // Swap logic would go here
                // For now, just use the amounts as-is
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

            densityParams = DensityCalcParams({
                strategyAddress: params.strategyAddress,
                centerTick: resolvedCenterTick,
                ticksLeft: params.ticksLeft,
                ticksRight: params.ticksRight,
                weight0: params.weight0,
                weight1: params.weight1,
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
                calcData.maxSlippage
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
        uint256 maxSlippage
    ) external view returns (uint256[2][] memory inMin) {
        return _calculateInMinArrayFromAmounts(
            lowerTicks,
            upperTicks,
            weights,
            amount0,
            amount1,
            sqrtPriceX96,
            maxSlippage
        );
    }

    function _calculateInMinArrayFromAmounts(
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        uint256 maxSlippage
    ) private pure returns (uint256[2][] memory inMin) {
        inMin = new uint256[2][](lowerTicks.length);
        if (lowerTicks.length == 0) return inMin;

        SqrtPriceCache memory cache = _cacheSqrtPrices(lowerTicks, upperTicks);

        InMinCalcState memory state = _calculateWeightedAmounts(
            cache,
            weights,
            sqrtPriceX96,
            amount0,
            amount1
        );

        state.slippageMultiplier = 10000 - maxSlippage;

        _fillInMinArray(
            inMin,
            cache,
            weights,
            sqrtPriceX96,
            state
        );

        return inMin;
    }

    function _cacheSqrtPrices(
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) private pure returns (SqrtPriceCache memory cache) {
        uint256 length = lowerTicks.length;
        cache.sqrtPriceLowers = new uint160[](length);
        cache.sqrtPriceUppers = new uint160[](length);

        for (uint256 i = 0; i < length; i++) {
            cache.sqrtPriceLowers[i] = TickMath.getSqrtPriceAtTick(lowerTicks[i]);
            cache.sqrtPriceUppers[i] = TickMath.getSqrtPriceAtTick(upperTicks[i]);
        }
    }

    function _calculateWeightedAmounts(
        SqrtPriceCache memory cache,
        uint256[] memory weights,
        uint160 sqrtPriceX96,
        uint256 amount0,
        uint256 amount1
    ) private pure returns (InMinCalcState memory state) {
        uint256 length = weights.length;

        for (uint256 i = 0; i < length; i++) {
            (uint256 amount0For1e18, uint256 amount1For1e18) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                cache.sqrtPriceLowers[i],
                cache.sqrtPriceUppers[i],
                1e18
            );

            state.totalWeightedToken0 += FullMath.mulDiv(amount0For1e18, weights[i], 1e18);
            state.totalWeightedToken1 += FullMath.mulDiv(amount1For1e18, weights[i], 1e18);
        }

        state.maxLiquidityFromToken0 = state.totalWeightedToken0 > 0
            ? uint128(FullMath.mulDiv(amount0, 1e18, state.totalWeightedToken0))
            : type(uint128).max;
        state.maxLiquidityFromToken1 = state.totalWeightedToken1 > 0
            ? uint128(FullMath.mulDiv(amount1, 1e18, state.totalWeightedToken1))
            : type(uint128).max;

        state.totalLiquidity = state.maxLiquidityFromToken0 < state.maxLiquidityFromToken1
            ? state.maxLiquidityFromToken0
            : state.maxLiquidityFromToken1;
    }

    function _fillInMinArray(
        uint256[2][] memory inMin,
        SqrtPriceCache memory cache,
        uint256[] memory weights,
        uint160 sqrtPriceX96,
        InMinCalcState memory state
    ) private pure {
        uint256 length = weights.length;

        for (uint256 i = 0; i < length; i++) {
            uint128 positionLiquidity = uint128(FullMath.mulDiv(state.totalLiquidity, weights[i], 1e18));

            if (positionLiquidity > 0) {
                (uint256 amount0, uint256 amount1) = LiquidityAmounts.getAmountsForLiquidity(
                    sqrtPriceX96,
                    cache.sqrtPriceLowers[i],
                    cache.sqrtPriceUppers[i],
                    positionLiquidity
                );

                inMin[i] = [
                    FullMath.mulDiv(amount0, state.slippageMultiplier, 10000),
                    FullMath.mulDiv(amount1, state.slippageMultiplier, 10000)
                ];
            } else {
                inMin[i] = [uint256(0), uint256(0)];
            }
        }
    }

    function _getTotalAmountsForRebalance(
        MultiPositionManager manager
    ) private view returns (uint256 total0, uint256 total1) {
        (total0, total1, , ) = manager.getTotalAmounts();
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
     * @return liquidities Array of calculated liquidity values
     */
    function calculateLiquidities(
        IMultiPositionManager.Range[] memory baseRanges,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96
    ) external pure returns (uint128[] memory liquidities) {
        uint256 rangesLength = baseRanges.length;
        liquidities = new uint128[](rangesLength);

        // First pass: calculate how much token0 and token1 each range needs per unit of liquidity
        uint256 totalWeightedToken0 = 0;
        uint256 totalWeightedToken1 = 0;

        for (uint i = 0; i < rangesLength; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick);

            // Calculate how much token0 and token1 is needed for 1e18 liquidity in this range
            (uint256 amount0For1e18, uint256 amount1For1e18) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                sqrtPriceLower,
                sqrtPriceUpper,
                1e18
            );

            // Weight these requirements
            totalWeightedToken0 += (amount0For1e18 * weights[i]) / 1e18;
            totalWeightedToken1 += (amount1For1e18 * weights[i]) / 1e18;
        }

        // Calculate the maximum liquidity we can provide given our token amounts
        uint128 maxLiquidityFromToken0 = totalWeightedToken0 > 0
            ? uint128((amount0 * 1e18) / totalWeightedToken0)
            : type(uint128).max;
        uint128 maxLiquidityFromToken1 = totalWeightedToken1 > 0
            ? uint128((amount1 * 1e18) / totalWeightedToken1)
            : type(uint128).max;

        // Use the limiting factor (smaller of the two)
        uint128 totalLiquidity = maxLiquidityFromToken0 < maxLiquidityFromToken1
            ? maxLiquidityFromToken0
            : maxLiquidityFromToken1;

        // Second pass: distribute liquidity according to weights
        for (uint i = 0; i < rangesLength; i++) {
            liquidities[i] = uint128((uint256(totalLiquidity) * weights[i]) / 1e18);
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
}