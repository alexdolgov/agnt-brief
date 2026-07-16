// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import "./ILiquidityStrategy.sol";
import "./LiquidityDistributionLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {wadExp} from "solmate/src/utils/SignedWadMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";

/**
 * @title ExponentialStrategy
 * @notice Exponential distribution with center-aligned odd-number range generation
 * @dev Key features:
 *      1. Dynamic range count, forced odd - guarantees single center range
 *      2. Center-aligned grid: ranges are generated relative to centerTick, not 0
 *      3. Center range is always [centerTick - width/2, centerTick + width/2]
 *      4. Clamped ticksLeft/ticksRight for proper lambda calculation
 */
contract ExponentialStrategy is ILiquidityStrategy {
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

    struct CenterBounds {
        int24 lower;
        int24 upper;
    }

    /**
     * @notice Generate ranges with optional full-range floor position
     * @dev Uses center-aligned grid with odd number of ranges
     */
    function generateRanges(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 tickSpacing, bool useCarpet)
        external
        pure
        override
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        return _generateRanges(centerTick, ticksLeft, ticksRight, tickSpacing, useCarpet);
    }

    struct GridParams {
        int24 centerTick;
        int24 width;
        int24 leftBound;
        int24 rightBound;
        int24 minUsable;
        int24 maxUsable;
        uint256 numRanges;
    }

    struct RangeContext {
        int256 leftBound;
        int256 rightBound;
        int256 centerLower;
        int256 centerUpper;
        int256 width;
    }

    function _generateRanges(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 tickSpacing, bool useCarpet)
        internal
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        // Align center tick to tick spacing
        centerTick = (centerTick / tickSpacing) * tickSpacing;

        GridParams memory grid = _calculateGridParams(centerTick, ticksLeft, ticksRight, tickSpacing);

        (int24[] memory baseLowers, int24[] memory baseUppers) =
            _generateStandardRanges(grid.leftBound, grid.rightBound, grid.width, centerTick, tickSpacing);

        if (!useCarpet) {
            return (baseLowers, baseUppers);
        }

        return _prependFullRangeFloor(baseLowers, baseUppers, tickSpacing);
    }

    function _calculateGridParams(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 tickSpacing)
        private
        pure
        returns (GridParams memory grid)
    {
        grid.centerTick = centerTick;
        grid.minUsable = TickMath.minUsableTick(tickSpacing);
        grid.maxUsable = TickMath.maxUsableTick(tickSpacing);

        // Calculate raw bounds
        (int24 rawLeftBound, int24 rawRightBound) =
            _calculateRawBounds(centerTick, ticksLeft, ticksRight, grid.minUsable, grid.maxUsable);

        // Align bounds to tick spacing and clamp to usable range
        (grid.leftBound, grid.rightBound) =
            _alignBoundsToTickSpacing(rawLeftBound, rawRightBound, tickSpacing, grid.minUsable, grid.maxUsable);

        // Calculate width and numRanges dynamically based on aligned span
        (grid.width, grid.numRanges) = _calculateWidthAndNumRanges(grid.leftBound, grid.rightBound, tickSpacing);
    }

    function _calculateRawBounds(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 minUsable, int24 maxUsable)
        private
        pure
        returns (int24 rawLeftBound, int24 rawRightBound)
    {
        int256 tempLeft = int256(centerTick) - int256(uint256(ticksLeft));
        rawLeftBound = tempLeft < int256(minUsable) ? minUsable : int24(tempLeft);

        int256 tempRight = int256(centerTick) + int256(uint256(ticksRight));
        rawRightBound = tempRight > int256(maxUsable) ? maxUsable : int24(tempRight);
    }

    function _calculateWidthAndNumRanges(int24 rawLeftBound, int24 rawRightBound, int24 tickSpacing)
        private
        pure
        returns (int24 width, uint256 numRanges)
    {
        uint256 actualSpan = uint256(int256(rawRightBound) - int256(rawLeftBound));

        // Calculate width (target ~20 ranges)
        uint256 targetRanges = 20;
        uint256 divisor = targetRanges * uint24(tickSpacing);
        width = int24(uint24(((actualSpan + divisor - 1) / divisor) * uint24(tickSpacing)));
        if (width < tickSpacing) width = tickSpacing;

        // Calculate actual number of ranges
        numRanges = actualSpan / uint256(int256(width));
        if (numRanges == 0) numRanges = 1;

        // If even, add 1 to make odd (guarantees single center range)
        if (numRanges % 2 == 0) {
            numRanges += 1;
        }
    }

    function _alignBoundsToTickSpacing(
        int24 rawLeftBound,
        int24 rawRightBound,
        int24 tickSpacing,
        int24 minUsable,
        int24 maxUsable
    ) private pure returns (int24 leftBound, int24 rightBound) {
        int256 spacing = int256(tickSpacing);
        int256 left = (int256(rawLeftBound) / spacing) * spacing;
        if (rawLeftBound < 0 && rawLeftBound % tickSpacing != 0) {
            left -= spacing;
        }
        if (left < int256(minUsable)) left = int256(minUsable);

        int256 right = (int256(rawRightBound) / spacing) * spacing;
        if (rawRightBound > 0 && rawRightBound % tickSpacing != 0) {
            right += spacing;
        }
        if (right > int256(maxUsable)) right = int256(maxUsable);

        leftBound = int24(left);
        rightBound = int24(right);
    }

    function _generateStandardRanges(
        int24 leftBound,
        int24 rightBound,
        int24 width,
        int24 centerTick,
        int24 tickSpacing
    ) private pure returns (int24[] memory lowerTicks, int24[] memory upperTicks) {
        if (leftBound >= rightBound) {
            return (new int24[](0), new int24[](0));
        }
        RangeContext memory ctx = _buildRangeContext(leftBound, rightBound, width, centerTick, tickSpacing);
        return _buildRanges(ctx);
    }

    function _buildRangeContext(
        int24 leftBound,
        int24 rightBound,
        int24 width,
        int24 centerTick,
        int24 tickSpacing
    ) private pure returns (RangeContext memory ctx) {
        ctx.leftBound = int256(leftBound);
        ctx.rightBound = int256(rightBound);
        ctx.width = int256(width);
        int256 rawCenterLower = int256(centerTick) - (ctx.width / 2);
        ctx.centerLower = _alignDownToSpacing(rawCenterLower, int256(tickSpacing));
        if (ctx.centerLower < ctx.leftBound) ctx.centerLower = ctx.leftBound;
        ctx.centerUpper = ctx.centerLower + ctx.width;
        if (ctx.centerUpper > ctx.rightBound) ctx.centerUpper = ctx.rightBound;
    }

    function _buildRanges(RangeContext memory ctx)
        private
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        uint256 leftCount = _countLeftRanges(ctx.centerLower, ctx.leftBound, ctx.width);
        uint256 rightCount = _countRightRanges(ctx.centerUpper, ctx.rightBound, ctx.width);

        uint256 total = leftCount + 1 + rightCount;
        lowerTicks = new int24[](total);
        upperTicks = new int24[](total);

        uint256 idx = 0;
        if (leftCount > 0) {
            int256[] memory leftLowers = new int256[](leftCount);
            int256[] memory leftUppers = new int256[](leftCount);
            _fillLeftRanges(ctx.centerLower, ctx.leftBound, ctx.width, leftLowers, leftUppers);
            for (uint256 i = leftCount; i > 0; --i) {
                lowerTicks[idx] = int24(leftLowers[i - 1]);
                upperTicks[idx] = int24(leftUppers[i - 1]);
                unchecked { ++idx; }
            }
        }

        lowerTicks[idx] = int24(ctx.centerLower);
        upperTicks[idx] = int24(ctx.centerUpper);
        unchecked { ++idx; }

        if (rightCount > 0) {
            _fillRightRanges(ctx.centerUpper, ctx.rightBound, ctx.width, lowerTicks, upperTicks, idx);
        }
    }

    function _alignDownToSpacing(int256 value, int256 spacing) private pure returns (int256) {
        int256 aligned = (value / spacing) * spacing;
        if (value < 0 && value % spacing != 0) {
            aligned -= spacing;
        }
        return aligned;
    }

    function _countLeftRanges(int256 centerLower, int256 leftBound, int256 width) private pure returns (uint256 count) {
        int256 cursor = centerLower;
        while (cursor > leftBound) {
            int256 nextLower = cursor - width;
            if (nextLower < leftBound) nextLower = leftBound;
            ++count;
            if (nextLower == cursor) break;
            cursor = nextLower;
        }
    }

    function _countRightRanges(int256 centerUpper, int256 rightBound, int256 width) private pure returns (uint256 count) {
        int256 cursor = centerUpper;
        while (cursor < rightBound) {
            int256 nextUpper = cursor + width;
            if (nextUpper > rightBound) nextUpper = rightBound;
            ++count;
            if (nextUpper == cursor) break;
            cursor = nextUpper;
        }
    }

    function _fillLeftRanges(
        int256 centerLower,
        int256 leftBound,
        int256 width,
        int256[] memory leftLowers,
        int256[] memory leftUppers
    ) private pure {
        int256 cursor = centerLower;
        for (uint256 i = 0; i < leftLowers.length; ++i) {
            int256 nextLower = cursor - width;
            if (nextLower < leftBound) nextLower = leftBound;
            leftLowers[i] = nextLower;
            leftUppers[i] = cursor;
            cursor = nextLower;
        }
    }

    function _fillRightRanges(
        int256 centerUpper,
        int256 rightBound,
        int256 width,
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        uint256 startIdx
    ) private pure {
        int256 cursor = centerUpper;
        uint256 idx = startIdx;
        while (cursor < rightBound) {
            int256 nextUpper = cursor + width;
            if (nextUpper > rightBound) nextUpper = rightBound;
            lowerTicks[idx] = int24(cursor);
            upperTicks[idx] = int24(nextUpper);
            unchecked { ++idx; }
            if (nextUpper == cursor) break;
            cursor = nextUpper;
        }
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
     * @notice Calculate Exponential density with all options
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

        if (!params.useAssetWeights) {
            require(params.weight0 + params.weight1 == 1e18, "Weights must sum to 1e18");
        }

        _processWeightsNoCarpet(weights, params);
        _applyFullRangeFloorWeight(weights, params);

        return weights;
    }

    function _processWeightsNoCarpet(uint256[] memory weights, DensityParams memory params) private pure {
        uint256 numRanges = params.lowerTicks.length;

        // Find center bounds and calculate lambdas in scoped block to reduce stack depth
        CenterBounds memory center;
        uint256 lambdaLeft;
        uint256 lambdaRight;
        {
            // Find the center range (contains centerTick) to get BOTH bounds for symmetric distance calculation
            center.lower = params.centerTick; // fallback
            center.upper = params.centerTick; // fallback
            for (uint256 i = 0; i < numRanges;) {
                if (params.lowerTicks[i] <= params.centerTick && params.centerTick < params.upperTicks[i]) {
                    center.lower = params.lowerTicks[i];
                    center.upper = params.upperTicks[i];
                    break;
                }
                unchecked { ++i; }
            }

            // Calculate lambda using ACTUAL clamped span (symmetric: left uses center.lower, right uses center.upper)
            int256 leftSpan = int256(center.lower) - int256(params.lowerTicks[0]);
            uint256 actualLeftSpan = leftSpan > 0 ? uint256(leftSpan) : 0;

            int256 rightSpan = int256(params.upperTicks[numRanges - 1]) - int256(center.upper);
            uint256 actualRightSpan = rightSpan > 0 ? uint256(rightSpan) : 0;

            uint256 effectiveTicksLeft = actualLeftSpan < uint256(params.ticksLeft) ? actualLeftSpan : uint256(params.ticksLeft);
            uint256 effectiveTicksRight = actualRightSpan < uint256(params.ticksRight) ? actualRightSpan : uint256(params.ticksRight);

            lambdaLeft = effectiveTicksLeft / 3;
            lambdaRight = effectiveTicksRight / 3;

            if (lambdaLeft == 0) lambdaLeft = 1;
            if (lambdaRight == 0) lambdaRight = 1;
        }

        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight;

        // Use the midpoint of the center range for symmetric distance calculation
        // This avoids the edge case where centerTick equals a range boundary
        int24 centerMidpoint = (center.lower + center.upper) / 2;

        for (uint256 i = 0; i < numRanges;) {
            bool isLeftOfCenter;
            uint256 absDistance;

            // Calculate distance from centerMidpoint to range's midpoint (not edge)
            // This ensures symmetric weights for both small and large ticksLeft/ticksRight
            int24 rangeMidpoint = (params.lowerTicks[i] + params.upperTicks[i]) / 2;
            int256 dist = int256(rangeMidpoint) - int256(centerMidpoint);
            absDistance = dist < 0 ? uint256(-dist) : uint256(dist);

            // Determine if left or right of center for lambda selection
            isLeftOfCenter = rangeMidpoint < centerMidpoint;

            uint256 lambda = isLeftOfCenter ? lambdaLeft : lambdaRight;

            uint256 weight;
            if (absDistance < lambda * 10) {
                int256 exponent = -int256((absDistance * 1e18) / lambda);
                int256 expResult = wadExp(exponent);
                weight = expResult > 0 ? uint256(expResult) : 0;
            } else {
                weight = 0;
            }

            baseWeights[i] = weight;
            unchecked {
                totalBaseWeight += weight;
                ++i;
            }
        }

        // Apply weight preferences
        if (params.useAssetWeights) {
            if (totalBaseWeight != 0) {
                for (uint256 i = 0; i < numRanges;) {
                    weights[i] = FullMath.mulDiv(baseWeights[i], LiquidityDistributionLibrary.WAD, totalBaseWeight);
                    unchecked { ++i; }
                }
            }
        } else {
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

            if (totalAdjustedWeight != 0) {
                for (uint256 i = 0; i < numRanges;) {
                    weights[i] = FullMath.mulDiv(adjustedWeights[i], LiquidityDistributionLibrary.WAD, totalAdjustedWeight);
                    unchecked { ++i; }
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

    function supportsWeights() external pure override returns (bool) {
        return true;
    }

    function getStrategyType() external pure override returns (string memory) {
        return "Exponential";
    }

    function getDescription() external pure override returns (string memory) {
        return "Exponential distribution with optional full-range floor";
    }
}