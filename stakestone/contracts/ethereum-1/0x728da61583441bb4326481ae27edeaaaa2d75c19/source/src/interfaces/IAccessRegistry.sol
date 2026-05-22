// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title IAccessRegistry
/// @author luoyhang003
/// @notice Interface for managing access control via whitelist and blacklist
/// @dev Provides events and view functions to track and query account permissions
interface IAccessRegistry {
    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when an array of users is added to the whitelist.
    /// @param users An array of addresses added to the whitelist.
    event WhitelistAdded(address[] users);

    /// @notice Emitted when an array of users is added to the blacklist.
    /// @param users An array of addresses added to the blacklist.
    event BlacklistAdded(address[] users);

    /// @notice Emitted when an array of users is removed from the whitelist.
    /// @param users An array of addresses removed from the whitelist.
    event WhitelistRemoved(address[] users);

    /// @notice Emitted when an array of users is removed from the blacklist.
    /// @param users An array of addresses removed from the blacklist.
    event BlacklistRemoved(address[] users);

    /// @notice Emitted when whitelist state changes
    /// @param enabled The new whitelist state - true if enabled, false if disabled.
    event WhitelistToggled(bool enabled);

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Checks whether a given address is whitelisted
    /// @param _account The address to check
    /// @return True if the address is whitelisted, false otherwise
    function isWhitelisted(address _account) external view returns (bool);

    /// @notice Checks whether a given address is blacklisted
    /// @param _account The address to check
    /// @return True if the address is blacklisted, false otherwise
    function isBlacklisted(address _account) external view returns (bool);
}
