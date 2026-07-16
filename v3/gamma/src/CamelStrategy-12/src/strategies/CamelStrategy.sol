// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import "./ILiquidityStrategy.sol";
import "./LiquidityDistributionLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";

/**
 * @title CamelStrategy
 * @notice Unified Camel (double-peaked) distribution strategy supporting all options
 * @dev Supports standard, carpeted, weighted, and weighted+carpeted variants
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

    /**
     * @notice Generate ranges with optional carpet positions
     * @dev Allows explicit control over carpet position generation
     */
    function generateRanges(int24 centerTick, uint24 ticksLeft, uint24 ticksRight, int24 tickSpacing, bool useCarpet)
        external
        view
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

        // Calculate and clamp bounds
        int24 leftBound;
        int24 rightBound;
        {
            // Safe calculation for leftBound
            int256 tempLeft = int256(centerTick) - int256(uint256(ticksLeft));
            if (tempLeft < int256(type(int24).min)) {
                leftBound = type(int24).min;
            } else {
                leftBound = int24(tempLeft);
            }

            // Safe calculation for rightBound
            int256 tempRight = int256(centerTick) + int256(uint256(ticksRight));
            if (tempRight > int256(type(int24).max)) {
                rightBound = type(int24).max;
            } else {
                rightBound = int24(tempRight);
            }

            // Clamp to Uniswap v4's usable tick bounds BEFORE calculating width
            int24 minUsable = TickMath.minUsableTick(tickSpacing);
            int24 maxUsable = TickMath.maxUsableTick(tickSpacing);

            if (leftBound < minUsable) leftBound = minUsable;
            if (rightBound > maxUsable) rightBound = maxUsable;
        }

        // Calculate width from actual span
        int24 width;
        {
            uint256 actualSpan = uint256(int256(rightBound) - int256(leftBound));
            uint256 divisor = 20 * uint24(tickSpacing);
            width = int24(uint24(((actualSpan + divisor - 1) / divisor) * uint24(tickSpacing)));
            if (width < tickSpacing) width = tickSpacing;
        }

        // Align bounds to width
        leftBound = (leftBound / width) * width;
        rightBound = (rightBound / width) * width;

        // Ensure bounds stay within usable range after alignment
        {
            int24 minUsable = TickMath.minUsableTick(tickSpacing);
            int24 maxUsable = TickMath.maxUsableTick(tickSpacing);
            if (leftBound < minUsable) leftBound = minUsable;
            if (rightBound > maxUsable) rightBound = maxUsable;
        }

        if (useCarpet) {
            return _generateRangesWithCarpet(leftBound, rightBound, width, tickSpacing);
        } else {
            return _generateStandardRanges(leftBound, rightBound, width);
        }
    }

    function _generateStandardRanges(int24 leftBound, int24 rightBound, int24 width)
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

            // Safe addition to avoid overflow
            int256 nextUpper = int256(current) + int256(uint256(int256(width)));
            if (nextUpper > int256(type(int24).max)) {
                upperTicks[i] = type(int24).max;
            } else {
                upperTicks[i] = int24(nextUpper);
            }

            // Ensure we don't exceed right bound
            if (upperTicks[i] > rightBound) {
                upperTicks[i] = rightBound;
            }

            // Safe addition for loop increment
            int256 nextCurrent = int256(current) + int256(uint256(int256(width)));
            if (nextCurrent <= int256(type(int24).max)) {
                current = int24(nextCurrent);
            } else {
                break; // Exit loop if we would overflow
            }
            unchecked {
                ++i;
            }
        }
    }

    function _generateRangesWithCarpet(int24 leftBound, int24 rightBound, int24 width, int24 tickSpacing)
        private
        pure
        returns (int24[] memory lowerTicks, int24[] memory upperTicks)
    {
        // Get base ranges first
        (int24[] memory baseLowers, int24[] memory baseUppers) = _generateStandardRanges(leftBound, rightBound, width);

        // Get usable tick bounds
        int24 minUsable = TickMath.minUsableTick(tickSpacing);
        int24 maxUsable = TickMath.maxUsableTick(tickSpacing);

        // Check if we need carpet ranges
        bool hasLeftCarpet = baseLowers[0] > minUsable;
        bool hasRightCarpet = baseUppers[baseUppers.length - 1] < maxUsable;

        // Calculate total number of ranges
        uint256 numCarpetRanges;
        if (hasLeftCarpet) {
            unchecked {
                ++numCarpetRanges;
            }
        }
        if (hasRightCarpet) {
            unchecked {
                ++numCarpetRanges;
            }
        }

        uint256 totalRanges = baseLowers.length + numCarpetRanges;
        lowerTicks = new int24[](totalRanges);
        upperTicks = new int24[](totalRanges);

        uint256 idx;

        // Add left carpet if needed
        if (hasLeftCarpet) {
            lowerTicks[idx] = minUsable;
            upperTicks[idx] = baseLowers[0];
            unchecked {
                ++idx;
            }
        }

        // Add base ranges
        uint256 baseLength = baseLowers.length;
        for (uint256 i = 0; i < baseLength;) {
            lowerTicks[idx] = baseLowers[i];
            upperTicks[idx] = baseUppers[i];
            unchecked {
                ++idx;
                ++i;
            }
        }

        // Add right carpet if needed
        if (hasRightCarpet) {
            lowerTicks[idx] = baseUppers[baseUppers.length - 1];
            upperTicks[idx] = maxUsable;
        }
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
    ) public view override returns (uint256[] memory weights) {
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

        // Validate weights sum to 1e18 (skip for proportional weights)
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

        // Calculate peak parameters
        (int24 leftPeak, int24 rightPeak,) =
            _calculatePeakParams(params.centerTick, params.ticksLeft, params.ticksRight);

        // Calculate base camel weights
        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight;

        for (uint256 i = 0; i < numRanges;) {
            baseWeights[i] = _calculateCamelWeight(
                params, int24((int256(params.lowerTicks[i]) + int256(params.upperTicks[i])) / 2), leftPeak, rightPeak
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

        // Calculate peak parameters
        (int24 leftPeak, int24 rightPeak, uint256 sigma) =
            _calculatePeakParams(params.centerTick, params.ticksLeft, params.ticksRight);

        // Calculate base and adjusted weights
        (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) =
            _calculateCarpetedWeights(params, startIdx, endIdx, leftPeak, rightPeak, sigma);

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

    /**
     * @notice This strategy supports weighted distribution
     */
    function supportsWeights() external pure override returns (bool) {
        return true;
    }

    /**
     * @notice Get strategy type identifier
     */
    function getStrategyType() external view override returns (string memory) {
        return "Camel";
    }

    /**
     * @notice Get human-readable description
     */
    function getDescription() external view override returns (string memory) {
        return "Camel distribution (double-peaked) with optional carpet and weight preferences";
    }
}
