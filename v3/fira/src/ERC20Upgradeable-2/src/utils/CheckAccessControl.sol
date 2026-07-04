// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.20;

import {IRegistryAccess} from "src/interfaces/registry/IRegistryAccess.sol";

import {NotAuthorized} from "src/errors.sol";

/// @title Check Access control library
library CheckAccessControl {
    /// @dev Function to restrict to one access role.
    /// @param registryAccess The registry access contract.
    /// @param role The role being checked.
    function onlyMatchingRole(IRegistryAccess registryAccess, bytes32 role) internal view {
        if (!registryAccess.hasRole(role, msg.sender)) {
            revert NotAuthorized();
        }
    }

    /// @dev Function to restrict two access roles.
    /// @param registryAccess The registry access contract.
    /// @param role1 The first role being checked.
    /// @param role2 The second role being checked.
    function onlyMatchingTwoRoles(IRegistryAccess registryAccess, bytes32 role1, bytes32 role2)
        internal
        view
    {
        if (
            !registryAccess.hasRole(role1, msg.sender) && !registryAccess.hasRole(role2, msg.sender)
        ) {
            revert NotAuthorized();
        }
    }
}
