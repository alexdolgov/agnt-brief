// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { MultiPositionManager } from "./MultiPositionManager.sol";
import { IMultiPositionManager } from "./interfaces/IMultiPositionManager.sol";
import { ILiquidityStrategy } from "./strategies/ILiquidityStrategy.sol";
import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { PoolId, PoolIdLibrary } from "v4-core/types/PoolId.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { Currency } from "v4-core/types/Currency.sol";
import { IHooks } from "v4-core/interfaces/IHooks.sol";
import { TickMath } from "v4-core/libraries/TickMath.sol";
import { FullMath } from "v4-core/libraries/FullMath.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { DepositRatioLib } from "./libraries/DepositRatioLib.sol";
import { LiquidityAmounts } from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { PoolManagerUtils } from "./PoolManagerUtils.sol";
import { RebalanceLogic } from "./lib/RebalanceLogic.sol";

/**
 * @title MultiPositionLens
 * @notice Simplified read-only contract for previewing MultiPositionManager withdrawals
 */
contract MultiPositionLens {
    using StateLibrary for IPoolManager;
    using PoolIdLibrary for PoolKey;

    // Custom errors
    error NoStrategySpecified();
    error MaxSlippageExceeded();
    error RatioMustBeLessThanOrEqualToOne();
    error GenerateRangesFailed();
    error CalculateDensitiesFailed();

    uint256 constant PRECISION = 1e18;

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
        IPoolManager poolManager = manager.poolManager();
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
            ) = PoolManagerUtils.getAmountsOf(poolManager, poolKey, ranges[i]);
            
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
        // Get pool key components
        PoolKey memory poolKey = manager.poolKey();
        Currency currency0 = poolKey.currency0;
        Currency currency1 = poolKey.currency1;
        uint24 fee = poolKey.fee;
        int24 tickSpacing = poolKey.tickSpacing;
        IHooks hooks = poolKey.hooks;
        PoolKey memory key = PoolKey(currency0, currency1, fee, tickSpacing, hooks);
        PoolId poolId = key.toId();
        
        // Get tick and calculate sqrtPrice
        (, data.tick, , ) = manager.poolManager().getSlot0(poolId);
        data.sqrtPriceX96 = TickMath.getSqrtPriceAtTick(data.tick);
        
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

    
    function _getCurrentSqrtPrice(MultiPositionManager manager) internal view returns (uint160 sqrtPriceX96) {
        (sqrtPriceX96, , , ) = manager.poolManager().getSlot0(manager.poolKey().toId());
    }
    
    function _getCurrentTick(MultiPositionManager manager) internal view returns (int24 tick) {
        (, tick, , ) = manager.poolManager().getSlot0(manager.poolKey().toId());
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
        int24 tick = _getCurrentTick(manager);
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

        // Resolve CENTER_AT_CURRENT_TICK sentinel value
        if (centerTick == type(int24).max) {
            centerTick = _getCurrentTick(manager);
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
        
        uint160 sqrtPriceX96 = _getCurrentSqrtPrice(manager);
        
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
            uint160 sqrtPriceX96 = _getCurrentSqrtPrice(manager);
            int24 currentTick = _getCurrentTick(manager);

            if (centerTick == type(int24).max) centerTick = currentTick;

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

        uint256 rangesLength = params.baseRanges.length;
        liquidities = new uint128[](rangesLength);

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

        uint256[] memory weights = _getWeights(weightParams);

        // Calculate liquidities in separate function to avoid stack depth
        _fillLiquidities(
            liquidities,
            params.baseRanges,
            weights,
            params.amount0,
            params.amount1,
            params.sqrtPriceX96
        );
    }
    
    function _fillLiquidities(
        uint128[] memory liquidities,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256[] memory weights,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96
    ) private pure {
        uint256 rangesLength = baseRanges.length;

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
    
    function _getWeights(
        GetWeightsParams memory params
    ) private view returns (uint256[] memory weights) {
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
        IPoolManager poolManager,
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
                poolManager,
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
            inMin = _calculateDirectDepositInMin(
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
        uint256 maxSlippage
    ) external view returns (
        uint256[2][] memory outMin,
        uint256[2][] memory inMin
    ) {
        if (maxSlippage > 10000) revert MaxSlippageExceeded();

        MultiPositionManager manager = MultiPositionManager(payable(pos));

        outMin = _calculateOutMinForRebalance(manager, maxSlippage);

        inMin = _calculateInMinForRebalance(InMinRebalanceParams({
            manager: manager,
            strategyAddress: strategyAddress,
            centerTick: centerTick,
            ticksLeft: ticksLeft,
            ticksRight: ticksRight,
            limitWidth: limitWidth,
            weight0: weight0,
            weight1: weight1,
            useCarpet: useCarpet,
            swap: false,
            maxSlippage: maxSlippage
        }));

        return (outMin, inMin);
    }


    /**
     * @notice Helper function to calculate inMin for direct deposit
     * @dev Separated to avoid stack too deep errors
     */
    function _calculateDirectDepositInMin(
        MultiPositionManager manager,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 maxSlippage,
        uint256 basePositionsLength,
        uint256[2][] memory inMin
    ) internal view returns (uint256[2][] memory) {
        // Get positions data
        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        // Get total tokens in positions (including both base and limit positions)
        uint256 totalToken0InPositions;
        uint256 totalToken1InPositions;

        for (uint256 i = 0; i < ranges.length; i++) {
            if (positionData[i].liquidity == 0) continue;
            totalToken0InPositions += positionData[i].amount0;
            totalToken1InPositions += positionData[i].amount1;
        }
        
        // Calculate what CAN go into positions
        uint256 amount0ForPositions;
        uint256 amount1ForPositions;
        
        if (totalToken0InPositions == 0 && totalToken1InPositions > 0) {
            amount0ForPositions = 0;
            amount1ForPositions = amount1Desired;
        } else if (totalToken1InPositions == 0 && totalToken0InPositions > 0) {
            amount0ForPositions = amount0Desired;
            amount1ForPositions = 0;
        } else if (totalToken0InPositions > 0 && totalToken1InPositions > 0) {
            (amount0ForPositions, amount1ForPositions) = DepositRatioLib.getRatioAmounts(
                totalToken0InPositions,
                totalToken1InPositions,
                amount0Desired,
                amount1Desired
            );
        }
        
        // Apply slippage and distribute to all positions (base and limit)
        uint256 slippageFactor = (10000 - maxSlippage);
        
        for (uint256 i = 0; i < ranges.length; i++) {
            if (positionData[i].liquidity == 0) continue;
            
            // Calculate share based on current token amounts
            if (totalToken0InPositions > 0) {
                uint256 amount0ForPosition = (amount0ForPositions * positionData[i].amount0) / totalToken0InPositions;
                inMin[i][0] = (amount0ForPosition * slippageFactor) / 10000;
            }
            
            if (totalToken1InPositions > 0) {
                uint256 amount1ForPosition = (amount1ForPositions * positionData[i].amount1) / totalToken1InPositions;
                inMin[i][1] = (amount1ForPosition * slippageFactor) / 10000;
            }
        }
        
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
        // Get the current total amounts in all positions
        (uint256 total0, uint256 total1, , ) = manager.getTotalAmounts();

        // Handle edge cases where one or both totals are zero
        if (total0 == 0 || total1 == 0) {
            // If there are no positions or they're empty, return 0
            // The caller should handle this case appropriately
            return 0;
        }

        // Calculate the corresponding amount to maintain ratio
        if (isToken0) {
            // User provides token0 amount, calculate required token1
            // Required token1 = (amount0 * total1) / total0
            return FullMath.mulDiv(amount, total1, total0);
        } else {
            // User provides token1 amount, calculate required token0
            // Required token0 = (amount1 * total0) / total1
            return FullMath.mulDiv(amount, total0, total1);
        }
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
        // Validate desired ratio is between 0 and 1e18 (0% to 100%)
        if (desiredRatio > 1e18) revert RatioMustBeLessThanOrEqualToOne();

        // Get current total amounts
        (uint256 total0, uint256 total1, , ) = manager.getTotalAmounts();

        // Handle edge case of empty positions
        if (total0 == 0 && total1 == 0) {
            return (true, 0); // Can't fix ratio on empty positions
        }

        // Get price and calculate values
        (uint256 price, uint256 total0InToken1, uint256 totalValueInToken1, uint256 currentRatio) =
            _getPriceAndRatios(manager, total0, total1);

        // If already at desired ratio, no action needed
        if (currentRatio == desiredRatio) {
            return (true, 0);
        }

        // Determine which token to deposit/withdraw and calculate amount
        if (isDeposit) {
            // Fix via deposit
            if (currentRatio < desiredRatio) {
                // Need more token0 value - deposit token0
                isToken0 = true;
                // After depositing x token0 (worth x*price in token1):
                // new value = (total0InToken1 + x*price) / (totalValueInToken1 + x*price) = desiredRatio
                // Since both numerator and denominator increase by the same amount (x*price),
                // we can solve: x*price = (desiredRatio * totalValueInToken1 - total0InToken1) / (1 - desiredRatio)

                uint256 denominator = 1e18 - desiredRatio;
                if (denominator == 0) {
                    amount = type(uint256).max; // Want 100% token0
                } else {
                    uint256 targetToken0ValueInToken1 = FullMath.mulDiv(desiredRatio, totalValueInToken1, 1e18);
                    if (targetToken0ValueInToken1 > total0InToken1) {
                        uint256 neededValueInToken1 = targetToken0ValueInToken1 - total0InToken1;
                        // Adjust for the fact that depositing increases total value
                        uint256 depositValueInToken1 = FullMath.mulDiv(neededValueInToken1, 1e18, denominator);
                        // Convert from token1 value to token0 amount
                        amount = FullMath.mulDiv(depositValueInToken1, 1e18, price);
                    } else {
                        amount = 0;
                    }
                }
                return (isToken0, amount);
            } else {
                // Need more token1 value - deposit token1
                // After depositing y token1:
                // new value = total0InToken1 / (totalValueInToken1 + y) = desiredRatio
                // Solving: y = (total0InToken1 / desiredRatio) - totalValueInToken1

                if (desiredRatio == 0) {
                    return (false, type(uint256).max); // Want 0% token0
                }

                uint256 targetTotalValueInToken1 = FullMath.mulDiv(total0InToken1, 1e18, desiredRatio);
                if (targetTotalValueInToken1 > totalValueInToken1) {
                    amount = targetTotalValueInToken1 - totalValueInToken1;
                } else {
                    amount = 0;
                }
                return (false, amount);
            }
        } else {
            // Fix via withdrawal
            if (currentRatio > desiredRatio) {
                // Too much token0 value - withdraw token0
                // After withdrawing x token0:
                // new value = (total0InToken1 - x*price) / (totalValueInToken1 - x*price) = desiredRatio
                // Solving for x*price (value to withdraw in token1 terms):
                // x*price = (total0InToken1 - desiredRatio * totalValueInToken1) / (1 - desiredRatio)

                uint256 denominator = 1e18 - desiredRatio;
                if (denominator == 0) {
                    return (true, total0); // Edge case
                }

                uint256 targetToken0ValueInToken1 = FullMath.mulDiv(desiredRatio, totalValueInToken1, 1e18);
                if (total0InToken1 > targetToken0ValueInToken1) {
                    uint256 excessValueInToken1 = total0InToken1 - targetToken0ValueInToken1;
                    // Adjust for the fact that withdrawing reduces total value
                    uint256 withdrawValueInToken1 = FullMath.mulDiv(excessValueInToken1, 1e18, denominator);
                    // Convert from token1 value to token0 amount
                    amount = FullMath.mulDiv(withdrawValueInToken1, 1e18, price);
                } else {
                    amount = 0;
                }
                return (true, amount);
            } else {
                // Too much token1 value - withdraw token1
                // After withdrawing y token1:
                // new value = total0InToken1 / (totalValueInToken1 - y) = desiredRatio
                // Solving: y = totalValueInToken1 - (total0InToken1 / desiredRatio)

                if (desiredRatio == 0) {
                    return (true, total0); // Want 0% token0, withdraw all token0
                }

                uint256 targetTotalValueInToken1 = FullMath.mulDiv(total0InToken1, 1e18, desiredRatio);
                if (totalValueInToken1 > targetTotalValueInToken1) {
                    amount = totalValueInToken1 - targetTotalValueInToken1;
                } else {
                    amount = 0;
                }
                return (false, amount);
            }
        }
    }

    function _getPriceAndRatios(
        MultiPositionManager manager,
        uint256 total0,
        uint256 total1
    ) internal view returns (
        uint256 price,
        uint256 total0InToken1,
        uint256 totalValueInToken1,
        uint256 currentRatio
    ) {
        // Get the actual price from the pool
        IPoolManager poolManager = manager.poolManager();

        // Access the poolKey directly - it's a public state variable
        PoolKey memory poolKey = manager.poolKey();

        PoolId poolId = poolKey.toId();

        (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(poolId);

        // Calculate price of token0 in terms of token1
        // price = (sqrtPriceX96)^2 / 2^192
        price = FullMath.mulDiv(
            FullMath.mulDiv(uint256(sqrtPriceX96), uint256(sqrtPriceX96), 1 << 96),
            1e18,  // PRECISION
            1 << 96
        );

        // Convert token0 to token1 value terms
        total0InToken1 = FullMath.mulDiv(total0, price, 1e18);
        totalValueInToken1 = total0InToken1 + total1;

        // Calculate current ratio (token0 value / total value, both in token1 terms)
        currentRatio = FullMath.mulDiv(total0InToken1, 1e18, totalValueInToken1);
    }

    // function getMaxWithdrawable(
    //     address pos
    // ) external view returns (uint256 maxToken0, uint256 maxToken1) {
    //     MultiPositionManager manager = MultiPositionManager(payable(pos));

    //     (uint256 total0, uint256 total1, , ) = manager.getTotalAmounts();

    //     ( , , , , , , , bool carpetEnabled) = manager.lastStrategyParams();

    //     if (!carpetEnabled) {
    //         return (total0, total1);
    //     }

    //     uint256 reserved0;
    //     uint256 reserved1;

    //     {
    //         PoolKey memory poolKey = manager.poolKey();
    //         int24 minUsable = TickMath.minUsableTick(poolKey.tickSpacing);
    //         int24 maxUsable = TickMath.maxUsableTick(poolKey.tickSpacing);

    //         (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) = manager.getPositions();

    //         uint256 carpetToken0 = 0;
    //         uint256 carpetToken1 = 0;

    //         for (uint256 i = 0; i < ranges.length; i++) {
    //             if (ranges[i].lowerTick == minUsable || ranges[i].upperTick == maxUsable) {
    //                 carpetToken0 += positionData[i].amount0;
    //                 carpetToken1 += positionData[i].amount1;
    //             }
    //         }

    //         reserved0 = carpetToken0 + 1;
    //         reserved1 = carpetToken1 + 1;
    //     }

    //     maxToken0 = total0 > reserved0 ? total0 - reserved0 : 0;
    //     maxToken1 = total1 > reserved1 ? total1 - reserved1 : 0;
    // }

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

        inMin = _calculateInMinForRebalance(InMinRebalanceParams({
            manager: manager,
            strategyAddress: strategyAddress,
            centerTick: centerTick,
            ticksLeft: ticksLeft,
            ticksRight: ticksRight,
            limitWidth: limitWidth,
            weight0: weight0,
            weight1: weight1,
            useCarpet: useCarpet,
            swap: swap,
            maxSlippage: maxSlippage
        }));

        return (outMin, inMin);
    }

    function _calculateOutMinForRebalance(
        MultiPositionManager manager,
        uint256 maxSlippage
    ) private view returns (uint256[2][] memory outMin) {
        uint256 basePositionsLength = manager.basePositionsLength();
        uint256 limitPositionsLength = manager.limitPositionsLength();
        uint256 totalPositionsLength = basePositionsLength + limitPositionsLength;

        if (totalPositionsLength == 0) {
            return outMin;
        }

        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        outMin = new uint256[2][](totalPositionsLength);
        uint256 slippageMultiplier = 10000 - maxSlippage;

        for (uint i = 0; i < totalPositionsLength; ++i) {
            (uint256 amount0, uint256 amount1) = PoolManagerUtils.getAmountsForLiquidity(
                manager.poolManager(),
                manager.poolKey(),
                ranges[i],
                uint128(positionData[i].liquidity)
            );

            unchecked {
                outMin[i] = [
                    amount0 * slippageMultiplier / 10000,
                    amount1 * slippageMultiplier / 10000
                ];
            }
        }

        return outMin;
    }

    function _getTotalAmountsForRebalance(
        MultiPositionManager manager
    ) private view returns (uint256 amount0, uint256 amount1) {
        IPoolManager poolManager = manager.poolManager();
        PoolKey memory poolKey = manager.poolKey();

        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) = manager.getPositions();

        for (uint i = 0; i < ranges.length; ++i) {
            (uint256 amt0, uint256 amt1) = PoolManagerUtils.getAmountsForLiquidity(
                poolManager,
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
        IPoolManager poolManager = manager.poolManager();
        PoolKey memory poolKey = manager.poolKey();

        (uint160 sqrtPriceX96ForSwap, , , ) = poolManager.getSlot0(poolKey.toId());

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

    struct InMinCalcState {
        uint256 totalWeightedToken0;
        uint256 totalWeightedToken1;
        uint256 liquidityPerWeight;
        uint256 slippageMultiplier;
    }

    struct SqrtPriceCache {
        uint160[] sqrtPriceLowers;
        uint160[] sqrtPriceUppers;
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

        // Cache sqrt prices to avoid duplicate calculations
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

            state.totalWeightedToken0 += amount0For1e18 * weights[i];
            state.totalWeightedToken1 += amount1For1e18 * weights[i];
        }

        // Calculate liquidity per weight
        uint256 liquidityPerWeight0 = state.totalWeightedToken0 > 0
            ? (amount0 * PRECISION) / state.totalWeightedToken0
            : 0;
        uint256 liquidityPerWeight1 = state.totalWeightedToken1 > 0
            ? (amount1 * PRECISION) / state.totalWeightedToken1
            : 0;

        state.liquidityPerWeight = liquidityPerWeight0 < liquidityPerWeight1
            ? liquidityPerWeight0
            : liquidityPerWeight1;
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
            uint128 liquidity = uint128((state.liquidityPerWeight * weights[i]) / PRECISION);

            if (liquidity > 0) {
                (uint256 amt0, uint256 amt1) = LiquidityAmounts.getAmountsForLiquidity(
                    sqrtPriceX96,
                    cache.sqrtPriceLowers[i],
                    cache.sqrtPriceUppers[i],
                    liquidity
                );

                inMin[i] = [
                    amt0 * state.slippageMultiplier / 10000,
                    amt1 * state.slippageMultiplier / 10000
                ];
            } else {
                inMin[i] = [uint256(0), uint256(0)];
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
            IPoolManager poolManager = manager.poolManager();
            int24 currentTick;
            (sqrtPriceX96, currentTick, , ) = poolManager.getSlot0(poolKey.toId());

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

    function _generateRangesOnly(
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        int24 tickSpacing,
        bool useCarpet
    ) internal view returns (int24[] memory lowerTicks, int24[] memory upperTicks) {
        ILiquidityStrategy strategy = ILiquidityStrategy(strategyAddress);
        return strategy.generateRanges(
            centerTick,
            ticksLeft,
            ticksRight,
            tickSpacing,
            useCarpet
        );
    }

    function _calculateDensitiesOnly(
        DensityCalcParams memory params,
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        int24 currentTick,
        int24 tickSpacing
    ) internal view returns (uint256[] memory) {
        ILiquidityStrategy strategy = ILiquidityStrategy(params.strategyAddress);
        return strategy.calculateDensities(
            lowerTicks,
            upperTicks,
            currentTick,
            params.centerTick,
            params.ticksLeft,
            params.ticksRight,
            params.weight0,
            params.weight1,
            params.useCarpet,
            tickSpacing,
            params.weight0 == 0 && params.weight1 == 0
        );
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
            IPoolManager poolManager = params.manager.poolManager();
            (uint160 sqrtPriceX96, int24 currentTick, , ) = poolManager.getSlot0(poolKey.toId());

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