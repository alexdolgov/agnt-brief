// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IMultiPositionManager} from "../interfaces/IMultiPositionManager.sol";
import {ILiquidityStrategy} from "../strategies/ILiquidityStrategy.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {LiquidityAmounts} from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import {RebalanceLogic} from "../libraries/RebalanceLogic.sol";
import {SimpleLensInMin} from "../libraries/SimpleLens/SimpleLensInMin.sol";
import {SimpleLensRatioUtils} from "../libraries/SimpleLens/SimpleLensRatioUtils.sol";

/**
 * @title InitialDepositLens
 * @notice Read-only contract for previewing initial deposits to UNINITIALIZED pools
 * @dev For uninitialized pools, sqrtPriceX96 must be provided as a parameter since getSlot0() returns default values.
 *      For initialized pools, use SimpleLens.sol instead.
 */
contract InitialDepositLens {
    using StateLibrary for IPoolManager;
    using PoolIdLibrary for PoolKey;

    // Immutable storage
    IPoolManager public immutable poolManager;

    // Custom errors
    error NoStrategySpecified();
    error MaxSlippageExceeded();

    constructor(IPoolManager _poolManager) {
        poolManager = _poolManager;
    }

    // Use structs from SimpleLens to avoid duplication
    struct InitialDepositParams {
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint24 limitWidth;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        bool isToken0;
        uint256 amount;
        uint256 maxSlippageBps;
    }

    struct CustomInitialDepositParams {
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint24 limitWidth;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        uint256 deposit0;
        uint256 deposit1;
        uint256 maxSlippageBps;
    }

    /**
     * @notice Calculate deposit amounts for initial position and preview the rebalance
     * @dev FOR INITIALIZED POOLS - fetches sqrtPriceX96 from getSlot0()
     * @param poolKey The PoolKey for the Uniswap V4 pool
     * @param params Parameters for the initial deposit calculation
     * @return otherAmount The amount of the other token needed
     * @return inMin The minimum amounts for each position (for slippage protection)
     * @return preview Detailed preview of the rebalance operation
     */
    function getAmountsForInitialDepositAndPreviewRebalance(
        PoolKey memory poolKey,
        InitialDepositParams calldata params
    )
        external
        view
        returns (uint256 otherAmount, uint256[2][] memory inMin, SimpleLensInMin.RebalancePreview memory preview)
    {
        // Fetch sqrtPriceX96 from initialized pool
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());
        return getAmountsForInitialDepositAndPreviewRebalance(poolKey, sqrtPriceX96, params);
    }

    /**
     * @notice Calculate deposit amounts for initial position and preview the rebalance
     * @dev FOR UNINITIALIZED POOLS ONLY - sqrtPriceX96 is provided since pool hasn't been initialized yet
     * @param poolKey The PoolKey for the Uniswap V4 pool
     * @param sqrtPriceX96 The intended sqrtPriceX96 for pool initialization
     * @param params Parameters for the initial deposit calculation
     * @return otherAmount The amount of the other token needed
     * @return inMin The minimum amounts for each position (for slippage protection)
     * @return preview Detailed preview of the rebalance operation
     */
    function getAmountsForInitialDepositAndPreviewRebalance(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        InitialDepositParams calldata params
    )
        public
        view
        returns (uint256 otherAmount, uint256[2][] memory inMin, SimpleLensInMin.RebalancePreview memory preview)
    {
        // Derive currentTick from provided sqrtPriceX96
        int24 currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);

        // Resolve center tick (always floor-divide for alignment)
        int24 resolvedCenterTick;
        if (params.centerTick == type(int24).max) {
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) compressed--;
            resolvedCenterTick = compressed * poolKey.tickSpacing;
        } else {
            // Floor-divide user-provided centerTick
            int24 compressed = params.centerTick / poolKey.tickSpacing;
            if (params.centerTick < 0 && params.centerTick % poolKey.tickSpacing != 0) compressed--;
            resolvedCenterTick = compressed * poolKey.tickSpacing;
        }

        // Calculate otherAmount
        otherAmount = SimpleLensInMin.calculateOtherAmountInline(
            poolManager,
            poolKey,
            SimpleLensInMin.CalculateOtherAmountParams({
                strategyAddress: params.strategyAddress,
                resolvedCenterTick: resolvedCenterTick,
                ticksLeft: params.ticksLeft,
                ticksRight: params.ticksRight,
                limitWidth: params.limitWidth,
                weight0: params.weight0,
                weight1: params.weight1,
                useCarpet: params.useCarpet,
                sqrtPriceX96: sqrtPriceX96,
                isToken0: params.isToken0,
                amount: params.amount
            })
        );

        // Generate all ranges and liquidities with limit positions
        IMultiPositionManager.Range[] memory allRanges;
        uint128[] memory allLiquidities;
        (allRanges, allLiquidities, inMin) =
            _generateAllRangesAndInMin(poolKey, params, resolvedCenterTick, currentTick, sqrtPriceX96, otherAmount);

        // Build preview
        preview.strategy = params.strategyAddress;
        preview.centerTick = resolvedCenterTick;
        preview.ticksLeft = params.ticksLeft;
        preview.ticksRight = params.ticksRight;
        preview.ranges = allRanges;
        preview.liquidities = allLiquidities;

        _calculateExpectedTotalsWithPoolKey(poolKey, sqrtPriceX96, preview);
    }

    /**
     * @notice Preview initial deposit and rebalance with custom amounts (both token0 and token1)
     * @dev FOR INITIALIZED POOLS - fetches sqrtPriceX96 from getSlot0()
     * @param poolKey The pool key
     * @param params Custom initial deposit parameters with both deposit0 and deposit1
     * @return inMin Minimum input amounts for each base position
     * @return preview Detailed preview of the rebalance operation with actual distribution
     */
    function previewCustomInitialDepositAndRebalance(PoolKey memory poolKey, CustomInitialDepositParams calldata params)
        external
        view
        returns (uint256[2][] memory inMin, SimpleLensInMin.RebalancePreview memory preview)
    {
        // Fetch sqrtPriceX96 from initialized pool
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());
        return previewCustomInitialDepositAndRebalance(poolKey, sqrtPriceX96, params);
    }

    /**
     * @notice Preview initial deposit and rebalance with custom amounts (both token0 and token1)
     * @dev FOR UNINITIALIZED POOLS ONLY - Similar to getAmountsForInitialDepositAndPreviewRebalance but accepts
     *      explicit deposit0 and deposit1 amounts. Use this when you want to deposit a custom ratio that differs
     *      from the balanced ratio SimpleLens would recommend.
     * @param poolKey The pool key
     * @param sqrtPriceX96 The intended sqrtPriceX96 for pool initialization
     * @param params Custom initial deposit parameters with both deposit0 and deposit1
     * @return inMin Minimum input amounts for each base position
     * @return preview Detailed preview of the rebalance operation with actual distribution
     */
    function previewCustomInitialDepositAndRebalance(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        CustomInitialDepositParams calldata params
    ) public view returns (uint256[2][] memory inMin, SimpleLensInMin.RebalancePreview memory preview) {
        // Derive currentTick from provided sqrtPriceX96
        int24 currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);

        // Resolve center tick (always floor-divide for alignment)
        int24 resolvedCenterTick;
        if (params.centerTick == type(int24).max) {
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) compressed--;
            resolvedCenterTick = compressed * poolKey.tickSpacing;
        } else {
            // Floor-divide user-provided centerTick
            int24 compressed = params.centerTick / poolKey.tickSpacing;
            if (params.centerTick < 0 && params.centerTick % poolKey.tickSpacing != 0) compressed--;
            resolvedCenterTick = compressed * poolKey.tickSpacing;
        }

        // Generate all ranges and liquidities with limit positions using both deposit amounts
        IMultiPositionManager.Range[] memory allRanges;
        uint128[] memory allLiquidities;
        (allRanges, allLiquidities, inMin) =
            _generateAllRangesAndInMinCustom(poolKey, params, resolvedCenterTick, currentTick, sqrtPriceX96);

        // Build preview
        preview.strategy = params.strategyAddress;
        preview.centerTick = resolvedCenterTick;
        preview.ticksLeft = params.ticksLeft;
        preview.ticksRight = params.ticksRight;
        preview.ranges = allRanges;
        preview.liquidities = allLiquidities;

        _calculateExpectedTotalsWithPoolKey(poolKey, sqrtPriceX96, preview);
    }

    /**
     * @notice Calculate swap needed for initial deposit with any token ratio, then preview positions
     * @dev FOR INITIALIZED POOLS - fetches sqrtPriceX96 from getSlot0()
     * @param poolKey The PoolKey for the Uniswap V4 pool
     * @param params Parameters including both token amounts (any ratio)
     * @return finalAmount0 Amount of token0 after optimal swap
     * @return finalAmount1 Amount of token1 after optimal swap
     * @return swapParams Swap details (direction, amount, target weights)
     * @return inMin Minimum amounts for each position (slippage protection)
     * @return preview Detailed preview of the rebalance operation
     */
    function getAmountsForInitialDepositWithSwapAndPreview(
        PoolKey memory poolKey,
        SimpleLensInMin.InitialDepositWithSwapParams calldata params
    )
        external
        view
        returns (
            uint256 finalAmount0,
            uint256 finalAmount1,
            SimpleLensRatioUtils.SwapParams memory swapParams,
            uint256[2][] memory inMin,
            SimpleLensInMin.RebalancePreview memory preview
        )
    {
        // Fetch sqrtPriceX96 from initialized pool
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());
        return getAmountsForInitialDepositWithSwapAndPreview(poolKey, sqrtPriceX96, params);
    }

    /**
     * @notice Calculate swap needed for initial deposit with any token ratio, then preview positions
     * @dev FOR UNINITIALIZED POOLS ONLY - Supports any ratio: 100/0, 90/10, 50/50, etc. Calculates optimal swap to achieve strategy weights
     * @param poolKey The PoolKey for the Uniswap V4 pool
     * @param sqrtPriceX96 The intended sqrtPriceX96 for pool initialization
     * @param params Parameters including both token amounts (any ratio)
     * @return finalAmount0 Amount of token0 after optimal swap
     * @return finalAmount1 Amount of token1 after optimal swap
     * @return swapParams Swap details (direction, amount, target weights)
     * @return inMin Minimum amounts for each position (slippage protection)
     * @return preview Detailed preview of the rebalance operation
     */
    function getAmountsForInitialDepositWithSwapAndPreview(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        SimpleLensInMin.InitialDepositWithSwapParams calldata params
    )
        public
        view
        returns (
            uint256 finalAmount0,
            uint256 finalAmount1,
            SimpleLensRatioUtils.SwapParams memory swapParams,
            uint256[2][] memory inMin,
            SimpleLensInMin.RebalancePreview memory preview
        )
    {
        // Delegate to library but use provided sqrtPriceX96
        return _calculateSwapAndPreviewWithSqrtPrice(poolKey, sqrtPriceX96, params);
    }

    /**
     * @dev Generate all ranges (base + limit) and calculate inMin for custom deposits
     */
    function _generateAllRangesAndInMinCustom(
        PoolKey memory poolKey,
        CustomInitialDepositParams calldata params,
        int24 resolvedCenterTick,
        int24 currentTick,
        uint160 sqrtPriceX96
    )
        private
        view
        returns (
            IMultiPositionManager.Range[] memory allRanges,
            uint128[] memory allLiquidities,
            uint256[2][] memory inMin
        )
    {
        IMultiPositionManager.Range[] memory baseRanges;
        uint128[] memory baseLiquidities;

        // Use both deposit amounts directly
        uint256 amount0 = params.deposit0;
        uint256 amount1 = params.deposit1;

        // Generate base ranges using explicit sqrtPrice (not getSlot0 which would fail for uninitialized pools)
        {
            RebalanceLogic.StrategyContext memory ctx = RebalanceLogic.StrategyContext({
                resolvedStrategy: params.strategyAddress,
                center: resolvedCenterTick,
                tLeft: params.ticksLeft,
                tRight: params.ticksRight,
                strategy: ILiquidityStrategy(params.strategyAddress),
                weight0: params.weight0,
                weight1: params.weight1,
                useCarpet: params.useCarpet,
                limitWidth: params.limitWidth,
                weightsAreProportional: (params.weight0 == 0 && params.weight1 == 0)
            });

            // Use our custom version that accepts sqrtPriceX96 instead of calling getSlot0()
            (baseRanges, baseLiquidities) = _generateRangesAndLiquiditiesWithSqrtPrice(
                poolKey,
                ctx,
                amount0,
                amount1,
                sqrtPriceX96 // Explicit sqrtPrice for uninitialized pools
            );
        }

        // Add limit positions and calculate inMin
        {
            SimpleLensInMin.LimitPositionsParams memory limitParams = SimpleLensInMin.LimitPositionsParams({
                limitWidth: params.limitWidth,
                currentTick: currentTick,
                tickSpacing: poolKey.tickSpacing,
                maxSlippageBps: params.maxSlippageBps,
                sqrtPriceX96: sqrtPriceX96,
                totalAmount0: amount0,
                totalAmount1: amount1
            });
            (allRanges, allLiquidities, inMin) =
                SimpleLensInMin.addLimitPositionsAndCalculateInMin(baseRanges, baseLiquidities, limitParams);
        }
    }

    /**
     * @dev Generate all ranges (base + limit) and calculate inMin
     */
    function _generateAllRangesAndInMin(
        PoolKey memory poolKey,
        InitialDepositParams calldata params,
        int24 resolvedCenterTick,
        int24 currentTick,
        uint160 sqrtPriceX96,
        uint256 otherAmount
    )
        private
        view
        returns (
            IMultiPositionManager.Range[] memory allRanges,
            uint128[] memory allLiquidities,
            uint256[2][] memory inMin
        )
    {
        IMultiPositionManager.Range[] memory baseRanges;
        uint128[] memory baseLiquidities;
        uint256 amount0 = params.isToken0 ? params.amount : otherAmount;
        uint256 amount1 = params.isToken0 ? otherAmount : params.amount;

        // Generate base ranges using explicit sqrtPrice (not getSlot0 which would fail for uninitialized pools)
        {
            RebalanceLogic.StrategyContext memory ctx = RebalanceLogic.StrategyContext({
                resolvedStrategy: params.strategyAddress,
                center: resolvedCenterTick,
                tLeft: params.ticksLeft,
                tRight: params.ticksRight,
                strategy: ILiquidityStrategy(params.strategyAddress),
                weight0: params.weight0,
                weight1: params.weight1,
                useCarpet: params.useCarpet,
                limitWidth: params.limitWidth,
                weightsAreProportional: (params.weight0 == 0 && params.weight1 == 0)
            });

            // Use our custom version that accepts sqrtPriceX96 instead of calling getSlot0()
            (baseRanges, baseLiquidities) = _generateRangesAndLiquiditiesWithSqrtPrice(
                poolKey,
                ctx,
                amount0,
                amount1,
                sqrtPriceX96 // Explicit sqrtPrice for uninitialized pools
            );
        }

        // Add limit positions and calculate inMin
        {
            SimpleLensInMin.LimitPositionsParams memory limitParams = SimpleLensInMin.LimitPositionsParams({
                limitWidth: params.limitWidth,
                currentTick: currentTick,
                tickSpacing: poolKey.tickSpacing,
                maxSlippageBps: params.maxSlippageBps,
                sqrtPriceX96: sqrtPriceX96,
                totalAmount0: amount0,
                totalAmount1: amount1
            });
            (allRanges, allLiquidities, inMin) =
                SimpleLensInMin.addLimitPositionsAndCalculateInMin(baseRanges, baseLiquidities, limitParams);
        }
    }

    /**
     * @dev Calculate expected totals for preview (PoolKey-based version)
     */
    function _calculateExpectedTotalsWithPoolKey(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        SimpleLensInMin.RebalancePreview memory preview
    ) private pure {
        // Create stats for ALL positions (base + limit)
        preview.expectedPositions = new SimpleLensRatioUtils.PositionStats[](preview.ranges.length);
        preview.expectedTotal0 = 0;
        preview.expectedTotal1 = 0;

        // Calculate stats for all positions including limit positions
        for (uint256 i = 0; i < preview.ranges.length; i++) {
            IMultiPositionManager.Position memory pos = IMultiPositionManager.Position({
                poolKey: poolKey,
                lowerTick: preview.ranges[i].lowerTick,
                upperTick: preview.ranges[i].upperTick
            });

            preview.expectedPositions[i] = _calculatePositionStats(pos, preview.liquidities[i], sqrtPriceX96);

            preview.expectedTotal0 += preview.expectedPositions[i].token0Quantity;
            preview.expectedTotal1 += preview.expectedPositions[i].token1Quantity;
        }
    }

    /**
     * @dev Calculate position stats
     */
    function _calculatePositionStats(
        IMultiPositionManager.Position memory position,
        uint128 liquidity,
        uint160 sqrtPriceX96
    ) private pure returns (SimpleLensRatioUtils.PositionStats memory stat) {
        stat.tickLower = position.lowerTick;
        stat.tickUpper = position.upperTick;
        stat.sqrtPriceLower = TickMath.getSqrtPriceAtTick(position.lowerTick);
        stat.sqrtPriceUpper = TickMath.getSqrtPriceAtTick(position.upperTick);
        stat.liquidity = liquidity;

        (stat.token0Quantity, stat.token1Quantity) =
            LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, stat.sqrtPriceLower, stat.sqrtPriceUpper, liquidity);

        // Calculate value in token1
        stat.valueInToken1 = stat.token1Quantity
            + FullMath.mulDiv(stat.token0Quantity, uint256(sqrtPriceX96) * uint256(sqrtPriceX96), 1 << 192);
    }

    /**
     * @dev Modified version of SimpleLensInMin.calculateSwapAndPreview that uses provided sqrtPriceX96
     */
    function _calculateSwapAndPreviewWithSqrtPrice(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        SimpleLensInMin.InitialDepositWithSwapParams calldata params
    )
        private
        view
        returns (
            uint256 finalAmount0,
            uint256 finalAmount1,
            SimpleLensRatioUtils.SwapParams memory swapParams,
            uint256[2][] memory inMin,
            SimpleLensInMin.RebalancePreview memory preview
        )
    {
        // 1. Build context with provided sqrtPriceX96
        SimpleLensInMin.PreviewContext memory ctx;
        ctx.sqrtPriceX96 = sqrtPriceX96;
        ctx.currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);

        // Resolve center tick (always floor-divide for alignment)
        if (params.centerTick == type(int24).max) {
            int24 tickSpacing = poolKey.tickSpacing;
            int24 compressed = ctx.currentTick / tickSpacing;
            if (ctx.currentTick < 0 && ctx.currentTick % tickSpacing != 0) {
                compressed--;
            }
            ctx.resolvedCenter = compressed * tickSpacing;
        } else {
            // Floor-divide user-provided centerTick
            int24 tickSpacing = poolKey.tickSpacing;
            int24 compressed = params.centerTick / tickSpacing;
            if (params.centerTick < 0 && params.centerTick % tickSpacing != 0) {
                compressed--;
            }
            ctx.resolvedCenter = compressed * tickSpacing;
        }

        // 2. Calculate swap
        (swapParams, ctx.finalAmount0, ctx.finalAmount1) =
            _calculateSwapDetails(params, ctx.sqrtPriceX96, ctx.resolvedCenter, poolKey.tickSpacing, ctx.currentTick);

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

        // Generate ranges and liquidities using our custom version with explicit sqrtPrice
        (IMultiPositionManager.Range[] memory ranges, uint128[] memory liquidities) =
        _generateRangesAndLiquiditiesWithSqrtPrice(
            poolKey,
            rbCtx,
            ctx.finalAmount0,
            ctx.finalAmount1,
            ctx.sqrtPriceX96 // Use explicit sqrtPrice for uninitialized pools
        );

        // 4. Build preview and inMin from the generated ranges/liquidities
        (inMin, preview) = _buildPreviewFromRangesAndLiquidities(poolKey, ranges, liquidities, params, ctx);

        // Return final amounts and swap params
        finalAmount0 = ctx.finalAmount0;
        finalAmount1 = ctx.finalAmount1;

        return (finalAmount0, finalAmount1, swapParams, inMin, preview);
    }

    function _buildPreviewFromRangesAndLiquidities(
        PoolKey memory poolKey,
        IMultiPositionManager.Range[] memory ranges,
        uint128[] memory liquidities,
        SimpleLensInMin.InitialDepositWithSwapParams calldata params,
        SimpleLensInMin.PreviewContext memory ctx
    ) private pure returns (uint256[2][] memory inMin, SimpleLensInMin.RebalancePreview memory preview) {
        // Calculate inMin from liquidities
        inMin = new uint256[2][](ranges.length);
        uint256 slippageMultiplier = 10000 - params.maxSlippageBps;

        for (uint256 i = 0; i < ranges.length; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

            (uint256 amount0, uint256 amount1) = LiquidityAmounts.getAmountsForLiquidity(
                ctx.sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, liquidities[i]
            );

            inMin[i] = [
                FullMath.mulDiv(amount0, slippageMultiplier, 10000),
                FullMath.mulDiv(amount1, slippageMultiplier, 10000)
            ];
        }

        // Build preview
        preview.ranges = ranges;
        preview.strategy = params.strategyAddress;
        preview.centerTick = ctx.resolvedCenter;
        preview.ticksLeft = params.ticksLeft;
        preview.ticksRight = params.ticksRight;
        preview.liquidities = liquidities;
        preview.postSwapAmount0 = ctx.finalAmount0;
        preview.postSwapAmount1 = ctx.finalAmount1;

        // Calculate expected positions
        preview.expectedPositions = new SimpleLensRatioUtils.PositionStats[](ranges.length);
        _populateExpectedPositions(ranges, liquidities, ctx.sqrtPriceX96, preview);

        return (inMin, preview);
    }

    function _calculateSwapDetails(
        SimpleLensInMin.InitialDepositWithSwapParams calldata params,
        uint160 sqrtPriceX96,
        int24 resolvedCenter,
        int24 tickSpacing,
        int24 currentTick
    )
        private
        view
        returns (SimpleLensRatioUtils.SwapParams memory swapParams, uint256 finalAmount0, uint256 finalAmount1)
    {
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

        // Calculate optimal swap using RebalanceLogic
        (bool swapToken0, uint256 swapAmount) = RebalanceLogic.calculateOptimalSwap(
            params.amount0, params.amount1, sqrtPriceX96, swapParams.weight0, swapParams.weight1
        );

        // Build SwapParams struct
        swapParams.swapToken0 = swapToken0;
        swapParams.swapAmount = swapAmount;

        // Calculate final amounts after theoretical swap
        finalAmount0 = params.amount0;
        finalAmount1 = params.amount1;

        if (swapAmount > 0) {
            if (swapToken0) {
                // Swapping token0 for token1
                uint256 amountOut = FullMath.mulDiv(
                    FullMath.mulDiv(swapAmount, uint256(sqrtPriceX96), 1 << 96), uint256(sqrtPriceX96), 1 << 96
                );
                finalAmount0 -= swapAmount;
                finalAmount1 += amountOut;
            } else {
                // Swapping token1 for token0
                uint256 amountOut = FullMath.mulDiv(
                    FullMath.mulDiv(swapAmount, 1 << 96, uint256(sqrtPriceX96)), 1 << 96, uint256(sqrtPriceX96)
                );
                finalAmount1 -= swapAmount;
                finalAmount0 += amountOut;
            }
        }

        return (swapParams, finalAmount0, finalAmount1);
    }

    function _populateExpectedPositions(
        IMultiPositionManager.Range[] memory ranges,
        uint128[] memory liquidities,
        uint160 sqrtPriceX96,
        SimpleLensInMin.RebalancePreview memory preview
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

            preview.expectedPositions[i] = SimpleLensRatioUtils.PositionStats({
                tickLower: ranges[i].lowerTick,
                tickUpper: ranges[i].upperTick,
                sqrtPriceLower: sqrtPriceLower,
                sqrtPriceUpper: sqrtPriceUpper,
                liquidity: liquidities[i],
                token0Quantity: amount0,
                token1Quantity: amount1,
                valueInToken1: valueInToken1
            });

            preview.expectedTotal0 += amount0;
            preview.expectedTotal1 += amount1;
        }
    }

    /**
     * @dev Generate ranges and liquidities using explicit sqrtPrice (for uninitialized pools)
     * @notice This mirrors RebalanceLogic.generateRangesAndLiquiditiesWithPoolKey but accepts sqrtPriceX96
     *         instead of calling getSlot0() which would fail for uninitialized pools
     */
    function _generateRangesAndLiquiditiesWithSqrtPrice(
        PoolKey memory poolKey,
        RebalanceLogic.StrategyContext memory ctx,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96
    ) private view returns (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities) {
        int24[] memory lowerTicks;
        int24[] memory upperTicks;

        // Block 1: Generate tick ranges
        {
            (lowerTicks, upperTicks) =
                ctx.strategy.generateRanges(ctx.center, ctx.tLeft, ctx.tRight, poolKey.tickSpacing, ctx.useCarpet);
        }

        // Block 2: Convert to Range array
        baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        {
            for (uint256 i = 0; i < lowerTicks.length;) {
                baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
                unchecked {
                    ++i;
                }
            }
        }

        // Block 3: Calculate weights and liquidities
        {
            int24 currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);
            uint256[] memory weights = _calculateWeightsWithTick(poolKey, ctx, lowerTicks, upperTicks, currentTick);

            liquidities = new uint128[](baseRanges.length);
            bool weightsAreProportional = ctx.weightsAreProportional;

            RebalanceLogic._calculateLiquiditiesFromWeights(
                liquidities, weights, baseRanges, amount0, amount1, sqrtPriceX96, weightsAreProportional
            );
        }
    }

    /**
     * @dev Calculate weights using explicit currentTick (for uninitialized pools)
     * @notice This mirrors RebalanceLogic.calculateWeightsWithPoolKey but accepts currentTick
     *         instead of calling getSlot0()
     */
    function _calculateWeightsWithTick(
        PoolKey memory poolKey,
        RebalanceLogic.StrategyContext memory ctx,
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        int24 currentTick
    ) private view returns (uint256[] memory) {
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        int24 center;
        uint24 tLeft;
        uint24 tRight;
        int24 tickSpacing;
        bool weightsAreProportional;

        // Block 1: Check weights support and adjust
        {
            bool supportsWeightedDist = false;
            try ctx.strategy.supportsWeights() returns (bool supported) {
                supportsWeightedDist = supported;
            } catch {}

            weight0 = ctx.weight0;
            weight1 = ctx.weight1;
            useCarpet = ctx.useCarpet;

            // Use default weights if needed
            if (!useCarpet && !supportsWeightedDist && (weight0 != 0.5e18 || weight1 != 0.5e18)) {
                weight0 = 0.5e18;
                weight1 = 0.5e18;
            }

            center = ctx.center;
            tLeft = ctx.tLeft;
            tRight = ctx.tRight;
            tickSpacing = poolKey.tickSpacing;
            weightsAreProportional = ctx.weightsAreProportional;
        }

        // Block 2: Calculate densities
        return ctx.strategy.calculateDensities(
            lowerTicks,
            upperTicks,
            currentTick,
            center,
            tLeft,
            tRight,
            weight0,
            weight1,
            useCarpet,
            tickSpacing,
            weightsAreProportional
        );
    }

    /**
     * @notice Struct to store position statistics
     */
    struct PositionStats {
        int24 tickLower;
        int24 tickUpper;
        uint160 sqrtPriceLower;
        uint160 sqrtPriceUpper;
        uint128 liquidity;
        uint256 token0Quantity;
        uint256 token1Quantity;
        uint256 valueInToken1;
    }

    /**
     * @notice Get detailed statistics for all positions in a MultiPositionManager
     * @param manager The MultiPositionManager contract to query
     * @return stats Array of statistics for each position
     */
    function getPositionStats(IMultiPositionManager manager) public view returns (PositionStats[] memory stats) {
        PoolKey memory poolKey = manager.poolKey();
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());

        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        stats = new PositionStats[](ranges.length);

        for (uint256 i = 0; i < ranges.length; i++) {
            if (ranges[i].lowerTick == 0 && ranges[i].upperTick == 0) {
                continue;
            }

            uint160 sqrtPriceLowerX96 = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
            uint160 sqrtPriceUpperX96 = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

            (uint256 token0Quantity, uint256 token1Quantity) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96, sqrtPriceLowerX96, sqrtPriceUpperX96, uint128(positionData[i].liquidity)
            );

            uint256 token0ValueInToken1 =
                FullMath.mulDiv(token0Quantity, uint256(sqrtPriceX96) * uint256(sqrtPriceX96), 1 << 192);
            uint256 valueInToken1 = token0ValueInToken1 + token1Quantity;

            stats[i] = PositionStats({
                tickLower: ranges[i].lowerTick,
                tickUpper: ranges[i].upperTick,
                sqrtPriceLower: sqrtPriceLowerX96,
                sqrtPriceUpper: sqrtPriceUpperX96,
                liquidity: uint128(positionData[i].liquidity),
                token0Quantity: token0Quantity,
                token1Quantity: token1Quantity,
                valueInToken1: valueInToken1
            });
        }
    }
}
