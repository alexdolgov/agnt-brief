// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.23;

interface IDMS {
    /// @notice Thrown when the owner is invalid
    error InvalidOwner();

    /// @notice Thrown when the check-in interval is invalid
    error InvalidCheckInInterval();

    /// @notice Emitted when the DMS is setup
    /// @param initiator The address that initialized the DMS
    /// @param owner The owner of the DMS
    event DMSSetup(address indexed initiator, address indexed owner);

    /// @notice Emitted when the Safe has checked in
    event CheckedIn();

    /// @notice Emitted when the check-in interval is set
    /// @param checkInInterval The new check-in interval
    event CheckInIntervalSet(uint256 checkInInterval);

    /// @notice Sets the check-in interval before an owner has to check in
    ///         This can only be called by the owner
    /// @param _checkInInterval Check-in interval in seconds that should be required before the owner has to check in
    function setCheckInInterval(uint256 _checkInInterval) external;

    /// @notice Checks in
    ///         This can only be called by the owner
    function checkIn() external;

    /// @notice Checkes if Safe has not checked in the set period
    /// @return True if Safe has not checked in the set period
    function isDead() external view returns (bool);

    /// @notice Returns the last check-in timestamp
    /// @return The last check-in timestamp
    function lastCheckIn() external view returns (uint256);

    /// @notice Returns the check-in interval
    /// @return The check-in interval
    function checkInInterval() external view returns (uint256);
}
