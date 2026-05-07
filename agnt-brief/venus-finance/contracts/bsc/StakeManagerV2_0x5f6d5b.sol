// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/AccessControl.sol)

pragma solidity ^0.8.0;

import "./IAccessControlUpgradeable.sol";
import "../utils/ContextUpgradeable.sol";
import "../utils/StringsUpgradeable.sol";
import "../utils/introspection/ERC165Upgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

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
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControlUpgradeable, ERC165Upgradeable {
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with a standardized message including the required role.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     *
     * _Available since v4.1._
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    function __AccessControl_init() internal onlyInitializing {
    }

    function __AccessControl_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControlUpgradeable).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        return _roles[role].members[account];
    }

    /**
     * @dev Revert with a standard message if `_msgSender()` is missing `role`.
     * Overriding this function changes the behavior of the {onlyRole} modifier.
     *
     * Format of the revert message is described in {_checkRole}.
     *
     * _Available since v4.6._
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Revert with a standard message if `account` is missing `role`.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert(
                string(
                    abi.encodePacked(
                        "AccessControl: account ",
                        StringsUpgradeable.toHexString(account),
                        " is missing role ",
                        StringsUpgradeable.toHexString(uint256(role), 32)
                    )
                )
            );
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual override returns (bytes32) {
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
    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
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
    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
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
     * - the caller must be `account`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address account) public virtual override {
        require(account == _msgSender(), "AccessControl: can only renounce roles for self");

        _revokeRole(role, account);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event. Note that unlike {grantRole}, this function doesn't perform any
     * checks on the calling account.
     *
     * May emit a {RoleGranted} event.
     *
     * [WARNING]
     * ====
     * This function should only be called from the constructor when setting
     * up the initial roles for the system.
     *
     * Using this function in any other way is effectively circumventing the admin
     * system imposed by {AccessControl}.
     * ====
     *
     * NOTE: This function is deprecated in favor of {_grantRole}.
     */
    function _setupRole(bytes32 role, address account) internal virtual {
        _grantRole(role, account);
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
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/IAccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControlUpgradeable {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
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
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
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
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;

import "../../utils/AddressUpgradeable.sol";

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized != type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
        _paused = false;
    }

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
        require(!paused(), "Pausable: paused");
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        require(paused(), "Pausable: not paused");
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuardUpgradeable is Initializable {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
        _status = _NOT_ENTERED;
    }

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

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20PermitUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
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
interface IERC20PermitUpgradeable {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
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
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20Upgradeable {
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
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
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
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20Upgradeable.sol";
import "../extensions/IERC20PermitUpgradeable.sol";
import "../../../utils/AddressUpgradeable.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20Upgradeable {
    using AddressUpgradeable for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20Upgradeable token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20Upgradeable token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20Upgradeable token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20Upgradeable token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20Upgradeable token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20Upgradeable token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeWithSelector(token.approve.selector, spender, value);

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, 0));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Use a ERC-2612 signature to set the `owner` approval toward `spender` on `token`.
     * Revert on invalid signature.
     */
    function safePermit(
        IERC20PermitUpgradeable token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20Upgradeable token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        require(returndata.length == 0 || abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20Upgradeable token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && AddressUpgradeable.isContract(address(token));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

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
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (utils/Context.sol)

pragma solidity ^0.8.0;
import {Initializable} from "../proxy/utils/Initializable.sol";

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
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

pragma solidity ^0.8.0;

import "./IERC165Upgradeable.sol";
import {Initializable} from "../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165Upgradeable is Initializable, IERC165Upgradeable {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165Upgradeable).interfaceId;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/introspection/IERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165Upgradeable {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library MathUpgradeable {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
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
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
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
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/math/SignedMathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMathUpgradeable {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
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
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/StringsUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

import "./math/MathUpgradeable.sol";
import "./math/SignedMathUpgradeable.sol";

/**
 * @dev String operations.
 */
library StringsUpgradeable {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = MathUpgradeable.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
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
    function toString(int256 value) internal pure returns (string memory) {
        return string(abi.encodePacked(value < 0 ? "-" : "", toString(SignedMathUpgradeable.abs(value))));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, MathUpgradeable.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// ============================================================
// FILE: contracts/interfaces/IBnbX.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

/// @title BnbX interface
interface IBnbX is IERC20Upgradeable {
    function initialize(address _manager) external;

    function mint(address _account, uint256 _amount) external;

    function burn(address _account, uint256 _amount) external;

    function setStakeManager(address _address) external;

    event SetStakeManager(address indexed _address);
}

// ============================================================
// FILE: contracts/interfaces/IOperatorRegistry.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.25;

/// @title IOperatorRegistry
/// @notice Node Operator registry interface
interface IOperatorRegistry {
    error OperatorExisted();
    error OperatorNotExisted();
    error OperatorJailed();
    error OperatorIsPreferredDeposit();
    error OperatorIsPreferredWithdrawal();
    error DelegationExists();
    error ZeroAddress();
    error NegligibleAmountTooHigh();

    event AddedOperator(address indexed _operator);
    event RemovedOperator(address indexed _operator);
    event SetPreferredDepositOperator(address indexed _operator);
    event SetPreferredWithdrawalOperator(address indexed _operator);

    function preferredDepositOperator() external view returns (address);
    function preferredWithdrawalOperator() external view returns (address);
    function getOperatorAt(uint256) external view returns (address);
    function getOperatorsLength() external view returns (uint256);
    function getOperators() external view returns (address[] memory);
    function addOperator(address _operator) external;
    function removeOperator(address _operator) external;
    function setPreferredDepositOperator(address _operator) external;
    function setPreferredWithdrawalOperator(address _operator) external;
    function pause() external;
    function unpause() external;
    function operatorExists(address _operator) external view returns (bool);
}

// ============================================================
// FILE: contracts/interfaces/IStakeCredit.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.25;

interface IStakeCredit {
    /**
     * @param delegator the address of the delegator
     * @return shares the amount of shares minted
     */
    function delegate(address delegator) external payable returns (uint256 shares);

    /**
     * @return the total amount of BNB staked and reward of the delegator.
     */
    function getPooledBNB(address account) external view returns (uint256);

    /**
     * @return the amount of shares that corresponds to `_bnbAmount` protocol-controlled BNB.
     */
    function getSharesByPooledBNB(uint256 bnbAmount) external view returns (uint256);

    /**
     * @return the amount of BNB that corresponds to `_sharesAmount` token shares.
     */
    function getPooledBNBByShares(uint256 shares) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IStakeHub.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.25;

interface IStakeHub {
    /**
     * @param operatorAddress the operator address of the validator to be delegated to
     * @param delegateVotePower whether to delegate vote power to the validator
     */
    function delegate(address operatorAddress, bool delegateVotePower) external payable;

    /**
     * @dev Undelegate BNB from a validator, fund is only claimable few days later
     * @param operatorAddress the operator address of the validator to be undelegated from
     * @param shares the shares to be undelegated
     */
    function undelegate(address operatorAddress, uint256 shares) external;

    /**
     * @param srcValidator the operator address of the validator to be redelegated from
     * @param dstValidator the operator address of the validator to be redelegated to
     * @param shares the shares to be redelegated
     * @param delegateVotePower whether to delegate vote power to the dstValidator
     */
    function redelegate(address srcValidator, address dstValidator, uint256 shares, bool delegateVotePower) external;

    /**
     * @notice get the credit contract address of a validator
     *
     * @param operatorAddress the operator address of the validator
     *
     * @return creditContract the credit contract address of the validator
     */
    function getValidatorCreditContract(address operatorAddress) external view returns (address creditContract);

    /**
     * @notice get the basic info of a validator
     *
     * @param operatorAddress the operator address of the validator
     *
     * @return createdTime the creation time of the validator
     * @return jailed whether the validator is jailed
     * @return jailUntil the jail time of the validator
     */
    function getValidatorBasicInfo(address operatorAddress)
        external
        view
        returns (uint256 createdTime, bool jailed, uint256 jailUntil);

    /**
     * @dev Claim the undelegated BNB from the pool after unbondPeriod
     * @param operatorAddress the operator address of the validator
     * @param requestNumber the request number of the undelegation. 0 means claim all
     */
    function claim(address operatorAddress, uint256 requestNumber) external;

    function unbondPeriod() external view returns (uint256);
    function minDelegationBNBChange() external view returns (uint256);

    function REDELEGATE_FEE_RATE_BASE() external view returns (uint256);
    function redelegateFeeRate() external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IStakeManagerV2.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.25;

struct WithdrawalRequest {
    address user;
    bool processed;
    bool claimed;
    uint256 amountInBnbX;
    uint256 batchId;
}

struct BatchWithdrawalRequest {
    uint256 amountInBnb;
    uint256 amountInBnbX;
    uint256 unlockTime;
    address operator;
    bool isClaimable;
}

interface IStakeManagerV2 {
    error TransferFailed();
    error OperatorNotExisted();
    error ZeroAmount();
    error ZeroAddress();
    error Unbonding();
    error NoOperatorsAvailable();
    error NoWithdrawalRequests();
    error InvalidIndex();
    error AlreadyClaimed();
    error NotProcessed();
    error MaxLimitReached();
    error ExchangeRateOutOfBounds(uint256 _currentER, uint256 _maxAllowableDelta, uint256 _newER);
    error WithdrawalBelowMinimum();
    error RedemptionNotEnabled();
    error InsufficientBnbBalance();

    function delegate(string calldata _referralId) external payable returns (uint256);
    function requestWithdraw(uint256 _amount, string calldata _referralId) external returns (uint256);
    function claimWithdrawal(uint256 _idx) external returns (uint256);
    function redeemBnbxForBnb(uint256 _amountInBnbX) external returns (uint256);

    function startBatchUndelegation(uint256 _batchSize, address _operator) external;
    function completeBatchUndelegation() external;
    function redelegate(address _fromOperator, address _toOperator, uint256 _amount) external;
    function undelegateAllBnbFromAllOperators() external;
    function claimAllBnbFromAllOperators() external returns (uint256);
    function delegateWithoutMinting() external payable;
    function updateER() external;
    function pause() external;
    function unpause() external;
    function setRedemptionEnabled(bool _enabled) external;

    function convertBnbToBnbX(uint256 _amount) external view returns (uint256);
    function convertBnbXToBnb(uint256 _amountInBnbX) external view returns (uint256);
    function getUserRequestIds(address _user) external returns (uint256[] memory);
    function getRedelegationFee(uint256 _amount) external view returns (uint256);

    event Delegated(address indexed _account, uint256 _amount);
    event RequestedWithdrawal(address indexed _account, uint256 _amountInBnbX, string _referralId);
    event ClaimedWithdrawal(address indexed _account, uint256 _index, uint256 _amountInBnb);
    event Redelegated(address indexed _fromOperator, address indexed _toOperator, uint256 _amountInBnb);
    event DelegateReferral(address indexed _account, uint256 _amountInBnb, uint256 _amountInBnbX, string _referralId);
    event SetStaderTreasury(address _treasury);
    event SetFeeBps(uint256 _feeBps);
    event CompletedBatchUndelegation(address indexed _operator, uint256 _amountInBnb);
    event StartedBatchUndelegation(address indexed _operator, uint256 _amountInBnb, uint256 _amountInBnbX);
    event ExchangeRateUpdated(uint256 _currentER, uint256 _newER);
    event SetMaxActiveRequestsPerUser(uint256 _maxActiveRequestsPerUser);
    event SetMaxExchangeRateSlippageBps(uint256 _maxExchangeRateSlippageBps);
    event SetMinWithdrawableBnbx(uint256 _minWithdrawableBnbx);
    event UndelegatedAllBnbFromAllOperators(uint256 _totalBnbUndelegated, uint256 _totalBnbxSupply);
    event ClaimedAllBnbFromAllOperators(uint256 _totalClaimedBnb);
    event RedeemedBnbxForBnb(address indexed _account, uint256 _amountInBnbX, uint256 _amountInBnb);
    event SetRedemptionEnabled(bool _enabled);
}

// ============================================================
// FILE: contracts/ProtocolConstants.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.25;

library ProtocolConstants {
    // addresses
    address public constant STAKE_HUB_ADDR = 0x0000000000000000000000000000000000002002;

    // values
    uint256 public constant MAX_NEGLIGIBLE_AMOUNT = 1e15;
    uint256 public constant MAX_ALLOWED_FEE_BPS = 5000;
    uint256 public constant BPS_DENOM = 10_000;
}

// ============================================================
// FILE: contracts/StakeManagerV2.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.25;

import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import "./interfaces/IStakeHub.sol";
import "./interfaces/IBnbX.sol";
import "./interfaces/IOperatorRegistry.sol";
import "./interfaces/IStakeManagerV2.sol";
import "./interfaces/IStakeCredit.sol";
import "./ProtocolConstants.sol";

/// @title StakeManagerV2
/// @notice This contract manages staking, withdrawal, and re-delegation of BNB through a stake hub and operator registry.
contract StakeManagerV2 is
    IStakeManagerV2,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20Upgradeable for IBnbX;

    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    IStakeHub public constant STAKE_HUB = IStakeHub(ProtocolConstants.STAKE_HUB_ADDR);
    IOperatorRegistry public OPERATOR_REGISTRY;
    IBnbX public BNBX;

    address public staderTreasury;
    uint256 public totalDelegated;
    uint256 public feeBps;
    uint256 public maxExchangeRateSlippageBps;
    uint256 public maxActiveRequestsPerUser;
    uint256 public firstUnprocessedUserIndex;
    uint256 public firstUnbondingBatchIndex;
    uint256 public minWithdrawableBnbx;

    WithdrawalRequest[] private withdrawalRequests;
    BatchWithdrawalRequest[] private batchWithdrawalRequests;
    mapping(address => uint256[]) private userRequests;

    uint256 public totalBnbUndelegated;
    uint256 public totalBnbxSupplyAtUndelegation;
    bool public redemptionEnabled;

    // @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    receive() external payable { }

    /// @notice Initialize the StakeManagerV2 contract.
    /// @param _admin Address of the admin, which will be provided DEFAULT_ADMIN_ROLE
    /// @param _operatorRegistry Address of the operator registry contract.
    /// @param _bnbX Address of the BnbX contract.
    /// @param _staderTreasury stader treasury address
    function initialize(
        address _admin,
        address _operatorRegistry,
        address _bnbX,
        address _staderTreasury
    )
        external
        initializer
    {
        if (_admin == address(0)) revert ZeroAddress();
        if (_operatorRegistry == address(0)) revert ZeroAddress();
        if (_bnbX == address(0)) revert ZeroAddress();
        if (_staderTreasury == address(0)) revert ZeroAddress();

        __AccessControl_init();
        __Pausable_init();
        __ReentrancyGuard_init();

        _setupRole(DEFAULT_ADMIN_ROLE, _admin);

        OPERATOR_REGISTRY = IOperatorRegistry(_operatorRegistry);
        BNBX = IBnbX(_bnbX);
        staderTreasury = _staderTreasury;
        feeBps = 1000; // 10%
        maxExchangeRateSlippageBps = 1000; // 10%
        maxActiveRequestsPerUser = 10;
        minWithdrawableBnbx = 1e15;
    }

    /*//////////////////////////////////////////////////////////////
                            user interactions
    //////////////////////////////////////////////////////////////*/

    /// @notice Delegate BNB to the preferred operator.
    /// @param _referralId referral id of KOL
    /// @return The amount of BnbX minted.
    function delegate(string calldata _referralId)
        external
        payable
        override
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        uint256 amountToMint = convertBnbToBnbX(msg.value);
        _delegate();
        BNBX.mint(msg.sender, amountToMint);

        emit DelegateReferral(msg.sender, msg.value, amountToMint, _referralId);
        return amountToMint;
    }

    /// @notice Request to withdraw BnbX and get BNB back.
    /// @param _amount The amount of BnbX to withdraw.
    /// @return The index of the withdrawal request.
    function requestWithdraw(
        uint256 _amount,
        string calldata _referralId
    )
        external
        override
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        if (_amount < minWithdrawableBnbx) revert WithdrawalBelowMinimum();
        if (userRequests[msg.sender].length >= maxActiveRequestsPerUser) revert MaxLimitReached();

        withdrawalRequests.push(
            WithdrawalRequest({
                user: msg.sender,
                amountInBnbX: _amount,
                claimed: false,
                batchId: type(uint256).max,
                processed: false
            })
        );

        uint256 requestId = withdrawalRequests.length - 1;
        userRequests[msg.sender].push(requestId);

        BNBX.safeTransferFrom(msg.sender, address(this), _amount);
        emit RequestedWithdrawal(msg.sender, _amount, _referralId);

        return requestId;
    }

    /// @notice Claim the BNB from a withdrawal request.
    /// @param _idx user withdraw request array index
    /// @return The amount of BNB claimed.
    function claimWithdrawal(uint256 _idx) external override nonReentrant returns (uint256) {
        WithdrawalRequest storage request = _extractRequest(msg.sender, _idx);
        if (request.claimed) revert AlreadyClaimed();
        if (!request.processed) revert NotProcessed();

        BatchWithdrawalRequest memory batchRequest = batchWithdrawalRequests[request.batchId];
        if (!batchRequest.isClaimable) revert Unbonding();

        request.claimed = true;
        uint256 amountInBnb = (batchRequest.amountInBnb * request.amountInBnbX) / batchRequest.amountInBnbX;

        (bool success,) = payable(msg.sender).call{ value: amountInBnb }("");
        if (!success) revert TransferFailed();

        emit ClaimedWithdrawal(msg.sender, _idx, amountInBnb);
        return amountInBnb;
    }

    /// @notice Redeem BNBx for BNB based on the snapshot exchange rate.
    /// @param _amountInBnbX The amount of BNBx to burn and redeem.
    /// @return The amount of BNB received.
    /// @dev This function can only be called when redemption is enabled.
    /// @dev Caller must approve the contract to burn the specified BNBx amount before calling.
    /// @dev The exchange rate is based on totalBnbUndelegated and totalBnbxSupplyAtUndelegation snapshot.
    function redeemBnbxForBnb(uint256 _amountInBnbX) external override nonReentrant returns (uint256) {
        if (!redemptionEnabled) revert RedemptionNotEnabled();
        if (_amountInBnbX == 0) revert ZeroAmount();
        if (totalBnbxSupplyAtUndelegation == 0) revert ZeroAmount();
        if (totalBnbUndelegated == 0) revert ZeroAmount();

        // Calculate BNB amount based on snapshot exchange rate
        uint256 amountInBnb = convertBnbXToBnb(_amountInBnbX);
        
        if (amountInBnb > address(this).balance) revert InsufficientBnbBalance();

        // Burn BNBx
        BNBX.burn(msg.sender, _amountInBnbX);

        // Transfer BNB to user
        (bool success,) = payable(msg.sender).call{ value: amountInBnb }("");
        if (!success) revert TransferFailed();

        emit RedeemedBnbxForBnb(msg.sender, _amountInBnbX, amountInBnb);
        return amountInBnb;
    }

    /*//////////////////////////////////////////////////////////////
                          operational methods
    //////////////////////////////////////////////////////////////*/

    /// @notice Start the batch undelegation process.
    /// @param _batchSize The size of the batch.
    /// @param _operator The address of the operator to undelegate from.
    /// @dev This function can only be called by an address with the OPERATOR_ROLE.
    function startBatchUndelegation(
        uint256 _batchSize,
        address _operator
    )
        external
        override
        onlyRole(OPERATOR_ROLE)
    {
        if (_operator == address(0)) {
            // if operator is not provided, use preferred operator
            _operator = OPERATOR_REGISTRY.preferredWithdrawalOperator();
        }
        if (!OPERATOR_REGISTRY.operatorExists(_operator)) {
            revert OperatorNotExisted();
        }

        uint256 currentER = convertBnbXToBnb(1 ether);
        _updateER();
        _checkIfNewExchangeRateWithinLimits(currentER);

        address creditContract = STAKE_HUB.getValidatorCreditContract(_operator);
        uint256 amountInBnbXToBurn = _computeBnbXToBurn(_batchSize, creditContract);
        uint256 shares = IStakeCredit(creditContract).getSharesByPooledBNB(convertBnbXToBnb(amountInBnbXToBurn));
        uint256 amountToWithdrawFromOperator = IStakeCredit(creditContract).getPooledBNBByShares(shares);
        totalDelegated -= amountToWithdrawFromOperator;

        batchWithdrawalRequests.push(
            BatchWithdrawalRequest({
                amountInBnb: amountToWithdrawFromOperator,
                amountInBnbX: amountInBnbXToBurn,
                unlockTime: block.timestamp + STAKE_HUB.unbondPeriod(),
                operator: _operator,
                isClaimable: false
            })
        );

        BNBX.burn(address(this), amountInBnbXToBurn);
        STAKE_HUB.undelegate(_operator, shares);

        emit StartedBatchUndelegation(_operator, amountToWithdrawFromOperator, amountInBnbXToBurn);
    }

    /// @notice Complete the undelegation process.
    function completeBatchUndelegation() external override nonReentrant onlyRole(OPERATOR_ROLE) {
        BatchWithdrawalRequest storage batchRequest = batchWithdrawalRequests[firstUnbondingBatchIndex];
        if (batchRequest.unlockTime > block.timestamp) revert Unbonding();

        batchRequest.isClaimable = true;
        firstUnbondingBatchIndex++;
        STAKE_HUB.claim(batchRequest.operator, 1); // claims 1 request

        emit CompletedBatchUndelegation(batchRequest.operator, batchRequest.amountInBnb);
    }

    /// @notice Redelegate staked BNB from one operator to another.
    /// @param _fromOperator The address of the operator to redelegate from.
    /// @param _toOperator The address of the operator to redelegate to.
    /// @param _amount The amount of BNB to redelegate.
    /// @dev redelegate has a fee associated with it. This fee will be consumed from TVL. See fn:getRedelegationFee()
    /// @dev redelegate doesn't have a waiting period
    /// @dev This function can only be called by an address with the MANAGER_ROLE.
    function redelegate(
        address _fromOperator,
        address _toOperator,
        uint256 _amount
    )
        external
        override
        onlyRole(MANAGER_ROLE)
    {
        if (!OPERATOR_REGISTRY.operatorExists(_fromOperator)) {
            revert OperatorNotExisted();
        }
        if (!OPERATOR_REGISTRY.operatorExists(_toOperator)) {
            revert OperatorNotExisted();
        }

        uint256 shares = IStakeCredit(STAKE_HUB.getValidatorCreditContract(_fromOperator)).getSharesByPooledBNB(_amount);
        STAKE_HUB.redelegate(_fromOperator, _toOperator, shares, true);

        emit Redelegated(_fromOperator, _toOperator, _amount);
    }

    /// @notice Undelegate all BNB from all operators.
    /// @dev This function undelegates all BNB from all registered operators and records
    ///      the total BNB undelegated and total BNBx supply at the moment of execution.
    /// @dev This function can only be called by an address with the MANAGER_ROLE.
    function undelegateAllBnbFromAllOperators() external override onlyRole(MANAGER_ROLE) {
        address[] memory operators = OPERATOR_REGISTRY.getOperators();
        uint256 operatorsLength = operators.length;
        uint256 totalUndelegatedBnb;

        // Undelegate from all operators
        for (uint256 i; i < operatorsLength;) {
            address operator = operators[i];
            address creditContract = STAKE_HUB.getValidatorCreditContract(operator);
            uint256 pooledBnb = IStakeCredit(creditContract).getPooledBNB(address(this));
            
            if (pooledBnb > 0) {
                uint256 shares = IStakeCredit(creditContract).getSharesByPooledBNB(pooledBnb);
                uint256 amountToWithdrawFromOperator = IStakeCredit(creditContract).getPooledBNBByShares(shares);
                STAKE_HUB.undelegate(operator, shares);
                totalUndelegatedBnb += amountToWithdrawFromOperator;
            }
            
            unchecked {
                ++i;
            }
        }

        // Record state variables at the moment of undelegation
        totalBnbUndelegated = totalUndelegatedBnb;
        totalBnbxSupplyAtUndelegation = BNBX.totalSupply();
        
        // Update totalDelegated
        emit UndelegatedAllBnbFromAllOperators(totalUndelegatedBnb, totalBnbxSupplyAtUndelegation);
    }

    /// @notice Claim all undelegated BNB from all operators.
    /// @dev This function claims all undelegated BNB from all registered operators.
    /// @dev The BNB will be transferred to this contract after the unbonding period has passed.
    /// @dev This function can only be called by an address with the MANAGER_ROLE.
    /// @return totalClaimedBnb The total amount of BNB claimed from all operators.
    function claimAllBnbFromAllOperators() external override nonReentrant onlyRole(MANAGER_ROLE) returns (uint256 totalClaimedBnb) {
        address[] memory operators = OPERATOR_REGISTRY.getOperators();
        uint256 operatorsLength = operators.length;
        uint256 balanceBefore = address(this).balance;

        for (uint256 i; i < operatorsLength;) {
            address operator = operators[i];
            STAKE_HUB.claim(operator, 1);
            
            unchecked {
                ++i;
            }
        }

        uint256 balanceAfter = address(this).balance;
        totalClaimedBnb = balanceAfter - balanceBefore;

        emit ClaimedAllBnbFromAllOperators(totalClaimedBnb);
    }

    /// @notice Update the Exchange Rate
    function updateER() public override nonReentrant whenNotPaused {
        uint256 currentER = convertBnbXToBnb(1 ether);
        _updateER();
        _checkIfNewExchangeRateWithinLimits(currentER);
    }

    /// @notice force update the exchange rate
    /// @dev This function can only be called by an address with the DEFAULT_ADMIN_ROLE.
    function forceUpdateER() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _updateER();
    }

    /// @notice Delegate BNB to the preferred operator without minting BnbX.
    /// @dev This function is useful for boosting staking rewards and,
    ///      for initial Fusion hardfork migration without affecting the token supply.
    /// @dev Can only be called by an address with the MANAGER_ROLE.
    function delegateWithoutMinting() external payable override onlyRole(MANAGER_ROLE) {
        if (BNBX.totalSupply() == 0) revert ZeroAmount();

        _delegate();
    }

    /**
     * @notice Triggers stopped state.
     * @dev Contract must not be paused
     * @dev Can only be called by an address with the MANAGER_ROLE.
     */
    function pause() external override onlyRole(MANAGER_ROLE) {
        _pause();
    }

    /**
     * @notice Returns to normal state.
     * @dev Contract must be paused
     * @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE.
     */
    function unpause() external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /*//////////////////////////////////////////////////////////////
                                setters
    //////////////////////////////////////////////////////////////*/

    /// @notice Sets the address of the Stader Treasury.
    /// @param _staderTreasury The new address of the Stader Treasury.
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE.
    function setStaderTreasury(address _staderTreasury) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_staderTreasury == address(0)) revert ZeroAddress();
        staderTreasury = _staderTreasury;
        emit SetStaderTreasury(_staderTreasury);
    }

    /// @notice set feeBps
    /// @dev updates exchange rate before setting the new feeBps
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE.
    function setFeeBps(uint256 _feeBps) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_feeBps > ProtocolConstants.MAX_ALLOWED_FEE_BPS) revert MaxLimitReached();
        updateER();
        feeBps = _feeBps;
        emit SetFeeBps(_feeBps);
    }

    /// @notice set maxActiveRequestsPerUser
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE.
    function setMaxActiveRequestsPerUser(uint256 _maxActiveRequestsPerUser) external onlyRole(DEFAULT_ADMIN_ROLE) {
        maxActiveRequestsPerUser = _maxActiveRequestsPerUser;
        emit SetMaxActiveRequestsPerUser(_maxActiveRequestsPerUser);
    }

    /// @notice set maxExchangeRateSlippageBps
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE.
    function setMaxExchangeRateSlippageBps(uint256 _maxExchangeRateSlippageBps) external onlyRole(DEFAULT_ADMIN_ROLE) {
        maxExchangeRateSlippageBps = _maxExchangeRateSlippageBps;
        emit SetMaxExchangeRateSlippageBps(_maxExchangeRateSlippageBps);
    }

    /// @notice set minWithdrawableBnbx
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE.
    function setMinWithdrawableBnbx(uint256 _minWithdrawableBnbx) external onlyRole(DEFAULT_ADMIN_ROLE) {
        minWithdrawableBnbx = _minWithdrawableBnbx;
        emit SetMinWithdrawableBnbx(_minWithdrawableBnbx);
    }

    /// @notice Toggle the redemption enabled state.
    /// @param _enabled Whether to enable or disable redemption.
    /// @dev Can only be called by an address with the MANAGER_ROLE.
    function setRedemptionEnabled(bool _enabled) external onlyRole(MANAGER_ROLE) {
        redemptionEnabled = _enabled;
        emit SetRedemptionEnabled(_enabled);
    }

    /*//////////////////////////////////////////////////////////////
                        internal functions
    //////////////////////////////////////////////////////////////*/

    /// @notice Delegate BNB to the preferred operator.
    function _delegate() internal {
        address preferredOperatorAddress = OPERATOR_REGISTRY.preferredDepositOperator();
        totalDelegated += msg.value;

        STAKE_HUB.delegate{ value: msg.value }(preferredOperatorAddress, true);
        emit Delegated(preferredOperatorAddress, msg.value);
    }

    /// @dev extracts the withdrawal request and removes from userRequests
    function _extractRequest(address _user, uint256 _idx) internal returns (WithdrawalRequest storage request) {
        uint256[] storage userRequestsStorage = userRequests[_user];
        // any change to userRequestsStorage will also be reflected in userRequests[_user]
        // see ref: https://docs.soliditylang.org/en/v0.8.25/types.html#data-location-and-assignment-behavior
        uint256 numUserRequests = userRequestsStorage.length;
        if (numUserRequests == 0) revert NoWithdrawalRequests();
        if (_idx >= numUserRequests) revert InvalidIndex();

        uint256 requestId = userRequestsStorage[_idx];
        userRequestsStorage[_idx] = userRequestsStorage[numUserRequests - 1];
        userRequestsStorage.pop();
        return withdrawalRequests[requestId];
    }

    /// @dev internal fn to update the exchange rate
    function _updateER() internal {
        uint256 totalPooledBnb = getActualStakeAcrossAllOperators();
        _mintFees(totalPooledBnb);
        totalDelegated = totalPooledBnb;
    }

    /// @dev internal fn to mint the fees to the stader treasury
    function _mintFees(uint256 _totalPooledBnb) internal {
        if (_totalPooledBnb <= totalDelegated) return;
        uint256 feeInBnb = ((_totalPooledBnb - totalDelegated) * feeBps) / ProtocolConstants.BPS_DENOM;
        uint256 amountToMint = convertBnbToBnbX(feeInBnb);
        BNBX.mint(staderTreasury, amountToMint);
    }

    /// @dev internal fn to check if new exchange rate is within limits
    function _checkIfNewExchangeRateWithinLimits(uint256 currentER) internal {
        uint256 maxAllowableDelta = maxExchangeRateSlippageBps * currentER / ProtocolConstants.BPS_DENOM;
        uint256 newER = convertBnbXToBnb(1 ether);
        if (newER > currentER + maxAllowableDelta) {
            revert ExchangeRateOutOfBounds(currentER, maxAllowableDelta, newER);
        }
        emit ExchangeRateUpdated(currentER, newER);
    }

    /// @dev internal fn to compute the amount of BNBX to burn for a batch
    function _computeBnbXToBurn(
        uint256 _batchSize,
        address _creditContract
    )
        internal
        returns (uint256 amountInBnbXToBurn)
    {
        uint256 pooledBnb = IStakeCredit(_creditContract).getPooledBNB(address(this));

        uint256 cummulativeBnbXToBurn;
        uint256 cummulativeBnbToWithdraw;
        uint256 processedCount;

        while ((processedCount < _batchSize) && (firstUnprocessedUserIndex < withdrawalRequests.length)) {
            cummulativeBnbXToBurn += withdrawalRequests[firstUnprocessedUserIndex].amountInBnbX;
            cummulativeBnbToWithdraw = convertBnbXToBnb(cummulativeBnbXToBurn);
            if (cummulativeBnbToWithdraw > pooledBnb) break;

            amountInBnbXToBurn = cummulativeBnbXToBurn;
            withdrawalRequests[firstUnprocessedUserIndex].processed = true;
            withdrawalRequests[firstUnprocessedUserIndex].batchId = batchWithdrawalRequests.length;
            unchecked {
                ++processedCount;
                ++firstUnprocessedUserIndex;
            }
        }

        if (amountInBnbXToBurn == 0) revert NoWithdrawalRequests();
    }

    /*//////////////////////////////////////////////////////////////
                            getters
    //////////////////////////////////////////////////////////////*/

    /// @notice Get withdrawal requests of a user
    function getUserRequestIds(address _user) external view returns (uint256[] memory) {
        return userRequests[_user];
    }

    /// @notice get user request info by request Id
    function getUserRequestInfo(uint256 _requestId) external view returns (WithdrawalRequest memory) {
        return withdrawalRequests[_requestId];
    }

    /// @notice get active withdrawal requests count
    function getUnprocessedWithdrawalRequestCount() external view returns (uint256) {
        return withdrawalRequests.length - firstUnprocessedUserIndex;
    }

    /// @notice total number of user withdraw requests
    function getWithdrawalRequestCount() external view returns (uint256) {
        return withdrawalRequests.length;
    }

    /// @notice get batch withdrawal request info by batch Id
    function getBatchWithdrawalRequestInfo(uint256 _batchId) external view returns (BatchWithdrawalRequest memory) {
        return batchWithdrawalRequests[_batchId];
    }

    /// @notice total number of batch withdrawal requests
    function getBatchWithdrawalRequestCount() external view returns (uint256) {
        return batchWithdrawalRequests.length;
    }

    /// @notice Get the fee associated with a redelegation.
    /// @param _amount The amount of BNB to redelegate.
    /// @return The fee associated with the redelegation.
    function getRedelegationFee(uint256 _amount) external view returns (uint256) {
        return (_amount * STAKE_HUB.redelegateFeeRate()) / STAKE_HUB.REDELEGATE_FEE_RATE_BASE();
    }

    /// @notice Convert BNB to BnbX.
    /// @param _amount The amount of BNB to convert.
    /// @return The amount of BnbX equivalent.
    function convertBnbToBnbX(uint256 _amount) public view override returns (uint256) {
        uint256 totalShares;
        uint256 totalDelegated_;

        if (redemptionEnabled) {
            totalShares = totalBnbxSupplyAtUndelegation;
            totalDelegated_ = totalBnbUndelegated;
        } else {
            totalShares = BNBX.totalSupply();
            totalDelegated_ = totalDelegated;
        }

        totalShares = totalShares == 0 ? 1 : totalShares;
        totalDelegated_ = totalDelegated_ == 0 ? 1 : totalDelegated_;

        return (_amount * totalShares) / totalDelegated_;
    }

    /// @notice Convert BnbX to BNB.
    /// @param _amountInBnbX The amount of BnbX to convert.
    /// @return The amount of BNB equivalent.
    function convertBnbXToBnb(uint256 _amountInBnbX) public view override returns (uint256) {
        uint256 totalShares;
        uint256 totalDelegated_;

        if (redemptionEnabled) {
            totalShares = totalBnbxSupplyAtUndelegation;
            totalDelegated_ = totalBnbUndelegated;
        } else {
            totalShares = BNBX.totalSupply();
            totalDelegated_ = totalDelegated;
        }

        totalShares = totalShares == 0 ? 1 : totalShares;
        totalDelegated_ = totalDelegated_ == 0 ? 1 : totalDelegated_;

        return (_amountInBnbX * totalDelegated_) / totalShares;
    }

    /// @notice Get the total stake across all operators.
    /// @dev This is not stale
    /// @dev gas expensive: use cautiously
    /// @return The total stake in BNB.
    function getActualStakeAcrossAllOperators() public view returns (uint256) {
        uint256 totalStake;
        address[] memory operators = OPERATOR_REGISTRY.getOperators();
        uint256 operatorsLength = operators.length;

        for (uint256 i; i < operatorsLength;) {
            address creditContract = STAKE_HUB.getValidatorCreditContract(operators[i]);
            totalStake += IStakeCredit(creditContract).getPooledBNB(address(this));
            unchecked {
                ++i;
            }
        }
        return totalStake;
    }

    /// @notice Auxillary function to calculate amount of BNBx to be burn given batch size
    /// @param _batchSize - number of requests to process in a batch
    /// @return bnbxToBurn - amount of BNBx to be burn given the batch size
    function getBnbxToBurnForBatchSize(uint256 _batchSize) external view returns (uint256 bnbxToBurn) {
        uint256 processedCount;
        uint256 tempFirstUnprocessedUserIndex = firstUnprocessedUserIndex;
        while ((processedCount < _batchSize) && (tempFirstUnprocessedUserIndex < withdrawalRequests.length)) {
            bnbxToBurn += withdrawalRequests[tempFirstUnprocessedUserIndex].amountInBnbX;
            unchecked {
                ++processedCount;
                ++tempFirstUnprocessedUserIndex;
            }
        }
    }
}
