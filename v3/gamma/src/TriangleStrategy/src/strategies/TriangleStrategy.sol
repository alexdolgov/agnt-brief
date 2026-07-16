// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./ILiquidityStrategy.sol";
import "./LiquidityDistributionLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";

/**
 * @title TriangleStrategy
 * @notice Unified Triangle distribution strategy supporting all options
 * @dev Supports standard, carpeted, weighted, and weighted+carpeted variants
 */
contract TriangleStrategy is ILiquidityStrategy {
    using LiquidityDistributionLibrary for uint256[];
    using LiquidityDistributionLibrary for int24;

    uint256 public constant CARPET_WEIGHT = 0.0001e18; // 0.01% carpet weight

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
        bool weightsAreProportional;
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
     * @dev Allows explicit control over carpet position generation
     */
    function generateRanges(
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        int24 tickSpacing,
        bool useCarpet
    ) external view override returns (
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) {
        return _generateRanges(centerTick, ticksLeft, ticksRight, tickSpacing, useCarpet);
    }

    function _generateRanges(
        int24 centerTick,
        uint24 ticksLeft,
        uint24 ticksRight,
        int24 tickSpacing,
        bool useCarpet
    ) internal pure returns (
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) {
        // Align center tick to tick spacing
        centerTick = (centerTick / tickSpacing) * tickSpacing;

        // Calculate total span
        uint256 totalSpan = uint256(ticksLeft) + uint256(ticksRight);

        // Calculate width: max(spacing, ceil(totalSpan / 20 / spacing) * spacing)
        uint256 divisor = 20 * uint24(tickSpacing);
        int24 width = int24(uint24(((totalSpan + divisor - 1) / divisor) * uint24(tickSpacing)));
        if (width < tickSpacing) width = tickSpacing;

        // Calculate bounds and align to width
        int24 leftBound;
        int24 rightBound;

        // Safe calculation for leftBound
        int256 tempLeft = int256(centerTick) - int256(uint256(ticksLeft));
        if (tempLeft < int256(type(int24).min)) {
            leftBound = type(int24).min;
        } else {
            leftBound = int24(tempLeft);
            leftBound = (leftBound / width) * width;
        }

        // Safe calculation for rightBound
        int256 tempRight = int256(centerTick) + int256(uint256(ticksRight));
        if (tempRight > int256(type(int24).max)) {
            rightBound = type(int24).max;
        } else {
            rightBound = int24(tempRight);
            rightBound = (rightBound / width) * width;
        }

        if (useCarpet) {
            return _generateRangesWithCarpet(leftBound, rightBound, width, tickSpacing);
        } else {
            return _generateStandardRanges(leftBound, rightBound, width);
        }
    }

    function _generateStandardRanges(
        int24 leftBound,
        int24 rightBound,
        int24 width
    ) private pure returns (
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) {
        // Count how many ranges we'll create
        uint256 numRanges = 0;
        int256 currentInt = int256(leftBound);
        int256 rightBoundInt = int256(rightBound);
        int256 widthInt = int256(uint256(int256(width)));
        while (currentInt < rightBoundInt) {
            numRanges++;
            currentInt += widthInt;
        }

        // Allocate arrays
        lowerTicks = new int24[](numRanges);
        upperTicks = new int24[](numRanges);

        // Generate non-overlapping ranges
        int24 current = leftBound;
        for (uint256 i = 0; i < numRanges; i++) {
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
        }
    }

    function _generateRangesWithCarpet(
        int24 leftBound,
        int24 rightBound,
        int24 width,
        int24 tickSpacing
    ) private pure returns (
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) {
        // Get base ranges first
        (int24[] memory baseLowers, int24[] memory baseUppers) = _generateStandardRanges(leftBound, rightBound, width);

        // Get usable tick bounds
        int24 minUsable = TickMath.minUsableTick(tickSpacing);
        int24 maxUsable = TickMath.maxUsableTick(tickSpacing);

        // Check if we need carpet ranges
        bool hasLeftCarpet = baseLowers[0] > minUsable;
        bool hasRightCarpet = baseUppers[baseUppers.length - 1] < maxUsable;

        // Calculate total number of ranges
        uint256 numCarpetRanges = 0;
        if (hasLeftCarpet) numCarpetRanges++;
        if (hasRightCarpet) numCarpetRanges++;

        uint256 totalRanges = baseLowers.length + numCarpetRanges;
        lowerTicks = new int24[](totalRanges);
        upperTicks = new int24[](totalRanges);

        uint256 idx = 0;

        // Add left carpet if needed
        if (hasLeftCarpet) {
            lowerTicks[idx] = minUsable;
            upperTicks[idx] = baseLowers[0];
            idx++;
        }

        // Add base ranges
        for (uint256 i = 0; i < baseLowers.length; i++) {
            lowerTicks[idx] = baseLowers[i];
            upperTicks[idx] = baseUppers[i];
            idx++;
        }

        // Add right carpet if needed
        if (hasRightCarpet) {
            lowerTicks[idx] = baseUppers[baseUppers.length - 1];
            upperTicks[idx] = maxUsable;
        }
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
        bool weightsAreProportional
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
            weightsAreProportional: weightsAreProportional
        });

        return _calculateDensitiesInternal(params);
    }

    function _calculateDensitiesInternal(
        DensityParams memory params
    ) private pure returns (uint256[] memory weights) {
        uint256 numRanges = params.lowerTicks.length;
        weights = new uint256[](numRanges);

        if (numRanges == 0) return weights;

        // Validate weights sum to 1e18 (skip for proportional weights)
        if (!params.weightsAreProportional) {
            require(params.weight0 + params.weight1 == 1e18, "Weights must sum to 1e18");
        }

        if (params.useCarpet) {
            _processWeightsWithCarpet(weights, params);
        } else {
            _processWeightsNoCarpet(weights, params);
        }

        return weights;
    }

    function _processWeightsNoCarpet(
        uint256[] memory weights,
        DensityParams memory params
    ) private pure {
        uint256 numRanges = params.lowerTicks.length;

        // Define triangle boundaries
        int24 leftEdge = params.centerTick - int24(params.ticksLeft);
        int24 rightEdge = params.centerTick + int24(params.ticksRight);

        // Calculate base triangle weights
        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight = 0;

        for (uint256 i = 0; i < numRanges; i++) {
            int256 posCenterInt = (int256(params.lowerTicks[i]) + int256(params.upperTicks[i])) / 2;
            int24 posCenter = int24(posCenterInt);

            if (posCenter < leftEdge || posCenter > rightEdge) {
                // Outside triangle range
                baseWeights[i] = 1; // Minimum weight
            } else if (posCenter <= params.centerTick) {
                // Left side of triangle - weight increases linearly toward center
                uint256 distance = LiquidityDistributionLibrary.absDiff(posCenter, leftEdge);
                baseWeights[i] = (distance * LiquidityDistributionLibrary.WAD) / params.ticksLeft;
            } else {
                // Right side of triangle - weight decreases linearly from center
                uint256 distance = LiquidityDistributionLibrary.absDiff(posCenter, rightEdge);
                baseWeights[i] = (distance * LiquidityDistributionLibrary.WAD) / params.ticksRight;
            }

            // Ensure minimum weight
            if (baseWeights[i] == 0) baseWeights[i] = 1;

            totalBaseWeight += baseWeights[i];
        }

        // Apply weight preferences
        if (params.weightsAreProportional) {
            // Proportional weights: use base distribution (no filtering)
            if (totalBaseWeight > 0) {
                for (uint256 i = 0; i < numRanges; i++) {
                    weights[i] = (baseWeights[i] * LiquidityDistributionLibrary.WAD) / totalBaseWeight;
                }
            }
        } else {
            // Explicit preferences: apply weight-based filtering
            uint256[] memory adjustedWeights = new uint256[](numRanges);
            uint256 totalAdjustedWeight = 0;

            for (uint256 i = 0; i < numRanges; i++) {
                if (params.upperTicks[i] <= params.currentTick) {
                    adjustedWeights[i] = (baseWeights[i] * params.weight1 * 2) / 1e18;
                } else if (params.lowerTicks[i] >= params.currentTick) {
                    adjustedWeights[i] = (baseWeights[i] * params.weight0 * 2) / 1e18;
                } else {
                    adjustedWeights[i] = baseWeights[i];
                }
                totalAdjustedWeight += adjustedWeights[i];
            }

            // Normalize to sum to 1e18
            if (totalAdjustedWeight > 0) {
                for (uint256 i = 0; i < numRanges; i++) {
                    weights[i] = (adjustedWeights[i] * LiquidityDistributionLibrary.WAD) / totalAdjustedWeight;
                }
            }
        }
    }

    function _processWeightsWithCarpet(
        uint256[] memory weights,
        DensityParams memory params
    ) private pure {
        _processWeightsWithCarpetPhase1(weights, params);
    }

    function _processWeightsWithCarpetPhase1(
        uint256[] memory weights,
        DensityParams memory params
    ) private pure {
        uint256 numRanges = params.lowerTicks.length;

        // Use the tick spacing from params instead of inferring
        int24 tickSpacing = params.tickSpacing;

        (bool hasLeftCarpet, bool hasRightCarpet, uint256 startIdx, uint256 endIdx) =
            _getCarpetInfo(params.lowerTicks, params.upperTicks, numRanges, tickSpacing);

        // Define triangle boundaries
        int24 leftEdge = params.centerTick - int24(params.ticksLeft);
        int24 rightEdge = params.centerTick + int24(params.ticksRight);

        // Calculate base and adjusted weights
        (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) = _calculateTriangleWeights(
            params,
            startIdx,
            endIdx,
            leftEdge,
            rightEdge
        );

        // Store carpet info in a struct to reduce parameters
        CarpetInfo memory carpetInfo = CarpetInfo({
            hasLeftCarpet: hasLeftCarpet,
            hasRightCarpet: hasRightCarpet,
            startIdx: startIdx,
            endIdx: endIdx,
            numRanges: numRanges
        });

        // Finalize carpet weights
        _finalizeCarpetWeights(
            weights,
            adjustedWeights,
            totalAdjustedWeight,
            carpetInfo
        );
    }

    function _getCarpetInfo(
        int24[] memory lowerTicks,
        int24[] memory upperTicks,
        uint256 numRanges,
        int24 tickSpacing
    ) private pure returns (
        bool hasLeftCarpet,
        bool hasRightCarpet,
        uint256 startIdx,
        uint256 endIdx
    ) {
        int24 minUsable = TickMath.minUsableTick(tickSpacing);
        int24 maxUsable = TickMath.maxUsableTick(tickSpacing);

        hasLeftCarpet = lowerTicks[0] == minUsable;
        hasRightCarpet = upperTicks[numRanges - 1] == maxUsable;

        startIdx = hasLeftCarpet ? 1 : 0;
        endIdx = hasRightCarpet ? numRanges - 1 : numRanges;
    }

    function _calculateTriangleWeights(
        DensityParams memory params,
        uint256 startIdx,
        uint256 endIdx,
        int24 leftEdge,
        int24 rightEdge
    ) private pure returns (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) {
        uint256 numRanges = params.lowerTicks.length;
        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight = 0;

        // Calculate base triangle weights for main ranges
        for (uint256 i = startIdx; i < endIdx; i++) {
            int256 posCenterInt = (int256(params.lowerTicks[i]) + int256(params.upperTicks[i])) / 2;
            int24 posCenter = int24(posCenterInt);

            if (posCenter < leftEdge || posCenter > rightEdge) {
                baseWeights[i] = 1;
            } else if (posCenter <= params.centerTick) {
                uint256 distance = LiquidityDistributionLibrary.absDiff(posCenter, leftEdge);
                baseWeights[i] = (distance * LiquidityDistributionLibrary.WAD) / params.ticksLeft;
            } else {
                uint256 distance = LiquidityDistributionLibrary.absDiff(posCenter, rightEdge);
                baseWeights[i] = (distance * LiquidityDistributionLibrary.WAD) / params.ticksRight;
            }

            if (baseWeights[i] == 0) baseWeights[i] = 1;
            totalBaseWeight += baseWeights[i];
        }

        // Apply weight preferences to main ranges
        adjustedWeights = new uint256[](numRanges);
        totalAdjustedWeight = 0;

        if (params.weightsAreProportional) {
            // Proportional weights: use base distribution (no filtering)
            for (uint256 i = startIdx; i < endIdx; i++) {
                adjustedWeights[i] = baseWeights[i];
                totalAdjustedWeight += adjustedWeights[i];
            }
        } else {
            // Explicit preferences: apply weight-based filtering
            for (uint256 i = startIdx; i < endIdx; i++) {
                if (params.upperTicks[i] <= params.currentTick) {
                    adjustedWeights[i] = (baseWeights[i] * params.weight1 * 2) / 1e18;
                } else if (params.lowerTicks[i] >= params.currentTick) {
                    adjustedWeights[i] = (baseWeights[i] * params.weight0 * 2) / 1e18;
                } else {
                    adjustedWeights[i] = baseWeights[i];
                }
                totalAdjustedWeight += adjustedWeights[i];
            }
        }
    }

    function _finalizeCarpetWeights(
        uint256[] memory weights,
        uint256[] memory adjustedWeights,
        uint256 totalAdjustedWeight,
        CarpetInfo memory carpetInfo
    ) private pure {
        uint256 numCarpetRanges = 0;
        if (carpetInfo.hasLeftCarpet) numCarpetRanges++;
        if (carpetInfo.hasRightCarpet) numCarpetRanges++;

        // Only subtract CARPET_WEIGHT if we actually have carpet ranges
        uint256 carpetWeightPerRange = numCarpetRanges > 0 ? CARPET_WEIGHT / numCarpetRanges : 0;
        uint256 remainingWeight = numCarpetRanges > 0 ?
            LiquidityDistributionLibrary.WAD - CARPET_WEIGHT :
            LiquidityDistributionLibrary.WAD;

        if (carpetInfo.hasLeftCarpet) {
            weights[0] = carpetWeightPerRange;
        }
        if (carpetInfo.hasRightCarpet) {
            weights[carpetInfo.numRanges - 1] = carpetWeightPerRange;
        }

        // Normalize main range weights
        if (totalAdjustedWeight > 0) {
            for (uint256 i = carpetInfo.startIdx; i < carpetInfo.endIdx; i++) {
                weights[i] = (adjustedWeights[i] * remainingWeight) / totalAdjustedWeight;
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
    function getStrategyType() external view override returns (string memory) {
        return "Triangle";
    }

    /**
     * @notice Get human-readable description
     */
    function getDescription() external view override returns (string memory) {
        return "Triangle distribution with optional carpet and weight preferences";
    }
}