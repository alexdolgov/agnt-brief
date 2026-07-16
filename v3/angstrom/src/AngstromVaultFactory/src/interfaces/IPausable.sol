// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

/// @title IPausable
/// @notice Interface for the Pausable vault submodule.
interface IPausable {
    /// @notice 256-slot bitmap representing the paused status of this contract.
    function pausedStatus() external view returns (uint256);

    /// @notice Returns whether or not *all* of `flags` are paused.
    /// @param flags Bitmap of pausing flags to check paused status against.
    /// @dev Will return 'false' even if some but not all of the `flags` are paused.
    function isPaused(
        uint256 flags
    ) external view returns (bool);

    /// @notice Returns whether or not *all* of `flags` are not paused.
    /// @param flags Bitmap of pausing flags to check paused status against.
    /// @dev Will return 'false' even if some but not all of the `flags` are not paused.
    function isNotPaused(
        uint256 flags
    ) external view returns (bool);
}
