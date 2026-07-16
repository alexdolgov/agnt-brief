// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.28;

/// @title Timelocked - Base contract for inline signal/execute timelock pattern
/// @notice Provides 7-day delay with 7-day expiry for admin functions
abstract contract Timelocked {
    // ============ Constants ============

    uint256 public constant TIMELOCK_DELAY = 7 days;
    uint256 public constant TIMELOCK_EXPIRY = 7 days;

    // ============ Types ============

    struct PendingChange {
        bytes32 dataHash;
        uint256 signalTime;
    }

    // ============ State ============

    mapping(bytes32 => PendingChange) public pendingChanges;

    // ============ Errors ============

    error TimelockDataMismatch();
    error TimelockTooEarly(uint256 executeTime);
    error TimelockExpired(uint256 expiredAt);
    error TimelockNotSignaled();

    // ============ Events ============

    event ChangeSignaled(bytes32 indexed action, bytes32 dataHash, uint256 executeTime, uint256 expiresAt);
    event ChangeExecuted(bytes32 indexed action);
    event ChangeCanceled(bytes32 indexed action);

    // ============ Internal Functions ============

    /// @dev Signal a pending change. Overwrites any existing pending change for the same action.
    /// @param action Unique identifier for the change (e.g., keccak256("SET_TREASURY"))
    /// @param dataHash keccak256 of the new value(s) to be set on execution
    function _signal(
        bytes32 action,
        bytes32 dataHash
    ) internal {
        pendingChanges[action] = PendingChange({dataHash: dataHash, signalTime: block.timestamp});
        emit ChangeSignaled(
            action, dataHash, block.timestamp + TIMELOCK_DELAY, block.timestamp + TIMELOCK_DELAY + TIMELOCK_EXPIRY
        );
    }

    /// @dev Execute a pending change. Reverts if not signaled, data mismatch, too early, or expired.
    /// @param action Unique identifier matching the signal call
    /// @param dataHash Must match the dataHash from the signal call
    function _execute(
        bytes32 action,
        bytes32 dataHash
    ) internal {
        PendingChange memory pending = pendingChanges[action];

        if (pending.signalTime == 0) revert TimelockNotSignaled();
        if (pending.dataHash != dataHash) revert TimelockDataMismatch();

        uint256 executeTime = pending.signalTime + TIMELOCK_DELAY;
        if (block.timestamp < executeTime) revert TimelockTooEarly(executeTime);

        uint256 expiryTime = executeTime + TIMELOCK_EXPIRY;
        if (block.timestamp > expiryTime) revert TimelockExpired(expiryTime);

        delete pendingChanges[action];
        emit ChangeExecuted(action);
    }

    /// @dev Cancel a pending change.
    /// @param action Unique identifier matching the signal call
    function _cancel(
        bytes32 action
    ) internal {
        delete pendingChanges[action];
        emit ChangeCanceled(action);
    }

    // ============ View Functions ============

    /// @notice Check if a change is pending and when it can be executed
    /// @param action Unique identifier for the change
    /// @return isPending Whether a change is currently pending
    /// @return executeTime Earliest timestamp the change can be executed
    /// @return expiresAt Latest timestamp the change can be executed before expiring
    function getPendingChange(
        bytes32 action
    ) external view returns (bool isPending, uint256 executeTime, uint256 expiresAt) {
        PendingChange memory pending = pendingChanges[action];
        isPending = pending.signalTime > 0;
        if (isPending) {
            executeTime = pending.signalTime + TIMELOCK_DELAY;
            expiresAt = executeTime + TIMELOCK_EXPIRY;
        }
    }
}
