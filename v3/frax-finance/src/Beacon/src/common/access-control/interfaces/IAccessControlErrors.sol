// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @title IAccessControlErrors
 * @dev Interface for AccessControl custom errors
 */
interface IAccessControlErrors {
    /**
     * @dev Indicates that the caller is not authorized to perform an operation.
     * @param account The address attempting the operation.
     * @param role The required role.
     */
    error AccessControlUnauthorizedAccount(address account, bytes32 role);

    /**
     * @dev Indicates that the admin cap has been reached.
     */
    error AccessControlAdminCapReached();

    /**
     * @dev Indicates that the delegate cap has been reached.
     */
    error AccessControlDelegateCapReached();

    /**
     * @dev Indicates that the account already has the role.
     * @param account The address that already has the role.
     * @param role The role in question.
     */
    error AccessControlRoleAlreadyAssigned(address account, bytes32 role);

    /**
     * @dev Indicates that the account does not have the role.
     * @param account The address that doesn't have the role.
     * @param role The role in question.
     */
    error AccessControlRoleNotAssigned(address account, bytes32 role);

    /**
     * @dev Indicates that the zero address was provided.
     */
    error AccessControlInvalidAddress();

    /**
     * @dev Indicates that the DEFAULT_ADMIN_ROLE cannot be directly granted.
     */
    error AccessControlDefaultAdminNotAcceptable();

    /**
     * @dev Indicates that the DELEGATED_ADMIN_ROLE cannot be edited using this function.
     */
    error AccessControlDelegatedAdminNotAcceptable();

    /**
     * @dev Indicates that the DEFAULT_ADMIN_ROLE cannot be assigned to a DELEGATED_ADMIN_ROLE account.
     * @param account The address that has DELEGATED_ADMIN_ROLE.
     */
    error AccessControlDefaultAdminToDelegatedAdmin(address account);

    /**
     * @dev Indicates that the DELEGATED_ADMIN_ROLE cannot be assigned to a DEFAULT_ADMIN_ROLE account.
     * @param account The address that has DEFAULT_ADMIN_ROLE.
     */
    error AccessControlDelegatedAdminToDefaultAdmin(address account);

    /**
     * @dev Indicates that there must be at least one admin.
     */
    error AccessControlMinimumAdminCount();

    /**
     * @dev Indicates that the caller has no rights to revoke the role.
     * @param caller The address attempting to revoke.
     * @param account The address from which the role would be revoked.
     */
    error AccessControlNoRightsToRevoke(address caller, address account);

    /**
     * @dev Indicates that the caller is not a default or delegated admin.
     * @param caller The address attempting the operation.
     */
    error AccessControlNotDefaultOrDelegatedAdmin(address caller);

    /**
     * @dev Indicates that the caller is not a default admin.
     * @param caller The address attempting the operation.
     */
    error AccessControlNotDefaultAdmin(address caller);
} 