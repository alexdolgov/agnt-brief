// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/interfaces/IERC5313.sol";
import "./interfaces/ISingleAdminAccessControl.sol";

/**
 * @title SingleAdminAccessControl
 * @notice SingleAdminAccessControl is a contract that provides a single admin role
 * @notice This contract is a simplified alternative to OpenZeppelin's AccessControlDefaultAdminRules
 */
abstract contract SingleAdminAccessControl is IERC5313, ISingleAdminAccessControl, AccessControl {
    address private _currentDefaultAdmin;
    address private _pendingDefaultAdmin;

    // Track the single role for each account (since no account can have multiple roles)
    mapping(address => bytes32) private _accountRole;

    modifier notAdmin(bytes32 role) {
        if (role == DEFAULT_ADMIN_ROLE) revert InvalidAdminChange();
        _;
    }

    /// @notice Transfer the admin role to a new address
    /// @notice This can ONLY be executed by the current admin
    /// @param newAdmin address
    function transferAdmin(address newAdmin) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newAdmin == msg.sender) revert InvalidAdminChange();
        // Check that the new admin doesn't already have any roles
        _checkRoleConflictsForAdmin(newAdmin);
        _pendingDefaultAdmin = newAdmin;
        emit AdminTransferRequested(_currentDefaultAdmin, newAdmin);
    }

    function acceptAdmin() external {
        if (msg.sender != _pendingDefaultAdmin) revert NotPendingAdmin();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @notice grant a role
    /// @notice can only be executed by the current single admin
    /// @notice admin role cannot be granted externally
    /// @param role bytes32
    /// @param account address
    function grantRole(bytes32 role, address account) public override onlyRole(DEFAULT_ADMIN_ROLE) notAdmin(role) {
        _grantRole(role, account);
    }

    /// @notice revoke a role
    /// @notice can only be executed by the current admin
    /// @notice admin role cannot be revoked
    /// @param role bytes32
    /// @param account address
    function revokeRole(bytes32 role, address account) public override onlyRole(DEFAULT_ADMIN_ROLE) notAdmin(role) {
        _revokeRole(role, account);
    }

    /// @notice renounce the role of msg.sender
    /// @notice admin role cannot be renounced
    /// @param role bytes32
    /// @param account address
    function renounceRole(bytes32 role, address account) public virtual override notAdmin(role) {
        if (hasRole(role, account)) {
            _removeRoleFromAccount(account, role);
        }
        super.renounceRole(role, account);
    }

    /**
     * @dev See {IERC5313-owner}.
     */
    function owner() public view virtual returns (address) {
        return _currentDefaultAdmin;
    }

    /**
     * @notice Get the pending admin address
     * @return The pending admin address, or address(0) if none
     */
    function pendingAdmin() public view returns (address) {
        return _pendingDefaultAdmin;
    }

    /**
     * @notice Internal function to check if an account has any AccessControl role
     * @param account The account to check
     * @return true if the account has any role, false otherwise
     */
    function _hasAnyAccessControlRole(address account) internal view returns (bool) {
        // Check if account has any tracked role
        if (_accountRole[account] != bytes32(0)) {
            return true;
        }
        
        // Check if account is pending admin
        if (account == _pendingDefaultAdmin) {
            return true;
        }
        
        // Check if account is current admin
        if (account == _currentDefaultAdmin) {
            return true;
        }
        
        return false;
    }

    /**
     * @notice no way to change admin without removing old admin first
     */
    function _grantRole(bytes32 role, address account) internal override {
        if (role == DEFAULT_ADMIN_ROLE) {
            // Check for role conflicts even for admin role - no address should have multiple roles
            _checkRoleConflictsForAdmin(account);
            emit AdminTransferred(_currentDefaultAdmin, account);
            _revokeRole(DEFAULT_ADMIN_ROLE, _currentDefaultAdmin);
            _currentDefaultAdmin = account;
            delete _pendingDefaultAdmin;
        } else {
            // Check for role conflicts - ensure no address has multiple non-admin roles
            _checkRoleConflicts(role, account);
            // Track the role for this account
            _addRoleToAccount(account, role);
        }
        super._grantRole(role, account);
    }

    /**
     * @notice Override _revokeRole to clean up role tracking
     */
    function _revokeRole(bytes32 role, address account) internal override {
        if (hasRole(role, account)) {
            _removeRoleFromAccount(account, role);
        }
        super._revokeRole(role, account);
    }

    /**
     * @notice Check that granting a role doesn't create conflicts with existing roles
     * @param account The account receiving the role
     */
    function _checkRoleConflicts(bytes32, address account) private view {
        // Use the consolidated role checking logic
        if (_hasAnyAccessControlRole(account)) {
            revert RoleConflict();
        }
    }

    /**
     * @notice Check that granting admin role doesn't create conflicts with existing roles
     * @param account The account receiving the admin role
     */
    function _checkRoleConflictsForAdmin(address account) private view {
        // Check if the account already has any role (excluding admin checks since this IS for admin)
        if (_accountRole[account] != bytes32(0)) {
            // Account already has a role, so we can't grant admin role
            revert RoleConflict();
        }
    }

    /**
     * @notice Add a role to an account's role tracking
     * @param account The account
     * @param role The role to add
     */
    function _addRoleToAccount(address account, bytes32 role) internal {
        _accountRole[account] = role;
    }

    /**
     * @notice Remove a role from an account's role tracking
     * @param account The account
     * @param role The role to remove
     */
    function _removeRoleFromAccount(address account, bytes32 role) internal {
        if (_accountRole[account] == role) {
            delete _accountRole[account];
        }
    }
}
