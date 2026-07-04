// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @title IAccessManager
 * @author Mu Digital
 * @notice Interface for the access manager contract providing role-based access control
 */
interface IAccessManager {
    /**
     * @notice Return the admin role that controls `role`
     * @return The bytes32 identifier of the default admin role
     */
    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);

    /**
     * @notice Return `true` if `account` has been granted `role`
     * @param role The role to check
     * @param account The account to check
     * @return True if account has the role, false otherwise
     */
    function hasRole(bytes32 role, address account) external view returns (bool);
}
