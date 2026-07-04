// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title TickUtils
/// @notice Tick-range helpers (ported verbatim from Beefy CLM).
library TickUtils {
    /// @notice Floor a tick to the nearest multiple of `tickSpacing`, rounding
    ///         toward negative infinity for negative ticks.
    function floor(int24 tick, int24 tickSpacing) internal pure returns (int24) {
        int24 compressed = tick / tickSpacing;
        if (tick < 0 && tick % tickSpacing != 0) compressed--;
        return compressed * tickSpacing;
    }

    /// @notice Symmetric `[floor(tick) − threshold, floor(tick) + threshold]`.
    function baseTicks(
        int24 currentTick,
        int24 baseThreshold,
        int24 tickSpacing
    ) internal pure returns (int24 tickLower, int24 tickUpper) {
        int24 tickFloor = floor(currentTick, tickSpacing);
        tickLower = tickFloor - baseThreshold;
        tickUpper = tickFloor + baseThreshold;
    }
}
