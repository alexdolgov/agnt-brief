// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title TickMath
/// @notice Library for tick calculations in concentrated liquidity
/// @dev Extracted from SnuggleVault to reduce contract size
library TickMath {
    int24 public constant MIN_TICK = -887272;
    int24 public constant MAX_TICK = 887272;

    /// @dev Round tick down to nearest spacing
    function roundDownToSpacing(
        int24 tick,
        int24 tickSpacing
    ) internal pure returns (int24) {
        int24 compressed = tick / tickSpacing;
        if (tick < 0 && tick % tickSpacing != 0) compressed--;
        return compressed * tickSpacing;
    }

    /// @dev Round tick up to nearest spacing
    function roundUpToSpacing(
        int24 tick,
        int24 tickSpacing
    ) internal pure returns (int24) {
        int24 compressed = tick / tickSpacing;
        if (tick > 0 && tick % tickSpacing != 0) compressed++;
        return compressed * tickSpacing;
    }

    /// @dev Round tick to nearest spacing
    function roundToNearestSpacing(
        int24 tick,
        int24 tickSpacing
    ) internal pure returns (int24) {
        int24 compressed = tick / tickSpacing;
        int24 remainder = tick % tickSpacing;
        if (remainder > tickSpacing / 2) compressed++;
        if (remainder < -tickSpacing / 2) compressed--;
        return compressed * tickSpacing;
    }

    /// @dev Calculate centered tick range
    /// @notice Minimum range width is 1 tick spacing (single-tick-space range)
    function calculateCenteredRange(
        int24 currentTick,
        int24 tickSpacing,
        uint24 rangeWidthBps
    ) internal pure returns (int24 tickLower, int24 tickUpper) {
        int24 roundedWidth = _roundWidth(rangeWidthBps, tickSpacing);

        int24 centerTick = roundToNearestSpacing(currentTick, tickSpacing);
        int24 halfWidth = (roundedWidth / 2 / tickSpacing) * tickSpacing;
        tickLower = centerTick - halfWidth;
        // Single tick spacing (halfWidth==0): upper = center + tickSpacing
        // Multi tick spacing: upper = center + halfWidth (symmetric)
        tickUpper = centerTick + (halfWidth > 0 ? halfWidth : tickSpacing);

        if (tickLower < MIN_TICK) tickLower = MIN_TICK;
        if (tickUpper > MAX_TICK) tickUpper = MAX_TICK;
    }

    /// @dev Calculate snuggle range based on which token we're holding
    /// @notice Minimum range width is 1 tick spacing (single-tick-space range)
    function calculateSnuggleRange(
        int24 currentTick,
        int24 tickSpacing,
        uint24 rangeWidthBps,
        uint256 amount0,
        uint256 amount1
    ) internal pure returns (int24 tickLower, int24 tickUpper) {
        return _buildDirectionalRange(
            currentTick, tickSpacing, _roundWidth(rangeWidthBps, tickSpacing), amount0 > amount1
        );
    }

    /// @dev Predict snuggle range without needing actual token amounts
    /// @notice Minimum range width is 1 tick spacing (single-tick-space range)
    function predictSnuggleRange(
        int24 currentTick,
        int24 tickSpacing,
        uint24 rangeWidthBps,
        int24 positionTickLower,
        int24 positionTickUpper // unused but kept for interface compatibility
    ) internal pure returns (int24 tickLower, int24 tickUpper) {
        // Below lower = token0 dominant; at/above upper or in range = token1
        return _buildDirectionalRange(
            currentTick,
            tickSpacing,
            _roundWidth(rangeWidthBps, tickSpacing),
            currentTick < positionTickLower
        );
    }

    /// @dev Check if a rebalance would actually change the position's tick range
    function wouldSnuggleChangeRange(
        int24 currentTick,
        int24 tickSpacing,
        uint24 rangeWidthBps,
        int24 positionTickLower,
        int24 positionTickUpper
    ) internal pure returns (bool) {
        (int24 newTickLower, int24 newTickUpper) = predictSnuggleRange(
            currentTick,
            tickSpacing,
            rangeWidthBps,
            positionTickLower,
            positionTickUpper
        );
        return (newTickLower != positionTickLower || newTickUpper != positionTickUpper);
    }

    /// @dev Shared width rounding: clamp to minimum 1 tick spacing
    function _roundWidth(uint24 rangeWidthBps, int24 tickSpacing) private pure returns (int24) {
        int24 totalWidthTicks = int24(uint24(rangeWidthBps));
        int24 roundedWidth = (totalWidthTicks / tickSpacing) * tickSpacing;
        if (roundedWidth < tickSpacing) roundedWidth = tickSpacing;
        return roundedWidth;
    }

    /// @dev Shared directional range builder for snuggle/predict
    function _buildDirectionalRange(
        int24 currentTick,
        int24 tickSpacing,
        int24 roundedWidth,
        bool isToken0
    ) private pure returns (int24 tickLower, int24 tickUpper) {
        if (isToken0) {
            // Token0 dominant - position should be ABOVE current tick
            tickLower = roundUpToSpacing(currentTick, tickSpacing);
            if (tickLower <= currentTick) {
                tickLower += tickSpacing;
            }
            tickUpper = tickLower + roundedWidth;
        } else {
            // Token1 dominant - position should be BELOW current tick
            tickUpper = roundDownToSpacing(currentTick, tickSpacing);
            if (tickUpper >= currentTick) {
                tickUpper -= tickSpacing;
            }
            tickLower = tickUpper - roundedWidth;
        }

        if (tickLower < MIN_TICK) tickLower = MIN_TICK;
        if (tickUpper > MAX_TICK) tickUpper = MAX_TICK;
    }
}
