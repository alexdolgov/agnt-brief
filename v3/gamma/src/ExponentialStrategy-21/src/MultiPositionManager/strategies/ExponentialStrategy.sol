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

    struct CarpetInfo {
        bool hasLeftCarpet;
        bool hasRightCarpet;
        uint256 startIdx;
        uint256 endIdx;
        uint256 numRanges;
    }

    /**
     * @notice Generate ranges with optional carpet positions
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

    function _generateRanges(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 tickSpacing, bool useCarpet)
        internal
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        // Align center tick to tick spacing
        centerTick = (centerTick / tickSpacing) * tickSpacing;

        GridParams memory grid = _calculateGridParams(centerTick, ticksLeft, ticksRight, tickSpacing);

        if (useCarpet) {
            return _generateRangesWithCarpet(grid.leftBound, grid.rightBound, grid.width, tickSpacing, centerTick);
        } else {
            return _generateStandardRanges(grid.leftBound, grid.rightBound, grid.width, centerTick);
        }
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
        (int24 rawLeftBound, int24 rawRightBound) = _calculateRawBounds(centerTick, ticksLeft, ticksRight, grid.minUsable, grid.maxUsable);

        // Calculate width and numRanges dynamically
        (grid.width, grid.numRanges) = _calculateWidthAndNumRanges(rawLeftBound, rawRightBound, tickSpacing);

        // Calculate center-aligned bounds
        (grid.leftBound, grid.rightBound) = _calculateCenterAlignedBounds(
            centerTick, grid.width, grid.numRanges, tickSpacing, grid.minUsable, grid.maxUsable
        );
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

    function _calculateCenterAlignedBounds(
        int24 centerTick,
        int24 width,
        uint256 numRanges,
        int24 tickSpacing,
        int24 minUsable,
        int24 maxUsable
    ) private pure returns (int24 leftBound, int24 rightBound) {
        // Clamp centerTick to usable bounds first to prevent overflow
        if (centerTick < minUsable) centerTick = minUsable;
        if (centerTick > maxUsable) centerTick = maxUsable;

        // Use int256 for intermediate calculations to prevent overflow
        int256 halfWidthInt = int256(width) / 2;
        int256 centerRangeLowerInt = int256(centerTick) - halfWidthInt;
        centerRangeLowerInt = (centerRangeLowerInt / int256(tickSpacing)) * int256(tickSpacing);
        int256 centerRangeUpperInt = centerRangeLowerInt + int256(width);

        // Calculate how many ranges on each side
        uint256 halfRanges = numRanges / 2;
        int256 widthInt = int256(uint256(int256(width)));

        // Left bound: start from centerRangeLower and go left by halfRanges
        int256 leftBoundInt = centerRangeLowerInt - int256(halfRanges) * widthInt;
        if (leftBoundInt < int256(minUsable)) leftBoundInt = int256(minUsable);
        leftBound = int24(leftBoundInt);

        // Right bound: start from centerRangeUpper and go right by halfRanges
        int256 rightBoundInt = centerRangeUpperInt + int256(halfRanges) * widthInt;
        if (rightBoundInt > int256(maxUsable)) rightBoundInt = int256(maxUsable);
        rightBound = int24(rightBoundInt);
    }

    function _generateStandardRanges(int24 leftBound, int24 rightBound, int24 width, int24 centerTick)
        private
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        // Count how many ranges we'll create
        uint256 numRanges;
        int256 currentInt = int256(leftBound);
        int256 rightBoundInt = int256(rightBound);
        int256 widthInt = int256(uint256(int256(width)));
        while (currentInt < rightBoundInt) {
            unchecked {
                ++numRanges;
            }
            currentInt += widthInt;
        }

        // Allocate arrays
        lowerTicks = new int24[](numRanges);
        upperTicks = new int24[](numRanges);

        // Generate non-overlapping ranges
        int24 current = leftBound;
        for (uint256 i = 0; i < numRanges;) {
            lowerTicks[i] = current;

            int256 nextUpper = int256(current) + int256(uint256(int256(width)));
            if (nextUpper > int256(type(int24).max)) {
                upperTicks[i] = type(int24).max;
            } else {
                upperTicks[i] = int24(nextUpper);
            }

            if (upperTicks[i] > rightBound) {
                upperTicks[i] = rightBound;
            }

            int256 nextCurrent = int256(current) + int256(uint256(int256(width)));
            if (nextCurrent <= int256(type(int24).max)) {
                current = int24(nextCurrent);
            } else {
                break;
            }
            unchecked {
                ++i;
            }
        }
    }

    function _generateRangesWithCarpet(int24 leftBound, int24 rightBound, int24 width, int24 tickSpacing, int24 centerTick)
        private
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        (int24[] memory baseLowers, int24[] memory baseUppers) = _generateStandardRanges(leftBound, rightBound, width, centerTick);

        int24 minUsable = TickMath.minUsableTick(tickSpacing);
        int24 maxUsable = TickMath.maxUsableTick(tickSpacing);

        bool hasLeftCarpet = baseLowers[0] > minUsable;
        bool hasRightCarpet = baseUppers[baseUppers.length - 1] < maxUsable;

        uint256 numCarpetRanges;
        if (hasLeftCarpet) {
            unchecked { ++numCarpetRanges; }
        }
        if (hasRightCarpet) {
            unchecked { ++numCarpetRanges; }
        }

        uint256 totalRanges = baseLowers.length + numCarpetRanges;
        lowerTicks = new int24[](totalRanges);
        upperTicks = new int24[](totalRanges);

        uint256 idx;

        if (hasLeftCarpet) {
            lowerTicks[idx] = minUsable;
            upperTicks[idx] = baseLowers[0];
            unchecked { ++idx; }
        }

        uint256 baseLength = baseLowers.length;
        for (uint256 i = 0; i < baseLength;) {
            lowerTicks[idx] = baseLowers[i];
            upperTicks[idx] = baseUppers[i];
            unchecked { ++idx; ++i; }
        }

        if (hasRightCarpet) {
            lowerTicks[idx] = baseUppers[baseUppers.length - 1];
            upperTicks[idx] = maxUsable;
        }
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

        if (!params.useAssetWeights) {
            require(params.weight0 + params.weight1 == 1e18, "Weights must sum to 1e18");
        }

        if (params.useCarpet) {
            _processWeightsWithCarpet(weights, params);
        } else {
            _processWeightsNoCarpet(weights, params);
        }

        return weights;
    }

    function _processWeightsNoCarpet(uint256[] memory weights, DensityParams memory params) private pure {
        uint256 numRanges = params.lowerTicks.length;

        // Find the center range (contains centerTick) to get its upper bound
        int24 centerRangeUpper = params.centerTick; // fallback
        for (uint256 i = 0; i < numRanges;) {
            if (params.lowerTicks[i] <= params.centerTick && params.centerTick < params.upperTicks[i]) {
                centerRangeUpper = params.upperTicks[i];
                break;
            }
            unchecked { ++i; }
        }

        // Calculate lambda using ACTUAL clamped span
        uint256 actualLeftSpan;
        uint256 actualRightSpan;
        {
            int256 leftSpan = int256(params.centerTick) - int256(params.lowerTicks[0]);
            actualLeftSpan = leftSpan > 0 ? uint256(leftSpan) : 0;

            int256 rightSpan = int256(params.upperTicks[numRanges - 1]) - int256(centerRangeUpper);
            actualRightSpan = rightSpan > 0 ? uint256(rightSpan) : 0;
        }

        uint256 effectiveTicksLeft = actualLeftSpan < uint256(params.ticksLeft) ? actualLeftSpan : uint256(params.ticksLeft);
        uint256 effectiveTicksRight = actualRightSpan < uint256(params.ticksRight) ? actualRightSpan : uint256(params.ticksRight);

        uint256 lambdaLeft = effectiveTicksLeft / 3;
        uint256 lambdaRight = effectiveTicksRight / 3;

        if (lambdaLeft == 0) lambdaLeft = 1;
        if (lambdaRight == 0) lambdaRight = 1;

        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight;

        for (uint256 i = 0; i < numRanges;) {
            int256 distance;
            bool isLeftOfCenter;

            if (params.lowerTicks[i] <= params.centerTick && params.centerTick < params.upperTicks[i]) {
                // Center range
                distance = 0;
                isLeftOfCenter = false;
            } else if (params.upperTicks[i] <= params.centerTick) {
                // Left of center: measure from upperTick to centerTick (center range's lower bound)
                distance = int256(params.centerTick) - int256(params.upperTicks[i]) + 1;
                isLeftOfCenter = true;
            } else {
                // Right of center: measure from lowerTick to centerRangeUpper (symmetric with left)
                distance = int256(params.lowerTicks[i]) - int256(centerRangeUpper) + 1;
                isLeftOfCenter = false;
            }
            uint256 absDistance = distance < 0 ? uint256(-distance) : uint256(distance);

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

    function _processWeightsWithCarpet(uint256[] memory weights, DensityParams memory params) private pure {
        _processWeightsWithCarpetPhase1(weights, params);
    }

    function _processWeightsWithCarpetPhase1(uint256[] memory weights, DensityParams memory params) private pure {
        uint256 numRanges = params.lowerTicks.length;

        (bool hasLeftCarpet, bool hasRightCarpet, uint256 startIdx, uint256 endIdx) =
            _getCarpetInfo(params.lowerTicks, params.upperTicks, numRanges, params.tickSpacing);

        (uint256 lambdaLeft, uint256 lambdaRight, int24 centerRangeUpper) = _calculateClampedLambda(params, startIdx, endIdx);

        (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) =
            _calculateExponentialWeights(params, startIdx, endIdx, lambdaLeft, lambdaRight, centerRangeUpper);

        CarpetInfo memory carpetInfo = CarpetInfo({
            hasLeftCarpet: hasLeftCarpet,
            hasRightCarpet: hasRightCarpet,
            startIdx: startIdx,
            endIdx: endIdx,
            numRanges: numRanges
        });

        _finalizeCarpetWeights(weights, adjustedWeights, totalAdjustedWeight, carpetInfo);
    }

    function _calculateClampedLambda(DensityParams memory params, uint256 startIdx, uint256 endIdx)
        private
        pure
        returns (uint256 lambdaLeft, uint256 lambdaRight, int24 centerRangeUpper)
    {
        // Find the center range to get its upper bound
        centerRangeUpper = params.centerTick; // fallback
        for (uint256 i = startIdx; i < endIdx;) {
            if (params.lowerTicks[i] <= params.centerTick && params.centerTick < params.upperTicks[i]) {
                centerRangeUpper = params.upperTicks[i];
                break;
            }
            unchecked { ++i; }
        }

        int256 leftSpan = int256(params.centerTick) - int256(params.lowerTicks[startIdx]);
        uint256 actualLeftSpan = leftSpan > 0 ? uint256(leftSpan) : 0;

        int256 rightSpan = int256(params.upperTicks[endIdx - 1]) - int256(centerRangeUpper);
        uint256 actualRightSpan = rightSpan > 0 ? uint256(rightSpan) : 0;

        uint256 effectiveTicksLeft = actualLeftSpan < uint256(params.ticksLeft) ? actualLeftSpan : uint256(params.ticksLeft);
        uint256 effectiveTicksRight = actualRightSpan < uint256(params.ticksRight) ? actualRightSpan : uint256(params.ticksRight);

        lambdaLeft = effectiveTicksLeft / 3;
        lambdaRight = effectiveTicksRight / 3;

        if (lambdaLeft == 0) lambdaLeft = 1;
        if (lambdaRight == 0) lambdaRight = 1;
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

    function _calculateExponentialWeights(
        DensityParams memory params,
        uint256 startIdx,
        uint256 endIdx,
        uint256 lambdaLeft,
        uint256 lambdaRight,
        int24 centerRangeUpper
    ) private pure returns (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) {
        uint256 numRanges = params.lowerTicks.length;
        uint256[] memory baseWeights = new uint256[](numRanges);

        for (uint256 i = startIdx; i < endIdx;) {
            int256 distance;
            bool isLeftOfCenter;

            if (params.lowerTicks[i] <= params.centerTick && params.centerTick < params.upperTicks[i]) {
                // Center range
                distance = 0;
                isLeftOfCenter = false;
            } else if (params.upperTicks[i] <= params.centerTick) {
                // Left of center: measure from upperTick to centerTick (center range's lower bound)
                distance = int256(params.centerTick) - int256(params.upperTicks[i]) + 1;
                isLeftOfCenter = true;
            } else {
                // Right of center: measure from lowerTick to centerRangeUpper (symmetric with left)
                distance = int256(params.lowerTicks[i]) - int256(centerRangeUpper) + 1;
                isLeftOfCenter = false;
            }
            uint256 absDistance = distance < 0 ? uint256(-distance) : uint256(distance);

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
            unchecked { ++i; }
        }

        adjustedWeights = new uint256[](numRanges);

        if (params.useAssetWeights) {
            for (uint256 i = startIdx; i < endIdx;) {
                adjustedWeights[i] = baseWeights[i];
                unchecked {
                    totalAdjustedWeight += adjustedWeights[i];
                    ++i;
                }
            }
        } else {
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

    function _finalizeCarpetWeights(
        uint256[] memory weights,
        uint256[] memory adjustedWeights,
        uint256 totalAdjustedWeight,
        CarpetInfo memory carpetInfo
    ) private pure {
        uint256 numCarpetRanges;
        if (carpetInfo.hasLeftCarpet) {
            unchecked { ++numCarpetRanges; }
        }
        if (carpetInfo.hasRightCarpet) {
            unchecked { ++numCarpetRanges; }
        }

        uint256 carpetWeightPerRange = numCarpetRanges != 0 ? CARPET_WEIGHT / numCarpetRanges : 0;
        uint256 remainingWeight = numCarpetRanges != 0
            ? LiquidityDistributionLibrary.WAD - CARPET_WEIGHT
            : LiquidityDistributionLibrary.WAD;

        if (carpetInfo.hasLeftCarpet) {
            weights[0] = carpetWeightPerRange;
        }
        if (carpetInfo.hasRightCarpet) {
            weights[carpetInfo.numRanges - 1] = carpetWeightPerRange;
        }

        if (totalAdjustedWeight != 0) {
            for (uint256 i = carpetInfo.startIdx; i < carpetInfo.endIdx;) {
                weights[i] = FullMath.mulDiv(adjustedWeights[i], remainingWeight, totalAdjustedWeight);
                unchecked { ++i; }
            }
        }
    }

    function supportsWeights() external pure override returns (bool) {
        return true;
    }

    function getStrategyType() external pure override returns (string memory) {
        return "Exponential";
    }

    function getDescription() external pure override returns (string memory) {
        return "Exponential distribution with center-aligned odd-number ranges";
    }
}
