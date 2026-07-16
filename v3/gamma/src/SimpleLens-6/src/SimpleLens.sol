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

    struct WithdrawalPreview {
        // Input parameters
        uint256 withdrawAmount;
        bool withdrawToken0;
        
        // Current state
        SimpleLensRatioUtils.PositionStats[] currentPositions;
        uint256 currentTotalToken0;
        uint256 currentTotalToken1;
        
        // After withdrawal state
        SimpleLensRatioUtils.PositionStats[] newPositions;
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
            preview.newPositions = new SimpleLensRatioUtils.PositionStats[](0);
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
    ) public view returns (SimpleLensInMin.RebalancePreview memory preview) {
        preview.strategy = strategyAddress;
        preview.centerTick = centerTick;
        preview.ticksLeft = ticksLeft;
        preview.ticksRight = ticksRight;
        
        // Generate ranges from library
        preview.baseRanges = SimpleLensRatioUtils.generateRangesFromStrategy(
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
                SimpleLensRatioUtils.calculateLimitRanges(manager, limitWidth, preview.baseRanges, ticksLeft, ticksRight);
            
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
     * @return preview Detailed preview of the rebalance operation including swap
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
        bool useCarpet
    ) public view returns (SimpleLensInMin.RebalancePreview memory preview) {
        preview.strategy = strategyAddress;
        preview.centerTick = centerTick;
        preview.ticksLeft = ticksLeft;
        preview.ticksRight = ticksRight;

        // Generate ranges and simulate swap in helper
        (preview.baseRanges, preview.liquidities) = _generateRangesAndLiquiditiesWithSwap(
            manager,
            strategyAddress,
            centerTick,
            ticksLeft,
            ticksRight,
            weight0,
            weight1,
            useCarpet
        );

        // Add limit positions if needed
        if (limitWidth > 0) {
            (preview.baseRanges, preview.liquidities) = _addLimitPositionsToPreview(
                manager,
                limitWidth,
                preview.baseRanges,
                preview.liquidities,
                ticksLeft,
                ticksRight
            );
        }

        // Calculate expected totals
        _calculateExpectedTotals(manager, preview.baseRanges, preview);
    }

    function _generateRangesAndLiquiditiesWithSwap(
        MultiPositionManager manager,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet
    ) private view returns (IMultiPositionManager.Range[] memory ranges, uint128[] memory liquidities) {
        // Generate ranges
        ranges = SimpleLensRatioUtils.generateRangesFromStrategy(
            manager,
            strategyAddress,
            centerTick,
            ticksLeft,
            ticksRight,
            useCarpet
        );

        // Get and adjust amounts
        uint256 adjustedTotal0;
        uint256 adjustedTotal1;
        {
            (uint256 total0, uint256 total1, , ) = manager.getTotalAmounts();
            (adjustedTotal0, adjustedTotal1) = SimpleLensRatioUtils.simulateSwapForRebalance(
                manager,
                total0,
                total1,
                weight0,
                weight1
            );
        }

        // Calculate liquidities
        liquidities = _calculatePreviewLiquidities(
            manager,
            ranges,
            adjustedTotal0,
            adjustedTotal1,
            strategyAddress,
            centerTick,
            ticksLeft,
            ticksRight,
            weight0,
            weight1,
            useCarpet
        );
    }

    function _addLimitPositionsToPreview(
        MultiPositionManager manager,
        int24 limitWidth,
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory baseLiquidities,
        uint24 ticksLeft,
        uint24 ticksRight
    ) private view returns (IMultiPositionManager.Range[] memory allRanges, uint128[] memory allLiquidities) {
        // Calculate limit positions
        (IMultiPositionManager.Range memory lowerLimit, IMultiPositionManager.Range memory upperLimit) =
            SimpleLensRatioUtils.calculateLimitRanges(manager, limitWidth, baseRanges, ticksLeft, ticksRight);

        // Expand arrays
        uint256 baseLength = baseRanges.length;
        allRanges = new IMultiPositionManager.Range[](baseLength + 2);
        allLiquidities = new uint128[](baseLength + 2);

        // Copy base ranges and liquidities
        for (uint256 i = 0; i < baseLength; i++) {
            allRanges[i] = baseRanges[i];
            allLiquidities[i] = baseLiquidities[i];
        }

        // Add limit ranges
        allRanges[baseLength] = lowerLimit;
        allRanges[baseLength + 1] = upperLimit;
        allLiquidities[baseLength] = 0;
        allLiquidities[baseLength + 1] = 0;
    }

    function _calculateExpectedTotals(
        MultiPositionManager manager,
        IMultiPositionManager.Range[] memory baseRanges,
        SimpleLensInMin.RebalancePreview memory preview
    ) private view {
        _calculateExpectedTotalsWithPoolKey(manager.poolKey(), baseRanges, preview);
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
        return SimpleLensRatioUtils.calculateLimitRangesWithPoolKey(
            poolManager,
            poolKey,
            limitWidth,
            baseRanges,
            ticksLeft,
            ticksRight
        );
    }

    // PoolKey-based version for use without MultiPositionManager
    function _calculateExpectedTotalsWithPoolKey(
        PoolKey memory poolKey,
        IMultiPositionManager.Range[] memory baseRanges,
        SimpleLensInMin.RebalancePreview memory preview
    ) private view {
        preview.expectedPositions = new SimpleLensRatioUtils.PositionStats[](baseRanges.length);
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
        PreviewLiquidityParams memory params = PreviewLiquidityParams({
            baseRanges: baseRanges,
            total0: total0,
            total1: total1,
            strategyAddress: strategyAddress,
            centerTick: centerTick,
            ticksLeft: ticksLeft,
            ticksRight: ticksRight,
            weight0: weight0,
            weight1: weight1,
            useCarpet: useCarpet
        });

        return _calculatePreviewLiquiditiesInternal(manager, params);
    }

    function _calculatePreviewLiquiditiesInternal(
        MultiPositionManager manager,
        PreviewLiquidityParams memory params
    ) private view returns (uint128[] memory) {
        uint160 sqrtPriceX96;
        int24 currentTick;
        (sqrtPriceX96, currentTick) = _getPoolStateFromManager(manager);

        PoolKey memory poolKey = manager.poolKey();
        int24 tickSpacing = poolKey.tickSpacing;

        // Resolve sentinel value
        if (params.centerTick == type(int24).max) {
            int24 compressed = currentTick / tickSpacing;
            if (currentTick < 0 && currentTick % tickSpacing != 0) {
                compressed--;
            }
            params.centerTick = compressed * tickSpacing;
        }

        SimpleLensInMin.GetWeightsParams memory weightParams = SimpleLensInMin.GetWeightsParams({
            baseRanges: params.baseRanges,
            strategyAddress: params.strategyAddress,
            currentTick: currentTick,
            centerTick: params.centerTick,
            ticksLeft: params.ticksLeft,
            ticksRight: params.ticksRight,
            weight0: params.weight0,
            weight1: params.weight1,
            useCarpet: params.useCarpet,
            tickSpacing: tickSpacing
        });

        uint256[] memory weights = SimpleLensInMin.getWeights(weightParams);

        return SimpleLensInMin.calculateLiquidities(
            params.baseRanges,
            weights,
            params.total0,
            params.total1,
            sqrtPriceX96
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
        if (maxSlippage > 10000) revert MaxSlippageExceeded();
        MultiPositionManager manager = MultiPositionManager(payable(pos));
        return SimpleLensInMin.getOutMinForShares(manager, shares, maxSlippage);
    }

    /**
     * @notice Calculate minimum input amounts for direct deposit with slippage protection
     * @dev Use this when you want to deposit arbitrary amounts of both tokens (not maintaining ratio)
     * @param pos MultiPositionManager address
     * @param amount0Desired Desired amount of token0 to deposit
     * @param amount1Desired Desired amount of token1 to deposit
     * @param maxSlippage Maximum slippage in basis points (10000 = 100%)
     * @return inMin Array of minimum amounts for each base and limit position
     */
    function getInMinForDirectDeposit(
        address pos,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 maxSlippage
    ) external view returns (uint256[2][] memory inMin) {
        if (maxSlippage > 10000) revert MaxSlippageExceeded();
        
        MultiPositionManager manager = MultiPositionManager(payable(pos));
        uint256 basePositionsLength = manager.basePositionsLength();

        if (basePositionsLength == 0) {
            return inMin;
        }

        // Include space for actual limit positions
        uint256 limitPositionsLength = manager.limitPositionsLength();
        inMin = new uint256[2][](basePositionsLength + limitPositionsLength);
        
        inMin = SimpleLensRatioUtils.calculateDirectDepositInMin(
            manager,
            amount0Desired,
            amount1Desired,
            maxSlippage,
            basePositionsLength,
            inMin
        );
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
    function getAmountsForProportionateDeposit(
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
        expectedPositions = _calculateExpectedPositionsAfterDeposit(
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

    function _calculateExpectedPositionsAfterDeposit(
        MultiPositionManager manager,
        IMultiPositionManager.Range[] memory ranges,
        IMultiPositionManager.PositionData[] memory positionData,
        uint256 deposit0,
        uint256 deposit1
    ) private view returns (SimpleLensRatioUtils.PositionStats[] memory expectedPositions) {
        return SimpleLensRatioUtils.calculateExpectedPositionsAfterDeposit(
            manager,
            ranges,
            positionData,
            deposit0,
            deposit1
        );
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
     * @notice Get maximum withdrawable amounts for both tokens
     * @param pos MultiPositionManager address
     * @return maxToken0 Maximum withdrawable amount of token0
     * @return maxToken1 Maximum withdrawable amount of token1
     */
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
        return SimpleLensInMin.getOutMinAndInMinForRebalance(
            manager,
            strategyAddress,
            centerTick,
            ticksLeft,
            ticksRight,
            limitWidth,
            weight0,
            weight1,
            useCarpet,
            swap,
            maxSlippage
        );
    }

    /**
     * @notice Calculate optimal swap parameters for rebalancing
     * @dev This should be called off-chain to determine exact swap amounts before encoding swapData
     * @param manager The MultiPositionManager to rebalance
     * @param strategy Strategy to use for weight calculation
     * @param centerTick Center tick for rebalance (use type(int24).max for current tick)
     * @param ticksLeft Ticks to the left of center
     * @param ticksRight Ticks to the right of center
     * @param weight0 Weight for token0 (0 to calculate from strategy)
     * @param weight1 Weight for token1 (0 to calculate from strategy)
     * @param useCarpet Whether to use carpet positions
     * @return swapParams The calculated swap parameters (direction, amount, weights)
     */
    function calculateOptimalSwapForRebalance(
        MultiPositionManager manager,
        address strategy,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet
    ) external view returns (SimpleLensRatioUtils.SwapParams memory swapParams) {
        return SimpleLensRatioUtils.calculateOptimalSwapForRebalance(
            manager,
            strategy,
            centerTick,
            ticksLeft,
            ticksRight,
            weight0,
            weight1,
            useCarpet,
            poolManager
        );
    }

    /**
     * @notice Calculate minimum input amounts for compound with slippage protection
     * @dev Factors in: fees (from zeroBurn) + idle vault balance + deposit amounts
     * @param pos MultiPositionManager address
     * @param deposit0 Amount of token0 being deposited (can be 0)
     * @param deposit1 Amount of token1 being deposited (can be 0)
     * @param needsSwap Whether to calculate optimal swap
     * @param maxSlippageBps Maximum slippage in basis points (10000 = 100%)
     * @return inMin Array of minimum amounts for each base and limit position
     * @return swapToken0 True if should swap token0→token1, false for token1→token0
     * @return swapAmount How much to swap (in tokenIn)
     */
    function getInMinForCompound(
        address pos,
        uint256 deposit0,
        uint256 deposit1,
        bool needsSwap,
        uint256 maxSlippageBps
    ) external view returns (
        uint256[2][] memory inMin,
        bool swapToken0,
        uint256 swapAmount
    ) {
        if (maxSlippageBps > 10000) revert MaxSlippageExceeded();

        MultiPositionManager manager = MultiPositionManager(payable(pos));
        return SimpleLensRatioUtils.getInMinForCompound(
            manager,
            deposit0,
            deposit1,
            needsSwap,
            maxSlippageBps
        );
    }

    /**
     * @notice Calculate minimum input amounts and preview positions for compound with optional swap
     * @dev Factors in: fees (from zeroBurn) + idle vault balance + deposit amounts
     * @param pos MultiPositionManager address
     * @param deposit0 Amount of token0 being deposited (can be 0)
     * @param deposit1 Amount of token1 being deposited (can be 0)
     * @param maxSlippageBps Maximum slippage in basis points (10000 = 100%)
     * @param needsSwap Whether to calculate and apply optimal swap
     * @return inMin Array of minimum amounts for each base and limit position
     * @return swapToken0 True if should swap token0→token1, false for token1→token0
     * @return swapAmount How much to swap (in tokenIn)
     * @return expectedPositions Array of PositionStats showing expected state after compound
     */
    function getAmountsForDepositAndCompoundSwap(
        address pos,
        uint256 deposit0,
        uint256 deposit1,
        uint256 maxSlippageBps,
        bool needsSwap
    ) external view returns (
        uint256[2][] memory inMin,
        bool swapToken0,
        uint256 swapAmount,
        SimpleLensRatioUtils.PositionStats[] memory expectedPositions
    ) {
        if (maxSlippageBps > 10000) revert MaxSlippageExceeded();

        MultiPositionManager manager = MultiPositionManager(payable(pos));
        return SimpleLensRatioUtils.getAmountsForDepositAndCompoundSwap(
            manager,
            deposit0,
            deposit1,
            maxSlippageBps,
            needsSwap
        );
    }

}