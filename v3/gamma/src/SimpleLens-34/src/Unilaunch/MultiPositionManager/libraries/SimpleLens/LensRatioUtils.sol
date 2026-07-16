// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {MultiPositionManager} from "../../MultiPositionManager.sol";
import {IMultiPositionManager} from "../../interfaces/IMultiPositionManager.sol";
import {ILiquidityStrategy} from "../../strategies/ILiquidityStrategy.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {LiquidityAmounts} from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import {DepositRatioLib} from "../DepositRatioLib.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {RebalanceLogic} from "../RebalanceLogic.sol";
import {RebalanceLensLogic} from "../RebalanceLensLogic.sol";

/**
 * @title LensRatioUtils
 * @notice Library for ratio management and position calculations for SimpleLens
 * @dev Adapted from SimpleLensRatioUtils - removes withdrawal/compound related functions
 */
library LensRatioUtils {
    using StateLibrary for IPoolManager;
    using PoolIdLibrary for PoolKey;

    // Custom errors
    error NoStrategySpecified();

    uint256 constant PRECISION = 1e18;

    struct SwapParams {
        bool swapToken0;
        uint256 swapAmount;
        uint256 weight0;
        uint256 weight1;
    }

    struct PositionStats {
        int24 tickLower;
        int24 tickUpper;
        uint160 sqrtPriceLower;
        uint160 sqrtPriceUpper;
        uint128 liquidity;
        uint256 token0Quantity;
        uint256 token1Quantity;
        uint256 valueInToken1;
        bool isLimit;
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

    struct PriceData {
        uint160 sqrtPriceX96;
        uint256 price;
        int24 tick;
    }

    struct DepositCalculationContext {
        IPoolManager pm;
        PoolKey poolKey;
        uint160 sqrtPriceX96;
        uint256 totalToken0InPositions;
        uint256 totalToken1InPositions;
        uint256 amount0ForPositions;
        uint256 amount1ForPositions;
    }

    // Helper struct for initial deposit parameters
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

    // Struct for preview data
    struct RebalancePreview {
        address strategy;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        IMultiPositionManager.Range[] baseRanges;
        uint128[] liquidities;
        uint256 expectedToken0;
        uint256 expectedToken1;
    }

    struct LiquidityCalcContext {
        uint160 sqrtPriceLower;
        uint160 sqrtPriceUpper;
        uint256 totalWeightedToken0;
        uint256 totalWeightedToken1;
        uint128 totalLiquidity;
    }

    struct StrategyCallParams {
        address strategyAddress;
        int24[] lowerTicks;
        int24[] upperTicks;
        int24 currentTick;
        int24 resolvedCenterTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        int24 tickSpacing;
    }

    struct DensityParams {
        int24 currentTick;
        int24 centerTick;
        uint24 ticksLeft;
        uint24 ticksRight;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        int24 tickSpacing;
    }

    /**
     * @notice Calculate corresponding token amount to maintain current ratio
     * @param manager The MultiPositionManager contract
     * @param isToken0 True if user provides token0, false for token1
     * @param amount Amount of token being provided
     * @return The amount of the other token needed to maintain ratio
     */
    function getAmountsForDeposit(MultiPositionManager manager, bool isToken0, uint256 amount)
        external
        view
        returns (uint256)
    {
        (uint256 total0, uint256 total1,,) = manager.getTotalAmounts();

        if (total0 == 0 || total1 == 0) {
            return 0;
        }

        if (isToken0) {
            return FullMath.mulDiv(amount, total1, total0);
        } else {
            return FullMath.mulDiv(amount, total0, total1);
        }
    }

    /**
     * @notice Calculate deposit amounts for initial position - uses externally generated ranges
     * @param ranges The ranges to use
     * @param poolKey The PoolKey for the Uniswap V4 pool
     * @param poolManager The PoolManager instance
     * @param params Parameters for the initial deposit calculation
     * @return otherAmount The amount of the other token needed
     * @return weights The density weights for each range
     * @return sqrtPriceX96 The current sqrtPrice
     * @return resolvedCenterTick The resolved center tick
     */
    function calculateInitialDepositAmounts(
        IMultiPositionManager.Range[] memory ranges,
        PoolKey memory poolKey,
        IPoolManager poolManager,
        InitialDepositParams calldata params
    )
        external
        view
        returns (uint256 otherAmount, uint256[] memory weights, uint160 sqrtPriceX96, int24 resolvedCenterTick)
    {
        int24 currentTick;
        uint256 totalWeightedToken0;
        uint256 totalWeightedToken1;

        (totalWeightedToken0, totalWeightedToken1, resolvedCenterTick, sqrtPriceX96, currentTick, weights) =
            _calculateWeightedTokenRequirements(poolKey, poolManager, ranges, params);

        if (totalWeightedToken0 == 0 && totalWeightedToken1 == 0) {
            revert("No liquidity would be added");
        }

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

    function _calculateWeightedTokenRequirements(
        PoolKey memory poolKey,
        IPoolManager poolManager,
        IMultiPositionManager.Range[] memory ranges,
        InitialDepositParams calldata params
    )
        private
        view
        returns (
            uint256 totalWeightedToken0,
            uint256 totalWeightedToken1,
            int24 resolvedCenterTick,
            uint160 sqrtPriceX96,
            int24 currentTick,
            uint256[] memory weights
        )
    {
        (sqrtPriceX96, currentTick,,) = poolManager.getSlot0(poolKey.toId());

        // Resolve sentinel value and snap to tickSpacing grid
        {
            if (params.centerTick == type(int24).max) {
                int24 compressed = currentTick / poolKey.tickSpacing;
                if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) {
                    compressed--;
                }
                resolvedCenterTick = compressed * poolKey.tickSpacing;
            } else {
                // Snap to tickSpacing grid using floor division (matches on-chain behavior)
                resolvedCenterTick = (params.centerTick / poolKey.tickSpacing) * poolKey.tickSpacing;
                if (params.centerTick < 0 && params.centerTick % poolKey.tickSpacing != 0) {
                    resolvedCenterTick -= poolKey.tickSpacing;
                }
            }
        }

        // Get density weights from strategy
        weights = _callStrategyForWeights(ranges, params, resolvedCenterTick, currentTick, poolKey.tickSpacing);

        // Calculate weighted token requirements
        for (uint256 i = 0; i < ranges.length; i++) {
            if (ranges[i].lowerTick != 0 || ranges[i].upperTick != 0) {
                uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
                uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

                (uint256 amount0For1e18, uint256 amount1For1e18) =
                    LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLower, sqrtPriceUpper, 1e18);

                totalWeightedToken0 += (amount0For1e18 * weights[i]) / 1e18;
                totalWeightedToken1 += (amount1For1e18 * weights[i]) / 1e18;
            }
        }
    }

    function _callStrategyForWeights(
        IMultiPositionManager.Range[] memory ranges,
        InitialDepositParams calldata params,
        int24 resolvedCenterTick,
        int24 currentTick,
        int24 tickSpacing
    ) private view returns (uint256[] memory) {
        (int24[] memory lowerTicks, int24[] memory upperTicks) = _extractTickArrays(ranges);

        StrategyCallParams memory callParams = StrategyCallParams({
            strategyAddress: params.strategyAddress,
            lowerTicks: lowerTicks,
            upperTicks: upperTicks,
            currentTick: currentTick,
            resolvedCenterTick: resolvedCenterTick,
            ticksLeft: params.ticksLeft,
            ticksRight: params.ticksRight,
            weight0: params.weight0,
            weight1: params.weight1,
            useCarpet: params.useCarpet,
            tickSpacing: tickSpacing
        });

        return _executeStrategyCall(callParams);
    }

    function _extractTickArrays(IMultiPositionManager.Range[] memory ranges)
        private
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        lowerTicks = new int24[](ranges.length);
        upperTicks = new int24[](ranges.length);

        for (uint256 i = 0; i < ranges.length; i++) {
            lowerTicks[i] = ranges[i].lowerTick;
            upperTicks[i] = ranges[i].upperTick;
        }
    }

    function _executeStrategyCall(StrategyCallParams memory callParams) private view returns (uint256[] memory) {
        bool useAssetWeights = (callParams.weight0 == 0 && callParams.weight1 == 0);
        return _executeStrategyCallWithAssetFlag(callParams, useAssetWeights);
    }

    function _executeStrategyCallWithAssetFlag(StrategyCallParams memory callParams, bool useAssetWeights)
        private
        view
        returns (uint256[] memory)
    {
        bytes memory callData = abi.encodeCall(
            ILiquidityStrategy.calculateDensities,
            (
                callParams.lowerTicks,
                callParams.upperTicks,
                callParams.currentTick,
                callParams.resolvedCenterTick,
                callParams.ticksLeft,
                callParams.ticksRight,
                callParams.weight0,
                callParams.weight1,
                callParams.useCarpet,
                callParams.tickSpacing,
                useAssetWeights
            )
        );

        (bool success, bytes memory returnData) = callParams.strategyAddress.staticcall(callData);

        if (!success) revert("CalculateDensitiesFailed");
        uint256[] memory weights = abi.decode(returnData, (uint256[]));
        return RebalanceLogic.adjustWeightsForFullRangeFloor(
            weights, callParams.lowerTicks, callParams.upperTicks, callParams.tickSpacing, callParams.useCarpet
        );
    }

    /**
     * @notice Calculate weights from existing positions
     * @dev Uses current position composition to determine target weights
     * @param manager The MultiPositionManager
     * @param sqrtPriceX96 Current pool price
     * @return weight0 Weight for token0
     * @return weight1 Weight for token1
     */
    function calculateWeightsFromPositions(MultiPositionManager manager, uint160 sqrtPriceX96)
        public
        view
        returns (uint256 weight0, uint256 weight1)
    {
        // Get total amounts in positions (excluding fees)
        (uint256 total0, uint256 total1,,) = manager.getTotalAmounts();

        // Calculate value in token1 terms for weight calculation
        uint256 price =
            FullMath.mulDiv(FullMath.mulDiv(uint256(sqrtPriceX96), uint256(sqrtPriceX96), 1 << 96), PRECISION, 1 << 96);

        uint256 value0InToken1 = FullMath.mulDiv(total0, price, PRECISION);
        uint256 totalValue = value0InToken1 + total1;

        if (totalValue == 0) {
            // No positions, use 50/50
            weight0 = PRECISION / 2;
            weight1 = PRECISION / 2;
        } else {
            // Calculate weights based on current composition
            weight0 = FullMath.mulDiv(value0InToken1, PRECISION, totalValue);
            weight1 = FullMath.mulDiv(total1, PRECISION, totalValue);
        }
    }

    /**
     * @notice Apply swap simulation to calculate final amounts
     * @param amount0 Initial amount of token0
     * @param amount1 Initial amount of token1
     * @param swapToken0 True if swapping token0 for token1
     * @param swapAmount Amount to swap
     * @param sqrtPriceX96 Current sqrt price
     * @return finalAmount0 Amount of token0 after swap
     * @return finalAmount1 Amount of token1 after swap
     */
    function applySwap(uint256 amount0, uint256 amount1, bool swapToken0, uint256 swapAmount, uint160 sqrtPriceX96)
        public
        pure
        returns (uint256 finalAmount0, uint256 finalAmount1)
    {
        if (swapAmount == 0) {
            return (amount0, amount1);
        }

        if (swapToken0) {
            uint256 estimatedOut = FullMath.mulDiv(
                FullMath.mulDiv(swapAmount, uint256(sqrtPriceX96), 1 << 96), uint256(sqrtPriceX96), 1 << 96
            );
            finalAmount0 = amount0 - swapAmount;
            finalAmount1 = amount1 + estimatedOut;
        } else {
            uint256 estimatedOut = FullMath.mulDiv(
                FullMath.mulDiv(swapAmount, 1 << 96, uint256(sqrtPriceX96)), 1 << 96, uint256(sqrtPriceX96)
            );
            finalAmount0 = amount0 + estimatedOut;
            finalAmount1 = amount1 - swapAmount;
        }
    }

    /**
     * @notice Get position statistics for all positions in a manager
     * @param manager The MultiPositionManager to query
     * @return stats Array of PositionStats for each position
     */
    function getPositionStats(MultiPositionManager manager) external view returns (PositionStats[] memory stats) {
        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        IPoolManager poolManager = manager.poolManager();
        PoolKey memory poolKey = manager.poolKey();
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());

        stats = new PositionStats[](ranges.length);
        uint256 baseLength = manager.basePositionsLength();

        for (uint256 i = 0; i < ranges.length; i++) {
            stats[i].tickLower = ranges[i].lowerTick;
            stats[i].tickUpper = ranges[i].upperTick;
            stats[i].sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
            stats[i].sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);
            stats[i].liquidity = positionData[i].liquidity;
            stats[i].token0Quantity = positionData[i].amount0;
            stats[i].token1Quantity = positionData[i].amount1;

            // Calculate value in token1
            uint256 price = FullMath.mulDiv(
                FullMath.mulDiv(uint256(sqrtPriceX96), uint256(sqrtPriceX96), 1 << 96), PRECISION, 1 << 96
            );
            stats[i].valueInToken1 = positionData[i].amount1 + FullMath.mulDiv(positionData[i].amount0, price, PRECISION);
            stats[i].isLimit = i >= baseLength;
        }
    }

    /**
     * @notice Calculate optimal swap parameters for rebalancing
     * @param manager The MultiPositionManager
     * @param strategy Address of liquidity strategy
     * @param centerTick Center tick for new positions
     * @param ticksLeft Number of ticks left of center
     * @param ticksRight Number of ticks right of center
     * @param weight0 Weight for token0 (0 for calculate from strategy)
     * @param weight1 Weight for token1 (0 for calculate from strategy)
     * @param useCarpet Whether to use the full-range floor
     * @param poolManager The pool manager instance
     * @param amount0 Pre-computed amount of token0
     * @param amount1 Pre-computed amount of token1
     * @return swapParams Calculated swap parameters
     */
    function calculateOptimalSwapForRebalance(
        MultiPositionManager manager,
        address strategy,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet,
        IPoolManager poolManager,
        uint256 amount0,
        uint256 amount1
    ) external view returns (SwapParams memory swapParams) {
        // Get current pool state
        PoolKey memory poolKey = manager.poolKey();
        (uint160 sqrtPriceX96, int24 currentTick,,) = poolManager.getSlot0(poolKey.toId());

        // Resolve center tick (always floor-divide for alignment)
        int24 resolvedCenter;
        if (centerTick == type(int24).max) {
            int24 compressed = currentTick / poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) {
                compressed--;
            }
            resolvedCenter = compressed * poolKey.tickSpacing;
        } else {
            // Floor-divide user-provided centerTick
            int24 compressed = centerTick / poolKey.tickSpacing;
            if (centerTick < 0 && centerTick % poolKey.tickSpacing != 0) {
                compressed--;
            }
            resolvedCenter = compressed * poolKey.tickSpacing;
        }

        // Use provided weights OR calculate from strategy
        if (weight0 == 0 && weight1 == 0) {
            (swapParams.weight0, swapParams.weight1) = RebalanceLensLogic.calculateWeightsFromStrategy(
                ILiquidityStrategy(strategy),
                resolvedCenter,
                ticksLeft,
                ticksRight,
                poolKey.tickSpacing,
                useCarpet,
                sqrtPriceX96,
                currentTick
            );
        } else {
            swapParams.weight0 = weight0;
            swapParams.weight1 = weight1;
        }

        // Calculate optimal swap
        (swapParams.swapToken0, swapParams.swapAmount) = RebalanceLensLogic.calculateOptimalSwap(
            amount0,
            amount1,
            sqrtPriceX96,
            swapParams.weight0,
            swapParams.weight1
        );
    }

    /**
     * @notice Generate ranges from strategy
     */
    function generateRangesFromStrategy(
        MultiPositionManager manager,
        address strategyAddress,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        bool useCarpet
    ) external view returns (IMultiPositionManager.Range[] memory baseRanges) {
        // Get pool key for tick spacing
        PoolKey memory poolKey = manager.poolKey();
        int24 tickSpacing = poolKey.tickSpacing;

        // Resolve CENTER_AT_CURRENT_TICK sentinel value
        if (centerTick == type(int24).max) {
            IPoolManager pm = manager.poolManager();
            (, int24 currentTick,,) = pm.getSlot0(poolKey.toId());
            int24 compressed = currentTick / tickSpacing;
            if (currentTick < 0 && currentTick % tickSpacing != 0) {
                compressed--; // Round down for negative ticks with remainder
            }
            centerTick = compressed * tickSpacing;
        } else {
            // Snap to tickSpacing grid using floor division (matches on-chain behavior)
            int24 compressed = centerTick / tickSpacing;
            if (centerTick < 0 && centerTick % tickSpacing != 0) {
                compressed--;
            }
            centerTick = compressed * tickSpacing;
        }

        // Generate ranges from strategy
        if (strategyAddress == address(0)) revert NoStrategySpecified();
        ILiquidityStrategy strategy = ILiquidityStrategy(strategyAddress);

        (int24[] memory lowerTicks, int24[] memory upperTicks) =
            strategy.generateRanges(centerTick, ticksLeft, ticksRight, tickSpacing, useCarpet);

        // Convert to Range array
        baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint256 i = 0; i < lowerTicks.length; i++) {
            baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
        }
    }

    /**
     * @notice Simulate swap for rebalancing
     */
    function simulateSwapForRebalance(
        MultiPositionManager manager,
        uint256 amount0,
        uint256 amount1,
        uint256 weight0,
        uint256 weight1
    ) external view returns (uint256 newAmount0, uint256 newAmount1) {
        IPoolManager pm = manager.poolManager();
        PoolKey memory poolKey = manager.poolKey();

        (uint160 sqrtPriceX96ForSwap,,,) = pm.getSlot0(poolKey.toId());

        (bool swapToken0, uint256 swapAmount) =
            RebalanceLensLogic.calculateOptimalSwap(amount0, amount1, sqrtPriceX96ForSwap, weight0, weight1);

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

    function roundToTickSpacing(int24 tick, int24 tickSpacing, bool roundDown) public pure returns (int24) {
        int24 remainder = tick % tickSpacing;
        if (remainder == 0) return tick;

        if (roundDown) {
            return
                tick < 0 ? ((tick - tickSpacing + 1) / tickSpacing) * tickSpacing : (tick / tickSpacing) * tickSpacing;
        } else {
            return
                tick < 0 ? (tick / tickSpacing) * tickSpacing : ((tick + tickSpacing - 1) / tickSpacing) * tickSpacing;
        }
    }
}
