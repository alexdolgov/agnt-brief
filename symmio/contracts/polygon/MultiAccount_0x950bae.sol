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
// FILE: @openzeppelin/contracts-upgradeable/interfaces/IERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (interfaces/IERC20.sol)

pragma solidity ^0.8.0;

import "../token/ERC20/IERC20Upgradeable.sol";

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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
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
// FILE: @openzeppelin/contracts/utils/math/SafeMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/SafeMath.sol)

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

// ============================================================
// FILE: contracts/facets/Account/IAccountEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

interface IAccountEvents {
	event Deposit(address sender, address user, uint256 amount);
	event Withdraw(address sender, address user, uint256 amount);
	event AllocatePartyA(address user, uint256 amount, uint256 newAllocatedBalance);
	event AllocatePartyA(address user, uint256 amount); // For backward compatibility, will be removed in future
	event DeallocatePartyA(address user, uint256 amount, uint256 newAllocatedBalance);
	event DeallocatePartyA(address user, uint256 amount); // For backward compatibility, will be removed in future
	event InternalTransfer(address sender, address user, uint256 userNewAllocatedBalance, uint256 amount);
	event AllocateForPartyB(address partyB, address partyA, uint256 amount, uint256 newAllocatedBalance);
	event AllocateForPartyB(address partyB, address partyA, uint256 amount); // For backward compatibility, will be removed in future
	event DeallocateForPartyB(address partyB, address partyA, uint256 amount, uint256 newAllocatedBalance);
	event DeallocateForPartyB(address partyB, address partyA, uint256 amount); // For backward compatibility, will be removed in future
	event TransferAllocation(
		uint256 amount,
		address origin,
		uint256 originNewAllocatedBalance,
		address recipient,
		uint256 recipientNewAllocatedBalance
	);
	event TransferAllocation(uint256 amount, address origin, address recipient); // For backward compatibility, will be removed in future
	event DepositToReserveVault(address sender, address partyB, uint256 amount);
	event WithdrawFromReserveVault(address partyB, uint256 amount);
}

// ============================================================
// FILE: contracts/facets/Account/IAccountFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "./IAccountEvents.sol";
import "../../storages/MuonStorage.sol";

interface IAccountFacet is IAccountEvents {
	//Party A
	function deposit(uint256 amount) external;

	function depositFor(address user, uint256 amount) external;

	function withdraw(uint256 amount) external;

	function withdrawTo(address user, uint256 amount) external;

	function allocate(uint256 amount) external;

	function depositAndAllocate(uint256 amount) external;

	function deallocate(uint256 amount, SingleUpnlSig memory upnlSig) external;

	function internalTransfer(address user, uint256 amount) external;

	// PartyB
	function allocateForPartyB(uint256 amount, address partyA) external;

	function deallocateForPartyB(uint256 amount, address partyA, SingleUpnlSig memory upnlSig) external;

	function transferAllocation(uint256 amount, address origin, address recipient, SingleUpnlSig memory upnlSig) external;

	function depositToReserveVault(uint256 amount, address partyB) external;

	function withdrawFromReserveVault(uint256 amount) external;
}

// ============================================================
// FILE: contracts/facets/Bridge/IBridgeEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

interface IBridgeEvents {
	event TransferToBridge(address user, uint256 amount, address bridgeAddress, uint256 transactionId);
	event WithdrawReceivedBridgeValue(uint256 transactionId);
	event SuspendBridgeTransaction(uint256 transactionId);
	event RestoreBridgeTransaction(uint256 transactionId, uint256 validAmount);
	event WithdrawReceivedBridgeValues(uint256[] transactionIds);
}

// ============================================================
// FILE: contracts/facets/Bridge/IBridgeFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "./IBridgeEvents.sol";

interface IBridgeFacet is IBridgeEvents {
	function transferToBridge(uint256 amount, address bridgeAddress) external;

	function suspendBridgeTransaction(uint256 transactionId) external;

	function restoreBridgeTransaction(uint256 transactionId, uint256 validAmount) external;

	function withdrawReceivedBridgeValue(uint256 transactionId) external;

	function withdrawReceivedBridgeValues(uint256[] memory transactionIds) external;
}

// ============================================================
// FILE: contracts/facets/Control/IControlEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

interface IControlEvents {
	event RoleGranted(bytes32 role, address user);
	event RoleRevoked(bytes32 role, address user);
	event SetMuonConfig(uint256 upnlValidTime, uint256 priceValidTime);
	event SetMuonIds(uint256 muonAppId, address gateway, uint256 x, uint8 parity);
	event SetCollateral(address collateral);
	event AddSymbol(
		uint256 symbolId,
		string name,
		uint256 minAcceptableQuoteValue,
		uint256 minAcceptablePortionLF,
		uint256 tradingFee,
		uint256 maxLeverage,
		uint256 fundingRateEpochDuration,
		uint256 fundingRateWindowTime
	);
	event SetFeeCollector(address affiliate, address oldFeeCollector, address newFeeCollector);
	event SetDefaultFeeCollector(address oldDefaultFeeCollector, address newDefaultFeeCollector);
	event SetSymbolValidationState(uint256 symbolId, bool oldState, bool isValid);
	event SetSymbolFundingState(uint256 symbolId, uint256 fundingRateEpochDuration, uint256 fundingRateWindowTime);
	event SetSymbolAcceptableValues(
		uint256 symbolId,
		uint256 oldMinAcceptableQuoteValue,
		uint256 oldMinAcceptablePortionLF,
		uint256 minAcceptableQuoteValue,
		uint256 minAcceptablePortionLF
	);
	event SetSymbolTradingFee(uint256 symbolId, uint256 oldTradingFee, uint256 tradingFee);
	event SetSymbolMaxSlippage(uint256 symbolId, uint256 oldMaxSlippage, uint256 maxSlippage);
	event SetSymbolMaxLeverage(uint256 symbolId, uint256 oldMaxLeverage, uint256 maxLeverage);
	event SetDeallocateCooldown(uint256 oldDeallocateCooldown, uint256 newDeallocateCooldown);
	event SetForceCancelCooldown(uint256 oldForceCancelCooldown, uint256 newForceCancelCooldown);
	event SetForceCloseCooldowns(
		uint256 oldForceCloseFirstCooldown,
		uint256 newForceCloseFirstCooldown,
		uint256 oldForceCloseSecondCooldown,
		uint256 newForceCloseSecondCooldown
	);
	event SetForceClosePricePenalty(uint256 oldPricePenalty, uint256 newPricePenalty);
	event SetForceCloseMinSigPeriod(uint256 oldCloseMinSigPeriod, uint256 newCloseMinSigPeriod);
	event SetForceCancelCloseCooldown(uint256 oldForceCancelCloseCooldown, uint256 newForceCancelCloseCooldown);
	event SetSettlementCooldown(uint256 oldSettlementCooldown, uint256 newSettlementCooldown);
	event SetLiquidatorShare(uint256 oldLiquidatorShare, uint256 newLiquidatorShare);
	event SetForceCloseGapRatio(uint256 symbolId, uint256 oldForceCloseGapRatio, uint256 newForceCloseGapRatio);
	event SetPendingQuotesValidLength(uint256 oldPendingQuotesValidLength, uint256 newPendingQuotesValidLength);
	event SetDeallocateDebounceTime(uint256 oldDeallocateDebounceTime, uint256 newDeallocateDebounceTime);
	event SetInvalidBridgedAmountsPool(address oldInvalidBridgedAmountsPool, address newInvalidBridgedAmountsPool);
	event PauseGlobal();
	event PauseLiquidation();
	event PauseAccounting();
	event PausePartyAActions();
	event PausePartyBActions();
	event PauseInternalTransfer();
	event ActiveEmergencyMode();
	event UnpauseGlobal();
	event UnpauseLiquidation();
	event UnpauseAccounting();
	event UnpausePartyAActions();
	event UnpausePartyBActions();
	event UnpauseInternalTransfer();
	event DeactiveEmergencyMode();
	event SetLiquidationTimeout(uint256 oldLiquidationTimeout, uint256 newLiquidationTimeout);
	event SetSuspendedAddress(address user, bool isSuspended);
	event SetPartyBEmergencyStatus(address partyB, bool status);
	event SetBalanceLimitPerUser(uint256 balanceLimitPerUser);
	event RegisterPartyB(address partyB);
	event DeregisterPartyB(address partyB, uint256 index);
	event RegisterAffiliate(address affilate);
	event DeregisterAffiliate(address affilate);
	event AddBridge(address bridge);
	event RemoveBridge(address bridge);
}

// ============================================================
// FILE: contracts/facets/Control/IControlFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "./IControlEvents.sol";
import "../../storages/SymbolStorage.sol";
import "../../storages/MuonStorage.sol";

interface IControlFacet is IControlEvents {
	function transferOwnership(address owner) external;

	function setAdmin(address user) external;

	function grantRole(address user, bytes32 role) external;

	function revokeRole(address user, bytes32 role) external;

	function registerPartyB(address partyB) external;

	function deregisterPartyB(address partyB, uint256 index) external;

	function registerAffiliate(address affiliate) external;

	function deregisterAffiliate(address affiliate) external;

	function setMuonConfig(uint256 upnlValidTime, uint256 priceValidTime) external;

	function setMuonIds(uint256 muonAppId, address validGateway, PublicKey memory publicKey) external;

	function setCollateral(address collateral) external;

	// Symbol State

	function addSymbol(
		string memory name,
		uint256 minAcceptableQuoteValue,
		uint256 minAcceptablePortionLF,
		uint256 tradingFee,
		uint256 maxLeverage,
		uint256 fundingRateEpochDuration,
		uint256 fundingRateWindowTime
	) external;

	function addSymbols(Symbol[] memory symbols) external;

	function setSymbolFundingState(uint256 symbolId, uint256 fundingRateEpochDuration, uint256 fundingRateWindowTime) external;

	function setSymbolValidationState(uint256 symbolId, bool isValid) external;

	function setSymbolMaxLeverage(uint256 symbolId, uint256 maxLeverage) external;

	function setSymbolAcceptableValues(uint256 symbolId, uint256 minAcceptableQuoteValue, uint256 minAcceptablePortionLF) external;

	function setSymbolTradingFee(uint256 symbolId, uint256 tradingFee) external;

	/////////////////////////////////////

	// CoolDowns

	function setDeallocateCooldown(uint256 deallocateCooldown) external;

	function setForceCancelCooldown(uint256 forceCancelCooldown) external;

	function setForceCloseCooldowns(uint256 forceCloseFirstCooldown, uint256 forceCloseSecondCooldown) external;

	function setForceClosePricePenalty(uint256 forceClosePricePenalty) external;

	function setForceCloseMinSigPeriod(uint256 forceCloseMinSigPeriod) external;

	function setForceCancelCloseCooldown(uint256 forceCancelCloseCooldown) external;

	function setLiquidatorShare(uint256 liquidatorShare) external;

	function setForceCloseGapRatio(uint256 symbolId, uint256 forceCloseGapRatio) external;

	function setPendingQuotesValidLength(uint256 pendingQuotesValidLength) external;

	function setDeallocateDebounceTime(uint256 deallocateDebounceTime) external;

	function setInvalidBridgedAmountsPool(address pool) external;

	function setSettlementCooldown(uint256 settlementCooldown) external;

	// Pause State
	function setFeeCollector(address affiliate, address feeCollector) external;

	function pauseGlobal() external;

	function pauseLiquidation() external;

	function pauseAccounting() external;

	function pausePartyAActions() external;

	function pausePartyBActions() external;

	function activeEmergencyMode() external;

	function unpauseGlobal() external;

	function unpauseLiquidation() external;

	function unpauseAccounting() external;

	function unpausePartyAActions() external;

	function unpausePartyBActions() external;

	function setLiquidationTimeout(uint256 liquidationTimeout) external;

	function suspendedAddress(address user) external;

	function unsuspendedAddress(address user) external;

	function deactiveEmergencyMode() external;

	function setBalanceLimitPerUser(uint256 balanceLimitPerUser) external;

	function setPartyBEmergencyStatus(address[] memory partyBs, bool status) external;

	function addBridge(address bridge) external;

	function removeBridge(address bridge) external;
}

// ============================================================
// FILE: contracts/facets/DiamondCut/IDiamondCut.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.18;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

interface IDiamondCut {
	// Add=0, Replace=1, Remove=2
	enum FacetCutAction {
		Add,
		Replace,
		Remove
	}

	struct FacetCut {
		address facetAddress;
		FacetCutAction action;
		bytes4[] functionSelectors;
	}

	/// @notice Add/replace/remove any number of functions and optionally execute
	///         a function with delegatecall
	/// @param _diamondCut Contains the facet addresses and function selectors
	/// @param _init The address of the contract or facet to execute _calldata
	/// @param _calldata A function call, including function selector and arguments
	///                  _calldata is executed with delegatecall on _init
	function diamondCut(FacetCut[] calldata _diamondCut, address _init, bytes calldata _calldata) external;

	event DiamondCut(FacetCut[] _diamondCut, address _init, bytes _calldata);
}

// ============================================================
// FILE: contracts/facets/DiamondLoup/IDiamondLoupe.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.18;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

// A loupe is a small magnifying glass used to look at diamonds.
// These functions look at diamonds
interface IDiamondLoupe {
	struct Facet {
		address facetAddress;
		bytes4[] functionSelectors;
	}

	/// @notice Gets all facet addresses and their four byte function selectors.
	/// @return facets_ Facet
	function facets() external view returns (Facet[] memory facets_);

	/// @notice Gets all the function selectors supported by a specific facet.
	/// @param _facet The facet address.
	/// @return facetFunctionSelectors_
	function facetFunctionSelectors(address _facet) external view returns (bytes4[] memory facetFunctionSelectors_);

	/// @notice Get all the facet addresses used by a diamond.
	/// @return facetAddresses_
	function facetAddresses() external view returns (address[] memory facetAddresses_);

	/// @notice Gets the facet that supports the given selector.
	/// @dev If facet is not found return address(0).
	/// @param _functionSelector The function selector.
	/// @return facetAddress_ The facet address.
	function facetAddress(bytes4 _functionSelector) external view returns (address facetAddress_);
}

// ============================================================
// FILE: contracts/facets/ForceActions/ForceActionsFacetEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../../storages/QuoteStorage.sol";

interface ForceActionsFacetEvents {
	event ForceCancelQuote(uint256 quoteId, QuoteStatus quoteStatus);
	event ForceCancelCloseRequest(uint256 quoteId, QuoteStatus quoteStatus, uint256 closeId);
	event ForceCancelCloseRequest(uint256 quoteId, QuoteStatus quoteStatus); // For backward compatibility, will be removed in future
	event ForceClosePosition(
		uint256 quoteId,
		address partyA,
		address partyB,
		uint256 filledAmount,
		uint256 closedPrice,
		QuoteStatus quoteStatus,
		uint256 closeId
	);
	event ForceClosePosition(uint256 quoteId, address partyA, address partyB, uint256 filledAmount, uint256 closedPrice, QuoteStatus quoteStatus); // For backward compatibility, will be removed in future
}

// ============================================================
// FILE: contracts/facets/ForceActions/IForceActionsFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../../storages/MuonStorage.sol";
import "./ForceActionsFacetEvents.sol";

interface IForceActionsFacet is ForceActionsFacetEvents {
	function forceCancelQuote(uint256 quoteId) external;

	function forceCancelCloseRequest(uint256 quoteId) external;

	function forceClosePosition(uint256 quoteId, HighLowPriceSig memory sig) external;

	function settleAndForceClosePosition(
		uint256 quoteId,
		HighLowPriceSig memory highLowPriceSig,
		SettlementSig memory settleSig,
		uint256[] memory updatedPrices
	) external;
}

// ============================================================
// FILE: contracts/facets/FundingRate/IFundingRateEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

interface IFundingRateEvents {
	event ChargeFundingRate(address partyB, address partyA, uint256[] quoteIds, int256[] rates);
}

// ============================================================
// FILE: contracts/facets/FundingRate/IFundingRateFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;
import "./IFundingRateEvents.sol";
import "../../storages/MuonStorage.sol";

interface IFundingRateFacet is IFundingRateEvents {
	function chargeFundingRate(address partyA, uint256[] memory quoteIds, int256[] memory rates, PairUpnlSig memory upnlSig) external;
}

// ============================================================
// FILE: contracts/facets/liquidation/ILiquidationEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;
import "../../interfaces/IPartiesEvents.sol";

interface ILiquidationEvents is IPartiesEvents {
	event LiquidatePartyA(address liquidator, address partyA, uint256 allocatedBalance, int256 upnl, int256 totalUnrealizedLoss, bytes liquidationId);
	event LiquidatePartyA(address liquidator, address partyA, uint256 allocatedBalance, int256 upnl, int256 totalUnrealizedLoss); // For backward compatibility, will be removed in future
	event DeferredLiquidatePartyA(
		address liquidator,
		address partyA,
		uint256 allocatedBalance,
		int256 upnl,
		int256 totalUnrealizedLoss,
		bytes liquidationId,
		uint256 liquidationBlockNumber,
		uint256 liquidationTimestamp,
		uint256 liquidationAllocatedBalance
	);
	event LiquidatePositionsPartyA(
		address liquidator,
		address partyA,
		uint256[] quoteIds,
		uint256[] liquidatedAmounts,
		uint256[] closeIds,
		bytes liquidationId
	);
	event LiquidatePositionsPartyA(address liquidator, address partyA, uint256[] quoteIds); // For backward compatibility, will be removed in future
	event LiquidatePendingPositionsPartyA(address liquidator, address partyA, uint256[] quoteIds, uint256[] liquidatedAmounts, bytes liquidationId);
	event LiquidatePendingPositionsPartyA(address liquidator, address partyA); // For backward compatibility, will be removed in future
	event SettlePartyALiquidation(address partyA, address[] partyBs, int256[] amounts, bytes liquidationId);
	event SettlePartyALiquidation(address partyA, address[] partyBs, int256[] amounts); // For backward compatibility, will be removed in future
	event LiquidationDisputed(address partyA, bytes liquidationId);
	event LiquidationDisputed(address partyA); // For backward compatibility, will be removed in future
	event ResolveLiquidationDispute(address partyA, address[] partyBs, int256[] amounts, bool disputed, bytes liquidationId);
	event ResolveLiquidationDispute(address partyA, address[] partyBs, int256[] amounts, bool disputed); // For backward compatibility, will be removed in future
	event FullyLiquidatedPartyA(address partyA, bytes liquidationId);
	event FullyLiquidatedPartyA(address partyA); // For backward compatibility, will be removed in future
	event LiquidatePositionsPartyB(
		address liquidator,
		address partyB,
		address partyA,
		uint256[] quoteIds,
		uint256[] liquidatedAmounts,
		uint256[] closeIds
	);
	event LiquidatePositionsPartyB(address liquidator, address partyB, address partyA, uint256[] quoteIds); // For backward compatibility, will be removed in future
	event FullyLiquidatedPartyB(address partyB, address partyA);
	event SetSymbolsPrices(address liquidator, address partyA, uint256[] symbolIds, uint256[] prices, bytes liquidationId);
	event SetSymbolsPrices(address liquidator, address partyA, uint256[] symbolIds, uint256[] prices); // For backward compatibility, will be removed in future
	event DisputeForLiquidation(address liquidator, address partyA, bytes liquidationId);
}

// ============================================================
// FILE: contracts/facets/liquidation/ILiquidationFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "./ILiquidationEvents.sol";
import "../../storages/AccountStorage.sol";
import "../../storages/MuonStorage.sol";

interface ILiquidationFacet is ILiquidationEvents {
	function liquidatePartyA(address partyA, LiquidationSig memory liquidationSig) external;

	function setSymbolsPrice(address partyA, LiquidationSig memory liquidationSig) external;

	function deferredLiquidatePartyA(address partyA, DeferredLiquidationSig memory liquidationSig) external;

	function deferredSetSymbolsPrice(address partyA, DeferredLiquidationSig memory liquidationSig) external;

	function liquidatePendingPositionsPartyA(address partyA) external;

	function liquidatePositionsPartyA(address partyA, uint256[] memory quoteIds) external;

	function settlePartyALiquidation(address partyA, address[] memory partyBs) external;

	function resolveLiquidationDispute(address partyA, address[] memory partyBs, int256[] memory amounts, bool disputed) external;

	function liquidatePartyB(address partyB, address partyA, SingleUpnlSig memory upnlSig) external;

	function liquidatePositionsPartyB(address partyB, address partyA, QuotePriceSig memory priceSig) external;
}

// ============================================================
// FILE: contracts/facets/PartyA/IPartyAEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../../storages/QuoteStorage.sol";
import "../../interfaces/IPartiesEvents.sol";

interface IPartyAEvents is IPartiesEvents {
	event RequestToCancelQuote(address partyA, address partyB, QuoteStatus quoteStatus, uint256 quoteId);
	event RequestToClosePosition(
		address partyA,
		address partyB,
		uint256 quoteId,
		uint256 closePrice,
		uint256 quantityToClose,
		OrderType orderType,
		uint256 deadline,
		QuoteStatus quoteStatus,
		uint256 closeId
	);
	event RequestToClosePosition(
		address partyA,
		address partyB,
		uint256 quoteId,
		uint256 closePrice,
		uint256 quantityToClose,
		OrderType orderType,
		uint256 deadline,
		QuoteStatus quoteStatus
	); // For backward compatibility, will be removed in future
	event RequestToCancelCloseRequest(address partyA, address partyB, uint256 quoteId, QuoteStatus quoteStatus, uint256 closeId);
	event RequestToCancelCloseRequest(address partyA, address partyB, uint256 quoteId, QuoteStatus quoteStatus); // For backward compatibility, will be removed in future
}

// ============================================================
// FILE: contracts/facets/PartyA/IPartyAFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "./IPartyAEvents.sol";
import "../../storages/MuonStorage.sol";

interface IPartyAFacet is IPartyAEvents {
	function sendQuote(
		address[] memory partyBsWhiteList,
		uint256 symbolId,
		PositionType positionType,
		OrderType orderType,
		uint256 price,
		uint256 quantity,
		uint256 cva,
		uint256 lf,
		uint256 partyAmm,
		uint256 partyBmm,
		uint256 maxFundingRate,
		uint256 deadline,
		SingleUpnlAndPriceSig memory upnlSig
	) external;

	function sendQuoteWithAffiliate(
		address[] memory partyBsWhiteList,
		uint256 symbolId,
		PositionType positionType,
		OrderType orderType,
		uint256 price,
		uint256 quantity,
		uint256 cva,
		uint256 lf,
		uint256 partyAmm,
		uint256 partyBmm,
		uint256 maxFundingRate,
		uint256 deadline,
		address affiliate,
		SingleUpnlAndPriceSig memory upnlSig
	) external returns (uint256);

	function expireQuote(uint256[] memory expiredQuoteIds) external;

	function requestToCancelQuote(uint256 quoteId) external;

	function requestToClosePosition(uint256 quoteId, uint256 closePrice, uint256 quantityToClose, OrderType orderType, uint256 deadline) external;

	function requestToCancelCloseRequest(uint256 quoteId) external;
}

// ============================================================
// FILE: contracts/facets/PartyBGroupActions/IPartyBGroupActionsFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../PartyBQuoteActions/IPartyBQuoteActionsEvents.sol";

interface IPartyBGroupActionsFacet is IPartyBQuoteActionsEvents {
	function lockAndOpenQuote(
		uint256 quoteId,
		uint256 filledAmount,
		uint256 openedPrice,
		SingleUpnlSig memory upnlSig,
		PairUpnlAndPriceSig memory pairUpnlSig
	) external;
}

// ============================================================
// FILE: contracts/facets/PartyBPositionActions/IPartyBPositionActionsEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../../interfaces/IPartiesEvents.sol";

interface IPartyBPositionActionsEvents is IPartiesEvents {
	event AcceptCancelCloseRequest(uint256 quoteId, QuoteStatus quoteStatus, uint256 closeId);
	event AcceptCancelCloseRequest(uint256 quoteId, QuoteStatus quoteStatus); // For backward compatibility, will be removed in future
	event EmergencyClosePosition(
		uint256 quoteId,
		address partyA,
		address partyB,
		uint256 filledAmount,
		uint256 closedPrice,
		QuoteStatus quoteStatus,
		uint256 closeId
	);
	event EmergencyClosePosition(uint256 quoteId, address partyA, address partyB, uint256 filledAmount, uint256 closedPrice, QuoteStatus quoteStatus); // For backward compatibility, will be removed in future
}

// ============================================================
// FILE: contracts/facets/PartyBPositionActions/IPartyBPositionActionsFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "./IPartyBPositionActionsEvents.sol";

interface IPartyBPositionActionsFacet is IPartyBPositionActionsEvents {
	function openPosition(uint256 quoteId, uint256 filledAmount, uint256 openedPrice, PairUpnlAndPriceSig memory upnlSig) external;

	function fillCloseRequest(uint256 quoteId, uint256 filledAmount, uint256 closedPrice, PairUpnlAndPriceSig memory upnlSig) external;

	function acceptCancelCloseRequest(uint256 quoteId) external;

	function emergencyClosePosition(uint256 quoteId, PairUpnlAndPriceSig memory upnlSig) external;
}

// ============================================================
// FILE: contracts/facets/PartyBQuoteActions/IPartyBQuoteActionsEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../../interfaces/IPartiesEvents.sol";

interface IPartyBQuoteActionsEvents is IPartiesEvents {
	event LockQuote(address partyB, uint256 quoteId);
	event AllocatePartyB(address partyB, address partyA, uint256 amount);
	event UnlockQuote(address partyB, uint256 quoteId, QuoteStatus quoteStatus);
}

// ============================================================
// FILE: contracts/facets/PartyBQuoteActions/IPartyBQuoteActionsFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "./IPartyBQuoteActionsEvents.sol";

interface IPartyBQuoteActionsFacet is IPartyBQuoteActionsEvents {
	function lockQuote(uint256 quoteId, SingleUpnlSig memory upnlSig) external;

	function unlockQuote(uint256 quoteId) external;

	function acceptCancelRequest(uint256 quoteId) external;
}

// ============================================================
// FILE: contracts/facets/Settlement/ISettlementFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../../storages/MuonStorage.sol";
import "./SettlementFacetEvents.sol";

interface ISettlementFacet is SettlementFacetEvents {
	function settleUpnl(SettlementSig memory settleSig, uint256[] memory updatedPrices, address partyA) external;
}

// ============================================================
// FILE: contracts/facets/Settlement/SettlementFacetEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../../storages/MuonStorage.sol";

interface SettlementFacetEvents {
	event SettleUpnl(
		QuoteSettlementData[] settlementData,
		uint256[] updatedPrices,
		address partyA,
		uint256 newPartyAAllocatedBalance,
		uint256[] newPartyBsAllocatedBalances
	);
}

// ============================================================
// FILE: contracts/facets/ViewFacet/IViewFacet.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../../storages/AccountStorage.sol";
import "../../storages/SymbolStorage.sol";
import "../../storages/MuonStorage.sol";
import "../../storages/BridgeStorage.sol";

interface IViewFacet {
	struct Bitmap {
		uint256 size;
		BitmapElement[] elements;
	}

	struct BitmapElement {
		uint256 offset;
		uint256 bitmap;
	}

	// Account
	function balanceOf(address user) external view returns (uint256);

	function partyAStats(
		address partyA
	)
		external
		view
		returns (bool, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256);

	function balanceInfoOfPartyA(
		address partyA
	) external view returns (uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256);

	function balanceInfoOfPartyB(
		address partyB,
		address partyA
	) external view returns (uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256);

	function allocatedBalanceOfPartyA(address partyA) external view returns (uint256);

	function allocatedBalanceOfPartyB(address partyB, address partyA) external view returns (uint256);

	function balanceOfReserveVault(address partyB) external view returns (uint256);

	function allocatedBalanceOfPartyBs(address partyA, address[] memory partyBs) external view returns (uint256[] memory);

	function withdrawCooldownOf(address user) external view returns (uint256);

	function nonceOfPartyA(address partyA) external view returns (uint256);

	function nonceOfPartyB(address partyB, address partyA) external view returns (uint256);

	function isSuspended(address user) external view returns (bool);

	function getLiquidatedStateOfPartyA(address partyA) external view returns (LiquidationDetail memory);

	function getDeallocateDebounceTime() external view returns (uint256);

	function getInvalidBridgedAmountsPool() external view returns (address);

	function getSettlementStates(address partyA, address[] memory partyBs) external view returns (SettlementState[] memory);

	///////////////////////////////////////////

	// Symbols
	function getSymbol(uint256 symbolId) external view returns (Symbol memory);

	function getSymbols(uint256 start, uint256 size) external view returns (Symbol[] memory);

	function symbolsByQuoteId(uint256[] memory quoteIds) external view returns (Symbol[] memory);

	function symbolNameByQuoteId(uint256[] memory quoteIds) external view returns (string[] memory);

	function symbolNameById(uint256[] memory symbolIds) external view returns (string[] memory);

	////////////////////////////////////

	// Quotes
	function getQuote(uint256 quoteId) external view returns (Quote memory);

	function getQuotesByParent(uint256 quoteId, uint256 size) external view returns (Quote[] memory);

	function quoteIdsOf(address partyA, uint256 start, uint256 size) external view returns (uint256[] memory);

	function getQuotes(address partyA, uint256 start, uint256 size) external view returns (Quote[] memory);

	function quotesLength(address user) external view returns (uint256);

	function partyAPositionsCount(address partyA) external view returns (uint256);

	function getBridgeTransactions(address bridge, uint256 start, uint256 size) external view returns (BridgeTransaction[] memory);

	function getPartyAOpenPositions(address partyA, uint256 start, uint256 size) external view returns (Quote[] memory);

	function getPartyBOpenPositions(address partyB, address partyA, uint256 start, uint256 size) external view returns (Quote[] memory);

	function getPositionsFilteredByPartyB(address partyB, uint256 start, uint256 size) external view returns (Quote[] memory);

	function getOpenPositionsFilteredByPartyB(address partyB, uint256 start, uint256 size) external view returns (Quote[] memory);

	function getActivePositionsFilteredByPartyB(address partyB, uint256 start, uint256 size) external view returns (Quote[] memory);

	function partyBPositionsCount(address partyB, address partyA) external view returns (uint256);

	function getPartyAPendingQuotes(address partyA) external view returns (uint256[] memory);

	function getPartyBPendingQuotes(address partyB, address partyA) external view returns (uint256[] memory);

	function getQuotesWithBitmap(Bitmap calldata bitmap, uint256 gasNeededForReturn) external view returns (Quote[] memory quotes);

	/////////////////////////////////////

	// Role
	function hasRole(address user, bytes32 role) external view returns (bool);

	function getRoleHash(string memory str) external pure returns (bytes32);

	//////////////////////////////////////

	// MA
	function getCollateral() external view returns (address);

	function getFeeCollector(address affiliate) external view returns (address);

	function getDefaultFeeCollector() external view returns (address);

	function isPartyALiquidated(address partyA) external view returns (bool);

	function isPartyBLiquidated(address partyB, address partyA) external view returns (bool);

	function isPartyB(address user) external view returns (bool);

	function isAffiliate(address affiliate) external view returns (bool);

	function pendingQuotesValidLength() external view returns (uint256);

	function forceCloseGapRatio(uint256 symbolId) external view returns (uint256);

	function forceClosePricePenalty() external view returns (uint256);

	function forceCloseMinSigPeriod() external view returns (uint256);

	function liquidatorShare() external view returns (uint256);

	function liquidationTimeout() external view returns (uint256);

	function partyBLiquidationTimestamp(address partyB, address partyA) external view returns (uint256);

	function coolDownsOfMA() external view returns (uint256, uint256, uint256, uint256);

	function settlementCooldown() external view returns (uint256);

	function lastUpnlSettlementTimestamp(address senderPartyB, address targetPartyB, address partyA) external view returns (uint256);

	///////////////////////////////////////////

	function getMuonConfig() external view returns (uint256 upnlValidTime, uint256 priceValidTime);

	function getMuonIds() external view returns (uint256 muonAppId, PublicKey memory muonPublicKey, address validGateway);

	function pauseState()
		external
		view
		returns (
			bool globalPaused,
			bool liquidationPaused,
			bool accountingPaused,
			bool partyBActionsPaused,
			bool partyAActionsPaused,
			bool internalTransferPaused,
			bool emergencyMode
		);

	function getPartyBEmergencyStatus(address partyB) external view returns (bool isEmergency);

	function getBalanceLimitPerUser() external view returns (uint256);

	function verifyMuonTSSAndGateway(bytes32 hash, SchnorrSign memory sign, bytes memory gatewaySignature) external view;

	function getNextQuoteId() external view returns (uint256);

	function getBridgeTransaction(uint256 transactionId) external view returns (BridgeTransaction memory);

	function getNextBridgeTransactionId() external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IMultiAccount.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

interface IMultiAccount {
	struct Account {
		address accountAddress;
		string name;
	}
	event SetAccountImplementation(bytes oldAddress, bytes newAddress);
	event SetAccountsAdmin(address oldAddress, address newAddress);
	event SetSymmioAddress(address oldAddress, address newAddress);
	event DeployContract(address sender, address contractAddress);
	event AddAccount(address user, address account, string name);
	event EditAccountName(address user, address account, string newName);
	event DepositForAccount(address user, address account, uint256 amount);
	event AllocateForAccount(address user, address account, uint256 amount);
	event WithdrawFromAccount(address user, address account, uint256 amount);
	event Call(address user, address account, bytes _callData, bool _success, bytes _resultData);
	event DelegateAccess(address account, address target, bytes4 selector, bool state);
	event DelegateAccesses(address account, address target, bytes4[] selector, bool state);
	event ProposeToRevokeAccesses(address account, address target, bytes4[] selector);
	event SetRevokeCooldown(uint256 oldCooldown, uint256 newCooldown);
}

// ============================================================
// FILE: contracts/interfaces/IPartiesEvents.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../storages/QuoteStorage.sol";
import "../storages/MuonStorage.sol";

interface IPartiesEvents {
	event AcceptCancelRequest(uint256 quoteId, QuoteStatus quoteStatus);

	event SendQuote(
		address partyA,
		uint256 quoteId,
		address[] partyBsWhiteList,
		uint256 symbolId,
		PositionType positionType,
		OrderType orderType,
		uint256 price,
		uint256 marketPrice,
		uint256 quantity,
		uint256 cva,
		uint256 lf,
		uint256 partyAmm,
		uint256 partyBmm,
		uint256 tradingFee,
		uint256 deadline
	);

	event ExpireQuote(QuoteStatus quoteStatus, uint256 quoteId); // For backward compatibility, will be removed in future

	event ExpireQuoteOpen(QuoteStatus quoteStatus, uint256 quoteId);

	event ExpireQuoteClose(QuoteStatus quoteStatus, uint256 quoteId, uint256 closeId);

	event OpenPosition(uint256 quoteId, address partyA, address partyB, uint256 filledAmount, uint256 openedPrice);

	event FillCloseRequest(
		uint256 quoteId,
		address partyA,
		address partyB,
		uint256 filledAmount,
		uint256 closedPrice,
		QuoteStatus quoteStatus,
		uint256 closeId
	);

	event FillCloseRequest(uint256 quoteId, address partyA, address partyB, uint256 filledAmount, uint256 closedPrice, QuoteStatus quoteStatus); // For backward compatibility, will be removed in future

	event LiquidatePartyB(address liquidator, address partyB, address partyA, uint256 partyBAllocatedBalance, int256 upnl);
}

// ============================================================
// FILE: contracts/interfaces/ISymmio.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../facets/Account/IAccountFacet.sol";
import "../facets/Control/IControlFacet.sol";
import "../facets/FundingRate/IFundingRateFacet.sol";
import "../facets/liquidation/ILiquidationFacet.sol";
import "../facets/PartyA/IPartyAFacet.sol";
import "../facets/Bridge/IBridgeFacet.sol";
import "../facets/ViewFacet/IViewFacet.sol";
import "../facets/DiamondCut/IDiamondCut.sol";
import "../facets/DiamondLoup/IDiamondLoupe.sol";
import "../facets/PartyBQuoteActions/IPartyBQuoteActionsFacet.sol";
import "../facets/PartyBPositionActions/IPartyBPositionActionsFacet.sol";
import "../facets/PartyBGroupActions/IPartyBGroupActionsFacet.sol";
import "../facets/ForceActions/IForceActionsFacet.sol";
import "../facets/Settlement/ISettlementFacet.sol";

interface ISymmio is
	IAccountFacet,
	IControlFacet,
	IFundingRateFacet,
	IBridgeFacet,
	ISettlementFacet,
	IForceActionsFacet,
	IPartyBQuoteActionsFacet,
	IPartyBGroupActionsFacet,
	IPartyBPositionActionsFacet,
	IPartyAFacet,
	ILiquidationFacet,
	IViewFacet,
	IDiamondCut,
	IDiamondLoupe
{
	// Copied from SharedEvents library
	enum BalanceChangeType {
		ALLOCATE,
		DEALLOCATE,
		PLATFORM_FEE_IN,
		PLATFORM_FEE_OUT,
		REALIZED_PNL_IN,
		REALIZED_PNL_OUT,
		CVA_IN,
		CVA_OUT,
		LF_IN,
		LF_OUT,
		FUNDING_FEE_IN,
		FUNDING_FEE_OUT
	}

	// Copied from SharedEvents library
	event BalanceChangePartyA(address indexed partyA, uint256 amount, BalanceChangeType _type);

	// Copied from SharedEvents library
	event BalanceChangePartyB(address indexed partyB, address indexed partyA, uint256 amount, BalanceChangeType _type);
}

// ============================================================
// FILE: contracts/interfaces/ISymmioPartyA.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

interface ISymmioPartyA {
	function _approve(address token, uint256 amount) external;

	function _call(bytes calldata _callData) external returns (bool _success, bytes memory _resultData);

	function withdrawERC20(address token, uint256 amount) external;
}

// ============================================================
// FILE: contracts/libraries/LibLockedValues.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "../storages/QuoteStorage.sol";

library LockedValuesOps {
	using SafeMath for uint256;

	/**
	 * @notice Adds the values of two LockedValues structs.
	 * @param self The LockedValues struct to which values will be added.
	 * @param a The LockedValues struct containing values to be added.
	 * @return The updated LockedValues struct.
	 */
	function add(LockedValues storage self, LockedValues memory a) internal returns (LockedValues storage) {
		self.cva = self.cva.add(a.cva);
		self.partyAmm = self.partyAmm.add(a.partyAmm);
		self.partyBmm = self.partyBmm.add(a.partyBmm);
		self.lf = self.lf.add(a.lf);
		return self;
	}

	/**
	 * @notice Adds the locked values of a quote to a LockedValues struct.
	 * @param self The LockedValues struct to which values will be added.
	 * @param quote The Quote struct containing locked values to be added.
	 * @return The updated LockedValues struct.
	 */
	function addQuote(LockedValues storage self, Quote storage quote) internal returns (LockedValues storage) {
		return add(self, quote.lockedValues);
	}

	/**
	 * @notice Subtracts the values of two LockedValues structs.
	 * @param self The LockedValues struct from which values will be subtracted.
	 * @param a The LockedValues struct containing values to be subtracted.
	 * @return The updated LockedValues struct.
	 */
	function sub(LockedValues storage self, LockedValues memory a) internal returns (LockedValues storage) {
		self.cva = self.cva.sub(a.cva);
		self.partyAmm = self.partyAmm.sub(a.partyAmm);
		self.partyBmm = self.partyBmm.sub(a.partyBmm);
		self.lf = self.lf.sub(a.lf);
		return self;
	}

	/**
	 * @notice Subtracts the locked values of a quote from a LockedValues struct.
	 * @param self The LockedValues struct from which values will be subtracted.
	 * @param quote The Quote struct containing locked values to be subtracted.
	 * @return The updated LockedValues struct.
	 */
	function subQuote(LockedValues storage self, Quote storage quote) internal returns (LockedValues storage) {
		return sub(self, quote.lockedValues);
	}

	/**
	 * @notice Sets all values of a LockedValues struct to zero.
	 * @param self The LockedValues struct to be zeroed.
	 * @return The updated LockedValues struct.
	 */
	function makeZero(LockedValues storage self) internal returns (LockedValues storage) {
		self.cva = 0;
		self.partyAmm = 0;
		self.partyBmm = 0;
		self.lf = 0;
		return self;
	}

	/**
	 * @notice Calculates the total locked balance for Party A.
	 * @param self The LockedValues struct containing locked values.
	 * @return The total locked balance for Party A.
	 */
	function totalForPartyA(LockedValues memory self) internal pure returns (uint256) {
		return self.cva + self.partyAmm + self.lf;
	}

	/**
	 * @notice Calculates the total locked balance for Party B.
	 * @param self The LockedValues struct containing locked values.
	 * @return The total locked balance for Party B.
	 */
	function totalForPartyB(LockedValues memory self) internal pure returns (uint256) {
		return self.cva + self.partyBmm + self.lf;
	}

	/**
	 * @notice Multiplies all values of a LockedValues struct by a scalar value.
	 * @param self The LockedValues struct to be multiplied.
	 * @param a The scalar value to multiply by.
	 * @return The updated LockedValues struct.
	 */
	function mul(LockedValues storage self, uint256 a) internal returns (LockedValues storage) {
		self.cva = self.cva.mul(a);
		self.partyAmm = self.partyAmm.mul(a);
		self.partyBmm = self.partyBmm.mul(a);
		self.lf = self.lf.mul(a);
		return self;
	}

	/**
	 * @notice Multiplies all values of a LockedValues struct by a scalar value (memory version).
	 * @param self The LockedValues struct to be multiplied.
	 * @param a The scalar value to multiply by.
	 * @return The updated LockedValues struct.
	 */
	function mulMem(LockedValues memory self, uint256 a) internal pure returns (LockedValues memory) {
		LockedValues memory lockedValues = LockedValues(self.cva.mul(a), self.lf.mul(a), self.partyAmm.mul(a), self.partyBmm.mul(a));
		return lockedValues;
	}

	/**
	 * @notice Divides all values of a LockedValues struct by a scalar value.
	 * @param self The LockedValues struct to be divided.
	 * @param a The scalar value to divide by.
	 * @return The updated LockedValues struct.
	 */
	function div(LockedValues storage self, uint256 a) internal returns (LockedValues storage) {
		self.cva = self.cva.div(a);
		self.partyAmm = self.partyAmm.div(a);
		self.partyBmm = self.partyBmm.div(a);
		self.lf = self.lf.div(a);
		return self;
	}

	/**
	 * @notice Divides all values of a LockedValues struct by a scalar value (memory version).
	 * @param self The LockedValues struct to be divided.
	 * @param a The scalar value to divide by.
	 * @return The updated LockedValues struct.
	 */
	function divMem(LockedValues memory self, uint256 a) internal pure returns (LockedValues memory) {
		LockedValues memory lockedValues = LockedValues(self.cva.div(a), self.lf.div(a), self.partyAmm.div(a), self.partyBmm.div(a));
		return lockedValues;
	}
}

// ============================================================
// FILE: contracts/multiAccount/MultiAccount.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/interfaces/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../interfaces/ISymmio.sol";
import "../interfaces/ISymmioPartyA.sol";
import "../interfaces/IMultiAccount.sol";

contract MultiAccount is IMultiAccount, Initializable, PausableUpgradeable, AccessControlUpgradeable {
	using SafeERC20Upgradeable for IERC20Upgradeable;

	bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");
	bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
	bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

	mapping(address => Account[]) public accounts; // User to their accounts mapping
	mapping(address => uint256) public indexOfAccount; // Account to its index mapping
	mapping(address => address) public owners; // Account to its owner mapping

	address public accountsAdmin; // Admin address for the accounts
	address public symmioAddress; // Address of the Symmio platform
	uint256 public saltCounter; // Counter for generating unique addresses with create2
	bytes public accountImplementation;

	mapping(address => mapping(address => mapping(bytes4 => bool))) public delegatedAccesses; // account -> target -> selector -> state

	uint256 public revokeCooldown;
	mapping(address => mapping(address => mapping(bytes4 => uint256))) public revokeProposalTimestamp; // account -> target -> selector -> timestamp

	// Modifier to check if the sender is the owner of the account
	modifier onlyOwner(address account, address sender) {
		require(owners[account] == sender, "MultiAccount: Sender isn't owner of account");
		_;
	}

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	/**
	 * @dev Initializes the contract with necessary parameters.
	 * @param admin The admin address for the accounts contracts.
	 * @param symmioAddress_ The address of the Symmio platform.
	 * @param accountImplementation_ The bytecode of the account implementation contract.
	 */
	function initialize(address admin, address symmioAddress_, bytes memory accountImplementation_) public initializer {
		__Pausable_init();
		__AccessControl_init();

		_grantRole(DEFAULT_ADMIN_ROLE, admin);
		_grantRole(PAUSER_ROLE, admin);
		_grantRole(UNPAUSER_ROLE, admin);
		_grantRole(SETTER_ROLE, admin);
		accountsAdmin = admin;
		symmioAddress = symmioAddress_;
		accountImplementation = accountImplementation_;
	}

	/**
	 * @dev Allows the owner of an account to delegate access to a specific function selector of a target contract.
	 * @param account The address of the account.
	 * @param target The address of the target contract.
	 * @param selector The function selector.
	 * @param state The state indicating whether access is granted or revoked.
	 */
	function delegateAccess(address account, address target, bytes4 selector, bool state) external onlyOwner(account, msg.sender) {
		require(target != msg.sender && target != account, "MultiAccount: Invalid target");
		require(state, "MultiAccount: Invalid state");
		emit DelegateAccess(account, target, selector, state);
		delegatedAccesses[account][target][selector] = state;
	}

	/**
	 * @dev Allows the owner of an account to delegate access to a single target contract and multiple function selectors.
	 * @param account The address of the account.
	 * @param target The address of the target contract.
	 * @param selector An array of function selectors.
	 * @param state The state indicating whether access is granted or revoked.
	 */
	function delegateAccesses(address account, address target, bytes4[] memory selector, bool state) external onlyOwner(account, msg.sender) {
		require(target != msg.sender && target != account, "MultiAccount: Invalid target");
		require(state, "MultiAccount: Invalid state");
		for (uint256 i = selector.length; i != 0; i--) {
			delegatedAccesses[account][target][selector[i - 1]] = state;
		}
		emit DelegateAccesses(account, target, selector, state);
	}

	/**
	 * @dev Allows the owner of an account to propose revoke access from a single target contract and multiple function selectors.
	 * @param account The address of the account.
	 * @param target The address of the target contract.
	 * @param selector An array of function selectors.
	 */
	function proposeToRevokeAccesses(address account, address target, bytes4[] memory selector) external onlyOwner(account, msg.sender) {
		require(target != msg.sender && target != account, "MultiAccount: Invalid target");
		for (uint256 i = selector.length; i != 0; i--) {
			revokeProposalTimestamp[account][target][selector[i - 1]] = block.timestamp;
		}
		emit ProposeToRevokeAccesses(account, target, selector);
	}

	/**
	 * @dev Allows the owner of an account to revoke access from a single target contract and multiple function selectors.
	 * @param account The address of the account.
	 * @param target The address of the target contract.
	 * @param selector An array of function selectors.
	 */
	function revokeAccesses(address account, address target, bytes4[] memory selector) external onlyOwner(account, msg.sender) {
		require(target != msg.sender && target != account, "MultiAccount: Invalid target");
		for (uint256 i = selector.length; i != 0; i--) {
			require(revokeProposalTimestamp[account][target][selector[i - 1]] != 0, "MultiAccount: Revoke access not proposed");
			require(
				revokeProposalTimestamp[account][target][selector[i - 1]] + revokeCooldown <= block.timestamp,
				"MultiAccount: Cooldown not reached"
			);
			delegatedAccesses[account][target][selector[i - 1]] = false;
			revokeProposalTimestamp[account][target][selector[i - 1]] = 0;
		}
		emit DelegateAccesses(account, target, selector, false);
	}

	/**
	 * @dev Sets the implementation contract for the account.
	 * @param accountImplementation_ The bytecodes of the new implementation contract.
	 */
	function setAccountImplementation(bytes memory accountImplementation_) external onlyRole(SETTER_ROLE) {
		emit SetAccountImplementation(accountImplementation, accountImplementation_);
		accountImplementation = accountImplementation_;
	}

	/**
	 * @dev Sets the Admin for the accounts.
	 * @param admin The Address of the new accounts admin.
	 */
	function setAccountsAdmin(address admin) external onlyRole(SETTER_ROLE) {
		emit SetAccountsAdmin(accountsAdmin, admin);
		accountsAdmin = admin;
	}

	/**
	 * @dev Sets the revoke cooldown.
	 * @param cooldown the new revoke cooldown.
	 */
	function setRevokeCooldown(uint256 cooldown) external onlyRole(SETTER_ROLE) {
		emit SetRevokeCooldown(revokeCooldown, cooldown);
		revokeCooldown = cooldown;
	}

	/**
	 * @dev Sets the address of the Symmio platform.
	 * @param addr The address of the Symmio platform.
	 */
	function setSymmioAddress(address addr) external onlyRole(SETTER_ROLE) {
		emit SetSymmioAddress(symmioAddress, addr);
		symmioAddress = addr;
	}

	/**
	 * @dev Internal function to deploy a new party A account contract.
	 * @return account The address of the newly deployed account contract.
	 */
	function _deployPartyA() internal returns (address account) {
		bytes32 salt = keccak256(abi.encodePacked("MultiAccount_", saltCounter));
		saltCounter += 1;

		bytes memory bytecode = abi.encodePacked(accountImplementation, abi.encode(accountsAdmin, address(this), symmioAddress));
		account = _deployContract(bytecode, salt);
		return account;
	}

	/**
	 * @dev Internal function to deploy a contract with create2.
	 * @param bytecode The bytecode of the contract to be deployed.
	 * @param salt The salt used for contract deployment.
	 * @return contractAddress The address of the deployed contract.
	 */
	function _deployContract(bytes memory bytecode, bytes32 salt) internal returns (address contractAddress) {
		assembly {
			contractAddress := create2(0, add(bytecode, 32), mload(bytecode), salt)
		}
		require(contractAddress != address(0), "MultiAccount: create2 failed");
		emit DeployContract(msg.sender, contractAddress);
		return contractAddress;
	}

	/**
	 * @dev Pauses the contract, preventing execution of transactions.
	 */
	function pause() external onlyRole(PAUSER_ROLE) {
		_pause();
	}

	/**
	 * @dev Unpauses the contract, allowing execution of transactions.
	 */
	function unpause() external onlyRole(UNPAUSER_ROLE) {
		_unpause();
	}

	//////////////////////////////// Account Management ////////////////////////////////////

	/**
	 * @dev Adds a new account for the caller with the specified name.
	 * @param name The name of the new account.
	 */
	function addAccount(string memory name) external whenNotPaused {
		address account = _deployPartyA();
		indexOfAccount[account] = accounts[msg.sender].length;
		accounts[msg.sender].push(Account(account, name));
		owners[account] = msg.sender;
		emit AddAccount(msg.sender, account, name);
	}

	/**
	 * @dev Edits the name of the specified account.
	 * @param accountAddress The address of the account to edit.
	 * @param name The new name for the account.
	 */
	function editAccountName(address accountAddress, string memory name) external whenNotPaused {
		uint256 index = indexOfAccount[accountAddress];
		accounts[msg.sender][index].name = name;
		emit EditAccountName(msg.sender, accountAddress, name);
	}

	/**
	 * @dev Deposits funds into the specified account.
	 * @param account The address of the account to deposit funds into.
	 * @param amount The amount of funds to deposit.
	 */
	function depositForAccount(address account, uint256 amount) external onlyOwner(account, msg.sender) whenNotPaused {
		address collateral = ISymmio(symmioAddress).getCollateral();
		IERC20Upgradeable(collateral).safeTransferFrom(msg.sender, address(this), amount);
		IERC20Upgradeable(collateral).safeApprove(symmioAddress, amount);
		ISymmio(symmioAddress).depositFor(account, amount);
		emit DepositForAccount(msg.sender, account, amount);
	}

	/**
	 * @dev Deposits funds into the specified account and allocates them.
	 * @param account The address of the account to deposit and allocate funds.
	 * @param amount The amount of funds to deposit and allocate.
	 */
	function depositAndAllocateForAccount(address account, uint256 amount) external onlyOwner(account, msg.sender) whenNotPaused {
		address collateral = ISymmio(symmioAddress).getCollateral();
		IERC20Upgradeable(collateral).safeTransferFrom(msg.sender, address(this), amount);
		IERC20Upgradeable(collateral).safeApprove(symmioAddress, amount);
		ISymmio(symmioAddress).depositFor(account, amount);
		uint256 amountWith18Decimals = (amount * 1e18) / (10 ** IERC20Metadata(collateral).decimals());
		bytes memory _callData = abi.encodeWithSignature("allocate(uint256)", amountWith18Decimals);
		innerCall(account, _callData);
		emit DepositForAccount(msg.sender, account, amount);
		emit AllocateForAccount(msg.sender, account, amountWith18Decimals);
	}

	/**
	 * @dev Withdraws funds from the specified account.
	 * @param account The address of the account to withdraw funds from.
	 * @param amount The amount of funds to withdraw.
	 */
	function withdrawFromAccount(address account, uint256 amount) external onlyOwner(account, msg.sender) whenNotPaused {
		bytes memory _callData = abi.encodeWithSignature("withdrawTo(address,uint256)", owners[account], amount);
		emit WithdrawFromAccount(msg.sender, account, amount);
		innerCall(account, _callData);
	}

	function innerCall(address account, bytes memory _callData) internal {
		(bool _success, bytes memory _resultData) = ISymmioPartyA(account)._call(_callData);
		emit Call(msg.sender, account, _callData, _success, _resultData);
		if (!_success) {
			assembly {
				revert(add(_resultData, 32), mload(_resultData))
			}
		}
	}

	/**
	 * @dev Executes a series of calls on behalf of the specified account.
	 * @param account The address of the account to execute the calls on behalf of.
	 * @param _callDatas An array of call data to execute.
	 */
	function _call(address account, bytes[] memory _callDatas) public whenNotPaused {
		bool isOwner = owners[account] == msg.sender;
		for (uint8 i; i < _callDatas.length; i++) {
			bytes memory _callData = _callDatas[i];
			if (!isOwner) {
				require(_callData.length >= 4, "MultiAccount: Invalid call data");
				bytes4 functionSelector;
				assembly {
					functionSelector := mload(add(_callData, 0x20))
				}
				require(delegatedAccesses[account][msg.sender][functionSelector], "MultiAccount: Unauthorized access");
			}
			innerCall(account, _callData);
		}
	}

	//////////////////////////////// VIEWS ////////////////////////////////////

	/**
	 * @dev Returns the number of accounts belonging to the specified user.
	 * @param user The address of the user.
	 * @return The number of accounts.
	 */
	function getAccountsLength(address user) external view returns (uint256) {
		return accounts[user].length;
	}

	/**
	 * @dev Returns an array of accounts belonging to the specified user.
	 * @param user The address of the user.
	 * @param start The index to start retrieving accounts from.
	 * @param size The maximum number of accounts to retrieve.
	 * @return An array of Account structures.
	 */
	function getAccounts(address user, uint256 start, uint256 size) external view returns (Account[] memory) {
		uint256 len = size > accounts[user].length - start ? accounts[user].length - start : size;
		Account[] memory userAccounts = new Account[](len);
		for (uint256 i = start; i < start + len; i++) {
			userAccounts[i - start] = accounts[user][i];
		}
		return userAccounts;
	}
}

// ============================================================
// FILE: contracts/storages/AccountStorage.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../libraries/LibLockedValues.sol";

enum LiquidationType {
	NONE,
	NORMAL,
	LATE,
	OVERDUE
}

struct SettlementState {
	int256 actualAmount;
	int256 expectedAmount;
	uint256 cva;
	bool pending;
}

struct LiquidationDetail {
	bytes liquidationId;
	LiquidationType liquidationType;
	int256 upnl;
	int256 totalUnrealizedLoss;
	uint256 deficit;
	uint256 liquidationFee;
	uint256 timestamp;
	uint256 involvedPartyBCounts;
	int256 partyAAccumulatedUpnl;
	bool disputed;
	uint256 liquidationTimestamp;
}

struct Price {
	uint256 price;
	uint256 timestamp;
}

library AccountStorage {
	bytes32 internal constant ACCOUNT_STORAGE_SLOT = keccak256("diamond.standard.storage.account");

	struct Layout {
		// Users deposited amounts
		mapping(address => uint256) balances;
		mapping(address => uint256) allocatedBalances;
		// position value will become pending locked before openPosition and will be locked after that
		mapping(address => LockedValues) pendingLockedBalances;
		mapping(address => LockedValues) lockedBalances;
		mapping(address => mapping(address => uint256)) partyBAllocatedBalances;
		mapping(address => mapping(address => LockedValues)) partyBPendingLockedBalances;
		mapping(address => mapping(address => LockedValues)) partyBLockedBalances;
		mapping(address => uint256) withdrawCooldown; // is better to call lastDeallocateTime
		mapping(address => uint256) partyANonces;
		mapping(address => mapping(address => uint256)) partyBNonces;
		mapping(address => bool) suspendedAddresses;
		mapping(address => LiquidationDetail) liquidationDetails;
		mapping(address => mapping(uint256 => Price)) symbolsPrices;
		mapping(address => address[]) liquidators;
		mapping(address => uint256) partyAReimbursement;
		// partyA => partyB => SettlementState
		mapping(address => mapping(address => SettlementState)) settlementStates;
		mapping(address => uint256) reserveVault;
	}

	function layout() internal pure returns (Layout storage l) {
		bytes32 slot = ACCOUNT_STORAGE_SLOT;
		assembly {
			l.slot := slot
		}
	}
}

// ============================================================
// FILE: contracts/storages/BridgeStorage.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

struct BridgeTransaction {
	uint256 id;
	uint256 amount;
	address user;
	address bridge;
	uint256 timestamp;
	BridgeTransactionStatus status;
}

enum BridgeTransactionStatus {
	RECEIVED,
	SUSPENDED,
	WITHDRAWN
}

library BridgeStorage {
	bytes32 internal constant BRIDGE_STORAGE_SLOT = keccak256("diamond.standard.storage.bridge");

	struct Layout {
		mapping(address => bool) bridges;
		mapping(uint256 => BridgeTransaction) bridgeTransactions;
		mapping(address => uint256[]) bridgeTransactionIds;
		uint256 lastId;
		address invalidBridgedAmountsPool;
	}

	function layout() internal pure returns (Layout storage l) {
		bytes32 slot = BRIDGE_STORAGE_SLOT;
		assembly {
			l.slot := slot
		}
	}
}

// ============================================================
// FILE: contracts/storages/MuonStorage.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../libraries/LibLockedValues.sol";

struct SchnorrSign {
	uint256 signature;
	address owner;
	address nonce;
}

struct PublicKey {
	uint256 x;
	uint8 parity;
}

struct SingleUpnlSig {
	bytes reqId;
	uint256 timestamp;
	int256 upnl;
	bytes gatewaySignature;
	SchnorrSign sigs;
}

struct SingleUpnlAndPriceSig {
	bytes reqId;
	uint256 timestamp;
	int256 upnl;
	uint256 price;
	bytes gatewaySignature;
	SchnorrSign sigs;
}

struct PairUpnlSig {
	bytes reqId;
	uint256 timestamp;
	int256 upnlPartyA;
	int256 upnlPartyB;
	bytes gatewaySignature;
	SchnorrSign sigs;
}

struct PairUpnlAndPriceSig {
	bytes reqId;
	uint256 timestamp;
	int256 upnlPartyA;
	int256 upnlPartyB;
	uint256 price;
	bytes gatewaySignature;
	SchnorrSign sigs;
}

struct PairUpnlAndPricesSig {
	bytes reqId;
	uint256 timestamp;
	int256 upnlPartyA;
	int256 upnlPartyB;
	uint256[] symbolIds;
	uint256[] prices;
	bytes gatewaySignature;
	SchnorrSign sigs;
}

struct DeferredLiquidationSig {
	bytes reqId; // Unique identifier for the liquidation request
	uint256 timestamp; // Timestamp when the liquidation signature was created
	uint256 liquidationBlockNumber; // Block number at which the user became insolvent
	uint256 liquidationTimestamp; // Timestamp when the user became insolvent
	uint256 liquidationAllocatedBalance; // User's allocated balance at the time of insolvency
	bytes liquidationId; // Unique identifier for the liquidation event
	int256 upnl; // User's unrealized profit and loss at the time of insolvency
	int256 totalUnrealizedLoss; // Total unrealized loss of the user at the time of insolvency
	uint256[] symbolIds; // List of symbol IDs involved in the liquidation
	uint256[] prices; // Corresponding prices of the symbols involved in the liquidation
	bytes gatewaySignature; // Signature from the gateway for verification
	SchnorrSign sigs; // Schnorr signature for additional verification
}

struct LiquidationSig {
	bytes reqId; // Unique identifier for the liquidation request
	uint256 timestamp; // Timestamp when the liquidation signature was created
	bytes liquidationId; // Unique identifier for the liquidation event
	int256 upnl; // User's unrealized profit and loss at the time of insolvency
	int256 totalUnrealizedLoss; // Total unrealized loss of the user at the time of insolvency
	uint256[] symbolIds; // List of symbol IDs involved in the liquidation
	uint256[] prices; // Corresponding prices of the symbols involved in the liquidation
	bytes gatewaySignature; // Signature from the gateway for verification
	SchnorrSign sigs; // Schnorr signature for additional verification
}

struct QuotePriceSig {
	bytes reqId;
	uint256 timestamp;
	uint256[] quoteIds;
	uint256[] prices;
	bytes gatewaySignature;
	SchnorrSign sigs;
}

struct HighLowPriceSig {
	bytes reqId;
	uint256 timestamp;
	uint256 symbolId;
	uint256 highest;
	uint256 lowest;
	uint256 averagePrice;
	uint256 startTime;
	uint256 endTime;
	int256 upnlPartyB;
	int256 upnlPartyA;
	uint256 currentPrice;
	bytes gatewaySignature;
	SchnorrSign sigs;
}

struct QuoteSettlementData {
	uint256 quoteId;
	uint256 currentPrice;
	uint8 partyBUpnlIndex;
}

struct SettlementSig {
	bytes reqId;
	uint256 timestamp;
	QuoteSettlementData[] quotesSettlementsData;
	int256[] upnlPartyBs;
	int256 upnlPartyA;
	bytes gatewaySignature;
	SchnorrSign sigs;
}

library MuonStorage {
	bytes32 internal constant MUON_STORAGE_SLOT = keccak256("diamond.standard.storage.muon");

	struct Layout {
		uint256 upnlValidTime;
		uint256 priceValidTime;
		uint256 priceQuantityValidTime; // UNUSED: Should be deleted later
		uint256 muonAppId;
		PublicKey muonPublicKey;
		address validGateway;
	}

	function layout() internal pure returns (Layout storage l) {
		bytes32 slot = MUON_STORAGE_SLOT;
		assembly {
			l.slot := slot
		}
	}
}

// ============================================================
// FILE: contracts/storages/QuoteStorage.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

enum PositionType {
	LONG,
	SHORT
}

enum OrderType {
	LIMIT,
	MARKET
}

enum QuoteStatus {
	PENDING, //0
	LOCKED, //1
	CANCEL_PENDING, //2
	CANCELED, //3
	OPENED, //4
	CLOSE_PENDING, //5
	CANCEL_CLOSE_PENDING, //6
	CLOSED, //7
	LIQUIDATED, //8
	EXPIRED, //9
	LIQUIDATED_PENDING //10
}

struct LockedValues {
	uint256 cva;
	uint256 lf;
	uint256 partyAmm;
	uint256 partyBmm;
}

struct Quote {
	uint256 id;
	address[] partyBsWhiteList;
	uint256 symbolId;
	PositionType positionType;
	OrderType orderType;
	// Price of quote which PartyB opened in 18 decimals
	uint256 openedPrice;
	uint256 initialOpenedPrice;
	// Price of quote which PartyA requested in 18 decimals
	uint256 requestedOpenPrice;
	uint256 marketPrice;
	// Quantity of quote which PartyA requested in 18 decimals
	uint256 quantity;
	// Quantity of quote which PartyB has closed until now in 18 decimals
	uint256 closedAmount;
	LockedValues initialLockedValues;
	LockedValues lockedValues;
	uint256 maxFundingRate;
	address partyA;
	address partyB;
	QuoteStatus quoteStatus;
	uint256 avgClosedPrice;
	uint256 requestedClosePrice;
	uint256 quantityToClose;
	// handle partially open position
	uint256 parentId;
	uint256 createTimestamp;
	uint256 statusModifyTimestamp;
	uint256 lastFundingPaymentTimestamp;
	uint256 deadline;
	uint256 tradingFee;
	address affiliate;
}

library QuoteStorage {
	bytes32 internal constant QUOTE_STORAGE_SLOT = keccak256("diamond.standard.storage.quote");

	struct Layout {
		mapping(address => uint256[]) quoteIdsOf;
		mapping(uint256 => Quote) quotes;
		mapping(address => uint256) partyAPositionsCount;
		mapping(address => mapping(address => uint256)) partyBPositionsCount;
		mapping(address => uint256[]) partyAPendingQuotes;
		mapping(address => mapping(address => uint256[])) partyBPendingQuotes;
		mapping(address => uint256[]) partyAOpenPositions;
		mapping(uint256 => uint256) partyAPositionsIndex;
		mapping(address => mapping(address => uint256[])) partyBOpenPositions;
		mapping(uint256 => uint256) partyBPositionsIndex;
		uint256 lastId;
		uint256 lastCloseId;
		mapping(uint256 => uint256) closeIds;
	}

	function layout() internal pure returns (Layout storage l) {
		bytes32 slot = QUOTE_STORAGE_SLOT;
		assembly {
			l.slot := slot
		}
	}
}

// ============================================================
// FILE: contracts/storages/SymbolStorage.sol
// ============================================================

// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

struct Symbol {
	uint256 symbolId;
	string name;
	bool isValid;
	uint256 minAcceptableQuoteValue;
	uint256 minAcceptablePortionLF;
	uint256 tradingFee;
	uint256 maxLeverage;
	uint256 fundingRateEpochDuration;
	uint256 fundingRateWindowTime;
}

library SymbolStorage {
	bytes32 internal constant SYMBOL_STORAGE_SLOT = keccak256("diamond.standard.storage.symbol");

	struct Layout {
		mapping(uint256 => Symbol) symbols;
		uint256 lastId;
		mapping(uint256 => uint256) forceCloseGapRatio; // symbolId -> forceCloseGapRatio
	}

	function layout() internal pure returns (Layout storage l) {
		bytes32 slot = SYMBOL_STORAGE_SLOT;
		assembly {
			l.slot := slot
		}
	}
}
