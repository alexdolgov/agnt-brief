// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.19;

import {AccessControlEnumerable} from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

import {Roles} from "@protocol/core/Roles.sol";

/// @notice core contract that manages roles
/// all contracts that need to use roles inherit CoreRef which contains a pointer to this contract
/// roles are managed by the admin role.
contract Core is AccessControlEnumerable {
    /// @notice event emitted when a role is revoked by the guardian
    event EmergencyRevoke(bytes32 role, address account);

    /// @notice event emitted when a role is created
    event RoleCreated(bytes32 role, bytes32 adminRole);

    constructor() {
        _grantRole(Roles.ADMIN, msg.sender);
        _setRoleAdmin(Roles.ADMIN, Roles.ADMIN);
        _setRoleAdmin(Roles.GUARDIAN, Roles.ADMIN);
        _setRoleAdmin(Roles.GOVERNOR_DAO_ROLE, Roles.ADMIN);
        _setRoleAdmin(Roles.MEME_MINTER_ROLE, Roles.ADMIN);
        _setRoleAdmin(Roles.STIX_MINTER_ROLE, Roles.ADMIN);
    }

    /// @notice create a new role. This is the only way
    /// to allow admin to create a new admin.
    /// @param role the role to create
    /// @param adminRole the admin role of the new role
    function createRole(bytes32 role, bytes32 adminRole) external onlyRole(Roles.ADMIN) {
        _setRoleAdmin(role, adminRole);
    }

    /// @notice revoke roles as a guardian
    /// @param role to revoke
    /// @param account to revoke the role from
    function emergencyRevoke(bytes32 role, address account) external onlyRole(Roles.GUARDIAN) {
        require(role != Roles.ADMIN, "Core: guardian cannot revoke admin");
        _revokeRole(role, account);

        emit EmergencyRevoke(role, account);
    }
}
