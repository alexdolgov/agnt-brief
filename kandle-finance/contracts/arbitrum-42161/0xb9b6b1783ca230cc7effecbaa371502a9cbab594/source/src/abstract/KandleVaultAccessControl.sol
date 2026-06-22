// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {BaseAccessControl} from "./access/BaseAccessControl.sol";

/**
 * @title KandleVaultAccessControl
 * @notice Access control contract for Kandle vault system
 * @dev Extends BaseAccessControl with vault-specific FACTORY_ROLE
 *      - DEFAULT_ADMIN_ROLE: Can manage all roles with transfer delays (from base)
 *      - FACTORY_ROLE: Can create and initialize vaults
 *      - DEVELOPER_ROLE: Can update certain parameters and perform maintenance (from base)
 */
abstract contract KandleVaultAccessControl is BaseAccessControl {
    // ============================================
    // Roles Definition
    // ============================================

    /// @notice Manager role - can manage vault operations
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    // ============================================
    // Constructor
    // ============================================

    /**
     * @notice Initialize the access control with the initial admin
     * @param initialAdmin The address that will be granted the default admin role
     */
    constructor(address initialAdmin) BaseAccessControl(initialAdmin) {
        // All roles managed by AccessControlDefaultAdminRules
    }

    // ============================================
    // Modifiers
    // ============================================

    /**
     * @notice Restricts function access to addresses with factory role
     */
    modifier onlyVaultManager() {
        _checkRole(MANAGER_ROLE);
        _;
    }
}
