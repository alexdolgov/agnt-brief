// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/access/AccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (access/AccessControl.sol)

pragma solidity ^0.8.20;

import {IAccessControl} from "./IAccessControl.sol";
import {Context} from "../utils/Context.sol";
import {IERC165, ERC165} from "../utils/introspection/ERC165.sol";

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
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
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
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it. We recommend using {AccessControlDefaultAdminRules}
 * to enforce additional security measures for this role.
 */
abstract contract AccessControl is Context, IAccessControl, ERC165 {
    struct RoleData {
        mapping(address account => bool) hasRole;
        bytes32 adminRole;
    }

    mapping(bytes32 role => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with an {AccessControlUnauthorizedAccount} error including the required role.
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual returns (bool) {
        return _roles[role].hasRole[account];
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `_msgSender()`
     * is missing `role`. Overriding this function changes the behavior of the {onlyRole} modifier.
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `account`
     * is missing `role`.
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert AccessControlUnauthorizedAccount(account, role);
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address callerConfirmation) public virtual {
        if (callerConfirmation != _msgSender()) {
            revert AccessControlBadConfirmation();
        }

        _revokeRole(role, callerConfirmation);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Attempts to grant `role` to `account` and returns a boolean indicating if `role` was granted.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual returns (bool) {
        if (!hasRole(role, account)) {
            _roles[role].hasRole[account] = true;
            emit RoleGranted(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Attempts to revoke `role` from `account` and returns a boolean indicating if `role` was revoked.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual returns (bool) {
        if (hasRole(role, account)) {
            _roles[role].hasRole[account] = false;
            emit RoleRevoked(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/access/extensions/AccessControlDefaultAdminRules.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (access/extensions/AccessControlDefaultAdminRules.sol)

pragma solidity ^0.8.20;

import {IAccessControlDefaultAdminRules} from "./IAccessControlDefaultAdminRules.sol";
import {AccessControl, IAccessControl} from "../AccessControl.sol";
import {SafeCast} from "../../utils/math/SafeCast.sol";
import {Math} from "../../utils/math/Math.sol";
import {IERC5313} from "../../interfaces/IERC5313.sol";
import {IERC165} from "../../utils/introspection/IERC165.sol";

/**
 * @dev Extension of {AccessControl} that allows specifying special rules to manage
 * the `DEFAULT_ADMIN_ROLE` holder, which is a sensitive role with special permissions
 * over other roles that may potentially have privileged rights in the system.
 *
 * If a specific role doesn't have an admin role assigned, the holder of the
 * `DEFAULT_ADMIN_ROLE` will have the ability to grant it and revoke it.
 *
 * This contract implements the following risk mitigations on top of {AccessControl}:
 *
 * * Only one account holds the `DEFAULT_ADMIN_ROLE` since deployment until it's potentially renounced.
 * * Enforces a 2-step process to transfer the `DEFAULT_ADMIN_ROLE` to another account.
 * * Enforces a configurable delay between the two steps, with the ability to cancel before the transfer is accepted.
 * * The delay can be changed by scheduling, see {changeDefaultAdminDelay}.
 * * Role transfers must wait at least one block after scheduling before it can be accepted.
 * * It is not possible to use another role to manage the `DEFAULT_ADMIN_ROLE`.
 *
 * Example usage:
 *
 * ```solidity
 * contract MyToken is AccessControlDefaultAdminRules {
 *   constructor() AccessControlDefaultAdminRules(
 *     3 days,
 *     msg.sender // Explicit initial `DEFAULT_ADMIN_ROLE` holder
 *    ) {}
 * }
 * ```
 */
abstract contract AccessControlDefaultAdminRules is IAccessControlDefaultAdminRules, IERC5313, AccessControl {
    // pending admin pair read/written together frequently
    address private _pendingDefaultAdmin;
    uint48 private _pendingDefaultAdminSchedule; // 0 == unset

    uint48 private _currentDelay;
    address private _currentDefaultAdmin;

    // pending delay pair read/written together frequently
    uint48 private _pendingDelay;
    uint48 private _pendingDelaySchedule; // 0 == unset

    /**
     * @dev Sets the initial values for {defaultAdminDelay} and {defaultAdmin} address.
     */
    constructor(uint48 initialDelay, address initialDefaultAdmin) {
        if (initialDefaultAdmin == address(0)) {
            revert AccessControlInvalidDefaultAdmin(address(0));
        }
        _currentDelay = initialDelay;
        _grantRole(DEFAULT_ADMIN_ROLE, initialDefaultAdmin);
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControlDefaultAdminRules).interfaceId || super.supportsInterface(interfaceId);
    }

    /// @inheritdoc IERC5313
    function owner() public view virtual returns (address) {
        return defaultAdmin();
    }

    ///
    /// Override AccessControl role management
    ///

    /**
     * @dev See {AccessControl-grantRole}. Reverts for `DEFAULT_ADMIN_ROLE`.
     */
    function grantRole(bytes32 role, address account) public virtual override(AccessControl, IAccessControl) {
        if (role == DEFAULT_ADMIN_ROLE) {
            revert AccessControlEnforcedDefaultAdminRules();
        }
        super.grantRole(role, account);
    }

    /**
     * @dev See {AccessControl-revokeRole}. Reverts for `DEFAULT_ADMIN_ROLE`.
     */
    function revokeRole(bytes32 role, address account) public virtual override(AccessControl, IAccessControl) {
        if (role == DEFAULT_ADMIN_ROLE) {
            revert AccessControlEnforcedDefaultAdminRules();
        }
        super.revokeRole(role, account);
    }

    /**
     * @dev See {AccessControl-renounceRole}.
     *
     * For the `DEFAULT_ADMIN_ROLE`, it only allows renouncing in two steps by first calling
     * {beginDefaultAdminTransfer} to the `address(0)`, so it's required that the {pendingDefaultAdmin} schedule
     * has also passed when calling this function.
     *
     * After its execution, it will not be possible to call `onlyRole(DEFAULT_ADMIN_ROLE)` functions.
     *
     * NOTE: Renouncing `DEFAULT_ADMIN_ROLE` will leave the contract without a {defaultAdmin},
     * thereby disabling any functionality that is only available for it, and the possibility of reassigning a
     * non-administrated role.
     */
    function renounceRole(bytes32 role, address account) public virtual override(AccessControl, IAccessControl) {
        if (role == DEFAULT_ADMIN_ROLE && account == defaultAdmin()) {
            (address newDefaultAdmin, uint48 schedule) = pendingDefaultAdmin();
            if (newDefaultAdmin != address(0) || !_isScheduleSet(schedule) || !_hasSchedulePassed(schedule)) {
                revert AccessControlEnforcedDefaultAdminDelay(schedule);
            }
            delete _pendingDefaultAdminSchedule;
        }
        super.renounceRole(role, account);
    }

    /**
     * @dev See {AccessControl-_grantRole}.
     *
     * For `DEFAULT_ADMIN_ROLE`, it only allows granting if there isn't already a {defaultAdmin} or if the
     * role has been previously renounced.
     *
     * NOTE: Exposing this function through another mechanism may make the `DEFAULT_ADMIN_ROLE`
     * assignable again. Make sure to guarantee this is the expected behavior in your implementation.
     */
    function _grantRole(bytes32 role, address account) internal virtual override returns (bool) {
        if (role == DEFAULT_ADMIN_ROLE) {
            if (defaultAdmin() != address(0)) {
                revert AccessControlEnforcedDefaultAdminRules();
            }
            _currentDefaultAdmin = account;
        }
        return super._grantRole(role, account);
    }

    /// @inheritdoc AccessControl
    function _revokeRole(bytes32 role, address account) internal virtual override returns (bool) {
        if (role == DEFAULT_ADMIN_ROLE && account == defaultAdmin()) {
            delete _currentDefaultAdmin;
        }
        return super._revokeRole(role, account);
    }

    /**
     * @dev See {AccessControl-_setRoleAdmin}. Reverts for `DEFAULT_ADMIN_ROLE`.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual override {
        if (role == DEFAULT_ADMIN_ROLE) {
            revert AccessControlEnforcedDefaultAdminRules();
        }
        super._setRoleAdmin(role, adminRole);
    }

    ///
    /// AccessControlDefaultAdminRules accessors
    ///

    /// @inheritdoc IAccessControlDefaultAdminRules
    function defaultAdmin() public view virtual returns (address) {
        return _currentDefaultAdmin;
    }

    /// @inheritdoc IAccessControlDefaultAdminRules
    function pendingDefaultAdmin() public view virtual returns (address newAdmin, uint48 schedule) {
        return (_pendingDefaultAdmin, _pendingDefaultAdminSchedule);
    }

    /// @inheritdoc IAccessControlDefaultAdminRules
    function defaultAdminDelay() public view virtual returns (uint48) {
        uint48 schedule = _pendingDelaySchedule;
        return (_isScheduleSet(schedule) && _hasSchedulePassed(schedule)) ? _pendingDelay : _currentDelay;
    }

    /// @inheritdoc IAccessControlDefaultAdminRules
    function pendingDefaultAdminDelay() public view virtual returns (uint48 newDelay, uint48 schedule) {
        schedule = _pendingDelaySchedule;
        return (_isScheduleSet(schedule) && !_hasSchedulePassed(schedule)) ? (_pendingDelay, schedule) : (0, 0);
    }

    /// @inheritdoc IAccessControlDefaultAdminRules
    function defaultAdminDelayIncreaseWait() public view virtual returns (uint48) {
        return 5 days;
    }

    ///
    /// AccessControlDefaultAdminRules public and internal setters for defaultAdmin/pendingDefaultAdmin
    ///

    /// @inheritdoc IAccessControlDefaultAdminRules
    function beginDefaultAdminTransfer(address newAdmin) public virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        _beginDefaultAdminTransfer(newAdmin);
    }

    /**
     * @dev See {beginDefaultAdminTransfer}.
     *
     * Internal function without access restriction.
     */
    function _beginDefaultAdminTransfer(address newAdmin) internal virtual {
        uint48 newSchedule = SafeCast.toUint48(block.timestamp) + defaultAdminDelay();
        _setPendingDefaultAdmin(newAdmin, newSchedule);
        emit DefaultAdminTransferScheduled(newAdmin, newSchedule);
    }

    /// @inheritdoc IAccessControlDefaultAdminRules
    function cancelDefaultAdminTransfer() public virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        _cancelDefaultAdminTransfer();
    }

    /**
     * @dev See {cancelDefaultAdminTransfer}.
     *
     * Internal function without access restriction.
     */
    function _cancelDefaultAdminTransfer() internal virtual {
        _setPendingDefaultAdmin(address(0), 0);
    }

    /// @inheritdoc IAccessControlDefaultAdminRules
    function acceptDefaultAdminTransfer() public virtual {
        (address newDefaultAdmin, ) = pendingDefaultAdmin();
        if (_msgSender() != newDefaultAdmin) {
            // Enforce newDefaultAdmin explicit acceptance.
            revert AccessControlInvalidDefaultAdmin(_msgSender());
        }
        _acceptDefaultAdminTransfer();
    }

    /**
     * @dev See {acceptDefaultAdminTransfer}.
     *
     * Internal function without access restriction.
     */
    function _acceptDefaultAdminTransfer() internal virtual {
        (address newAdmin, uint48 schedule) = pendingDefaultAdmin();
        if (!_isScheduleSet(schedule) || !_hasSchedulePassed(schedule)) {
            revert AccessControlEnforcedDefaultAdminDelay(schedule);
        }
        _revokeRole(DEFAULT_ADMIN_ROLE, defaultAdmin());
        _grantRole(DEFAULT_ADMIN_ROLE, newAdmin);
        delete _pendingDefaultAdmin;
        delete _pendingDefaultAdminSchedule;
    }

    ///
    /// AccessControlDefaultAdminRules public and internal setters for defaultAdminDelay/pendingDefaultAdminDelay
    ///

    /// @inheritdoc IAccessControlDefaultAdminRules
    function changeDefaultAdminDelay(uint48 newDelay) public virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        _changeDefaultAdminDelay(newDelay);
    }

    /**
     * @dev See {changeDefaultAdminDelay}.
     *
     * Internal function without access restriction.
     */
    function _changeDefaultAdminDelay(uint48 newDelay) internal virtual {
        uint48 newSchedule = SafeCast.toUint48(block.timestamp) + _delayChangeWait(newDelay);
        _setPendingDelay(newDelay, newSchedule);
        emit DefaultAdminDelayChangeScheduled(newDelay, newSchedule);
    }

    /// @inheritdoc IAccessControlDefaultAdminRules
    function rollbackDefaultAdminDelay() public virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        _rollbackDefaultAdminDelay();
    }

    /**
     * @dev See {rollbackDefaultAdminDelay}.
     *
     * Internal function without access restriction.
     */
    function _rollbackDefaultAdminDelay() internal virtual {
        _setPendingDelay(0, 0);
    }

    /**
     * @dev Returns the amount of seconds to wait after the `newDelay` will
     * become the new {defaultAdminDelay}.
     *
     * The value returned guarantees that if the delay is reduced, it will go into effect
     * after a wait that honors the previously set delay.
     *
     * See {defaultAdminDelayIncreaseWait}.
     */
    function _delayChangeWait(uint48 newDelay) internal view virtual returns (uint48) {
        uint48 currentDelay = defaultAdminDelay();

        // When increasing the delay, we schedule the delay change to occur after a period of "new delay" has passed, up
        // to a maximum given by defaultAdminDelayIncreaseWait, by default 5 days. For example, if increasing from 1 day
        // to 3 days, the new delay will come into effect after 3 days. If increasing from 1 day to 10 days, the new
        // delay will come into effect after 5 days. The 5 day wait period is intended to be able to fix an error like
        // using milliseconds instead of seconds.
        //
        // When decreasing the delay, we wait the difference between "current delay" and "new delay". This guarantees
        // that an admin transfer cannot be made faster than "current delay" at the time the delay change is scheduled.
        // For example, if decreasing from 10 days to 3 days, the new delay will come into effect after 7 days.
        return
            newDelay > currentDelay
                ? uint48(Math.min(newDelay, defaultAdminDelayIncreaseWait())) // no need to safecast, both inputs are uint48
                : currentDelay - newDelay;
    }

    ///
    /// Private setters
    ///

    /**
     * @dev Setter of the tuple for pending admin and its schedule.
     *
     * May emit a DefaultAdminTransferCanceled event.
     */
    function _setPendingDefaultAdmin(address newAdmin, uint48 newSchedule) private {
        (, uint48 oldSchedule) = pendingDefaultAdmin();

        _pendingDefaultAdmin = newAdmin;
        _pendingDefaultAdminSchedule = newSchedule;

        // An `oldSchedule` from `pendingDefaultAdmin()` is only set if it hasn't been accepted.
        if (_isScheduleSet(oldSchedule)) {
            // Emit for implicit cancellations when another default admin was scheduled.
            emit DefaultAdminTransferCanceled();
        }
    }

    /**
     * @dev Setter of the tuple for pending delay and its schedule.
     *
     * May emit a DefaultAdminDelayChangeCanceled event.
     */
    function _setPendingDelay(uint48 newDelay, uint48 newSchedule) private {
        uint48 oldSchedule = _pendingDelaySchedule;

        if (_isScheduleSet(oldSchedule)) {
            if (_hasSchedulePassed(oldSchedule)) {
                // Materialize a virtual delay
                _currentDelay = _pendingDelay;
            } else {
                // Emit for implicit cancellations when another delay was scheduled.
                emit DefaultAdminDelayChangeCanceled();
            }
        }

        _pendingDelay = newDelay;
        _pendingDelaySchedule = newSchedule;
    }

    ///
    /// Private helpers
    ///

    /**
     * @dev Defines if a `schedule` is considered set. For consistency purposes.
     */
    function _isScheduleSet(uint48 schedule) private pure returns (bool) {
        return schedule != 0;
    }

    /**
     * @dev Defines if a `schedule` is considered passed. For consistency purposes.
     */
    function _hasSchedulePassed(uint48 schedule) private view returns (bool) {
        return schedule < block.timestamp;
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/access/extensions/IAccessControlDefaultAdminRules.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (access/extensions/IAccessControlDefaultAdminRules.sol)

pragma solidity >=0.8.4;

import {IAccessControl} from "../IAccessControl.sol";

/**
 * @dev External interface of AccessControlDefaultAdminRules declared to support ERC-165 detection.
 */
interface IAccessControlDefaultAdminRules is IAccessControl {
    /**
     * @dev The new default admin is not a valid default admin.
     */
    error AccessControlInvalidDefaultAdmin(address defaultAdmin);

    /**
     * @dev At least one of the following rules was violated:
     *
     * - The `DEFAULT_ADMIN_ROLE` must only be managed by itself.
     * - The `DEFAULT_ADMIN_ROLE` must only be held by one account at the time.
     * - Any `DEFAULT_ADMIN_ROLE` transfer must be in two delayed steps.
     */
    error AccessControlEnforcedDefaultAdminRules();

    /**
     * @dev The delay for transferring the default admin delay is enforced and
     * the operation must wait until `schedule`.
     *
     * NOTE: `schedule` can be 0 indicating there's no transfer scheduled.
     */
    error AccessControlEnforcedDefaultAdminDelay(uint48 schedule);

    /**
     * @dev Emitted when a {defaultAdmin} transfer is started, setting `newAdmin` as the next
     * address to become the {defaultAdmin} by calling {acceptDefaultAdminTransfer} only after `acceptSchedule`
     * passes.
     */
    event DefaultAdminTransferScheduled(address indexed newAdmin, uint48 acceptSchedule);

    /**
     * @dev Emitted when a {pendingDefaultAdmin} is reset if it was never accepted, regardless of its schedule.
     */
    event DefaultAdminTransferCanceled();

    /**
     * @dev Emitted when a {defaultAdminDelay} change is started, setting `newDelay` as the next
     * delay to be applied between default admin transfer after `effectSchedule` has passed.
     */
    event DefaultAdminDelayChangeScheduled(uint48 newDelay, uint48 effectSchedule);

    /**
     * @dev Emitted when a {pendingDefaultAdminDelay} is reset if its schedule didn't pass.
     */
    event DefaultAdminDelayChangeCanceled();

    /**
     * @dev Returns the address of the current `DEFAULT_ADMIN_ROLE` holder.
     */
    function defaultAdmin() external view returns (address);

    /**
     * @dev Returns a tuple of a `newAdmin` and an accept schedule.
     *
     * After the `schedule` passes, the `newAdmin` will be able to accept the {defaultAdmin} role
     * by calling {acceptDefaultAdminTransfer}, completing the role transfer.
     *
     * A zero value only in `acceptSchedule` indicates no pending admin transfer.
     *
     * NOTE: A zero address `newAdmin` means that {defaultAdmin} is being renounced.
     */
    function pendingDefaultAdmin() external view returns (address newAdmin, uint48 acceptSchedule);

    /**
     * @dev Returns the delay required to schedule the acceptance of a {defaultAdmin} transfer started.
     *
     * This delay will be added to the current timestamp when calling {beginDefaultAdminTransfer} to set
     * the acceptance schedule.
     *
     * NOTE: If a delay change has been scheduled, it will take effect as soon as the schedule passes, making this
     * function returns the new delay. See {changeDefaultAdminDelay}.
     */
    function defaultAdminDelay() external view returns (uint48);

    /**
     * @dev Returns a tuple of `newDelay` and an effect schedule.
     *
     * After the `schedule` passes, the `newDelay` will get into effect immediately for every
     * new {defaultAdmin} transfer started with {beginDefaultAdminTransfer}.
     *
     * A zero value only in `effectSchedule` indicates no pending delay change.
     *
     * NOTE: A zero value only for `newDelay` means that the next {defaultAdminDelay}
     * will be zero after the effect schedule.
     */
    function pendingDefaultAdminDelay() external view returns (uint48 newDelay, uint48 effectSchedule);

    /**
     * @dev Starts a {defaultAdmin} transfer by setting a {pendingDefaultAdmin} scheduled for acceptance
     * after the current timestamp plus a {defaultAdminDelay}.
     *
     * Requirements:
     *
     * - Only can be called by the current {defaultAdmin}.
     *
     * Emits a DefaultAdminRoleChangeStarted event.
     */
    function beginDefaultAdminTransfer(address newAdmin) external;

    /**
     * @dev Cancels a {defaultAdmin} transfer previously started with {beginDefaultAdminTransfer}.
     *
     * A {pendingDefaultAdmin} not yet accepted can also be cancelled with this function.
     *
     * Requirements:
     *
     * - Only can be called by the current {defaultAdmin}.
     *
     * May emit a DefaultAdminTransferCanceled event.
     */
    function cancelDefaultAdminTransfer() external;

    /**
     * @dev Completes a {defaultAdmin} transfer previously started with {beginDefaultAdminTransfer}.
     *
     * After calling the function:
     *
     * - `DEFAULT_ADMIN_ROLE` should be granted to the caller.
     * - `DEFAULT_ADMIN_ROLE` should be revoked from the previous holder.
     * - {pendingDefaultAdmin} should be reset to zero values.
     *
     * Requirements:
     *
     * - Only can be called by the {pendingDefaultAdmin}'s `newAdmin`.
     * - The {pendingDefaultAdmin}'s `acceptSchedule` should've passed.
     */
    function acceptDefaultAdminTransfer() external;

    /**
     * @dev Initiates a {defaultAdminDelay} update by setting a {pendingDefaultAdminDelay} scheduled for getting
     * into effect after the current timestamp plus a {defaultAdminDelay}.
     *
     * This function guarantees that any call to {beginDefaultAdminTransfer} done between the timestamp this
     * method is called and the {pendingDefaultAdminDelay} effect schedule will use the current {defaultAdminDelay}
     * set before calling.
     *
     * The {pendingDefaultAdminDelay}'s effect schedule is defined in a way that waiting until the schedule and then
     * calling {beginDefaultAdminTransfer} with the new delay will take at least the same as another {defaultAdmin}
     * complete transfer (including acceptance).
     *
     * The schedule is designed for two scenarios:
     *
     * - When the delay is changed for a larger one the schedule is `block.timestamp + newDelay` capped by
     * {defaultAdminDelayIncreaseWait}.
     * - When the delay is changed for a shorter one, the schedule is `block.timestamp + (current delay - new delay)`.
     *
     * A {pendingDefaultAdminDelay} that never got into effect will be canceled in favor of a new scheduled change.
     *
     * Requirements:
     *
     * - Only can be called by the current {defaultAdmin}.
     *
     * Emits a DefaultAdminDelayChangeScheduled event and may emit a DefaultAdminDelayChangeCanceled event.
     */
    function changeDefaultAdminDelay(uint48 newDelay) external;

    /**
     * @dev Cancels a scheduled {defaultAdminDelay} change.
     *
     * Requirements:
     *
     * - Only can be called by the current {defaultAdmin}.
     *
     * May emit a DefaultAdminDelayChangeCanceled event.
     */
    function rollbackDefaultAdminDelay() external;

    /**
     * @dev Maximum time in seconds for an increase to {defaultAdminDelay} (that is scheduled using {changeDefaultAdminDelay})
     * to take effect. Default to 5 days.
     *
     * When the {defaultAdminDelay} is scheduled to be increased, it goes into effect after the new delay has passed with
     * the purpose of giving enough time for reverting any accidental change (i.e. using milliseconds instead of seconds)
     * that may lock the contract. However, to avoid excessive schedules, the wait is capped by this function and it can
     * be overridden for a custom {defaultAdminDelay} increase scheduling.
     *
     * IMPORTANT: Make sure to add a reasonable amount of time while overriding this value, otherwise,
     * there's a risk of setting a high new delay that goes into effect almost immediately without the
     * possibility of human intervention in the case of an input error (eg. set milliseconds instead of seconds).
     */
    function defaultAdminDelayIncreaseWait() external view returns (uint48);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (access/IAccessControl.sol)

pragma solidity >=0.8.4;

/**
 * @dev External interface of AccessControl declared to support ERC-165 detection.
 */
interface IAccessControl {
    /**
     * @dev The `account` is missing a role.
     */
    error AccessControlUnauthorizedAccount(address account, bytes32 neededRole);

    /**
     * @dev The caller of a function is not the expected one.
     *
     * NOTE: Don't confuse with {AccessControlUnauthorizedAccount}.
     */
    error AccessControlBadConfirmation();

    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted to signal this.
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call. This account bears the admin role (for the granted role).
     * Expected in cases where the role was granted using the internal {AccessControl-_grantRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
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
     * - the caller must be `callerConfirmation`.
     */
    function renounceRole(bytes32 role, address callerConfirmation) external;
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC1271.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC1271.sol)

pragma solidity >=0.5.0;

/**
 * @dev Interface of the ERC-1271 standard signature validation method for
 * contracts as defined in https://eips.ethereum.org/EIPS/eip-1271[ERC-1271].
 */
interface IERC1271 {
    /**
     * @dev Should return whether the signature provided is valid for the provided data
     * @param hash      Hash of the data to be signed
     * @param signature Signature byte array associated with `hash`
     */
    function isValidSignature(bytes32 hash, bytes calldata signature) external view returns (bytes4 magicValue);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC20.sol)

pragma solidity >=0.4.16;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC5267.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC5267.sol)

pragma solidity >=0.4.16;

interface IERC5267 {
    /**
     * @dev MAY be emitted to signal that the domain could have changed.
     */
    event EIP712DomainChanged();

    /**
     * @dev returns the fields and values that describe the domain separator used by this contract for EIP-712
     * signature.
     */
    function eip712Domain()
        external
        view
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        );
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC5313.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC5313.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface for the Light Contract Ownership Standard.
 *
 * A standardized minimal interface required to identify an account that controls a contract
 */
interface IERC5313 {
    /**
     * @dev Gets the address of the owner.
     */
    function owner() external view returns (address);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC721.sol)

pragma solidity >=0.6.2;

import {IERC721} from "../token/ERC721/IERC721.sol";

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC721Receiver.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC721Receiver.sol)

pragma solidity >=0.5.0;

import {IERC721Receiver} from "../token/ERC721/IERC721Receiver.sol";

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC7913.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC7913.sol)

pragma solidity >=0.5.0;

/**
 * @dev Signature verifier interface.
 */
interface IERC7913SignatureVerifier {
    /**
     * @dev Verifies `signature` as a valid signature of `hash` by `key`.
     *
     * MUST return the bytes4 magic value IERC7913SignatureVerifier.verify.selector if the signature is valid.
     * SHOULD return 0xffffffff or revert if the signature is not valid.
     * SHOULD return 0xffffffff or revert if the key is empty
     */
    function verify(bytes calldata key, bytes32 hash, bytes calldata signature) external view returns (bytes4);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC1155/IERC1155.sol)

pragma solidity >=0.6.2;

import {IERC165} from "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC-1155 compliant contract, as defined in the
 * https://eips.ethereum.org/EIPS/eip-1155[ERC].
 */
interface IERC1155 is IERC165 {
    /**
     * @dev Emitted when `value` amount of tokens of type `id` are transferred from `from` to `to` by `operator`.
     */
    event TransferSingle(address indexed operator, address indexed from, address indexed to, uint256 id, uint256 value);

    /**
     * @dev Equivalent to multiple {TransferSingle} events, where `operator`, `from` and `to` are the same for all
     * transfers.
     */
    event TransferBatch(
        address indexed operator,
        address indexed from,
        address indexed to,
        uint256[] ids,
        uint256[] values
    );

    /**
     * @dev Emitted when `account` grants or revokes permission to `operator` to transfer their tokens, according to
     * `approved`.
     */
    event ApprovalForAll(address indexed account, address indexed operator, bool approved);

    /**
     * @dev Emitted when the URI for token type `id` changes to `value`, if it is a non-programmatic URI.
     *
     * If an {URI} event was emitted for `id`, the standard
     * https://eips.ethereum.org/EIPS/eip-1155#metadata-extensions[guarantees] that `value` will equal the value
     * returned by {IERC1155MetadataURI-uri}.
     */
    event URI(string value, uint256 indexed id);

    /**
     * @dev Returns the value of tokens of token type `id` owned by `account`.
     */
    function balanceOf(address account, uint256 id) external view returns (uint256);

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {balanceOf}.
     *
     * Requirements:
     *
     * - `accounts` and `ids` must have the same length.
     */
    function balanceOfBatch(
        address[] calldata accounts,
        uint256[] calldata ids
    ) external view returns (uint256[] memory);

    /**
     * @dev Grants or revokes permission to `operator` to transfer the caller's tokens, according to `approved`,
     *
     * Emits an {ApprovalForAll} event.
     *
     * Requirements:
     *
     * - `operator` cannot be the zero address.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns true if `operator` is approved to transfer ``account``'s tokens.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address account, address operator) external view returns (bool);

    /**
     * @dev Transfers a `value` amount of tokens of type `id` from `from` to `to`.
     *
     * WARNING: This function can potentially allow a reentrancy attack when transferring tokens
     * to an untrusted contract, when invoking {IERC1155Receiver-onERC1155Received} on the receiver.
     * Ensure to follow the checks-effects-interactions pattern and consider employing
     * reentrancy guards when interacting with untrusted contracts.
     *
     * Emits a {TransferSingle} event.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - If the caller is not `from`, it must have been approved to spend ``from``'s tokens via {setApprovalForAll}.
     * - `from` must have a balance of tokens of type `id` of at least `value` amount.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155Received} and return the
     * acceptance magic value.
     */
    function safeTransferFrom(address from, address to, uint256 id, uint256 value, bytes calldata data) external;

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {safeTransferFrom}.
     *
     * WARNING: This function can potentially allow a reentrancy attack when transferring tokens
     * to an untrusted contract, when invoking {IERC1155Receiver-onERC1155BatchReceived} on the receiver.
     * Ensure to follow the checks-effects-interactions pattern and consider employing
     * reentrancy guards when interacting with untrusted contracts.
     *
     * Emits either a {TransferSingle} or a {TransferBatch} event, depending on the length of the array arguments.
     *
     * Requirements:
     *
     * - `ids` and `values` must have the same length.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155BatchReceived} and return the
     * acceptance magic value.
     */
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[ERC-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC-20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also applies here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/IERC20.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC721/IERC721.sol)

pragma solidity >=0.6.2;

import {IERC165} from "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC-721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
     *   a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC-721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or
     *   {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
     *   a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC-721
     * or else they may be permanently lost. Usage of {safeTransferFrom} prevents loss, though the caller must
     * understand this adds an external call which potentially creates a reentrancy vulnerability.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the address zero.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC721/IERC721Receiver.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC721/IERC721Receiver.sol)

pragma solidity >=0.5.0;

/**
 * @title ERC-721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC-721 asset contracts.
 */
interface IERC721Receiver {
    /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be
     * reverted.
     *
     * The selector can be obtained in Solidity with `IERC721Receiver.onERC721Received.selector`.
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/Address.sol)

pragma solidity ^0.8.20;

import {Errors} from "./Errors.sol";
import {LowLevelCall} from "./LowLevelCall.sol";

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert Errors.InsufficientBalance(address(this).balance, amount);
        }
        if (LowLevelCall.callNoReturn(recipient, amount, "")) {
            // call successful, nothing to do
            return;
        } else if (LowLevelCall.returnDataSize() > 0) {
            LowLevelCall.bubbleRevert();
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {Errors.FailedCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert Errors.InsufficientBalance(address(this).balance, value);
        }
        bool success = LowLevelCall.callNoReturn(target, value, data);
        if (success && (LowLevelCall.returnDataSize() > 0 || target.code.length > 0)) {
            return LowLevelCall.returnData();
        } else if (success) {
            revert AddressEmptyCode(target);
        } else if (LowLevelCall.returnDataSize() > 0) {
            LowLevelCall.bubbleRevert();
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        bool success = LowLevelCall.staticcallNoReturn(target, data);
        if (success && (LowLevelCall.returnDataSize() > 0 || target.code.length > 0)) {
            return LowLevelCall.returnData();
        } else if (success) {
            revert AddressEmptyCode(target);
        } else if (LowLevelCall.returnDataSize() > 0) {
            LowLevelCall.bubbleRevert();
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        bool success = LowLevelCall.delegatecallNoReturn(target, data);
        if (success && (LowLevelCall.returnDataSize() > 0 || target.code.length > 0)) {
            return LowLevelCall.returnData();
        } else if (success) {
            revert AddressEmptyCode(target);
        } else if (LowLevelCall.returnDataSize() > 0) {
            LowLevelCall.bubbleRevert();
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {Errors.FailedCall}) in case
     * of an unsuccessful call.
     *
     * NOTE: This function is DEPRECATED and may be removed in the next major release.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        // only check if target is a contract if the call was successful and the return data is empty
        // otherwise we already know that it was a contract
        if (success && (returndata.length > 0 || target.code.length > 0)) {
            return returndata;
        } else if (success) {
            revert AddressEmptyCode(target);
        } else if (returndata.length > 0) {
            LowLevelCall.bubbleRevert(returndata);
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {Errors.FailedCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else if (returndata.length > 0) {
            LowLevelCall.bubbleRevert(returndata);
        } else {
            revert Errors.FailedCall();
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/Bytes.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/Bytes.sol)

pragma solidity ^0.8.24;

import {Math} from "./math/Math.sol";

/**
 * @dev Bytes operations.
 */
library Bytes {
    /**
     * @dev Forward search for `s` in `buffer`
     * * If `s` is present in the buffer, returns the index of the first instance
     * * If `s` is not present in the buffer, returns type(uint256).max
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf[Javascript's `Array.indexOf`]
     */
    function indexOf(bytes memory buffer, bytes1 s) internal pure returns (uint256) {
        return indexOf(buffer, s, 0);
    }

    /**
     * @dev Forward search for `s` in `buffer` starting at position `pos`
     * * If `s` is present in the buffer (at or after `pos`), returns the index of the next instance
     * * If `s` is not present in the buffer (at or after `pos`), returns type(uint256).max
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf[Javascript's `Array.indexOf`]
     */
    function indexOf(bytes memory buffer, bytes1 s, uint256 pos) internal pure returns (uint256) {
        uint256 length = buffer.length;
        for (uint256 i = pos; i < length; ++i) {
            if (bytes1(_unsafeReadBytesOffset(buffer, i)) == s) {
                return i;
            }
        }
        return type(uint256).max;
    }

    /**
     * @dev Backward search for `s` in `buffer`
     * * If `s` is present in the buffer, returns the index of the last instance
     * * If `s` is not present in the buffer, returns type(uint256).max
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/lastIndexOf[Javascript's `Array.lastIndexOf`]
     */
    function lastIndexOf(bytes memory buffer, bytes1 s) internal pure returns (uint256) {
        return lastIndexOf(buffer, s, type(uint256).max);
    }

    /**
     * @dev Backward search for `s` in `buffer` starting at position `pos`
     * * If `s` is present in the buffer (at or before `pos`), returns the index of the previous instance
     * * If `s` is not present in the buffer (at or before `pos`), returns type(uint256).max
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/lastIndexOf[Javascript's `Array.lastIndexOf`]
     */
    function lastIndexOf(bytes memory buffer, bytes1 s, uint256 pos) internal pure returns (uint256) {
        unchecked {
            uint256 length = buffer.length;
            for (uint256 i = Math.min(Math.saturatingAdd(pos, 1), length); i > 0; --i) {
                if (bytes1(_unsafeReadBytesOffset(buffer, i - 1)) == s) {
                    return i - 1;
                }
            }
            return type(uint256).max;
        }
    }

    /**
     * @dev Copies the content of `buffer`, from `start` (included) to the end of `buffer` into a new bytes object in
     * memory.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(bytes memory buffer, uint256 start) internal pure returns (bytes memory) {
        return slice(buffer, start, buffer.length);
    }

    /**
     * @dev Copies the content of `buffer`, from `start` (included) to `end` (excluded) into a new bytes object in
     * memory. The `end` argument is truncated to the length of the `buffer`.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(bytes memory buffer, uint256 start, uint256 end) internal pure returns (bytes memory) {
        // sanitize
        end = Math.min(end, buffer.length);
        start = Math.min(start, end);

        // allocate and copy
        bytes memory result = new bytes(end - start);
        assembly ("memory-safe") {
            mcopy(add(result, 0x20), add(add(buffer, 0x20), start), sub(end, start))
        }

        return result;
    }

    /**
     * @dev Moves the content of `buffer`, from `start` (included) to the end of `buffer` to the start of that buffer.
     *
     * NOTE: This function modifies the provided buffer in place. If you need to preserve the original buffer, use {slice} instead
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice[Javascript's `Array.splice`]
     */
    function splice(bytes memory buffer, uint256 start) internal pure returns (bytes memory) {
        return splice(buffer, start, buffer.length);
    }

    /**
     * @dev Moves the content of `buffer`, from `start` (included) to end (excluded) to the start of that buffer. The
     * `end` argument is truncated to the length of the `buffer`.
     *
     * NOTE: This function modifies the provided buffer in place. If you need to preserve the original buffer, use {slice} instead
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice[Javascript's `Array.splice`]
     */
    function splice(bytes memory buffer, uint256 start, uint256 end) internal pure returns (bytes memory) {
        // sanitize
        end = Math.min(end, buffer.length);
        start = Math.min(start, end);

        // allocate and copy
        assembly ("memory-safe") {
            mcopy(add(buffer, 0x20), add(add(buffer, 0x20), start), sub(end, start))
            mstore(buffer, sub(end, start))
        }

        return buffer;
    }

    /**
     * @dev Concatenate an array of bytes into a single bytes object.
     *
     * For fixed bytes types, we recommend using the solidity built-in `bytes.concat` or (equivalent)
     * `abi.encodePacked`.
     *
     * NOTE: this could be done in assembly with a single loop that expands starting at the FMP, but that would be
     * significantly less readable. It might be worth benchmarking the savings of the full-assembly approach.
     */
    function concat(bytes[] memory buffers) internal pure returns (bytes memory) {
        uint256 length = 0;
        for (uint256 i = 0; i < buffers.length; ++i) {
            length += buffers[i].length;
        }

        bytes memory result = new bytes(length);

        uint256 offset = 0x20;
        for (uint256 i = 0; i < buffers.length; ++i) {
            bytes memory input = buffers[i];
            assembly ("memory-safe") {
                mcopy(add(result, offset), add(input, 0x20), mload(input))
            }
            unchecked {
                offset += input.length;
            }
        }

        return result;
    }

    /**
     * @dev Returns true if the two byte buffers are equal.
     */
    function equal(bytes memory a, bytes memory b) internal pure returns (bool) {
        return a.length == b.length && keccak256(a) == keccak256(b);
    }

    /**
     * @dev Reverses the byte order of a bytes32 value, converting between little-endian and big-endian.
     * Inspired by https://graphics.stanford.edu/~seander/bithacks.html#ReverseParallel[Reverse Parallel]
     */
    function reverseBytes32(bytes32 value) internal pure returns (bytes32) {
        value = // swap bytes
            ((value >> 8) & 0x00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF) |
            ((value & 0x00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF) << 8);
        value = // swap 2-byte long pairs
            ((value >> 16) & 0x0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF) |
            ((value & 0x0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF) << 16);
        value = // swap 4-byte long pairs
            ((value >> 32) & 0x00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF) |
            ((value & 0x00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF) << 32);
        value = // swap 8-byte long pairs
            ((value >> 64) & 0x0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF) |
            ((value & 0x0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF) << 64);
        return (value >> 128) | (value << 128); // swap 16-byte long pairs
    }

    /// @dev Same as {reverseBytes32} but optimized for 128-bit values.
    function reverseBytes16(bytes16 value) internal pure returns (bytes16) {
        value = // swap bytes
            ((value & 0xFF00FF00FF00FF00FF00FF00FF00FF00) >> 8) |
            ((value & 0x00FF00FF00FF00FF00FF00FF00FF00FF) << 8);
        value = // swap 2-byte long pairs
            ((value & 0xFFFF0000FFFF0000FFFF0000FFFF0000) >> 16) |
            ((value & 0x0000FFFF0000FFFF0000FFFF0000FFFF) << 16);
        value = // swap 4-byte long pairs
            ((value & 0xFFFFFFFF00000000FFFFFFFF00000000) >> 32) |
            ((value & 0x00000000FFFFFFFF00000000FFFFFFFF) << 32);
        return (value >> 64) | (value << 64); // swap 8-byte long pairs
    }

    /// @dev Same as {reverseBytes32} but optimized for 64-bit values.
    function reverseBytes8(bytes8 value) internal pure returns (bytes8) {
        value = ((value & 0xFF00FF00FF00FF00) >> 8) | ((value & 0x00FF00FF00FF00FF) << 8); // swap bytes
        value = ((value & 0xFFFF0000FFFF0000) >> 16) | ((value & 0x0000FFFF0000FFFF) << 16); // swap 2-byte long pairs
        return (value >> 32) | (value << 32); // swap 4-byte long pairs
    }

    /// @dev Same as {reverseBytes32} but optimized for 32-bit values.
    function reverseBytes4(bytes4 value) internal pure returns (bytes4) {
        value = ((value & 0xFF00FF00) >> 8) | ((value & 0x00FF00FF) << 8); // swap bytes
        return (value >> 16) | (value << 16); // swap 2-byte long pairs
    }

    /// @dev Same as {reverseBytes32} but optimized for 16-bit values.
    function reverseBytes2(bytes2 value) internal pure returns (bytes2) {
        return (value >> 8) | (value << 8);
    }

    /**
     * @dev Counts the number of leading zero bits a bytes array. Returns `8 * buffer.length`
     * if the buffer is all zeros.
     */
    function clz(bytes memory buffer) internal pure returns (uint256) {
        for (uint256 i = 0; i < buffer.length; i += 0x20) {
            bytes32 chunk = _unsafeReadBytesOffset(buffer, i);
            if (chunk != bytes32(0)) {
                return Math.min(8 * i + Math.clz(uint256(chunk)), 8 * buffer.length);
            }
        }
        return 8 * buffer.length;
    }

    /**
     * @dev Reads a bytes32 from a bytes array without bounds checking.
     *
     * NOTE: making this function internal would mean it could be used with memory unsafe offset, and marking the
     * assembly block as such would prevent some optimizations.
     */
    function _unsafeReadBytesOffset(bytes memory buffer, uint256 offset) private pure returns (bytes32 value) {
        // This is not memory safe in the general case, but all calls to this private function are within bounds.
        assembly ("memory-safe") {
            value := mload(add(add(buffer, 0x20), offset))
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/cryptography/ECDSA.sol)

pragma solidity ^0.8.20;

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 */
library ECDSA {
    enum RecoverError {
        NoError,
        InvalidSignature,
        InvalidSignatureLength,
        InvalidSignatureS
    }

    /**
     * @dev The signature derives the `address(0)`.
     */
    error ECDSAInvalidSignature();

    /**
     * @dev The signature has an invalid length.
     */
    error ECDSAInvalidSignatureLength(uint256 length);

    /**
     * @dev The signature has an S value that is in the upper half order.
     */
    error ECDSAInvalidSignatureS(bytes32 s);

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with `signature` or an error. This will not
     * return address(0) without also returning an error description. Errors are documented using an enum (error type)
     * and a bytes32 providing additional information about the error.
     *
     * If no error is returned, then the address can be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * NOTE: This function only supports 65-byte signatures. ERC-2098 short signatures are rejected. This restriction
     * is DEPRECATED and will be removed in v6.0. Developers SHOULD NOT use signatures as unique identifiers; use hash
     * invalidation or nonces for replay protection.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     *
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     */
    function tryRecover(
        bytes32 hash,
        bytes memory signature
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            assembly ("memory-safe") {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength, bytes32(signature.length));
        }
    }

    /**
     * @dev Variant of {tryRecover} that takes a signature in calldata
     */
    function tryRecoverCalldata(
        bytes32 hash,
        bytes calldata signature
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, calldata slices would work here, but are
            // significantly more expensive (length check) than using calldataload in assembly.
            assembly ("memory-safe") {
                r := calldataload(signature.offset)
                s := calldataload(add(signature.offset, 0x20))
                v := byte(0, calldataload(add(signature.offset, 0x40)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength, bytes32(signature.length));
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * NOTE: This function only supports 65-byte signatures. ERC-2098 short signatures are rejected. This restriction
     * is DEPRECATED and will be removed in v6.0. Developers SHOULD NOT use signatures as unique identifiers; use hash
     * invalidation or nonces for replay protection.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, signature);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Variant of {recover} that takes a signature in calldata
     */
    function recoverCalldata(bytes32 hash, bytes calldata signature) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecoverCalldata(hash, signature);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[ERC-2098 short signatures]
     */
    function tryRecover(
        bytes32 hash,
        bytes32 r,
        bytes32 vs
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        unchecked {
            bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            // We do not check for an overflow here since the shift operation results in 0 or 1.
            uint8 v = uint8((uint256(vs) >> 255) + 27);
            return tryRecover(hash, v, r, s);
        }
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.
     */
    function recover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, r, vs);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function tryRecover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature
        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines
        // the valid range for s in (301): 0 < s < secp256k1n ÷ 2 + 1, and for v in (302): v ∈ {27, 28}. Most
        // signatures from current libraries generate a unique signature with an s-value in the lower half order.
        //
        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value
        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or
        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept
        // these malleable signatures as well.
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return (address(0), RecoverError.InvalidSignatureS, s);
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0), RecoverError.InvalidSignature, bytes32(0));
        }

        return (signer, RecoverError.NoError, bytes32(0));
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, v, r, s);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Parse a signature into its `v`, `r` and `s` components. Supports 65-byte and 64-byte (ERC-2098)
     * formats. Returns (0,0,0) for invalid signatures.
     *
     * For 64-byte signatures, `v` is automatically normalized to 27 or 28.
     * For 65-byte signatures, `v` is returned as-is and MUST already be 27 or 28 for use with ecrecover.
     *
     * Consider validating the result before use, or use {tryRecover}/{recover} which perform full validation.
     */
    function parse(bytes memory signature) internal pure returns (uint8 v, bytes32 r, bytes32 s) {
        assembly ("memory-safe") {
            // Check the signature length
            switch mload(signature)
            // - case 65: r,s,v signature (standard)
            case 65 {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            // - case 64: r,vs signature (cf https://eips.ethereum.org/EIPS/eip-2098)
            case 64 {
                let vs := mload(add(signature, 0x40))
                r := mload(add(signature, 0x20))
                s := and(vs, shr(1, not(0)))
                v := add(shr(255, vs), 27)
            }
            default {
                r := 0
                s := 0
                v := 0
            }
        }
    }

    /**
     * @dev Variant of {parse} that takes a signature in calldata
     */
    function parseCalldata(bytes calldata signature) internal pure returns (uint8 v, bytes32 r, bytes32 s) {
        assembly ("memory-safe") {
            // Check the signature length
            switch signature.length
            // - case 65: r,s,v signature (standard)
            case 65 {
                r := calldataload(signature.offset)
                s := calldataload(add(signature.offset, 0x20))
                v := byte(0, calldataload(add(signature.offset, 0x40)))
            }
            // - case 64: r,vs signature (cf https://eips.ethereum.org/EIPS/eip-2098)
            case 64 {
                let vs := calldataload(add(signature.offset, 0x20))
                r := calldataload(signature.offset)
                s := and(vs, shr(1, not(0)))
                v := add(shr(255, vs), 27)
            }
            default {
                r := 0
                s := 0
                v := 0
            }
        }
    }

    /**
     * @dev Optionally reverts with the corresponding custom error according to the `error` argument provided.
     */
    function _throwError(RecoverError error, bytes32 errorArg) private pure {
        if (error == RecoverError.NoError) {
            return; // no error: do nothing
        } else if (error == RecoverError.InvalidSignature) {
            revert ECDSAInvalidSignature();
        } else if (error == RecoverError.InvalidSignatureLength) {
            revert ECDSAInvalidSignatureLength(uint256(errorArg));
        } else if (error == RecoverError.InvalidSignatureS) {
            revert ECDSAInvalidSignatureS(errorArg);
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/cryptography/EIP712.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/cryptography/EIP712.sol)

pragma solidity ^0.8.24;

import {MessageHashUtils} from "./MessageHashUtils.sol";
import {ShortStrings, ShortString} from "../ShortStrings.sol";
import {IERC5267} from "../../interfaces/IERC5267.sol";

/**
 * @dev https://eips.ethereum.org/EIPS/eip-712[EIP-712] is a standard for hashing and signing of typed structured data.
 *
 * The encoding scheme specified in the EIP requires a domain separator and a hash of the typed structured data, whose
 * encoding is very generic and therefore its implementation in Solidity is not feasible, thus this contract
 * does not implement the encoding itself. Protocols need to implement the type-specific encoding they need in order to
 * produce the hash of their typed data using a combination of `abi.encode` and `keccak256`.
 *
 * This contract implements the EIP-712 domain separator ({_domainSeparatorV4}) that is used as part of the encoding
 * scheme, and the final step of the encoding to obtain the message digest that is then signed via ECDSA
 * ({_hashTypedDataV4}).
 *
 * The implementation of the domain separator was designed to be as efficient as possible while still properly updating
 * the chain id to protect against replay attacks on an eventual fork of the chain.
 *
 * NOTE: This contract implements the version of the encoding known as "v4", as implemented by the JSON RPC method
 * https://docs.metamask.io/guide/signing-data.html[`eth_signTypedDataV4` in MetaMask].
 *
 * NOTE: In the upgradeable version of this contract, the cached values will correspond to the address, and the domain
 * separator of the implementation contract. This will cause the {_domainSeparatorV4} function to always rebuild the
 * separator from the immutable values, which is cheaper than accessing a cached version in cold storage.
 *
 * @custom:oz-upgrades-unsafe-allow state-variable-immutable
 */
abstract contract EIP712 is IERC5267 {
    using ShortStrings for *;

    bytes32 private constant TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    // Cache the domain separator as an immutable value, but also store the chain id that it corresponds to, in order to
    // invalidate the cached domain separator if the chain id changes.
    bytes32 private immutable _cachedDomainSeparator;
    uint256 private immutable _cachedChainId;
    address private immutable _cachedThis;

    bytes32 private immutable _hashedName;
    bytes32 private immutable _hashedVersion;

    ShortString private immutable _name;
    ShortString private immutable _version;
    // slither-disable-next-line constable-states
    string private _nameFallback;
    // slither-disable-next-line constable-states
    string private _versionFallback;

    /**
     * @dev Initializes the domain separator and parameter caches.
     *
     * The meaning of `name` and `version` is specified in
     * https://eips.ethereum.org/EIPS/eip-712#definition-of-domainseparator[EIP-712]:
     *
     * - `name`: the user readable name of the signing domain, i.e. the name of the DApp or the protocol.
     * - `version`: the current major version of the signing domain.
     *
     * NOTE: These parameters cannot be changed except through a xref:learn::upgrading-smart-contracts.adoc[smart
     * contract upgrade].
     */
    constructor(string memory name, string memory version) {
        _name = name.toShortStringWithFallback(_nameFallback);
        _version = version.toShortStringWithFallback(_versionFallback);
        _hashedName = keccak256(bytes(name));
        _hashedVersion = keccak256(bytes(version));

        _cachedChainId = block.chainid;
        _cachedDomainSeparator = _buildDomainSeparator();
        _cachedThis = address(this);
    }

    /**
     * @dev Returns the domain separator for the current chain.
     */
    function _domainSeparatorV4() internal view returns (bytes32) {
        if (address(this) == _cachedThis && block.chainid == _cachedChainId) {
            return _cachedDomainSeparator;
        } else {
            return _buildDomainSeparator();
        }
    }

    function _buildDomainSeparator() private view returns (bytes32) {
        return keccak256(abi.encode(TYPE_HASH, _hashedName, _hashedVersion, block.chainid, address(this)));
    }

    /**
     * @dev Given an already https://eips.ethereum.org/EIPS/eip-712#definition-of-hashstruct[hashed struct], this
     * function returns the hash of the fully encoded EIP712 message for this domain.
     *
     * This hash can be used together with {ECDSA-recover} to obtain the signer of a message. For example:
     *
     * ```solidity
     * bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
     *     keccak256("Mail(address to,string contents)"),
     *     mailTo,
     *     keccak256(bytes(mailContents))
     * )));
     * address signer = ECDSA.recover(digest, signature);
     * ```
     */
    function _hashTypedDataV4(bytes32 structHash) internal view virtual returns (bytes32) {
        return MessageHashUtils.toTypedDataHash(_domainSeparatorV4(), structHash);
    }

    /// @inheritdoc IERC5267
    function eip712Domain()
        public
        view
        virtual
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        )
    {
        return (
            hex"0f", // 01111
            _EIP712Name(),
            _EIP712Version(),
            block.chainid,
            address(this),
            bytes32(0),
            new uint256[](0)
        );
    }

    /**
     * @dev The name parameter for the EIP712 domain.
     *
     * NOTE: By default this function reads _name which is an immutable value.
     * It only reads from storage if necessary (in case the value is too large to fit in a ShortString).
     */
    // solhint-disable-next-line func-name-mixedcase
    function _EIP712Name() internal view returns (string memory) {
        return _name.toStringWithFallback(_nameFallback);
    }

    /**
     * @dev The version parameter for the EIP712 domain.
     *
     * NOTE: By default this function reads _version which is an immutable value.
     * It only reads from storage if necessary (in case the value is too large to fit in a ShortString).
     */
    // solhint-disable-next-line func-name-mixedcase
    function _EIP712Version() internal view returns (string memory) {
        return _version.toStringWithFallback(_versionFallback);
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/cryptography/MessageHashUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/cryptography/MessageHashUtils.sol)

pragma solidity ^0.8.24;

import {Strings} from "../Strings.sol";

/**
 * @dev Signature message hash utilities for producing digests to be consumed by {ECDSA} recovery or signing.
 *
 * The library provides methods for generating a hash of a message that conforms to the
 * https://eips.ethereum.org/EIPS/eip-191[ERC-191] and https://eips.ethereum.org/EIPS/eip-712[EIP 712]
 * specifications.
 */
library MessageHashUtils {
    /**
     * @dev Returns the keccak256 digest of an ERC-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing a bytes32 `messageHash` with
     * `"\x19Ethereum Signed Message:\n32"` and hashing the result. It corresponds with the
     * hash signed when using the https://ethereum.org/en/developers/docs/apis/json-rpc/#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * NOTE: The `messageHash` parameter is intended to be the result of hashing a raw message with
     * keccak256, although any bytes32 value can be safely used because the final digest will
     * be re-hashed.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes32 messageHash) internal pure returns (bytes32 digest) {
        assembly ("memory-safe") {
            mstore(0x00, "\x19Ethereum Signed Message:\n32") // 32 is the bytes-length of messageHash
            mstore(0x1c, messageHash) // 0x1c (28) is the length of the prefix
            digest := keccak256(0x00, 0x3c) // 0x3c is the length of the prefix (0x1c) + messageHash (0x20)
        }
    }

    /**
     * @dev Returns the keccak256 digest of an ERC-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing an arbitrary `message` with
     * `"\x19Ethereum Signed Message:\n" + len(message)` and hashing the result. It corresponds with the
     * hash signed when using the https://ethereum.org/en/developers/docs/apis/json-rpc/#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes memory message) internal pure returns (bytes32) {
        return
            keccak256(bytes.concat("\x19Ethereum Signed Message:\n", bytes(Strings.toString(message.length)), message));
    }

    /**
     * @dev Returns the keccak256 digest of an ERC-191 signed data with version
     * `0x00` (data with intended validator).
     *
     * The digest is calculated by prefixing an arbitrary `data` with `"\x19\x00"` and the intended
     * `validator` address. Then hashing the result.
     *
     * See {ECDSA-recover}.
     */
    function toDataWithIntendedValidatorHash(address validator, bytes memory data) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(hex"19_00", validator, data));
    }

    /**
     * @dev Variant of {toDataWithIntendedValidatorHash-address-bytes} optimized for cases where `data` is a bytes32.
     */
    function toDataWithIntendedValidatorHash(
        address validator,
        bytes32 messageHash
    ) internal pure returns (bytes32 digest) {
        assembly ("memory-safe") {
            mstore(0x00, hex"19_00")
            mstore(0x02, shl(96, validator))
            mstore(0x16, messageHash)
            digest := keccak256(0x00, 0x36)
        }
    }

    /**
     * @dev Returns the keccak256 digest of an EIP-712 typed data (ERC-191 version `0x01`).
     *
     * The digest is calculated from a `domainSeparator` and a `structHash`, by prefixing them with
     * `\x19\x01` and hashing the result. It corresponds to the hash signed by the
     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`] JSON-RPC method as part of EIP-712.
     *
     * See {ECDSA-recover}.
     */
    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32 digest) {
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            mstore(ptr, hex"19_01")
            mstore(add(ptr, 0x02), domainSeparator)
            mstore(add(ptr, 0x22), structHash)
            digest := keccak256(ptr, 0x42)
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/cryptography/SignatureChecker.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/cryptography/SignatureChecker.sol)

pragma solidity ^0.8.24;

import {ECDSA} from "./ECDSA.sol";
import {IERC1271} from "../../interfaces/IERC1271.sol";
import {IERC7913SignatureVerifier} from "../../interfaces/IERC7913.sol";
import {Bytes} from "../Bytes.sol";

/**
 * @dev Signature verification helper that can be used instead of `ECDSA.recover` to seamlessly support:
 *
 * * ECDSA signatures from externally owned accounts (EOAs)
 * * ERC-1271 signatures from smart contract wallets like Argent and Safe Wallet (previously Gnosis Safe)
 * * ERC-7913 signatures from keys that do not have an Ethereum address of their own
 *
 * See https://eips.ethereum.org/EIPS/eip-1271[ERC-1271] and https://eips.ethereum.org/EIPS/eip-7913[ERC-7913].
 */
library SignatureChecker {
    using Bytes for bytes;

    /**
     * @dev Checks if a signature is valid for a given signer and data hash. If the signer has code, the
     * signature is validated against it using ERC-1271, otherwise it's validated using `ECDSA.recover`.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     *
     * NOTE: For an extended version of this function that supports ERC-7913 signatures, see {isValidSignatureNow-bytes-bytes32-bytes-}.
     */
    function isValidSignatureNow(address signer, bytes32 hash, bytes memory signature) internal view returns (bool) {
        if (signer.code.length == 0) {
            (address recovered, ECDSA.RecoverError err, ) = ECDSA.tryRecover(hash, signature);
            return err == ECDSA.RecoverError.NoError && recovered == signer;
        } else {
            return isValidERC1271SignatureNow(signer, hash, signature);
        }
    }

    /**
     * @dev Variant of {isValidSignatureNow} that takes a signature in calldata
     */
    function isValidSignatureNowCalldata(
        address signer,
        bytes32 hash,
        bytes calldata signature
    ) internal view returns (bool) {
        if (signer.code.length == 0) {
            (address recovered, ECDSA.RecoverError err, ) = ECDSA.tryRecoverCalldata(hash, signature);
            return err == ECDSA.RecoverError.NoError && recovered == signer;
        } else {
            return isValidERC1271SignatureNow(signer, hash, signature);
        }
    }

    /**
     * @dev Checks if a signature is valid for a given signer and data hash. The signature is validated
     * against the signer smart contract using ERC-1271.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidERC1271SignatureNow(
        address signer,
        bytes32 hash,
        bytes memory signature
    ) internal view returns (bool result) {
        bytes4 selector = IERC1271.isValidSignature.selector;
        uint256 length = signature.length;

        assembly ("memory-safe") {
            // Encoded calldata is :
            // [ 0x00 - 0x03 ] <selector>
            // [ 0x04 - 0x23 ] <hash>
            // [ 0x24 - 0x44 ] <signature offset> (0x40)
            // [ 0x44 - 0x64 ] <signature length>
            // [ 0x64 - ...  ] <signature data>
            let ptr := mload(0x40)
            mstore(ptr, selector)
            mstore(add(ptr, 0x04), hash)
            mstore(add(ptr, 0x24), 0x40)
            mcopy(add(ptr, 0x44), signature, add(length, 0x20))

            let success := staticcall(gas(), signer, ptr, add(length, 0x64), 0x00, 0x20)
            result := and(success, and(gt(returndatasize(), 0x1f), eq(mload(0x00), selector)))
        }
    }

    /**
     * @dev Verifies a signature for a given ERC-7913 signer and hash.
     *
     * The signer is a `bytes` object that is the concatenation of an address and optionally a key:
     * `verifier || key`. A signer must be at least 20 bytes long.
     *
     * Verification is done as follows:
     *
     * * If `signer.length < 20`: verification fails
     * * If `signer.length == 20`: verification is done using {isValidSignatureNow}
     * * Otherwise: verification is done using {IERC7913SignatureVerifier}
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidSignatureNow(
        bytes memory signer,
        bytes32 hash,
        bytes memory signature
    ) internal view returns (bool) {
        if (signer.length < 20) {
            return false;
        } else if (signer.length == 20) {
            return isValidSignatureNow(address(bytes20(signer)), hash, signature);
        } else {
            (bool success, bytes memory result) = address(bytes20(signer)).staticcall(
                abi.encodeCall(IERC7913SignatureVerifier.verify, (signer.slice(20), hash, signature))
            );
            return (success &&
                result.length >= 32 &&
                abi.decode(result, (bytes32)) == bytes32(IERC7913SignatureVerifier.verify.selector));
        }
    }

    /**
     * @dev Verifies multiple ERC-7913 `signatures` for a given `hash` using a set of `signers`.
     * Returns `false` if the number of signers and signatures is not the same.
     *
     * The signers should be ordered by their `keccak256` hash to ensure efficient duplication check. Unordered
     * signers are supported, but the uniqueness check will be more expensive.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function areValidSignaturesNow(
        bytes32 hash,
        bytes[] memory signers,
        bytes[] memory signatures
    ) internal view returns (bool) {
        if (signers.length != signatures.length) return false;

        bytes32 lastId = bytes32(0);

        for (uint256 i = 0; i < signers.length; ++i) {
            bytes memory signer = signers[i];

            // If one of the signatures is invalid, reject the batch
            if (!isValidSignatureNow(signer, hash, signatures[i])) return false;

            bytes32 id = keccak256(signer);
            // If the current signer ID is greater than all previous IDs, then this is a new signer.
            if (lastId < id) {
                lastId = id;
            } else {
                // If this signer id is not greater than all the previous ones, verify that it is not a duplicate of a previous one
                // This loop is never executed if the signers are ordered by id.
                for (uint256 j = 0; j < i; ++j) {
                    if (id == keccak256(signers[j])) return false;
                }
            }
        }

        return true;
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/Errors.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Errors.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of common custom errors used in multiple contracts
 *
 * IMPORTANT: Backwards compatibility is not guaranteed in future versions of the library.
 * It is recommended to avoid relying on the error API for critical functionality.
 *
 * _Available since v5.1._
 */
library Errors {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error InsufficientBalance(uint256 balance, uint256 needed);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedCall();

    /**
     * @dev The deployment failed.
     */
    error FailedDeployment();

    /**
     * @dev A necessary precompile is missing.
     */
    error MissingPrecompile(address);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/introspection/ERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "./IERC165.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC-165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165 is IERC165 {
    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (utils/introspection/IERC165.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/LowLevelCall.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/LowLevelCall.sol)

pragma solidity ^0.8.20;

/**
 * @dev Library of low level call functions that implement different calling strategies to deal with the return data.
 *
 * WARNING: Using this library requires an advanced understanding of Solidity and how the EVM works. It is recommended
 * to use the {Address} library instead.
 */
library LowLevelCall {
    /// @dev Performs a Solidity function call using a low level `call` and ignoring the return data.
    function callNoReturn(address target, bytes memory data) internal returns (bool success) {
        return callNoReturn(target, 0, data);
    }

    /// @dev Same as {callNoReturn}, but allows to specify the value to be sent in the call.
    function callNoReturn(address target, uint256 value, bytes memory data) internal returns (bool success) {
        assembly ("memory-safe") {
            success := call(gas(), target, value, add(data, 0x20), mload(data), 0x00, 0x00)
        }
    }

    /// @dev Performs a Solidity function call using a low level `call` and returns the first 64 bytes of the result
    /// in the scratch space of memory. Useful for functions that return a tuple of single-word values.
    ///
    /// WARNING: Do not assume that the results are zero if `success` is false. Memory can be already allocated
    /// and this function doesn't zero it out.
    function callReturn64Bytes(
        address target,
        bytes memory data
    ) internal returns (bool success, bytes32 result1, bytes32 result2) {
        return callReturn64Bytes(target, 0, data);
    }

    /// @dev Same as {callReturnBytes32Pair}, but allows to specify the value to be sent in the call.
    function callReturn64Bytes(
        address target,
        uint256 value,
        bytes memory data
    ) internal returns (bool success, bytes32 result1, bytes32 result2) {
        assembly ("memory-safe") {
            success := call(gas(), target, value, add(data, 0x20), mload(data), 0x00, 0x40)
            result1 := mload(0x00)
            result2 := mload(0x20)
        }
    }

    /// @dev Performs a Solidity function call using a low level `staticcall` and ignoring the return data.
    function staticcallNoReturn(address target, bytes memory data) internal view returns (bool success) {
        assembly ("memory-safe") {
            success := staticcall(gas(), target, add(data, 0x20), mload(data), 0x00, 0x00)
        }
    }

    /// @dev Performs a Solidity function call using a low level `staticcall` and returns the first 64 bytes of the result
    /// in the scratch space of memory. Useful for functions that return a tuple of single-word values.
    ///
    /// WARNING: Do not assume that the results are zero if `success` is false. Memory can be already allocated
    /// and this function doesn't zero it out.
    function staticcallReturn64Bytes(
        address target,
        bytes memory data
    ) internal view returns (bool success, bytes32 result1, bytes32 result2) {
        assembly ("memory-safe") {
            success := staticcall(gas(), target, add(data, 0x20), mload(data), 0x00, 0x40)
            result1 := mload(0x00)
            result2 := mload(0x20)
        }
    }

    /// @dev Performs a Solidity function call using a low level `delegatecall` and ignoring the return data.
    function delegatecallNoReturn(address target, bytes memory data) internal returns (bool success) {
        assembly ("memory-safe") {
            success := delegatecall(gas(), target, add(data, 0x20), mload(data), 0x00, 0x00)
        }
    }

    /// @dev Performs a Solidity function call using a low level `delegatecall` and returns the first 64 bytes of the result
    /// in the scratch space of memory. Useful for functions that return a tuple of single-word values.
    ///
    /// WARNING: Do not assume that the results are zero if `success` is false. Memory can be already allocated
    /// and this function doesn't zero it out.
    function delegatecallReturn64Bytes(
        address target,
        bytes memory data
    ) internal returns (bool success, bytes32 result1, bytes32 result2) {
        assembly ("memory-safe") {
            success := delegatecall(gas(), target, add(data, 0x20), mload(data), 0x00, 0x40)
            result1 := mload(0x00)
            result2 := mload(0x20)
        }
    }

    /// @dev Returns the size of the return data buffer.
    function returnDataSize() internal pure returns (uint256 size) {
        assembly ("memory-safe") {
            size := returndatasize()
        }
    }

    /// @dev Returns a buffer containing the return data from the last call.
    function returnData() internal pure returns (bytes memory result) {
        assembly ("memory-safe") {
            result := mload(0x40)
            mstore(result, returndatasize())
            returndatacopy(add(result, 0x20), 0x00, returndatasize())
            mstore(0x40, add(result, add(0x20, returndatasize())))
        }
    }

    /// @dev Revert with the return data from the last call.
    function bubbleRevert() internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            returndatacopy(fmp, 0x00, returndatasize())
            revert(fmp, returndatasize())
        }
    }

    function bubbleRevert(bytes memory returndata) internal pure {
        assembly ("memory-safe") {
            revert(add(returndata, 0x20), mload(returndata))
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

import {Panic} from "../Panic.sol";
import {SafeCast} from "./SafeCast.sol";

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Return the 512-bit addition of two uint256.
     *
     * The result is stored in two 256 variables such that sum = high * 2²⁵⁶ + low.
     */
    function add512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        assembly ("memory-safe") {
            low := add(a, b)
            high := lt(low, a)
        }
    }

    /**
     * @dev Return the 512-bit multiplication of two uint256.
     *
     * The result is stored in two 256 variables such that product = high * 2²⁵⁶ + low.
     */
    function mul512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        // 512-bit multiply [high low] = x * y. Compute the product mod 2²⁵⁶ and mod 2²⁵⁶ - 1, then use
        // the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
        // variables such that product = high * 2²⁵⁶ + low.
        assembly ("memory-safe") {
            let mm := mulmod(a, b, not(0))
            low := mul(a, b)
            high := sub(sub(mm, low), lt(mm, low))
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, with a success flag (no overflow).
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a + b;
            success = c >= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with a success flag (no overflow).
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a - b;
            success = c <= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with a success flag (no overflow).
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a * b;
            assembly ("memory-safe") {
                // Only true when the multiplication doesn't overflow
                // (c / a == b) || (a == 0)
                success := or(eq(div(c, a), b), iszero(a))
            }
            // equivalent to: success ? c : 0
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a success flag (no division by zero).
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `DIV` opcode returns zero when the denominator is 0.
                result := div(a, b)
            }
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a success flag (no division by zero).
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `MOD` opcode returns zero when the denominator is 0.
                result := mod(a, b)
            }
        }
    }

    /**
     * @dev Unsigned saturating addition, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryAdd(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Unsigned saturating subtraction, bounds to zero instead of overflowing.
     */
    function saturatingSub(uint256 a, uint256 b) internal pure returns (uint256) {
        (, uint256 result) = trySub(a, b);
        return result;
    }

    /**
     * @dev Unsigned saturating multiplication, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingMul(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryMul(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Branchless ternary evaluation for `condition ? a : b`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `condition ? a : b`) to only compute
     * one branch when needed, making this function more expensive.
     */
    function ternary(bool condition, uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            // branchless ternary works because:
            // b ^ (a ^ b) == a
            // b ^ 0 == b
            return b ^ ((a ^ b) * SafeCast.toUint(condition));
        }
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a > b, a, b);
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a < b, a, b);
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }

        // The following calculation ensures accurate ceiling division without overflow.
        // Since a is non-zero, (a - 1) / b will not overflow.
        // The largest possible result occurs when (a - 1) / b is type(uint256).max,
        // but the largest value we can obtain is type(uint256).max - 1, which happens
        // when a = type(uint256).max and b = 1.
        unchecked {
            return SafeCast.toUint(a > 0) * ((a - 1) / b + 1);
        }
    }

    /**
     * @dev Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     *
     * Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);

            // Handle non-overflow cases, 256 by 256 division.
            if (high == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return low / denominator;
            }

            // Make sure the result is less than 2²⁵⁶. Also prevents denominator == 0.
            if (denominator <= high) {
                Panic.panic(ternary(denominator == 0, Panic.DIVISION_BY_ZERO, Panic.UNDER_OVERFLOW));
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [high low].
            uint256 remainder;
            assembly ("memory-safe") {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                high := sub(high, gt(remainder, low))
                low := sub(low, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly ("memory-safe") {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [high low] by twos.
                low := div(low, twos)

                // Flip twos such that it is 2²⁵⁶ / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from high into low.
            low |= high * twos;

            // Invert denominator mod 2²⁵⁶. Now that denominator is an odd number, it has an inverse modulo 2²⁵⁶ such
            // that denominator * inv ≡ 1 mod 2²⁵⁶. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv ≡ 1 mod 2⁴.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2¹⁶
            inverse *= 2 - denominator * inverse; // inverse mod 2³²
            inverse *= 2 - denominator * inverse; // inverse mod 2⁶⁴
            inverse *= 2 - denominator * inverse; // inverse mod 2¹²⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2²⁵⁶

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2²⁵⁶. Since the preconditions guarantee that the outcome is
            // less than 2²⁵⁶, this is the final result. We don't need to compute the high bits of the result and high
            // is no longer required.
            result = low * inverse;
            return result;
        }
    }

    /**
     * @dev Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        return mulDiv(x, y, denominator) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0);
    }

    /**
     * @dev Calculates floor(x * y >> n) with full precision. Throws if result overflows a uint256.
     */
    function mulShr(uint256 x, uint256 y, uint8 n) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);
            if (high >= 1 << n) {
                Panic.panic(Panic.UNDER_OVERFLOW);
            }
            return (high << (256 - n)) | (low >> n);
        }
    }

    /**
     * @dev Calculates x * y >> n with full precision, following the selected rounding direction.
     */
    function mulShr(uint256 x, uint256 y, uint8 n, Rounding rounding) internal pure returns (uint256) {
        return mulShr(x, y, n) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, 1 << n) > 0);
    }

    /**
     * @dev Calculate the modular multiplicative inverse of a number in Z/nZ.
     *
     * If n is a prime, then Z/nZ is a field. In that case all elements are inversible, except 0.
     * If n is not a prime, then Z/nZ is not a field, and some elements might not be inversible.
     *
     * If the input value is not inversible, 0 is returned.
     *
     * NOTE: If you know for sure that n is (big) a prime, it may be cheaper to use Fermat's little theorem and get the
     * inverse using `Math.modExp(a, n - 2, n)`. See {invModPrime}.
     */
    function invMod(uint256 a, uint256 n) internal pure returns (uint256) {
        unchecked {
            if (n == 0) return 0;

            // The inverse modulo is calculated using the Extended Euclidean Algorithm (iterative version)
            // Used to compute integers x and y such that: ax + ny = gcd(a, n).
            // When the gcd is 1, then the inverse of a modulo n exists and it's x.
            // ax + ny = 1
            // ax = 1 + (-y)n
            // ax ≡ 1 (mod n) # x is the inverse of a modulo n

            // If the remainder is 0 the gcd is n right away.
            uint256 remainder = a % n;
            uint256 gcd = n;

            // Therefore the initial coefficients are:
            // ax + ny = gcd(a, n) = n
            // 0a + 1n = n
            int256 x = 0;
            int256 y = 1;

            while (remainder != 0) {
                uint256 quotient = gcd / remainder;

                (gcd, remainder) = (
                    // The old remainder is the next gcd to try.
                    remainder,
                    // Compute the next remainder.
                    // Can't overflow given that (a % gcd) * (gcd // (a % gcd)) <= gcd
                    // where gcd is at most n (capped to type(uint256).max)
                    gcd - remainder * quotient
                );

                (x, y) = (
                    // Increment the coefficient of a.
                    y,
                    // Decrement the coefficient of n.
                    // Can overflow, but the result is casted to uint256 so that the
                    // next value of y is "wrapped around" to a value between 0 and n - 1.
                    x - y * int256(quotient)
                );
            }

            if (gcd != 1) return 0; // No inverse exists.
            return ternary(x < 0, n - uint256(-x), uint256(x)); // Wrap the result if it's negative.
        }
    }

    /**
     * @dev Variant of {invMod}. More efficient, but only works if `p` is known to be a prime greater than `2`.
     *
     * From https://en.wikipedia.org/wiki/Fermat%27s_little_theorem[Fermat's little theorem], we know that if p is
     * prime, then `a**(p-1) ≡ 1 mod p`. As a consequence, we have `a * a**(p-2) ≡ 1 mod p`, which means that
     * `a**(p-2)` is the modular multiplicative inverse of a in Fp.
     *
     * NOTE: this function does NOT check that `p` is a prime greater than `2`.
     */
    function invModPrime(uint256 a, uint256 p) internal view returns (uint256) {
        unchecked {
            return Math.modExp(a, p - 2, p);
        }
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m)
     *
     * Requirements:
     * - modulus can't be zero
     * - underlying staticcall to precompile must succeed
     *
     * IMPORTANT: The result is only valid if the underlying call succeeds. When using this function, make
     * sure the chain you're using it on supports the precompiled contract for modular exponentiation
     * at address 0x05 as specified in https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise,
     * the underlying function will succeed given the lack of a revert, but the result may be incorrectly
     * interpreted as 0.
     */
    function modExp(uint256 b, uint256 e, uint256 m) internal view returns (uint256) {
        (bool success, uint256 result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m).
     * It includes a success flag indicating if the operation succeeded. Operation will be marked as failed if trying
     * to operate modulo 0 or if the underlying precompile reverted.
     *
     * IMPORTANT: The result is only valid if the success flag is true. When using this function, make sure the chain
     * you're using it on supports the precompiled contract for modular exponentiation at address 0x05 as specified in
     * https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise, the underlying function will succeed given the lack
     * of a revert, but the result may be incorrectly interpreted as 0.
     */
    function tryModExp(uint256 b, uint256 e, uint256 m) internal view returns (bool success, uint256 result) {
        if (m == 0) return (false, 0);
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            // | Offset    | Content    | Content (Hex)                                                      |
            // |-----------|------------|--------------------------------------------------------------------|
            // | 0x00:0x1f | size of b  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x20:0x3f | size of e  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x40:0x5f | size of m  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x60:0x7f | value of b | 0x<.............................................................b> |
            // | 0x80:0x9f | value of e | 0x<.............................................................e> |
            // | 0xa0:0xbf | value of m | 0x<.............................................................m> |
            mstore(ptr, 0x20)
            mstore(add(ptr, 0x20), 0x20)
            mstore(add(ptr, 0x40), 0x20)
            mstore(add(ptr, 0x60), b)
            mstore(add(ptr, 0x80), e)
            mstore(add(ptr, 0xa0), m)

            // Given the result < m, it's guaranteed to fit in 32 bytes,
            // so we can use the memory scratch space located at offset 0.
            success := staticcall(gas(), 0x05, ptr, 0xc0, 0x00, 0x20)
            result := mload(0x00)
        }
    }

    /**
     * @dev Variant of {modExp} that supports inputs of arbitrary length.
     */
    function modExp(bytes memory b, bytes memory e, bytes memory m) internal view returns (bytes memory) {
        (bool success, bytes memory result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Variant of {tryModExp} that supports inputs of arbitrary length.
     */
    function tryModExp(
        bytes memory b,
        bytes memory e,
        bytes memory m
    ) internal view returns (bool success, bytes memory result) {
        if (_zeroBytes(m)) return (false, new bytes(0));

        uint256 mLen = m.length;

        // Encode call args in result and move the free memory pointer
        result = abi.encodePacked(b.length, e.length, mLen, b, e, m);

        assembly ("memory-safe") {
            let dataPtr := add(result, 0x20)
            // Write result on top of args to avoid allocating extra memory.
            success := staticcall(gas(), 0x05, dataPtr, mload(result), dataPtr, mLen)
            // Overwrite the length.
            // result.length > returndatasize() is guaranteed because returndatasize() == m.length
            mstore(result, mLen)
            // Set the memory pointer after the returned data.
            mstore(0x40, add(dataPtr, mLen))
        }
    }

    /**
     * @dev Returns whether the provided byte array is zero.
     */
    function _zeroBytes(bytes memory byteArray) private pure returns (bool) {
        for (uint256 i = 0; i < byteArray.length; ++i) {
            if (byteArray[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * This method is based on Newton's method for computing square roots; the algorithm is restricted to only
     * using integer operations.
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        unchecked {
            // Take care of easy edge cases when a == 0 or a == 1
            if (a <= 1) {
                return a;
            }

            // In this function, we use Newton's method to get a root of `f(x) := x² - a`. It involves building a
            // sequence x_n that converges toward sqrt(a). For each iteration x_n, we also define the error between
            // the current value as `ε_n = | x_n - sqrt(a) |`.
            //
            // For our first estimation, we consider `e` the smallest power of 2 which is bigger than the square root
            // of the target. (i.e. `2**(e-1) ≤ sqrt(a) < 2**e`). We know that `e ≤ 128` because `(2¹²⁸)² = 2²⁵⁶` is
            // bigger than any uint256.
            //
            // By noticing that
            // `2**(e-1) ≤ sqrt(a) < 2**e → (2**(e-1))² ≤ a < (2**e)² → 2**(2*e-2) ≤ a < 2**(2*e)`
            // we can deduce that `e - 1` is `log2(a) / 2`. We can thus compute `x_n = 2**(e-1)` using a method similar
            // to the msb function.
            uint256 aa = a;
            uint256 xn = 1;

            if (aa >= (1 << 128)) {
                aa >>= 128;
                xn <<= 64;
            }
            if (aa >= (1 << 64)) {
                aa >>= 64;
                xn <<= 32;
            }
            if (aa >= (1 << 32)) {
                aa >>= 32;
                xn <<= 16;
            }
            if (aa >= (1 << 16)) {
                aa >>= 16;
                xn <<= 8;
            }
            if (aa >= (1 << 8)) {
                aa >>= 8;
                xn <<= 4;
            }
            if (aa >= (1 << 4)) {
                aa >>= 4;
                xn <<= 2;
            }
            if (aa >= (1 << 2)) {
                xn <<= 1;
            }

            // We now have x_n such that `x_n = 2**(e-1) ≤ sqrt(a) < 2**e = 2 * x_n`. This implies ε_n ≤ 2**(e-1).
            //
            // We can refine our estimation by noticing that the middle of that interval minimizes the error.
            // If we move x_n to equal 2**(e-1) + 2**(e-2), then we reduce the error to ε_n ≤ 2**(e-2).
            // This is going to be our x_0 (and ε_0)
            xn = (3 * xn) >> 1; // ε_0 := | x_0 - sqrt(a) | ≤ 2**(e-2)

            // From here, Newton's method give us:
            // x_{n+1} = (x_n + a / x_n) / 2
            //
            // One should note that:
            // x_{n+1}² - a = ((x_n + a / x_n) / 2)² - a
            //              = ((x_n² + a) / (2 * x_n))² - a
            //              = (x_n⁴ + 2 * a * x_n² + a²) / (4 * x_n²) - a
            //              = (x_n⁴ + 2 * a * x_n² + a² - 4 * a * x_n²) / (4 * x_n²)
            //              = (x_n⁴ - 2 * a * x_n² + a²) / (4 * x_n²)
            //              = (x_n² - a)² / (2 * x_n)²
            //              = ((x_n² - a) / (2 * x_n))²
            //              ≥ 0
            // Which proves that for all n ≥ 1, sqrt(a) ≤ x_n
            //
            // This gives us the proof of quadratic convergence of the sequence:
            // ε_{n+1} = | x_{n+1} - sqrt(a) |
            //         = | (x_n + a / x_n) / 2 - sqrt(a) |
            //         = | (x_n² + a - 2*x_n*sqrt(a)) / (2 * x_n) |
            //         = | (x_n - sqrt(a))² / (2 * x_n) |
            //         = | ε_n² / (2 * x_n) |
            //         = ε_n² / | (2 * x_n) |
            //
            // For the first iteration, we have a special case where x_0 is known:
            // ε_1 = ε_0² / | (2 * x_0) |
            //     ≤ (2**(e-2))² / (2 * (2**(e-1) + 2**(e-2)))
            //     ≤ 2**(2*e-4) / (3 * 2**(e-1))
            //     ≤ 2**(e-3) / 3
            //     ≤ 2**(e-3-log2(3))
            //     ≤ 2**(e-4.5)
            //
            // For the following iterations, we use the fact that, 2**(e-1) ≤ sqrt(a) ≤ x_n:
            // ε_{n+1} = ε_n² / | (2 * x_n) |
            //         ≤ (2**(e-k))² / (2 * 2**(e-1))
            //         ≤ 2**(2*e-2*k) / 2**e
            //         ≤ 2**(e-2*k)
            xn = (xn + a / xn) >> 1; // ε_1 := | x_1 - sqrt(a) | ≤ 2**(e-4.5)  -- special case, see above
            xn = (xn + a / xn) >> 1; // ε_2 := | x_2 - sqrt(a) | ≤ 2**(e-9)    -- general case with k = 4.5
            xn = (xn + a / xn) >> 1; // ε_3 := | x_3 - sqrt(a) | ≤ 2**(e-18)   -- general case with k = 9
            xn = (xn + a / xn) >> 1; // ε_4 := | x_4 - sqrt(a) | ≤ 2**(e-36)   -- general case with k = 18
            xn = (xn + a / xn) >> 1; // ε_5 := | x_5 - sqrt(a) | ≤ 2**(e-72)   -- general case with k = 36
            xn = (xn + a / xn) >> 1; // ε_6 := | x_6 - sqrt(a) | ≤ 2**(e-144)  -- general case with k = 72

            // Because e ≤ 128 (as discussed during the first estimation phase), we know have reached a precision
            // ε_6 ≤ 2**(e-144) < 1. Given we're operating on integers, then we can ensure that xn is now either
            // sqrt(a) or sqrt(a) + 1.
            return xn - SafeCast.toUint(xn > a / xn);
        }
    }

    /**
     * @dev Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && result * result < a);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // If upper 8 bits of 16-bit half set, add 8 to result
        r |= SafeCast.toUint((x >> r) > 0xff) << 3;
        // If upper 4 bits of 8-bit half set, add 4 to result
        r |= SafeCast.toUint((x >> r) > 0xf) << 2;

        // Shifts value right by the current result and use it as an index into this lookup table:
        //
        // | x (4 bits) |  index  | table[index] = MSB position |
        // |------------|---------|-----------------------------|
        // |    0000    |    0    |        table[0] = 0         |
        // |    0001    |    1    |        table[1] = 0         |
        // |    0010    |    2    |        table[2] = 1         |
        // |    0011    |    3    |        table[3] = 1         |
        // |    0100    |    4    |        table[4] = 2         |
        // |    0101    |    5    |        table[5] = 2         |
        // |    0110    |    6    |        table[6] = 2         |
        // |    0111    |    7    |        table[7] = 2         |
        // |    1000    |    8    |        table[8] = 3         |
        // |    1001    |    9    |        table[9] = 3         |
        // |    1010    |   10    |        table[10] = 3        |
        // |    1011    |   11    |        table[11] = 3        |
        // |    1100    |   12    |        table[12] = 3        |
        // |    1101    |   13    |        table[13] = 3        |
        // |    1110    |   14    |        table[14] = 3        |
        // |    1111    |   15    |        table[15] = 3        |
        //
        // The lookup table is represented as a 32-byte value with the MSB positions for 0-15 in the last 16 bytes.
        assembly ("memory-safe") {
            r := or(r, byte(shr(r, x), 0x0000010102020202030303030303030300000000000000000000000000000000))
        }
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << result < value);
        }
    }

    /**
     * @dev Return the log in base 10 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 10 ** result < value);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // Add 1 if upper 8 bits of 16-bit half set, and divide accumulated result by 8
        return (r >> 3) | SafeCast.toUint((x >> r) > 0xff);
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << (result << 3) < value);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }

    /**
     * @dev Counts the number of leading zero bits in a uint256.
     */
    function clz(uint256 x) internal pure returns (uint256) {
        return ternary(x == 0, 256, 255 - log2(x));
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX/bool casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }

    /**
     * @dev Cast a boolean (false or true) to a uint256 (0 or 1) with no jump.
     */
    function toUint(bool b) internal pure returns (uint256 u) {
        assembly ("memory-safe") {
            u := iszero(iszero(b))
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.20;

import {SafeCast} from "./SafeCast.sol";

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Branchless ternary evaluation for `a ? b : c`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `a ? b : c`) to only compute
     * one branch when needed, making this function more expensive.
     */
    function ternary(bool condition, int256 a, int256 b) internal pure returns (int256) {
        unchecked {
            // branchless ternary works because:
            // b ^ (a ^ b) == a
            // b ^ 0 == b
            return b ^ ((a ^ b) * int256(SafeCast.toUint(condition)));
        }
    }

    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return ternary(a > b, a, b);
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return ternary(a < b, a, b);
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // Formula from the "Bit Twiddling Hacks" by Sean Eron Anderson.
            // Since `n` is a signed integer, the generated bytecode will use the SAR opcode to perform the right shift,
            // taking advantage of the most significant (or "sign" bit) in two's complement representation.
            // This opcode adds new most significant bits set to the value of the previous most significant bit. As a result,
            // the mask will either be `bytes32(0)` (if n is positive) or `~bytes32(0)` (if n is negative).
            int256 mask = n >> 255;

            // A `bytes32(0)` mask leaves the input unchanged, while a `~bytes32(0)` mask complements it.
            return uint256((n + mask) ^ mask);
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/Panic.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Panic.sol)

pragma solidity ^0.8.20;

/**
 * @dev Helper library for emitting standardized panic codes.
 *
 * ```solidity
 * contract Example {
 *      using Panic for uint256;
 *
 *      // Use any of the declared internal constants
 *      function foo() { Panic.GENERIC.panic(); }
 *
 *      // Alternatively
 *      function foo() { Panic.panic(Panic.GENERIC); }
 * }
 * ```
 *
 * Follows the list from https://github.com/ethereum/solidity/blob/v0.8.24/libsolutil/ErrorCodes.h[libsolutil].
 *
 * _Available since v5.1._
 */
// slither-disable-next-line unused-state
library Panic {
    /// @dev generic / unspecified error
    uint256 internal constant GENERIC = 0x00;
    /// @dev used by the assert() builtin
    uint256 internal constant ASSERT = 0x01;
    /// @dev arithmetic underflow or overflow
    uint256 internal constant UNDER_OVERFLOW = 0x11;
    /// @dev division or modulo by zero
    uint256 internal constant DIVISION_BY_ZERO = 0x12;
    /// @dev enum conversion error
    uint256 internal constant ENUM_CONVERSION_ERROR = 0x21;
    /// @dev invalid encoding in storage
    uint256 internal constant STORAGE_ENCODING_ERROR = 0x22;
    /// @dev empty array pop
    uint256 internal constant EMPTY_ARRAY_POP = 0x31;
    /// @dev array out of bounds access
    uint256 internal constant ARRAY_OUT_OF_BOUNDS = 0x32;
    /// @dev resource error (too large allocation or too large array)
    uint256 internal constant RESOURCE_ERROR = 0x41;
    /// @dev calling invalid internal function
    uint256 internal constant INVALID_INTERNAL_FUNCTION = 0x51;

    /// @dev Reverts with a panic code. Recommended to use with
    /// the internal constants with predefined codes.
    function panic(uint256 code) internal pure {
        assembly ("memory-safe") {
            mstore(0x00, 0x4e487b71)
            mstore(0x20, code)
            revert(0x1c, 0x24)
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/Pausable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (utils/Pausable.sol)

pragma solidity ^0.8.20;

import {Context} from "../utils/Context.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    bool private _paused;

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        if (paused()) {
            revert EnforcedPause();
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        if (!paused()) {
            revert ExpectedPause();
        }
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/ReentrancyGuardTransient.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/ReentrancyGuardTransient.sol)

pragma solidity ^0.8.24;

import {TransientSlot} from "./TransientSlot.sol";

/**
 * @dev Variant of {ReentrancyGuard} that uses transient storage.
 *
 * NOTE: This variant only works on networks where EIP-1153 is available.
 *
 * _Available since v5.1._
 *
 * @custom:stateless
 */
abstract contract ReentrancyGuardTransient {
    using TransientSlot for *;

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ReentrancyGuard")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant REENTRANCY_GUARD_STORAGE =
        0x9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00;

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    /**
     * @dev A `view` only version of {nonReentrant}. Use to block view functions
     * from being called, preventing reading from inconsistent contract state.
     *
     * CAUTION: This is a "view" modifier and does not change the reentrancy
     * status. Use it only on view functions. For payable or non-payable functions,
     * use the standard {nonReentrant} modifier instead.
     */
    modifier nonReentrantView() {
        _nonReentrantBeforeView();
        _;
    }

    function _nonReentrantBeforeView() private view {
        if (_reentrancyGuardEntered()) {
            revert ReentrancyGuardReentrantCall();
        }
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, REENTRANCY_GUARD_STORAGE.asBoolean().tload() will be false
        _nonReentrantBeforeView();

        // Any calls to nonReentrant after this point will fail
        _reentrancyGuardStorageSlot().asBoolean().tstore(true);
    }

    function _nonReentrantAfter() private {
        _reentrancyGuardStorageSlot().asBoolean().tstore(false);
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _reentrancyGuardStorageSlot().asBoolean().tload();
    }

    function _reentrancyGuardStorageSlot() internal pure virtual returns (bytes32) {
        return REENTRANCY_GUARD_STORAGE;
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/ShortStrings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/ShortStrings.sol)

pragma solidity ^0.8.20;

import {StorageSlot} from "./StorageSlot.sol";

// | string  | 0xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA   |
// | length  | 0x                                                              BB |
type ShortString is bytes32;

/**
 * @dev This library provides functions to convert short memory strings
 * into a `ShortString` type that can be used as an immutable variable.
 *
 * Strings of arbitrary length can be optimized using this library if
 * they are short enough (up to 31 bytes) by packing them with their
 * length (1 byte) in a single EVM word (32 bytes). Additionally, a
 * fallback mechanism can be used for every other case.
 *
 * Usage example:
 *
 * ```solidity
 * contract Named {
 *     using ShortStrings for *;
 *
 *     ShortString private immutable _name;
 *     string private _nameFallback;
 *
 *     constructor(string memory contractName) {
 *         _name = contractName.toShortStringWithFallback(_nameFallback);
 *     }
 *
 *     function name() external view returns (string memory) {
 *         return _name.toStringWithFallback(_nameFallback);
 *     }
 * }
 * ```
 */
library ShortStrings {
    // Used as an identifier for strings longer than 31 bytes.
    bytes32 private constant FALLBACK_SENTINEL = 0x00000000000000000000000000000000000000000000000000000000000000FF;

    error StringTooLong(string str);
    error InvalidShortString();

    /**
     * @dev Encode a string of at most 31 chars into a `ShortString`.
     *
     * This will trigger a `StringTooLong` error is the input string is too long.
     */
    function toShortString(string memory str) internal pure returns (ShortString) {
        bytes memory bstr = bytes(str);
        if (bstr.length > 0x1f) {
            revert StringTooLong(str);
        }
        return ShortString.wrap(bytes32(uint256(bytes32(bstr)) | bstr.length));
    }

    /**
     * @dev Decode a `ShortString` back to a "normal" string.
     */
    function toString(ShortString sstr) internal pure returns (string memory) {
        uint256 len = byteLength(sstr);
        // using `new string(len)` would work locally but is not memory safe.
        string memory str = new string(0x20);
        assembly ("memory-safe") {
            mstore(str, len)
            mstore(add(str, 0x20), sstr)
        }
        return str;
    }

    /**
     * @dev Return the length of a `ShortString`.
     */
    function byteLength(ShortString sstr) internal pure returns (uint256) {
        uint256 result = uint256(ShortString.unwrap(sstr)) & 0xFF;
        if (result > 0x1f) {
            revert InvalidShortString();
        }
        return result;
    }

    /**
     * @dev Encode a string into a `ShortString`, or write it to storage if it is too long.
     */
    function toShortStringWithFallback(string memory value, string storage store) internal returns (ShortString) {
        if (bytes(value).length < 0x20) {
            return toShortString(value);
        } else {
            StorageSlot.getStringSlot(store).value = value;
            return ShortString.wrap(FALLBACK_SENTINEL);
        }
    }

    /**
     * @dev Decode a string that was encoded to `ShortString` or written to storage using {toShortStringWithFallback}.
     */
    function toStringWithFallback(ShortString value, string storage store) internal pure returns (string memory) {
        if (ShortString.unwrap(value) != FALLBACK_SENTINEL) {
            return toString(value);
        } else {
            return store;
        }
    }

    /**
     * @dev Return the length of a string that was encoded to `ShortString` or written to storage using
     * {toShortStringWithFallback}.
     *
     * WARNING: This will return the "byte length" of the string. This may not reflect the actual length in terms of
     * actual characters as the UTF-8 encoding of a single character can span over multiple bytes.
     */
    function byteLengthWithFallback(ShortString value, string storage store) internal view returns (uint256) {
        if (ShortString.unwrap(value) != FALLBACK_SENTINEL) {
            return byteLength(value);
        } else {
            return bytes(store).length;
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity ^0.8.20;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC-1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     // Define the slot. Alternatively, use the SlotDerivation library to derive the slot.
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * TIP: Consider using this library along with {SlotDerivation}.
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct Int256Slot {
        int256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Int256Slot` with member `value` located at `slot`.
     */
    function getInt256Slot(bytes32 slot) internal pure returns (Int256Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        assembly ("memory-safe") {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns a `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        assembly ("memory-safe") {
            r.slot := store.slot
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/Strings.sol)

pragma solidity ^0.8.24;

import {Math} from "./math/Math.sol";
import {SafeCast} from "./math/SafeCast.sol";
import {SignedMath} from "./math/SignedMath.sol";
import {Bytes} from "./Bytes.sol";

/**
 * @dev String operations.
 */
library Strings {
    using SafeCast for *;

    bytes16 private constant HEX_DIGITS = "0123456789abcdef";
    uint8 private constant ADDRESS_LENGTH = 20;
    uint256 private constant SPECIAL_CHARS_LOOKUP =
        (1 << 0x08) | // backspace
            (1 << 0x09) | // tab
            (1 << 0x0a) | // newline
            (1 << 0x0c) | // form feed
            (1 << 0x0d) | // carriage return
            (1 << 0x22) | // double quote
            (1 << 0x5c); // backslash

    /**
     * @dev The `value` string doesn't fit in the specified `length`.
     */
    error StringsInsufficientHexLength(uint256 value, uint256 length);

    /**
     * @dev The string being parsed contains characters that are not in scope of the given base.
     */
    error StringsInvalidChar();

    /**
     * @dev The string being parsed is not a properly formatted address.
     */
    error StringsInvalidAddressFormat();

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            assembly ("memory-safe") {
                ptr := add(add(buffer, 0x20), length)
            }
            while (true) {
                ptr--;
                assembly ("memory-safe") {
                    mstore8(ptr, byte(mod(value, 10), HEX_DIGITS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `int256` to its ASCII `string` decimal representation.
     */
    function toStringSigned(int256 value) internal pure returns (string memory) {
        return string.concat(value < 0 ? "-" : "", toString(SignedMath.abs(value)));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        uint256 localValue = value;
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = HEX_DIGITS[localValue & 0xf];
            localValue >>= 4;
        }
        if (localValue != 0) {
            revert StringsInsufficientHexLength(value, length);
        }
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal
     * representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), ADDRESS_LENGTH);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its checksummed ASCII `string` hexadecimal
     * representation, according to EIP-55.
     */
    function toChecksumHexString(address addr) internal pure returns (string memory) {
        bytes memory buffer = bytes(toHexString(addr));

        // hash the hex part of buffer (skip length + 2 bytes, length 40)
        uint256 hashValue;
        assembly ("memory-safe") {
            hashValue := shr(96, keccak256(add(buffer, 0x22), 40))
        }

        for (uint256 i = 41; i > 1; --i) {
            // possible values for buffer[i] are 48 (0) to 57 (9) and 97 (a) to 102 (f)
            if (hashValue & 0xf > 7 && uint8(buffer[i]) > 96) {
                // case shift by xoring with 0x20
                buffer[i] ^= 0x20;
            }
            hashValue >>= 4;
        }
        return string(buffer);
    }

    /**
     * @dev Converts a `bytes` buffer to its ASCII `string` hexadecimal representation.
     */
    function toHexString(bytes memory input) internal pure returns (string memory) {
        unchecked {
            bytes memory buffer = new bytes(2 * input.length + 2);
            buffer[0] = "0";
            buffer[1] = "x";
            for (uint256 i = 0; i < input.length; ++i) {
                uint8 v = uint8(input[i]);
                buffer[2 * i + 2] = HEX_DIGITS[v >> 4];
                buffer[2 * i + 3] = HEX_DIGITS[v & 0xf];
            }
            return string(buffer);
        }
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return Bytes.equal(bytes(a), bytes(b));
    }

    /**
     * @dev Parse a decimal string and returns the value as a `uint256`.
     *
     * Requirements:
     * - The string must be formatted as `[0-9]*`
     * - The result must fit into an `uint256` type
     */
    function parseUint(string memory input) internal pure returns (uint256) {
        return parseUint(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseUint-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `[0-9]*`
     * - The result must fit into an `uint256` type
     */
    function parseUint(string memory input, uint256 begin, uint256 end) internal pure returns (uint256) {
        (bool success, uint256 value) = tryParseUint(input, begin, end);
        if (!success) revert StringsInvalidChar();
        return value;
    }

    /**
     * @dev Variant of {parseUint-string} that returns false if the parsing fails because of an invalid character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseUint(string memory input) internal pure returns (bool success, uint256 value) {
        return _tryParseUintUncheckedBounds(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseUint-string-uint256-uint256} that returns false if the parsing fails because of an invalid
     * character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseUint(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, uint256 value) {
        if (end > bytes(input).length || begin > end) return (false, 0);
        return _tryParseUintUncheckedBounds(input, begin, end);
    }

    /**
     * @dev Implementation of {tryParseUint-string-uint256-uint256} that does not check bounds. Caller should make sure that
     * `begin <= end <= input.length`. Other inputs would result in undefined behavior.
     */
    function _tryParseUintUncheckedBounds(
        string memory input,
        uint256 begin,
        uint256 end
    ) private pure returns (bool success, uint256 value) {
        bytes memory buffer = bytes(input);

        uint256 result = 0;
        for (uint256 i = begin; i < end; ++i) {
            uint8 chr = _tryParseChr(bytes1(_unsafeReadBytesOffset(buffer, i)));
            if (chr > 9) return (false, 0);
            result *= 10;
            result += chr;
        }
        return (true, result);
    }

    /**
     * @dev Parse a decimal string and returns the value as a `int256`.
     *
     * Requirements:
     * - The string must be formatted as `[-+]?[0-9]*`
     * - The result must fit in an `int256` type.
     */
    function parseInt(string memory input) internal pure returns (int256) {
        return parseInt(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseInt-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `[-+]?[0-9]*`
     * - The result must fit in an `int256` type.
     */
    function parseInt(string memory input, uint256 begin, uint256 end) internal pure returns (int256) {
        (bool success, int256 value) = tryParseInt(input, begin, end);
        if (!success) revert StringsInvalidChar();
        return value;
    }

    /**
     * @dev Variant of {parseInt-string} that returns false if the parsing fails because of an invalid character or if
     * the result does not fit in a `int256`.
     *
     * NOTE: This function will revert if the absolute value of the result does not fit in a `uint256`.
     */
    function tryParseInt(string memory input) internal pure returns (bool success, int256 value) {
        return _tryParseIntUncheckedBounds(input, 0, bytes(input).length);
    }

    uint256 private constant ABS_MIN_INT256 = 2 ** 255;

    /**
     * @dev Variant of {parseInt-string-uint256-uint256} that returns false if the parsing fails because of an invalid
     * character or if the result does not fit in a `int256`.
     *
     * NOTE: This function will revert if the absolute value of the result does not fit in a `uint256`.
     */
    function tryParseInt(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, int256 value) {
        if (end > bytes(input).length || begin > end) return (false, 0);
        return _tryParseIntUncheckedBounds(input, begin, end);
    }

    /**
     * @dev Implementation of {tryParseInt-string-uint256-uint256} that does not check bounds. Caller should make sure that
     * `begin <= end <= input.length`. Other inputs would result in undefined behavior.
     */
    function _tryParseIntUncheckedBounds(
        string memory input,
        uint256 begin,
        uint256 end
    ) private pure returns (bool success, int256 value) {
        bytes memory buffer = bytes(input);

        // Check presence of a negative sign.
        bytes1 sign = begin == end ? bytes1(0) : bytes1(_unsafeReadBytesOffset(buffer, begin)); // don't do out-of-bound (possibly unsafe) read if sub-string is empty
        bool positiveSign = sign == bytes1("+");
        bool negativeSign = sign == bytes1("-");
        uint256 offset = (positiveSign || negativeSign).toUint();

        (bool absSuccess, uint256 absValue) = tryParseUint(input, begin + offset, end);

        if (absSuccess && absValue < ABS_MIN_INT256) {
            return (true, negativeSign ? -int256(absValue) : int256(absValue));
        } else if (absSuccess && negativeSign && absValue == ABS_MIN_INT256) {
            return (true, type(int256).min);
        } else return (false, 0);
    }

    /**
     * @dev Parse a hexadecimal string (with or without "0x" prefix), and returns the value as a `uint256`.
     *
     * Requirements:
     * - The string must be formatted as `(0x)?[0-9a-fA-F]*`
     * - The result must fit in an `uint256` type.
     */
    function parseHexUint(string memory input) internal pure returns (uint256) {
        return parseHexUint(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseHexUint-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `(0x)?[0-9a-fA-F]*`
     * - The result must fit in an `uint256` type.
     */
    function parseHexUint(string memory input, uint256 begin, uint256 end) internal pure returns (uint256) {
        (bool success, uint256 value) = tryParseHexUint(input, begin, end);
        if (!success) revert StringsInvalidChar();
        return value;
    }

    /**
     * @dev Variant of {parseHexUint-string} that returns false if the parsing fails because of an invalid character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseHexUint(string memory input) internal pure returns (bool success, uint256 value) {
        return _tryParseHexUintUncheckedBounds(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseHexUint-string-uint256-uint256} that returns false if the parsing fails because of an
     * invalid character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseHexUint(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, uint256 value) {
        if (end > bytes(input).length || begin > end) return (false, 0);
        return _tryParseHexUintUncheckedBounds(input, begin, end);
    }

    /**
     * @dev Implementation of {tryParseHexUint-string-uint256-uint256} that does not check bounds. Caller should make sure that
     * `begin <= end <= input.length`. Other inputs would result in undefined behavior.
     */
    function _tryParseHexUintUncheckedBounds(
        string memory input,
        uint256 begin,
        uint256 end
    ) private pure returns (bool success, uint256 value) {
        bytes memory buffer = bytes(input);

        // skip 0x prefix if present
        bool hasPrefix = (end > begin + 1) && bytes2(_unsafeReadBytesOffset(buffer, begin)) == bytes2("0x"); // don't do out-of-bound (possibly unsafe) read if sub-string is empty
        uint256 offset = hasPrefix.toUint() * 2;

        uint256 result = 0;
        for (uint256 i = begin + offset; i < end; ++i) {
            uint8 chr = _tryParseChr(bytes1(_unsafeReadBytesOffset(buffer, i)));
            if (chr > 15) return (false, 0);
            result *= 16;
            unchecked {
                // Multiplying by 16 is equivalent to a shift of 4 bits (with additional overflow check).
                // This guarantees that adding a value < 16 will not cause an overflow, hence the unchecked.
                result += chr;
            }
        }
        return (true, result);
    }

    /**
     * @dev Parse a hexadecimal string (with or without "0x" prefix), and returns the value as an `address`.
     *
     * Requirements:
     * - The string must be formatted as `(0x)?[0-9a-fA-F]{40}`
     */
    function parseAddress(string memory input) internal pure returns (address) {
        return parseAddress(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseAddress-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `(0x)?[0-9a-fA-F]{40}`
     */
    function parseAddress(string memory input, uint256 begin, uint256 end) internal pure returns (address) {
        (bool success, address value) = tryParseAddress(input, begin, end);
        if (!success) revert StringsInvalidAddressFormat();
        return value;
    }

    /**
     * @dev Variant of {parseAddress-string} that returns false if the parsing fails because the input is not a properly
     * formatted address. See {parseAddress-string} requirements.
     */
    function tryParseAddress(string memory input) internal pure returns (bool success, address value) {
        return tryParseAddress(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseAddress-string-uint256-uint256} that returns false if the parsing fails because input is not a properly
     * formatted address. See {parseAddress-string-uint256-uint256} requirements.
     */
    function tryParseAddress(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, address value) {
        if (end > bytes(input).length || begin > end) return (false, address(0));

        bool hasPrefix = (end > begin + 1) && bytes2(_unsafeReadBytesOffset(bytes(input), begin)) == bytes2("0x"); // don't do out-of-bound (possibly unsafe) read if sub-string is empty
        uint256 expectedLength = 40 + hasPrefix.toUint() * 2;

        // check that input is the correct length
        if (end - begin == expectedLength) {
            // length guarantees that this does not overflow, and value is at most type(uint160).max
            (bool s, uint256 v) = _tryParseHexUintUncheckedBounds(input, begin, end);
            return (s, address(uint160(v)));
        } else {
            return (false, address(0));
        }
    }

    function _tryParseChr(bytes1 chr) private pure returns (uint8) {
        uint8 value = uint8(chr);

        // Try to parse `chr`:
        // - Case 1: [0-9]
        // - Case 2: [a-f]
        // - Case 3: [A-F]
        // - otherwise not supported
        unchecked {
            if (value > 47 && value < 58) value -= 48;
            else if (value > 96 && value < 103) value -= 87;
            else if (value > 64 && value < 71) value -= 55;
            else return type(uint8).max;
        }

        return value;
    }

    /**
     * @dev Escape special characters in JSON strings. This can be useful to prevent JSON injection in NFT metadata.
     *
     * WARNING: This function should only be used in double quoted JSON strings. Single quotes are not escaped.
     *
     * NOTE: This function escapes all unicode characters, and not just the ones in ranges defined in section 2.5 of
     * RFC-4627 (U+0000 to U+001F, U+0022 and U+005C). ECMAScript's `JSON.parse` does recover escaped unicode
     * characters that are not in this range, but other tooling may provide different results.
     */
    function escapeJSON(string memory input) internal pure returns (string memory) {
        bytes memory buffer = bytes(input);
        bytes memory output = new bytes(2 * buffer.length); // worst case scenario
        uint256 outputLength = 0;

        for (uint256 i = 0; i < buffer.length; ++i) {
            bytes1 char = bytes1(_unsafeReadBytesOffset(buffer, i));
            if (((SPECIAL_CHARS_LOOKUP & (1 << uint8(char))) != 0)) {
                output[outputLength++] = "\\";
                if (char == 0x08) output[outputLength++] = "b";
                else if (char == 0x09) output[outputLength++] = "t";
                else if (char == 0x0a) output[outputLength++] = "n";
                else if (char == 0x0c) output[outputLength++] = "f";
                else if (char == 0x0d) output[outputLength++] = "r";
                else if (char == 0x5c) output[outputLength++] = "\\";
                else if (char == 0x22) {
                    // solhint-disable-next-line quotes
                    output[outputLength++] = '"';
                }
            } else {
                output[outputLength++] = char;
            }
        }
        // write the actual length and deallocate unused memory
        assembly ("memory-safe") {
            mstore(output, outputLength)
            mstore(0x40, add(output, shl(5, shr(5, add(outputLength, 63)))))
        }

        return string(output);
    }

    /**
     * @dev Reads a bytes32 from a bytes array without bounds checking.
     *
     * NOTE: making this function internal would mean it could be used with memory unsafe offset, and marking the
     * assembly block as such would prevent some optimizations.
     */
    function _unsafeReadBytesOffset(bytes memory buffer, uint256 offset) private pure returns (bytes32 value) {
        // This is not memory safe in the general case, but all calls to this private function are within bounds.
        assembly ("memory-safe") {
            value := mload(add(add(buffer, 0x20), offset))
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/TransientSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (utils/TransientSlot.sol)
// This file was procedurally generated from scripts/generate/templates/TransientSlot.js.

pragma solidity ^0.8.24;

/**
 * @dev Library for reading and writing value-types to specific transient storage slots.
 *
 * Transient slots are often used to store temporary values that are removed after the current transaction.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 *  * Example reading and writing values using transient storage:
 * ```solidity
 * contract Lock {
 *     using TransientSlot for *;
 *
 *     // Define the slot. Alternatively, use the SlotDerivation library to derive the slot.
 *     bytes32 internal constant _LOCK_SLOT = 0xf4678858b2b588224636b8522b729e7722d32fc491da849ed75b3fdf3c84f542;
 *
 *     modifier locked() {
 *         require(!_LOCK_SLOT.asBoolean().tload());
 *
 *         _LOCK_SLOT.asBoolean().tstore(true);
 *         _;
 *         _LOCK_SLOT.asBoolean().tstore(false);
 *     }
 * }
 * ```
 *
 * TIP: Consider using this library along with {SlotDerivation}.
 */
library TransientSlot {
    /**
     * @dev UDVT that represents a slot holding an address.
     */
    type AddressSlot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a AddressSlot.
     */
    function asAddress(bytes32 slot) internal pure returns (AddressSlot) {
        return AddressSlot.wrap(slot);
    }

    /**
     * @dev UDVT that represents a slot holding a bool.
     */
    type BooleanSlot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a BooleanSlot.
     */
    function asBoolean(bytes32 slot) internal pure returns (BooleanSlot) {
        return BooleanSlot.wrap(slot);
    }

    /**
     * @dev UDVT that represents a slot holding a bytes32.
     */
    type Bytes32Slot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a Bytes32Slot.
     */
    function asBytes32(bytes32 slot) internal pure returns (Bytes32Slot) {
        return Bytes32Slot.wrap(slot);
    }

    /**
     * @dev UDVT that represents a slot holding a uint256.
     */
    type Uint256Slot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a Uint256Slot.
     */
    function asUint256(bytes32 slot) internal pure returns (Uint256Slot) {
        return Uint256Slot.wrap(slot);
    }

    /**
     * @dev UDVT that represents a slot holding a int256.
     */
    type Int256Slot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a Int256Slot.
     */
    function asInt256(bytes32 slot) internal pure returns (Int256Slot) {
        return Int256Slot.wrap(slot);
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(AddressSlot slot) internal view returns (address value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(AddressSlot slot, address value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(BooleanSlot slot) internal view returns (bool value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(BooleanSlot slot, bool value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(Bytes32Slot slot) internal view returns (bytes32 value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(Bytes32Slot slot, bytes32 value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(Uint256Slot slot) internal view returns (uint256 value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(Uint256Slot slot, uint256 value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(Int256Slot slot) internal view returns (int256 value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(Int256Slot slot, int256 value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }
}

// ============================================================
// FILE: lib/ks-common-sc/src/base/Common.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ICommon} from '../interfaces/ICommon.sol';

contract Common is ICommon {
  modifier checkAddress(address addr) {
    require(addr != address(0), InvalidAddress());
    _;
  }

  modifier checkLengths(uint256 length1, uint256 length2) {
    require(length1 == length2, MismatchedArrayLengths());
    _;
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/base/ManagementBase.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Common} from './Common.sol';

import {IManagementBase} from '../interfaces/IManagementBase.sol';

import {
  AccessControlDefaultAdminRules
} from 'openzeppelin-contracts/contracts/access/extensions/AccessControlDefaultAdminRules.sol';

contract ManagementBase is AccessControlDefaultAdminRules, Common, IManagementBase {
  modifier onlyRoleOrDefaultAdmin(bytes32 role) {
    if (!hasRole(role, _msgSender()) && !hasRole(DEFAULT_ADMIN_ROLE, _msgSender())) {
      revert AccessControlUnauthorizedAccount(_msgSender(), role);
    }
    _;
  }

  constructor(uint48 initialDelay, address initialAdmin)
    AccessControlDefaultAdminRules(initialDelay, initialAdmin)
  {}

  /// @inheritdoc IManagementBase
  function transferOwnership(address newOwner) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _revokeRole(DEFAULT_ADMIN_ROLE, _msgSender());
    _grantRole(DEFAULT_ADMIN_ROLE, newOwner);
  }

  /// @inheritdoc IManagementBase
  function batchGrantRole(bytes32 role, address[] memory accounts)
    external
    onlyRole(getRoleAdmin(role))
  {
    _batchGrantRole(role, accounts);
  }

  /// @dev See {batchGrantRole}
  /// Internal function without access restriction.
  function _batchGrantRole(bytes32 role, address[] memory accounts) internal {
    for (uint256 i = 0; i < accounts.length; i++) {
      _grantRole(role, accounts[i]);
    }
  }

  /// @inheritdoc IManagementBase
  function batchRevokeRole(bytes32 role, address[] memory accounts)
    external
    onlyRole(getRoleAdmin(role))
  {
    _batchRevokeRole(role, accounts);
  }

  /// @dev See {batchRevokeRole}
  /// Internal function without access restriction.
  function _batchRevokeRole(bytes32 role, address[] memory accounts) internal {
    for (uint256 i = 0; i < accounts.length; i++) {
      _revokeRole(role, accounts[i]);
    }
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/base/ManagementPausable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IManagementPausable} from '../interfaces/IManagementPausable.sol';

import {KSRoles} from '../libraries/KSRoles.sol';
import {ManagementBase} from './ManagementBase.sol';

import {Pausable} from 'openzeppelin-contracts/contracts/utils/Pausable.sol';

abstract contract ManagementPausable is ManagementBase, IManagementPausable, Pausable {
  /// @inheritdoc IManagementPausable
  function pause() external onlyRoleOrDefaultAdmin(KSRoles.GUARDIAN_ROLE) {
    _pause();
  }

  /// @inheritdoc IManagementPausable
  function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
    _unpause();
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/base/ManagementRescuable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IManagementRescuable} from '../interfaces/IManagementRescuable.sol';

import {KSRoles} from '../libraries/KSRoles.sol';
import {TokenHelper} from '../libraries/token/TokenHelper.sol';
import {ManagementBase} from './ManagementBase.sol';

import {IERC1155} from 'openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol';
import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';

abstract contract ManagementRescuable is ManagementBase, IManagementRescuable {
  using TokenHelper for address;

  /// @inheritdoc IManagementRescuable
  function rescueERC20s(address[] calldata tokens, uint256[] memory amounts, address recipient)
    external
    onlyRoleOrDefaultAdmin(KSRoles.RESCUER_ROLE)
    checkAddress(recipient)
    checkLengths(tokens.length, amounts.length)
  {
    for (uint256 i = 0; i < tokens.length; i++) {
      amounts[i] = _transferERC20(tokens[i], amounts[i], recipient);
    }

    emit RescueERC20s(tokens, amounts, recipient);
  }

  /// @inheritdoc IManagementRescuable
  function rescueERC721s(IERC721[] calldata tokens, uint256[] calldata tokenIds, address recipient)
    external
    onlyRoleOrDefaultAdmin(KSRoles.RESCUER_ROLE)
    checkAddress(recipient)
    checkLengths(tokens.length, tokenIds.length)
  {
    for (uint256 i = 0; i < tokens.length; i++) {
      tokens[i].safeTransferFrom(address(this), recipient, tokenIds[i]);
    }

    emit RescueERC721s(tokens, tokenIds, recipient);
  }

  /// @inheritdoc IManagementRescuable
  function rescueERC1155s(
    IERC1155[] calldata tokens,
    uint256[] calldata tokenIds,
    uint256[] calldata amounts,
    bytes[] calldata datas,
    address recipient
  )
    external
    onlyRoleOrDefaultAdmin(KSRoles.RESCUER_ROLE)
    checkAddress(recipient)
    checkLengths(tokens.length, tokenIds.length)
    checkLengths(tokens.length, amounts.length)
    checkLengths(tokens.length, datas.length)
  {
    for (uint256 i = 0; i < tokens.length; i++) {
      _transferERC1155(tokens[i], tokenIds[i], amounts[i], datas[i], recipient);
    }

    emit RescueERC1155s(tokens, tokenIds, amounts, recipient);
  }

  function _transferERC20(address token, uint256 amount, address recipient)
    internal
    returns (uint256)
  {
    if (amount == 0) {
      amount = token.balanceOf(address(this));
    }
    token.safeTransfer(recipient, amount);

    return amount;
  }

  function _transferERC1155(
    IERC1155 token,
    uint256 tokenId,
    uint256 amount,
    bytes memory data,
    address recipient
  ) internal {
    if (amount == 0) {
      amount = token.balanceOf(address(this), tokenId);
    }
    token.safeTransferFrom(address(this), recipient, tokenId, amount, data);
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IAllowanceTransfer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title AllowanceTransfer
/// @notice Handles ERC20 token permissions through signature based allowance setting and ERC20 token transfers by checking allowed amounts
/// @dev Requires user's token approval on the Permit2 contract
interface IAllowanceTransfer {
  /// @notice Thrown when an allowance on a token has expired.
  /// @param deadline The timestamp at which the allowed amount is no longer valid
  error AllowanceExpired(uint256 deadline);

  /// @notice Thrown when an allowance on a token has been depleted.
  /// @param amount The maximum amount allowed
  error InsufficientAllowance(uint256 amount);

  /// @notice Thrown when too many nonces are invalidated.
  error ExcessiveInvalidation();

  /// @notice Emits an event when the owner successfully invalidates an ordered nonce.
  event NonceInvalidation(
    address indexed owner,
    address indexed token,
    address indexed spender,
    uint48 newNonce,
    uint48 oldNonce
  );

  /// @notice Emits an event when the owner successfully sets permissions on a token for the spender.
  event Approval(
    address indexed owner,
    address indexed token,
    address indexed spender,
    uint160 amount,
    uint48 expiration
  );

  /// @notice Emits an event when the owner successfully sets permissions using a permit signature on a token for the spender.
  event Permit(
    address indexed owner,
    address indexed token,
    address indexed spender,
    uint160 amount,
    uint48 expiration,
    uint48 nonce
  );

  /// @notice Emits an event when the owner sets the allowance back to 0 with the lockdown function.
  event Lockdown(address indexed owner, address token, address spender);

  /// @notice The permit data for a token
  struct PermitDetails {
    // ERC20 token address
    address token;
    // the maximum amount allowed to spend
    uint160 amount;
    // timestamp at which a spender's token allowances become invalid
    uint48 expiration;
    // an incrementing value indexed per owner,token,and spender for each signature
    uint48 nonce;
  }

  /// @notice The permit message signed for a single token allowance
  struct PermitSingle {
    // the permit data for a single token alownce
    PermitDetails details;
    // address permissioned on the allowed tokens
    address spender;
    // deadline on the permit signature
    uint256 sigDeadline;
  }

  /// @notice The permit message signed for multiple token allowances
  struct PermitBatch {
    // the permit data for multiple token allowances
    PermitDetails[] details;
    // address permissioned on the allowed tokens
    address spender;
    // deadline on the permit signature
    uint256 sigDeadline;
  }

  /// @notice The saved permissions
  /// @dev This info is saved per owner, per token, per spender and all signed over in the permit message
  /// @dev Setting amount to type(uint160).max sets an unlimited approval
  struct PackedAllowance {
    // amount allowed
    uint160 amount;
    // permission expiry
    uint48 expiration;
    // an incrementing value indexed per owner,token,and spender for each signature
    uint48 nonce;
  }

  /// @notice A token spender pair.
  struct TokenSpenderPair {
    // the token the spender is approved
    address token;
    // the spender address
    address spender;
  }

  /// @notice Details for a token transfer.
  struct AllowanceTransferDetails {
    // the owner of the token
    address from;
    // the recipient of the token
    address to;
    // the amount of the token
    uint160 amount;
    // the token to be transferred
    address token;
  }

  /// @notice A mapping from owner address to token address to spender address to PackedAllowance struct, which contains details and conditions of the approval.
  /// @notice The mapping is indexed in the above order see: allowance[ownerAddress][tokenAddress][spenderAddress]
  /// @dev The packed slot holds the allowed amount, expiration at which the allowed amount is no longer valid, and current nonce thats updated on any signature based approvals.
  function allowance(address user, address token, address spender)
    external
    view
    returns (uint160 amount, uint48 expiration, uint48 nonce);

  /// @notice Approves the spender to use up to amount of the specified token up until the expiration
  /// @param token The token to approve
  /// @param spender The spender address to approve
  /// @param amount The approved amount of the token
  /// @param expiration The timestamp at which the approval is no longer valid
  /// @dev The packed allowance also holds a nonce, which will stay unchanged in approve
  /// @dev Setting amount to type(uint160).max sets an unlimited approval
  function approve(address token, address spender, uint160 amount, uint48 expiration) external;

  /// @notice Permit a spender to a given amount of the owners token via the owner's EIP-712 signature
  /// @dev May fail if the owner's nonce was invalidated in-flight by invalidateNonce
  /// @param owner The owner of the tokens being approved
  /// @param permitSingle Data signed over by the owner specifying the terms of approval
  /// @param signature The owner's signature over the permit data
  function permit(address owner, PermitSingle memory permitSingle, bytes calldata signature)
    external;

  /// @notice Permit a spender to the signed amounts of the owners tokens via the owner's EIP-712 signature
  /// @dev May fail if the owner's nonce was invalidated in-flight by invalidateNonce
  /// @param owner The owner of the tokens being approved
  /// @param permitBatch Data signed over by the owner specifying the terms of approval
  /// @param signature The owner's signature over the permit data
  function permit(address owner, PermitBatch memory permitBatch, bytes calldata signature) external;

  /// @notice Transfer approved tokens from one address to another
  /// @param from The address to transfer from
  /// @param to The address of the recipient
  /// @param amount The amount of the token to transfer
  /// @param token The token address to transfer
  /// @dev Requires the from address to have approved at least the desired amount
  /// of tokens to msg.sender.
  function transferFrom(address from, address to, uint160 amount, address token) external;

  /// @notice Transfer approved tokens in a batch
  /// @param transferDetails Array of owners, recipients, amounts, and tokens for the transfers
  /// @dev Requires the from addresses to have approved at least the desired amount
  /// of tokens to msg.sender.
  function transferFrom(AllowanceTransferDetails[] calldata transferDetails) external;

  /// @notice Enables performing a "lockdown" of the sender's Permit2 identity
  /// by batch revoking approvals
  /// @param approvals Array of approvals to revoke.
  function lockdown(TokenSpenderPair[] calldata approvals) external;

  /// @notice Invalidate nonces for a given (token, spender) pair
  /// @param token The token to invalidate nonces for
  /// @param spender The spender to invalidate nonces for
  /// @param newNonce The new nonce to set. Invalidates all nonces less than it.
  /// @dev Can't invalidate more than 2**16 nonces per transaction.
  function invalidateNonces(address token, address spender, uint48 newNonce) external;
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/ICommon.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title ICommon
/// @notice Common interface for all contracts
interface ICommon {
  /// @notice Thrown when trying to update with zero address
  error InvalidAddress();

  /// @notice Thrown when the lengths of the arrays are mismatched
  error MismatchedArrayLengths();
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IDaiLikePermit.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for DAI-style permits
interface IDaiLikePermit {
  /// @notice Permit a spender to a given amount of the holder's token via the holder's EIP-712 signature
  /// @dev May fail if the holder's nonce was invalidated in-flight by invalidateNonce
  /// @param holder The holder of the tokens being approved
  /// @param spender The address permissioned on the allowed tokens
  /// @param nonce The nonce of the holder
  /// @param expiry The expiry of the permit
  /// @param allowed Whether the permit is allowed
  /// @param v The v component of the signature
  /// @param r The r component of the signature
  /// @param s The s component of the signature
  function permit(
    address holder,
    address spender,
    uint256 nonce,
    uint256 expiry,
    bool allowed,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) external;

  function PERMIT_TYPEHASH() external pure returns (bytes32);
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IERC721Permit_v3.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

/// @title ERC721 with permit
/// @notice Extension to ERC721 that includes a permit function for signature based approvals
interface IERC721Permit_v3 {
  /// @notice The permit typehash used in the permit signature
  /// @return The typehash for the permit
  function PERMIT_TYPEHASH() external pure returns (bytes32);

  /// @notice The domain separator used in the permit signature
  /// @return The domain seperator used in encoding of permit signature
  function DOMAIN_SEPARATOR() external view returns (bytes32);

  /// @notice Approve of a specific token ID for spending by spender via signature
  /// @param spender The account that is being approved
  /// @param tokenId The ID of the token that is being approved for spending
  /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
  /// @param v Must produce valid secp256k1 signature from the holder along with `r` and `s`
  /// @param r Must produce valid secp256k1 signature from the holder along with `v` and `s`
  /// @param s Must produce valid secp256k1 signature from the holder along with `r` and `v`
  function permit(
    address spender,
    uint256 tokenId,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) external payable;
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IERC721Permit_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title IERC721Permit_v4
/// @notice Interface for the ERC721Permit_v4 contract
interface IERC721Permit_v4 {
  error SignatureDeadlineExpired();
  error NoSelfPermit();
  error Unauthorized();

  /// @notice Approve of a specific token ID for spending by spender via signature
  /// @param spender The account that is being approved
  /// @param tokenId The ID of the token that is being approved for spending
  /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
  /// @param nonce a unique value, for an owner, to prevent replay attacks; an unordered nonce where the top 248 bits correspond to a word and the bottom 8 bits calculate the bit position of the word
  /// @param signature Concatenated data from a valid secp256k1 signature from the holder, i.e. abi.encodePacked(r, s, v)
  /// @dev payable so it can be multicalled with NATIVE related actions
  function permit(
    address spender,
    uint256 tokenId,
    uint256 deadline,
    uint256 nonce,
    bytes calldata signature
  ) external payable;

  /// @notice Set an operator with full permission to an owner's tokens via signature
  /// @param owner The address that is setting the operator
  /// @param operator The address that will be set as an operator for the owner
  /// @param approved The permission to set on the operator
  /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
  /// @param nonce a unique value, for an owner, to prevent replay attacks; an unordered nonce where the top 248 bits correspond to a word and the bottom 8 bits calculate the bit position of the word
  /// @param signature Concatenated data from a valid secp256k1 signature from the holder, i.e. abi.encodePacked(r, s, v)
  /// @dev payable so it can be multicalled with NATIVE related actions
  function permitForAll(
    address owner,
    address operator,
    bool approved,
    uint256 deadline,
    uint256 nonce,
    bytes calldata signature
  ) external payable;
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IKSGenericForwarder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IKSGenericForwarder {
  function forward(address target, bytes calldata data) external payable returns (bytes memory);

  function forwardValue(address target, bytes calldata data, uint256 value)
    external
    payable
    returns (bytes memory);

  function forwardBatch(address[] calldata targets, bytes[] calldata data)
    external
    returns (bytes[] memory);

  function forwardBatchValue(
    address[] calldata targets,
    bytes[] calldata data,
    uint256[] calldata value
  ) external payable returns (bytes[] memory);
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IManagementBase.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC1155} from 'openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol';
import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';

interface IManagementBase {
  /// @notice Transfer {defaultAdmin} to a new account
  /// @dev Mimics the {Ownable-transferOwnership} function
  /// @param newOwner The new {defaultAdmin}
  function transferOwnership(address newOwner) external;

  /// @notice Batch grant roles to multiple accounts
  /// @param role The role to grant
  /// @param accounts The accounts to grant the role to
  function batchGrantRole(bytes32 role, address[] memory accounts) external;

  /// @notice Batch revoke roles from multiple accounts
  /// @param role The role to revoke
  /// @param accounts The accounts to revoke the role from
  function batchRevokeRole(bytes32 role, address[] memory accounts) external;
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IManagementPausable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IManagementPausable {
  /// @notice Pause the contract
  function pause() external;

  /// @notice Unpause the contract
  function unpause() external;
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IManagementRescuable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC1155} from 'openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol';
import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';

interface IManagementRescuable {
  /// @notice Emitted when some of ERC20 tokens are rescued
  event RescueERC20s(address[] tokens, uint256[] amounts, address recipient);

  /// @notice Emitted when some of ERC721 tokens are rescued
  event RescueERC721s(IERC721[] tokens, uint256[] tokenIds, address recipient);

  /// @notice Emitted when some of ERC1155 tokens are rescued
  event RescueERC1155s(IERC1155[] tokens, uint256[] tokenIds, uint256[] amounts, address recipient);

  /**
   * @notice Rescue some of ERC20 tokens stuck in the contract
   * @notice Can only be called by the current owner
   * @param tokens the addresses of the tokens to rescue
   * @param amounts the amounts of the tokens to rescue, set to 0 to rescue all
   * @param recipient the address to send the tokens to
   */
  function rescueERC20s(address[] calldata tokens, uint256[] memory amounts, address recipient)
    external;

  /**
   * @notice Rescue some of ERC721 tokens stuck in the contract
   * @notice Can only be called by the current owner
   * @param tokens the addresses of the tokens to rescue
   * @param tokenIds the IDs of the tokens to rescue
   * @param recipient the address to send the tokens to
   */
  function rescueERC721s(IERC721[] calldata tokens, uint256[] calldata tokenIds, address recipient)
    external;

  /**
   * @notice Rescue some of ERC1155 tokens stuck in the contract
   * @notice Can only be called by the current owner
   * @param tokens the addresses of the tokens to rescue
   * @param tokenIds the IDs of the tokens to rescue
   * @param amounts the amounts of the tokens to rescue, set to 0 to rescue all
   * @param datas additional data to `safeTransferFrom`
   * @param recipient the address to send the tokens to
   */
  function rescueERC1155s(
    IERC1155[] calldata tokens,
    uint256[] calldata tokenIds,
    uint256[] calldata amounts,
    bytes[] calldata datas,
    address recipient
  ) external;
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/calldata/CalldataDecoder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for abi decoding in calldata
library CalldataDecoder {
  error SliceOutOfBounds();

  /// @notice mask used for offsets and lengths to ensure no overflow
  /// @dev no sane abi encoding will pass in an offset or length greater than type(uint32).max
  ///      (note that this does deviate from standard solidity behavior and offsets/lengths will
  ///      be interpreted as mod type(uint32).max which will only impact malicious/buggy callers)
  uint256 internal constant OFFSET_OR_LENGTH_MASK = 0xffffffff;
  uint256 internal constant OFFSET_OR_LENGTH_MASK_AND_WORD_ALIGN = 0xffffffe0;

  /// @notice equivalent to SliceOutOfBounds.selector, stored in least-significant bits
  uint256 internal constant SLICE_ERROR_SELECTOR = 0x3b99b53d;

  function decodeAddress(bytes calldata _bytes) internal pure returns (address value) {
    assembly ('memory-safe') {
      value := calldataload(_bytes.offset)
    }
  }

  function decodeAddress(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (address value)
  {
    assembly ('memory-safe') {
      value := calldataload(add(_bytes.offset, shl(5, _arg)))
    }
  }

  function decodeUint256(bytes calldata _bytes) internal pure returns (uint256 value) {
    assembly ('memory-safe') {
      value := calldataload(_bytes.offset)
    }
  }

  function decodeUint256(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (uint256 value)
  {
    assembly ('memory-safe') {
      value := calldataload(add(_bytes.offset, shl(5, _arg)))
    }
  }

  function decodeBool(bytes calldata _bytes) internal pure returns (bool value) {
    assembly ('memory-safe') {
      value := calldataload(_bytes.offset)
    }
  }

  function decodeBool(bytes calldata _bytes, uint256 _arg) internal pure returns (bool value) {
    assembly ('memory-safe') {
      value := calldataload(add(_bytes.offset, shl(5, _arg)))
    }
  }

  function decodeBytes32(bytes calldata _bytes) internal pure returns (bytes32 value) {
    assembly ('memory-safe') {
      value := calldataload(_bytes.offset)
    }
  }

  function decodeBytes32(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (bytes32 value)
  {
    assembly ('memory-safe') {
      value := calldataload(add(_bytes.offset, shl(5, _arg)))
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as a dynamic array
  /// @dev The decoding of `length` and `offset` is universal,
  /// whereas the type declaration of `res` instructs the compiler how to read it.
  /// @param _bytes The input bytes string to slice
  /// @param _arg The index of the argument to extract
  /// @return length Length of the array
  /// @return offset Pointer to the data part of the array
  function decodeLengthOffset(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (uint256 length, uint256 offset)
  {
    assembly ('memory-safe') {
      // The offset of the `_arg`-th element is `32 * arg`, which stores the offset of the length pointer.
      // shl(5, x) is equivalent to mul(32, x)
      let lengthPtr := add(_bytes.offset, calldataload(add(_bytes.offset, shl(5, _arg))))
      length := calldataload(lengthPtr)
      offset := add(lengthPtr, 0x20)

      // if the provided bytes string isnt as long as the encoding says, revert
      if lt(add(_bytes.length, _bytes.offset), add(length, offset)) {
        mstore(0, SLICE_ERROR_SELECTOR)
        revert(0x1c, 4)
      }
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `bytes`
  /// @param _bytes The input bytes string to extract a bytes string from
  /// @param _arg The index of the argument to extract
  function decodeBytes(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (bytes calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ('memory-safe') {
      res.length := length
      res.offset := offset
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `uint256[]`
  /// @param _bytes The input bytes string to extract a uint256 array from
  /// @param _arg The index of the argument to extract
  function decodeUint256Array(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (uint256[] calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ('memory-safe') {
      res.length := length
      res.offset := offset
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `address[]`
  /// @param _bytes The input bytes string to extract an address array from
  /// @param _arg The index of the argument to extract
  function decodeAddressArray(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (address[] calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ('memory-safe') {
      res.length := length
      res.offset := offset
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `bytes32[]`
  /// @param _bytes The input bytes string to extract a bytes32 array from
  /// @param _arg The index of the argument to extract
  function decodeBytes32Array(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (bytes32[] calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ('memory-safe') {
      res.length := length
      res.offset := offset
    }
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/CustomRevert.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for reverting with custom errors efficiently
/// @notice Contains functions for reverting with custom errors with different argument types efficiently
/// @dev To use this library, declare `using CustomRevert for bytes4;` and replace `revert CustomError()` with
/// `CustomError.selector.revertWith()`
/// @dev The functions may tamper with the free memory pointer but it is fine since the call context is exited immediately
library CustomRevert {
  /// @dev ERC-7751 error for wrapping bubbled up reverts
  error WrappedError(address target, bytes4 selector, bytes reason, bytes details);

  /// @dev Reverts with the selector of a custom error in the scratch space
  function revertWith(bytes4 selector) internal pure {
    assembly ('memory-safe') {
      mstore(0, selector)
      revert(0, 0x04)
    }
  }

  /// @dev Reverts with a custom error with an address argument in the scratch space
  function revertWith(bytes4 selector, address addr) internal pure {
    assembly ('memory-safe') {
      mstore(0, selector)
      mstore(0x04, and(addr, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(0, 0x24)
    }
  }

  /// @dev Reverts with a custom error with an int24 argument in the scratch space
  function revertWith(bytes4 selector, int24 value) internal pure {
    assembly ('memory-safe') {
      mstore(0, selector)
      mstore(0x04, signextend(2, value))
      revert(0, 0x24)
    }
  }

  /// @dev Reverts with a custom error with a uint160 argument in the scratch space
  function revertWith(bytes4 selector, uint160 value) internal pure {
    assembly ('memory-safe') {
      mstore(0, selector)
      mstore(0x04, and(value, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(0, 0x24)
    }
  }

  /// @dev Reverts with a custom error with two int24 arguments
  function revertWith(bytes4 selector, int24 value1, int24 value2) internal pure {
    assembly ('memory-safe') {
      let fmp := mload(0x40)
      mstore(fmp, selector)
      mstore(add(fmp, 0x04), signextend(2, value1))
      mstore(add(fmp, 0x24), signextend(2, value2))
      revert(fmp, 0x44)
    }
  }

  /// @dev Reverts with a custom error with two uint160 arguments
  function revertWith(bytes4 selector, uint160 value1, uint160 value2) internal pure {
    assembly ('memory-safe') {
      let fmp := mload(0x40)
      mstore(fmp, selector)
      mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
      mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(fmp, 0x44)
    }
  }

  /// @dev Reverts with a custom error with two address arguments
  function revertWith(bytes4 selector, address value1, address value2) internal pure {
    assembly ('memory-safe') {
      let fmp := mload(0x40)
      mstore(fmp, selector)
      mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
      mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(fmp, 0x44)
    }
  }

  /// @notice bubble up the revert message returned by a call and revert with a wrapped ERC-7751 error
  /// @dev this method can be vulnerable to revert data bombs
  function bubbleUpAndRevertWith(
    address revertingContract,
    bytes4 revertingFunctionSelector,
    bytes4 additionalContext
  ) internal pure {
    bytes4 wrappedErrorSelector = WrappedError.selector;
    assembly ('memory-safe') {
      // Ensure the size of the revert data is a multiple of 32 bytes
      let encodedDataSize := mul(div(add(returndatasize(), 31), 32), 32)

      let fmp := mload(0x40)

      // Encode wrapped error selector, address, function selector, offset, additional context, size, revert reason
      mstore(fmp, wrappedErrorSelector)
      mstore(add(fmp, 0x04), and(revertingContract, 0xffffffffffffffffffffffffffffffffffffffff))
      mstore(
        add(fmp, 0x24),
        and(
          revertingFunctionSelector,
          0xffffffff00000000000000000000000000000000000000000000000000000000
        )
      )
      // offset revert reason
      mstore(add(fmp, 0x44), 0x80)
      // offset additional context
      mstore(add(fmp, 0x64), add(0xa0, encodedDataSize))
      // size revert reason
      mstore(add(fmp, 0x84), returndatasize())
      // revert reason
      returndatacopy(add(fmp, 0xa4), 0, returndatasize())
      // size additional context
      mstore(add(fmp, add(0xa4, encodedDataSize)), 0x04)
      // additional context
      mstore(
        add(fmp, add(0xc4, encodedDataSize)),
        and(additionalContext, 0xffffffff00000000000000000000000000000000000000000000000000000000)
      )
      revert(fmp, add(0xe4, encodedDataSize))
    }
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/KSRoles.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for managing roles for KyberSwap
library KSRoles {
  /// @notice Role for the operators
  bytes32 internal constant OPERATOR_ROLE = keccak256('OPERATOR_ROLE');

  /// @notice Role for the guardians
  bytes32 internal constant GUARDIAN_ROLE = keccak256('GUARDIAN_ROLE');

  /// @notice Role for the rescuers
  bytes32 internal constant RESCUER_ROLE = keccak256('RESCUER_ROLE');
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/token/PermitHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {IAllowanceTransfer} from '../../interfaces/IAllowanceTransfer.sol';
import {IDaiLikePermit} from '../../interfaces/IDaiLikePermit.sol';
import {IERC721Permit_v3} from '../../interfaces/IERC721Permit_v3.sol';
import {IERC721Permit_v4} from '../../interfaces/IERC721Permit_v4.sol';
import {CalldataDecoder} from '../calldata/CalldataDecoder.sol';

import {
  IERC20Permit
} from 'openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol';

library PermitHelper {
  using CalldataDecoder for bytes;

  function callERC20Permit(address token, address owner, bytes calldata permitData)
    internal
    returns (bool)
  {
    if (permitData.length == 32 * 5) {
      uint256 value = permitData.decodeUint256(0);
      uint256 deadline = permitData.decodeUint256(1);
      uint8 v = uint8(permitData.decodeUint256(2));
      bytes32 r = permitData.decodeBytes32(3);
      bytes32 s = permitData.decodeBytes32(4);

      try IERC20Permit(token).permit(owner, address(this), value, deadline, v, r, s) {
        return true;
      } catch {}
    } else if (permitData.length == 32 * 6) {
      uint256 nonce = permitData.decodeUint256(0);
      uint256 expiry = permitData.decodeUint256(1);
      bool allowed = permitData.decodeBool(2);
      uint8 v = uint8(permitData.decodeUint256(3));
      bytes32 r = permitData.decodeBytes32(4);
      bytes32 s = permitData.decodeBytes32(5);

      try IDaiLikePermit(token).permit(owner, address(this), nonce, expiry, allowed, v, r, s) {
        return true;
      } catch {}
    }
  }

  function callERC721Permit(address token, uint256 tokenId, bytes calldata permitData)
    internal
    returns (bool)
  {
    if (permitData.length == 32 * 4) {
      uint256 deadline = permitData.decodeUint256(0);
      uint8 v = uint8(permitData.decodeUint256(1));
      bytes32 r = permitData.decodeBytes32(2);
      bytes32 s = permitData.decodeBytes32(3);

      try IERC721Permit_v3(token).permit(address(this), tokenId, deadline, v, r, s) {
        return true;
      } catch {}
    } else if (permitData.length == 32 * 7) {
      uint256 deadline = permitData.decodeUint256(0);
      uint256 nonce = permitData.decodeUint256(1);
      bytes calldata signature = permitData.decodeBytes(2);

      try IERC721Permit_v4(token).permit(address(this), tokenId, deadline, nonce, signature) {
        return true;
      } catch {}
    }
  }

  function callPermit2(IAllowanceTransfer permit2, address owner, bytes calldata permit2Data)
    internal
    returns (bool)
  {
    IAllowanceTransfer.PermitBatch calldata permitBatch;
    assembly ('memory-safe') {
      permitBatch := add(permit2Data.offset, calldataload(permit2Data.offset))
    }
    bytes calldata signature = permit2Data.decodeBytes(1);

    try permit2.permit(owner, permitBatch, signature) {
      return true;
    } catch {}
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/token/TokenHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from '../CustomRevert.sol';

import {IERC20} from 'openzeppelin-contracts/contracts/interfaces/IERC20.sol';

/// @title Library for transferring, approving and holding native tokens and ERC20 tokens
/// @dev This library is based on CurrencyLibrary.sol from Uniswap/v4-core and SafeTransferLib.sol from transmissions11/solmate
library TokenHelper {
  /// @notice Additional context for ERC-7751 wrapped error when a native transfer fails
  error NativeTransferFailed();

  /// @notice Additional context for ERC-7751 wrapped error when an ERC20 transfer fails
  error ERC20TransferFailed();

  /// @notice Additional context for ERC-7751 wrapped error when an ERC20 approve fails
  error ERC20ApproveFailed();

  address internal constant NATIVE_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  function isNative(address token) internal pure returns (bool) {
    return token == NATIVE_ADDRESS || token == address(0);
  }

  function safeTransferNative(address to, uint256 amount) internal {
    if (amount == 0) return;

    bool success;
    assembly ('memory-safe') {
      // Transfer the ETH and revert if it fails.
      success := call(gas(), to, amount, 0, 0, 0, 0)
    }
    // revert with NativeTransferFailed, containing the bubbled up error as an argument
    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(to, bytes4(0), NativeTransferFailed.selector);
    }
  }

  function safeTransferERC20(address token, address to, uint256 amount) internal {
    if (amount == 0) return;

    bool success;
    assembly ('memory-safe') {
      // Get a pointer to some free memory.
      let fmp := mload(0x40)

      // Write the abi-encoded calldata into memory, beginning with the function selector.
      mstore(fmp, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
      mstore(add(fmp, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
      mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

      success := and(
        // Set success to whether the call reverted, if not we check it either
        // returned exactly 1 (can't just be non-zero data), or had no return data.
        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
        // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
        // Counterintuitively, this call must be positioned second to the or() call in the
        // surrounding and() call or else returndatasize() will be zero during the computation.
        call(gas(), token, 0, fmp, 68, 0, 32)
      )

      // Now clean the memory we used
      mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
      mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
      mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
    }
    // revert with ERC20TransferFailed, containing the bubbled up error as an argument
    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(
        token, IERC20.transfer.selector, ERC20TransferFailed.selector
      );
    }
  }

  function safeTransfer(address token, address to, uint256 amount) internal {
    if (isNative(token)) {
      safeTransferNative(to, amount);
    } else {
      safeTransferERC20(token, to, amount);
    }
  }

  function safeTransferFrom(address token, address from, address to, uint256 amount) internal {
    if (amount == 0) return;

    bool success;
    assembly ('memory-safe') {
      // Get a pointer to some free memory.
      let fmp := mload(0x40)

      // Write the abi-encoded calldata into memory, beginning with the function selector.
      mstore(fmp, 0x23b872dd00000000000000000000000000000000000000000000000000000000)
      mstore(add(fmp, 4), and(from, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "from" argument.
      mstore(add(fmp, 36), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
      mstore(add(fmp, 68), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

      success := and(
        // Set success to whether the call reverted, if not we check it either
        // returned exactly 1 (can't just be non-zero data), or had no return data.
        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
        // We use 100 because the length of our calldata totals up like so: 4 + 32 * 3.
        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
        // Counterintuitively, this call must be positioned second to the or() call in the
        // surrounding and() call or else returndatasize() will be zero during the computation.
        call(gas(), token, 0, fmp, 100, 0, 32)
      )

      // Now clean the memory we used
      mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `from` were stored here
      mstore(add(fmp, 0x20), 0) // 4 bytes of `from` and 28 bytes of `to` were stored here
      mstore(add(fmp, 0x40), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
      mstore(add(fmp, 0x60), 0) // 4 bytes of `amount` were stored here
    }
    // revert with ERC20TransferFailed, containing the bubbled up error as an argument
    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(
        token, IERC20.transferFrom.selector, ERC20TransferFailed.selector
      );
    }
  }

  function trySafeApprove(address token, address spender, uint256 amount)
    internal
    returns (bool success)
  {
    assembly ('memory-safe') {
      // Get a pointer to some free memory.
      let fmp := mload(0x40)

      // Write the abi-encoded calldata into memory, beginning with the function selector.
      mstore(fmp, 0x095ea7b300000000000000000000000000000000000000000000000000000000)
      mstore(add(fmp, 4), and(spender, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "spender" argument.
      mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

      success := and(
        // Set success to whether the call reverted, if not we check it either
        // returned exactly 1 (can't just be non-zero data), or had no return data.
        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
        // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
        // Counterintuitively, this call must be positioned second to the or() call in the
        // surrounding and() call or else returndatasize() will be zero during the computation.
        call(gas(), token, 0, fmp, 68, 0, 32)
      )

      // Now clean the memory we used
      mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
      mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
      mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
    }
  }

  function safeApprove(address token, address spender, uint256 amount) internal {
    // revert with ERC20ApproveFailed, containing the bubbled up error as an argument
    if (!trySafeApprove(token, spender, amount)) {
      CustomRevert.bubbleUpAndRevertWith(
        token, IERC20.approve.selector, ERC20ApproveFailed.selector
      );
    }
  }

  function forceApprove(address token, address spender, uint256 amount) internal {
    // meant to be used with tokens that require the approval to be set to zero before setting it to a non-zero value, such as USDT
    if (!trySafeApprove(token, spender, amount)) {
      safeApprove(token, spender, 0);
      safeApprove(token, spender, amount);
    }
  }

  function balanceOf(address token, address account) internal view returns (uint256) {
    if (isNative(token)) {
      return account.balance;
    } else {
      return IERC20(token).balanceOf(account);
    }
  }

  function selfBalance(address token) internal view returns (uint256) {
    if (isNative(token)) {
      return address(this).balance;
    } else {
      return IERC20(token).balanceOf(address(this));
    }
  }
}

// ============================================================
// FILE: src/interfaces/actions/IKSAllowanceHub.sol
// ============================================================

/// @title IKSAllowanceHub
pragma solidity ^0.8.0;

/// @notice Interface for the KSAllowanceHub
interface IKSAllowanceHub {
  /**
   * @notice Parameters for collecting ERC20 tokens from `msg.sender`
   * @param token The address of the tokens to collect
   * @param targets The addresses to transfer the tokens to
   * @param amounts The amounts to transfer to each target
   * @param permitData The permit data for the tokens
   */
  struct ERC20Params {
    address token;
    address[] targets;
    uint256[] amounts;
    bytes permitData;
  }

  /**
   * @notice Parameters for collecting an ERC721 token from `msg.sender`
   * @param token The address of the token to collect
   * @param tokenId The token ID to collect
   * @param target The address to transfer the token to
   * @param permitData The permit data for the token
   */
  struct ERC721Params {
    address token;
    uint256 tokenId;
    address target;
    bytes permitData;
  }

  /**
   * @notice Parameters for calling a generic router
   * @param router The address of the router
   * @param value The value to send along with the call
   * @param data The data to call the generic router with
   */
  struct GenericCall {
    address router;
    uint256 value;
    bytes data;
  }

  /**
   * @notice Permits, transfers ERC20 and ERC721 tokens, executes generic calls
   * @param erc20Params The ERC20 tokens to transfer
   * @param erc721Params The ERC721 tokens to transfer
   * @param genericCalls The generic calls to execute
   * @return results The results of the generic calls
   * @return gasUsed The amount of gas used
   */
  function permitTransferAndExecute(
    ERC20Params[] calldata erc20Params,
    ERC721Params[] calldata erc721Params,
    GenericCall[] calldata genericCalls
  ) external payable returns (bytes[] memory results, uint256 gasUsed);
}

// ============================================================
// FILE: src/interfaces/actions/IKSSwapRouterV2.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface IKSSwapRouterV2 {
  struct SwapDescriptionV2 {
    address srcToken;
    address dstToken;
    address[] srcReceivers; // addresses receiving srcToken to execute swap (amount only for swapping, not included fee receivers as version 1)
    uint256[] srcAmounts; // amounts sent to srcReceivers
    address[] feeReceivers; // fee receivers
    uint256[] feeAmounts; // fee amounts, coulbd be in absolute value or in bps
    address dstReceiver; // address receiving dstToken
    uint256 amount; // the total amount that caller spends
    uint256 minReturnAmount; // min returned amount to dstReceiver
    uint256 flags; // control flags use for router
    bytes permit; // ERC-20 permit data
  }

  struct SwapExecutionParams {
    address callTarget; // address to call to execute swap
    address approveTarget; // (optional) the address to allowed to spend Router's fund, could be used for function swapGeneric
    bytes targetData; // data forwarded to `callTarget` to execute swap
    SwapDescriptionV2 desc; // swap desciption
    bytes clientData; // client data
  }

  function swapGeneric(SwapExecutionParams memory)
    external
    payable
    returns (uint256 returnAmount, uint256 gasUsed);

  function swap(SwapExecutionParams memory)
    external
    payable
    returns (uint256 returnAmount, uint256 gasUsed);

  function swapSimpleMode(
    address caller,
    SwapDescriptionV2 memory desc,
    bytes calldata executorData,
    bytes calldata clientData
  ) external returns (uint256 returnAmount, uint256 gasUsed);
}

// ============================================================
// FILE: src/interfaces/actions/IKSSwapRouterV3.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IKSSwapRouterV3 {
  /// @notice Contains the additional data for an input token
  /// @param permitData The permit data
  /// @param feeRecipients The fee recipients
  /// @param fees The fees, either in bps or absolute value
  /// @param targets The targets to transfer the input token to
  /// @param amounts The amounts to transfer to the targets
  struct InputTokenData {
    // Permit method selection:
    // length = 5 * 32: use ERC20 `permit`
    // length = 6 * 32: use DAI `permit`
    // Transfer method selection:
    // length == 0: use Permit2 `transferFrom`
    // length != 0: use ERC20 `transferFrom`
    bytes permitData;
    address[] feeRecipients;
    uint256[] fees;
    address[] targets;
    uint256[] amounts;
  }

  /// @notice Contains the additional data for an output token
  /// @param minAmount The minimum output amount
  /// @param feeRecipients The fee recipients
  /// @param fees The fees, either in bps or absolute value
  struct OutputTokenData {
    uint256 minAmount;
    address[] feeRecipients;
    uint256[] fees;
  }

  /// @notice Contains the parameters for a swap
  /// @param inputTokens The input tokens
  /// @param inputAmounts The input amounts (only used for fee calculation)
  /// @param inputData The additional data for the input tokens
  /// @param outputTokens The output tokens
  /// @param outputData The additional data for the output tokens
  /// @param permit2Data The data to call permit2 with
  /// @param executor The executor to call
  /// @param executorData The data to pass to the executor
  /// @param recipient The recipient of the output tokens
  /// @param deadline The deadline for the swap
  /// @param clientData The client data
  struct SwapParams {
    address[] inputTokens;
    uint256[] inputAmounts;
    InputTokenData[] inputData;
    address[] outputTokens;
    OutputTokenData[] outputData;
    bytes permit2Data;
    address executor;
    bytes executorData;
    address recipient;
    uint256 deadline;
    bytes clientData;
  }

  /// @notice Entry point for swapping
  /// @param params The parameters for the swap
  function swap(SwapParams calldata params)
    external
    payable
    returns (uint256[] memory outputAmounts, uint256 gasUsed);

  /// @notice Returns the address of who called the swap function
  function msgSender() external view returns (address);
}

// ============================================================
// FILE: src/interfaces/actions/IKSZapRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface IKSZapRouter {
  /// @dev Contains general data for zapping and validation
  /// @param zapFlags packed value of dexType (uint8) | srcType (uint8)
  /// @param srcInfo src position info
  /// @param zapInfo extra info, depends on each dex type
  /// @param extraData extra data to be used for validation
  struct ZapDescription {
    uint16 zapFlags;
    bytes srcInfo;
    bytes zapInfo;
    bytes extraData;
  }

  /// @dev Contains execution data for zapping
  /// @param validator validator address, must be whitelisted one
  /// @param executor zap executor address, must be whitelisted one
  /// @param deadline make sure the request is not expired yet
  /// @param executorData data for zap execution
  /// @param clientData for events and tracking purposes
  struct ZapExecutionData {
    address validator;
    address executor;
    uint32 deadline;
    bytes executorData;
    bytes clientData;
  }

  /// @notice collect token, execute and validate zap
  function zap(ZapDescription calldata _desc, ZapExecutionData calldata _exe)
    external
    payable
    returns (bytes memory zapResults);
}

// ============================================================
// FILE: src/interfaces/hooks/IKSSmartIntentHook.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ActionData} from '../../types/ActionData.sol';
import {IntentData} from '../../types/IntentData.sol';
import {IKSSmartIntentRouter} from '../IKSSmartIntentRouter.sol';

interface IKSSmartIntentHook {
  /**
   * @notice Before execution hook
   * @param intentData the intent data
   * @param actionData the data of the action
   * @return fees the amount of fees to be taken
   * @return beforeExecutionData the data representing the state before execution
   */
  function beforeExecution(
    bytes32 intentHash,
    IntentData calldata intentData,
    ActionData calldata actionData
  ) external returns (uint256[] memory fees, bytes memory beforeExecutionData);

  /**
   * @notice After execution hook
   * @param intentData the intent data
   * @param beforeExecutionData the data returned from `beforeExecution`
   * @param actionResult the result of the action
   * @return tokens the tokens to be taken fees from and to be returned to the recipient
   * @return fees the fees to be taken
   * @return amounts the amounts of the tokens to be returned to the recipient
   * @return recipient the address of the recipient
   */
  function afterExecution(
    bytes32 intentHash,
    IntentData calldata intentData,
    bytes calldata beforeExecutionData,
    bytes calldata actionResult
  )
    external
    returns (
      address[] memory tokens,
      uint256[] memory fees,
      uint256[] memory amounts,
      address recipient
    );
}

// ============================================================
// FILE: src/interfaces/IKSSmartIntentRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ActionData} from '../types/ActionData.sol';
import {FeeConfig} from '../types/FeeInfo.sol';
import {IntentData} from '../types/IntentData.sol';

interface IKSSmartIntentRouter {
  /// @notice Thrown when total partner fee is greater than 100%
  error InvalidFeeConfig();

  /// @notice Thrown when the caller is not the main address
  error NotMainAddress();

  /// @notice Thrown when the action is expired
  error ActionExpired();

  /// @notice Thrown when the intent has not been delegated
  error IntentNotDelegated();

  /// @notice Thrown when the intent has already been delegated
  error IntentDelegated();

  /// @notice Thrown when the intent has already been revoked
  error IntentRevoked();

  /// @notice Thrown when the signature is not from the main address
  error InvalidMainAddressSignature();

  /// @notice Thrown when the signature is not from the delegated key
  error InvalidDelegatedKeySignature();

  /// @notice Thrown when the signature is not from the guardian
  error InvalidGuardianSignature();

  /// @notice Thrown when the action contract and selector not found in intent
  error InvalidActionSelectorId(uint256 actionSelectorId);

  /// @notice Thrown when a nonce has already been used
  error NonceAlreadyUsed(bytes32 intentHash, uint256 nonce);

  /// @notice Thrown when collecting more than the intent allowance for ERC20
  error ERC20InsufficientIntentAllowance(
    bytes32 intentHash, address token, uint256 allowance, uint256 needed
  );

  /// @notice Emitted when the forwarder is updated
  event UpdateForwarder(address newForwarder);

  /// @notice Emitted when an intent is delegated
  event DelegateIntent(address indexed mainAddress, bytes delegatedKey, IntentData intentData);

  /// @notice Emitted when an intent is revoked
  event RevokeIntent(bytes32 indexed intentHash);

  /// @notice Emitted when an intent is executed
  event ExecuteIntent(bytes32 indexed intentHash, ActionData actionData, bytes actionResult);

  /// @notice Emitted when a nonce is consumed
  event UseNonce(bytes32 indexed intentHash, uint256 nonce);

  /// @notice Emitted when the fee is collected before execution
  event RecordVolumeAndFees(
    address indexed token,
    address indexed protocolRecipient,
    FeeConfig[] partnerFeeConfigs,
    uint256 protocolFeeAmount,
    uint256[] partnersFeeAmounts,
    bool beforeExecution,
    uint256 totalAmount
  );

  enum IntentStatus {
    NOT_DELEGATED,
    DELEGATED,
    REVOKED
  }

  /**
   * @notice Delegate the intent to the delegated key
   * @param intentData The data for the intent
   */
  function delegate(IntentData calldata intentData) external;

  /**
   * @notice Revoke the delegated intent
   * @param intentData The intent data to revoke
   */
  function revoke(IntentData calldata intentData) external;

  /**
   * @notice Execute the intent
   * @param intentData The data for the intent
   * @param dkSignature The signature of the delegated key
   * @param guardian The address of the guardian
   * @param gdSignature The signature of the guardian
   * @param actionData The data for the action
   */
  function execute(
    IntentData calldata intentData,
    bytes calldata dkSignature,
    address guardian,
    bytes calldata gdSignature,
    ActionData calldata actionData
  ) external;

  /**
   * @notice Execute the intent with the signed data and main address signature
   * @param intentData The data for the intent
   * @param maSignature The signature of the main address
   * @param dkSignature The signature of the delegated key
   * @param guardian The address of the guardian
   * @param gdSignature The signature of the guardian
   * @param actionData The data for the action
   */
  function executeWithSignedIntent(
    IntentData calldata intentData,
    bytes calldata maSignature,
    bytes calldata dkSignature,
    address guardian,
    bytes calldata gdSignature,
    ActionData calldata actionData
  ) external;

  /**
   * @notice Return the ERC20 allowance for a specific intent
   * @param intentHash The hash of the intent
   * @param token The address of the ERC20 token
   * @return allowance The allowance for the specified token
   */
  function erc20Allowances(bytes32 intentHash, address token)
    external
    view
    returns (uint256 allowance);

  /**
   * @notice Update the forwarder address
   * @param newForwarder The new forwarder address
   */
  function updateForwarder(address newForwarder) external;

  /// @notice mapping of nonces consumed by each intent, where a nonce is a single bit on the 256-bit bitmap
  /// @dev word is at most type(uint248).max
  function nonces(bytes32 intentHash, uint256 word) external view returns (uint256 bitmap);

  /// @notice Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
  function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: src/KSSmartIntentHasher.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ActionData} from './types/ActionData.sol';
import {ActionWitnessLibrary} from './types/ActionWitness.sol';
import {IntentData} from './types/IntentData.sol';

contract KSSmartIntentHasher {
  function hashIntentData(IntentData calldata intentData) public pure returns (bytes32) {
    return intentData.hash();
  }

  function hashActionWitness(bytes32 intentHash, ActionData calldata actionData)
    public
    pure
    returns (bytes32)
  {
    return keccak256(
      abi.encode(ActionWitnessLibrary.ACTION_WITNESS_TYPE_HASH, intentHash, actionData.hash())
    );
  }
}

// ============================================================
// FILE: src/KSSmartIntentRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {KSSmartIntentHasher} from './KSSmartIntentHasher.sol';
import {KSSmartIntentRouterAccounting} from './KSSmartIntentRouterAccounting.sol';
import {KSSmartIntentRouterNonces} from './KSSmartIntentRouterNonces.sol';

import {IKSSmartIntentRouter} from './interfaces/IKSSmartIntentRouter.sol';
import {IKSAllowanceHub} from './interfaces/actions/IKSAllowanceHub.sol';
import {IKSSwapRouterV2} from './interfaces/actions/IKSSwapRouterV2.sol';
import {IKSSwapRouterV3} from './interfaces/actions/IKSSwapRouterV3.sol';
import {IKSZapRouter} from './interfaces/actions/IKSZapRouter.sol';
import {HookLibrary} from './libraries/HookLibrary.sol';

import {ActionData} from './types/ActionData.sol';
import {ActionWitness} from './types/ActionWitness.sol';
import {IntentCoreData} from './types/IntentCoreData.sol';
import {IntentData} from './types/IntentData.sol';

import {IERC7913SignatureVerifier} from 'openzeppelin-contracts/contracts/interfaces/IERC7913.sol';
import {Address} from 'openzeppelin-contracts/contracts/utils/Address.sol';
import {
  ReentrancyGuardTransient
} from 'openzeppelin-contracts/contracts/utils/ReentrancyGuardTransient.sol';
import {EIP712} from 'openzeppelin-contracts/contracts/utils/cryptography/EIP712.sol';
import {
  SignatureChecker
} from 'openzeppelin-contracts/contracts/utils/cryptography/SignatureChecker.sol';

import {ManagementBase} from 'ks-common-sc/src/base/ManagementBase.sol';
import {IKSGenericForwarder} from 'ks-common-sc/src/interfaces/IKSGenericForwarder.sol';
import {KSRoles} from 'ks-common-sc/src/libraries/KSRoles.sol';
import {CalldataDecoder} from 'ks-common-sc/src/libraries/calldata/CalldataDecoder.sol';

contract KSSmartIntentRouter is
  KSSmartIntentRouterAccounting,
  KSSmartIntentRouterNonces,
  ReentrancyGuardTransient,
  EIP712('KSSmartIntentRouter', '1')
{
  using Address for address;
  using SignatureChecker for address;
  using CalldataDecoder for bytes;

  KSSmartIntentHasher internal immutable hasher;

  constructor(
    address initialAdmin,
    address[] memory initialGuardians,
    address[] memory initialRescuers,
    address[] memory initialActionContracts,
    address _forwarder
  ) ManagementBase(0, initialAdmin) {
    _batchGrantRole(KSRoles.GUARDIAN_ROLE, initialGuardians);
    _batchGrantRole(KSRoles.RESCUER_ROLE, initialRescuers);
    _batchGrantRole(ACTION_CONTRACT_ROLE, initialActionContracts);

    _updateForwarder(_forwarder);

    hasher = new KSSmartIntentHasher();
  }

  receive() external payable {}

  /// @inheritdoc IKSSmartIntentRouter
  function updateForwarder(address newForwarder) public onlyRole(DEFAULT_ADMIN_ROLE) {
    _updateForwarder(newForwarder);
  }

  function _updateForwarder(address newForwarder) internal {
    forwarder = IKSGenericForwarder(newForwarder);

    emit UpdateForwarder(newForwarder);
  }

  /// @inheritdoc IKSSmartIntentRouter
  function delegate(IntentData calldata intentData) public whenNotPaused {
    if (intentData.coreData.mainAddress != msg.sender) {
      revert NotMainAddress();
    }

    _delegate(intentData, _hashTypedDataV4(hasher.hashIntentData(intentData)));
  }

  /// @inheritdoc IKSSmartIntentRouter
  function revoke(IntentData calldata intentData) public {
    if (intentData.coreData.mainAddress != msg.sender) {
      revert NotMainAddress();
    }

    bytes32 intentHash = _hashTypedDataV4(hasher.hashIntentData(intentData));
    intentStatuses[intentHash] = IntentStatus.REVOKED;

    emit RevokeIntent(intentHash);
  }

  /// @inheritdoc IKSSmartIntentRouter
  function execute(
    IntentData calldata intentData,
    bytes calldata dkSignature,
    address guardian,
    bytes calldata gdSignature,
    ActionData calldata actionData
  ) public whenNotPaused {
    bytes32 intentHash = _hashTypedDataV4(hasher.hashIntentData(intentData));
    _execute(intentHash, intentData, dkSignature, guardian, gdSignature, actionData);
  }

  /// @inheritdoc IKSSmartIntentRouter
  function executeWithSignedIntent(
    IntentData calldata intentData,
    bytes calldata maSignature,
    bytes calldata dkSignature,
    address guardian,
    bytes calldata gdSignature,
    ActionData calldata actionData
  ) public whenNotPaused {
    bytes32 intentHash = _hashTypedDataV4(hasher.hashIntentData(intentData));
    if (!intentData.coreData.mainAddress.isValidSignatureNowCalldata(intentHash, maSignature)) {
      revert InvalidMainAddressSignature();
    }

    _delegate(intentData, intentHash);
    _execute(intentHash, intentData, dkSignature, guardian, gdSignature, actionData);
  }

  /// @inheritdoc IKSSmartIntentRouter
  function DOMAIN_SEPARATOR() external view returns (bytes32) {
    return _domainSeparatorV4();
  }

  function _delegate(IntentData calldata intentData, bytes32 intentHash)
    internal
    checkLengths(
      intentData.coreData.actionContracts.length, intentData.coreData.actionSelectors.length
    )
  {
    IntentCoreData calldata coreData = intentData.coreData;

    _checkIntentStatus(intentHash, IntentStatus.NOT_DELEGATED);

    intentStatuses[intentHash] = IntentStatus.DELEGATED;
    _approveTokens(intentHash, intentData.tokenData, coreData.mainAddress);

    emit DelegateIntent(coreData.mainAddress, coreData.delegatedKey, intentData);
  }

  function _execute(
    bytes32 intentHash,
    IntentData calldata intentData,
    bytes calldata dkSignature,
    address guardian,
    bytes calldata gdSignature,
    ActionData calldata actionData
  ) internal nonReentrant {
    _checkIntentStatus(intentHash, IntentStatus.DELEGATED);
    if (actionData.actionSelectorId >= intentData.coreData.actionContracts.length) {
      revert InvalidActionSelectorId(actionData.actionSelectorId);
    }
    if (block.timestamp > actionData.deadline) {
      revert ActionExpired();
    }
    _checkRole(KSRoles.GUARDIAN_ROLE, guardian);

    _useUnorderedNonce(intentHash, actionData.nonce);

    _validateActionData(
      intentHash, intentData.coreData, actionData, dkSignature, guardian, gdSignature
    );

    (uint256[] memory fees, bytes memory beforeExecutionData) =
      HookLibrary.beforeExecution(intentHash, intentData, actionData);

    address actionContract = intentData.coreData.actionContracts[actionData.actionSelectorId];
    bytes4 actionSelector = intentData.coreData.actionSelectors[actionData.actionSelectorId];

    _checkRole(ACTION_CONTRACT_ROLE, actionContract);

    IKSGenericForwarder _forwarder = _needForwarder(actionSelector);
    _collectTokens(
      intentHash,
      intentData.coreData.mainAddress,
      actionContract,
      intentData.tokenData,
      actionData,
      _forwarder,
      fees
    );

    bytes memory actionResult;
    {
      bytes memory data = abi.encodePacked(actionSelector, actionData.actionCalldata);
      if (address(_forwarder) != address(0)) {
        actionResult = _forwarder.forward(actionContract, data);
      } else {
        actionResult = actionContract.functionCall(data);
      }
    }

    HookLibrary.afterExecution(
      intentHash, intentData, actionData, beforeExecutionData, actionResult
    );

    emit ExecuteIntent(intentHash, actionData, actionResult);
  }

  function _needForwarder(bytes4 selector) internal view returns (IKSGenericForwarder) {
    if (
      selector == IKSSwapRouterV2.swap.selector
        || selector == IKSSwapRouterV2.swapSimpleMode.selector
        || selector == IKSSwapRouterV3.swap.selector || selector == IKSZapRouter.zap.selector
        || selector == IKSAllowanceHub.permitTransferAndExecute.selector
    ) {
      return IKSGenericForwarder(address(0));
    }
    return forwarder;
  }

  function _validateActionData(
    bytes32 intentHash,
    IntentCoreData calldata coreData,
    ActionData calldata actionData,
    bytes calldata dkSignature,
    address guardian,
    bytes calldata gdSignature
  ) internal view {
    bytes32 witnessHash = _hashTypedDataV4(hasher.hashActionWitness(intentHash, actionData));

    if (coreData.signatureVerifier == address(0)) {
      /// @dev use ECDSA scheme
      address delegatedAddress = coreData.delegatedKey.decodeAddress();
      if (
        msg.sender != delegatedAddress
          && !delegatedAddress.isValidSignatureNowCalldata(witnessHash, dkSignature)
      ) {
        revert InvalidDelegatedKeySignature();
      }
    } else {
      if (
        IERC7913SignatureVerifier(coreData.signatureVerifier)
            .verify(coreData.delegatedKey, witnessHash, dkSignature)
          != IERC7913SignatureVerifier.verify.selector
      ) {
        revert InvalidDelegatedKeySignature();
      }
    }

    if (msg.sender != guardian) {
      if (!guardian.isValidSignatureNowCalldata(witnessHash, gdSignature)) {
        revert InvalidGuardianSignature();
      }
    }
  }

  function _checkIntentStatus(bytes32 intentHash, IntentStatus expectedStatus) internal view {
    IntentStatus actualStatus = intentStatuses[intentHash];
    if (actualStatus != expectedStatus) {
      if (actualStatus == IntentStatus.DELEGATED) {
        revert IntentDelegated();
      } else if (actualStatus == IntentStatus.REVOKED) {
        revert IntentRevoked();
      } else {
        revert IntentNotDelegated();
      }
    }
  }
}

// ============================================================
// FILE: src/KSSmartIntentRouterAccounting.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {KSSmartIntentStorage} from './KSSmartIntentStorage.sol';

import {ActionData} from './types/ActionData.sol';
import {ERC20Data, ERC20DataLibrary} from './types/ERC20Data.sol';
import {ERC721Data, ERC721DataLibrary} from './types/ERC721Data.sol';
import {TokenData} from './types/TokenData.sol';

import {ManagementRescuable} from 'ks-common-sc/src/base/ManagementRescuable.sol';
import {IKSGenericForwarder} from 'ks-common-sc/src/interfaces/IKSGenericForwarder.sol';
import {PermitHelper} from 'ks-common-sc/src/libraries/token/PermitHelper.sol';
import {TokenHelper} from 'ks-common-sc/src/libraries/token/TokenHelper.sol';

import {ManagementPausable} from 'ks-common-sc/src/base/ManagementPausable.sol';
import {IERC721Receiver} from 'openzeppelin-contracts/contracts/interfaces/IERC721Receiver.sol';

abstract contract KSSmartIntentRouterAccounting is
  KSSmartIntentStorage,
  ManagementRescuable,
  ManagementPausable
{
  using TokenHelper for address;
  using PermitHelper for address;

  mapping(bytes32 => mapping(address => uint256)) public erc20Allowances;

  /// @notice Set the tokens' allowances for the intent
  function _approveTokens(bytes32 intentHash, TokenData calldata tokenData, address mainAddress)
    internal
  {
    for (uint256 i = 0; i < tokenData.erc20Data.length; i++) {
      ERC20Data calldata erc20Data = tokenData.erc20Data[i];

      erc20Allowances[intentHash][erc20Data.token] = erc20Data.amount;

      if (erc20Data.permitData.length > 0) {
        erc20Data.token.callERC20Permit(mainAddress, erc20Data.permitData);
      }
    }
    for (uint256 i = 0; i < tokenData.erc721Data.length; i++) {
      ERC721Data calldata erc721Data = tokenData.erc721Data[i];

      if (erc721Data.permitData.length > 0) {
        erc721Data.token.callERC721Permit(erc721Data.tokenId, erc721Data.permitData);
      }
    }
  }

  /// @notice Transfer the tokens to this contract and update the allowances
  function _collectTokens(
    bytes32 intentHash,
    address mainAddress,
    address actionContract,
    TokenData calldata tokenData,
    ActionData calldata actionData,
    IKSGenericForwarder _forwarder,
    uint256[] memory fees
  ) internal checkLengths(actionData.erc20Ids.length, actionData.erc20Amounts.length) {
    uint256 approvalFlags = actionData.approvalFlags;

    for (uint256 i = 0; i < actionData.erc20Ids.length; i++) {
      address token = tokenData.erc20Data[actionData.erc20Ids[i]].token;

      _spentAllowance(intentHash, token, actionData.erc20Amounts[i]);

      ERC20DataLibrary.collect(
        token,
        actionData.erc20Amounts[i],
        mainAddress,
        actionContract,
        fees[i],
        _checkFlag(approvalFlags, i),
        _forwarder,
        actionData.feeInfo.partnerFeeConfigs[i],
        actionData.feeInfo.protocolRecipient
      );
    }
    approvalFlags >>= actionData.erc20Ids.length;

    for (uint256 i = 0; i < actionData.erc721Ids.length; i++) {
      address token = tokenData.erc721Data[actionData.erc721Ids[i]].token;
      uint256 tokenId = tokenData.erc721Data[actionData.erc721Ids[i]].tokenId;

      ERC721DataLibrary.collect(
        token, tokenId, mainAddress, actionContract, _forwarder, _checkFlag(approvalFlags, i)
      );
    }
  }

  function _spentAllowance(bytes32 intentHash, address token, uint256 amount) internal {
    uint256 allowance = erc20Allowances[intentHash][token];
    if (allowance < amount) {
      revert ERC20InsufficientIntentAllowance(intentHash, token, allowance, amount);
    }

    unchecked {
      erc20Allowances[intentHash][token] = allowance - amount;
    }
  }

  function onERC721Received(address, address, uint256, bytes calldata)
    external
    pure
    returns (bytes4)
  {
    return IERC721Receiver.onERC721Received.selector;
  }

  function supportsInterface(bytes4 interfaceId) public view override returns (bool) {
    return interfaceId == type(IERC721Receiver).interfaceId || super.supportsInterface(interfaceId);
  }

  function _checkFlag(uint256 flag, uint256 index) internal pure returns (bool result) {
    assembly ('memory-safe') {
      result := and(shr(index, flag), 1)
    }
  }
}

// ============================================================
// FILE: src/KSSmartIntentRouterNonces.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IKSSmartIntentRouter} from './interfaces/IKSSmartIntentRouter.sol';

abstract contract KSSmartIntentRouterNonces is IKSSmartIntentRouter {
  /// @inheritdoc IKSSmartIntentRouter
  mapping(bytes32 intentHash => mapping(uint256 word => uint256 bitmap)) public nonces;

  function _useUnorderedNonce(bytes32 intentHash, uint256 nonce) internal {
    uint256 wordPos = nonce >> 8;
    uint256 bitPos = uint8(nonce);

    uint256 bit = 1 << bitPos;
    uint256 flipped = nonces[intentHash][wordPos] ^= bit;
    if (flipped & bit == 0) {
      revert NonceAlreadyUsed(intentHash, nonce);
    }

    emit UseNonce(intentHash, nonce);
  }
}

// ============================================================
// FILE: src/KSSmartIntentStorage.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IKSSmartIntentRouter} from './interfaces/IKSSmartIntentRouter.sol';

import {IKSGenericForwarder} from 'ks-common-sc/src/interfaces/IKSGenericForwarder.sol';

abstract contract KSSmartIntentStorage is IKSSmartIntentRouter {
  bytes32 internal constant ACTION_CONTRACT_ROLE = keccak256('ACTION_CONTRACT_ROLE');

  mapping(bytes32 => IntentStatus) internal intentStatuses;

  IKSGenericForwarder internal forwarder;
}

// ============================================================
// FILE: src/libraries/BitMask.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

uint256 constant MASK_1_BIT = 0x1;
uint256 constant MASK_8_BITS = 0xff;
uint256 constant MASK_24_BITS = 0xffffff;
uint256 constant MASK_127_BITS = 0x7fffffffffffffffffffffffffffffff;
uint256 constant MASK_128_BITS = 0xffffffffffffffffffffffffffffffff;
uint160 constant MASK_160_BITS = 0x00ffffffffffffffffffffffffffffffffffffffff;

uint256 constant MASK_BYTES_4 = 0xffffffff00000000000000000000000000000000000000000000000000000000;

// ============================================================
// FILE: src/libraries/HookLibrary.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ICommon} from 'ks-common-sc/src/interfaces/ICommon.sol';
import {TokenHelper} from 'ks-common-sc/src/libraries/token/TokenHelper.sol';

import {IKSSmartIntentHook} from '../interfaces/hooks/IKSSmartIntentHook.sol';

import {ActionData} from '../types/ActionData.sol';
import {ERC20Data, ERC20DataLibrary} from '../types/ERC20Data.sol';
import {IntentData} from '../types/IntentData.sol';

library HookLibrary {
  using TokenHelper for address;
  using ERC20DataLibrary for address;

  function beforeExecution(
    bytes32 intentHash,
    IntentData calldata intentData,
    ActionData calldata actionData
  ) internal returns (uint256[] memory fees, bytes memory beforeExecutionData) {
    (fees, beforeExecutionData) = IKSSmartIntentHook(intentData.coreData.hook)
      .beforeExecution(intentHash, intentData, actionData);

    if (actionData.erc20Ids.length != fees.length) {
      revert ICommon.MismatchedArrayLengths();
    }
  }

  function afterExecution(
    bytes32 intentHash,
    IntentData calldata intentData,
    ActionData calldata actionData,
    bytes memory beforeExecutionData,
    bytes memory actionResult
  ) internal {
    (address[] memory tokens, uint256[] memory fees, uint256[] memory amounts, address recipient) = IKSSmartIntentHook(
        intentData.coreData.hook
      ).afterExecution(intentHash, intentData, beforeExecutionData, actionResult);

    if (tokens.length != fees.length) {
      revert ICommon.MismatchedArrayLengths();
    }
    if (tokens.length != amounts.length) {
      revert ICommon.MismatchedArrayLengths();
    }

    if (fees.length == 0) {
      return;
    }

    if (tokens.length != actionData.feeInfo.partnerFeeConfigs.length) {
      revert ICommon.MismatchedArrayLengths();
    }

    for (uint256 i = 0; i < tokens.length; i++) {
      tokens[i].safeTransfer(recipient, amounts[i]);

      tokens[i].collectFeeAfterExecution(
        amounts[i] + fees[i],
        fees[i],
        actionData.feeInfo.partnerFeeConfigs[i],
        actionData.feeInfo.protocolRecipient
      );
    }
  }
}

// ============================================================
// FILE: src/types/ActionData.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {FeeInfo} from './FeeInfo.sol';
import {IntentCoreData} from './IntentCoreData.sol';
import {TokenData} from './TokenData.sol';

/**
 * @notice Data structure for action
 * @param erc20Ids The IDs of the ERC20 tokens in the intent data
 * @param erc20Amounts The amounts of the ERC20 tokens
 * @param erc721Ids The IDs of the ERC721 tokens in the intent data
 * @param feeInfo The fee info for the action
 * @param approvalFlags The approval flags for the tokens
 * @param actionSelectorId The ID of the action selector
 * @param actionCalldata The calldata for the action
 * @param hookActionData The action data for the hook
 * @param extraData The extra data for the action
 * @param deadline The deadline for the action
 * @param nonce The nonce for the action
 */
struct ActionData {
  uint256[] erc20Ids;
  uint256[] erc20Amounts;
  uint256[] erc721Ids;
  FeeInfo feeInfo;
  uint256 approvalFlags;
  uint256 actionSelectorId;
  bytes actionCalldata;
  bytes hookActionData;
  bytes extraData;
  uint256 deadline;
  uint256 nonce;
}

using ActionDataLibrary for ActionData global;

library ActionDataLibrary {
  bytes32 constant ACTION_DATA_TYPE_HASH = keccak256(
    abi.encodePacked(
      'ActionData(uint256[] erc20Ids,uint256[] erc20Amounts,uint256[] erc721Ids,FeeInfo feeInfo,uint256 approvalFlags,uint256 actionSelectorId,bytes actionCalldata,bytes hookActionData,bytes extraData,uint256 deadline,uint256 nonce)FeeInfo(address protocolRecipient,uint256[][] partnerFeeConfigs)'
    )
  );

  function hash(ActionData calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(
        ACTION_DATA_TYPE_HASH,
        keccak256(abi.encodePacked(self.erc20Ids)),
        keccak256(abi.encodePacked(self.erc20Amounts)),
        keccak256(abi.encodePacked(self.erc721Ids)),
        self.feeInfo.hash(),
        self.approvalFlags,
        self.actionSelectorId,
        keccak256(self.actionCalldata),
        keccak256(self.hookActionData),
        keccak256(self.extraData),
        self.deadline,
        self.nonce
      )
    );
  }
}

// ============================================================
// FILE: src/types/ActionWitness.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ActionData} from './ActionData.sol';

struct ActionWitness {
  bytes32 intentHash;
  ActionData actionData;
}

using ActionWitnessLibrary for ActionWitness global;

library ActionWitnessLibrary {
  bytes32 constant ACTION_WITNESS_TYPE_HASH = keccak256(
    abi.encodePacked(
      'ActionWitness(bytes32 intentHash,ActionData actionData)ActionData(uint256[] erc20Ids,uint256[] erc20Amounts,uint256[] erc721Ids,FeeInfo feeInfo,uint256 approvalFlags,uint256 actionSelectorId,bytes actionCalldata,bytes hookActionData,bytes extraData,uint256 deadline,uint256 nonce)FeeInfo(address protocolRecipient,uint256[][] partnerFeeConfigs)'
    )
  );

  function hash(ActionWitness calldata self) internal pure returns (bytes32) {
    return keccak256(abi.encode(ACTION_WITNESS_TYPE_HASH, self.intentHash, self.actionData.hash()));
  }
}

// ============================================================
// FILE: src/types/ERC20Data.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IKSGenericForwarder} from 'ks-common-sc/src/interfaces/IKSGenericForwarder.sol';
import {PermitHelper} from 'ks-common-sc/src/libraries/token/PermitHelper.sol';
import {TokenHelper} from 'ks-common-sc/src/libraries/token/TokenHelper.sol';

import {IKSSmartIntentRouter} from '../interfaces/IKSSmartIntentRouter.sol';
import {FeeConfig, FeeInfo, FeeInfoLibrary} from './FeeInfo.sol';

import {IERC20} from 'openzeppelin-contracts/contracts/token/ERC20/IERC20.sol';

/**
 * @notice Data structure for ERC20 token
 * @param token The address of the ERC20 token
 * @param amount The amount of the ERC20 token
 * @param permitData The permit data for the ERC20 token
 */
struct ERC20Data {
  address token;
  uint256 amount;
  bytes permitData;
}

using ERC20DataLibrary for ERC20Data global;

library ERC20DataLibrary {
  using PermitHelper for address;
  using TokenHelper for address;

  bytes32 constant ERC20_DATA_TYPE_HASH =
    keccak256(abi.encodePacked('ERC20Data(address token,uint256 amount,bytes permitData)'));

  function hash(ERC20Data calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(ERC20_DATA_TYPE_HASH, self.token, self.amount, keccak256(self.permitData))
    );
  }

  function collect(
    address token,
    uint256 amount,
    address mainAddress,
    address actionContract,
    uint256 fee,
    bool approvalFlag,
    IKSGenericForwarder forwarder,
    FeeConfig[] calldata partnerFeeConfigs,
    address protocolRecipient
  ) internal {
    if (address(forwarder) == address(0)) {
      token.safeTransferFrom(mainAddress, address(this), amount - fee);
      if (approvalFlag) {
        token.forceApprove(actionContract, type(uint256).max);
      }
    } else {
      token.safeTransferFrom(mainAddress, address(forwarder), amount - fee);
      if (approvalFlag) {
        _forwardApproveInf(forwarder, token, actionContract);
      }
    }

    (uint256 protocolFeeAmount, uint256[] memory partnersFeeAmounts) =
      FeeInfoLibrary.computeFees(partnerFeeConfigs, fee);

    uint256 protocolTotalReceived = protocolFeeAmount;
    for (uint256 i = 0; i < partnersFeeAmounts.length; i++) {
      if (partnerFeeConfigs[i].feeMode()) {
        protocolTotalReceived += partnersFeeAmounts[i];
      } else {
        token.safeTransferFrom(
          mainAddress, partnerFeeConfigs[i].partnerRecipient(), partnersFeeAmounts[i]
        );
      }
    }
    token.safeTransferFrom(mainAddress, protocolRecipient, protocolTotalReceived);

    emit IKSSmartIntentRouter.RecordVolumeAndFees(
      token,
      protocolRecipient,
      partnerFeeConfigs,
      protocolFeeAmount,
      partnersFeeAmounts,
      true,
      amount
    );
  }

  function collectFeeAfterExecution(
    address token,
    uint256 amount,
    uint256 fee,
    FeeConfig[] calldata partnerFeeConfigs,
    address protocolRecipient
  ) internal {
    (uint256 protocolFeeAmount, uint256[] memory partnersFeeAmounts) =
      FeeInfoLibrary.computeFees(partnerFeeConfigs, fee);

    uint256 protocolTotalReceived = protocolFeeAmount;
    for (uint256 i = 0; i < partnersFeeAmounts.length; i++) {
      if (partnerFeeConfigs[i].feeMode()) {
        protocolTotalReceived += partnersFeeAmounts[i];
      } else {
        token.safeTransfer(partnerFeeConfigs[i].partnerRecipient(), partnersFeeAmounts[i]);
      }
    }
    token.safeTransfer(protocolRecipient, protocolTotalReceived);

    emit IKSSmartIntentRouter.RecordVolumeAndFees(
      token,
      protocolRecipient,
      partnerFeeConfigs,
      protocolFeeAmount,
      partnersFeeAmounts,
      false,
      amount
    );
  }

  function _forwardApproveInf(IKSGenericForwarder forwarder, address token, address spender)
    internal
  {
    bytes memory approveCalldata = abi.encodeCall(IERC20.approve, (spender, type(uint256).max));
    try forwarder.forward(token, approveCalldata) {}
    catch {
      approveCalldata = abi.encodeCall(IERC20.approve, (spender, 0));
      forwarder.forward(token, approveCalldata);
      approveCalldata = abi.encodeCall(IERC20.approve, (spender, type(uint256).max));
      forwarder.forward(token, approveCalldata);
    }
  }
}

// ============================================================
// FILE: src/types/ERC721Data.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IKSGenericForwarder} from 'ks-common-sc/src/interfaces/IKSGenericForwarder.sol';
import {PermitHelper} from 'ks-common-sc/src/libraries/token/PermitHelper.sol';

import {IERC721} from 'openzeppelin-contracts/contracts/interfaces/IERC721.sol';

/**
 * @notice Data structure for ERC721 token
 * @param token The address of the ERC721 token
 * @param tokenId The ID of the ERC721 token
 * @param permitData The permit data for the ERC721 token
 */
struct ERC721Data {
  address token;
  uint256 tokenId;
  bytes permitData;
}

using ERC721DataLibrary for ERC721Data global;

library ERC721DataLibrary {
  using PermitHelper for address;

  bytes32 constant ERC721_DATA_TYPE_HASH =
    keccak256(abi.encodePacked('ERC721Data(address token,uint256 tokenId,bytes permitData)'));

  function hash(ERC721Data calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(ERC721_DATA_TYPE_HASH, self.token, self.tokenId, keccak256(self.permitData))
    );
  }

  function collect(
    address token,
    uint256 tokenId,
    address mainAddress,
    address actionContract,
    IKSGenericForwarder forwarder,
    bool approvalFlag
  ) internal {
    if (address(forwarder) == address(0)) {
      IERC721(token).safeTransferFrom(mainAddress, address(this), tokenId);
      if (approvalFlag) {
        IERC721(token).approve(actionContract, tokenId);
      }
    } else {
      IERC721(token).safeTransferFrom(mainAddress, address(forwarder), tokenId);
      if (approvalFlag) {
        bytes memory approveCalldata = abi.encodeCall(IERC721.approve, (actionContract, tokenId));
        forwarder.forward(token, approveCalldata);
      }
    }
  }
}

// ============================================================
// FILE: src/types/FeeInfo.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IKSSmartIntentRouter} from '../interfaces/IKSSmartIntentRouter.sol';

import '../libraries/BitMask.sol';
/**
 * @notice FeeConfig is packed version of solidity structure.
 *
 * Layout: 1 bit feeMode | 24 bits partnerFee | 160 bits partnerRecipient
 */

type FeeConfig is uint256;

/**
 * @notice FeeInfo is a struct that contains the protocol recipient and the fee configs for the partners
 * @param protocolRecipient The protocol recipient
 * @param partnerFeeConfigs The fee configs for the partners
 */
struct FeeInfo {
  address protocolRecipient;
  FeeConfig[][] partnerFeeConfigs;
}

using FeeInfoLibrary for FeeInfo global;
using FeeInfoLibrary for FeeConfig global;

library FeeInfoLibrary {
  uint256 internal constant PROTOCOL_BPS_OFFSET = 160;
  uint256 internal constant FEE_MODE_OFFSET = 184;
  uint256 internal constant FEE_DENOMINATOR = 1_000_000;

  bytes32 constant FEE_INFO_TYPE_HASH =
    keccak256(abi.encodePacked('FeeInfo(address protocolRecipient,uint256[][] partnerFeeConfigs)'));

  function feeMode(FeeConfig self) internal pure returns (bool _feeMode) {
    assembly ('memory-safe') {
      _feeMode := and(shr(FEE_MODE_OFFSET, self), MASK_1_BIT)
    }
  }

  function partnerFee(FeeConfig self) internal pure returns (uint24 _partnerFee) {
    assembly ('memory-safe') {
      _partnerFee := and(shr(PROTOCOL_BPS_OFFSET, self), MASK_24_BITS)
    }
  }

  function partnerRecipient(FeeConfig self) internal pure returns (address _partnerRecipient) {
    assembly ('memory-safe') {
      _partnerRecipient := and(self, MASK_160_BITS)
    }
  }

  function computeFees(FeeConfig[] calldata self, uint256 totalAmount)
    internal
    pure
    returns (uint256 protocolFeeAmount, uint256[] memory partnersFeeAmounts)
  {
    unchecked {
      partnersFeeAmounts = new uint256[](self.length);
      uint256 _totalPartnerFeePrecision;
      uint256 _totalPartnerFeeAmount;
      uint256 _feeAmount;
      uint24 _partnerFee;

      for (uint256 i = 0; i < self.length; i++) {
        _partnerFee = self[i].partnerFee();
        _feeAmount = (totalAmount * _partnerFee) / FEE_DENOMINATOR;
        partnersFeeAmounts[i] = _feeAmount;

        _totalPartnerFeePrecision += _partnerFee;
        _totalPartnerFeeAmount += _feeAmount;
      }
      protocolFeeAmount = totalAmount - _totalPartnerFeeAmount;

      require(_totalPartnerFeePrecision <= FEE_DENOMINATOR, IKSSmartIntentRouter.InvalidFeeConfig());
    }
  }

  function hash(FeeInfo calldata self) internal pure returns (bytes32) {
    bytes32[] memory partnersFeeConfigsHashes = new bytes32[](self.partnerFeeConfigs.length);
    for (uint256 i = 0; i < self.partnerFeeConfigs.length; i++) {
      partnersFeeConfigsHashes[i] = keccak256(abi.encodePacked(self.partnerFeeConfigs[i]));
    }
    return keccak256(
      abi.encode(
        FEE_INFO_TYPE_HASH,
        self.protocolRecipient,
        keccak256(abi.encodePacked(partnersFeeConfigsHashes))
      )
    );
  }
}

// ============================================================
// FILE: src/types/IntentCoreData.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

/**
 * @notice Data structure for core components of intent
 * @param mainAddress The main address
 * @param signatureVerifier The address of the signature verifier
 * @param delegatedKey The delegated key
 * @param actionContracts The addresses of the action contracts
 * @param actionSelectors The selectors of the action functions
 * @param hook The address of the hook
 * @param hookIntentData The intent data for the hook
 */
struct IntentCoreData {
  address mainAddress;
  address signatureVerifier;
  bytes delegatedKey;
  address[] actionContracts;
  bytes4[] actionSelectors;
  address hook;
  bytes hookIntentData;
}

using IntentCoreDataLibrary for IntentCoreData global;

library IntentCoreDataLibrary {
  bytes32 constant INTENT_CORE_DATA_TYPE_HASH = keccak256(
    abi.encodePacked(
      'IntentCoreData(address mainAddress,address signatureVerifier,bytes delegatedKey,address[] actionContracts,bytes4[] actionSelectors,address hook,bytes hookIntentData)'
    )
  );

  function hash(IntentCoreData calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(
        INTENT_CORE_DATA_TYPE_HASH,
        self.mainAddress,
        self.signatureVerifier,
        keccak256(self.delegatedKey),
        keccak256(abi.encodePacked(self.actionContracts)),
        keccak256(abi.encodePacked(self.actionSelectors)),
        self.hook,
        keccak256(self.hookIntentData)
      )
    );
  }
}

// ============================================================
// FILE: src/types/IntentData.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IntentCoreData} from './IntentCoreData.sol';
import {TokenData} from './TokenData.sol';

/**
 * @notice Data structure for intent data
 * @param coreData The core data for the intent
 * @param tokenData The token data for the intent
 * @param extraData The extra data for the intent
 */
struct IntentData {
  IntentCoreData coreData;
  TokenData tokenData;
  bytes extraData;
}

using IntentDataLibrary for IntentData global;

library IntentDataLibrary {
  bytes32 constant INTENT_DATA_TYPE_HASH = keccak256(
    abi.encodePacked(
      'IntentData(IntentCoreData coreData,TokenData tokenData,bytes extraData)ERC20Data(address token,uint256 amount,bytes permitData)ERC721Data(address token,uint256 tokenId,bytes permitData)IntentCoreData(address mainAddress,address signatureVerifier,bytes delegatedKey,address[] actionContracts,bytes4[] actionSelectors,address hook,bytes hookIntentData)TokenData(ERC20Data[] erc20Data,ERC721Data[] erc721Data)'
    )
  );

  function hash(IntentData calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(
        INTENT_DATA_TYPE_HASH,
        self.coreData.hash(),
        self.tokenData.hash(),
        keccak256(self.extraData)
      )
    );
  }
}

// ============================================================
// FILE: src/types/TokenData.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ERC20Data} from './ERC20Data.sol';
import {ERC721Data} from './ERC721Data.sol';

struct TokenData {
  ERC20Data[] erc20Data;
  ERC721Data[] erc721Data;
}

using TokenDataLibrary for TokenData global;

library TokenDataLibrary {
  bytes32 constant TOKEN_DATA_TYPE_HASH = keccak256(
    abi.encodePacked(
      'TokenData(ERC20Data[] erc20Data,ERC721Data[] erc721Data)ERC20Data(address token,uint256 amount,bytes permitData)ERC721Data(address token,uint256 tokenId,bytes permitData)'
    )
  );

  function hash(TokenData calldata self) internal pure returns (bytes32) {
    bytes32[] memory erc20DataHashes = new bytes32[](self.erc20Data.length);
    for (uint256 i = 0; i < self.erc20Data.length; i++) {
      erc20DataHashes[i] = self.erc20Data[i].hash();
    }

    bytes32[] memory erc721DataHashes = new bytes32[](self.erc721Data.length);
    for (uint256 i = 0; i < self.erc721Data.length; i++) {
      erc721DataHashes[i] = self.erc721Data[i].hash();
    }

    return keccak256(
      abi.encode(
        TOKEN_DATA_TYPE_HASH,
        keccak256(abi.encodePacked(erc20DataHashes)),
        keccak256(abi.encodePacked(erc721DataHashes))
      )
    );
  }
}
