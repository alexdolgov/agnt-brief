// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import "./ILiquidityStrategy.sol";
import "./LiquidityDistributionLibrary.sol";
import "./StrategyGridLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";

/**
 * @title TriangleStrategy
 * @notice Triangle distribution with center-owned range generation
 * @dev Key features:
 *      1. Dynamic width targeting ~20 ranges
 *      2. Two-sided requests generate one band that owns centerTick
 *      3. Triangle weights are measured directly from centerTick
 */
contract TriangleStrategy is ILiquidityStrategy {
    struct DensityParams {
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
        bool useAssetWeights;
    }

    /**
     * @notice Generate ranges with optional full-range floor position
     * @dev Uses a center-owned equal-width grid for two-sided requests
     */
    function generateRanges(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 tickSpacing, bool useCarpet)
        external
        pure
        override
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        return _generateRanges(centerTick, ticksLeft, ticksRight, tickSpacing, useCarpet);
    }

    function _generateRanges(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 tickSpacing, bool useCarpet)
        internal
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        (int24[] memory baseLowers, int24[] memory baseUppers) =
            StrategyGridLibrary.generateCenterOwnedRanges(centerTick, ticksLeft, ticksRight, tickSpacing);

        if (!useCarpet) {
            return (baseLowers, baseUppers);
        }

        return _prependFullRangeFloor(baseLowers, baseUppers, tickSpacing);
    }

    function _prependFullRangeFloor(int24[] memory baseLowers, int24[] memory baseUppers, int24 tickSpacing)
        private
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        int24 minUsable = TickMath.minUsableTick(tickSpacing);
        int24 maxUsable = TickMath.maxUsableTick(tickSpacing);
        uint256 length = baseLowers.length;

        if (length == 0) {
            lowerTicks = new int24[](1);
            upperTicks = new int24[](1);
            lowerTicks[0] = minUsable;
            upperTicks[0] = maxUsable;
            return (lowerTicks, upperTicks);
        }

        uint256 floorIdx = type(uint256).max;
        for (uint256 i = 0; i < length; ++i) {
            if (_isFullRange(baseLowers[i], baseUppers[i], minUsable, maxUsable)) {
                floorIdx = i;
                break;
            }
        }

        if (floorIdx == 0) {
            return (baseLowers, baseUppers);
        }

        if (floorIdx == type(uint256).max) {
            lowerTicks = new int24[](length + 1);
            upperTicks = new int24[](length + 1);
            lowerTicks[0] = minUsable;
            upperTicks[0] = maxUsable;
            for (uint256 i = 0; i < length; ++i) {
                lowerTicks[i + 1] = baseLowers[i];
                upperTicks[i + 1] = baseUppers[i];
            }
            return (lowerTicks, upperTicks);
        }

        lowerTicks = new int24[](length);
        upperTicks = new int24[](length);
        lowerTicks[0] = minUsable;
        upperTicks[0] = maxUsable;

        uint256 idx = 1;
        for (uint256 i = 0; i < length; ++i) {
            if (i == floorIdx) {
                continue;
            }
            lowerTicks[idx] = baseLowers[i];
            upperTicks[idx] = baseUppers[i];
            unchecked {
                ++idx;
            }
        }
    }

    function _isFullRange(int24 lowerTick, int24 upperTick, int24 minUsable, int24 maxUsable)
        private
        pure
        returns (bool)
    {
        return lowerTick == minUsable && upperTick == maxUsable;
    }

    /**
     * @notice Calculate Triangle density with all options
     */
    function calculateDensities(
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        int24 currentTick,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        uint256 weight0,
        uint256 weight1,
        bool useCarpet,
        int24 tickSpacing,
        bool useAssetWeights
    ) public pure override returns (uint256[] memory weights) {
        DensityParams memory params = DensityParams({
            lowerTicks: lowerTicks,
            upperTicks: upperTicks,
            currentTick: currentTick,
            centerTick: centerTick,
            ticksLeft: ticksLeft,
            ticksRight: ticksRight,
            weight0: weight0,
            weight1: weight1,
            useCarpet: useCarpet,
            tickSpacing: tickSpacing,
            useAssetWeights: useAssetWeights
        });

        return _calculateDensitiesInternal(params);
    }

    function _calculateDensitiesInternal(DensityParams memory params) private pure returns (uint256[] memory weights) {
        uint256 numRanges = params.lowerTicks.length;
        weights = new uint256[](numRanges);

        if (numRanges == 0) return weights;

        if (params.useCarpet && numRanges > 1) {
            int24 minUsable = TickMath.minUsableTick(params.tickSpacing);
            int24 maxUsable = TickMath.maxUsableTick(params.tickSpacing);
            if (params.lowerTicks[0] == minUsable && params.upperTicks[0] == maxUsable) {
                int24[] memory baseLower = new int24[](numRanges - 1);
                int24[] memory baseUpper = new int24[](numRanges - 1);
                for (uint256 i = 1; i < numRanges; ++i) {
                    baseLower[i - 1] = params.lowerTicks[i];
                    baseUpper[i - 1] = params.upperTicks[i];
                }

                DensityParams memory baseParams = params;
                baseParams.lowerTicks = baseLower;
                baseParams.upperTicks = baseUpper;

                uint256[] memory baseWeights = new uint256[](numRanges - 1);
                _processWeightsNoCarpet(baseWeights, baseParams);
                weights[0] = 0;
                for (uint256 i = 0; i < baseWeights.length; ++i) {
                    weights[i + 1] = baseWeights[i];
                }
                return weights;
            }
        }

        // Validate weights sum to 1e18 (skip for proportional weights)
        if (!params.useAssetWeights) {
            require(params.weight0 + params.weight1 == 1e18, "Weights must sum to 1e18");
        }

        _processWeightsNoCarpet(weights, params);
        _applyFullRangeFloorWeight(weights, params);

        return weights;
    }

    function _processWeightsNoCarpet(uint256[] memory weights, DensityParams memory params) private pure {
        uint256 numRanges = params.lowerTicks.length;

        (uint256 effectiveTicksLeft, uint256 effectiveTicksRight) = StrategyGridLibrary.effectiveTickSpans(
            params.lowerTicks[0],
            params.upperTicks[numRanges - 1],
            params.centerTick,
            params.ticksLeft,
            params.ticksRight
        );
        if (effectiveTicksLeft == 0) effectiveTicksLeft = 1;
        if (effectiveTicksRight == 0) effectiveTicksRight = 1;

        // Calculate base triangle weights
        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight;

        for (uint256 i = 0; i < numRanges;) {
            bool containsCenter =
                StrategyGridLibrary.containsCenterTick(params.lowerTicks[i], params.upperTicks[i], params.centerTick);
            int256 midpointOffsetX2 =
                StrategyGridLibrary.midpointOffsetX2(params.lowerTicks[i], params.upperTicks[i], params.centerTick);
            bool isLeftOfCenter = midpointOffsetX2 < 0;
            uint256 span = isLeftOfCenter ? effectiveTicksLeft : effectiveTicksRight;
            uint256 spanX2 = 2 * span;
            uint256 absDistanceX2 =
                containsCenter ? 0 : midpointOffsetX2 < 0 ? uint256(-midpointOffsetX2) : uint256(midpointOffsetX2);

            baseWeights[i] = absDistanceX2 >= spanX2
                ? 1
                : LiquidityDistributionLibrary.WAD - (absDistanceX2 * LiquidityDistributionLibrary.WAD) / spanX2;

            // Ensure minimum weight
            if (baseWeights[i] == 0) baseWeights[i] = 1;

            unchecked {
                totalBaseWeight += baseWeights[i];
                ++i;
            }
        }

        // Apply weight preferences
        if (params.useAssetWeights) {
            // Proportional weights: use base distribution (no filtering)
            if (totalBaseWeight != 0) {
                for (uint256 i = 0; i < numRanges;) {
                    weights[i] = FullMath.mulDiv(baseWeights[i], LiquidityDistributionLibrary.WAD, totalBaseWeight);
                    unchecked {
                        ++i;
                    }
                }
            }
        } else {
            // Explicit preferences: apply weight-based filtering
            uint256[] memory adjustedWeights = new uint256[](numRanges);
            uint256 totalAdjustedWeight;

            for (uint256 i = 0; i < numRanges;) {
                if (params.upperTicks[i] <= params.currentTick) {
                    adjustedWeights[i] = FullMath.mulDiv(baseWeights[i] * params.weight1, 2, 1e18);
                } else if (params.lowerTicks[i] >= params.currentTick) {
                    adjustedWeights[i] = FullMath.mulDiv(baseWeights[i] * params.weight0, 2, 1e18);
                } else {
                    adjustedWeights[i] = baseWeights[i];
                }
                unchecked {
                    totalAdjustedWeight += adjustedWeights[i];
                    ++i;
                }
            }

            // Normalize to sum to 1e18
            if (totalAdjustedWeight != 0) {
                for (uint256 i = 0; i < numRanges;) {
                    weights[i] =
                        FullMath.mulDiv(adjustedWeights[i], LiquidityDistributionLibrary.WAD, totalAdjustedWeight);
                    unchecked {
                        ++i;
                    }
                }
            }
        }
    }

    function _applyFullRangeFloorWeight(uint256[] memory weights, DensityParams memory params) private pure {
        if (!params.useCarpet || weights.length == 0) {
            return;
        }

        int24 minUsable = TickMath.minUsableTick(params.tickSpacing);
        int24 maxUsable = TickMath.maxUsableTick(params.tickSpacing);

        if (params.lowerTicks[0] != minUsable || params.upperTicks[0] != maxUsable) {
            return;
        }

        if (weights.length == 1) {
            weights[0] = LiquidityDistributionLibrary.WAD;
            return;
        }

        uint256 sum;
        for (uint256 i = 1; i < weights.length; ++i) {
            sum += weights[i];
        }

        if (sum == 0) {
            weights[0] = 0;
            return;
        }

        for (uint256 i = 1; i < weights.length; ++i) {
            weights[i] = FullMath.mulDiv(weights[i], LiquidityDistributionLibrary.WAD, sum);
        }
        weights[0] = 0;
    }

    /**
     * @notice This strategy supports weighted distribution
     */
    function supportsWeights() external pure override returns (bool) {
        return true;
    }

    /**
     * @notice Get strategy type identifier
     */
    function getStrategyType() external pure override returns (string memory) {
        return "Triangle";
    }

    /**
     * @notice Get human-readable description
     */
    function getDescription() external pure override returns (string memory) {
        return "Triangle distribution with optional full-range floor and weight preferences";
    }
}
