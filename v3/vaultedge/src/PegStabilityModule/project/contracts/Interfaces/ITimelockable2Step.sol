// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title ITimelockable2Step
 * @notice Interface for contracts implementing two-step timelock transfer pattern
 * @dev Similar to OZ's Ownable2Step but for a dedicated timelock address.
 *      The timelock is self-governing - only the current timelock can transfer itself.
 */
interface ITimelockable2Step {
    // ------------------------------------------------------------------------
    // Events
    // ------------------------------------------------------------------------

    /// @notice Emitted when a timelock transfer is initiated
    /// @param previousTimelock The current timelock address
    /// @param newTimelock The pending timelock address
    event TimelockTransferStarted(address indexed previousTimelock, address indexed newTimelock);

    /// @notice Emitted when a timelock transfer is completed
    /// @param previousTimelock The previous timelock address
    /// @param newTimelock The new timelock address
    event TimelockTransferCompleted(address indexed previousTimelock, address indexed newTimelock);

    /// @notice Emitted when a pending timelock transfer is cancelled
    /// @param cancelledTimelock The address that was pending but is now cancelled
    event TimelockTransferCancelled(address indexed cancelledTimelock);

    // ------------------------------------------------------------------------
    // Errors
    // ------------------------------------------------------------------------

    /// @notice Thrown when caller is not the current timelock
    error Timelockable__OnlyTimelock();

    /// @notice Thrown when caller is not the pending timelock
    error Timelockable__OnlyPendingTimelock();

    /// @notice Thrown when an invalid address (zero) is provided
    error Timelockable__InvalidAddress();

    /// @notice Thrown when trying to cancel but no transfer is pending
    error Timelockable__NoPendingTransfer();

    // ------------------------------------------------------------------------
    // View Functions
    // ------------------------------------------------------------------------

    /// @notice Returns the current timelock address
    /// @return The address of the current timelock
    function timelock() external view returns (address);

    /// @notice Returns the pending timelock address (if any)
    /// @return The address of the pending timelock, or zero if none
    function pendingTimelock() external view returns (address);

    // ------------------------------------------------------------------------
    // Mutating Functions
    // ------------------------------------------------------------------------

    /// @notice Starts a timelock transfer to a new address
    /// @dev Can only be called by the current timelock. Replaces any pending transfer.
    /// @param newTimelock The address to transfer timelock to (cannot be zero)
    function transferTimelock(address newTimelock) external;

    /// @notice Completes a pending timelock transfer
    /// @dev Can only be called by the pending timelock address
    function acceptTimelock() external;

    /// @notice Cancels a pending timelock transfer
    /// @dev Can only be called by the current timelock
    function cancelTimelockTransfer() external;
}
