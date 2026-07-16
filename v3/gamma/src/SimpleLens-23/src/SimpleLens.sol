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

    struct PositionStats {
        // Tick range
        int24 tickLower;
        int24 tickUpper;
        
        // Price range (token0/token1) in sqrtX96 format
        uint160 sqrtPriceLower;
        uint160 sqrtPriceUpper;
        
        // Liquidity
        uint128 liquidity;
        
        // Token quantities and value
        uint256 token0Quantity;
        uint256 token1Quantity;
        uint256 valueInToken1;
    }

    struct WithdrawalPreview {
        // Input parameters
        uint256 withdrawAmount;
        bool withdrawToken0;
        
        // Current state
        PositionStats[] currentPositions;
        uint256 currentTotalToken0;
        uint256 currentTotalToken1;
        
        // After withdrawal state
        PositionStats[] newPositions;
        uint256 newTotalToken0;
        uint256 newTotalToken1;
        
        // Changes
        uint256 sharesBurned;
        uint256 token0Change;
        uint256 token1Change;
    }
    
    struct PreviewData {
        uint256 total0;
        uint256 total1;
        uint256 totalFee0;
        uint256 totalFee1;
        uint256 unusedAmount0;
        uint256 unusedAmount1;
        uint256 availableAfterFees0;
        uint256 availableAfterFees1;
        bool needToBurnPositions;
    }
    
    struct RebalancePreview {
        // Input parameters
        IMultiPositionManager.Range[] baseRanges;
        address strategy;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;

        // Calculated liquidities per position
        uint128[] liquidities;

        // Expected position data after rebalance
        PositionStats[] expectedPositions;

        // Total amounts after rebalance
        uint256 expectedTotal0;
        uint256 expectedTotal1;
    }

    struct LiquidityCalcParams {
        MultiPositionManager manager;
        IMultiPositionManager.Range[] baseRanges;
        uint256 amount0;
        uint256 amount1;
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint160 sqrtPriceX96;
        int24 currentTick;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
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

    struct GetWeightsParams {
        MultiPositionManager manager;
        IMultiPositionManager.Range[] baseRanges;
        address strategyAddress;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        int24 currentTick;
        int24 tickSpacing;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
    }

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

    /**
     * @notice Get position statistics for a MultiPositionManager
     */
    function getPositionStats(MultiPositionManager manager) 
        external 
        view 
        returns (PositionStats[] memory stats) 
    {
        (IMultiPositionManager.Range[] memory ranges, ) =
            manager.getPositions();

        stats = new PositionStats[](ranges.length);

        // Get pool manager and pool key for fetching amounts directly
        IPoolManager pm = manager.poolManager();
        PoolKey memory poolKey = manager.poolKey();

        for (uint256 i = 0; i < ranges.length; i++) {
            if (ranges[i].lowerTick == 0 && ranges[i].upperTick == 0) continue;

            // Use PoolManagerUtils to get amounts directly (same as MultiPositionManager does)
            // This avoids the overflow that happens when calculating from liquidity
            (
                uint128 liquidity,
                uint256 amount0,
                uint256 amount1,
                ,
            ) = PoolManagerUtils.getAmountsOf(pm, poolKey, ranges[i]);
            
            stats[i] = PositionStats({
                tickLower: ranges[i].lowerTick,
                tickUpper: ranges[i].upperTick,
                sqrtPriceLower: TickMath.getSqrtPriceAtTick(ranges[i].lowerTick),
                sqrtPriceUpper: TickMath.getSqrtPriceAtTick(ranges[i].upperTick),
                liquidity: liquidity,
                token0Quantity: amount0,
                token1Quantity: amount1,
                valueInToken1: amount1  // Simplified - just use token1 amount to avoid overflow
            });
        }
    }

    /**
     * @notice Preview a single token withdrawal - exactly mirrors withdrawSingleToken logic
     */
    function previewWithdrawCustom(
        MultiPositionManager manager,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) external view returns (WithdrawalPreview memory preview) {
        preview.withdrawAmount = amount0Desired + amount1Desired; // Total for display purposes
        preview.withdrawToken0 = amount0Desired > 0; // True if withdrawing any token0
        
        PreviewData memory data;
        
        // Get current positions and total amounts (including fees)
        preview.currentPositions = this.getPositionStats(manager);
        (data.total0, data.total1, data.totalFee0, data.totalFee1) = manager.getTotalAmounts();
        preview.currentTotalToken0 = data.total0;
        preview.currentTotalToken1 = data.total1;
        
        // Calculate shares to burn (same as in withdrawCustom)
        preview.sharesBurned = _calculateSharesToBurn(
            manager,
            amount0Desired,
            amount1Desired,
            data.total0,
            data.total1
        );
        
        // Get current unused balances from manager
        PoolKey memory poolKey = manager.poolKey();
        Currency currency0 = poolKey.currency0;
        Currency currency1 = poolKey.currency1;
        data.unusedAmount0 = Currency.unwrap(currency0) == address(0) ? 
            address(manager).balance : 
            IERC20(Currency.unwrap(currency0)).balanceOf(address(manager));
        data.unusedAmount1 = Currency.unwrap(currency1) == address(0) ? 
            address(manager).balance : 
            IERC20(Currency.unwrap(currency1)).balanceOf(address(manager));
        
        // After collecting fees, unused balance would be:
        data.availableAfterFees0 = data.unusedAmount0 + data.totalFee0;
        data.availableAfterFees1 = data.unusedAmount1 + data.totalFee1;
        
        // Check if we need to burn positions (mirrors withdrawCustom logic)
        data.needToBurnPositions =
            (data.availableAfterFees0 < amount0Desired) ||
            (data.availableAfterFees1 < amount1Desired);

        if (!data.needToBurnPositions) {
            // Sufficient balance after collecting fees - no position changes
            preview.newPositions = preview.currentPositions;
            preview.newTotalToken0 = data.total0 - amount0Desired;
            preview.newTotalToken1 = data.total1 - amount1Desired;
        } else {
            // Need to burn all positions
            // Calculate remainder after withdrawal
            uint256 remainingToken0 = data.total0 - amount0Desired;
            uint256 remainingToken1 = data.total1 - amount1Desired;
            
            // Set new totals after withdrawal
            preview.newTotalToken0 = remainingToken0;
            preview.newTotalToken1 = remainingToken1;
            
            // Since compound is removed, no new positions will be created
            // Remaining tokens stay in the contract as idle balance
            preview.newPositions = new PositionStats[](0);
        }
        
        // Calculate changes
        preview.token0Change = preview.currentTotalToken0 - preview.newTotalToken0;
        preview.token1Change = preview.currentTotalToken1 - preview.newTotalToken1;
    }
    
    function _calculateSharesToBurn(
        MultiPositionManager manager,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 totalToken0,
        uint256 totalToken1
    ) internal view returns (uint256) {
        uint256 totalSupply = manager.totalSupply();
        if (totalSupply == 0) return 0;

        // Get price data
        PriceData memory priceData = _getPriceData(manager);

        // Calculate total withdrawal value in token1 terms (combining both tokens)
        uint256 withdrawalValue0InToken1 = FullMath.mulDiv(amount0Desired, priceData.price, PRECISION);
        uint256 withdrawalValueInToken1 = withdrawalValue0InToken1 + amount1Desired;

        // Calculate pool value in token1 terms
        uint256 poolValueInToken1 = totalToken1 +
            FullMath.mulDiv(totalToken0, priceData.price, PRECISION);
        
        
        // Calculate shares to burn (same formula as deposit but inverse)
        uint256 shares = FullMath.mulDiv(
            withdrawalValueInToken1,
            totalSupply,
            poolValueInToken1
        );

        return shares;
    }
    
    function _getPriceData(MultiPositionManager manager) internal view returns (PriceData memory data) {
        // Get pool state using consolidated helper
        (data.sqrtPriceX96, data.tick) = _getPoolStateFromManager(manager);
        
        // Calculate price of token0 in terms of token1 with PRECISION
        data.price = FullMath.mulDiv(
            FullMath.mulDiv(uint256(data.sqrtPriceX96), uint256(data.sqrtPriceX96), 1 << 96),
            PRECISION,
            1 << 96
        );
    }

    function _calculatePositionStats(
        IMultiPositionManager.Position memory position,
        uint128 liquidity,
        uint160 sqrtPriceX96
    ) internal pure returns (PositionStats memory stat) {
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

    function _getPoolStateFromManager(MultiPositionManager manager) internal view returns (uint160 sqrtPriceX96, int24 tick) {
        return _getPoolState(manager.poolKey());
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
     * @return preview Detailed preview of the rebalance operation
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
        bool useCarpet
    ) public view returns (RebalancePreview memory preview) {
        preview.strategy = strategyAddress;
        preview.centerTick = centerTick;
        preview.ticksLeft = ticksLeft;
        preview.ticksRight = ticksRight;
        
        // Generate ranges in helper function
        preview.baseRanges = _generateRangesFromStrategy(
            manager,
            strategyAddress,
            centerTick,
            ticksLeft,
            ticksRight,
            useCarpet
        );
        
        // Get current total amounts (including fees)
        (uint256 total0, uint256 total1, , ) = manager.getTotalAmounts();
        
        // Calculate liquidities using strategy - simplified call
        preview.liquidities = _calculatePreviewLiquidities(
            manager,
            preview.baseRanges,
            total0,
            total1,
            strategyAddress,
            centerTick,
            ticksLeft,
            ticksRight,
            weight0,
            weight1,
            useCarpet
        );
        
        // Add limit positions if limitWidth > 0
        if (limitWidth > 0) {
            // Calculate limit positions with conflict checking
            (IMultiPositionManager.Range memory lowerLimit, IMultiPositionManager.Range memory upperLimit) = 
                _calculateLimitRanges(manager, limitWidth, preview.baseRanges, ticksLeft, ticksRight);
            
            // Expand arrays to include limit positions
            uint256 baseLength = preview.baseRanges.length;
            IMultiPositionManager.Range[] memory allRanges = new IMultiPositionManager.Range[](baseLength + 2);
            uint128[] memory allLiquidities = new uint128[](baseLength + 2);
            
            // Copy base ranges and liquidities
            for (uint256 i = 0; i < baseLength; i++) {
                allRanges[i] = preview.baseRanges[i];
                allLiquidities[i] = preview.liquidities[i];
            }
            
            // Add limit ranges (liquidities will be calculated based on remaining tokens)
            allRanges[baseLength] = lowerLimit;
            allRanges[baseLength + 1] = upperLimit;
            allLiquidities[baseLength] = 0; // Will be filled with remaining token1
            allLiquidities[baseLength + 1] = 0; // Will be filled with remaining token0
            
            // Update preview with all ranges
            preview.baseRanges = allRanges;
            preview.liquidities = allLiquidities;
        }
        
        // Calculate expected totals
        _calculateExpectedTotals(manager, preview.baseRanges, preview);
    }

    function _calculateLimitRanges(
        MultiPositionManager manager,
        int24 limitWidth,
        IMultiPositionManager.Range[] memory baseRanges,
        uint24 ticksLeft,
        uint24 ticksRight
    ) private view returns (
        IMultiPositionManager.Range memory lowerLimit,
        IMultiPositionManager.Range memory upperLimit
    ) {
        PoolKey memory poolKey = manager.poolKey();
        int24 tickSpacing = poolKey.tickSpacing;

        // Adjust limitWidth to be a multiple of tickSpacing
        if (limitWidth % tickSpacing != 0) {
            limitWidth = (limitWidth / tickSpacing + 1) * tickSpacing;
        }

        // Simple check: if limitWidth equals any base range width, adjust it
        for (uint256 i = 0; i < baseRanges.length; i++) {
            int24 rangeWidth = baseRanges[i].upperTick - baseRanges[i].lowerTick;
            if (rangeWidth == limitWidth) {
                limitWidth = limitWidth + tickSpacing;
                break;
            }
        }

        // Get current tick
        (, int24 tick) = _getPoolStateFromManager(manager);
        int24 baseTick;

        // Align baseTick with tick spacing
        if (tick % tickSpacing == 0) {
            baseTick = tick;
        } else if (tick % tickSpacing > 0) {
            baseTick = (tick / tickSpacing) * tickSpacing;
        } else {
            baseTick = ((tick - tickSpacing + 1) / tickSpacing) * tickSpacing;
        }

        // Calculate limit positions
        lowerLimit.lowerTick = _roundToTickSpacing(baseTick - limitWidth, tickSpacing, true);
        lowerLimit.upperTick = _roundToTickSpacing(baseTick, tickSpacing, false);

        upperLimit.lowerTick = _roundToTickSpacing(baseTick + tickSpacing, tickSpacing, true);
        upperLimit.upperTick = _roundToTickSpacing(baseTick + tickSpacing + limitWidth, tickSpacing, false);

        // Ensure within usable tick range
        int24 minUsableTick = TickMath.minUsableTick(tickSpacing);
        int24 maxUsableTick = TickMath.maxUsableTick(tickSpacing);

        if (lowerLimit.lowerTick < minUsableTick) lowerLimit.lowerTick = minUsableTick;
        if (lowerLimit.upperTick > maxUsableTick) lowerLimit.upperTick = maxUsableTick;
        if (upperLimit.lowerTick < minUsableTick) upperLimit.lowerTick = minUsableTick;
        if (upperLimit.upperTick > maxUsableTick) upperLimit.upperTick = maxUsableTick;
    }

    function _roundToTickSpacing(int24 tick, int24 tickSpacing, bool roundDown) private pure returns (int24) {
        int24 remainder = tick % tickSpacing;
        if (remainder == 0) return tick;

        if (roundDown) {
            return tick < 0 ? ((tick - tickSpacing + 1) / tickSpacing) * tickSpacing : (tick / tickSpacing) * tickSpacing;
        } else {
            return tick < 0 ? (tick / tickSpacing) * tickSpacing : ((tick + tickSpacing - 1) / tickSpacing) * tickSpacing;
        }
    }

    function _generateRangesFromStrategy(
        MultiPositionManager manager,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        bool useCarpet
    ) private view returns (IMultiPositionManager.Range[] memory baseRanges) {
        // Get pool key for tick spacing
        PoolKey memory poolKey = manager.poolKey();
        int24 tickSpacing = poolKey.tickSpacing;

        // Resolve CENTER_AT_CURRENT_TICK sentinel value (same as RebalanceLogic)
        if (centerTick == type(int24).max) {
            (, int24 currentTick) = _getPoolStateFromManager(manager);
            int24 compressed = currentTick / tickSpacing;
            if (currentTick < 0 && currentTick % tickSpacing != 0) {
                compressed--; // Round down for negative ticks with remainder
            }
            centerTick = compressed * tickSpacing;
        }

        // Generate ranges from strategy
        if (strategyAddress == address(0)) revert NoStrategySpecified();
        ILiquidityStrategy strategy = ILiquidityStrategy(strategyAddress);

        int24[] memory lowerTicks;
        int24[] memory upperTicks;

        if (useCarpet) {
            (lowerTicks, upperTicks) = strategy.generateRanges(
                centerTick,
                ticksLeft,
                ticksRight,
                tickSpacing,
                useCarpet
            );
        } else {
            (lowerTicks, upperTicks) = strategy.generateRanges(
                centerTick,
                ticksLeft,
                ticksRight,
                tickSpacing,
                false
            );
        }
        
        // Convert to Range array
        baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint i = 0; i < lowerTicks.length; i++) {
            baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
        }
    }

    // PoolKey-based version for use without MultiPositionManager
    function _calculateLimitRangesWithPoolKey(
        PoolKey memory poolKey,
        int24 limitWidth,
        IMultiPositionManager.Range[] memory baseRanges,
        uint24 ticksLeft,
        uint24 ticksRight
    ) private view returns (
        IMultiPositionManager.Range memory lowerLimit,
        IMultiPositionManager.Range memory upperLimit
    ) {
        int24 tickSpacing = poolKey.tickSpacing;
        (, int24 currentTick) = _getPoolState(poolKey);

        // Calculate the outer boundary ticks
        int24 leftBoundary = currentTick - int24(ticksLeft);
        int24 rightBoundary = currentTick + int24(ticksRight);

        // Lower limit position (below current price)
        lowerLimit.upperTick = leftBoundary;
        lowerLimit.lowerTick = leftBoundary - limitWidth;

        // Upper limit position (above current price)
        upperLimit.lowerTick = rightBoundary;
        upperLimit.upperTick = rightBoundary + limitWidth;

        // Round to tick spacing
        lowerLimit.lowerTick = _roundToTickSpacing(lowerLimit.lowerTick, tickSpacing, true);
        lowerLimit.upperTick = _roundToTickSpacing(lowerLimit.upperTick, tickSpacing, false);
        upperLimit.lowerTick = _roundToTickSpacing(upperLimit.lowerTick, tickSpacing, true);
        upperLimit.upperTick = _roundToTickSpacing(upperLimit.upperTick, tickSpacing, false);

        // Ensure within usable tick range
        int24 minUsableTick = TickMath.minUsableTick(tickSpacing);
        int24 maxUsableTick = TickMath.maxUsableTick(tickSpacing);

        if (lowerLimit.lowerTick < minUsableTick) lowerLimit.lowerTick = minUsableTick;
        if (lowerLimit.upperTick > maxUsableTick) lowerLimit.upperTick = maxUsableTick;
        if (upperLimit.lowerTick < minUsableTick) upperLimit.lowerTick = minUsableTick;
        if (upperLimit.upperTick > maxUsableTick) upperLimit.upperTick = maxUsableTick;
    }

    function _generateRangesFromStrategyWithPoolKey(
        PoolKey memory poolKey,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        bool useCarpet
    ) private view returns (IMultiPositionManager.Range[] memory baseRanges) {
        int24 tickSpacing = poolKey.tickSpacing;

        // Resolve CENTER_AT_CURRENT_TICK sentinel value (same as RebalanceLogic)
        if (centerTick == type(int24).max) {
            (, int24 currentTick) = _getPoolState(poolKey);
            int24 compressed = currentTick / tickSpacing;
            if (currentTick < 0 && currentTick % tickSpacing != 0) {
                compressed--; // Round down for negative ticks with remainder
            }
            centerTick = compressed * tickSpacing;
        }

        // Generate ranges from strategy
        if (strategyAddress == address(0)) revert NoStrategySpecified();
        ILiquidityStrategy strategy = ILiquidityStrategy(strategyAddress);

        int24[] memory lowerTicks;
        int24[] memory upperTicks;

        if (useCarpet) {
            (lowerTicks, upperTicks) = strategy.generateRanges(
                centerTick,
                ticksLeft,
                ticksRight,
                tickSpacing,
                useCarpet
            );
        } else {
            (lowerTicks, upperTicks) = strategy.generateRanges(
                centerTick,
                ticksLeft,
                ticksRight,
                tickSpacing,
                false
            );
        }

        // Convert to Range array
        baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint i = 0; i < lowerTicks.length; i++) {
            baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
        }
    }

    function _calculateExpectedTotals(
        MultiPositionManager manager,
        IMultiPositionManager.Range[] memory baseRanges,
        RebalancePreview memory preview
    ) private view {
        preview.expectedPositions = new PositionStats[](baseRanges.length);
        preview.expectedTotal0 = 0;
        preview.expectedTotal1 = 0;

        (uint160 sqrtPriceX96, ) = _getPoolStateFromManager(manager);

        // Get pool key once
        PoolKey memory poolKey = manager.poolKey();

        for (uint256 i = 0; i < baseRanges.length; i++) {
            IMultiPositionManager.Position memory pos = IMultiPositionManager.Position({
                poolKey: poolKey,
                lowerTick: baseRanges[i].lowerTick,
                upperTick: baseRanges[i].upperTick
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

    // PoolKey-based version for use without MultiPositionManager
    function _calculateExpectedTotalsWithPoolKey(
        PoolKey memory poolKey,
        IMultiPositionManager.Range[] memory baseRanges,
        RebalancePreview memory preview
    ) private view {
        preview.expectedPositions = new PositionStats[](baseRanges.length);
        preview.expectedTotal0 = 0;
        preview.expectedTotal1 = 0;

        (uint160 sqrtPriceX96, ) = _getPoolState(poolKey);

        for (uint256 i = 0; i < baseRanges.length; i++) {
            IMultiPositionManager.Position memory pos = IMultiPositionManager.Position({
                poolKey: poolKey,
                lowerTick: baseRanges[i].lowerTick,
                upperTick: baseRanges[i].upperTick
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

    function _calculatePreviewLiquidities(
        MultiPositionManager manager,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256 total0,
        uint256 total1,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet
    ) private view returns (uint128[] memory) {
        LiquidityCalcParams memory params;
        params.manager = manager;
        params.baseRanges = baseRanges;
        params.amount0 = total0;
        params.amount1 = total1;
        params.strategyAddress = strategyAddress;
        params.ticksLeft = ticksLeft;
        params.ticksRight = ticksRight;
        params.weight0 = weight0;
        params.weight1 = weight1;
        params.useCarpet = useCarpet;

        {
            (uint160 sqrtPriceX96, int24 currentTick) = _getPoolStateFromManager(manager);

            // Resolve sentinel value (same as RebalanceLogic)
            if (centerTick == type(int24).max) {
                PoolKey memory poolKey = manager.poolKey();
                int24 tickSpacing = poolKey.tickSpacing;
                int24 compressed = currentTick / tickSpacing;
                if (currentTick < 0 && currentTick % tickSpacing != 0) {
                    compressed--; // Round down for negative ticks with remainder
                }
                centerTick = compressed * tickSpacing;
            }

            params.sqrtPriceX96 = sqrtPriceX96;
            params.currentTick = currentTick;
            params.centerTick = centerTick;
        }

        return _calculateLiquiditiesWithStrategy(params);
    }
    
    /**
     * @notice Calculate liquidities using strategy (mirrors MultiPositionManager logic)
     */
    function _calculateLiquiditiesWithStrategy(
        LiquidityCalcParams memory params
    ) internal view returns (uint128[] memory liquidities) {
        // Get tick spacing from manager
        PoolKey memory poolKey = params.manager.poolKey();
        int24 tickSpacing = poolKey.tickSpacing;

        // Get weights from strategy or uniform
        GetWeightsParams memory weightParams = GetWeightsParams({
            manager: params.manager,
            baseRanges: params.baseRanges,
            strategyAddress: params.strategyAddress,
            centerTick: params.centerTick,
            ticksLeft: params.ticksLeft,
            ticksRight: params.ticksRight,
            currentTick: params.currentTick,
            tickSpacing: tickSpacing,
            weight0: params.weight0,
            weight1: params.weight1,
            useCarpet: params.useCarpet
        });

        // Prepare params for library call
        SimpleLensInMin.GetWeightsParams memory libWeightParams = SimpleLensInMin.GetWeightsParams({
            baseRanges: weightParams.baseRanges,
            strategyAddress: weightParams.strategyAddress,
            currentTick: weightParams.currentTick,
            centerTick: weightParams.centerTick,
            ticksLeft: weightParams.ticksLeft,
            ticksRight: weightParams.ticksRight,
            weight0: weightParams.weight0,
            weight1: weightParams.weight1,
            useCarpet: weightParams.useCarpet,
            tickSpacing: weightParams.tickSpacing
        });

        uint256[] memory weights = SimpleLensInMin.getWeights(libWeightParams);

        // Calculate liquidities in separate function to avoid stack depth
        liquidities = SimpleLensInMin.calculateLiquidities(
            params.baseRanges,
            weights,
            params.amount0,
            params.amount1,
            params.sqrtPriceX96
        );
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
        if (maxSlippage > 10000) revert MaxSlippageExceeded(); // Max 100%

        MultiPositionManager manager = MultiPositionManager(payable(pos));
        uint256 basePositionsLength = manager.basePositionsLength();
        uint256 limitPositionsLength = manager.limitPositionsLength();
        uint256 totalPositionsLength = basePositionsLength + limitPositionsLength;

        if (totalPositionsLength == 0) {
            return outMin;
        }

        // Get all positions (base + limit)
        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        outMin = new uint256[2][](totalPositionsLength);
        uint256 totalSupply = manager.totalSupply();

        // Calculate outMin in separate function to avoid stack depth
        _calculateOutMin(
            outMin,
            ranges,
            positionData,
            shares,
            totalSupply,
            maxSlippage,
            manager.poolManager(),
            manager.poolKey()
        );

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
            // Calculate the liquidity proportion for this position
            uint256 liquidityToBurn = FullMath.mulDiv(
                positionData[i].liquidity,
                shares,
                totalSupply
            );

            // Get the exact amounts for this liquidity
            (uint256 amount0, uint256 amount1) = PoolManagerUtils.getAmountsForLiquidity(
                pm,
                poolKey,
                ranges[i],
                uint128(liquidityToBurn)
            );

            // Apply slippage tolerance using BPS
            unchecked {
                outMin[i] = [
                    amount0 * slippageMultiplier / 10000,
                    amount1 * slippageMultiplier / 10000
                ];
            }
        }
    }

    /**
     * @notice Calculate minimum input amounts for deposit with slippage protection
     * @param pos MultiPositionManager address
     * @param amount0Desired Desired amount of token0 to deposit
     * @param amount1Desired Desired amount of token1 to deposit
     * @param maxSlippage Maximum slippage in basis points (10000 = 100%)
     * @param directDeposit Whether this is a direct deposit
     * @return inMin Array of minimum amounts for each base position
     */
    function getInMinForDeposit(
        address pos,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 maxSlippage,
        bool directDeposit
    ) external view returns (uint256[2][] memory inMin) {
        if (maxSlippage > 10000) revert MaxSlippageExceeded();
        
        MultiPositionManager manager = MultiPositionManager(payable(pos));
        uint256 basePositionsLength = manager.basePositionsLength();
        
        if (basePositionsLength == 0) {
            return inMin;
        }
        
        // Always include space for 2 limit positions
        inMin = new uint256[2][](basePositionsLength + 2);
        
        // For direct deposit, calculate proportional distribution based on current token amounts
        if (directDeposit) {
            inMin = SimpleLensRatioUtils.calculateDirectDepositInMin(
                manager,
                amount0Desired,
                amount1Desired,
                maxSlippage,
                basePositionsLength,
                inMin
            );
        }
        // For regular deposit, inMin would be handled differently (not implemented here)

        return inMin;
    }

    /**
     * @notice Calculate the corresponding token amount needed to maintain the current ratio
     * @param manager The MultiPositionManager contract
     * @param isToken0 True if the provided amount is token0, false if token1
     * @param amount The amount of the token you want to deposit
     * @return The amount of the other token needed to maintain the current ratio
     */
    function getAmountsForDeposit(
        MultiPositionManager manager,
        bool isToken0,
        uint256 amount
    ) external view returns (uint256) {
        return SimpleLensRatioUtils.getAmountsForDeposit(manager, isToken0, amount);
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
    ) external view returns (uint256 otherAmount, uint256[2][] memory inMin, RebalancePreview memory preview) {
        // Generate ranges from strategy
        IMultiPositionManager.Range[] memory ranges = _generateRangesFromStrategyWithPoolKey(
            poolKey,
            params.strategyAddress,
            params.centerTick,
            params.ticksLeft,
            params.ticksRight,
            params.useCarpet
        );

        // Add limit ranges if needed
        if (params.limitWidth > 0) {
            (IMultiPositionManager.Range memory lowerLimit, IMultiPositionManager.Range memory upperLimit) =
                _calculateLimitRangesWithPoolKey(poolKey, params.limitWidth, ranges, params.ticksLeft, params.ticksRight);

            // Expand array to include limit positions
            IMultiPositionManager.Range[] memory allRanges = new IMultiPositionManager.Range[](ranges.length + 2);
            for (uint256 i = 0; i < ranges.length; i++) {
                allRanges[i] = ranges[i];
            }
            allRanges[ranges.length] = lowerLimit;
            allRanges[ranges.length + 1] = upperLimit;
            ranges = allRanges;
        }

        // Use library to calculate initial deposit amounts
        uint256[] memory weights;
        uint160 sqrtPriceX96;
        int24 resolvedCenterTick;

        SimpleLensRatioUtils.InitialDepositParams memory libParams = SimpleLensRatioUtils.InitialDepositParams({
            strategyAddress: params.strategyAddress,
            centerTick: params.centerTick,
            ticksLeft: params.ticksLeft,
            ticksRight: params.ticksRight,
            limitWidth: params.limitWidth,
            weight0: params.weight0,
            weight1: params.weight1,
            useCarpet: params.useCarpet,
            isToken0: params.isToken0,
            amount: params.amount,
            maxSlippageBps: params.maxSlippageBps
        });

        (otherAmount, weights, sqrtPriceX96, resolvedCenterTick) =
            SimpleLensRatioUtils.calculateInitialDepositAmounts(ranges, poolKey, poolManager, libParams);

        // Calculate inMin using the already-calculated ranges and weights
        inMin = SimpleLensInMin.calculateInMinFromExistingData(
            ranges,
            weights,
            params.isToken0 ? params.amount : otherAmount,
            params.isToken0 ? otherAmount : params.amount,
            sqrtPriceX96,
            params.maxSlippageBps
        );

        // Populate the RebalancePreview struct
        preview.strategy = params.strategyAddress;
        preview.centerTick = resolvedCenterTick;
        preview.ticksLeft = params.ticksLeft;
        preview.ticksRight = params.ticksRight;
        preview.baseRanges = ranges;

        // Calculate liquidities using library
        preview.liquidities = SimpleLensRatioUtils._calculateInitialLiquiditiesPublic(
            ranges,
            params.isToken0 ? params.amount : otherAmount,
            params.isToken0 ? otherAmount : params.amount,
            sqrtPriceX96,
            weights
        );

        // Calculate expected totals for the preview
        _calculateExpectedTotalsWithPoolKey(poolKey, ranges, preview);

        return (otherAmount, inMin, preview);
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


    function getMaxWithdrawable(
        address pos
    ) external view returns (uint256 maxToken0, uint256 maxToken1) {
        return SimpleLensRatioUtils.getMaxWithdrawable(MultiPositionManager(payable(pos)));
    }

    /**
     * @notice Calculate minimum output and input amounts for rebalance with slippage protection
     * @param pos MultiPositionManager address
     * @param strategyAddress Address of strategy to use for new positions
     * @param centerTick Center tick for distribution
     * @param ticksLeft Number of ticks to the left of center
     * @param ticksRight Number of ticks to the right of center
     * @param limitWidth Width of limit positions (0 for no limit positions)
     * @param weight0 Weight for token0 (0 for proportional, otherwise explicit weight)
     * @param weight1 Weight for token1 (0 for proportional, otherwise explicit weight)
     * @param useCarpet Whether to include carpet positions
     * @param swap True for rebalanceSwap, false for regular rebalance
     * @param maxSlippage Maximum slippage in basis points (10000 = 100%)
     * @return outMin Array of minimum amounts for withdrawing from old positions
     * @return inMin Array of minimum amounts for depositing to new positions
     */
    function getOutMinAndInMinForRebalance(
        address pos,
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
        if (maxSlippage > 10000) revert MaxSlippageExceeded();

        MultiPositionManager manager = MultiPositionManager(payable(pos));

        outMin = _calculateOutMinForRebalance(manager, maxSlippage);

        // Create struct separately to avoid stack too deep
        SimpleLensInMin.InMinRebalanceParams memory inMinParams;
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

        inMin = SimpleLensInMin.calculateInMinForRebalance(inMinParams);

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

    function _getTotalAmountsForRebalance(
        MultiPositionManager manager
    ) private view returns (uint256 amount0, uint256 amount1) {
        IPoolManager pm = manager.poolManager();
        PoolKey memory poolKey = manager.poolKey();

        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) = manager.getPositions();

        for (uint i = 0; i < ranges.length; ++i) {
            (uint256 amt0, uint256 amt1) = PoolManagerUtils.getAmountsForLiquidity(
                pm,
                poolKey,
                ranges[i],
                uint128(positionData[i].liquidity)
            );
            amount0 += amt0;
            amount1 += amt1;
        }

        amount0 += Currency.unwrap(poolKey.currency0) == address(0)
            ? address(manager).balance
            : IERC20(Currency.unwrap(poolKey.currency0)).balanceOf(address(manager));
        amount1 += IERC20(Currency.unwrap(poolKey.currency1)).balanceOf(address(manager));
    }

    function _simulateSwapForRebalance(
        MultiPositionManager manager,
        uint256 amount0,
        uint256 amount1,
        uint256 weight0,
        uint256 weight1
    ) private view returns (uint256 newAmount0, uint256 newAmount1) {
        IPoolManager pm = manager.poolManager();
        PoolKey memory poolKey = manager.poolKey();

        (uint160 sqrtPriceX96ForSwap, , , ) = pm.getSlot0(poolKey.toId());

        (bool swapToken0, uint256 swapAmount) = RebalanceLogic.calculateOptimalSwap(
            amount0,
            amount1,
            sqrtPriceX96ForSwap,
            weight0,
            weight1
        );

        newAmount0 = amount0;
        newAmount1 = amount1;

        if (swapAmount > 0) {
            if (swapToken0) {
                uint256 amountOut = FullMath.mulDiv(
                    FullMath.mulDiv(swapAmount, uint256(sqrtPriceX96ForSwap), 1 << 96),
                    uint256(sqrtPriceX96ForSwap),
                    1 << 96
                );
                newAmount0 -= swapAmount;
                newAmount1 += amountOut;
            } else {
                uint256 amountOut = FullMath.mulDiv(
                    FullMath.mulDiv(swapAmount, 1 << 96, uint256(sqrtPriceX96ForSwap)),
                    1 << 96,
                    uint256(sqrtPriceX96ForSwap)
                );
                newAmount1 -= swapAmount;
                newAmount0 += amountOut;
            }
        }
    }

    function _getRangesAndWeights(
        MultiPositionManager manager,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet
    ) private view returns (
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        uint256[] memory weights,
        uint160 sqrtPriceX96
    ) {
        PoolKey memory poolKey = manager.poolKey();
        ILiquidityStrategy strategy = ILiquidityStrategy(strategyAddress);

        // Generate ranges
        (lowerTicks, upperTicks) = strategy.generateRanges(
            centerTick,
            ticksLeft,
            ticksRight,
            poolKey.tickSpacing,
            useCarpet
        );

        // Get current price and tick
        {
            IPoolManager pm = manager.poolManager();
            int24 currentTick;
            (sqrtPriceX96, currentTick, , ) = pm.getSlot0(poolKey.toId());

            // Calculate densities
            weights = strategy.calculateDensities(
                lowerTicks,
                upperTicks,
                currentTick,
                centerTick,
                ticksLeft,
                ticksRight,
                weight0,
                weight1,
                useCarpet,
                poolKey.tickSpacing,
                weight0 == 0 && weight1 == 0
            );
        }
    }

    function _getAmountsWithOptionalSwap(
        MultiPositionManager manager,
        uint256 weight0,
        uint256 weight1,
        bool swap
    ) private view returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = _getTotalAmountsForRebalance(manager);

        if (swap) {
            (amount0, amount1) = _simulateSwapForRebalance(manager, amount0, amount1, weight0, weight1);
        }
    }


    function _calculateInMinForRebalance(
        InMinRebalanceParams memory params
    ) private view returns (uint256[2][] memory) {
        return _calculateInMinInternal(params);
    }

    function _getWeightsForStrategy(
        address strategyAddress,
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        int24 currentTick,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet,
        int24 tickSpacing
    ) private view returns (uint256[] memory) {
        ILiquidityStrategy strategy = ILiquidityStrategy(strategyAddress);
        return strategy.calculateDensities(
            lowerTicks,
            upperTicks,
            currentTick,
            centerTick,
            ticksLeft,
            ticksRight,
            weight0,
            weight1,
            useCarpet,
            tickSpacing,
            weight0 == 0 && weight1 == 0
        );
    }

    function _callGenerateRanges(
        address strategyAddress,
        DensityCalcParams memory params,
        int24 tickSpacing
    ) private view returns (int24[] memory lowerTicks, int24[] memory upperTicks) {
        bytes memory data = abi.encodeWithSelector(
            ILiquidityStrategy.generateRanges.selector,
            params.centerTick,
            params.ticksLeft,
            params.ticksRight,
            tickSpacing,
            params.useCarpet
        );

        (bool success, bytes memory result) = strategyAddress.staticcall(data);
        if (!success) revert GenerateRangesFailed();

        return abi.decode(result, (int24[], int24[]));
    }

    struct DensityCallInputs {
        int24[] lowerTicks;
        int24[] upperTicks;
        int24 currentTick;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        int24 tickSpacing;
        bool weightsAreProportional;
    }

    function _buildDensitiesCallData(
        DensityCallInputs memory inputs
    ) private pure returns (bytes memory) {
        return abi.encodeWithSelector(
            ILiquidityStrategy.calculateDensities.selector,
            inputs.lowerTicks,
            inputs.upperTicks,
            inputs.currentTick,
            inputs.centerTick,
            inputs.ticksLeft,
            inputs.ticksRight,
            inputs.weight0,
            inputs.weight1,
            inputs.useCarpet,
            inputs.tickSpacing,
            inputs.weightsAreProportional
        );
    }

    function _callCalculateDensities(
        DensityCalcParams memory params,
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        int24 currentTick,
        int24 tickSpacing
    ) private view returns (uint256[] memory) {
        // Build inputs struct for call data
        DensityCallInputs memory inputs = DensityCallInputs({
            lowerTicks: lowerTicks,
            upperTicks: upperTicks,
            currentTick: currentTick,
            centerTick: params.centerTick,
            ticksLeft: params.ticksLeft,
            ticksRight: params.ticksRight,
            weight0: params.weight0,
            weight1: params.weight1,
            useCarpet: params.useCarpet,
            tickSpacing: tickSpacing,
            weightsAreProportional: params.weightsAreProportional
        });

        bytes memory callData = _buildDensitiesCallData(inputs);

        // Perform the static call
        (bool success, bytes memory result) = params.strategyAddress.staticcall(callData);
        if (!success) revert CalculateDensitiesFailed();

        return abi.decode(result, (uint256[]));
    }

    function _calculateInMinWithStructs(
        DensityCalcParams memory densityParams,
        InMinCalcData memory calcData
    ) private view returns (uint256[2][] memory) {
        int24[] memory lowerTicks;
        int24[] memory upperTicks;
        uint256[] memory weights;

        // Step 1: Generate ranges in its own scope
        {
            (lowerTicks, upperTicks) = _callGenerateRanges(
                densityParams.strategyAddress,
                densityParams,
                calcData.tickSpacing
            );
        }

        // Step 2: Calculate weights in its own scope
        {
            weights = _callCalculateDensities(
                densityParams,
                lowerTicks,
                upperTicks,
                calcData.currentTick,
                calcData.tickSpacing
            );
        }

        // Step 3: Calculate final inMin in its own scope
        {
            return SimpleLensInMin.calculateInMinArrayFromAmounts(
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

    function _calculateInMinInternal(
        InMinRebalanceParams memory params
    ) private view returns (uint256[2][] memory) {
        DensityCalcParams memory densityParams;
        InMinCalcData memory calcData;

        // Block 1: Get amounts
        {
            (uint256 amount0, uint256 amount1) = _getTotalAmountsForRebalance(params.manager);
            if (params.swap) {
                (amount0, amount1) = _simulateSwapForRebalance(params.manager, amount0, amount1, params.weight0, params.weight1);
            }
            calcData.amount0 = amount0;
            calcData.amount1 = amount1;
            calcData.maxSlippage = params.maxSlippage;
        }

        // Block 2: Get pool state and build structs
        {
            PoolKey memory poolKey = params.manager.poolKey();
            IPoolManager pm = params.manager.poolManager();
            (uint160 sqrtPriceX96, int24 currentTick, , ) = pm.getSlot0(poolKey.toId());

            calcData.tickSpacing = poolKey.tickSpacing;
            calcData.sqrtPriceX96 = sqrtPriceX96;
            calcData.currentTick = currentTick;

            densityParams.strategyAddress = params.strategyAddress;

            // Handle sentinel value for using current tick
            if (params.centerTick == type(int24).max) {
                // Always round down to ensure the range contains the current tick
                int24 compressed = currentTick / poolKey.tickSpacing;
                if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) {
                    compressed--; // Round down for negative ticks with remainder
                }
                densityParams.centerTick = compressed * poolKey.tickSpacing;
            } else {
                densityParams.centerTick = params.centerTick;
            }

            densityParams.ticksLeft = params.ticksLeft;
            densityParams.ticksRight = params.ticksRight;
            densityParams.weight0 = params.weight0;
            densityParams.weight1 = params.weight1;
            densityParams.useCarpet = params.useCarpet;
            densityParams.weightsAreProportional = (params.weight0 == 0 && params.weight1 == 0);
        }

        return _calculateInMinWithStructs(densityParams, calcData);
    }

}