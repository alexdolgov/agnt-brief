// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {MultiPositionManager} from "../MultiPositionManager.sol";
import {MultiPositionFactory} from "../MultiPositionFactory.sol";
import {IMultiPositionManager} from "../interfaces/IMultiPositionManager.sol";
import {ILiquidityStrategy} from "../strategies/ILiquidityStrategy.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {LiquidityAmounts} from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import {LensRatioUtils} from "../libraries/SimpleLens/LensRatioUtils.sol";
import {LensInMin} from "../libraries/SimpleLens/LensInMin.sol";
import {RebalanceLogic} from "../libraries/RebalanceLogic.sol";
import {PositionLogic} from "../libraries/PositionLogic.sol";

/**
 * @title InitialDepositLens
 * @notice Read-only contract for previewing initial deposits to pools for MultiPositionManager
 * @dev Adapted from InitialDepositLens - supports both initialized and uninitialized pools
 *
 * Key constraints (enforced from MultiPositionManager):
 * - Only proportional (0,0) or 50/50 (0.5e18, 0.5e18) weights allowed
 * - useCarpet must be true
 */
contract InitialDepositLens {
    using StateLibrary for IPoolManager;
    using PoolIdLibrary for PoolKey;

    // Immutable storage
    IPoolManager public immutable poolManager;

    // Custom errors
    error NoStrategySpecified();
    error InvalidWeights();
    error CarpetRequired();
    error InvalidAmount();

    constructor(IPoolManager _poolManager) {
        poolManager = _poolManager;
    }

    // ============================================
    // Structs
    // ============================================

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

    struct RebalancePreview {
        address strategy;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        IMultiPositionManager.Range[] ranges;
        uint128[] liquidities;
        LensRatioUtils.PositionStats[] expectedPositions;
        uint256 expectedTotal0;
        uint256 expectedTotal1;
    }

    struct RangeGenParams {
        PoolKey poolKey;
        uint160 sqrtPriceX96;
        int24 resolvedCenterTick;
        int24 currentTick;
        uint256 amount0;
        uint256 amount1;
    }

    // ============================================
    // Initial Deposit Preview (Initialized Pool)
    // ============================================

    /**
     * @notice Calculate deposit amounts for initial position and preview the rebalance
     * @dev FOR INITIALIZED POOLS - fetches sqrtPriceX96 from getSlot0()
     * @param poolKey The PoolKey for the Uniswap V4 pool
     * @param params Parameters for the initial deposit calculation
     * @return otherAmount The amount of the other token needed
     * @return inMin The minimum amounts for each position (for slippage protection)
     * @return preview Detailed preview of the rebalance operation
     */
    function getAmountsForInitialDeposit(PoolKey memory poolKey, InitialDepositParams calldata params)
        external
        view
        returns (uint256 otherAmount, uint256[2][] memory inMin, RebalancePreview memory preview)
    {
        _validateParams(params.weight0, params.weight1, params.useCarpet);

        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());
        return _getAmountsForInitialDeposit(poolKey, sqrtPriceX96, params);
    }

    /**
     * @notice Calculate deposit amounts for initial position and preview the rebalance
     * @dev FOR UNINITIALIZED POOLS - sqrtPriceX96 is provided since pool hasn't been initialized yet
     * @param poolKey The PoolKey for the Uniswap V4 pool
     * @param sqrtPriceX96 The intended sqrtPriceX96 for pool initialization
     * @param params Parameters for the initial deposit calculation
     * @return otherAmount The amount of the other token needed
     * @return inMin The minimum amounts for each position (for slippage protection)
     * @return preview Detailed preview of the rebalance operation
     */
    function getAmountsForInitialDepositUninitialized(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        InitialDepositParams calldata params
    ) external view returns (uint256 otherAmount, uint256[2][] memory inMin, RebalancePreview memory preview) {
        _validateParams(params.weight0, params.weight1, params.useCarpet);
        return _getAmountsForInitialDeposit(poolKey, sqrtPriceX96, params);
    }

    // ============================================
    // Custom Initial Deposit Preview
    // ============================================

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
        returns (uint256[2][] memory inMin, RebalancePreview memory preview)
    {
        _validateParams(params.weight0, params.weight1, params.useCarpet);

        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());
        return _previewCustomInitialDeposit(poolKey, sqrtPriceX96, params);
    }

    /**
     * @notice Preview initial deposit and rebalance with custom amounts (both token0 and token1)
     * @dev FOR UNINITIALIZED POOLS - Similar to getAmountsForInitialDeposit but accepts
     *      explicit deposit0 and deposit1 amounts
     * @param poolKey The pool key
     * @param sqrtPriceX96 The intended sqrtPriceX96 for pool initialization
     * @param params Custom initial deposit parameters with both deposit0 and deposit1
     * @return inMin Minimum input amounts for each base position
     * @return preview Detailed preview of the rebalance operation with actual distribution
     */
    function previewCustomInitialDepositAndRebalanceUninitialized(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        CustomInitialDepositParams calldata params
    ) external view returns (uint256[2][] memory inMin, RebalancePreview memory preview) {
        _validateParams(params.weight0, params.weight1, params.useCarpet);
        return _previewCustomInitialDeposit(poolKey, sqrtPriceX96, params);
    }

    // ============================================
    // Position Stats
    // ============================================

    /**
     * @notice Get detailed statistics for all positions in a MultiPositionManager
     * @param manager The MultiPositionManager contract to query
     * @return stats Array of statistics for each position
     */
    function getPositionStats(IMultiPositionManager manager)
        external
        view
        returns (LensRatioUtils.PositionStats[] memory stats)
    {
        PoolKey memory poolKey = manager.poolKey();
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());

        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        stats = new LensRatioUtils.PositionStats[](ranges.length);
        uint256 baseLen = manager.basePositionsLength();

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

            stats[i] = LensRatioUtils.PositionStats({
                tickLower: ranges[i].lowerTick,
                tickUpper: ranges[i].upperTick,
                sqrtPriceLower: sqrtPriceLowerX96,
                sqrtPriceUpper: sqrtPriceUpperX96,
                liquidity: uint128(positionData[i].liquidity),
                token0Quantity: token0Quantity,
                token1Quantity: token1Quantity,
                valueInToken1: valueInToken1,
                isLimit: i >= baseLen
            });
        }
    }

    // ============================================
    // Internal Functions
    // ============================================

    function _validateParams(uint256 weight0, uint256 weight1, bool useCarpet) private pure {
        bool isProportional = (weight0 == 0 && weight1 == 0);
        bool isFiftyFifty = (weight0 == 0.5e18 && weight1 == 0.5e18);

        if (!isProportional && !isFiftyFifty) {
            revert InvalidWeights();
        }

        if (!useCarpet) {
            revert CarpetRequired();
        }
    }

    function _getAmountsForInitialDeposit(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        InitialDepositParams calldata params
    ) private view returns (uint256 otherAmount, uint256[2][] memory inMin, RebalancePreview memory preview) {
        if (params.strategyAddress == address(0)) revert NoStrategySpecified();
        if (params.amount == 0) revert InvalidAmount();

        RangeGenParams memory genParams;
        genParams.poolKey = poolKey;
        genParams.sqrtPriceX96 = sqrtPriceX96;
        genParams.currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);
        genParams.resolvedCenterTick = _resolveCenterTick(params.centerTick, genParams.currentTick, poolKey.tickSpacing);

        // Calculate other amount needed
        otherAmount = _calculateOtherAmount(poolKey, sqrtPriceX96, genParams.resolvedCenterTick, params);

        // Calculate final amounts
        genParams.amount0 = params.isToken0 ? params.amount : otherAmount;
        genParams.amount1 = params.isToken0 ? otherAmount : params.amount;

        // Generate ranges and liquidities
        (IMultiPositionManager.Range[] memory allRanges, uint128[] memory allLiquidities) =
            _generateRangesAndLiquidities(genParams, params);

        // Calculate inMin
        inMin = _calculateInMin(allRanges, allLiquidities, sqrtPriceX96, params.maxSlippageBps);

        // Build preview
        preview.strategy = params.strategyAddress;
        preview.centerTick = genParams.resolvedCenterTick;
        preview.ticksLeft = params.ticksLeft;
        preview.ticksRight = params.ticksRight;
        preview.ranges = allRanges;
        preview.liquidities = allLiquidities;

        _calculateExpectedTotals(sqrtPriceX96, preview, params.limitWidth);
    }

    function _previewCustomInitialDeposit(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        CustomInitialDepositParams calldata params
    ) private view returns (uint256[2][] memory inMin, RebalancePreview memory preview) {
        if (params.strategyAddress == address(0)) revert NoStrategySpecified();

        RangeGenParams memory genParams;
        genParams.poolKey = poolKey;
        genParams.sqrtPriceX96 = sqrtPriceX96;
        genParams.currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);
        genParams.resolvedCenterTick = _resolveCenterTick(params.centerTick, genParams.currentTick, poolKey.tickSpacing);
        genParams.amount0 = params.deposit0;
        genParams.amount1 = params.deposit1;

        // Convert params
        InitialDepositParams memory depositParams = InitialDepositParams({
            strategyAddress: params.strategyAddress,
            centerTick: params.centerTick,
            ticksLeft: params.ticksLeft,
            ticksRight: params.ticksRight,
            limitWidth: params.limitWidth,
            weight0: params.weight0,
            weight1: params.weight1,
            useCarpet: params.useCarpet,
            isToken0: true,
            amount: params.deposit0,
            maxSlippageBps: params.maxSlippageBps
        });

        // Generate ranges and liquidities
        (IMultiPositionManager.Range[] memory allRanges, uint128[] memory allLiquidities) =
            _generateRangesAndLiquidities(genParams, depositParams);

        // Calculate inMin
        inMin = _calculateInMin(allRanges, allLiquidities, sqrtPriceX96, params.maxSlippageBps);

        // Build preview
        preview.strategy = params.strategyAddress;
        preview.centerTick = genParams.resolvedCenterTick;
        preview.ticksLeft = params.ticksLeft;
        preview.ticksRight = params.ticksRight;
        preview.ranges = allRanges;
        preview.liquidities = allLiquidities;

        _calculateExpectedTotals(sqrtPriceX96, preview, params.limitWidth);
    }

    function _resolveCenterTick(int24 centerTick, int24 currentTick, int24 tickSpacing) private pure returns (int24) {
        int24 baseTick = centerTick == type(int24).max ? currentTick : centerTick;
        int24 compressed = baseTick / tickSpacing;
        if (baseTick < 0 && baseTick % tickSpacing != 0) {
            compressed--;
        }
        return compressed * tickSpacing;
    }

    struct OtherAmountCalcData {
        int24[] lowerTicks;
        int24[] upperTicks;
        uint256[] weights;
        int24 currentTick;
        uint256 totalWeightedToken0;
        uint256 totalWeightedToken1;
    }

    struct RangeWeights {
        IMultiPositionManager.Range[] baseRanges;
        uint256[] weights;
    }

    function _calculateOtherAmount(
        PoolKey memory poolKey,
        uint160 sqrtPriceX96,
        int24 resolvedCenterTick,
        InitialDepositParams calldata params
    ) private view returns (uint256 otherAmount) {
        OtherAmountCalcData memory data;
        data.currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);

        // Generate ranges
        ILiquidityStrategy strategy = ILiquidityStrategy(params.strategyAddress);
        (data.lowerTicks, data.upperTicks) = strategy.generateRanges(
            resolvedCenterTick, params.ticksLeft, params.ticksRight, poolKey.tickSpacing, params.useCarpet
        );

        // Get weights
        data.weights = _calculateWeightsForOtherAmount(strategy, data, params, resolvedCenterTick, poolKey.tickSpacing);

        // Calculate totals
        (data.totalWeightedToken0, data.totalWeightedToken1) = _sumWeightedTotals(data, sqrtPriceX96);

        // Calculate other amount
        otherAmount = _computeOtherAmount(params, data.totalWeightedToken0, data.totalWeightedToken1);
    }

    function _calculateWeightsForOtherAmount(
        ILiquidityStrategy strategy,
        OtherAmountCalcData memory data,
        InitialDepositParams calldata params,
        int24 resolvedCenterTick,
        int24 tickSpacing
    ) private view returns (uint256[] memory) {
        bool useAssetWeights = (params.weight0 == 0 && params.weight1 == 0);
        uint256[] memory weights = strategy.calculateDensities(
            data.lowerTicks,
            data.upperTicks,
            data.currentTick,
            resolvedCenterTick,
            params.ticksLeft,
            params.ticksRight,
            params.weight0,
            params.weight1,
            params.useCarpet,
            tickSpacing,
            useAssetWeights
        );
        return RebalanceLogic.adjustWeightsForFullRangeFloor(
            weights, data.lowerTicks, data.upperTicks, tickSpacing, params.useCarpet
        );
    }

    function _sumWeightedTotals(OtherAmountCalcData memory data, uint160 sqrtPriceX96)
        private pure returns (uint256 totalWeightedToken0, uint256 totalWeightedToken1)
    {
        for (uint256 i = 0; i < data.lowerTicks.length; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(data.lowerTicks[i]);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(data.upperTicks[i]);

            (uint256 amount0For1e18, uint256 amount1For1e18) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, 1e18);

            totalWeightedToken0 += (amount0For1e18 * data.weights[i]) / 1e18;
            totalWeightedToken1 += (amount1For1e18 * data.weights[i]) / 1e18;
        }
    }

    function _computeOtherAmount(InitialDepositParams calldata params, uint256 totalWeightedToken0, uint256 totalWeightedToken1)
        private pure returns (uint256 otherAmount)
    {
        if (params.isToken0) {
            if (totalWeightedToken0 == 0) {
                otherAmount = 0;
            } else {
                otherAmount = FullMath.mulDiv(params.amount, totalWeightedToken1, totalWeightedToken0);
            }
        } else {
            if (totalWeightedToken1 == 0) {
                otherAmount = 0;
            } else {
                otherAmount = FullMath.mulDiv(params.amount, totalWeightedToken0, totalWeightedToken1);
            }
        }
    }

    function _generateRangesAndLiquidities(
        RangeGenParams memory genParams,
        InitialDepositParams memory params
    ) private view returns (IMultiPositionManager.Range[] memory allRanges, uint128[] memory allLiquidities) {
        // Build strategy context
        RebalanceLogic.StrategyContext memory ctx = RebalanceLogic.StrategyContext({
            resolvedStrategy: params.strategyAddress,
            center: genParams.resolvedCenterTick,
            tLeft: params.ticksLeft,
            tRight: params.ticksRight,
            strategy: ILiquidityStrategy(params.strategyAddress),
            weight0: params.weight0,
            weight1: params.weight1,
            useCarpet: params.useCarpet,
            limitWidth: params.limitWidth,
            useAssetWeights: (params.weight0 == 0 && params.weight1 == 0)
        });

        // Generate base ranges using internal helper
        (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory baseLiquidities) =
            _generateRangesAndLiquiditiesWithSqrtPrice(genParams.poolKey, ctx, genParams.amount0, genParams.amount1, genParams.sqrtPriceX96);

        // Add limit positions if needed
        if (params.limitWidth > 0) {
            (IMultiPositionManager.Range memory lowerLimit, IMultiPositionManager.Range memory upperLimit) =
                PositionLogic.calculateLimitRanges(params.limitWidth, baseRanges, genParams.poolKey.tickSpacing, genParams.currentTick);

            allRanges = new IMultiPositionManager.Range[](baseRanges.length + 2);
            allLiquidities = new uint128[](baseRanges.length + 2);

            for (uint256 i = 0; i < baseRanges.length; i++) {
                allRanges[i] = baseRanges[i];
                allLiquidities[i] = baseLiquidities[i];
            }

            // Calculate remainders
            (uint256 remainderToken0, uint256 remainderToken1) =
                _calculateRemainders(baseRanges, baseLiquidities, genParams.sqrtPriceX96, genParams.amount0, genParams.amount1);

            // Add limit positions
            allRanges[baseRanges.length] = lowerLimit;
            allRanges[baseRanges.length + 1] = upperLimit;

            // Lower limit gets remainder token1
            if (lowerLimit.lowerTick != lowerLimit.upperTick && remainderToken1 > 0) {
                allLiquidities[baseRanges.length] = LiquidityAmounts.getLiquidityForAmounts(
                    genParams.sqrtPriceX96,
                    TickMath.getSqrtPriceAtTick(lowerLimit.lowerTick),
                    TickMath.getSqrtPriceAtTick(lowerLimit.upperTick),
                    0,
                    remainderToken1
                );
            }

            // Upper limit gets remainder token0
            if (upperLimit.lowerTick != upperLimit.upperTick && remainderToken0 > 0) {
                allLiquidities[baseRanges.length + 1] = LiquidityAmounts.getLiquidityForAmounts(
                    genParams.sqrtPriceX96,
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
    }

    function _calculateRemainders(
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory baseLiquidities,
        uint160 sqrtPriceX96,
        uint256 amount0,
        uint256 amount1
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
        remainderToken0 = amount0 > consumedToken0 ? amount0 - consumedToken0 : 0;
        remainderToken1 = amount1 > consumedToken1 ? amount1 - consumedToken1 : 0;
    }

    function _calculateInMin(
        IMultiPositionManager.Range[] memory ranges,
        uint128[] memory liquidities,
        uint160 sqrtPriceX96,
        uint256 maxSlippageBps
    ) private pure returns (uint256[2][] memory inMin) {
        inMin = new uint256[2][](ranges.length);
        uint256 slippageMultiplier = 10000 - maxSlippageBps;

        for (uint256 i = 0; i < ranges.length; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

            (uint256 amt0, uint256 amt1) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, liquidities[i]);

            inMin[i] =
                [FullMath.mulDiv(amt0, slippageMultiplier, 10000), FullMath.mulDiv(amt1, slippageMultiplier, 10000)];
        }
    }

    function _calculateExpectedTotals(uint160 sqrtPriceX96, RebalancePreview memory preview, uint24 limitWidth)
        private
        pure
    {
        preview.expectedPositions = new LensRatioUtils.PositionStats[](preview.ranges.length);
        preview.expectedTotal0 = 0;
        preview.expectedTotal1 = 0;

        uint256 baseLength =
            limitWidth > 0 && preview.ranges.length >= 2 ? preview.ranges.length - 2 : preview.ranges.length;

        for (uint256 i = 0; i < preview.ranges.length; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(preview.ranges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(preview.ranges[i].upperTick);

            (uint256 amt0, uint256 amt1) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, preview.liquidities[i]
            );

            uint256 valueInToken1 = amt1 + FullMath.mulDiv(amt0, uint256(sqrtPriceX96) * uint256(sqrtPriceX96), 1 << 192);

            preview.expectedPositions[i] = LensRatioUtils.PositionStats({
                tickLower: preview.ranges[i].lowerTick,
                tickUpper: preview.ranges[i].upperTick,
                sqrtPriceLower: sqrtPriceLower,
                sqrtPriceUpper: sqrtPriceUpper,
                liquidity: preview.liquidities[i],
                token0Quantity: amt0,
                token1Quantity: amt1,
                valueInToken1: valueInToken1,
                isLimit: i >= baseLength
            });

            preview.expectedTotal0 += amt0;
            preview.expectedTotal1 += amt1;
        }
    }

    function _calculateTargetWeights(
        address strategyAddress,
        int24 resolvedCenterTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        int24 tickSpacing,
        bool useCarpet,
        uint160 sqrtPriceX96,
        int24 currentTick,
        uint256 weight0,
        uint256 weight1
    ) private view returns (uint256, uint256) {
        if (weight0 != 0 || weight1 != 0) {
            return (weight0, weight1);
        }

        return RebalanceLogic.calculateWeightsFromStrategy(
            ILiquidityStrategy(strategyAddress),
            resolvedCenterTick,
            ticksLeft,
            ticksRight,
            tickSpacing,
            useCarpet,
            sqrtPriceX96,
            currentTick
        );
    }

    // Alias to avoid stack too deep
    function _calculateTargetWeightsInternal(
        address strategyAddress,
        int24 resolvedCenterTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        int24 tickSpacing,
        bool useCarpet,
        uint160 sqrtPriceX96,
        int24 currentTick,
        uint256 weight0,
        uint256 weight1
    ) private view returns (uint256, uint256) {
        return _calculateTargetWeights(
            strategyAddress, resolvedCenterTick, ticksLeft, ticksRight,
            tickSpacing, useCarpet, sqrtPriceX96, currentTick, weight0, weight1
        );
    }

    /**
     * @notice Generate ranges and liquidities for initial deposit with provided sqrtPriceX96
     * @dev Used for both initialized and uninitialized pools
     */
    function _generateRangesAndLiquiditiesWithSqrtPrice(
        PoolKey memory poolKey,
        RebalanceLogic.StrategyContext memory ctx,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96
    ) private view returns (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities) {
        RangeWeights memory data = _buildRangesAndWeights(poolKey, ctx, sqrtPriceX96);
        baseRanges = data.baseRanges;

        // Calculate liquidities from weights
        liquidities = _calculateLiquiditiesWithContext(data, poolKey, ctx, amount0, amount1, sqrtPriceX96);
    }

    function _buildRangesAndWeights(
        PoolKey memory poolKey,
        RebalanceLogic.StrategyContext memory ctx,
        uint160 sqrtPriceX96
    ) private view returns (RangeWeights memory data) {
        int24 currentTick = TickMath.getTickAtSqrtPrice(sqrtPriceX96);
        int24 tickSpacing = poolKey.tickSpacing;

        (int24[] memory lowerTicks, int24[] memory upperTicks) =
            ctx.strategy.generateRanges(ctx.center, ctx.tLeft, ctx.tRight, tickSpacing, ctx.useCarpet);

        data.baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint256 i = 0; i < lowerTicks.length; i++) {
            data.baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
        }

        RebalanceLogic.DensityParams memory params;
        params.lowerTicks = lowerTicks;
        params.upperTicks = upperTicks;
        params.tick = currentTick;
        params.center = ctx.center;
        params.tLeft = ctx.tLeft;
        params.tRight = ctx.tRight;
        params.weight0 = ctx.weight0;
        params.weight1 = ctx.weight1;
        params.useCarpet = ctx.useCarpet;
        params.tickSpacing = tickSpacing;

        data.weights = _calculateAdjustedWeights(ctx.strategy, params, ctx.useAssetWeights);
    }

    function _calculateAdjustedWeights(
        ILiquidityStrategy strategy,
        RebalanceLogic.DensityParams memory params,
        bool useAssetWeights
    ) private view returns (uint256[] memory) {
        uint256[] memory weights = strategy.calculateDensities(
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
        return RebalanceLogic.adjustWeightsForFullRangeFloor(
            weights, params.lowerTicks, params.upperTicks, params.tickSpacing, params.useCarpet
        );
    }

    /**
     * @notice Calculate liquidities for each position based on weights
     */
    function _calculateLiquiditiesFromWeights(
        uint128[] memory liquidities,
        uint256[] memory weights,
        IMultiPositionManager.Range[] memory baseRanges,
        RebalanceLogic.LiquidityCalcParams memory params
    ) private pure {
        uint256 rangesLength = baseRanges.length;
        if (rangesLength == 0) return;

        // Build allocation data
        RebalanceLogic.AllocationData memory data;
        data.token0Allocations = new uint256[](rangesLength);
        data.token1Allocations = new uint256[](rangesLength);
        data.currentTick = TickMath.getTickAtSqrtPrice(params.sqrtPriceX96);

        // Step 1: Calculate initial allocations based on weights
        RebalanceLogic.calculateInitialAllocations(data, baseRanges, weights, params.sqrtPriceX96, false, 1);

        // Step 2: Scale allocations proportionally
        RebalanceLogic.scaleAllocations(data, params.amount0, params.amount1, params.useAssetWeights);

        // Step 3: Fix current range and redistribute (only for proportional weights)
        if (params.useAssetWeights && data.hasCurrentRange) {
            RebalanceLogic.fixCurrentRangeAndRedistribute(data, baseRanges, params.sqrtPriceX96);
        }

        // Step 4: Convert allocations to liquidities
        for (uint256 i = 0; i < rangesLength; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick);

            liquidities[i] = LiquidityAmounts.getLiquidityForAmounts(
                params.sqrtPriceX96,
                sqrtPriceLower,
                sqrtPriceUpper,
                data.token0Allocations[i],
                data.token1Allocations[i]
            );
        }
    }

    function _calculateLiquiditiesForRanges(
        IMultiPositionManager.Range[] memory baseRanges,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        bool useAssetWeights,
        int24 tickSpacing,
        bool useCarpet
    ) private pure returns (uint128[] memory liquidities) {
        liquidities = new uint128[](baseRanges.length);
        RebalanceLogic.LiquidityCalcParams memory calcParams = RebalanceLogic.LiquidityCalcParams({
            amount0: amount0,
            amount1: amount1,
            sqrtPriceX96: sqrtPriceX96,
            useAssetWeights: useAssetWeights,
            tickSpacing: tickSpacing,
            useCarpet: useCarpet
        });

        _calculateLiquiditiesFromWeights(liquidities, weights, baseRanges, calcParams);
    }

    function _calculateLiquiditiesWithContext(
        RangeWeights memory data,
        PoolKey memory poolKey,
        RebalanceLogic.StrategyContext memory ctx,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96
    ) private pure returns (uint128[] memory) {
        return _calculateLiquiditiesForRanges(
            data.baseRanges,
            data.weights,
            amount0,
            amount1,
            sqrtPriceX96,
            ctx.useAssetWeights,
            poolKey.tickSpacing,
            ctx.useCarpet
        );
    }
}
