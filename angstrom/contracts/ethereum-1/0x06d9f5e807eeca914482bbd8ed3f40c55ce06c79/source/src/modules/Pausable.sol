// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { IPausable } from "../interfaces/IPausable.sol";
import { Events } from "../Events.sol";
import { Errors } from "../Errors.sol";

/// @notice A modular, inheritable contract for flag-based pausing of functionality.
/// @dev Uses a single uint256 `pausedStatus` as a 256-slot bitmap for pausing.
/// @dev Pausability of a function or set of functions is defined using a uint8 `flag`, which is then converted to a
/// slot in the bitmap.
abstract contract Pausable is IPausable {
    struct PausableStorage {
        uint256 pausedStatus;
    }

    PausableStorage private pausableStorage;

    modifier whenNotPaused(
        uint256 flags
    ) {
        _requireNotPaused(flags);
        _;
    }

    /// @inheritdoc IPausable
    function isPaused(
        uint256 flags
    ) public view returns (bool) {
        return (pausableStorage.pausedStatus & flags) == flags;
    }

    /// @inheritdoc IPausable
    function isNotPaused(
        uint256 flags
    ) public view returns (bool) {
        return (pausableStorage.pausedStatus & flags) == 0;
    }

    /// @inheritdoc IPausable
    function pausedStatus() public view returns (uint256) {
        return pausableStorage.pausedStatus;
    }

    function _requireNotPaused(
        uint256 flags
    ) internal view {
        require(isNotPaused(flags), Errors.FunctionalityIsPaused());
    }

    function _setPausedStatus(
        uint256 newPausedStatus
    ) internal {
        emit Events.PausedStatusModified(msg.sender, newPausedStatus);
        pausableStorage.pausedStatus = newPausedStatus;
    }

    /// @dev Ensures that only additional functionality is being paused, i.e. that already paused functionality remains
    // paused
    function _pause(
        uint256 newPausedStatus
    ) internal {
        uint256 _pausedStatus = pausableStorage.pausedStatus;
        require(newPausedStatus & _pausedStatus == _pausedStatus, Errors.CannotUnpauseWhenPausing());
        _setPausedStatus(newPausedStatus);
    }

    /// @dev Ensures that only additional functionality is being unpaused, i.e. that already unpaused functionality
    // remains unpaused
    function _unpause(
        uint256 newPausedStatus
    ) internal {
        uint256 _pausedStatus = pausableStorage.pausedStatus;
        require(newPausedStatus & _pausedStatus == newPausedStatus, Errors.CannotPauseWhenUnpausing());
        _setPausedStatus(newPausedStatus);
    }
}
