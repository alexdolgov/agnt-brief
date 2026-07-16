// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title IWhitelist
 * @notice Interface for managing whitelisted addresses in the vault system
 * @dev This interface defines the contract for managing access control through
 *      a whitelist system. It provides functionality to add/remove addresses
 *      and check whitelist status.
 *
 * The whitelist system is used to:
 *      - Control who can interact with vaults
 *      - Manage access to strategy operations
 *      - Implement KYC/AML requirements
 *      - Provide granular access control
 *
 * @custom:security Only whitelisted addresses can perform certain operations.
 * The whitelist should be managed by trusted administrators.
 */
interface IWhitelist {
    /**
     * @notice Add an address to the whitelist.
     * @param _address The address to add.
     */
    function addToWhitelist(address _address) external;

    /**
     * @notice Remove an address from the whitelist.
     * @param _address The address to remove.
     */
    function removeFromWhitelist(address _address) external;

    /**
     * @notice Check if an address is whitelisted.
     * @param _address The address to check.
     * @return True if the address is whitelisted, false otherwise.
     */
    function isWhitelisted(address _address) external view returns (bool);

    /// @notice Emitted when an address is added to the whitelist.
    event Whitelisted(address indexed _address);
    /// @notice Emitted when an address is removed from the whitelist.
    event Unwhitelisted(address indexed _address);
    /// @notice Emitted when an address is granted the whitelist admin role.
    event WhitelistAdminSet(address indexed _address);
    /// @notice Emitted when an address has the whitelist admin role revoked.
    event WhitelistAdminRevoked(address indexed _address);
}
