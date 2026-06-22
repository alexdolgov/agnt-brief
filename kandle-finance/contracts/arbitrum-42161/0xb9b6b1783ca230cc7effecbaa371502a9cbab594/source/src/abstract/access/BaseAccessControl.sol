// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {AccessControlDefaultAdminRules} from "@openzeppelin/contracts/access/extensions/AccessControlDefaultAdminRules.sol";

/**
 * @title BaseAccessControl
 * @notice Base access control contract using role-based permissions with admin protection
 * @dev Uses AccessControlDefaultAdminRules for secure admin role transfers with time delays
 *      - DEFAULT_ADMIN_ROLE: Can manage all roles, has transfer delays for security
 *      - DEVELOPER_ROLE: Can manage operational parameters
 *      Derived contracts can add additional roles (e.g., FACTORY_ROLE)
 */
abstract contract BaseAccessControl is AccessControlDefaultAdminRules {
    // ============================================
    // Roles Definition
    // ============================================

    /// @notice Developer role - can manage operational parameters
    bytes32 public constant DEVELOPER_ROLE = keccak256("DEVELOPER_ROLE");

    // ============================================
    // Constructor
    // ============================================

    /**
     * @notice Initialize the access control with the initial admin
     * @param initialAdmin The address that will be granted the default admin role
     */
    constructor(address initialAdmin) AccessControlDefaultAdminRules(2 days, initialAdmin) {
        // Admin role is managed by AccessControlDefaultAdminRules
    }

    // ============================================
    // Modifiers
    // ============================================

    /**
     * @notice Restricts function access to addresses with developer role
     */
    modifier onlyDeveloper() {
        _checkRole(DEVELOPER_ROLE);
        _;
    }

    /**
     * @notice Restricts function access to addresses with admin role
     */
    modifier onlyAdmin() {
        _checkRole(DEFAULT_ADMIN_ROLE);
        _;
    }

    modifier onlyAdminOrDeveloper() {
        if (!hasRole(DEFAULT_ADMIN_ROLE, msg.sender) && !hasRole(DEVELOPER_ROLE, msg.sender)) {
            revert("AccessControl: account is missing required role");
        }
        _;
    }
}
