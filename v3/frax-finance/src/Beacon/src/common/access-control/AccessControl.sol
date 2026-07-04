// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.30;

import {IAccessControl} from "./interfaces/IAccessControl.sol";
import {Strings} from "../libraries/Strings.sol";

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * This version includes an admin cap for the `DEFAULT_ADMIN_ROLE`
 * to ensure secure role management and avoid excessive administrative power.
 * @custom:security-contact security@wisdomtree.com
 */
abstract contract AccessControl is IAccessControl {

    /// @notice The struct for the role data.
    struct RoleDataC20 {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    /// @notice The struct for the delegate data.
    struct Delegate {
        address from;
        address[] delegates;
    }

    /// @notice The mapping for the role data.
    mapping(bytes32 => RoleDataC20) internal _rolesC20;

    /// @notice Maximum number of accounts that can hold the `DEFAULT_ADMIN_ROLE`
    uint256 public constant MAX_ADMINS = 3;

    /// @notice Current number of accounts that hold the `DEFAULT_ADMIN_ROLE`
    uint256 private _adminCount = 0;

    /// @notice Maximum number of delegates that can be assigned the `DELEGATED_ADMIN_ROLE`
    uint256 public constant MAX_DELEGATES = 12;

    /// @notice Mapping that stores the delegation tree structure
    mapping(address => Delegate) public delegatedAdmins;

    /// @notice Cursor to track the number of delegates assigned
    uint256 public lastDelegatedAdmin = 0;

    /// @notice Predefined roles within the system
    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    bytes32 public constant ISSUER_ROLE = keccak256("ISSUER_ROLE");
    bytes32 public constant REGISTRAR_ROLE = keccak256("REGISTRAR_ROLE");
    bytes32 public constant DELEGATED_ADMIN_ROLE = keccak256("DELEGATED_ADMIN_ROLE");

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with a standardized custom error including the required role.
     * @param role The role to check.
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /**
     * @dev Modifier that checks that a given role is not 'DEFAULT_ADMIN_ROLE'
     * @param role The role to check.
     */
    modifier notDefaultAdminRole(bytes32 role) {
        if (role == DEFAULT_ADMIN_ROLE) {
            revert AccessControlDefaultAdminNotAcceptable();
        }
        _;
    }

    /**
     * @dev Modifier that checks that a given role is not 'DELEGATED_ADMIN_ROLE'
     * @param role The role to check.
     */
    modifier notDelegatedAdminRole(bytes32 role) {
        if (role == DELEGATED_ADMIN_ROLE) {
            revert AccessControlDelegatedAdminNotAcceptable();
        }
        _;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted} event.
     *
     * Requirements:
     * - The caller must have the admin role associated with `role`.
     * - The role must not be `DEFAULT_ADMIN_ROLE` or `DELEGATED_ADMIN_ROLE`.
     * @param role The role to grant.
     * @param account The account to grant the role to.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account)
        external
        virtual
        override
        onlyRole(getRoleAdmin(role))
        notDefaultAdminRole(role)
        notDelegatedAdminRole(role)
    {
        _grantRole(role, account);
    }

    /**
     * @dev Grants `DEFAULT_ADMIN_ROLE` to `account`.
     *
     * Requirements:
     * - The caller must have `DEFAULT_ADMIN_ROLE`.
     * - The admin cap must not have been reached.
     * - The account must not have `DELEGATED_ADMIN_ROLE`.
     * - The account must not have `DEFAULT_ADMIN_ROLE`.
     *
     * @param account The account to grant the role to.
     * May emit a {RoleGranted} event.
     */
    function grantDefaultAdminRole(address account) external virtual override {
        if (!hasRole(DEFAULT_ADMIN_ROLE, msg.sender)) {
            revert AccessControlUnauthorizedAccount(msg.sender, DEFAULT_ADMIN_ROLE);
        }
        if (hasRole(DELEGATED_ADMIN_ROLE, account)) {
            revert AccessControlDefaultAdminToDelegatedAdmin(account);
        }
        if (hasRole(DEFAULT_ADMIN_ROLE, account)) {
            revert AccessControlRoleAlreadyAssigned(account, DEFAULT_ADMIN_ROLE);
        }
        if (_adminCount >= MAX_ADMINS) {
            revert AccessControlAdminCapReached();
        }

        _grantRole(DEFAULT_ADMIN_ROLE, account);
    }

    /**
     * @dev Batch grants `DELEGATED_ADMIN_ROLE` to each address in `accounts` array.
     *
     * Requirements:
     * - The caller must have `DEFAULT_ADMIN_ROLE`.
     * - The total number of delegates must not exceed `MAX_DELEGATES`.
     * @param accounts The array of accounts to grant the role to.
     *
     * May emit a {RoleGranted} event.
     */
    function batchGrantDelegateAdminRole(address[] memory accounts) external virtual override {
        if (!hasRole(DEFAULT_ADMIN_ROLE, msg.sender)) {
            revert AccessControlNotDefaultAdmin(msg.sender);
        }

        uint256 _len = accounts.length;
        if (lastDelegatedAdmin + _len > MAX_DELEGATES) {
            revert AccessControlDelegateCapReached();
        }

        for (uint256 i; i < _len; ++i) {
            grantDelegateAdminRole(accounts[i]);
        }
    }

    /**
     * @dev Revokes `DELEGATED_ADMIN_ROLE` from `account`.
     *
     * Requirements:
     * - The caller must have either the `DEFAULT_ADMIN_ROLE` or be the direct delegator.
     * @param account The account to revoke the role from.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeDelegateAdminRole(address account) external virtual override {
        if (!hasRole(DELEGATED_ADMIN_ROLE, account)) {
            revert AccessControlRoleNotAssigned(account, DELEGATED_ADMIN_ROLE);
        }
        bool _isDefaultAdmin = hasRole(DEFAULT_ADMIN_ROLE, msg.sender);
        if (delegatedAdmins[account].from != msg.sender && !_isDefaultAdmin) {
            revert AccessControlNoRightsToRevoke(msg.sender, account);
        }

        _recursiveRemoveDelegate(account, _isDefaultAdmin);
    }

    /**
     * @dev Revokes `DEFAULT_ADMIN_ROLE` from `account`.
     *
     * Requirements:
     * - The caller must have the `DEFAULT_ADMIN_ROLE`.
     * - At least one admin must remain after the revocation.
     * @param account The account to revoke the role from.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeDefaultAdminRole(address account) external virtual override {
        if (!hasRole(DEFAULT_ADMIN_ROLE, msg.sender)) {
            revert AccessControlUnauthorizedAccount(msg.sender, DEFAULT_ADMIN_ROLE);
        }
        if (!hasRole(DEFAULT_ADMIN_ROLE, account)) {
            revert AccessControlRoleNotAssigned(account, DEFAULT_ADMIN_ROLE);
        }
        if (_adminCount <= 1) {
            revert AccessControlMinimumAdminCount();
        }

        // Revoke all delegates of this admin
        Delegate memory delegateInfo = delegatedAdmins[account];
        uint256 delegatesLength = delegateInfo.delegates.length;

        for (uint256 i = 0; i < delegatesLength; ++i) {
            _removeDelegate(delegateInfo.delegates[i]);
        }

        delete delegatedAdmins[account];

        _revokeRole(DEFAULT_ADMIN_ROLE, account);     
        _adminCount--;
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     * - The caller must have the admin role associated with `role`.
     * - The role must not be `DEFAULT_ADMIN_ROLE` or `DELEGATED_ADMIN_ROLE`.
     * @param role The role to revoke.
     * @param account The account to revoke the role from.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account)
        external
        virtual
        override
        onlyRole(getRoleAdmin(role))
        notDefaultAdminRole(role)
        notDelegatedAdminRole(role)
    {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * Requirements:
     * - The caller must be `account`.
     * - The role must not be `DEFAULT_ADMIN_ROLE` or `DELEGATED_ADMIN_ROLE`.
     *
     * @param role The role to revoke.
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role) external virtual override notDefaultAdminRole(role) notDelegatedAdminRole(role) {
        _revokeRole(role, msg.sender);
    }

    /**
     * @dev Grants `DELEGATED_ADMIN_ROLE` to `account`.
     *
     * Requirements:
     * - The caller must have `DEFAULT_ADMIN_ROLE` or `DELEGATED_ADMIN_ROLE`.
     * - The total number of delegates must not exceed `MAX_DELEGATES`.
     * - The account must not have `DELEGATED_ADMIN_ROLE`.
     * - The account must not have `DEFAULT_ADMIN_ROLE`.
     * @param account The account to grant the role to.
     *
     * May emit a {RoleGranted} event.
     */
    function grantDelegateAdminRole(address account) public virtual override {
        if (!hasRole(DEFAULT_ADMIN_ROLE, msg.sender) && !hasRole(DELEGATED_ADMIN_ROLE, msg.sender)) {
            revert AccessControlNotDefaultOrDelegatedAdmin(msg.sender);
        }
        if (hasRole(DELEGATED_ADMIN_ROLE, account)) {
            revert AccessControlRoleAlreadyAssigned(account, DELEGATED_ADMIN_ROLE);
        }
        if (hasRole(DEFAULT_ADMIN_ROLE, account)) {
            revert AccessControlDelegatedAdminToDefaultAdmin(account);
        }
        if (account == address(0)) {
            revert AccessControlInvalidAddress();
        }
        if (lastDelegatedAdmin >= MAX_DELEGATES) {
            revert AccessControlDelegateCapReached();
        }

        delegatedAdmins[msg.sender].delegates.push(account);
        delegatedAdmins[account].from = msg.sender;

        _grantRole(DELEGATED_ADMIN_ROLE, account);
        lastDelegatedAdmin++;
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     * @param role The role to check.
     * @param account The account to check.
     * @return bool True if the account has the role, false otherwise.
     */
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        return _rolesC20[role].members[account];
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     * @param role The role to check.
     * @return bytes32 The admin role.
     */
    function getRoleAdmin(bytes32 role) public view virtual override returns (bytes32) {
        return _rolesC20[role].adminRole;
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     * @param role The role to change.
     * @param adminRole The new admin role.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _rolesC20[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     * @param role The role to grant.
     * @param account The account to grant the role to.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (account == address(0)) {
            revert AccessControlInvalidAddress();
        }

        if (role == DEFAULT_ADMIN_ROLE) {
            if (hasRole(DEFAULT_ADMIN_ROLE, account)) {
                revert AccessControlRoleAlreadyAssigned(account, DEFAULT_ADMIN_ROLE);
            }
            _adminCount++;
        }

        if (!hasRole(role, account)) {
            _rolesC20[role].members[account] = true;
            emit RoleGranted(role, account, msg.sender);
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     * @param role The role to revoke.
     * @param account The account to revoke the role from.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (account == address(0)) {
            revert AccessControlInvalidAddress();
        }
        if (hasRole(role, account)) {
            _rolesC20[role].members[account] = false;
            emit RoleRevoked(role, account, msg.sender);
        }
    }

    /**
     * @dev Recursively removes delegate roles from an account.
     * @param account The account to remove delegate roles from.
     * @param _isDefaultAdmin Boolean indicating if the caller is a default admin.
     */
    function _recursiveRemoveDelegate(address account, bool _isDefaultAdmin) internal virtual {
        if (account == address(0)) {
            revert AccessControlInvalidAddress();
        }

        address parent = delegatedAdmins[account].from;
        if (parent != msg.sender && !_isDefaultAdmin) {
            revert AccessControlNoRightsToRevoke(msg.sender, account);
        }

        if (parent != address(0)) {
            Delegate storage parentInfo = delegatedAdmins[parent];
            uint256 delegatesLength = parentInfo.delegates.length;
            for (uint256 i = 0; i < delegatesLength; ++i) {
                if (parentInfo.delegates[i] == account) {
                    parentInfo.delegates[i] = parentInfo.delegates[delegatesLength - 1];
                    parentInfo.delegates.pop();
                    break;
                }
            }
        }

        _removeDelegate(account);
    }

    /**
     * @dev Removes a delegate role from an account.
     * @param account The account to remove the delegate role from.
     */
    function _removeDelegate(address account) internal virtual {
        Delegate memory delegateInfo = delegatedAdmins[account];
        uint256 delegatesLength = delegateInfo.delegates.length;

        for (uint256 i = 0; i < delegatesLength; ++i) {
            _removeDelegate(delegateInfo.delegates[i]);
        }

        delete delegatedAdmins[account];
        _revokeRole(DELEGATED_ADMIN_ROLE, account);
        lastDelegatedAdmin--;
    }

    /**
     * @dev Revert with a standard custom error if `msg.sender` is missing `role`.
     * Overriding this function changes the behavior of the {onlyRole} modifier.
     *
     * Format of the revert message is described in {_checkRole}.
     *
     * _Available since v4.6._
     * @param role The role to check.
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, msg.sender);
    }

    /**
     * @dev Revert with a standard custom error if `account` is missing `role`.
     * @param role The role to check.
     * @param account The account to check.
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account) && !hasRole(DEFAULT_ADMIN_ROLE, account)) {
            revert AccessControlUnauthorizedAccount(account, role);
        }
    }
}
