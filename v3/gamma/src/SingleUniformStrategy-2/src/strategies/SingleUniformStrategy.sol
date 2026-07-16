// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import "./ILiquidityStrategy.sol";
import "./LiquidityDistributionLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";

/**
 * @title SingleUniformStrategy
 * @notice Unified Uniform distribution strategy supporting all options
 * @dev Supports standard, carpeted, weighted, and weighted+carpeted variants
 */
contract SingleUniformStrategy is ILiquidityStrategy {
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
    ) external pure override returns (
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

        // Clamp to Uniswap v4's usable tick bounds to prevent InvalidTick errors
        // Use scoped block to avoid stack too deep
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

    function _generateStandardRanges(
        int24 leftBound,
        int24 rightBound,
        int24 width
    ) private pure returns (
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) {
        // Uniform strategy creates ONE single position covering the entire range
        // This matches the Python implementation behavior
        lowerTicks = new int24[](1);
        upperTicks = new int24[](1);

        lowerTicks[0] = leftBound;
        upperTicks[0] = rightBound;
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
        for (uint256 i = 0; i < baseLowers.length; ) {
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
     * @notice Calculate Uniform density with all options
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

        // Calculate range boundaries
        int24 leftBound = params.centerTick - int24(params.ticksLeft);
        int24 rightBound = params.centerTick + int24(params.ticksRight);

        // Calculate base uniform weights
        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight;

        for (uint256 i = 0; i < numRanges; ) {
            int256 posCenterInt = (int256(params.lowerTicks[i]) + int256(params.upperTicks[i])) / 2;
            int24 posCenter = int24(posCenterInt);

            // Check if position is within the specified range
            if (posCenter >= leftBound && posCenter <= rightBound) {
                baseWeights[i] = LiquidityDistributionLibrary.WAD;
            } else {
                baseWeights[i] = 1; // Minimum weight for positions outside range
            }

            unchecked {
                totalBaseWeight += baseWeights[i];
                ++i;
            }
        }

        // Apply weight preferences: for proportional weights, use base distribution
        // For explicit preferences, apply strong filtering
        if (params.weightsAreProportional) {
            // Proportional weights: just use base distribution (no filtering)
            if (totalBaseWeight != 0) {
                for (uint256 i = 0; i < numRanges; ) {
                    weights[i] = FullMath.mulDiv(baseWeights[i], LiquidityDistributionLibrary.WAD, totalBaseWeight);
                    unchecked { ++i; }
                }
            }
        } else {
            // Explicit preferences: apply weight-based filtering
            uint256[] memory adjustedWeights = new uint256[](numRanges);
            uint256 totalAdjustedWeight;

            for (uint256 i = 0; i < numRanges; ) {
                if (params.upperTicks[i] <= params.currentTick) {
                    // Pure token1 range
                    adjustedWeights[i] = FullMath.mulDiv(baseWeights[i] * params.weight1, 2, 1e18);
                } else if (params.lowerTicks[i] >= params.currentTick) {
                    // Pure token0 range
                    adjustedWeights[i] = FullMath.mulDiv(baseWeights[i] * params.weight0, 2, 1e18);
                } else {
                    // Mixed range
                    adjustedWeights[i] = baseWeights[i];
                }
                unchecked {
                    totalAdjustedWeight += adjustedWeights[i];
                    ++i;
                }
            }

            // Normalize to sum to 1e18
            if (totalAdjustedWeight != 0) {
                for (uint256 i = 0; i < numRanges; ) {
                    weights[i] = FullMath.mulDiv(adjustedWeights[i], LiquidityDistributionLibrary.WAD, totalAdjustedWeight);
                    unchecked { ++i; }
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

        // Calculate range boundaries
        int24 leftBound = params.centerTick - int24(params.ticksLeft);
        int24 rightBound = params.centerTick + int24(params.ticksRight);

        // Calculate base and adjusted weights
        (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) = _calculateUniformWeights(
            params,
            startIdx,
            endIdx,
            leftBound,
            rightBound
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

    function _calculateUniformWeights(
        DensityParams memory params,
        uint256 startIdx,
        uint256 endIdx,
        int24 leftBound,
        int24 rightBound
    ) private pure returns (uint256[] memory adjustedWeights, uint256 totalAdjustedWeight) {
        uint256 numRanges = params.lowerTicks.length;
        uint256[] memory baseWeights = new uint256[](numRanges);
        uint256 totalBaseWeight;

        // Calculate base uniform weights for main ranges
        for (uint256 i = 0; i < endIdx; ) {
            int256 posCenterInt = (int256(params.lowerTicks[i]) + int256(params.upperTicks[i])) / 2;
            int24 posCenter = int24(posCenterInt);

            if (posCenter >= leftBound && posCenter <= rightBound) {
                baseWeights[i] = LiquidityDistributionLibrary.WAD;
            } else {
                baseWeights[i] = 1;
            }

            unchecked {
                totalBaseWeight += baseWeights[i];
                ++i;
            }
        }

        // Apply weight preferences to main ranges
        adjustedWeights = new uint256[](numRanges);
        totalAdjustedWeight = 0;

        if (params.weightsAreProportional) {
            // Proportional weights: use base distribution (no filtering)
            for (uint256 i = 0; i < endIdx; ) {
                adjustedWeights[i] = baseWeights[i];
                unchecked {
                    totalAdjustedWeight += adjustedWeights[i];
                    ++i;
                }
            }
        } else {
            // Explicit preferences: apply weight-based filtering
            for (uint256 i = 0; i < endIdx; ) {
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
        uint256 remainingWeight = numCarpetRanges != 0 ?
            LiquidityDistributionLibrary.WAD - CARPET_WEIGHT :
            LiquidityDistributionLibrary.WAD;

        if (carpetInfo.hasLeftCarpet) {
            weights[0] = carpetWeightPerRange;
        }
        if (carpetInfo.hasRightCarpet) {
            weights[carpetInfo.numRanges - 1] = carpetWeightPerRange;
        }

        // Normalize main range weights
        if (totalAdjustedWeight != 0) {
            for (uint256 i = carpetInfo.startIdx; i < carpetInfo.endIdx; ) {
                weights[i] = FullMath.mulDiv(adjustedWeights[i], remainingWeight, totalAdjustedWeight);
                unchecked { ++i; }
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
        return "Uniform";
    }

    /**
     * @notice Get human-readable description
     */
    function getDescription() external pure override returns (string memory) {
        return "Uniform distribution with optional carpet and weight preferences";
    }
}