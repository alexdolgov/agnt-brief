// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IGatewayAccessControl {
    /**
     * @notice Emitted when a role is granted or revoked from an account
     * @dev This event helps track all role management changes in the system
     * @param account The address of the account whose role is being modified
     * @param role The identifier of the role being modified (e.g., BRIDGE_ROLE, ADMIN_ROLE)
     * @param enabled True if the role is being granted, false if being revoked
     */
    event RoleUpdated(address indexed account, bytes32 indexed role, bool enabled);

    /**
     * @notice Initialize gateway access control and grant role to admin
     * @param admin Address of admin
     */
    function initialize(address admin) external;

    /**
     * @notice Updates the role of an account.
     * @param role The role to be updated.
     * @param account The account to which the role is being assigned or removed.
     * @param enable Set to `true` to grant the role, or `false` to revoke it.
     */
    function updateRole(bytes32 role, address account, bool enable) external;

    /**
     * @notice Checks the role of an account.
     * @param role The role to be checked
     * @param account The address of the account to be checked
     */
    function checkRole(bytes32 role, address account) external view;

    /**
     * @notice Checks the role granted to an account.
     * @param role The role to be checked
     * @param account The address of the account to be checked
     * @return bool Returns `true` if `account` has been granted `role`
     */
    function hasRoleAccess(bytes32 role, address account) external view returns (bool);
}
