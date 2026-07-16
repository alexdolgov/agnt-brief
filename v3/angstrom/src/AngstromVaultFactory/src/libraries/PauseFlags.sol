// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

/// @title PauseFlags
/// @notice Pause flag constants for vault functionality
abstract contract PauseFlags {
    uint256 internal constant DEPOSITS_PAUSED = 1 << 0;
    uint256 internal constant REDEMPTIONS_PAUSED = 1 << 1;
    uint256 internal constant PERPS_WITHDRAWALS_PAUSED = 1 << 2;
    uint256 internal constant SWAPS_PAUSED = 1 << 3;
    uint256 internal constant LIQUIDITY_ADDITIONS_PAUSED = 1 << 4;
}
