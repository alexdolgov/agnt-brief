// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import "./ILiquidityStrategy.sol";
import "./LiquidityDistributionLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";

/**
 * @title CamelStrategy
 * @notice Camel (double-peaked) distribution with center-aligned odd-number range generation
 * @dev Key features:
 *      1. Dynamic range count, forced odd - guarantees single center range
 *      2. Center-aligned grid: ranges are generated relative to centerTick, not 0
 *      3. Clamped ticksLeft/ticksRight for proper weight calculation
 */
contract CamelStrategy is ILiquidityStrategy {
    using LiquidityDistributionLibrary for uint256[];
    using LiquidityDistributionLibrary for int24;

    uint256 public constant CARPET_WEIGHT = 0.00005e18; // 0.005% carpet weight

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

    /**
     * @notice Generate ranges with optional full-range floor position
     * @dev Allows explicit control over floor position generation
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
     * @notice Calculate Camel density with all options
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

        // Calculate CLAMPED tick bounds
        uint256 effectiveTicksLeft;
        uint256 effectiveTicksRight;
        {
            int256 leftSpan = int256(params.centerTick) - int256(params.lowerTicks[0]);
            uint256 actualLeftSpan = leftSpan > 0 ? uint256(leftSpan) : 0;
            effectiveTicksLeft = actualLeftSpan < uint256(params.ticksLeft) ? actualLeftSpan : uint256(params.ticksLeft);

            int256 rightSpan = int256(params.upperTicks[numRanges - 1]) - int256(params.centerTick);
            uint256 actualRightSpan = rightSpan > 0 ? uint256(rightSpan) : 0;
            effectiveTicksRight = actualRightSpan < uint256(params.ticksRight) ? actualRightSpan : uint256(params.ticksRight);
        }
        if (effectiveTicksLeft == 0) effectiveTicksLeft = 1;
        if (effectiveTicksRight == 0) effectiveTicksRight = 1;

        // Calculate peak parameters using clamped values
        (int24 leftPeak, int24 rightPeak,) =
            _calculatePeakParamsClamped(params.centerTick, effectiveTicksLeft, effectiveTicksRight);

        // Calculate base camel weights
        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight;

        for (uint256 i = 0; i < numRanges;) {
            baseWeights[i] = _calculateCamelWeightFixed(
                params, i, leftPeak, rightPeak, effectiveTicksLeft, effectiveTicksRight
            );

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

    function _processWeightsWithCarpet(uint256[] memory weights, DensityParams memory params) private pure {
        // Process in two phases to avoid stack depth
        _processWeightsWithCarpetPhase1(weights, params);
    }

    function _processWeightsWithCarpetPhase1(uint256[] memory weights, DensityParams memory params) private pure {
        uint256 numRanges = params.lowerTicks.length;

        // Use the tick spacing from params instead of inferring
        int24 tickSpacing = params.tickSpacing;

        (bool hasLeftCarpet, bool hasRightCarpet, uint256 startIdx, uint256 endIdx) =
            _getCarpetInfo(params.lowerTicks, params.upperTicks, numRanges, tickSpacing);

        // Calculate clamped tick spans and peak parameters
        (uint256 effectiveTicksLeft, uint256 effectiveTicksRight, int24 leftPeak, int24 rightPeak) =
            _getClampedParamsForCarpet(params, startIdx, endIdx);

        // Calculate base and adjusted weights
        (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) =
            _calculateCarpetedWeightsFixed(params, startIdx, endIdx, leftPeak, rightPeak, effectiveTicksLeft, effectiveTicksRight);

        // Store carpet info in a struct to reduce parameters
        CarpetInfo memory carpetInfo = CarpetInfo({
            hasLeftCarpet: hasLeftCarpet,
            hasRightCarpet: hasRightCarpet,
            startIdx: startIdx,
            endIdx: endIdx,
            numRanges: numRanges
        });

        // Finalize carpet weights
        _finalizeCarpetWeights(weights, adjustedWeights, totalAdjustedWeight, carpetInfo);
    }

    function _getClampedParamsForCarpet(DensityParams memory params, uint256 startIdx, uint256 endIdx)
        private
        pure
        returns (uint256 effectiveTicksLeft, uint256 effectiveTicksRight, int24 leftPeak, int24 rightPeak)
    {
        // For carpet mode, main ranges start at startIdx and end at endIdx
        int256 leftSpan = int256(params.centerTick) - int256(params.lowerTicks[startIdx]);
        uint256 actualLeftSpan = leftSpan > 0 ? uint256(leftSpan) : 0;
        effectiveTicksLeft = actualLeftSpan < uint256(params.ticksLeft) ? actualLeftSpan : uint256(params.ticksLeft);

        int256 rightSpan = int256(params.upperTicks[endIdx - 1]) - int256(params.centerTick);
        uint256 actualRightSpan = rightSpan > 0 ? uint256(rightSpan) : 0;
        effectiveTicksRight = actualRightSpan < uint256(params.ticksRight) ? actualRightSpan : uint256(params.ticksRight);

        if (effectiveTicksLeft == 0) effectiveTicksLeft = 1;
        if (effectiveTicksRight == 0) effectiveTicksRight = 1;

        // Calculate peak parameters using clamped values
        (leftPeak, rightPeak,) = _calculatePeakParamsClamped(params.centerTick, effectiveTicksLeft, effectiveTicksRight);
    }

    struct CarpetInfo {
        bool hasLeftCarpet;
        bool hasRightCarpet;
        uint256 startIdx;
        uint256 endIdx;
        uint256 numRanges;
    }

    function _getCarpetInfo(int24[] memory lowerTicks, int24[] memory upperTicks, uint256 numRanges, int24 tickSpacing)
        private
        pure
        returns (bool hasLeftCarpet, bool hasRightCarpet, uint256 startIdx, uint256 endIdx)
    {
        int24 minUsable = TickMath.minUsableTick(tickSpacing);
        int24 maxUsable = TickMath.maxUsableTick(tickSpacing);

        hasLeftCarpet = lowerTicks[0] == minUsable;
        hasRightCarpet = upperTicks[numRanges - 1] == maxUsable;

        startIdx = hasLeftCarpet ? 1 : 0;
        endIdx = hasRightCarpet ? numRanges - 1 : numRanges;
    }

    function _finalizeCarpetWeights(
        uint256[] memory weights,
        uint256[] memory adjustedWeights,
        uint256 totalAdjustedWeight,
        CarpetInfo memory carpetInfo
    ) private pure {
        uint256 numCarpetRanges;
        if (carpetInfo.hasLeftCarpet) {
            unchecked {
                ++numCarpetRanges;
            }
        }
        if (carpetInfo.hasRightCarpet) {
            unchecked {
                ++numCarpetRanges;
            }
        }

        // Only subtract CARPET_WEIGHT if we actually have carpet ranges
        uint256 carpetWeightPerRange = numCarpetRanges != 0 ? CARPET_WEIGHT / numCarpetRanges : 0;
        uint256 remainingWeight =
            numCarpetRanges != 0 ? LiquidityDistributionLibrary.WAD - CARPET_WEIGHT : LiquidityDistributionLibrary.WAD;

        if (carpetInfo.hasLeftCarpet) {
            weights[0] = carpetWeightPerRange;
        }
        if (carpetInfo.hasRightCarpet) {
            weights[carpetInfo.numRanges - 1] = carpetWeightPerRange;
        }

        // Normalize main range weights
        if (totalAdjustedWeight != 0) {
            for (uint256 i = carpetInfo.startIdx; i < carpetInfo.endIdx;) {
                weights[i] = FullMath.mulDiv(adjustedWeights[i], remainingWeight, totalAdjustedWeight);
                unchecked {
                    ++i;
                }
            }
        }
    }

    function _calculateCarpetedWeights(
        DensityParams memory params,
        uint256 startIdx,
        uint256 endIdx,
        int24 leftPeak,
        int24 rightPeak,
        uint256 /* sigma */
    ) private pure returns (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) {
        uint256 numRanges = params.lowerTicks.length;
        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight;

        // Calculate base camel weights for main ranges
        for (uint256 i = startIdx; i < endIdx;) {
            baseWeights[i] = _calculateCamelWeight(
                params, int24((int256(params.lowerTicks[i]) + int256(params.upperTicks[i])) / 2), leftPeak, rightPeak
            );

            if (baseWeights[i] == 0) baseWeights[i] = 1;
            unchecked {
                totalBaseWeight += baseWeights[i];
                ++i;
            }
        }

        // Apply weight preferences to main ranges
        adjustedWeights = new uint256[](numRanges);

        if (params.useAssetWeights) {
            // Proportional weights: use base distribution (no filtering)
            for (uint256 i = startIdx; i < endIdx;) {
                adjustedWeights[i] = baseWeights[i];
                unchecked {
                    totalAdjustedWeight += adjustedWeights[i];
                    ++i;
                }
            }
        } else {
            // Explicit preferences: apply weight-based filtering
            for (uint256 i = startIdx; i < endIdx;) {
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
        }
    }

    function _calculateCamelWeight(DensityParams memory params, int24 posCenter, int24 leftPeak, int24 rightPeak)
        private
        pure
        returns (uint256)
    {
        // Calculate range boundaries for sigma calculations
        int24 minimum = params.centerTick - int24(params.ticksLeft);
        int24 maximum = params.centerTick + int24(params.ticksRight);

        // Left hump Gaussian (centered at leftPeak)
        uint256 leftHumpWeight = _calculateHumpWeight(posCenter, leftPeak, minimum, params.centerTick, true);

        // Right hump Gaussian (centered at rightPeak)
        uint256 rightHumpWeight = _calculateHumpWeight(posCenter, rightPeak, params.centerTick, maximum, false);

        // Python: density = np.where(x<center, density_1, density_2) + 0.5
        if (posCenter < params.centerTick) {
            return leftHumpWeight + LiquidityDistributionLibrary.HALF_WAD;
        } else {
            return rightHumpWeight + LiquidityDistributionLibrary.HALF_WAD;
        }
    }

    function _calculateHumpWeight(
        int24 posCenter,
        int24 peakCenter,
        int24 boundaryLeft,
        int24 boundaryRight,
        bool isLeftHump
    ) private pure returns (uint256) {
        int256 distance = int256(posCenter) - int256(peakCenter);
        uint256 absDistance = distance < 0 ? uint256(-distance) : uint256(distance);

        // Calculate sigmas based on hump type
        uint256 sigma;
        if (isLeftHump) {
            // Left hump: different sigmas for left/right of peak
            if (posCenter < peakCenter) {
                sigma = uint256(int256(peakCenter - boundaryLeft)) / 3;
            } else {
                sigma = uint256(int256(boundaryRight - peakCenter)) / 3;
            }
        } else {
            // Right hump: different sigmas for left/right of peak
            if (posCenter < peakCenter) {
                sigma = uint256(int256(peakCenter - boundaryLeft)) / 3;
            } else {
                sigma = uint256(int256(boundaryRight - peakCenter)) / 3;
            }
        }

        if (sigma == 0) sigma = 1;

        // Gaussian: exp(-0.5 * (distance/sigma)²)
        if (absDistance < sigma * 6) {
            int256 normalizedDist = int256((absDistance * 1e18) / sigma);
            int256 exponent = -(normalizedDist * normalizedDist) / 2e18;
            return LiquidityDistributionLibrary.exp(exponent);
        }

        return 0;
    }

    function _calculatePeakParams(int24 centerTick, uint24 ticksLeft, uint24 ticksRight)
        private
        pure
        returns (int24 leftPeak, int24 rightPeak, uint256 sigma)
    {
        // Match Python logic: peaks at center ± (range/5)
        uint24 leftOffset = ticksLeft / 5;
        uint24 rightOffset = ticksRight / 5;

        // Ensure minimum offset
        if (leftOffset < 20) leftOffset = 20;
        if (rightOffset < 20) rightOffset = 20;

        leftPeak = centerTick - int24(leftOffset);
        rightPeak = centerTick + int24(rightOffset);

        // Sigma: peak_distance / 3 (matching Python)
        uint256 peakDistance = uint256(leftOffset + rightOffset);
        sigma = (peakDistance / 3) * LiquidityDistributionLibrary.WAD / 1000;
        if (sigma < 10 * LiquidityDistributionLibrary.WAD / 1000) {
            sigma = 10 * LiquidityDistributionLibrary.WAD / 1000;
        }
    }

    function _calculatePeakParamsClamped(int24 centerTick, uint256 effectiveTicksLeft, uint256 effectiveTicksRight)
        private
        pure
        returns (int24 leftPeak, int24 rightPeak, uint256 sigma)
    {
        // Match Python logic: peaks at center ± (range/5) using clamped values
        uint256 leftOffset = effectiveTicksLeft / 5;
        uint256 rightOffset = effectiveTicksRight / 5;

        // Ensure minimum offset
        if (leftOffset < 20) leftOffset = 20;
        if (rightOffset < 20) rightOffset = 20;

        leftPeak = centerTick - int24(uint24(leftOffset));
        rightPeak = centerTick + int24(uint24(rightOffset));

        // Sigma: peak_distance / 3 (matching Python)
        uint256 peakDistance = leftOffset + rightOffset;
        sigma = (peakDistance / 3) * LiquidityDistributionLibrary.WAD / 1000;
        if (sigma < 10 * LiquidityDistributionLibrary.WAD / 1000) {
            sigma = 10 * LiquidityDistributionLibrary.WAD / 1000;
        }
    }

    function _calculateCamelWeightFixed(
        DensityParams memory params,
        uint256 rangeIndex,
        int24 leftPeak,
        int24 rightPeak,
        uint256 effectiveTicksLeft,
        uint256 effectiveTicksRight
    ) private pure returns (uint256) {
        // Calculate range boundaries for sigma calculations using clamped values
        int24 minimum = params.centerTick - int24(uint24(effectiveTicksLeft));
        int24 maximum = params.centerTick + int24(uint24(effectiveTicksRight));

        // Determine if range is left or right of center using direct method
        bool isLeftOfCenter;
        if (params.lowerTicks[rangeIndex] <= params.centerTick && params.centerTick < params.upperTicks[rangeIndex]) {
            // Range contains centerTick - could be on either hump boundary
            // Use the range's lower tick to determine which hump
            isLeftOfCenter = params.lowerTicks[rangeIndex] < params.centerTick;
        } else if (params.upperTicks[rangeIndex] <= params.centerTick) {
            isLeftOfCenter = true;
        } else {
            isLeftOfCenter = false;
        }

        // Calculate position using range bounds directly instead of midpoint
        int24 posCenter;
        if (params.lowerTicks[rangeIndex] <= params.centerTick && params.centerTick < params.upperTicks[rangeIndex]) {
            // Range contains centerTick - use centerTick as position for this range
            posCenter = params.centerTick;
        } else if (isLeftOfCenter) {
            // For left ranges, use the upper bound (closest to center)
            posCenter = params.upperTicks[rangeIndex];
        } else {
            // For right ranges, use the lower bound (closest to center)
            posCenter = params.lowerTicks[rangeIndex];
        }

        // Left hump Gaussian (centered at leftPeak)
        uint256 leftHumpWeight = _calculateHumpWeight(posCenter, leftPeak, minimum, params.centerTick, true);

        // Right hump Gaussian (centered at rightPeak)
        uint256 rightHumpWeight = _calculateHumpWeight(posCenter, rightPeak, params.centerTick, maximum, false);

        // Python: density = np.where(x<center, density_1, density_2) + 0.5
        if (isLeftOfCenter) {
            return leftHumpWeight + LiquidityDistributionLibrary.HALF_WAD;
        } else {
            return rightHumpWeight + LiquidityDistributionLibrary.HALF_WAD;
        }
    }

    function _calculateCarpetedWeightsFixed(
        DensityParams memory params,
        uint256 startIdx,
        uint256 endIdx,
        int24 leftPeak,
        int24 rightPeak,
        uint256 effectiveTicksLeft,
        uint256 effectiveTicksRight
    ) private pure returns (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) {
        uint256 numRanges = params.lowerTicks.length;
        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight;

        // Calculate base camel weights for main ranges
        for (uint256 i = startIdx; i < endIdx;) {
            baseWeights[i] = _calculateCamelWeightFixed(
                params, i, leftPeak, rightPeak, effectiveTicksLeft, effectiveTicksRight
            );

            if (baseWeights[i] == 0) baseWeights[i] = 1;
            unchecked {
                totalBaseWeight += baseWeights[i];
                ++i;
            }
        }

        // Apply weight preferences to main ranges
        adjustedWeights = new uint256[](numRanges);

        if (params.useAssetWeights) {
            // Proportional weights: use base distribution (no filtering)
            for (uint256 i = startIdx; i < endIdx;) {
                adjustedWeights[i] = baseWeights[i];
                unchecked {
                    totalAdjustedWeight += adjustedWeights[i];
                    ++i;
                }
            }
        } else {
            // Explicit preferences: apply weight-based filtering
            for (uint256 i = startIdx; i < endIdx;) {
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
        }
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
        return "Camel";
    }

    /**
     * @notice Get human-readable description
     */
    function getDescription() external pure override returns (string memory) {
        return "Camel distribution (double-peaked) with optional full-range floor and weight preferences";
    }
}
