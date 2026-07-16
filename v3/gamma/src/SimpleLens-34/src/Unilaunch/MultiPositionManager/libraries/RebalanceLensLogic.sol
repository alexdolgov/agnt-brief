// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {ILiquidityStrategy} from "../strategies/ILiquidityStrategy.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {LiquidityAmounts} from "v4-periphery/lib/v4-core/test/utils/LiquidityAmounts.sol";
import {RebalanceLogic} from "./RebalanceLogic.sol";

/**
 * @title RebalanceLensLogic
 * @notice Lens-only helpers split out of RebalanceLogic to reduce bytecode size.
 */
library RebalanceLensLogic {
    struct WeightCalculationParams {
        ILiquidityStrategy strategy;
        int24 center;
        uint24 tLeft;
        uint24 tRight;
        int24 tickSpacing;
        bool useCarpet;
        uint160 sqrtPriceX96;
        int24 currentTick;
    }

    function calculateWeightsFromStrategy(
        ILiquidityStrategy strategy,
        int24 center,
        uint24 tLeft,
        uint24 tRight,
        int24 tickSpacing,
        bool useCarpet,
        uint160 sqrtPriceX96,
        int24 currentTick
    ) internal pure returns (uint256 weight0, uint256 weight1) {
        WeightCalculationParams memory params = WeightCalculationParams({
            strategy: strategy,
            center: center,
            tLeft: tLeft,
            tRight: tRight,
            tickSpacing: tickSpacing,
            useCarpet: useCarpet,
            sqrtPriceX96: sqrtPriceX96,
            currentTick: currentTick
        });

        (int24[] memory lowerTicks, int24[] memory upperTicks) =
            strategy.generateRanges(center, tLeft, tRight, tickSpacing, useCarpet);

        if (lowerTicks.length == 0) return (0.5e18, 0.5e18);

        (uint256 totalAmount0, uint256 totalAmount1) = _calculateWeightedAmounts(params, lowerTicks, upperTicks);

        if (totalAmount0 == 0 && totalAmount1 == 0) return (0.5e18, 0.5e18);

        uint256 value0InToken1 = FullMath.mulDiv(
            FullMath.mulDiv(totalAmount0, uint256(sqrtPriceX96), 1 << 96), uint256(sqrtPriceX96), 1 << 96
        );
        uint256 totalValue = value0InToken1 + totalAmount1;

        if (totalValue == 0) return (0.5e18, 0.5e18);

        weight0 = FullMath.mulDiv(value0InToken1, 1e18, totalValue);
        weight1 = 1e18 - weight0;
    }

    /**
     * @notice Calculate optimal swap amount to achieve target weight distribution
     */
    function calculateOptimalSwap(
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        uint256 weight0,
        uint256 /* weight1 */
    ) internal pure returns (bool swapToken0, uint256 swapAmount) {
        uint256 value0InToken1 =
            FullMath.mulDiv(FullMath.mulDiv(amount0, uint256(sqrtPriceX96), 1 << 96), uint256(sqrtPriceX96), 1 << 96);

        uint256 totalValue = value0InToken1 + amount1;
        uint256 target0ValueInToken1 = FullMath.mulDiv(totalValue, weight0, 1e18);

        uint256 target0Amount = FullMath.mulDiv(
            FullMath.mulDiv(target0ValueInToken1, 1 << 96, uint256(sqrtPriceX96)), 1 << 96, uint256(sqrtPriceX96)
        );

        if (amount0 > target0Amount) {
            swapToken0 = true;
            swapAmount = amount0 - target0Amount;
        } else {
            swapToken0 = false;
            uint256 token0Deficit = target0Amount - amount0;
            swapAmount = FullMath.mulDiv(
                FullMath.mulDiv(token0Deficit, uint256(sqrtPriceX96), 1 << 96), uint256(sqrtPriceX96), 1 << 96
            );
        }
    }

    function _getDensities(WeightCalculationParams memory params, int24[] memory lowerTicks, int24[] memory upperTicks)
        private
        pure
        returns (uint256[] memory)
    {
        return params.strategy.calculateDensities(
            lowerTicks,
            upperTicks,
            params.currentTick,
            params.center,
            params.tLeft,
            params.tRight,
            0,
            0,
            params.useCarpet,
            params.tickSpacing,
            true
        );
    }

    function _calculateWeightedAmounts(
        WeightCalculationParams memory params,
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) private pure returns (uint256 totalAmount0, uint256 totalAmount1) {
        uint256[] memory densities = _getDensities(params, lowerTicks, upperTicks);
        densities = RebalanceLogic.adjustWeightsForFullRangeFloor(
            densities,
            lowerTicks,
            upperTicks,
            params.tickSpacing,
            params.useCarpet
        );

        uint160 sqrtPrice = params.sqrtPriceX96;
        uint256 length = lowerTicks.length;
        for (uint256 i = 0; i < length;) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(lowerTicks[i]);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(upperTicks[i]);

            (uint256 amount0For1e18, uint256 amount1For1e18) =
                LiquidityAmounts.getAmountsForLiquidity(sqrtPrice, sqrtPriceLower, sqrtPriceUpper, 1e18);

            totalAmount0 += (amount0For1e18 * densities[i]) / 1e18;
            totalAmount1 += (amount1For1e18 * densities[i]) / 1e18;
            unchecked {
                ++i;
            }
        }
    }
}
