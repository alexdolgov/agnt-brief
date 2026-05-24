// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import '../../libraries/SystemRoles.sol';

/**
 * @title Access Controller Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for managing role-based access control across the protocol
 * @dev Combines standard role management with custom role configuration
 * @custom:security-contact paras@zoth.io
 */
interface IAccessController {
    /**
     * @notice Checks if an account has a specific role
     * @param role Role identifier to check
     * @param account Account to verify
     * @return bool True if account has the role
     * @dev Core function for role verification
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @notice Grants a role to an account
     * @param role Role to grant
     * @param account Account to receive the role
     * @dev Only callable by role admin
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @notice Revokes a role from an account
     * @param role Role to revoke
     * @param account Account to revoke from
     * @dev Only callable by role admin
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @notice Gets configuration for a specific role
     * @param role Role identifier
     * @return RoleConfig Configuration struct for the role
     * @dev Returns role settings and constraints
     */
    function getRoleConfig(bytes32 role) external view returns (SystemRoles.RoleConfig memory);

    /**
     * @notice Initializes a new role with configuration
     * @param role Role identifier to initialize
     * @param config Role configuration settings
     * @param adminRole Role that will administer this role
     * @dev Sets up new role with specified parameters
     */
    function initializeRole(
        bytes32 role,
        SystemRoles.RoleConfig memory config,
        bytes32 adminRole
    ) external;

    /**
     * @notice Gets the admin role for a role
     * @param role Role to query
     * @return bytes32 Admin role identifier
     * @dev Returns role that can manage the queried role
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @notice Sets the admin role for a role
     * @param role Role to modify
     * @param adminRole New admin role
     * @dev Changes which role can manage the specified role
     */
    function setRoleAdmin(bytes32 role, bytes32 adminRole) external;

    /**
     * @notice Gets all members with a specific role
     * @param role Role to query
     * @return address[] Array of addresses with the role
     * @dev Returns complete list of role members
     */
    function getRoleMembers(bytes32 role) external view returns (address[] memory);

    /**
     * @notice Checks if a role has been initialized
     * @param role Role to check
     * @return bool True if role is initialized
     * @dev Verifies role existence and setup
     */
    function isRoleInitialized(bytes32 role) external view returns (bool);
}
