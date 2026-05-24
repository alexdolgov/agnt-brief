// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import '../interfaces/access/IAccessController.sol';
import '../errors/ISystemErrors.sol';

/**
 * @title Access Checker Library
 * @notice Utility functions for access control checks
 * @dev Provides reusable access control functionality
 */
library AccessChecker {
    /**
     * @notice Verifies caller has required role
     * @param accessController Access controller contract
     * @param role Required role
     * @param account Account to check
     */
    function checkRole(
        IAccessController accessController,
        bytes32 role,
        address account
    ) internal view {
        if (!accessController.hasRole(role, account)) {
            revert ISystemErrors.Unauthorized(string(abi.encodePacked('Missing role: ', role)));
        }
    }

    /**
     * @notice Verifies caller has one of required roles
     * @param accessController Access controller contract
     * @param roles Array of acceptable roles
     * @param account Account to check
     */
    function checkRoles(
        IAccessController accessController,
        bytes32[] memory roles,
        address account
    ) internal view {
        for (uint i = 0; i < roles.length; i++) {
            if (accessController.hasRole(roles[i], account)) {
                return;
            }
        }
        revert ISystemErrors.Unauthorized('Missing required roles');
    }

    /**
     * @notice Validates contract address
     * @param addr Address to validate
     */
    function validateAddress(address addr) internal pure {
        if (addr == address(0)) {
            revert ISystemErrors.InvalidAddress(addr);
        }
    }
}
