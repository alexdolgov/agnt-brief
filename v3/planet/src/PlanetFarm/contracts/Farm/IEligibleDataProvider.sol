pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

/// @title Planet Eligible Data Provider Interface
interface IEligibleDataProvider {

    // @notice Refreshes the eligibility status of a specific user
    /// @param _user The address of the user whose eligibility status is being refreshed
    function refresh(address _user) external;

    /// @notice Retrieves the last known eligibility status of a user
    /// @param _user The address of the user whose last eligibility status is being queried
    /// @return _lastEligibleStatus The last recorded eligibility status of the user
    function lastEligibleStatus(address _user) external view returns (bool _lastEligibleStatus);

    /// @notice Determines if a user is currently eligible for rewards
    /// @param _user The address of the user whose reward eligibility is being checked
    /// @return eligible A boolean indicating the current eligibility status of the user for rewards
    function isEligibleForRewards(address _user) external view returns (bool eligible);

    /// @notice Fetches the last disqualification time for a user
    /// @param _user The address of the user whose last disqualification time is being queried
    /// @return lastDqTime The block timestamp of the last time the user was disqualified
    function getDqTime(address _user) external view returns (uint256 lastDqTime);

    /// @notice Sets the disqualification time for a user
    /// @param _user The address of the user whose disqualification time is being set
    /// @param _blockTimestamp The block timestamp to be set as the disqualification time for the user
    function setDqTime(address _user, uint256 _blockTimestamp) external;

}