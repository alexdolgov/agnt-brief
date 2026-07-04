// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ContractUUPSUpgradeable} from "./commons/ContractUUPSUpgradeable.sol";
import {Errors} from "./commons/Errors.sol";

/**
 * @title AccessManager
 * @author Mu Digital
 * @notice Manages role-based access control for the Mu Protocol
 */
contract AccessManager is ContractUUPSUpgradeable {
    /**
     * @notice Initialize the contract and grant DEFAULT_ADMIN_ROLE to deployer
     */
    function initialize() external initializer {
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    /**
     * @notice Get Hash of a role name
     * @param roleName The name of the role
     * @return The hash of the role name
     */
    function getHashRole(string memory roleName) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(roleName));
    }

    /**
     * @notice Grant a specific role to multiple accounts
     * @param role The role to grant
     * @param accounts The accounts to grant the role to
     */
    function grantRoleForMultiAccounts(
        bytes32 role,
        address[] calldata accounts
    ) external onlyRole(getRoleAdmin(role)) {
        uint256 accountsLength = accounts.length;
        if (accountsLength == 0) revert Errors.InvalidArray();
        for (uint256 i = 0; i < accountsLength; ++i) {
            _grantRole(role, accounts[i]);
        }
    }

    /**
     * @notice Revoke a specific role from multiple accounts
     * @param role The role to revoke
     * @param accounts The accounts to revoke the role from
     */
    function revokeRoleForMultiAccounts(
        bytes32 role,
        address[] calldata accounts
    ) external onlyRole(getRoleAdmin(role)) {
        uint256 accountsLength = accounts.length;
        if (accountsLength == 0) revert Errors.InvalidArray();
        for (uint256 i = 0; i < accountsLength; ++i) {
            _revokeRole(role, accounts[i]);
        }
    }
}
