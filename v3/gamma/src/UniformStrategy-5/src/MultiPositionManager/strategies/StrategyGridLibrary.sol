// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {TickMath} from "v4-core/libraries/TickMath.sol";

library StrategyGridLibrary {
    struct Grid {
        int24 centerTick;
        int24 width;
        int24 rawLeftBound;
        int24 rawRightBound;
        int24 leftBound;
        int24 rightBound;
        int24 minUsable;
        int24 maxUsable;
    }

    function buildGrid(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 tickSpacing)
        internal
        pure
        returns (Grid memory grid)
    {
        grid.minUsable = TickMath.minUsableTick(tickSpacing);
        grid.maxUsable = TickMath.maxUsableTick(tickSpacing);
        grid.centerTick = snapDown(clamp(centerTick, grid.minUsable, grid.maxUsable), tickSpacing);

        (grid.rawLeftBound, grid.rawRightBound) =
            clampRawBounds(grid.centerTick, ticksLeft, ticksRight, grid.minUsable, grid.maxUsable);

        grid.width = calculateWidth(grid.rawLeftBound, grid.rawRightBound, tickSpacing);
        (grid.leftBound, grid.rightBound) =
            snapBounds(grid.rawLeftBound, grid.rawRightBound, tickSpacing, grid.minUsable, grid.maxUsable);
    }

    function clampRawBounds(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 minUsable, int24 maxUsable)
        internal
        pure
        returns (int24 rawLeftBound, int24 rawRightBound)
    {
        int256 tempLeft = int256(centerTick) - int256(uint256(ticksLeft));
        int256 tempRight = int256(centerTick) + int256(uint256(ticksRight));

        if (tempLeft < int256(minUsable)) tempLeft = int256(minUsable);
        if (tempRight > int256(maxUsable)) tempRight = int256(maxUsable);

        rawLeftBound = int24(tempLeft);
        rawRightBound = int24(tempRight);
    }

    function calculateWidth(int24 rawLeftBound, int24 rawRightBound, int24 tickSpacing)
        internal
        pure
        returns (int24 width)
    {
        uint256 actualSpan = uint256(int256(rawRightBound) - int256(rawLeftBound));
        uint256 divisor = 20 * uint24(tickSpacing);

        width = int24(uint24(((actualSpan + divisor - 1) / divisor) * uint24(tickSpacing)));
        if (width < tickSpacing) width = tickSpacing;
    }

    function snapBounds(int24 rawLeftBound, int24 rawRightBound, int24 tickSpacing, int24 minUsable, int24 maxUsable)
        internal
        pure
        returns (int24 leftBound, int24 rightBound)
    {
        leftBound = clamp(snapDown(rawLeftBound, tickSpacing), minUsable, maxUsable);
        rightBound = clamp(snapUp(rawRightBound, tickSpacing), minUsable, maxUsable);

        if (rightBound > leftBound) {
            return (leftBound, rightBound);
        }

        int256 candidateRight = int256(leftBound) + int256(tickSpacing);
        if (candidateRight <= int256(maxUsable)) {
            return (leftBound, int24(candidateRight));
        }

        rightBound = maxUsable;
        int256 candidateLeft = int256(rightBound) - int256(tickSpacing);
        leftBound = candidateLeft >= int256(minUsable) ? int24(candidateLeft) : minUsable;

        return (leftBound, rightBound);
    }

    function effectiveTickSpans(
        int24 leftBound,
        int24 rightBound,
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight
    ) internal pure returns (uint256 effectiveTicksLeft, uint256 effectiveTicksRight) {
        uint256 actualLeftSpan = centerTick > leftBound ? uint256(int256(centerTick) - int256(leftBound)) : 0;
        uint256 actualRightSpan = rightBound > centerTick ? uint256(int256(rightBound) - int256(centerTick)) : 0;

        effectiveTicksLeft = actualLeftSpan < uint256(ticksLeft) ? actualLeftSpan : uint256(ticksLeft);
        effectiveTicksRight = actualRightSpan < uint256(ticksRight) ? actualRightSpan : uint256(ticksRight);
    }

    function midpoint(int24 lowerTick, int24 upperTick) internal pure returns (int24) {
        return int24((int256(lowerTick) + int256(upperTick)) / 2);
    }

    function containsCenterTick(int24 lowerTick, int24 upperTick, int24 centerTick) internal pure returns (bool) {
        return lowerTick <= centerTick && centerTick < upperTick;
    }

    function midpointOffsetX2(int24 lowerTick, int24 upperTick, int24 centerTick) internal pure returns (int256) {
        return int256(lowerTick) + int256(upperTick) - (2 * int256(centerTick));
    }

    function generateEqualWidthRanges(int24 leftBound, int24 rightBound, int24 width)
        internal
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
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

        lowerTicks = new int24[](numRanges);
        upperTicks = new int24[](numRanges);

        int24 current = leftBound;
        for (uint256 i = 0; i < numRanges;) {
            lowerTicks[i] = current;

            int256 nextUpper = int256(current) + widthInt;
            upperTicks[i] = nextUpper > int256(type(int24).max) ? type(int24).max : int24(nextUpper);

            if (upperTicks[i] > rightBound) {
                upperTicks[i] = rightBound;
            }

            int256 nextCurrent = int256(current) + widthInt;
            if (nextCurrent > int256(type(int24).max)) {
                break;
            }

            current = int24(nextCurrent);
            unchecked {
                ++i;
            }
        }
    }

    function generateCenterOwnedRanges(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 tickSpacing)
        internal
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        Grid memory grid = buildGrid(centerTick, ticksLeft, ticksRight, tickSpacing);

        if (
            ticksLeft == 0 || ticksRight == 0 || grid.rawLeftBound >= grid.centerTick
                || grid.rawRightBound <= grid.centerTick
        ) {
            return generateEqualWidthRanges(grid.leftBound, grid.rightBound, grid.width);
        }

        int24 width = _centerOwnedWidth(grid.width, tickSpacing);
        int256 widthInt = int256(uint256(uint24(width)));
        int256 seedLowerInt = int256(grid.centerTick) - (widthInt / 2);
        int256 leftBoundInt = seedLowerInt;

        if (seedLowerInt > int256(grid.rawLeftBound)) {
            uint256 leftSteps = _ceilDiv(uint256(seedLowerInt - int256(grid.rawLeftBound)), uint256(uint24(width)));
            leftBoundInt -= int256(leftSteps * uint256(uint24(width)));
        }

        uint256 bandCount = _ceilDiv(uint256(int256(grid.rawRightBound) - leftBoundInt), uint256(uint24(width)));
        if (bandCount == 0) {
            bandCount = 1;
        }

        int256 rightBoundInt = leftBoundInt + int256(bandCount * uint256(uint24(width)));

        if (rightBoundInt > int256(grid.maxUsable)) {
            uint256 overflowSteps = _ceilDiv(uint256(rightBoundInt - int256(grid.maxUsable)), uint256(uint24(width)));
            int256 shift = int256(overflowSteps * uint256(uint24(width)));
            leftBoundInt -= shift;
            rightBoundInt -= shift;
        }

        if (leftBoundInt < int256(grid.minUsable)) {
            uint256 underflowSteps = _ceilDiv(uint256(int256(grid.minUsable) - leftBoundInt), uint256(uint24(width)));
            int256 shift = int256(underflowSteps * uint256(uint24(width)));
            leftBoundInt += shift;
            rightBoundInt += shift;
        }

        if (
            leftBoundInt < int256(grid.minUsable) || rightBoundInt > int256(grid.maxUsable)
                || leftBoundInt > int256(grid.rawLeftBound) || rightBoundInt < int256(grid.rawRightBound)
        ) {
            return generateEqualWidthRanges(grid.leftBound, grid.rightBound, grid.width);
        }

        return generateEqualWidthRanges(int24(leftBoundInt), int24(rightBoundInt), width);
    }

    function _centerOwnedWidth(int24 width, int24 tickSpacing) private pure returns (int24) {
        uint24 spacing = uint24(tickSpacing);
        uint24 widthU = uint24(width);
        uint256 multiples = widthU / spacing;
        if (widthU % spacing != 0) {
            ++multiples;
        }
        if (multiples % 2 == 1) {
            ++multiples;
        }
        return int24(uint24(multiples * spacing));
    }

    function _ceilDiv(uint256 numerator, uint256 denominator) private pure returns (uint256) {
        return numerator == 0 ? 0 : ((numerator - 1) / denominator) + 1;
    }

    function snapDown(int24 tick, int24 tickSpacing) internal pure returns (int24) {
        int24 compressed = tick / tickSpacing;
        if (tick < 0 && tick % tickSpacing != 0) {
            compressed -= 1;
        }
        return compressed * tickSpacing;
    }

    function snapUp(int24 tick, int24 tickSpacing) internal pure returns (int24) {
        int24 roundedDown = snapDown(tick, tickSpacing);
        if (roundedDown < tick) {
            return roundedDown + tickSpacing;
        }
        return roundedDown;
    }

    function clamp(int24 tick, int24 minUsable, int24 maxUsable) internal pure returns (int24) {
        if (tick < minUsable) return minUsable;
        if (tick > maxUsable) return maxUsable;
        return tick;
    }
}
