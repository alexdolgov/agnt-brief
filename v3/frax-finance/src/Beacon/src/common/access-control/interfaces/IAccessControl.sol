// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity 0.8.30;

import {IAccessControlErrors} from "./IAccessControlErrors.sol";

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl is IAccessControlErrors {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`.
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role.
     * @param role The role that was granted.
     * @param account The account that was granted the role.
     * @param sender The sender of the role grant.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`).
     * @param role The role that was revoked.
     * @param account The account that was revoked the role.
     * @param sender The sender of the role revocation.
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - The caller must have ``role``'s admin role.
     * @param role The role to grant.
     * @param account The account to grant the role to.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Grants `DEFAULT_ADMIN_ROLE` to `account`.
     *
     * If `account` had not been already granted `DEFAULT_ADMIN_ROLE`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - The caller must have `DEFAULT_ADMIN_ROLE`.
     * - It will only be granted if the admin cap has not been reached.
     *
     * May emit a {RoleGranted} event.
     * @param account The account to grant the role to.
     */
    function grantDefaultAdminRole(address account) external;

    /**
     * @dev Grants `DELEGATED_ADMIN_ROLE` to `account`.
     *
     * If `account` had not been already granted `DELEGATED_ADMIN_ROLE`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - The caller must have `DEFAULT_ADMIN_ROLE` or `DELEGATED_ADMIN_ROLE`.
     * - The total number of delegates must not exceed the `MAX_DELEGATES`.
     *
     * May emit a {RoleGranted} event.
     * @param account The account to grant the role to.
     */
    function grantDelegateAdminRole(address account) external;

    /**
     * @dev Batch grants `DELEGATED_ADMIN_ROLE` to each address in `accounts` array.
     *
     * If each `account` had not been already granted `DELEGATED_ADMIN_ROLE`, emits a {RoleGranted}
     * event for each.
     *
     * Requirements:
     *
     * - The caller must have `DEFAULT_ADMIN_ROLE`.
     * - The total number of delegates must not exceed `MAX_DELEGATES`.
     *
     * May emit a {RoleGranted} event.
     * @param accounts The accounts to grant the role to.
     */
    function batchGrantDelegateAdminRole(address[] memory accounts) external;

    /**
     * @dev Revokes `DELEGATED_ADMIN_ROLE` from `account`.
     *
     * If `account` had been granted `DELEGATED_ADMIN_ROLE`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - The caller must have `DEFAULT_ADMIN_ROLE` or be the direct delegator of the role.
     *
     * May emit a {RoleRevoked} event.
     * @param account The account to revoke the role from.
     */
    function revokeDelegateAdminRole(address account) external;

    /**
     * @dev Revokes `DEFAULT_ADMIN_ROLE` from `account`.
     *
     * If `account` had been granted `DEFAULT_ADMIN_ROLE`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - The caller must have `DEFAULT_ADMIN_ROLE`.
     * - At least one admin must remain after the revocation.
     *
     * May emit a {RoleRevoked} event.
     * @param account The account to revoke the role from.
     */
    function revokeDefaultAdminRole(address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - The caller must have ``role``'s admin role.
     * @param role The role to revoke.
     * @param account The account to revoke the role from.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - The caller must be `account`.
     * @param role The role to revoke.
     */
    function renounceRole(bytes32 role) external;

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     * @param role The role to check.
     * @param account The account to check.
     * @return bool True if the account has the role, false otherwise.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     * @param role The role to get the admin for.
     * @return bytes32 The admin role.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);
}
