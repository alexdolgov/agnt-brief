// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import {IWhitelist} from "src/interfaces/IWhitelist.sol";
/**
 * @title Whitelist
 * @notice Implements a role-based whitelist with admin management.
 * @dev Uses OpenZeppelin AccessControlUpgradeable for role management.
 */

contract Whitelist is IWhitelist, AccessControlUpgradeable {
    /// @notice Mapping of whitelisted addresses.
    mapping(address => bool) public whitelist;

    /// @notice Role identifier for whitelist admins.
    bytes32 public constant WHITELIST_ADMIN_ROLE = keccak256("WHITELIST_ADMIN_ROLE");

    /**
     * @notice Initializes the contract, setting the deployer as the default admin.
     */
    function initialize() external initializer {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        // Grant the deployer the whitelist admin role
        _grantRole(WHITELIST_ADMIN_ROLE, msg.sender);
    }

    /**
     * @notice Add an address to the whitelist.
     * @dev Only callable by accounts with WHITELIST_ADMIN_ROLE.
     * @param _address The address to add.
     */
    function addToWhitelist(address _address) external onlyRole(WHITELIST_ADMIN_ROLE) {
        _addToWhitelist(_address);
    }

    /**
     * @notice Add multiple addresses to the whitelist.
     * @dev Only callable by accounts with WHITELIST_ADMIN_ROLE.
     * @param _addresses The array of addresses to add.
     */
    function addToWhitelist(address[] memory _addresses) external onlyRole(WHITELIST_ADMIN_ROLE) {
        uint256 length = _addresses.length;
        for (uint256 i = 0; i < length; i++) {
            _addToWhitelist(_addresses[i]);
        }
    }

    /**
     * @notice Internal function to add an address to the whitelist.
     * @param _address The address to add.
     */
    function _addToWhitelist(address _address) internal {
        whitelist[_address] = true;
        emit Whitelisted(_address);
    }

    /**
     * @notice Remove an address from the whitelist.
     * @dev Only callable by accounts with WHITELIST_ADMIN_ROLE.
     * @param _address The address to remove.
     */
    function removeFromWhitelist(address _address) external onlyRole(WHITELIST_ADMIN_ROLE) {
        _removeFromWhitelist(_address);
    }

    /**
     * @notice Remove multiple addresses from the whitelist.
     * @dev Only callable by accounts with WHITELIST_ADMIN_ROLE.
     * @param _addresses The array of addresses to remove.
     */
    function removeFromWhitelist(address[] memory _addresses) external onlyRole(WHITELIST_ADMIN_ROLE) {
        uint256 length = _addresses.length;
        for (uint256 i = 0; i < length; i++) {
            _removeFromWhitelist(_addresses[i]);
        }
    }

    /**
     * @notice Internal function to remove an address from the whitelist.
     * @param _address The address to remove.
     */
    function _removeFromWhitelist(address _address) internal {
        whitelist[_address] = false;
        emit Unwhitelisted(_address);
    }

    /**
     * @notice Grant the whitelist admin role to an address.
     * @dev Only callable by accounts with DEFAULT_ADMIN_ROLE.
     * @param _address The address to grant the admin role.
     */
    function setWhitelistAdmin(address _address) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _grantRole(WHITELIST_ADMIN_ROLE, _address);
        emit WhitelistAdminSet(_address);
    }

    /**
     * @notice Revoke the whitelist admin role from an address.
     * @dev Only callable by accounts with DEFAULT_ADMIN_ROLE.
     * @param _address The address to revoke the admin role from.
     */
    function revokeWhitelistAdmin(address _address) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revokeRole(WHITELIST_ADMIN_ROLE, _address);
        emit WhitelistAdminRevoked(_address);
    }

    /**
     * @notice Check if an address is whitelisted.
     * @param _address The address to check.
     * @return True if the address is whitelisted, false otherwise.
     */
    function isWhitelisted(address _address) external view returns (bool) {
        return whitelist[_address];
    }
}
