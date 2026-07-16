// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { MultiPositionManager } from "../MultiPositionManager.sol";
import { IMultiPositionManager } from "../interfaces/IMultiPositionManager.sol";
import { ILiquidityStrategy } from "../strategies/ILiquidityStrategy.sol";
import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { PoolId, PoolIdLibrary } from "v4-core/types/PoolId.sol";
import { TickMath } from "v4-core/libraries/TickMath.sol";
import { FullMath } from "v4-core/libraries/FullMath.sol";
import { LiquidityAmounts } from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import { SimpleLensInMin } from "./SimpleLensInMin.sol";
import { DepositRatioLib } from "./DepositRatioLib.sol";

/**
 * @title SimpleLensRatioUtils
 * @notice Library for ratio management and initial deposit calculations for SimpleLens
 */
library SimpleLensRatioUtils {
    using StateLibrary for IPoolManager;
    using PoolIdLibrary for PoolKey;

    // Custom errors
    error RatioMustBeLessThanOrEqualToOne();

    // Helper struct for initial deposit parameters
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

    /**
     * @notice Calculate corresponding token amount to maintain current ratio
     * @param manager The MultiPositionManager contract
     * @param isToken0 True if user provides token0, false for token1
     * @param amount Amount of token being provided
     * @return The amount of the other token needed to maintain ratio
     */
    function getAmountsForDeposit(
        MultiPositionManager manager,
        bool isToken0,
        uint256 amount
    ) external view returns (uint256) {
        (uint256 total0, uint256 total1, , ) = manager.getTotalAmounts();

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
     * @notice Calculate which token and how much to deposit/withdraw to achieve desired ratio
     * @param manager The MultiPositionManager contract
     * @param desiredRatio The desired ratio of token0 value to total value (1e18 = 100% token0)
     * @param isDeposit True to fix ratio via deposit, false to fix via withdrawal
     * @return isToken0 True if need to deposit/withdraw token0, false for token1
     * @return amount The amount of token to deposit/withdraw
     */
    function ratioFix(
        MultiPositionManager manager,
        uint256 desiredRatio,
        bool isDeposit
    ) external view returns (bool isToken0, uint256 amount) {
        if (desiredRatio > 1e18) revert RatioMustBeLessThanOrEqualToOne();

        (uint256 total0, uint256 total1, , ) = manager.getTotalAmounts();

        if (total0 == 0 && total1 == 0) {
            return (true, 0);
        }

        (uint256 price, uint256 total0InToken1, uint256 totalValueInToken1, uint256 currentRatio) =
            _getPriceAndRatios(manager, total0, total1);

        if (currentRatio == desiredRatio) {
            return (true, 0);
        }

        if (isDeposit) {
            if (currentRatio < desiredRatio) {
                isToken0 = true;
                uint256 denominator = 1e18 - desiredRatio;
                if (denominator == 0) {
                    amount = type(uint256).max;
                } else {
                    uint256 targetToken0ValueInToken1 = FullMath.mulDiv(desiredRatio, totalValueInToken1, 1e18);
                    if (targetToken0ValueInToken1 > total0InToken1) {
                        uint256 neededValueInToken1 = targetToken0ValueInToken1 - total0InToken1;
                        uint256 depositValueInToken1 = FullMath.mulDiv(neededValueInToken1, 1e18, denominator);
                        amount = FullMath.mulDiv(depositValueInToken1, 1e18, price);
                    } else {
                        amount = 0;
                    }
                }
                return (isToken0, amount);
            } else {
                if (desiredRatio == 0) {
                    return (false, type(uint256).max);
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
            if (currentRatio > desiredRatio) {
                uint256 denominator = 1e18 - desiredRatio;
                if (denominator == 0) {
                    return (true, total0);
                }

                uint256 targetToken0ValueInToken1 = FullMath.mulDiv(desiredRatio, totalValueInToken1, 1e18);
                if (total0InToken1 > targetToken0ValueInToken1) {
                    uint256 excessValueInToken1 = total0InToken1 - targetToken0ValueInToken1;
                    uint256 withdrawValueInToken1 = FullMath.mulDiv(excessValueInToken1, 1e18, denominator);
                    amount = FullMath.mulDiv(withdrawValueInToken1, 1e18, price);
                } else {
                    amount = 0;
                }
                return (true, amount);
            } else {
                if (desiredRatio == 0) {
                    return (true, total0);
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
    ) private view returns (uint256 price, uint256 total0InToken1, uint256 totalValueInToken1, uint256 currentRatio) {
        PoolKey memory poolKey = manager.poolKey();
        IPoolManager poolManager = manager.poolManager();
        (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(poolKey.toId());

        price = FullMath.mulDiv(uint256(sqrtPriceX96) * uint256(sqrtPriceX96), 1e18, 2 ** 192);

        total0InToken1 = FullMath.mulDiv(total0, price, 1e18);
        totalValueInToken1 = total0InToken1 + total1;

        currentRatio = totalValueInToken1 > 0
            ? FullMath.mulDiv(total0InToken1, 1e18, totalValueInToken1)
            : 0;
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
    ) external view returns (
        uint256 otherAmount,
        uint256[] memory weights,
        uint160 sqrtPriceX96,
        int24 resolvedCenterTick
    ) {
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
    ) private view returns (
        uint256 totalWeightedToken0,
        uint256 totalWeightedToken1,
        int24 resolvedCenterTick,
        uint160 sqrtPriceX96,
        int24 currentTick,
        uint256[] memory weights
    ) {
        (sqrtPriceX96, currentTick, , ) = poolManager.getSlot0(poolKey.toId());

        // Resolve sentinel value
        {
            resolvedCenterTick = params.centerTick;
            if (params.centerTick == type(int24).max) {
                int24 compressed = currentTick / poolKey.tickSpacing;
                if (currentTick < 0 && currentTick % poolKey.tickSpacing != 0) {
                    compressed--;
                }
                resolvedCenterTick = compressed * poolKey.tickSpacing;
            }
        }

        // Get density weights from strategy
        weights = _callStrategyForWeights(ranges, params, resolvedCenterTick, currentTick, poolKey.tickSpacing);

        // Calculate weighted token requirements
        for (uint256 i = 0; i < ranges.length; i++) {
            if (ranges[i].lowerTick != 0 || ranges[i].upperTick != 0) {
                uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
                uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

                (uint256 amount0For1e18, uint256 amount1For1e18) = LiquidityAmounts.getAmountsForLiquidity(
                    sqrtPriceX96,
                    sqrtPriceLower,
                    sqrtPriceUpper,
                    1e18
                );

                totalWeightedToken0 += (amount0For1e18 * weights[i]) / 1e18;
                totalWeightedToken1 += (amount1For1e18 * weights[i]) / 1e18;
            }
        }
    }

    function _calculateInitialLiquiditiesPublic(
        IMultiPositionManager.Range[] memory ranges,
        uint256 depositToken0,
        uint256 depositToken1,
        uint160 sqrtPriceX96,
        uint256[] memory weights
    ) internal pure returns (uint128[] memory) {
        return _calculateInitialLiquidities(ranges, depositToken0, depositToken1, sqrtPriceX96, weights);
    }

    function _calculateInitialLiquidities(
        IMultiPositionManager.Range[] memory ranges,
        uint256 depositToken0,
        uint256 depositToken1,
        uint160 sqrtPriceX96,
        uint256[] memory weights
    ) private pure returns (uint128[] memory) {
        uint128[] memory liquidities = new uint128[](ranges.length);

        if (ranges.length == 0 || weights.length == 0) return liquidities;

        LiquidityCalcContext memory ctx;

        // First pass: calculate weighted requirements
        for (uint256 i = 0; i < ranges.length; i++) {
            if (ranges[i].lowerTick != 0 || ranges[i].upperTick != 0) {
                ctx.sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
                ctx.sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

                (uint256 amount0For1e18, uint256 amount1For1e18) = LiquidityAmounts.getAmountsForLiquidity(
                    sqrtPriceX96,
                    ctx.sqrtPriceLower,
                    ctx.sqrtPriceUpper,
                    1e18
                );

                ctx.totalWeightedToken0 += (amount0For1e18 * weights[i]) / 1e18;
                ctx.totalWeightedToken1 += (amount1For1e18 * weights[i]) / 1e18;
            }
        }

        if (ctx.totalWeightedToken0 == 0 && ctx.totalWeightedToken1 == 0) return liquidities;

        // Calculate maximum liquidity
        {
            uint128 maxLiquidityFromToken0 = ctx.totalWeightedToken0 > 0
                ? uint128((depositToken0 * 1e18) / ctx.totalWeightedToken0)
                : type(uint128).max;
            uint128 maxLiquidityFromToken1 = ctx.totalWeightedToken1 > 0
                ? uint128((depositToken1 * 1e18) / ctx.totalWeightedToken1)
                : type(uint128).max;

            ctx.totalLiquidity = maxLiquidityFromToken0 < maxLiquidityFromToken1
                ? maxLiquidityFromToken0
                : maxLiquidityFromToken1;
        }

        // Second pass: distribute liquidity
        for (uint256 i = 0; i < ranges.length; i++) {
            if (ranges[i].lowerTick != 0 || ranges[i].upperTick != 0) {
                uint128 targetLiquidity = uint128((uint256(ctx.totalLiquidity) * weights[i]) / 1e18);

                {
                    ctx.sqrtPriceLower = TickMath.getSqrtPriceAtTick(ranges[i].lowerTick);
                    ctx.sqrtPriceUpper = TickMath.getSqrtPriceAtTick(ranges[i].upperTick);

                    (uint256 amount0, uint256 amount1) = LiquidityAmounts.getAmountsForLiquidity(
                        sqrtPriceX96,
                        ctx.sqrtPriceLower,
                        ctx.sqrtPriceUpper,
                        targetLiquidity
                    );

                    liquidities[i] = LiquidityAmounts.getLiquidityForAmounts(
                        sqrtPriceX96,
                        ctx.sqrtPriceLower,
                        ctx.sqrtPriceUpper,
                        amount0,
                        amount1
                    );
                }
            }
        }

        return liquidities;
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

    function _extractTickArrays(
        IMultiPositionManager.Range[] memory ranges
    ) private pure returns (int24[] memory lowerTicks, int24[] memory upperTicks) {
        lowerTicks = new int24[](ranges.length);
        upperTicks = new int24[](ranges.length);

        for (uint256 i = 0; i < ranges.length; i++) {
            lowerTicks[i] = ranges[i].lowerTick;
            upperTicks[i] = ranges[i].upperTick;
        }
    }

    function _executeStrategyCall(
        StrategyCallParams memory callParams
    ) private view returns (uint256[] memory) {
        bool weightsAreProportional = (callParams.weight0 == 0 && callParams.weight1 == 0);

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
                weightsAreProportional
            )
        );

        (bool success, bytes memory returnData) = callParams.strategyAddress.staticcall(callData);

        if (!success) revert("CalculateDensitiesFailed");
        return abi.decode(returnData, (uint256[]));
    }

    function getMaxWithdrawable(
        MultiPositionManager manager
    ) internal view returns (uint256 maxToken0, uint256 maxToken1) {
        (uint256 total0, uint256 total1, , ) = manager.getTotalAmounts();

        ( , , , , , , , bool carpetEnabled) = manager.lastStrategyParams();

        if (!carpetEnabled) {
            return (total0, total1);
        }

        uint256 reserved0;
        uint256 reserved1;

        {
            PoolKey memory poolKey = manager.poolKey();
            int24 minUsable = TickMath.minUsableTick(poolKey.tickSpacing);
            int24 maxUsable = TickMath.maxUsableTick(poolKey.tickSpacing);

            (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) = manager.getPositions();

            uint256 carpetToken0 = 0;
            uint256 carpetToken1 = 0;

            for (uint256 i = 0; i < ranges.length; i++) {
                if (ranges[i].lowerTick == minUsable || ranges[i].upperTick == maxUsable) {
                    carpetToken0 += positionData[i].amount0;
                    carpetToken1 += positionData[i].amount1;
                }
            }

            reserved0 = carpetToken0 + 1;
            reserved1 = carpetToken1 + 1;
        }

        maxToken0 = total0 > reserved0 ? total0 - reserved0 : 0;
        maxToken1 = total1 > reserved1 ? total1 - reserved1 : 0;
    }

    function calculateDirectDepositInMin(
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

}