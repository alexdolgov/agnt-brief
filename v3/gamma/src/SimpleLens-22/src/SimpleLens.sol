// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { MultiPositionManager } from "./MultiPositionManager.sol";
import { IMultiPositionManager } from "./interfaces/IMultiPositionManager.sol";
import { ILiquidityStrategy } from "./strategies/ILiquidityStrategy.sol";
import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { IHooks } from "v4-core/interfaces/IHooks.sol";
import { PoolId, PoolIdLibrary } from "v4-core/types/PoolId.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { Currency } from "v4-core/types/Currency.sol";
import { TickMath } from "v4-core/libraries/TickMath.sol";
import { FullMath } from "v4-core/libraries/FullMath.sol";
import { DepositRatioLib } from "./libraries/DepositRatioLib.sol";
import { LiquidityAmounts } from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { PoolManagerUtils } from "./PoolManagerUtils.sol";
import { RebalanceLogic } from "./lib/RebalanceLogic.sol";
import { PositionLogic } from "./lib/PositionLogic.sol";
import { WithdrawLogic } from "./lib/WithdrawLogic.sol";
import { SimpleLensInMin } from "./libraries/SimpleLensInMin.sol";
import { SimpleLensRatioUtils } from "./libraries/SimpleLensRatioUtils.sol";


/**
 * @title SimpleLens
 * @notice Simplified read-only contract for previewing MultiPositionManager withdrawals
 */
contract SimpleLens {
    using StateLibrary for IPoolManager;
    using PoolIdLibrary for PoolKey;

    // Immutable storage
    IPoolManager public immutable poolManager;

    // Custom errors
    error NoStrategySpecified();
    error MaxSlippageExceeded();
    error RatioMustBeLessThanOrEqualToOne();
    error GenerateRangesFailed();
    error CalculateDensitiesFailed();

    uint256 constant PRECISION = 1e18;

    constructor(IPoolManager _poolManager) {
        poolManager = _poolManager;
    }

    // Use structs from SimpleLensInMin library to avoid duplication
    // DensityCalcParams, InMinCalcData, and InMinRebalanceParams are now in SimpleLensInMin

    struct DensityCalcContext {
        int24[] lowerTicks;
        int24[] upperTicks;
        int24 currentTick;
        int24 resolvedCenterTick;
        int24 tickSpacing;
    }

    struct PriceData {
        uint160 sqrtPriceX96;
        uint256 price;
        int24 tick;
    }

    // PreviewData and WithdrawPreviewResult structs moved to SimpleLensInMin library

    struct Path3Params {
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 sharesWithdrawn;
        uint256[2][] outMin;
        bool previewRebalance;
        IMultiPositionManager.RebalanceParams rebalanceParams;
    }

    // RebalancePreview struct moved to SimpleLensInMin library

    struct InMinParams {
        MultiPositionManager manager;
        IMultiPositionManager.Range[] baseRanges;
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        int24 limitWidth;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        uint256 maxSlippage;
    }

    struct PreviewLiquidityParams {
        IMultiPositionManager.Range[] baseRanges;
        uint256 total0;
        uint256 total1;
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
    }

    /**
     * @notice Get position statistics for a MultiPositionManager
     */
    function getPositionStats(MultiPositionManager manager)
        external
        view
        returns (SimpleLensRatioUtils.PositionStats[] memory stats)
    {
        return SimpleLensRatioUtils.getPositionStats(manager);
    }

    /**
     * @notice Preview a single token withdrawal - exactly mirrors withdrawSingleToken logic
     * @param manager The MultiPositionManager contract
     * @param amount0Desired Amount of token0 to withdraw
     * @param amount1Desired Amount of token1 to withdraw
     * @param maxSlippage Maximum slippage for outMin calculation
     * @param previewRebalance If true, returns expected positions after rebalance
     * @param rebalanceParams Parameters for rebalance preview
     * @return sharesWithdrawn Amount of shares withdrawn
     * @return positionSharesBurned Amount of position shares burned
     * @return outMin Minimum output amounts for withdrawal
     * @return rebalancePreview Full rebalance preview (empty if previewRebalance false)
     * @return isFullBurn True if all positions will be burned (positionSharesBurned == totalSupply)
     * @return outMinForRebalance Empty array if full burn, otherwise [0,0] array sized for remaining positions
     */
    function previewWithdrawCustom(
        MultiPositionManager manager,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 maxSlippage,
        bool previewRebalance,
        IMultiPositionManager.RebalanceParams memory rebalanceParams
    ) external view returns (
        uint256 sharesWithdrawn,
        uint256 positionSharesBurned,
        uint256[2][] memory outMin,
        SimpleLensInMin.RebalancePreview memory rebalancePreview,
        bool isFullBurn,
        uint256[2][] memory outMinForRebalance
    ) {
        // Call library function for all preview logic
        SimpleLensInMin.WithdrawPreviewResult memory result =
            SimpleLensInMin.previewWithdrawCustomInternal(
                manager,
                amount0Desired,
                amount1Desired,
                maxSlippage,
                previewRebalance,
                rebalanceParams
            );

        return (
            result.sharesWithdrawn,
            result.positionSharesBurned,
            result.outMin,
            result.rebalancePreview,
            result.isFullBurn,
            result.outMinForRebalance
        );
    }


    function _calculatePositionStats(
        IMultiPositionManager.Position memory position,
        uint128 liquidity,
        uint160 sqrtPriceX96
    ) internal pure returns (SimpleLensRatioUtils.PositionStats memory stat) {
        stat.tickLower = position.lowerTick;
        stat.tickUpper = position.upperTick;
        stat.sqrtPriceLower = TickMath.getSqrtPriceAtTick(position.lowerTick);
        stat.sqrtPriceUpper = TickMath.getSqrtPriceAtTick(position.upperTick);
        stat.liquidity = liquidity;
        
        (stat.token0Quantity, stat.token1Quantity) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtPriceX96,
            stat.sqrtPriceLower,
            stat.sqrtPriceUpper,
            liquidity
        );
        
        // Calculate value in token1
        stat.valueInToken1 = stat.token1Quantity + FullMath.mulDiv(
            stat.token0Quantity,
            uint256(sqrtPriceX96) * uint256(sqrtPriceX96),
            1 << 192
        );
    }


    // Consolidated pool state helpers - reduces redundant code
    function _getPoolState(PoolKey memory poolKey) internal view returns (uint160 sqrtPriceX96, int24 tick) {
        (sqrtPriceX96, tick, , ) = poolManager.getSlot0(poolKey.toId());
    }


    /**
     * @notice Preview the result of rebalanceWithStrategy with limitWidth and carpet positions
     * @param manager The MultiPositionManager contract
     * @param strategyAddress Address of strategy to use (generates ranges)
     * @param centerTick Center tick for distribution
     * @param ticksLeft Number of ticks to the left of center
     * @param ticksRight Number of ticks to the right of center
     * @param limitWidth Width of limit positions (0 for no limit positions)
     * @param weight0 Weight for token0 (0 for proportional, otherwise explicit weight)
     * @param weight1 Weight for token1 (0 for proportional, otherwise explicit weight)
     * @param useCarpet Whether to include carpet positions
     * @param maxSlippage Maximum slippage in basis points (10000 = 100%)
     * @return preview Detailed preview of the rebalance operation
     * @return outMin Minimum amounts for withdrawing from old positions
     * @return inMin Minimum amounts for depositing to new positions
     */
    function previewRebalanceWithStrategyAndCarpet(
        MultiPositionManager manager,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        int24 limitWidth,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet,
        uint256 maxSlippage
    ) public view returns (
        SimpleLensInMin.RebalancePreview memory preview,
        uint256[2][] memory outMin,
        uint256[2][] memory inMin
    ) {
        SimpleLensInMin.RebalancePreviewParams memory params = SimpleLensInMin.RebalancePreviewParams({
            strategyAddress: strategyAddress,
            centerTick: centerTick,
            ticksLeft: ticksLeft,
            ticksRight: ticksRight,
            limitWidth: limitWidth,
            weight0: weight0,
            weight1: weight1,
            useCarpet: useCarpet,
            swap: false, // No swap for regular rebalance
            maxSlippage: maxSlippage
        });

        // Generate preview in helper to reduce stack depth
        preview = _generateCompletePreview(manager, params);

        // Get outMin and inMin for slippage protection
        (outMin, inMin) = _getOutAndInMinForPreview(manager, params);
    }

    /**
     * @notice Preview the result of rebalanceSwap (with swap) with limitWidth and carpet positions
     * @param manager The MultiPositionManager contract
     * @param strategyAddress Address of strategy to use (generates ranges)
     * @param centerTick Center tick for distribution
     * @param ticksLeft Number of ticks to the left of center
     * @param ticksRight Number of ticks to the right of center
     * @param limitWidth Width of limit positions (0 for no limit positions)
     * @param weight0 Weight for token0 (0 for proportional, otherwise explicit weight)
     * @param weight1 Weight for token1 (0 for proportional, otherwise explicit weight)
     * @param useCarpet Whether to include carpet positions
     * @param maxSlippage Maximum slippage in basis points (10000 = 100%)
     * @return preview Detailed preview of the rebalance operation including swap
     * @return outMin Minimum amounts for withdrawing from old positions
     * @return inMin Minimum amounts for depositing to new positions
     * @return swapParams Swap parameters (direction, amount, target weights)
     */
    function previewRebalanceSwapWithStrategyAndCarpet(
        MultiPositionManager manager,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        int24 limitWidth,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet,
        uint256 maxSlippage
    ) public view returns (
        SimpleLensInMin.RebalancePreview memory preview,
        uint256[2][] memory outMin,
        uint256[2][] memory inMin,
        SimpleLensRatioUtils.SwapParams memory swapParams
    ) {
        SimpleLensInMin.RebalancePreviewParams memory params = SimpleLensInMin.RebalancePreviewParams({
            strategyAddress: strategyAddress,
            centerTick: centerTick,
            ticksLeft: ticksLeft,
            ticksRight: ticksRight,
            limitWidth: limitWidth,
            weight0: weight0,
            weight1: weight1,
            useCarpet: useCarpet,
            swap: true, // Always swap for this function
            maxSlippage: maxSlippage
        });

        // Generate preview with swap in helper to reduce stack depth
        preview = _generateCompleteSwapPreview(manager, params);

        // Get outMin and inMin for slippage protection
        (outMin, inMin) = _getOutAndInMinForPreview(manager, params);

        // Construct swap parameters from preview
        swapParams = SimpleLensRatioUtils.SwapParams({
            swapToken0: preview.swapToken0,
            swapAmount: preview.swapAmount,
            weight0: params.weight0,
            weight1: params.weight1
        });
    }

    function _generateCompleteSwapPreview(
        MultiPositionManager manager,
        SimpleLensInMin.RebalancePreviewParams memory params
    ) private view returns (SimpleLensInMin.RebalancePreview memory preview) {
        preview.strategy = params.strategyAddress;
        preview.ticksLeft = params.ticksLeft;
        preview.ticksRight = params.ticksRight;

        // Generate base liquidities with swap simulation
        (uint256 adj0, uint256 adj1) = _generateSwapBaseLiquidities(manager, params, preview);

        // Add limit positions if needed
        if (params.limitWidth > 0) {
            _addSwapLimitPositions(manager, params, adj0, adj1, preview);
        }

        // Calculate expected totals
        _calculateExpectedTotals(manager, preview.ranges, preview);
    }

    function _generateSwapBaseLiquidities(
        MultiPositionManager manager,
        SimpleLensInMin.RebalancePreviewParams memory params,
        SimpleLensInMin.RebalancePreview memory preview
    ) private view returns (uint256 adjustedTotal0, uint256 adjustedTotal1) {
        // Get current amounts
        uint256 t0;
        uint256 t1;
        (t0, t1, , ) = manager.getTotalAmounts();

        // Simulate swap and calculate optimal swap amount
        {
            (adjustedTotal0, adjustedTotal1) = SimpleLensRatioUtils.simulateSwapForRebalance(
                manager, t0, t1, params.weight0, params.weight1
            );

            // Calculate swap details
            if (adjustedTotal0 < t0) {
                // Swapping token0 for token1
                preview.swapToken0 = true;
                preview.swapAmount = t0 - adjustedTotal0;
                preview.expectedAmountOut = adjustedTotal1 - t1;
            } else if (adjustedTotal1 < t1) {
                // Swapping token1 for token0
                preview.swapToken0 = false;
                preview.swapAmount = t1 - adjustedTotal1;
                preview.expectedAmountOut = adjustedTotal0 - t0;
            } else {
                // No swap needed
                preview.swapToken0 = false;
                preview.swapAmount = 0;
                preview.expectedAmountOut = 0;
            }
        }
        PoolKey memory poolKey = manager.poolKey();
        (uint160 sqrtPriceX96, int24 currentTick, , ) = poolManager.getSlot0(poolKey.toId());

        // Resolve center tick
        int24 resolvedCenterTick = params.centerTick;
        if (params.centerTick == type(int24).max) {
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) compressed--;
            resolvedCenterTick = compressed * poolKey.tickSpacing;
        }
        preview.centerTick = resolvedCenterTick;

        // Build context and generate ranges/liquidities
        RebalanceLogic.StrategyContext memory ctx;
        ctx.resolvedStrategy = params.strategyAddress;
        ctx.center = resolvedCenterTick;
        ctx.tLeft = params.ticksLeft;
        ctx.tRight = params.ticksRight;
        ctx.strategy = ILiquidityStrategy(params.strategyAddress);
        ctx.weight0 = params.weight0;
        ctx.weight1 = params.weight1;
        ctx.useCarpet = params.useCarpet;
        ctx.limitWidth = 0;
        ctx.weightsAreProportional = (params.weight0 == 0 && params.weight1 == 0);

        // Use same function as actual rebalance
        (preview.ranges, preview.liquidities) = RebalanceLogic.generateRangesAndLiquiditiesWithPoolKey(
            poolKey, poolManager, ctx, adjustedTotal0, adjustedTotal1
        );
    }

    function _getOutAndInMinForPreview(
        MultiPositionManager manager,
        SimpleLensInMin.RebalancePreviewParams memory params
    ) private view returns (uint256[2][] memory outMin, uint256[2][] memory inMin) {
        return SimpleLensInMin.getOutMinAndInMinForRebalance(
            manager,
            params.strategyAddress,
            params.centerTick,
            params.ticksLeft,
            params.ticksRight,
            params.limitWidth,
            params.weight0,
            params.weight1,
            params.useCarpet,
            params.swap,
            params.maxSlippage
        );
    }

    function _generateCompletePreview(
        MultiPositionManager manager,
        SimpleLensInMin.RebalancePreviewParams memory params
    ) private view returns (SimpleLensInMin.RebalancePreview memory preview) {
        preview.strategy = params.strategyAddress;
        preview.ticksLeft = params.ticksLeft;
        preview.ticksRight = params.ticksRight;

        // Generate base ranges and liquidities
        uint256 total0;
        uint256 total1;
        (total0, total1) = _generateBasePreviewRanges(manager, params, preview);

        // Add limit positions if limitWidth > 0
        if (params.limitWidth > 0) {
            _addPreviewLimitPositions(manager, params, total0, total1, preview);
        }

        // Calculate expected totals
        _calculateExpectedTotals(manager, preview.ranges, preview);
    }

    function _generateBasePreviewRanges(
        MultiPositionManager manager,
        SimpleLensInMin.RebalancePreviewParams memory params,
        SimpleLensInMin.RebalancePreview memory preview
    ) private view returns (uint256 total0, uint256 total1) {
        (total0, total1, , ) = manager.getTotalAmounts();

        PoolKey memory poolKey = manager.poolKey();
        (uint160 sqrtPriceX96, int24 currentTick, , ) = poolManager.getSlot0(poolKey.toId());

        // Resolve center tick
        int24 resolvedCenterTick = params.centerTick;
        if (params.centerTick == type(int24).max) {
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) compressed--;
            resolvedCenterTick = compressed * poolKey.tickSpacing;
        }
        preview.centerTick = resolvedCenterTick;

        // Build context and generate ranges/liquidities
        RebalanceLogic.StrategyContext memory ctx;
        ctx.resolvedStrategy = params.strategyAddress;
        ctx.center = resolvedCenterTick;
        ctx.tLeft = params.ticksLeft;
        ctx.tRight = params.ticksRight;
        ctx.strategy = ILiquidityStrategy(params.strategyAddress);
        ctx.weight0 = params.weight0;
        ctx.weight1 = params.weight1;
        ctx.useCarpet = params.useCarpet;
        ctx.limitWidth = 0;
        ctx.weightsAreProportional = (params.weight0 == 0 && params.weight1 == 0);

        (preview.ranges, preview.liquidities) = RebalanceLogic.generateRangesAndLiquiditiesWithPoolKey(
            poolKey,
            poolManager,
            ctx,
            total0,
            total1
        );
    }

    function _addPreviewLimitPositions(
        MultiPositionManager manager,
        SimpleLensInMin.RebalancePreviewParams memory params,
        uint256 total0,
        uint256 total1,
        SimpleLensInMin.RebalancePreview memory preview
    ) private view {
        bool weightsAreProportional = (params.weight0 == 0 && params.weight1 == 0);
        PoolKey memory poolKey = manager.poolKey();

        // Get limit ranges and sqrtPrice
        IMultiPositionManager.Range memory lowerLimit;
        IMultiPositionManager.Range memory upperLimit;
        uint160 sqrtPriceX96;
        {
            int24 currentTick;
            (sqrtPriceX96, currentTick, , ) = poolManager.getSlot0(poolKey.toId());
            (lowerLimit, upperLimit) = PositionLogic.calculateLimitRanges(
                params.limitWidth, preview.ranges, poolKey.tickSpacing, currentTick
            );
        }

        // Expand arrays
        uint256 baseLength = preview.ranges.length;
        IMultiPositionManager.Range[] memory allRanges = new IMultiPositionManager.Range[](baseLength + 2);
        uint128[] memory allLiquidities = new uint128[](baseLength + 2);

        // Copy base data
        for (uint256 i = 0; i < baseLength; i++) {
            allRanges[i] = preview.ranges[i];
            allLiquidities[i] = preview.liquidities[i];
        }

        allRanges[baseLength] = lowerLimit;
        allRanges[baseLength + 1] = upperLimit;

        // Calculate limit liquidities for explicit weights
        if (!weightsAreProportional) {
            (uint256 consumed0, uint256 consumed1) = _calculateConsumedTokens(
                preview.ranges, preview.liquidities, sqrtPriceX96
            );

            uint256 remainder0 = total0 > consumed0 ? total0 - consumed0 : 0;
            uint256 remainder1 = total1 > consumed1 ? total1 - consumed1 : 0;

            if (lowerLimit.lowerTick != lowerLimit.upperTick && remainder1 > 0) {
                allLiquidities[baseLength] = LiquidityAmounts.getLiquidityForAmounts(
                    sqrtPriceX96,
                    TickMath.getSqrtPriceAtTick(lowerLimit.lowerTick),
                    TickMath.getSqrtPriceAtTick(lowerLimit.upperTick),
                    0, remainder1
                );
            }

            if (upperLimit.lowerTick != upperLimit.upperTick && remainder0 > 0) {
                allLiquidities[baseLength + 1] = LiquidityAmounts.getLiquidityForAmounts(
                    sqrtPriceX96,
                    TickMath.getSqrtPriceAtTick(upperLimit.lowerTick),
                    TickMath.getSqrtPriceAtTick(upperLimit.upperTick),
                    remainder0, 0
                );
            }
        }

        preview.ranges = allRanges;
        preview.liquidities = allLiquidities;
    }

    function _addSwapLimitPositions(
        MultiPositionManager manager,
        SimpleLensInMin.RebalancePreviewParams memory params,
        uint256 adjustedTotal0,
        uint256 adjustedTotal1,
        SimpleLensInMin.RebalancePreview memory preview
    ) private view {
        bool weightsAreProportional = (params.weight0 == 0 && params.weight1 == 0);
        PoolKey memory poolKey = manager.poolKey();

        // Get limit ranges and sqrtPrice
        IMultiPositionManager.Range memory lowerLimit;
        IMultiPositionManager.Range memory upperLimit;
        uint160 sqrtPriceX96;
        {
            int24 currentTick;
            (sqrtPriceX96, currentTick, , ) = poolManager.getSlot0(poolKey.toId());
            (lowerLimit, upperLimit) = PositionLogic.calculateLimitRanges(
                params.limitWidth, preview.ranges, poolKey.tickSpacing, currentTick
            );
        }

        // Expand arrays
        uint256 baseLength = preview.ranges.length;
        IMultiPositionManager.Range[] memory allRanges = new IMultiPositionManager.Range[](baseLength + 2);
        uint128[] memory allLiquidities = new uint128[](baseLength + 2);

        // Copy base data
        for (uint256 i = 0; i < baseLength; i++) {
            allRanges[i] = preview.ranges[i];
            allLiquidities[i] = preview.liquidities[i];
        }

        allRanges[baseLength] = lowerLimit;
        allRanges[baseLength + 1] = upperLimit;

        // Calculate limit liquidities for explicit weights
        if (!weightsAreProportional) {
            (uint256 consumed0, uint256 consumed1) = _calculateConsumedTokens(
                preview.ranges, preview.liquidities, sqrtPriceX96
            );

            uint256 remainder0 = adjustedTotal0 > consumed0 ? adjustedTotal0 - consumed0 : 0;
            uint256 remainder1 = adjustedTotal1 > consumed1 ? adjustedTotal1 - consumed1 : 0;

            if (lowerLimit.lowerTick != lowerLimit.upperTick && remainder1 > 0) {
                allLiquidities[baseLength] = LiquidityAmounts.getLiquidityForAmounts(
                    sqrtPriceX96,
                    TickMath.getSqrtPriceAtTick(lowerLimit.lowerTick),
                    TickMath.getSqrtPriceAtTick(lowerLimit.upperTick),
                    0, remainder1
                );
            }

            if (upperLimit.lowerTick != upperLimit.upperTick && remainder0 > 0) {
                allLiquidities[baseLength + 1] = LiquidityAmounts.getLiquidityForAmounts(
                    sqrtPriceX96,
                    TickMath.getSqrtPriceAtTick(upperLimit.lowerTick),
                    TickMath.getSqrtPriceAtTick(upperLimit.upperTick),
                    remainder0, 0
                );
            }
        }

        preview.ranges = allRanges;
        preview.liquidities = allLiquidities;
    }


    function _calculateExpectedTotals(
        MultiPositionManager manager,
        IMultiPositionManager.Range[] memory allRanges,
        SimpleLensInMin.RebalancePreview memory preview
    ) private view {
        _calculateExpectedTotalsWithPoolKey(manager.poolKey(), allRanges, preview);
    }

    function _generateRangesFromStrategyWithPoolKey(
        PoolKey memory poolKey,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        bool useCarpet
    ) private view returns (IMultiPositionManager.Range[] memory) {
        return SimpleLensRatioUtils.generateRangesFromStrategyWithPoolKey(
            poolManager,
            poolKey,
            strategyAddress,
            centerTick,
            ticksLeft,
            ticksRight,
            useCarpet
        );
    }


    // PoolKey-based version for use without MultiPositionManager
    function _calculateExpectedTotalsWithPoolKey(
        PoolKey memory poolKey,
        IMultiPositionManager.Range[] memory allRanges,
        SimpleLensInMin.RebalancePreview memory preview
    ) private view {
        // Create stats for ALL positions (base + limit)
        preview.expectedPositions = new SimpleLensRatioUtils.PositionStats[](preview.ranges.length);
        preview.expectedTotal0 = 0;
        preview.expectedTotal1 = 0;

        (uint160 sqrtPriceX96, ) = _getPoolState(poolKey);

        // Calculate stats for all positions including limit positions
        for (uint256 i = 0; i < preview.ranges.length; i++) {
            IMultiPositionManager.Position memory pos = IMultiPositionManager.Position({
                poolKey: poolKey,
                lowerTick: preview.ranges[i].lowerTick,
                upperTick: preview.ranges[i].upperTick
            });

            preview.expectedPositions[i] = _calculatePositionStats(
                pos,
                preview.liquidities[i],
                sqrtPriceX96
            );

            preview.expectedTotal0 += preview.expectedPositions[i].token0Quantity;
            preview.expectedTotal1 += preview.expectedPositions[i].token1Quantity;
        }
    }

/**
     * @notice Calculate minimum output amounts for withdrawal with slippage protection
     * @param pos MultiPositionManager address
     * @param shares Number of shares to burn
     * @param maxSlippage Maximum slippage in basis points (10000 = 100%)
     * @return outMin Array of minimum amounts for each base and limit position
     */
    function getOutMinForShares(
        address pos,
        uint256 shares,
        uint256 maxSlippage
    ) external view returns (uint256[2][] memory outMin) {
        // if (maxSlippage > 10000) revert MaxSlippageExceeded();
        MultiPositionManager manager = MultiPositionManager(payable(pos));
        return SimpleLensInMin.getOutMinForShares(manager, shares, maxSlippage);
    }



    // Helper struct to avoid stack too deep errors
    struct InitialDepositParams {
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        int24 limitWidth;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        bool isToken0;
        uint256 amount;
        uint256 maxSlippageBps;
    }

    // InitialDepositWithSwapParams and PreviewContext structs moved to SimpleLensInMin library

    /**
     * @dev Calculate consumed tokens by base positions
     */
    function _calculateConsumedTokens(
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory baseLiquidities,
        uint160 sqrtPriceX96
    ) private pure returns (uint256 consumedToken0, uint256 consumedToken1) {
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
    }

    /**
     * @notice Calculate deposit amounts for initial position and preview the rebalance
     * @param poolKey The PoolKey for the Uniswap V4 pool
     * @param params Parameters for the initial deposit calculation
     * @return otherAmount The amount of the other token needed
     * @return inMin The minimum amounts for each position (for slippage protection)
     * @return preview Detailed preview of the rebalance operation
     */
    function getAmountsForInitialDepositAndPreviewRebalance(
        PoolKey memory poolKey,
        InitialDepositParams calldata params
    ) external view returns (uint256 otherAmount, uint256[2][] memory inMin, SimpleLensInMin.RebalancePreview memory preview) {
        (uint160 sqrtPriceX96, int24 currentTick, , ) = poolManager.getSlot0(poolKey.toId());

        // Resolve center tick
        int24 resolvedCenterTick;
        if (params.centerTick == type(int24).max) {
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) compressed--;
            resolvedCenterTick = compressed * poolKey.tickSpacing;
        } else {
            resolvedCenterTick = params.centerTick;
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

        _calculateExpectedTotalsWithPoolKey(poolKey, allRanges, preview);
    }

    /**
     * @notice Preview initial deposit and rebalance with custom amounts (both token0 and token1)
     * @dev Similar to getAmountsForInitialDepositAndPreviewRebalance but accepts custom otherAmount
     *      instead of calculating it. Use this when you want to deposit a custom ratio that differs
     *      from the balanced ratio SimpleLens would recommend.
     * @param poolKey The pool key
     * @param params Initial deposit parameters (params.amount is one token, otherAmount is the other)
     * @param otherAmount The amount of the other token (if params.isToken0=true, this is token1 amount)
     * @return inMin Minimum input amounts for each base position
     * @return preview Detailed preview of the rebalance operation with actual distribution
     */
    function previewCustomInitialDepositAndRebalance(
        PoolKey memory poolKey,
        InitialDepositParams calldata params,
        uint256 otherAmount
    ) external view returns (uint256[2][] memory inMin, SimpleLensInMin.RebalancePreview memory preview) {
        (uint160 sqrtPriceX96, int24 currentTick, , ) = poolManager.getSlot0(poolKey.toId());

        // Resolve center tick
        int24 resolvedCenterTick;
        if (params.centerTick == type(int24).max) {
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) compressed--;
            resolvedCenterTick = compressed * poolKey.tickSpacing;
        } else {
            resolvedCenterTick = params.centerTick;
        }

        // Use provided otherAmount directly (no calculation)
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

        _calculateExpectedTotalsWithPoolKey(poolKey, allRanges, preview);
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
    ) private view returns (
        IMultiPositionManager.Range[] memory allRanges,
        uint128[] memory allLiquidities,
        uint256[2][] memory inMin
    ) {
        IMultiPositionManager.Range[] memory baseRanges;
        uint128[] memory baseLiquidities;
        uint256 amount0 = params.isToken0 ? params.amount : otherAmount;
        uint256 amount1 = params.isToken0 ? otherAmount : params.amount;

        // Generate base ranges in scoped block
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

            (baseRanges, baseLiquidities) = RebalanceLogic.generateRangesAndLiquiditiesWithPoolKey(
                poolKey,
                poolManager,
                ctx,
                amount0,
                amount1
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
            (allRanges, allLiquidities, inMin) = SimpleLensInMin.addLimitPositionsAndCalculateInMin(
                baseRanges,
                baseLiquidities,
                limitParams
            );
        }
    }

    /**
     * @dev Calculate other amount inline (lightweight version)
     */
    /**
     * @notice Calculate swap needed for initial deposit with any token ratio, then preview positions
     * @dev Supports any ratio: 100/0, 90/10, 50/50, etc. Calculates optimal swap to achieve strategy weights
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
    ) external view returns (
        uint256 finalAmount0,
        uint256 finalAmount1,
        SimpleLensRatioUtils.SwapParams memory swapParams,
        uint256[2][] memory inMin,
        SimpleLensInMin.RebalancePreview memory preview
    ) {
        // Delegate to library
        return SimpleLensInMin.calculateSwapAndPreview(poolManager, poolKey, params);
    }

    /**
     * @notice Calculate which token and how much to deposit/withdraw to achieve desired ratio
     * @param manager The MultiPositionManager contract
     * @param desiredRatio The desired ratio of token0 value to total value (1e18 = 100% token0, 5e17 = 50% token0)
     * @param isDeposit True to fix ratio via deposit, false to fix via withdrawal
     * @return isToken0 True if need to deposit/withdraw token0, false for token1
     * @return amount The amount of token to deposit/withdraw
     */
    function ratioFix(
        MultiPositionManager manager,
        uint256 desiredRatio,
        bool isDeposit
    ) external view returns (bool isToken0, uint256 amount) {
        return SimpleLensRatioUtils.ratioFix(manager, desiredRatio, isDeposit);
    }


    /**
     * @notice Calculate the corresponding token amount needed to maintain the current ratio, preview expected positions, and calculate inMin for slippage protection
     * @param manager The MultiPositionManager contract
     * @param isToken0 True if the provided amount is token0, false if token1
     * @param amount The amount of the token you want to deposit
     * @param maxSlippage Maximum slippage in basis points (10000 = 100%)
     * @return otherAmount The amount of the other token needed to maintain the current ratio
     * @return inMin Array of minimum amounts for each base and limit position
     * @return expectedPositions Array of PositionStats showing expected state after deposit
     */
    function getAmountsForExactRatioDeposit(
        MultiPositionManager manager,
        bool isToken0,
        uint256 amount,
        uint256 maxSlippage
    ) external view returns (uint256 otherAmount, uint256[2][] memory inMin, SimpleLensRatioUtils.PositionStats[] memory expectedPositions) {
        if (maxSlippage > 10000) revert MaxSlippageExceeded();
        
        // Calculate other amount needed
        otherAmount = SimpleLensRatioUtils.getAmountsForDeposit(manager, isToken0, amount);

        // Get current positions
        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        expectedPositions = new SimpleLensRatioUtils.PositionStats[](ranges.length);
        
        uint256 basePositionsLength = manager.basePositionsLength();
        
        if (basePositionsLength == 0) {
            return (otherAmount, inMin, expectedPositions);
        }

        // Prepare amounts for deposit
        uint256 deposit0 = isToken0 ? amount : otherAmount;
        uint256 deposit1 = isToken0 ? otherAmount : amount;

        // Calculate expected positions
        expectedPositions = SimpleLensRatioUtils.calculateExpectedPositionsAfterDeposit(
            manager,
            ranges,
            positionData,
            deposit0,
            deposit1
        );
        
        // Calculate inMin with slippage protection
        uint256 limitPositionsLength = manager.limitPositionsLength();
        inMin = new uint256[2][](basePositionsLength + limitPositionsLength);
        
        inMin = SimpleLensRatioUtils.calculateDirectDepositInMin(
            manager,
            deposit0,
            deposit1,
            maxSlippage,
            basePositionsLength,
            inMin
        );
    }

    /**
     * @notice Calculate amounts and preview positions for compound with optional deposit and swap
     * @dev Works for all scenarios: fee compound only, deposit+compound, with/without optimal swap
     *      Factors in: fees (from zeroBurn) + idle vault balance + deposit amounts
     * @param pos MultiPositionManager address
     * @param deposit0 Amount of token0 being deposited (0 for fee-only compound)
     * @param deposit1 Amount of token1 being deposited (0 for fee-only compound)
     * @param maxSlippageBps Maximum slippage in basis points (10000 = 100%)
     * @param needsSwap Whether to calculate and apply optimal swap (false = no swap, true = with swap)
     * @return finalAmount0 Final amount of token0 after optional swap (total available if no swap)
     * @return finalAmount1 Final amount of token1 after optional swap (total available if no swap)
     * @return swapParams Swap parameters (direction, amount, target weights)
     * @return inMin Array of minimum amounts for each base and limit position
     * @return expectedPositions Array of PositionStats showing expected state after compound
     */
    function getAmountsForDepositAndCompound(
        address pos,
        uint256 deposit0,
        uint256 deposit1,
        uint256 maxSlippageBps,
        bool needsSwap
    ) external view returns (
        uint256 finalAmount0,
        uint256 finalAmount1,
        SimpleLensRatioUtils.SwapParams memory swapParams,
        uint256[2][] memory inMin,
        SimpleLensRatioUtils.PositionStats[] memory expectedPositions
    ) {
        if (maxSlippageBps > 10000) revert MaxSlippageExceeded();

        MultiPositionManager manager = MultiPositionManager(payable(pos));
        return SimpleLensRatioUtils.getAmountsForDepositAndCompound(
            manager,
            deposit0,
            deposit1,
            maxSlippageBps,
            needsSwap
        );
    }

}