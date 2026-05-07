// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/AccessControl.sol)

pragma solidity ^0.8.20;

import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {ERC165Upgradeable} from "../utils/introspection/ERC165Upgradeable.sol";
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
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControl, ERC165Upgradeable {
    struct RoleData {
        mapping(address account => bool) hasRole;
        bytes32 adminRole;
    }

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;


    /// @custom:storage-location erc7201:openzeppelin.storage.AccessControl
    struct AccessControlStorage {
        mapping(bytes32 role => RoleData) _roles;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.AccessControl")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant AccessControlStorageLocation = 0x02dd7bc7dec4dceedda775e58dd541e08a116c6c53815c0bd028192f7b626800;

    function _getAccessControlStorage() private pure returns (AccessControlStorage storage $) {
        assembly {
            $.slot := AccessControlStorageLocation
        }
    }

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with an {AccessControlUnauthorizedAccount} error including the required role.
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
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        return $._roles[role].hasRole[account];
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
        AccessControlStorage storage $ = _getAccessControlStorage();
        return $._roles[role].adminRole;
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
        AccessControlStorage storage $ = _getAccessControlStorage();
        bytes32 previousAdminRole = getRoleAdmin(role);
        $._roles[role].adminRole = adminRole;
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
        AccessControlStorage storage $ = _getAccessControlStorage();
        if (!hasRole(role, account)) {
            $._roles[role].hasRole[account] = true;
            emit RoleGranted(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Attempts to revoke `role` to `account` and returns a boolean indicating if `role` was revoked.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        if (hasRole(role, account)) {
            $._roles[role].hasRole[account] = false;
            emit RoleRevoked(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.Ownable
    struct OwnableStorage {
        address _owner;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Ownable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OwnableStorageLocation = 0x9016d09d72d40fdae2fd8ceac6b6234c7706214fd39c1cd1e609a0528c199300;

    function _getOwnableStorage() private pure returns (OwnableStorage storage $) {
        assembly {
            $.slot := OwnableStorageLocation
        }
    }

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    function __Ownable_init(address initialOwner) internal onlyInitializing {
        __Ownable_init_unchained(initialOwner);
    }

    function __Ownable_init_unchained(address initialOwner) internal onlyInitializing {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        OwnableStorage storage $ = _getOwnableStorage();
        return $._owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        OwnableStorage storage $ = _getOwnableStorage();
        address oldOwner = $._owner;
        $._owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

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
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INITIALIZABLE_STORAGE = 0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

    /**
     * @dev The contract is already initialized.
     */
    error InvalidInitialization();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
     * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
     * production.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        // Cache values to avoid duplicated sloads
        bool isTopLevelCall = !$._initializing;
        uint64 initialized = $._initialized;

        // Allowed calls:
        // - initialSetup: the contract is not in the initializing state and no previous version was
        //                 initialized
        // - construction: the contract is initialized at version 1 (no reininitialization) and the
        //                 current contract is just being deployed
        bool initialSetup = initialized == 0 && isTopLevelCall;
        bool construction = initialized == 1 && address(this).code.length == 0;

        if (!initialSetup && !construction) {
            revert InvalidInitialization();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
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
     * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert InvalidInitialization();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
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
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert InvalidInitialization();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        assembly {
            $.slot := INITIALIZABLE_STORAGE
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (proxy/utils/UUPSUpgradeable.sol)

pragma solidity ^0.8.20;

import {IERC1822Proxiable} from "@openzeppelin/contracts/interfaces/draft-IERC1822.sol";
import {ERC1967Utils} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";
import {Initializable} from "./Initializable.sol";

/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 */
abstract contract UUPSUpgradeable is Initializable, IERC1822Proxiable {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable __self = address(this);

    /**
     * @dev The version of the upgrade interface of the contract. If this getter is missing, both `upgradeTo(address)`
     * and `upgradeToAndCall(address,bytes)` are present, and `upgradeTo` must be used if no function should be called,
     * while `upgradeToAndCall` will invoke the `receive` function if the second argument is the empty byte string.
     * If the getter returns `"5.0.0"`, only `upgradeToAndCall(address,bytes)` is present, and the second argument must
     * be the empty byte string if no function should be called, making it impossible to invoke the `receive` function
     * during an upgrade.
     */
    string public constant UPGRADE_INTERFACE_VERSION = "5.0.0";

    /**
     * @dev The call is from an unauthorized context.
     */
    error UUPSUnauthorizedCallContext();

    /**
     * @dev The storage `slot` is unsupported as a UUID.
     */
    error UUPSUnsupportedProxiableUUID(bytes32 slot);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC-1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC-1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        _checkProxy();
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        _checkNotDelegated();
        _;
    }

    function __UUPSUpgradeable_init() internal onlyInitializing {
    }

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Implementation of the ERC-1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate the implementation's compatibility when performing an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual notDelegated returns (bytes32) {
        return ERC1967Utils.IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     *
     * @custom:oz-upgrades-unsafe-allow-reachable delegatecall
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) public payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data);
    }

    /**
     * @dev Reverts if the execution is not performed via delegatecall or the execution
     * context is not of a proxy with an ERC-1967 compliant implementation pointing to self.
     * See {_onlyProxy}.
     */
    function _checkProxy() internal view virtual {
        if (
            address(this) == __self || // Must be called through delegatecall
            ERC1967Utils.getImplementation() != __self // Must be called through an active proxy
        ) {
            revert UUPSUnauthorizedCallContext();
        }
    }

    /**
     * @dev Reverts if the execution is performed via delegatecall.
     * See {notDelegated}.
     */
    function _checkNotDelegated() internal view virtual {
        if (address(this) != __self) {
            // Must not be called through delegatecall
            revert UUPSUnauthorizedCallContext();
        }
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;

    /**
     * @dev Performs an implementation upgrade with a security check for UUPS proxies, and additional setup call.
     *
     * As a security check, {proxiableUUID} is invoked in the new implementation, and the return value
     * is expected to be the implementation slot in ERC-1967.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function _upgradeToAndCallUUPS(address newImplementation, bytes memory data) private {
        try IERC1822Proxiable(newImplementation).proxiableUUID() returns (bytes32 slot) {
            if (slot != ERC1967Utils.IMPLEMENTATION_SLOT) {
                revert UUPSUnsupportedProxiableUUID(slot);
            }
            ERC1967Utils.upgradeToAndCall(newImplementation, data);
        } catch {
            // The implementation is not UUPS
            revert ERC1967Utils.ERC1967InvalidImplementation(newImplementation);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ContextUpgradeable} from "../../utils/ContextUpgradeable.sol";
import {IERC20Errors} from "@openzeppelin/contracts/interfaces/draft-IERC6093.sol";
import {Initializable} from "../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC-20
 * applications.
 */
abstract contract ERC20Upgradeable is Initializable, ContextUpgradeable, IERC20, IERC20Metadata, IERC20Errors {
    /// @custom:storage-location erc7201:openzeppelin.storage.ERC20
    struct ERC20Storage {
        mapping(address account => uint256) _balances;

        mapping(address account => mapping(address spender => uint256)) _allowances;

        uint256 _totalSupply;

        string _name;
        string _symbol;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ERC20")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ERC20StorageLocation = 0x52c63247e1f47db19d5ce0460030c497f067ca4cebf71ba98eeadabe20bace00;

    function _getERC20Storage() private pure returns (ERC20Storage storage $) {
        assembly {
            $.slot := ERC20StorageLocation
        }
    }

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    function __ERC20_init(string memory name_, string memory symbol_) internal onlyInitializing {
        __ERC20_init_unchained(name_, symbol_);
    }

    function __ERC20_init_unchained(string memory name_, string memory symbol_) internal onlyInitializing {
        ERC20Storage storage $ = _getERC20Storage();
        $._name = name_;
        $._symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual returns (uint256) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Skips emitting an {Approval} event indicating an allowance update. This is not
     * required by the ERC. See {xref-ERC20-_approve-address-address-uint256-bool-}[_approve].
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        ERC20Storage storage $ = _getERC20Storage();
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            $._totalSupply += value;
        } else {
            uint256 fromBalance = $._balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                $._balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                $._totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                $._balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     *
     * ```solidity
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        ERC20Storage storage $ = _getERC20Storage();
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        $._allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/extensions/ERC20PermitUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/ERC20Permit.sol)

pragma solidity ^0.8.20;

import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {ERC20Upgradeable} from "../ERC20Upgradeable.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {EIP712Upgradeable} from "../../../utils/cryptography/EIP712Upgradeable.sol";
import {NoncesUpgradeable} from "../../../utils/NoncesUpgradeable.sol";
import {Initializable} from "../../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the ERC-20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[ERC-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC-20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on `{IERC20-approve}`, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
abstract contract ERC20PermitUpgradeable is Initializable, ERC20Upgradeable, IERC20Permit, EIP712Upgradeable, NoncesUpgradeable {
    bytes32 private constant PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    /**
     * @dev Permit deadline has expired.
     */
    error ERC2612ExpiredSignature(uint256 deadline);

    /**
     * @dev Mismatched signature.
     */
    error ERC2612InvalidSigner(address signer, address owner);

    /**
     * @dev Initializes the {EIP712} domain separator using the `name` parameter, and setting `version` to `"1"`.
     *
     * It's a good idea to use the same `name` that is defined as the ERC-20 token name.
     */
    function __ERC20Permit_init(string memory name) internal onlyInitializing {
        __EIP712_init_unchained(name, "1");
    }

    function __ERC20Permit_init_unchained(string memory) internal onlyInitializing {}

    /**
     * @inheritdoc IERC20Permit
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        if (block.timestamp > deadline) {
            revert ERC2612ExpiredSignature(deadline);
        }

        bytes32 structHash = keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);

        address signer = ECDSA.recover(hash, v, r, s);
        if (signer != owner) {
            revert ERC2612InvalidSigner(signer, owner);
        }

        _approve(owner, spender, value);
    }

    /**
     * @inheritdoc IERC20Permit
     */
    function nonces(address owner) public view virtual override(IERC20Permit, NoncesUpgradeable) returns (uint256) {
        return super.nonces(owner);
    }

    /**
     * @inheritdoc IERC20Permit
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view virtual returns (bytes32) {
        return _domainSeparatorV4();
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;
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
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/cryptography/EIP712Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/cryptography/EIP712.sol)

pragma solidity ^0.8.20;

import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {IERC5267} from "@openzeppelin/contracts/interfaces/IERC5267.sol";
import {Initializable} from "../../proxy/utils/Initializable.sol";

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
 */
abstract contract EIP712Upgradeable is Initializable, IERC5267 {
    bytes32 private constant TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    /// @custom:storage-location erc7201:openzeppelin.storage.EIP712
    struct EIP712Storage {
        /// @custom:oz-renamed-from _HASHED_NAME
        bytes32 _hashedName;
        /// @custom:oz-renamed-from _HASHED_VERSION
        bytes32 _hashedVersion;

        string _name;
        string _version;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.EIP712")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant EIP712StorageLocation = 0xa16a46d94261c7517cc8ff89f61c0ce93598e3c849801011dee649a6a557d100;

    function _getEIP712Storage() private pure returns (EIP712Storage storage $) {
        assembly {
            $.slot := EIP712StorageLocation
        }
    }

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
    function __EIP712_init(string memory name, string memory version) internal onlyInitializing {
        __EIP712_init_unchained(name, version);
    }

    function __EIP712_init_unchained(string memory name, string memory version) internal onlyInitializing {
        EIP712Storage storage $ = _getEIP712Storage();
        $._name = name;
        $._version = version;

        // Reset prior values in storage if upgrading
        $._hashedName = 0;
        $._hashedVersion = 0;
    }

    /**
     * @dev Returns the domain separator for the current chain.
     */
    function _domainSeparatorV4() internal view returns (bytes32) {
        return _buildDomainSeparator();
    }

    function _buildDomainSeparator() private view returns (bytes32) {
        return keccak256(abi.encode(TYPE_HASH, _EIP712NameHash(), _EIP712VersionHash(), block.chainid, address(this)));
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

    /**
     * @dev See {IERC-5267}.
     */
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
        EIP712Storage storage $ = _getEIP712Storage();
        // If the hashed name and version in storage are non-zero, the contract hasn't been properly initialized
        // and the EIP712 domain is not reliable, as it will be missing name and version.
        require($._hashedName == 0 && $._hashedVersion == 0, "EIP712: Uninitialized");

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
     * NOTE: This function reads from storage by default, but can be redefined to return a constant value if gas costs
     * are a concern.
     */
    function _EIP712Name() internal view virtual returns (string memory) {
        EIP712Storage storage $ = _getEIP712Storage();
        return $._name;
    }

    /**
     * @dev The version parameter for the EIP712 domain.
     *
     * NOTE: This function reads from storage by default, but can be redefined to return a constant value if gas costs
     * are a concern.
     */
    function _EIP712Version() internal view virtual returns (string memory) {
        EIP712Storage storage $ = _getEIP712Storage();
        return $._version;
    }

    /**
     * @dev The hash of the name parameter for the EIP712 domain.
     *
     * NOTE: In previous versions this function was virtual. In this version you should override `_EIP712Name` instead.
     */
    function _EIP712NameHash() internal view returns (bytes32) {
        EIP712Storage storage $ = _getEIP712Storage();
        string memory name = _EIP712Name();
        if (bytes(name).length > 0) {
            return keccak256(bytes(name));
        } else {
            // If the name is empty, the contract may have been upgraded without initializing the new storage.
            // We return the name hash in storage if non-zero, otherwise we assume the name is empty by design.
            bytes32 hashedName = $._hashedName;
            if (hashedName != 0) {
                return hashedName;
            } else {
                return keccak256("");
            }
        }
    }

    /**
     * @dev The hash of the version parameter for the EIP712 domain.
     *
     * NOTE: In previous versions this function was virtual. In this version you should override `_EIP712Version` instead.
     */
    function _EIP712VersionHash() internal view returns (bytes32) {
        EIP712Storage storage $ = _getEIP712Storage();
        string memory version = _EIP712Version();
        if (bytes(version).length > 0) {
            return keccak256(bytes(version));
        } else {
            // If the version is empty, the contract may have been upgraded without initializing the new storage.
            // We return the version hash in storage if non-zero, otherwise we assume the version is empty by design.
            bytes32 hashedVersion = $._hashedVersion;
            if (hashedVersion != 0) {
                return hashedVersion;
            } else {
                return keccak256("");
            }
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/introspection/ERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {Initializable} from "../../proxy/utils/Initializable.sol";

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
abstract contract ERC165Upgradeable is Initializable, IERC165 {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/NoncesUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Nonces.sol)
pragma solidity ^0.8.20;
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Provides tracking nonces for addresses. Nonces will only increment.
 */
abstract contract NoncesUpgradeable is Initializable {
    /**
     * @dev The nonce used for an `account` is not the expected current nonce.
     */
    error InvalidAccountNonce(address account, uint256 currentNonce);

    /// @custom:storage-location erc7201:openzeppelin.storage.Nonces
    struct NoncesStorage {
        mapping(address account => uint256) _nonces;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Nonces")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant NoncesStorageLocation = 0x5ab42ced628888259c08ac98db1eb0cf702fc1501344311d8b100cd1bfe4bb00;

    function _getNoncesStorage() private pure returns (NoncesStorage storage $) {
        assembly {
            $.slot := NoncesStorageLocation
        }
    }

    function __Nonces_init() internal onlyInitializing {
    }

    function __Nonces_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Returns the next unused nonce for an address.
     */
    function nonces(address owner) public view virtual returns (uint256) {
        NoncesStorage storage $ = _getNoncesStorage();
        return $._nonces[owner];
    }

    /**
     * @dev Consumes a nonce.
     *
     * Returns the current value and increments nonce.
     */
    function _useNonce(address owner) internal virtual returns (uint256) {
        NoncesStorage storage $ = _getNoncesStorage();
        // For each account, the nonce has an initial value of 0, can only be incremented by one, and cannot be
        // decremented or reset. This guarantees that the nonce never overflows.
        unchecked {
            // It is important to do x++ and not ++x here.
            return $._nonces[owner]++;
        }
    }

    /**
     * @dev Same as {_useNonce} but checking that `nonce` is the next valid for `owner`.
     */
    function _useCheckedNonce(address owner, uint256 nonce) internal virtual {
        uint256 current = _useNonce(owner);
        if (nonce != current) {
            revert InvalidAccountNonce(owner, current);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/ReentrancyGuardTransientUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/ReentrancyGuardTransient.sol)

pragma solidity ^0.8.24;

import {TransientSlot} from "@openzeppelin/contracts/utils/TransientSlot.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Variant of {ReentrancyGuard} that uses transient storage.
 *
 * NOTE: This variant only works on networks where EIP-1153 is available.
 *
 * _Available since v5.1._
 */
abstract contract ReentrancyGuardTransientUpgradeable is Initializable {
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

    function __ReentrancyGuardTransient_init() internal onlyInitializing {
    }

    function __ReentrancyGuardTransient_init_unchained() internal onlyInitializing {
    }
    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if (_reentrancyGuardEntered()) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        REENTRANCY_GUARD_STORAGE.asBoolean().tstore(true);
    }

    function _nonReentrantAfter() private {
        REENTRANCY_GUARD_STORAGE.asBoolean().tstore(false);
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return REENTRANCY_GUARD_STORAGE.asBoolean().tload();
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (access/IAccessControl.sol)

pragma solidity ^0.8.20;

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
     * {RoleAdminChanged} not being emitted signaling this.
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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/draft-IERC1822.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.20;

/**
 * @dev ERC-1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822Proxiable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (interfaces/draft-IERC6093.sol)
pragma solidity ^0.8.20;

/**
 * @dev Standard ERC-20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC-721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in ERC-20.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC-1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/IERC1363.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (interfaces/IERC1363.sol)

pragma solidity ^0.8.20;

import {IERC20} from "./IERC20.sol";
import {IERC165} from "./IERC165.sol";

/**
 * @title IERC1363
 * @dev Interface of the ERC-1363 standard as defined in the https://eips.ethereum.org/EIPS/eip-1363[ERC-1363].
 *
 * Defines an extension interface for ERC-20 tokens that supports executing code on a recipient contract
 * after `transfer` or `transferFrom`, or code on a spender contract after `approve`, in a single transaction.
 */
interface IERC1363 is IERC20, IERC165 {
    /*
     * Note: the ERC-165 identifier for this interface is 0xb0202a11.
     * 0xb0202a11 ===
     *   bytes4(keccak256('transferAndCall(address,uint256)')) ^
     *   bytes4(keccak256('transferAndCall(address,uint256,bytes)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256,bytes)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256,bytes)'))
     */

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @param data Additional data with no specified format, sent in call to `spender`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value, bytes calldata data) external returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "../utils/introspection/IERC165.sol";

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/IERC1967.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC1967.sol)

pragma solidity ^0.8.20;

/**
 * @dev ERC-1967: Proxy Storage Slots. This interface contains the events defined in the ERC.
 */
interface IERC1967 {
    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Emitted when the beacon is changed.
     */
    event BeaconUpgraded(address indexed beacon);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/IERC5267.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC5267.sol)

pragma solidity ^0.8.20;

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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/proxy/beacon/IBeacon.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {UpgradeableBeacon} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Utils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (proxy/ERC1967/ERC1967Utils.sol)

pragma solidity ^0.8.21;

import {IBeacon} from "../beacon/IBeacon.sol";
import {IERC1967} from "../../interfaces/IERC1967.sol";
import {Address} from "../../utils/Address.sol";
import {StorageSlot} from "../../utils/StorageSlot.sol";

/**
 * @dev This library provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[ERC-1967] slots.
 */
library ERC1967Utils {
    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev The `implementation` of the proxy is invalid.
     */
    error ERC1967InvalidImplementation(address implementation);

    /**
     * @dev The `admin` of the proxy is invalid.
     */
    error ERC1967InvalidAdmin(address admin);

    /**
     * @dev The `beacon` of the proxy is invalid.
     */
    error ERC1967InvalidBeacon(address beacon);

    /**
     * @dev An upgrade function sees `msg.value > 0` that may be lost.
     */
    error ERC1967NonPayable();

    /**
     * @dev Returns the current implementation address.
     */
    function getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the ERC-1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        if (newImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(newImplementation);
        }
        StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Performs implementation upgrade with additional setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) internal {
        _setImplementation(newImplementation);
        emit IERC1967.Upgraded(newImplementation);

        if (data.length > 0) {
            Address.functionDelegateCall(newImplementation, data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Returns the current admin.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by ERC-1967) using
     * the https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
     */
    function getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the ERC-1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        if (newAdmin == address(0)) {
            revert ERC1967InvalidAdmin(address(0));
        }
        StorageSlot.getAddressSlot(ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {IERC1967-AdminChanged} event.
     */
    function changeAdmin(address newAdmin) internal {
        emit IERC1967.AdminChanged(getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is the keccak-256 hash of "eip1967.proxy.beacon" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Returns the current beacon.
     */
    function getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the ERC-1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        if (newBeacon.code.length == 0) {
            revert ERC1967InvalidBeacon(newBeacon);
        }

        StorageSlot.getAddressSlot(BEACON_SLOT).value = newBeacon;

        address beaconImplementation = IBeacon(newBeacon).implementation();
        if (beaconImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(beaconImplementation);
        }
    }

    /**
     * @dev Change the beacon and trigger a setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-BeaconUpgraded} event.
     *
     * CAUTION: Invoking this function has no effect on an instance of {BeaconProxy} since v5, since
     * it uses an immutable beacon without looking at the value of the ERC-1967 beacon slot for
     * efficiency.
     */
    function upgradeBeaconToAndCall(address newBeacon, bytes memory data) internal {
        _setBeacon(newBeacon);
        emit IERC1967.BeaconUpgraded(newBeacon);

        if (data.length > 0) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Reverts if `msg.value` is not zero. It can be used to avoid `msg.value` stuck in the contract
     * if an upgrade doesn't perform an initialization call.
     */
    function _checkNonPayable() private {
        if (msg.value > 0) {
            revert ERC1967NonPayable();
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC1363} from "../../../interfaces/IERC1363.sol";
import {Address} from "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    /**
     * @dev An operation with an ERC-20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     *
     * NOTE: If the token implements ERC-7674, this function will not modify any temporary allowance. This function
     * only sets the "standard" allowance. Any temporary allowance will remain active, in addition to the value being
     * set here.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Performs an {ERC1363} transferAndCall, with a fallback to the simple {ERC20} transfer if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            safeTransfer(token, to, value);
        } else if (!token.transferAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferFromAndCall, with a fallback to the simple {ERC20} transferFrom if the target
     * has no code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferFromAndCallRelaxed(
        IERC1363 token,
        address from,
        address to,
        uint256 value,
        bytes memory data
    ) internal {
        if (to.code.length == 0) {
            safeTransferFrom(token, from, to, value);
        } else if (!token.transferFromAndCall(from, to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} approveAndCall, with a fallback to the simple {ERC20} approve if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * NOTE: When the recipient address (`to`) has no code (i.e. is an EOA), this function behaves as {forceApprove}.
     * Opposedly, when the recipient address (`to`) has code, this function only attempts to call {ERC1363-approveAndCall}
     * once without retrying, and relies on the returned value to be true.
     *
     * Reverts if the returned value is other than `true`.
     */
    function approveAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            forceApprove(token, to, value);
        } else if (!token.approveAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturnBool} that reverts if call fails to meet the requirements.
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            let success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            // bubble errors
            if iszero(success) {
                let ptr := mload(0x40)
                returndatacopy(ptr, 0, returndatasize())
                revert(ptr, returndatasize())
            }
            returnSize := returndatasize()
            returnValue := mload(0)
        }

        if (returnSize == 0 ? address(token).code.length == 0 : returnValue != 1) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silently catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        bool success;
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            returnSize := returndatasize()
            returnValue := mload(0)
        }
        return success && (returnSize == 0 ? address(token).code.length > 0 : returnValue == 1);
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Address.sol)

pragma solidity ^0.8.20;

import {Errors} from "./Errors.sol";

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

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
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
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {Errors.FailedCall}) in case
     * of an unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {Errors.FailedCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {Errors.FailedCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            assembly ("memory-safe") {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert Errors.FailedCall();
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/cryptography/ECDSA.sol)

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
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
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
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/cryptography/MessageHashUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/cryptography/MessageHashUtils.sol)

pragma solidity ^0.8.20;

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
     * hash signed when using the https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`] JSON-RPC method.
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
     * hash signed when using the https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`] JSON-RPC method.
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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Errors.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/introspection/IERC165.sol)

pragma solidity ^0.8.20;

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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/Math.sol)

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
     * @dev Returns the addition of two unsigned integers, with an success flag (no overflow).
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an success flag (no overflow).
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an success flag (no overflow).
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
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
     * @dev Returns the division of two unsigned integers, with a success flag (no division by zero).
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a success flag (no division by zero).
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Branchless ternary evaluation for `a ? b : c`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `a ? b : c`) to only compute
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
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2²⁵⁶ and mod 2²⁵⁶ - 1, then use
            // the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2²⁵⁶ + prod0.
            uint256 prod0 = x * y; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2²⁵⁶. Also prevents denominator == 0.
            if (denominator <= prod1) {
                Panic.panic(ternary(denominator == 0, Panic.DIVISION_BY_ZERO, Panic.UNDER_OVERFLOW));
            }

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

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2²⁵⁶ / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

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
            // less than 2²⁵⁶, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
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
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        uint256 exp;
        unchecked {
            exp = 128 * SafeCast.toUint(value > (1 << 128) - 1);
            value >>= exp;
            result += exp;

            exp = 64 * SafeCast.toUint(value > (1 << 64) - 1);
            value >>= exp;
            result += exp;

            exp = 32 * SafeCast.toUint(value > (1 << 32) - 1);
            value >>= exp;
            result += exp;

            exp = 16 * SafeCast.toUint(value > (1 << 16) - 1);
            value >>= exp;
            result += exp;

            exp = 8 * SafeCast.toUint(value > (1 << 8) - 1);
            value >>= exp;
            result += exp;

            exp = 4 * SafeCast.toUint(value > (1 << 4) - 1);
            value >>= exp;
            result += exp;

            exp = 2 * SafeCast.toUint(value > (1 << 2) - 1);
            value >>= exp;
            result += exp;

            result += SafeCast.toUint(value > 1);
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
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        uint256 isGt;
        unchecked {
            isGt = SafeCast.toUint(value > (1 << 128) - 1);
            value >>= isGt * 128;
            result += isGt * 16;

            isGt = SafeCast.toUint(value > (1 << 64) - 1);
            value >>= isGt * 64;
            result += isGt * 8;

            isGt = SafeCast.toUint(value > (1 << 32) - 1);
            value >>= isGt * 32;
            result += isGt * 4;

            isGt = SafeCast.toUint(value > (1 << 16) - 1);
            value >>= isGt * 16;
            result += isGt * 2;

            result += SafeCast.toUint(value > (1 << 8) - 1);
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
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << (result << 3) < value);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Panic.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/StorageSlot.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Strings.sol)

pragma solidity ^0.8.20;

import {Math} from "./math/Math.sol";
import {SignedMath} from "./math/SignedMath.sol";

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant HEX_DIGITS = "0123456789abcdef";
    uint8 private constant ADDRESS_LENGTH = 20;

    /**
     * @dev The `value` string doesn't fit in the specified `length`.
     */
    error StringsInsufficientHexLength(uint256 value, uint256 length);

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            assembly ("memory-safe") {
                ptr := add(buffer, add(32, length))
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
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return bytes(a).length == bytes(b).length && keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/TransientSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/TransientSlot.sol)
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
     * @dev UDVT that represent a slot holding a address.
     */
    type AddressSlot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a AddressSlot.
     */
    function asAddress(bytes32 slot) internal pure returns (AddressSlot) {
        return AddressSlot.wrap(slot);
    }

    /**
     * @dev UDVT that represent a slot holding a bool.
     */
    type BooleanSlot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a BooleanSlot.
     */
    function asBoolean(bytes32 slot) internal pure returns (BooleanSlot) {
        return BooleanSlot.wrap(slot);
    }

    /**
     * @dev UDVT that represent a slot holding a bytes32.
     */
    type Bytes32Slot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a Bytes32Slot.
     */
    function asBytes32(bytes32 slot) internal pure returns (Bytes32Slot) {
        return Bytes32Slot.wrap(slot);
    }

    /**
     * @dev UDVT that represent a slot holding a uint256.
     */
    type Uint256Slot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a Uint256Slot.
     */
    function asUint256(bytes32 slot) internal pure returns (Uint256Slot) {
        return Uint256Slot.wrap(slot);
    }

    /**
     * @dev UDVT that represent a slot holding a int256.
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
// FILE: src/FeeManager.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

// Dependency imports
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

// Internal imports
import {ExternalAction} from "src/types/DataTypes.sol";
import {ILeverageToken} from "src/interfaces/ILeverageToken.sol";
import {IFeeManager} from "src/interfaces/IFeeManager.sol";

/**
 * @dev The FeeManager contract is an abstract upgradeable core contract that is responsible for managing the fees for LeverageTokens.
 * There are three types of fees:
 *   - Token action fees: Fees charged that accumulate towards the value of the LeverageToken for current LeverageToken
 *     holders, applied on equity for mints and redeems
 *   - Treasury action fees: Fees charged in shares that are transferred to the configured treasury address, applied on
 *     shares minted for mints and shares burned for redeems
 *   - Management fees: Fees charged in shares that are transferred to the configured treasury address. The management fee
 *     accrues linearly over time and is minted to the treasury when the `chargeManagementFee` function is executed
 * Note: This contract is abstract and meant to be inherited by LeverageManager
 * The maximum fee that can be set for each action is 1e4 - 1 (99.99%). The maximum fee that can be set for management fees is 1e4 (100%).
 *
 * @custom:contact security@seamlessprotocol.com
 */
abstract contract FeeManager is IFeeManager, Initializable, AccessControlUpgradeable {
    bytes32 public constant FEE_MANAGER_ROLE = keccak256("FEE_MANAGER_ROLE");

    uint256 internal constant MAX_BPS = 100_00;

    uint256 internal constant MAX_ACTION_FEE = MAX_BPS - 1;

    uint256 internal constant MAX_MANAGEMENT_FEE = MAX_BPS;

    uint256 internal constant SECS_PER_YEAR = 31536000;

    /// @dev Struct containing all state for the FeeManager contract
    /// @custom:storage-location erc7201:seamless.contracts.storage.FeeManager
    struct FeeManagerStorage {
        /// @dev Treasury address that receives treasury fees and management fees
        address treasury;
        /// @dev Default annual management fee for LeverageTokens at creation. 100_00 is 100% per year
        uint256 defaultManagementFeeAtCreation;
        /// @dev Annual management fee for each LeverageToken. 100_00 is 100% per year
        mapping(ILeverageToken token => uint256) managementFee;
        /// @dev Timestamp when the management fee was most recently accrued for each LeverageToken
        mapping(ILeverageToken token => uint120) lastManagementFeeAccrualTimestamp;
        /// @dev Treasury action fee for each action. 100_00 is 100%
        mapping(ExternalAction action => uint256) treasuryActionFee;
        /// @dev Token action fee for each action. 100_00 is 100%
        mapping(ILeverageToken token => mapping(ExternalAction action => uint256)) tokenActionFee;
    }

    function _getFeeManagerStorage() internal pure returns (FeeManagerStorage storage $) {
        // slither-disable-next-line assembly
        assembly {
            // keccak256(abi.encode(uint256(keccak256("seamless.contracts.storage.FeeManager")) - 1)) & ~bytes32(uint256(0xff));
            $.slot := 0x6c0d8f7f1305f10aa51c80093531513ff85a99140b414f68890d41ac36949e00
        }
    }

    function __FeeManager_init(address defaultAdmin, address treasury) internal onlyInitializing {
        __AccessControl_init_unchained();
        __FeeManager_init_unchained(defaultAdmin, treasury);
    }

    function __FeeManager_init_unchained(address defaultAdmin, address treasury) internal onlyInitializing {
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _setTreasury(treasury);
    }

    /// @inheritdoc IFeeManager
    function getDefaultManagementFeeAtCreation() public view returns (uint256) {
        return _getFeeManagerStorage().defaultManagementFeeAtCreation;
    }

    /// @inheritdoc IFeeManager
    function getFeeAdjustedTotalSupply(ILeverageToken token) public view returns (uint256) {
        uint256 totalSupply = token.totalSupply();
        uint256 accruedManagementFee = _getAccruedManagementFee(token, totalSupply);
        return totalSupply + accruedManagementFee;
    }

    /// @inheritdoc IFeeManager
    function getLastManagementFeeAccrualTimestamp(ILeverageToken token) public view returns (uint120) {
        return _getFeeManagerStorage().lastManagementFeeAccrualTimestamp[token];
    }

    /// @inheritdoc IFeeManager
    function getLeverageTokenActionFee(ILeverageToken token, ExternalAction action) public view returns (uint256 fee) {
        return _getFeeManagerStorage().tokenActionFee[token][action];
    }

    /// @inheritdoc IFeeManager
    function getManagementFee(ILeverageToken token) public view returns (uint256 fee) {
        return _getFeeManagerStorage().managementFee[token];
    }

    /// @inheritdoc IFeeManager
    function getTreasury() public view returns (address treasury) {
        return _getFeeManagerStorage().treasury;
    }

    /// @inheritdoc IFeeManager
    function getTreasuryActionFee(ExternalAction action) public view returns (uint256 fee) {
        return _getFeeManagerStorage().treasuryActionFee[action];
    }

    /// @inheritdoc IFeeManager
    function setDefaultManagementFeeAtCreation(uint256 fee) external onlyRole(FEE_MANAGER_ROLE) {
        _validateManagementFee(fee);

        _getFeeManagerStorage().defaultManagementFeeAtCreation = fee;
        emit DefaultManagementFeeAtCreationSet(fee);
    }

    /// @inheritdoc IFeeManager
    function setManagementFee(ILeverageToken token, uint256 fee) external onlyRole(FEE_MANAGER_ROLE) {
        // Charge any accrued management fees before setting the new management fee
        chargeManagementFee(token);

        _validateManagementFee(fee);

        _getFeeManagerStorage().managementFee[token] = fee;

        // It's possible that the last accrual timestamp was not updated during `chargeManagementFee` if the calculated fee was 0
        // and the previous management fee was not 0, so we make sure it's updated here regardless
        _getFeeManagerStorage().lastManagementFeeAccrualTimestamp[token] = uint120(block.timestamp);

        emit ManagementFeeSet(token, fee);
    }

    /// @inheritdoc IFeeManager
    function setTreasury(address treasury) external onlyRole(FEE_MANAGER_ROLE) {
        _setTreasury(treasury);
    }

    /// @inheritdoc IFeeManager
    function setTreasuryActionFee(ExternalAction action, uint256 fee) external onlyRole(FEE_MANAGER_ROLE) {
        _validateActionFee(fee);
        _getFeeManagerStorage().treasuryActionFee[action] = fee;

        emit TreasuryActionFeeSet(action, fee);
    }

    /// @inheritdoc IFeeManager
    function chargeManagementFee(ILeverageToken token) public {
        // Shares fee must be obtained before the last management fee accrual timestamp is updated
        uint256 sharesFee = _getAccruedManagementFee(token, token.totalSupply());

        // Return early if the calculated shares fee is 0, to avoid missing out on fees if someone continuously
        // calls `chargeManagementFee`, due to rounding down in `_getAccruedManagementFee`.
        // slither-disable-next-line incorrect-equality,timestamp
        if (sharesFee == 0) {
            return;
        }

        _getFeeManagerStorage().lastManagementFeeAccrualTimestamp[token] = uint120(block.timestamp);

        _chargeTreasuryFee(token, sharesFee);
        emit ManagementFeeCharged(token, sharesFee);
    }

    /// @notice Function that mints shares to the treasury, if the treasury is set
    /// @param token LeverageToken to mint shares to treasury for
    /// @param shares Shares to mint
    /// @dev This contract must be authorized to mint shares for the LeverageToken
    function _chargeTreasuryFee(ILeverageToken token, uint256 shares) internal {
        // slither-disable-next-line timestamp
        if (shares != 0) {
            // slither-disable-next-line reentrancy-events
            token.mint(getTreasury(), shares);
        }
    }

    /// @notice Computes the share fees for a given action and share amount
    /// @param token LeverageToken to compute share fees for
    /// @param grossShares Amount of shares to compute share fees for
    /// @param action Action to compute share fees for
    /// @return netShares Amount of shares after fees
    /// @return sharesTokenFee Amount of shares that will be charged for the action that are given to the LeverageToken
    /// @return treasuryFee Amount of shares that will be charged for the action that are given to the treasury
    /// @dev Token action fee is applied first, then treasury action fee is applied on the remaining shares
    function _computeFeesForGrossShares(ILeverageToken token, uint256 grossShares, ExternalAction action)
        internal
        view
        returns (uint256, uint256, uint256)
    {
        uint256 sharesTokenFee =
            Math.mulDiv(grossShares, getLeverageTokenActionFee(token, action), MAX_BPS, Math.Rounding.Ceil);
        uint256 netShares = grossShares - sharesTokenFee;
        uint256 treasuryFee = _computeTreasuryFee(action, netShares);

        netShares = netShares - treasuryFee;

        return (netShares, sharesTokenFee, treasuryFee);
    }

    /// @notice Based on an amount of net shares, compute the gross shares, token fee, and treasury fee
    /// @param token LeverageToken to compute token fee for
    /// @param netShares Net shares to compute token fee for
    /// @param action Action to compute token fee for
    /// @return grossShares Gross shares after token fee and treasury fee
    /// @return sharesTokenFee Token fee amount in shares
    /// @return treasuryFee Treasury fee amount in shares
    /// @dev Token action fee is applied first, then treasury action fee is applied on the remaining shares
    function _computeFeesForNetShares(ILeverageToken token, uint256 netShares, ExternalAction action)
        internal
        view
        returns (uint256 grossShares, uint256 sharesTokenFee, uint256 treasuryFee)
    {
        uint256 tokenActionFeeRate = getLeverageTokenActionFee(token, action);
        uint256 treasuryActionFeeRate = getTreasuryActionFee(action);

        // Mathematical derivation for computing gross shares from net shares:
        //
        // Starting relationship for a single fee:
        //   net = gross * (baseFee - feeRate) / baseFee
        //   where feeRate is the fee percentage and baseFee is the base (100_00 for 100%)
        //
        // Rearranging to solve for gross:
        //   gross = net * baseFee / (baseFee - feeRate)
        //
        // For two sequential fees (token action fee and treasury action fee), we apply this transformation twice:
        //   1) First, apply token action fee: afterTokenFee = gross * (baseFee - tokenActionFeeRate) / baseFee
        //   2) Then, apply treasury action fee: net = afterTokenFee * (baseFee - treasuryActionFeeRate) / baseFee
        //
        // Substituting step 1 into step 2:
        //   net = gross * (baseFee - tokenActionFeeRate) / baseFee * (baseFee - treasuryActionFeeRate) / baseFee
        //
        // Solving for gross:
        //   gross = net * baseFee / (baseFee - tokenActionFeeRate) * baseFee / (baseFee - treasuryActionFeeRate)
        grossShares = Math.mulDiv(
            Math.mulDiv(netShares, MAX_BPS, (MAX_BPS - tokenActionFeeRate), Math.Rounding.Ceil),
            MAX_BPS,
            MAX_BPS - treasuryActionFeeRate,
            Math.Rounding.Ceil
        );
        sharesTokenFee =
            Math.min(Math.mulDiv(grossShares, tokenActionFeeRate, MAX_BPS, Math.Rounding.Ceil), grossShares - netShares);
        treasuryFee = grossShares - sharesTokenFee - netShares;

        return (grossShares, sharesTokenFee, treasuryFee);
    }

    /// @notice Computes the treasury action fee for a given action
    /// @param action Action to compute treasury action fee for
    /// @param shares Shares to compute treasury action fee for
    /// @return treasuryFee Treasury action fee amount in shares
    function _computeTreasuryFee(ExternalAction action, uint256 shares) internal view returns (uint256) {
        return Math.mulDiv(shares, getTreasuryActionFee(action), MAX_BPS, Math.Rounding.Ceil);
    }

    /// @notice Function that calculates how many shares to mint for the accrued management fee at the current timestamp
    /// @param token LeverageToken to calculate management fee shares for
    /// @param totalSupply Total supply of the LeverageToken
    /// @return shares Shares to mint
    function _getAccruedManagementFee(ILeverageToken token, uint256 totalSupply) internal view returns (uint256) {
        uint256 managementFee = getManagementFee(token);
        if (managementFee == 0) {
            return 0;
        }

        uint120 lastManagementFeeAccrualTimestamp = getLastManagementFeeAccrualTimestamp(token);
        uint256 duration = block.timestamp - lastManagementFeeAccrualTimestamp;

        // slither-disable-next-line timestamp,incorrect-equality
        if (duration == 0) {
            return 0;
        }

        uint256 sharesFee =
            Math.mulDiv(managementFee * totalSupply, duration, MAX_BPS * SECS_PER_YEAR, Math.Rounding.Floor);
        return sharesFee;
    }

    /// @notice Sets the LeverageToken fee for a specific action
    /// @param token LeverageToken to set fee for
    /// @param action Action to set fee for
    /// @param fee Fee for action, 100_00 is 100%
    /// @dev If caller tries to set fee above 100% it reverts with FeeTooHigh error
    function _setLeverageTokenActionFee(ILeverageToken token, ExternalAction action, uint256 fee) internal {
        _validateActionFee(fee);

        _getFeeManagerStorage().tokenActionFee[token][action] = fee;
        emit LeverageTokenActionFeeSet(token, action, fee);
    }

    /// @notice Sets the management fee for a new LeverageToken and the last management fee accrual timestamp to the
    /// current timestamp
    /// @param token LeverageToken to set management fee for
    function _setNewLeverageTokenManagementFee(ILeverageToken token) internal {
        uint256 fee = _getFeeManagerStorage().defaultManagementFeeAtCreation;

        _getFeeManagerStorage().managementFee[token] = fee;
        _getFeeManagerStorage().lastManagementFeeAccrualTimestamp[token] = uint120(block.timestamp);
        emit ManagementFeeSet(token, fee);
    }

    /// @notice Sets the treasury address
    /// @param treasury Treasury address to set
    /// @dev Reverts if the treasury address is zero
    function _setTreasury(address treasury) internal {
        if (treasury == address(0)) {
            revert ZeroAddressTreasury();
        }

        _getFeeManagerStorage().treasury = treasury;
        emit TreasurySet(treasury);
    }

    /// @notice Validates that the fee is not higher than 99.99%
    /// @param fee Fee to validate
    function _validateActionFee(uint256 fee) internal pure {
        if (fee > MAX_ACTION_FEE) {
            revert FeeTooHigh(fee, MAX_ACTION_FEE);
        }
    }

    /// @notice Validates that the fee is not higher than 100%
    /// @param fee Fee to validate
    function _validateManagementFee(uint256 fee) internal pure {
        if (fee > MAX_MANAGEMENT_FEE) {
            revert FeeTooHigh(fee, MAX_MANAGEMENT_FEE);
        }
    }
}

// ============================================================
// FILE: src/interfaces/IBeaconProxyFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IBeaconProxyFactory {
    /// @notice Error thrown when an invalid address is provided
    error InvalidAddress();

    /// @notice Emitted when a new BeaconProxy is created
    /// @param proxy The address of the new BeaconProxy
    /// @param data The data used to initialize the BeaconProxy
    /// @param baseSalt The base salt used for deterministic deployment
    event BeaconProxyCreated(address indexed proxy, bytes data, bytes32 baseSalt);

    /// @notice Computes the address of a BeaconProxy before deployment
    /// @param sender The address that will deploy the BeaconProxy using the factory
    /// @param data The initialization data passed to the BeaconProxy
    /// @param baseSalt The base salt used for deterministic deployment
    /// @return proxy The predicted address of the BeaconProxy
    function computeProxyAddress(address sender, bytes memory data, bytes32 baseSalt)
        external
        view
        returns (address proxy);

    /// @notice Returns the number of BeaconProxys deployed by the factory
    /// @return _numProxies The number of BeaconProxys deployed by the factory
    function numProxies() external view returns (uint256 _numProxies);

    /// @notice Creates a new beacon proxy
    /// @param data The initialization data passed to the proxy
    /// @param baseSalt The base salt used for deterministic deployment
    /// @return proxy The address of the new BeaconProxy
    function createProxy(bytes memory data, bytes32 baseSalt) external returns (address proxy);
}

// ============================================================
// FILE: src/interfaces/IFeeManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ILeverageToken} from "./ILeverageToken.sol";
import {ExternalAction} from "src/types/DataTypes.sol";

interface IFeeManager {
    /// @notice Error emitted when `FEE_MANAGER_ROLE` tries to set fee higher than `MAX_FEE`
    /// @param fee The fee that was set
    /// @param maxFee The maximum fee that can be set
    error FeeTooHigh(uint256 fee, uint256 maxFee);

    /// @notice Error emitted when trying to set the treasury address to the zero address
    error ZeroAddressTreasury();

    /// @notice Emitted when the default management fee for new LeverageTokens is updated
    /// @param fee The default management fee for new LeverageTokens, 100_00 is 100%
    event DefaultManagementFeeAtCreationSet(uint256 fee);

    /// @notice Emitted when a LeverageToken fee is set for a specific action
    /// @param leverageToken The LeverageToken that the fee was set for
    /// @param action The action that the fee was set for
    /// @param fee The fee that was set
    event LeverageTokenActionFeeSet(ILeverageToken indexed leverageToken, ExternalAction indexed action, uint256 fee);

    /// @notice Emitted when the management fee is charged for a LeverageToken
    /// @param leverageToken The LeverageToken that the management fee was charged for
    /// @param sharesFee The amount of shares that were minted to the treasury
    event ManagementFeeCharged(ILeverageToken indexed leverageToken, uint256 sharesFee);

    /// @notice Emitted when the management fee is set
    /// @param token The LeverageToken that the management fee was set for
    /// @param fee The fee that was set
    event ManagementFeeSet(ILeverageToken indexed token, uint256 fee);

    /// @notice Emitted when a treasury fee is set for a specific action
    /// @param action The action that the fee was set for
    /// @param fee The fee that was set
    event TreasuryActionFeeSet(ExternalAction indexed action, uint256 fee);

    /// @notice Emitted when the treasury address is set
    /// @param treasury The address of the treasury
    event TreasurySet(address treasury);

    /// @notice Function that charges any accrued management fees for the LeverageToken by minting shares to the treasury
    /// @param token LeverageToken to charge management fee for
    /// @dev If the treasury is not set, the management fee is not charged (shares are not minted to the treasury) but
    /// still accrues
    function chargeManagementFee(ILeverageToken token) external;

    /// @notice Returns the default management fee for new LeverageTokens
    /// @return fee The default management fee for new LeverageTokens, 100_00 is 100%
    function getDefaultManagementFeeAtCreation() external view returns (uint256 fee);

    /// @notice Returns the total supply of the LeverageToken adjusted for any accrued management fees
    /// @param token LeverageToken to get fee adjusted total supply for
    /// @return totalSupply Fee adjusted total supply of the LeverageToken
    function getFeeAdjustedTotalSupply(ILeverageToken token) external view returns (uint256 totalSupply);

    /// @notice Returns the timestamp of the most recent management fee accrual for a LeverageToken
    /// @param leverageToken The LeverageToken to get the timestamp for
    /// @return timestamp The timestamp of the most recent management fee accrual
    function getLastManagementFeeAccrualTimestamp(ILeverageToken leverageToken)
        external
        view
        returns (uint120 timestamp);

    /// @notice Returns the LeverageToken fee for a specific action
    /// @param leverageToken The LeverageToken to get fee for
    /// @param action The action to get fee for
    /// @return fee Fee for action, 100_00 is 100%
    function getLeverageTokenActionFee(ILeverageToken leverageToken, ExternalAction action)
        external
        view
        returns (uint256 fee);

    /// @notice Returns the management fee for a LeverageToken
    /// @param token LeverageToken to get management fee for
    /// @return fee Management fee for the LeverageToken, 100_00 is 100%
    function getManagementFee(ILeverageToken token) external view returns (uint256 fee);

    /// @notice Returns the address of the treasury
    /// @return treasury The address of the treasury
    function getTreasury() external view returns (address treasury);

    /// @notice Returns the treasury fee for a specific action
    /// @param action Action to get fee for
    /// @return fee Fee for action, 100_00 is 100%
    function getTreasuryActionFee(ExternalAction action) external view returns (uint256 fee);

    /// @notice Sets the default management fee for new LeverageTokens
    /// @param fee The default management fee for new LeverageTokens, 100_00 is 100%
    /// @dev Only `FEE_MANAGER_ROLE` can call this function
    function setDefaultManagementFeeAtCreation(uint256 fee) external;

    /// @notice Sets the management fee for a LeverageToken
    /// @param token LeverageToken to set management fee for
    /// @param fee Management fee, 100_00 is 100%
    /// @dev Only `FEE_MANAGER_ROLE` can call this function
    function setManagementFee(ILeverageToken token, uint256 fee) external;

    /// @notice Sets the address of the treasury. The treasury receives all treasury and management fees from the
    /// LeverageManager.
    /// @param treasury The address of the treasury
    /// @dev Only `FEE_MANAGER_ROLE` can call this function
    function setTreasury(address treasury) external;

    /// @notice Sets the treasury fee for a specific action
    /// @param action The action to set fee for
    /// @param fee The fee for action, 100_00 is 100%
    /// @dev Only `FEE_MANAGER_ROLE` can call this function.
    function setTreasuryActionFee(ExternalAction action, uint256 fee) external;
}

// ============================================================
// FILE: src/interfaces/ILendingAdapter.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Dependency imports
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ILendingAdapter {
    /// @notice Error thrown when the caller is unauthorized to call a function
    error Unauthorized();

    /// @notice Returns the address of the collateral asset
    /// @return collateralAsset Address of the collateral asset
    function getCollateralAsset() external view returns (IERC20 collateralAsset);

    /// @notice Returns the address of the debt asset
    /// @return debtAsset Address of the debt asset
    function getDebtAsset() external view returns (IERC20 debtAsset);

    /// @notice Converts an amount of collateral asset to a debt asset amount based on the lending pool oracle
    /// @param collateral Collateral amount
    /// @return debt Amount of debt asset
    function convertCollateralToDebtAsset(uint256 collateral) external view returns (uint256 debt);

    /// @notice Converts an amount of debt asset to a collateral asset amount based on the lending pool oracle
    /// @param debt Debt amount
    /// @return collateral Amount of collateral asset
    function convertDebtToCollateralAsset(uint256 debt) external view returns (uint256 collateral);

    /// @notice Returns total collateral of the position held by the lending adapter
    /// @return collateral Total collateral of the position held by the lending adapter
    function getCollateral() external view returns (uint256 collateral);

    /// @notice Returns the total collateral of the position held by the lending adapter denominated in the debt asset
    /// @return collateral Total collateral of the position held by the lending adapter denominated in the debt asset
    function getCollateralInDebtAsset() external view returns (uint256 collateral);

    /// @notice Returns the total debt of the position held by the lending adapter
    /// @return debt Total debt of the position held by the lending adapter
    function getDebt() external view returns (uint256 debt);

    /// @notice Returns the total equity of the position held by the lending adapter denominated in the collateral asset
    /// @return equity Equity of the position held by the lending adapter
    function getEquityInCollateralAsset() external view returns (uint256 equity);

    /// @notice Returns the total equity of the position held by the lending adapter denominated in the debt asset
    /// @return equity Equity of the position held by the lending adapter
    /// @dev Equity is calculated as collateral - debt
    function getEquityInDebtAsset() external view returns (uint256 equity);

    /// @notice Supplies collateral assets to the lending pool
    /// @param amount Amount of assets to supply
    function addCollateral(uint256 amount) external;

    /// @notice Post-LeverageToken creation hook. Used for any validation logic or initialization after a LeverageToken
    /// is created using this adapter
    /// @param creator The address of the creator of the LeverageToken
    /// @param leverageToken The address of the LeverageToken that was created
    /// @dev This function is called in `LeverageManager.createNewLeverageToken` after the new LeverageToken is created
    function postLeverageTokenCreation(address creator, address leverageToken) external;

    /// @notice Withdraws collateral assets from the lending pool
    /// @param amount Amount of collateral assets to withdraw
    function removeCollateral(uint256 amount) external;

    /// @notice Borrows debt assets from the lending pool
    /// @param amount Amount of debt assets to borrow
    function borrow(uint256 amount) external;

    /// @notice Repays debt to the lending pool
    /// @param amount Amount of debt assets to repay
    function repay(uint256 amount) external;
}

// ============================================================
// FILE: src/interfaces/ILeverageManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Dependency imports
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

// Internal imports
import {IFeeManager} from "./IFeeManager.sol";
import {IRebalanceAdapterBase} from "./IRebalanceAdapterBase.sol";
import {ILeverageToken} from "./ILeverageToken.sol";
import {IBeaconProxyFactory} from "./IBeaconProxyFactory.sol";
import {ILendingAdapter} from "./ILendingAdapter.sol";
import {ActionData, LeverageTokenState, RebalanceAction, LeverageTokenConfig} from "src/types/DataTypes.sol";

interface ILeverageManager is IFeeManager {
    /// @notice Error thrown when someone tries to set zero address for collateral or debt asset when creating a LeverageToken
    error InvalidLeverageTokenAssets();

    /// @notice Error thrown when collateral ratios are invalid for an action
    error InvalidCollateralRatios();

    /// @notice Error thrown when slippage is too high during mint/redeem
    /// @param actual The actual amount of tokens received
    /// @param expected The expected amount of tokens to receive
    error SlippageTooHigh(uint256 actual, uint256 expected);

    /// @notice Error thrown when caller is not authorized to rebalance
    /// @param token The LeverageToken to rebalance
    /// @param caller The caller of the rebalance function
    error NotRebalancer(ILeverageToken token, address caller);

    /// @notice Error thrown when a LeverageToken's initial collateral ratio is invalid (must be greater than the base ratio)
    /// @param initialCollateralRatio The initial collateral ratio that is invalid
    error InvalidLeverageTokenInitialCollateralRatio(uint256 initialCollateralRatio);

    /// @notice Error thrown when a LeverageToken's state after rebalance is invalid
    /// @param token The LeverageToken that has invalid state after rebalance
    error InvalidLeverageTokenStateAfterRebalance(ILeverageToken token);

    /// @notice Event emitted when the LeverageManager is initialized
    /// @param leverageTokenFactory The factory for creating new LeverageTokens
    event LeverageManagerInitialized(IBeaconProxyFactory leverageTokenFactory);

    /// @notice Error thrown when attempting to rebalance a LeverageToken that is not eligible for rebalance
    error LeverageTokenNotEligibleForRebalance();

    /// @notice Event emitted when a new LeverageToken is created
    /// @param token The new LeverageToken
    /// @param collateralAsset The collateral asset of the LeverageToken
    /// @param debtAsset The debt asset of the LeverageToken
    /// @param config The config of the LeverageToken
    event LeverageTokenCreated(
        ILeverageToken indexed token, IERC20 collateralAsset, IERC20 debtAsset, LeverageTokenConfig config
    );

    /// @notice Event emitted when a user mints LeverageToken shares
    /// @param token The LeverageToken
    /// @param sender The sender of the mint
    /// @param actionData The action data of the mint
    event Mint(ILeverageToken indexed token, address indexed sender, ActionData actionData);

    /// @notice Event emitted when a user rebalances a LeverageToken
    /// @param token The LeverageToken
    /// @param sender The sender of the rebalance
    /// @param stateBefore The state of the LeverageToken before the rebalance
    /// @param stateAfter The state of the LeverageToken after the rebalance
    /// @param actions The actions that were taken
    event Rebalance(
        ILeverageToken indexed token,
        address indexed sender,
        LeverageTokenState stateBefore,
        LeverageTokenState stateAfter,
        RebalanceAction[] actions
    );

    /// @notice Event emitted when a user redeems LeverageToken shares
    /// @param token The LeverageToken
    /// @param sender The sender of the redeem
    /// @param actionData The action data of the redeem
    event Redeem(ILeverageToken indexed token, address indexed sender, ActionData actionData);

    /// @notice Returns the base collateral ratio
    /// @return baseRatio Base collateral ratio
    function BASE_RATIO() external view returns (uint256);

    /// @notice Converts an amount of collateral to an amount of debt for a LeverageToken, based on the current
    /// collateral ratio of the LeverageToken
    /// @param token LeverageToken to convert collateral to debt for
    /// @param collateral Amount of collateral to convert to debt
    /// @param rounding Rounding mode to use for the conversion
    /// @return debt Amount of debt that correspond to the collateral
    /// @dev For deposits/mints, Math.Rounding.Floor should be used. For withdraws/redeems, Math.Rounding.Ceil should be used.
    function convertCollateralToDebt(ILeverageToken token, uint256 collateral, Math.Rounding rounding)
        external
        view
        returns (uint256 debt);

    /// @notice Converts an amount of collateral to an amount of shares for a LeverageToken, based on the current
    /// collateral ratio of the LeverageToken
    /// @param token LeverageToken to convert collateral to shares for
    /// @param collateral Amount of collateral to convert to shares
    /// @param rounding Rounding mode to use for the conversion
    /// @return shares Amount of shares that correspond to the collateral
    /// @dev For deposits/mints, Math.Rounding.Floor should be used. For withdraws/redeems, Math.Rounding.Ceil should be used.
    function convertCollateralToShares(ILeverageToken token, uint256 collateral, Math.Rounding rounding)
        external
        view
        returns (uint256 shares);

    /// @notice Converts an amount of debt to an amount of collateral for a LeverageToken, based on the current
    /// collateral ratio of the LeverageToken
    /// @param token LeverageToken to convert debt to collateral for
    /// @param debt Amount of debt to convert to collateral
    /// @param rounding Rounding mode to use for the conversion
    /// @return collateral Amount of collateral that correspond to the debt amount
    /// @dev For deposits/mints, Math.Rounding.Ceil should be used. For withdraws/redeems, Math.Rounding.Floor should be used.
    function convertDebtToCollateral(ILeverageToken token, uint256 debt, Math.Rounding rounding)
        external
        view
        returns (uint256 collateral);

    /// @notice Converts an amount of shares to an amount of collateral for a LeverageToken, based on the current
    /// collateral ratio of the LeverageToken
    /// @param token LeverageToken to convert shares to collateral for
    /// @param shares Amount of shares to convert to collateral
    /// @param rounding Rounding mode to use for the conversion
    /// @return collateral Amount of collateral that correspond to the shares
    /// @dev For deposits/mints, Math.Rounding.Ceil should be used. For withdraws/redeems, Math.Rounding.Floor should be used.
    function convertSharesToCollateral(ILeverageToken token, uint256 shares, Math.Rounding rounding)
        external
        view
        returns (uint256 collateral);

    /// @notice Converts an amount of shares to an amount of debt for a LeverageToken, based on the current
    /// collateral ratio of the LeverageToken
    /// @param token LeverageToken to convert shares to debt for
    /// @param shares Amount of shares to convert to debt
    /// @param rounding Rounding mode to use for the conversion
    /// @return debt Amount of debt that correspond to the shares
    /// @dev For deposits/mints, Math.Rounding.Floor should be used. For withdraws/redeems, Math.Rounding.Ceil should be used.
    function convertSharesToDebt(ILeverageToken token, uint256 shares, Math.Rounding rounding)
        external
        view
        returns (uint256 debt);

    /// @notice Converts an amount of shares to an amount of equity in collateral asset for a LeverageToken, based on the
    /// price oracle used by the underlying lending adapter and state of the LeverageToken
    /// @param token LeverageToken to convert shares to equity in collateral asset for
    /// @param shares Amount of shares to convert to equity in collateral asset
    /// @return equityInCollateralAsset Amount of equity in collateral asset that correspond to the shares
    function convertToAssets(ILeverageToken token, uint256 shares)
        external
        view
        returns (uint256 equityInCollateralAsset);

    /// @notice Converts an amount of equity in collateral asset to an amount of shares for a LeverageToken, based on the
    /// price oracle used by the underlying lending adapter and state of the LeverageToken
    /// @param token LeverageToken to convert equity in collateral asset to shares for
    /// @param equityInCollateralAsset Amount of equity in collateral asset to convert to shares
    /// @return shares Amount of shares that correspond to the equity in collateral asset
    function convertToShares(ILeverageToken token, uint256 equityInCollateralAsset)
        external
        view
        returns (uint256 shares);

    /// @notice Returns the factory for creating new LeverageTokens
    /// @return factory Factory for creating new LeverageTokens
    function getLeverageTokenFactory() external view returns (IBeaconProxyFactory factory);

    /// @notice Returns the lending adapter for a LeverageToken
    /// @param token LeverageToken to get lending adapter for
    /// @return adapter Lending adapter for the LeverageToken
    function getLeverageTokenLendingAdapter(ILeverageToken token) external view returns (ILendingAdapter adapter);

    /// @notice Returns the collateral asset for a LeverageToken
    /// @param token LeverageToken to get collateral asset for
    /// @return collateralAsset Collateral asset for the LeverageToken
    function getLeverageTokenCollateralAsset(ILeverageToken token) external view returns (IERC20 collateralAsset);

    /// @notice Returns the debt asset for a LeverageToken
    /// @param token LeverageToken to get debt asset for
    /// @return debtAsset Debt asset for the LeverageToken
    function getLeverageTokenDebtAsset(ILeverageToken token) external view returns (IERC20 debtAsset);

    /// @notice Returns the rebalance adapter for a LeverageToken
    /// @param token LeverageToken to get the rebalance adapter for
    /// @return adapter Rebalance adapter for the LeverageToken
    function getLeverageTokenRebalanceAdapter(ILeverageToken token)
        external
        view
        returns (IRebalanceAdapterBase adapter);

    /// @notice Returns the entire configuration for a LeverageToken
    /// @param token LeverageToken to get config for
    /// @return config LeverageToken configuration
    function getLeverageTokenConfig(ILeverageToken token) external view returns (LeverageTokenConfig memory config);

    /// @notice Returns the initial collateral ratio for a LeverageToken
    /// @param token LeverageToken to get initial collateral ratio for
    /// @return initialCollateralRatio Initial collateral ratio for the LeverageToken
    /// @dev Initial collateral ratio is followed when the LeverageToken has no shares and on mints when debt is 0.
    function getLeverageTokenInitialCollateralRatio(ILeverageToken token)
        external
        view
        returns (uint256 initialCollateralRatio);

    /// @notice Returns all data required to describe current LeverageToken state - collateral, debt, equity and collateral ratio
    /// @param token LeverageToken to query state for
    /// @return state LeverageToken state
    function getLeverageTokenState(ILeverageToken token) external view returns (LeverageTokenState memory state);

    /// @notice Previews deposit function call and returns all required data
    /// @param token LeverageToken to preview deposit for
    /// @param collateral Amount of collateral to deposit
    /// @return previewData Preview data for deposit
    ///         - collateral Amount of collateral that will be added to the LeverageToken and sent to the receiver
    ///         - debt Amount of debt that will be borrowed and sent to the receiver
    ///         - shares Amount of shares that will be minted to the receiver
    ///         - tokenFee Amount of shares that will be charged for the deposit that are given to the LeverageToken
    ///         - treasuryFee Amount of shares that will be charged for the deposit that are given to the treasury
    /// @dev Sender should approve leverage manager to spend collateral amount of collateral asset
    function previewDeposit(ILeverageToken token, uint256 collateral) external view returns (ActionData memory);

    /// @notice Previews mint function call and returns all required data
    /// @param token LeverageToken to preview mint for
    /// @param shares Amount of shares to mint
    /// @return previewData Preview data for mint
    ///         - collateral Amount of collateral that will be added to the LeverageToken and sent to the receiver
    ///         - debt Amount of debt that will be borrowed and sent to the receiver
    ///         - shares Amount of shares that will be minted to the receiver
    ///         - tokenFee Amount of shares that will be charged for the mint that are given to the LeverageToken
    ///         - treasuryFee Amount of shares that will be charged for the mint that are given to the treasury
    /// @dev Sender should approve leverage manager to spend collateral amount of collateral asset
    function previewMint(ILeverageToken token, uint256 shares) external view returns (ActionData memory);

    /// @notice Previews redeem function call and returns all required data
    /// @param token LeverageToken to preview redeem for
    /// @param shares Amount of shares to redeem
    /// @return previewData Preview data for redeem
    ///         - collateral Amount of collateral that will be removed from the LeverageToken and sent to the sender
    ///         - debt Amount of debt that will be taken from sender and repaid to the LeverageToken
    ///         - shares Amount of shares that will be burned from sender
    ///         - tokenFee Amount of shares that will be charged for the redeem that are given to the LeverageToken
    ///         - treasuryFee Amount of shares that will be charged for the redeem that are given to the treasury
    /// @dev Sender should approve LeverageManager to spend debt amount of debt asset
    function previewRedeem(ILeverageToken token, uint256 shares) external view returns (ActionData memory);

    /// @notice Previews withdraw function call and returns all required data
    /// @param token LeverageToken to preview withdraw for
    /// @param collateral Amount of collateral to withdraw
    /// @return previewData Preview data for withdraw
    ///         - collateral Amount of collateral that will be removed from the LeverageToken and sent to the sender
    ///         - debt Amount of debt that will be taken from sender and repaid to the LeverageToken
    ///         - shares Amount of shares that will be burned from sender
    ///         - tokenFee Amount of shares that will be charged for the redeem that are given to the LeverageToken
    ///         - treasuryFee Amount of shares that will be charged for the redeem that are given to the treasury
    /// @dev Sender should approve LeverageManager to spend debt amount of debt asset
    function previewWithdraw(ILeverageToken token, uint256 collateral) external view returns (ActionData memory);

    /// @notice Creates a new LeverageToken with the given config
    /// @param config Configuration of the LeverageToken
    /// @param name Name of the LeverageToken
    /// @param symbol Symbol of the LeverageToken
    /// @return token Address of the new LeverageToken
    function createNewLeverageToken(LeverageTokenConfig memory config, string memory name, string memory symbol)
        external
        returns (ILeverageToken token);

    /// @notice Deposits collateral into a LeverageToken and mints shares to the sender
    /// @param token LeverageToken to deposit into
    /// @param collateral Amount of collateral to deposit
    /// @param minShares Minimum number of shares to mint
    /// @return depositData Action data for the deposit
    ///         - collateral Amount of collateral that was added, including any fees
    ///         - debt Amount of debt that was added
    ///         - shares Amount of shares minted to the sender
    ///         - tokenFee Amount of shares that was charged for the deposit that are given to the LeverageToken
    ///         - treasuryFee Amount of shares that was charged for the deposit that are given to the treasury
    /// @dev Sender should approve leverage manager to spend collateral amount of collateral asset
    function deposit(ILeverageToken token, uint256 collateral, uint256 minShares)
        external
        returns (ActionData memory);

    /// @notice Mints shares of a LeverageToken to the sender
    /// @param token LeverageToken to mint shares for
    /// @param shares Amount of shares to mint
    /// @param maxCollateral Maximum amount of collateral to use for minting
    /// @return mintData Action data for the mint
    ///         - collateral Amount of collateral that was added, including any fees
    ///         - debt Amount of debt that was added
    ///         - shares Amount of shares minted to the sender
    ///         - tokenFee Amount of shares that was charged for the mint that are given to the LeverageToken
    ///         - treasuryFee Amount of shares that was charged for the mint that are given to the treasury
    /// @dev Sender should approve leverage manager to spend collateral amount of collateral asset, which can be
    ///      previewed with previewMint
    function mint(ILeverageToken token, uint256 shares, uint256 maxCollateral) external returns (ActionData memory);

    /// @notice Redeems equity from a LeverageToken and burns shares from sender
    /// @param token The LeverageToken to redeem from
    /// @param shares The amount of shares to redeem
    /// @param minCollateral The minimum amount of collateral to receive
    /// @return actionData Data about the redeem
    ///         - collateral Amount of collateral that was removed from LeverageToken and sent to sender
    ///         - debt Amount of debt that was repaid to LeverageToken, taken from sender
    ///         - shares Amount of the sender's shares that were burned for the redeem
    ///         - tokenFee Amount of shares that was charged for the redeem that are given to the LeverageToken
    ///         - treasuryFee Amount of shares that was charged for the redeem that are given to the treasury
    function redeem(ILeverageToken token, uint256 shares, uint256 minCollateral)
        external
        returns (ActionData memory actionData);

    /// @notice Rebalances a LeverageToken based on provided actions
    /// @param leverageToken LeverageToken to rebalance
    /// @param actions Rebalance actions to execute (add collateral, remove collateral, borrow or repay)
    /// @param tokenIn Token to transfer in. Transfer from caller to the LeverageManager contract
    /// @param tokenOut Token to transfer out. Transfer from the LeverageManager contract to caller
    /// @param amountIn Amount of tokenIn to transfer in
    /// @param amountOut Amount of tokenOut to transfer out
    /// @dev Anyone can call this function. At the end function will just check if the affected LeverageToken is in a
    ///      better state than before rebalance. Caller needs to calculate and to provide tokens for rebalancing and he needs
    ///      to specify tokens that he wants to receive
    /// @dev Note: If the sender specifies less amountOut than the maximum amount they can retrieve for their specified
    ///      rebalance actions, the rebalance will still be successful. The remaining amount that could have been taken
    ///      out can be claimed by anyone by executing rebalance with that remaining amount in amountOut.
    function rebalance(
        ILeverageToken leverageToken,
        RebalanceAction[] calldata actions,
        IERC20 tokenIn,
        IERC20 tokenOut,
        uint256 amountIn,
        uint256 amountOut
    ) external;

    /// @notice Withdraws collateral from a LeverageToken and burns shares from sender
    /// @param token The LeverageToken to withdraw from
    /// @param collateral The amount of collateral to withdraw
    /// @param maxShares The maximum amount of shares to burn
    /// @return actionData Data about the withdraw
    ///         - collateral Amount of collateral that was removed from LeverageToken and sent to sender
    ///         - debt Amount of debt that was repaid to LeverageToken, taken from sender
    ///         - shares Amount of the sender's shares that were burned for the withdraw
    ///         - tokenFee Amount of shares that was charged for the withdraw that are given to the LeverageToken
    ///         - treasuryFee Amount of shares that was charged for the withdraw that are given to the treasury
    function withdraw(ILeverageToken token, uint256 collateral, uint256 maxShares)
        external
        returns (ActionData memory actionData);
}

// ============================================================
// FILE: src/interfaces/ILeverageToken.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Dependency imports
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ILeverageToken is IERC20 {
    /// @notice Event emitted when the leverage token is initialized
    /// @param name The name of the LeverageToken
    /// @param symbol The symbol of the LeverageToken
    event LeverageTokenInitialized(string name, string symbol);

    /// @notice Converts an amount of LeverageToken shares to an amount of equity in collateral asset, based on the
    /// price oracle used by the underlying lending adapter and state of the LeverageToken.
    /// @notice Equity in collateral asset is equal to the difference between collateral and debt denominated
    /// in the collateral asset.
    /// @param shares The number of shares to convert to equity in collateral asset
    /// @return assets Amount of equity in collateral asset that correspond to the shares
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /// @notice Converts an amount of equity in collateral asset to an amount of LeverageToken shares, based on the
    /// price oracle used by the underlying lending adapter and state of the LeverageToken.
    /// @notice Equity in collateral asset is equal to the difference between collateral and debt denominated
    /// in the collateral asset.
    /// @param assets The amount of equity in collateral asset to convert to shares
    /// @return shares The number of shares that correspond to the equity in collateral asset
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /// @notice Mints new tokens to the specified address
    /// @param to The address to mint tokens to
    /// @param amount The amount of tokens to mint
    /// @dev Only the owner can call this function. Owner should be the LeverageManager contract
    function mint(address to, uint256 amount) external;

    /// @notice Burns tokens from the specified address
    /// @param from The address to burn tokens from
    /// @param amount The amount of tokens to burn
    /// @dev Only the owner can call this function. Owner should be the LeverageManager contract
    function burn(address from, uint256 amount) external;
}

// ============================================================
// FILE: src/interfaces/IRebalanceAdapterBase.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ILeverageToken} from "src/interfaces/ILeverageToken.sol";
import {LeverageTokenState} from "src/types/DataTypes.sol";

/// @title IRebalanceAdapterBase
/// @notice Interface for the base RebalanceAdapter
/// @dev This is minimal interface required for the RebalanceAdapter to be used by the LeverageManager
interface IRebalanceAdapterBase {
    /// @notice Returns the initial collateral ratio for a LeverageToken. Must be > `LeverageManager.BASE_RATIO()`
    /// @param token LeverageToken to get initial collateral ratio for
    /// @return initialCollateralRatio Initial collateral ratio for the LeverageToken
    /// @dev Initial collateral ratio is followed when the LeverageToken has no shares and on mints when debt is 0.
    function getLeverageTokenInitialCollateralRatio(ILeverageToken token)
        external
        view
        returns (uint256 initialCollateralRatio);

    /// @notice Validates if a LeverageToken is eligible for rebalance
    /// @param token LeverageToken to check eligibility for
    /// @param state State of the LeverageToken
    /// @param caller Caller of the function
    /// @return isEligible True if LeverageToken is eligible for rebalance, false otherwise
    function isEligibleForRebalance(ILeverageToken token, LeverageTokenState memory state, address caller)
        external
        view
        returns (bool isEligible);

    /// @notice Validates if the LeverageToken's state after rebalance is valid
    /// @param token LeverageToken to validate state for
    /// @param stateBefore State of the LeverageToken before rebalance
    /// @return isValid True if state after rebalance is valid, false otherwise
    function isStateAfterRebalanceValid(ILeverageToken token, LeverageTokenState memory stateBefore)
        external
        view
        returns (bool isValid);

    /// @notice Post-LeverageToken creation hook. Used for any validation logic or initialization after a LeverageToken
    /// is created using this adapter
    /// @param creator The address of the creator of the LeverageToken
    /// @param leverageToken The address of the LeverageToken that was created
    /// @dev This function is called in `LeverageManager.createNewLeverageToken` after the new LeverageToken is created
    function postLeverageTokenCreation(address creator, address leverageToken) external;
}

// ============================================================
// FILE: src/LeverageManager.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

// Dependency imports
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ReentrancyGuardTransientUpgradeable} from
    "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardTransientUpgradeable.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

// Internal imports
import {IRebalanceAdapterBase} from "src/interfaces/IRebalanceAdapterBase.sol";
import {IBeaconProxyFactory} from "src/interfaces/IBeaconProxyFactory.sol";
import {ILendingAdapter} from "src/interfaces/ILendingAdapter.sol";
import {ILeverageManager} from "src/interfaces/ILeverageManager.sol";
import {ILeverageToken} from "src/interfaces/ILeverageToken.sol";
import {FeeManager} from "src/FeeManager.sol";
import {LeverageTokenState} from "src/types/DataTypes.sol";
import {LeverageToken} from "src/LeverageToken.sol";
import {
    ActionData,
    ActionType,
    ExternalAction,
    LeverageTokenConfig,
    BaseLeverageTokenConfig,
    RebalanceAction
} from "src/types/DataTypes.sol";

/**
 * @dev The LeverageManager contract is an upgradeable core contract that is responsible for managing the creation of LeverageTokens.
 * It also acts as an entry point for users to mint and redeem LeverageTokens (shares), and for
 * rebalancers to rebalance LeverageTokens.
 *
 * LeverageTokens are ERC20 tokens that are akin to shares in an ERC-4626 vault - they represent a claim on the equity held by
 * the LeverageToken. They can be created on this contract by calling `createNewLeverageToken`, and their configuration on the
 * LeverageManager is immutable.
 * Note: Although the LeverageToken configuration saved on the LeverageManager is immutable, the configured LendingAdapter and
 *       RebalanceAdapter for the LeverageToken may be upgradeable contracts.
 *
 * The LeverageManager also inherits the `FeeManager` contract, which is used to manage LeverageToken fees (which accrue to
 * the share value of the LeverageToken) and the treasury fees.
 *
 * For mints of LeverageTokens (shares), the collateral and debt required is calculated by using the LeverageToken's
 * current collateral ratio. As such, the collateral ratio after a mint must be equal to the collateral ratio before a
 * mint, within some rounding error.
 *
 * [CAUTION]
 * ====
 * - LeverageTokens are susceptible to inflation attacks like ERC-4626 vaults:
 *   "In empty (or nearly empty) ERC-4626 vaults, mints are at high risk of being stolen through frontrunning
 *   with a "donation" to the vault that inflates the price of a share. This is variously known as a donation or inflation
 *   attack and is essentially a problem of slippage. Vault deployers can protect against this attack by making an initial
 *   mint of a non-trivial amount of the asset, such that price manipulation becomes infeasible. Redeems may
 *   similarly be affected by slippage. Users can protect against this attack as well as unexpected slippage in general by
 *   verifying the amount received is as expected, using a wrapper that performs these checks such as
 *   https://github.com/fei-protocol/ERC4626#erc4626router-and-base[ERC4626Router]."
 *
 *   As such it is highly recommended that LeverageToken creators make an initial mint of a non-trivial amount of equity.
 *   It is also recommended to use a router that performs slippage checks when minting and redeeming.
 *
 * - LeverageToken creation is permissionless and can be configured with arbitrary lending adapters, rebalance adapters, and
 *   underlying collateral and debt assets. As such, the adapters and tokens used by a LeverageToken are part of the risk
 *   profile of the LeverageToken, and should be carefully considered by users before using a LeverageToken.
 *
 * - LeverageTokens can be configured with arbitrary lending adapters, thus LeverageTokens are directly affected by the
 *   specific mechanisms of the underlying lending market that their lending adapter integrates with. As mentioned above,
 *   it is highly recommended that users research and understand the lending adapter used by the LeverageToken they are
 *   considering using. Some examples:
 *   - Morpho: Users should be aware that Morpho market creation is permissionless, and that the price oracle used by
 *     by the market may be manipulatable.
 *   - Aave v3: Allows rehypothecation of collateral, which may lead to reverts when trying to remove collateral from the
 *     market during redeems and rebalances.
 *
 * @custom:contact security@seamlessprotocol.com
 */
contract LeverageManager is
    ILeverageManager,
    AccessControlUpgradeable,
    ReentrancyGuardTransientUpgradeable,
    FeeManager,
    UUPSUpgradeable
{
    // Base collateral ratio constant, 1e18 means that collateral / debt ratio is 1:1
    uint256 public constant BASE_RATIO = 1e18;
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

    /// @dev Struct containing all state for the LeverageManager contract
    /// @custom:storage-location erc7201:seamless.contracts.storage.LeverageManager
    struct LeverageManagerStorage {
        /// @dev Factory for deploying new LeverageTokens
        IBeaconProxyFactory tokenFactory;
        /// @dev LeverageToken address => Base config for LeverageToken
        mapping(ILeverageToken token => BaseLeverageTokenConfig) config;
    }

    function _getLeverageManagerStorage() internal pure returns (LeverageManagerStorage storage $) {
        // slither-disable-next-line assembly
        assembly {
            // keccak256(abi.encode(uint256(keccak256("seamless.contracts.storage.LeverageManager")) - 1)) & ~bytes32(uint256(0xff));
            $.slot := 0x326e20d598a681eb69bc11b5176604d340fccf9864170f09484f3c317edf3600
        }
    }

    function initialize(address initialAdmin, address treasury, IBeaconProxyFactory leverageTokenFactory)
        external
        initializer
    {
        __FeeManager_init(initialAdmin, treasury);
        __ReentrancyGuardTransient_init();
        _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin);
        _getLeverageManagerStorage().tokenFactory = leverageTokenFactory;
        emit LeverageManagerInitialized(leverageTokenFactory);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(UPGRADER_ROLE) {}

    /// @inheritdoc ILeverageManager
    function convertCollateralToDebt(ILeverageToken token, uint256 collateral, Math.Rounding rounding)
        external
        view
        returns (uint256 debt)
    {
        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);
        uint256 totalCollateral = lendingAdapter.getCollateral();
        uint256 totalDebt = lendingAdapter.getDebt();

        return _convertCollateralToDebt(token, lendingAdapter, collateral, totalCollateral, totalDebt, rounding);
    }

    /// @inheritdoc ILeverageManager
    function convertCollateralToShares(ILeverageToken token, uint256 collateral, Math.Rounding rounding)
        external
        view
        returns (uint256 shares)
    {
        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);
        uint256 totalSupply = getFeeAdjustedTotalSupply(token);
        return _convertCollateralToShares(token, lendingAdapter, collateral, totalSupply, rounding);
    }

    /// @inheritdoc ILeverageManager
    function convertDebtToCollateral(ILeverageToken token, uint256 debt, Math.Rounding rounding)
        external
        view
        returns (uint256 collateral)
    {
        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);
        uint256 totalCollateral = lendingAdapter.getCollateral();
        uint256 totalDebt = lendingAdapter.getDebt();

        if (totalDebt == 0) {
            if (totalCollateral == 0) {
                // Initial state: no collateral or debt, use initial collateral ratio
                uint256 initialCollateralRatio = getLeverageTokenInitialCollateralRatio(token);
                return lendingAdapter.convertDebtToCollateralAsset(
                    Math.mulDiv(debt, initialCollateralRatio, BASE_RATIO, rounding)
                );
            }
            // Liquidated state: no debt but collateral exists, cannot convert
            return 0;
        }

        return Math.mulDiv(debt, totalCollateral, totalDebt, rounding);
    }

    /// @inheritdoc ILeverageManager
    function convertSharesToCollateral(ILeverageToken token, uint256 shares, Math.Rounding rounding)
        external
        view
        returns (uint256 collateral)
    {
        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);
        uint256 totalCollateral = lendingAdapter.getCollateral();
        uint256 totalSupply = getFeeAdjustedTotalSupply(token);
        return _convertSharesToCollateral(token, lendingAdapter, shares, totalCollateral, totalSupply, rounding);
    }

    /// @inheritdoc ILeverageManager
    function convertSharesToDebt(ILeverageToken token, uint256 shares, Math.Rounding rounding)
        external
        view
        returns (uint256 debt)
    {
        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);
        uint256 totalDebt = lendingAdapter.getDebt();
        uint256 totalSupply = getFeeAdjustedTotalSupply(token);
        return _convertSharesToDebt(token, lendingAdapter, shares, totalDebt, totalSupply, rounding);
    }

    /// @inheritdoc ILeverageManager
    function convertToAssets(ILeverageToken token, uint256 shares)
        external
        view
        returns (uint256 equityInCollateralAsset)
    {
        uint256 totalEquityInCollateralAsset = getLeverageTokenLendingAdapter(token).getEquityInCollateralAsset();
        uint256 totalSupply = getFeeAdjustedTotalSupply(token);

        // slither-disable-next-line incorrect-equality,timestamp
        if (totalSupply == 0) {
            return 0;
        }

        return Math.mulDiv(shares, totalEquityInCollateralAsset, totalSupply, Math.Rounding.Floor);
    }

    /// @inheritdoc ILeverageManager
    function convertToShares(ILeverageToken token, uint256 equityInCollateralAsset)
        external
        view
        returns (uint256 shares)
    {
        uint256 totalEquityInCollateralAsset = getLeverageTokenLendingAdapter(token).getEquityInCollateralAsset();
        uint256 totalSupply = getFeeAdjustedTotalSupply(token);

        if (totalEquityInCollateralAsset == 0) {
            return 0;
        }

        return Math.mulDiv(equityInCollateralAsset, totalSupply, totalEquityInCollateralAsset, Math.Rounding.Floor);
    }

    /// @inheritdoc ILeverageManager
    function getLeverageTokenFactory() public view returns (IBeaconProxyFactory factory) {
        return _getLeverageManagerStorage().tokenFactory;
    }

    /// @inheritdoc ILeverageManager
    function getLeverageTokenCollateralAsset(ILeverageToken token) public view returns (IERC20 collateralAsset) {
        return getLeverageTokenLendingAdapter(token).getCollateralAsset();
    }

    /// @inheritdoc ILeverageManager
    function getLeverageTokenDebtAsset(ILeverageToken token) public view returns (IERC20 debtAsset) {
        return getLeverageTokenLendingAdapter(token).getDebtAsset();
    }

    /// @inheritdoc ILeverageManager
    function getLeverageTokenRebalanceAdapter(ILeverageToken token)
        public
        view
        returns (IRebalanceAdapterBase module)
    {
        return _getLeverageManagerStorage().config[token].rebalanceAdapter;
    }

    /// @inheritdoc ILeverageManager
    function getLeverageTokenConfig(ILeverageToken token) external view returns (LeverageTokenConfig memory config) {
        BaseLeverageTokenConfig memory baseConfig = _getLeverageManagerStorage().config[token];
        uint256 mintTokenFee = getLeverageTokenActionFee(token, ExternalAction.Mint);
        uint256 redeemTokenFee = getLeverageTokenActionFee(token, ExternalAction.Redeem);

        return LeverageTokenConfig({
            lendingAdapter: baseConfig.lendingAdapter,
            rebalanceAdapter: baseConfig.rebalanceAdapter,
            mintTokenFee: mintTokenFee,
            redeemTokenFee: redeemTokenFee
        });
    }

    /// @inheritdoc ILeverageManager
    function getLeverageTokenLendingAdapter(ILeverageToken token) public view returns (ILendingAdapter adapter) {
        return _getLeverageManagerStorage().config[token].lendingAdapter;
    }

    /// @inheritdoc ILeverageManager
    function getLeverageTokenInitialCollateralRatio(ILeverageToken token) public view returns (uint256) {
        uint256 initialCollateralRatio =
            getLeverageTokenRebalanceAdapter(token).getLeverageTokenInitialCollateralRatio(token);

        if (initialCollateralRatio <= BASE_RATIO) {
            revert InvalidLeverageTokenInitialCollateralRatio(initialCollateralRatio);
        }

        return initialCollateralRatio;
    }

    /// @inheritdoc ILeverageManager
    function getLeverageTokenState(ILeverageToken token) external view returns (LeverageTokenState memory state) {
        return _getLeverageTokenState(getLeverageTokenLendingAdapter(token));
    }

    /// @inheritdoc ILeverageManager
    function createNewLeverageToken(LeverageTokenConfig calldata tokenConfig, string memory name, string memory symbol)
        external
        nonReentrant
        returns (ILeverageToken token)
    {
        IBeaconProxyFactory tokenFactory = getLeverageTokenFactory();

        // slither-disable-next-line reentrancy-events
        token = ILeverageToken(
            tokenFactory.createProxy(
                abi.encodeWithSelector(LeverageToken.initialize.selector, address(this), name, symbol),
                bytes32(tokenFactory.numProxies())
            )
        );

        _getLeverageManagerStorage().config[token] = BaseLeverageTokenConfig({
            lendingAdapter: tokenConfig.lendingAdapter,
            rebalanceAdapter: tokenConfig.rebalanceAdapter
        });
        _setLeverageTokenActionFee(token, ExternalAction.Mint, tokenConfig.mintTokenFee);
        _setLeverageTokenActionFee(token, ExternalAction.Redeem, tokenConfig.redeemTokenFee);
        _setNewLeverageTokenManagementFee(token);

        tokenConfig.lendingAdapter.postLeverageTokenCreation(msg.sender, address(token));
        tokenConfig.rebalanceAdapter.postLeverageTokenCreation(msg.sender, address(token));

        emit LeverageTokenCreated(
            token,
            tokenConfig.lendingAdapter.getCollateralAsset(),
            tokenConfig.lendingAdapter.getDebtAsset(),
            tokenConfig
        );
        return token;
    }

    /// @inheritdoc ILeverageManager
    function previewDeposit(ILeverageToken token, uint256 collateral) public view returns (ActionData memory) {
        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);
        uint256 feeAdjustedTotalSupply = getFeeAdjustedTotalSupply(token);

        uint256 debt = _convertCollateralToDebt(
            token,
            lendingAdapter,
            collateral,
            lendingAdapter.getCollateral(),
            lendingAdapter.getDebt(),
            Math.Rounding.Floor
        );

        uint256 shares =
            _convertCollateralToShares(token, lendingAdapter, collateral, feeAdjustedTotalSupply, Math.Rounding.Floor);
        (uint256 sharesAfterFee, uint256 sharesFee, uint256 treasuryFee) =
            _computeFeesForGrossShares(token, shares, ExternalAction.Mint);

        return ActionData({
            collateral: collateral,
            debt: debt,
            shares: sharesAfterFee,
            tokenFee: sharesFee,
            treasuryFee: treasuryFee
        });
    }

    /// @inheritdoc ILeverageManager
    function previewMint(ILeverageToken token, uint256 shares) public view returns (ActionData memory) {
        (uint256 grossShares, uint256 sharesFee, uint256 treasuryFee) =
            _computeFeesForNetShares(token, shares, ExternalAction.Mint);

        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);
        uint256 feeAdjustedTotalSupply = getFeeAdjustedTotalSupply(token);
        uint256 collateral = _convertSharesToCollateral(
            token,
            lendingAdapter,
            grossShares,
            lendingAdapter.getCollateral(),
            feeAdjustedTotalSupply,
            Math.Rounding.Ceil
        );
        uint256 debt = _convertCollateralToDebt(
            token,
            lendingAdapter,
            collateral,
            lendingAdapter.getCollateral(),
            lendingAdapter.getDebt(),
            Math.Rounding.Floor
        );

        return ActionData({
            collateral: collateral,
            debt: debt,
            shares: shares,
            tokenFee: sharesFee,
            treasuryFee: treasuryFee
        });
    }

    /// @inheritdoc ILeverageManager
    function previewRedeem(ILeverageToken token, uint256 shares) public view returns (ActionData memory) {
        (uint256 sharesAfterFees, uint256 sharesFee, uint256 treasuryFee) =
            _computeFeesForGrossShares(token, shares, ExternalAction.Redeem);

        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);
        uint256 feeAdjustedTotalSupply = getFeeAdjustedTotalSupply(token);

        // The redeemer receives collateral and repays debt for the net shares after fees are subtracted. The amount of
        // shares their balance is decreased by is that net share amount (which is burned) plus the fees.
        // - the treasury fee shares are given to the treasury
        // - the token fee shares are burned to increase share value
        uint256 collateral = _convertSharesToCollateral(
            token,
            lendingAdapter,
            sharesAfterFees,
            lendingAdapter.getCollateral(),
            feeAdjustedTotalSupply,
            Math.Rounding.Floor
        );
        uint256 debt = _convertSharesToDebt(
            token, lendingAdapter, sharesAfterFees, lendingAdapter.getDebt(), feeAdjustedTotalSupply, Math.Rounding.Ceil
        );

        return ActionData({
            collateral: collateral,
            debt: debt,
            shares: shares,
            tokenFee: sharesFee,
            treasuryFee: treasuryFee
        });
    }

    /// @inheritdoc ILeverageManager
    function previewWithdraw(ILeverageToken token, uint256 collateral) public view returns (ActionData memory) {
        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);
        uint256 feeAdjustedTotalSupply = getFeeAdjustedTotalSupply(token);

        // The withdrawer receives their specified collateral amount and pays debt for the shares that can be exchanged
        // for the collateral amount. The amount of shares their balance is decreased by is that share amount (which is
        // burned) plus the fees.
        // - the treasury fee shares are given to the treasury
        // - the token fee shares are burned to increase share value
        uint256 shares =
            _convertCollateralToShares(token, lendingAdapter, collateral, feeAdjustedTotalSupply, Math.Rounding.Ceil);
        uint256 debt = _convertCollateralToDebt(
            token,
            lendingAdapter,
            collateral,
            lendingAdapter.getCollateral(),
            lendingAdapter.getDebt(),
            Math.Rounding.Ceil
        );

        (uint256 sharesAfterFees, uint256 sharesFee, uint256 treasuryFee) =
            _computeFeesForNetShares(token, shares, ExternalAction.Redeem);

        return ActionData({
            collateral: collateral,
            debt: debt,
            shares: sharesAfterFees,
            tokenFee: sharesFee,
            treasuryFee: treasuryFee
        });
    }

    /// @inheritdoc ILeverageManager
    function deposit(ILeverageToken token, uint256 collateral, uint256 minShares)
        external
        nonReentrant
        returns (ActionData memory actionData)
    {
        // Management fee is calculated from the total supply of the LeverageToken, so we need to charge it first
        // before total supply is updated due to the mint
        chargeManagementFee(token);

        ActionData memory depositData = previewDeposit(token, collateral);

        // slither-disable-next-line timestamp
        if (depositData.shares < minShares) {
            revert SlippageTooHigh(depositData.shares, minShares);
        }

        _mint(token, depositData);

        return depositData;
    }

    /// @inheritdoc ILeverageManager
    function mint(ILeverageToken token, uint256 shares, uint256 maxCollateral)
        external
        nonReentrant
        returns (ActionData memory actionData)
    {
        // Management fee is calculated from the total supply of the LeverageToken, so we need to charge it first
        // before total supply is updated due to the mint
        chargeManagementFee(token);

        ActionData memory mintData = previewMint(token, shares);

        // slither-disable-next-line timestamp
        if (mintData.collateral > maxCollateral) {
            revert SlippageTooHigh(mintData.collateral, maxCollateral);
        }

        _mint(token, mintData);

        return mintData;
    }

    /// @inheritdoc ILeverageManager
    function rebalance(
        ILeverageToken leverageToken,
        RebalanceAction[] calldata actions,
        IERC20 tokenIn,
        IERC20 tokenOut,
        uint256 amountIn,
        uint256 amountOut
    ) external nonReentrant {
        _transferTokens(tokenIn, msg.sender, address(this), amountIn);

        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(leverageToken);

        // Check if the LeverageToken is eligible for rebalance
        LeverageTokenState memory stateBefore = _getLeverageTokenState(lendingAdapter);

        IRebalanceAdapterBase rebalanceAdapter = getLeverageTokenRebalanceAdapter(leverageToken);
        if (!rebalanceAdapter.isEligibleForRebalance(leverageToken, stateBefore, msg.sender)) {
            revert LeverageTokenNotEligibleForRebalance();
        }

        for (uint256 i = 0; i < actions.length; i++) {
            _executeLendingAdapterAction(leverageToken, actions[i].actionType, actions[i].amount);
        }

        // Validate the LeverageToken state after rebalancing
        if (!rebalanceAdapter.isStateAfterRebalanceValid(leverageToken, stateBefore)) {
            revert InvalidLeverageTokenStateAfterRebalance(leverageToken);
        }

        _transferTokens(tokenOut, address(this), msg.sender, amountOut);

        LeverageTokenState memory stateAfter = _getLeverageTokenState(lendingAdapter);

        emit Rebalance(leverageToken, msg.sender, stateBefore, stateAfter, actions);
    }

    /// @inheritdoc ILeverageManager
    function redeem(ILeverageToken token, uint256 shares, uint256 minCollateral)
        external
        nonReentrant
        returns (ActionData memory actionData)
    {
        // Management fee is calculated from the total supply of the LeverageToken, so we need to claim it first
        // before total supply is updated due to the redeem
        chargeManagementFee(token);

        ActionData memory redeemData = previewRedeem(token, shares);

        // slither-disable-next-line timestamp
        if (redeemData.collateral < minCollateral) {
            revert SlippageTooHigh(redeemData.collateral, minCollateral);
        }

        _redeem(token, redeemData);

        return redeemData;
    }

    /// @inheritdoc ILeverageManager
    function withdraw(ILeverageToken token, uint256 collateral, uint256 maxShares)
        external
        nonReentrant
        returns (ActionData memory actionData)
    {
        // Management fee is calculated from the total supply of the LeverageToken, so we need to claim it first
        // before total supply is updated due to the redeem
        chargeManagementFee(token);

        ActionData memory withdrawData = previewWithdraw(token, collateral);

        // slither-disable-next-line timestamp
        if (withdrawData.shares > maxShares) {
            revert SlippageTooHigh(withdrawData.shares, maxShares);
        }

        _redeem(token, withdrawData);

        return withdrawData;
    }

    /// @notice Converts collateral to debt given the state of the LeverageToken
    /// @param token LeverageToken to convert collateral for
    /// @param lendingAdapter Lending adapter of the LeverageToken
    /// @param collateral Collateral to convert to debt
    /// @param totalCollateral Total collateral of the LeverageToken
    /// @param totalDebt Total debt of the LeverageToken
    /// @param rounding Rounding mode
    /// @return debt Debt
    function _convertCollateralToDebt(
        ILeverageToken token,
        ILendingAdapter lendingAdapter,
        uint256 collateral,
        uint256 totalCollateral,
        uint256 totalDebt,
        Math.Rounding rounding
    ) internal view returns (uint256 debt) {
        if (totalCollateral == 0) {
            if (totalDebt == 0) {
                // Initial state: no collateral or debt, use initial collateral ratio
                uint256 initialCollateralRatio = getLeverageTokenInitialCollateralRatio(token);
                return lendingAdapter.convertCollateralToDebtAsset(
                    Math.mulDiv(collateral, BASE_RATIO, initialCollateralRatio, rounding)
                );
            }
            // Liquidated state: no collateral but debt exists, cannot convert
            return 0;
        }

        return Math.mulDiv(collateral, totalDebt, totalCollateral, rounding);
    }

    /// @notice Converts collateral to shares given the state of the LeverageToken
    /// @param token LeverageToken to convert collateral for
    /// @param lendingAdapter Lending adapter of the LeverageToken
    /// @param collateral Collateral to convert to shares
    /// @param totalSupply Total supply of shares of the LeverageToken
    /// @param rounding Rounding mode
    /// @return shares Shares
    function _convertCollateralToShares(
        ILeverageToken token,
        ILendingAdapter lendingAdapter,
        uint256 collateral,
        uint256 totalSupply,
        Math.Rounding rounding
    ) internal view returns (uint256 shares) {
        uint256 totalCollateral = lendingAdapter.getCollateral();

        // slither-disable-next-line incorrect-equality,timestamp
        if (totalSupply == 0) {
            uint256 initialCollateralRatio = getLeverageTokenInitialCollateralRatio(token);

            uint256 equityInCollateralAsset =
                Math.mulDiv(collateral, initialCollateralRatio - BASE_RATIO, initialCollateralRatio, rounding);

            uint256 leverageTokenDecimals = IERC20Metadata(address(token)).decimals();
            uint256 collateralDecimals = IERC20Metadata(address(lendingAdapter.getCollateralAsset())).decimals();

            // If collateral asset has more decimals than leverage token, we scale down the equity in collateral asset
            // Otherwise we scale up the equity in collateral asset
            if (collateralDecimals > leverageTokenDecimals) {
                uint256 scalingFactor = 10 ** (collateralDecimals - leverageTokenDecimals);
                return equityInCollateralAsset / scalingFactor;
            } else {
                uint256 scalingFactor = 10 ** (leverageTokenDecimals - collateralDecimals);
                return equityInCollateralAsset * scalingFactor;
            }
        }

        // If total supply != 0 and total collateral is zero, the LeverageToken was fully liquidated. In this case,
        // no amount of collateral can be converted to shares. An implication of this is that new mints of shares
        // will not be possible for the LeverageToken, unless a deposit of collateral occurs directly on the
        // lending adapter of the LeverageToken resulting in totalCollateral no longer being zero.
        if (totalCollateral == 0) {
            return 0;
        }

        return Math.mulDiv(collateral, totalSupply, totalCollateral, rounding);
    }

    /// @notice Converts shares to collateral given the state of the LeverageToken
    /// @param token LeverageToken to convert shares for
    /// @param lendingAdapter Lending adapter of the LeverageToken
    /// @param shares Shares to convert to collateral
    /// @param totalCollateral Total collateral of the LeverageToken
    /// @param totalSupply Total supply of shares of the LeverageToken
    /// @param rounding Rounding mode
    function _convertSharesToCollateral(
        ILeverageToken token,
        ILendingAdapter lendingAdapter,
        uint256 shares,
        uint256 totalCollateral,
        uint256 totalSupply,
        Math.Rounding rounding
    ) internal view returns (uint256 collateral) {
        // slither-disable-next-line incorrect-equality,timestamp
        if (totalSupply == 0) {
            uint256 leverageTokenDecimals = IERC20Metadata(address(token)).decimals();
            uint256 collateralDecimals = IERC20Metadata(address(lendingAdapter.getCollateralAsset())).decimals();

            uint256 initialCollateralRatio = getLeverageTokenInitialCollateralRatio(token);

            // If collateral asset has more decimals than leverage token, we scale down the equity in collateral asset
            // Otherwise we scale up the equity in collateral asset
            if (collateralDecimals > leverageTokenDecimals) {
                uint256 scalingFactor = 10 ** (collateralDecimals - leverageTokenDecimals);
                return Math.mulDiv(
                    shares * scalingFactor, initialCollateralRatio, initialCollateralRatio - BASE_RATIO, rounding
                );
            } else {
                uint256 scalingFactor = 10 ** (leverageTokenDecimals - collateralDecimals);
                return Math.mulDiv(
                    shares, initialCollateralRatio, (initialCollateralRatio - BASE_RATIO) * scalingFactor, rounding
                );
            }
        }

        return Math.mulDiv(shares, totalCollateral, totalSupply, rounding);
    }

    /// @notice Converts shares to debt given the state of the LeverageToken
    /// @param token LeverageToken to convert shares for
    /// @param lendingAdapter Lending adapter of the LeverageToken
    /// @param shares Shares to convert to debt
    /// @param totalDebt Total debt of the LeverageToken
    /// @param totalSupply Total supply of shares of the LeverageToken
    /// @param rounding Rounding mode
    function _convertSharesToDebt(
        ILeverageToken token,
        ILendingAdapter lendingAdapter,
        uint256 shares,
        uint256 totalDebt,
        uint256 totalSupply,
        Math.Rounding rounding
    ) internal view returns (uint256 debt) {
        // slither-disable-next-line incorrect-equality,timestamp
        if (totalSupply == 0) {
            uint256 leverageTokenDecimals = IERC20Metadata(address(token)).decimals();
            uint256 collateralDecimals = IERC20Metadata(address(lendingAdapter.getCollateralAsset())).decimals();

            uint256 initialCollateralRatio = getLeverageTokenInitialCollateralRatio(token);

            // If collateral asset has more decimals than leverage token, we scale down the equity in collateral asset
            // Otherwise we scale up the equity in collateral asset
            if (collateralDecimals > leverageTokenDecimals) {
                uint256 scalingFactor = 10 ** (collateralDecimals - leverageTokenDecimals);
                return lendingAdapter.convertCollateralToDebtAsset(
                    Math.mulDiv(shares * scalingFactor, BASE_RATIO, initialCollateralRatio - BASE_RATIO, rounding)
                );
            } else {
                uint256 scalingFactor = 10 ** (leverageTokenDecimals - collateralDecimals);
                return lendingAdapter.convertCollateralToDebtAsset(
                    Math.mulDiv(shares, BASE_RATIO, (initialCollateralRatio - BASE_RATIO) * scalingFactor, rounding)
                );
            }
        }

        return Math.mulDiv(shares, totalDebt, totalSupply, rounding);
    }

    /// @notice Executes actions on the LendingAdapter for a specific LeverageToken
    /// @param token LeverageToken to execute action for
    /// @param actionType Type of the action to execute
    /// @param amount Amount to execute action with
    function _executeLendingAdapterAction(ILeverageToken token, ActionType actionType, uint256 amount) internal {
        ILendingAdapter lendingAdapter = getLeverageTokenLendingAdapter(token);

        if (actionType == ActionType.AddCollateral) {
            IERC20 collateralAsset = lendingAdapter.getCollateralAsset();
            // slither-disable-next-line reentrancy-events
            SafeERC20.forceApprove(collateralAsset, address(lendingAdapter), amount);
            // slither-disable-next-line reentrancy-events
            lendingAdapter.addCollateral(amount);
        } else if (actionType == ActionType.RemoveCollateral) {
            // slither-disable-next-line reentrancy-events
            lendingAdapter.removeCollateral(amount);
        } else if (actionType == ActionType.Borrow) {
            // slither-disable-next-line reentrancy-events
            lendingAdapter.borrow(amount);
        } else if (actionType == ActionType.Repay) {
            IERC20 debtAsset = lendingAdapter.getDebtAsset();
            // slither-disable-next-line reentrancy-events
            SafeERC20.forceApprove(debtAsset, address(lendingAdapter), amount);
            // slither-disable-next-line reentrancy-events
            lendingAdapter.repay(amount);
        }
    }

    //// @notice Returns all data required to describe current LeverageToken state - collateral, debt, equity and collateral ratio
    /// @param lendingAdapter LendingAdapter of the LeverageToken
    /// @return state LeverageToken state
    function _getLeverageTokenState(ILendingAdapter lendingAdapter)
        internal
        view
        returns (LeverageTokenState memory state)
    {
        uint256 collateral = lendingAdapter.getCollateralInDebtAsset();
        uint256 debt = lendingAdapter.getDebt();
        uint256 equity = lendingAdapter.getEquityInDebtAsset();

        uint256 collateralRatio =
            debt > 0 ? Math.mulDiv(collateral, BASE_RATIO, debt, Math.Rounding.Floor) : type(uint256).max;

        return LeverageTokenState({
            collateralInDebtAsset: collateral,
            debt: debt,
            equity: equity,
            collateralRatio: collateralRatio
        });
    }

    /// @notice Helper function for executing a mint action on a LeverageToken
    /// @param token LeverageToken to mint shares for
    /// @param mintData Action data for the mint
    function _mint(ILeverageToken token, ActionData memory mintData) internal {
        // Take collateral asset from sender
        IERC20 collateralAsset = getLeverageTokenCollateralAsset(token);
        SafeERC20.safeTransferFrom(collateralAsset, msg.sender, address(this), mintData.collateral);

        // Add collateral to LeverageToken
        _executeLendingAdapterAction(token, ActionType.AddCollateral, mintData.collateral);

        // Borrow and send debt assets to caller
        _executeLendingAdapterAction(token, ActionType.Borrow, mintData.debt);
        SafeERC20.safeTransfer(getLeverageTokenDebtAsset(token), msg.sender, mintData.debt);

        // Charge treasury fee
        _chargeTreasuryFee(token, mintData.treasuryFee);

        // Mint shares to user
        // slither-disable-next-line reentrancy-events
        token.mint(msg.sender, mintData.shares);

        // Emit event and explicit return statement
        emit Mint(token, msg.sender, mintData);
    }

    /// @notice Helper function for executing a redeem action on a LeverageToken
    /// @param token LeverageToken to redeem shares for
    /// @param redeemData Action data for the redeem
    function _redeem(ILeverageToken token, ActionData memory redeemData) internal {
        // Burn shares from user and total supply
        token.burn(msg.sender, redeemData.shares);

        // Mint shares to treasury for the treasury action fee
        _chargeTreasuryFee(token, redeemData.treasuryFee);

        // Take assets from sender and repay the debt
        SafeERC20.safeTransferFrom(getLeverageTokenDebtAsset(token), msg.sender, address(this), redeemData.debt);
        _executeLendingAdapterAction(token, ActionType.Repay, redeemData.debt);

        // Remove collateral from lending pool
        _executeLendingAdapterAction(token, ActionType.RemoveCollateral, redeemData.collateral);

        // Send collateral assets to sender
        SafeERC20.safeTransfer(getLeverageTokenCollateralAsset(token), msg.sender, redeemData.collateral);

        // Emit event and explicit return statement
        emit Redeem(token, msg.sender, redeemData);
    }

    /// @notice Helper function for transferring tokens, or no-op if token is 0 address
    /// @param token Token to transfer
    /// @param from Address to transfer tokens from
    /// @param to Address to transfer tokens to
    /// @dev If from address is this smart contract it will use the regular transfer function otherwise it will use transferFrom
    function _transferTokens(IERC20 token, address from, address to, uint256 amount) internal {
        if (address(token) == address(0)) {
            return;
        }

        if (from == address(this)) {
            SafeERC20.safeTransfer(token, to, amount);
        } else {
            SafeERC20.safeTransferFrom(token, from, to, amount);
        }
    }
}

// ============================================================
// FILE: src/LeverageToken.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Dependency imports
import {ERC20PermitUpgradeable} from
    "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

// Internal imports
import {ILeverageManager} from "src/interfaces/ILeverageManager.sol";
import {ILeverageToken} from "src/interfaces/ILeverageToken.sol";

/**
 * @dev The LeverageToken contract is an upgradeable ERC20 token that represents a claim to the equity held by the LeverageToken.
 * It is used to represent a user's claim to the equity held by the LeverageToken in the LeverageManager.
 *
 * @custom:contact security@seamlessprotocol.com
 */
contract LeverageToken is
    Initializable,
    ERC20Upgradeable,
    ERC20PermitUpgradeable,
    OwnableUpgradeable,
    ILeverageToken
{
    function initialize(address _leverageManager, string memory _name, string memory _symbol) external initializer {
        __ERC20_init(_name, _symbol);
        __ERC20Permit_init(_name);
        __Ownable_init(_leverageManager);

        emit ILeverageToken.LeverageTokenInitialized(_name, _symbol);
    }

    /// @inheritdoc ILeverageToken
    function convertToAssets(uint256 shares) public view returns (uint256 assets) {
        return ILeverageManager(owner()).convertToAssets(this, shares);
    }

    /// @inheritdoc ILeverageToken
    function convertToShares(uint256 assets) public view returns (uint256 shares) {
        return ILeverageManager(owner()).convertToShares(this, assets);
    }

    /// @inheritdoc ILeverageToken
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    /// @inheritdoc ILeverageToken
    function burn(address from, uint256 amount) external onlyOwner {
        _burn(from, amount);
    }
}

// ============================================================
// FILE: src/types/DataTypes.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ILendingAdapter} from "src/interfaces/ILendingAdapter.sol";
import {IRebalanceAdapterBase} from "src/interfaces/IRebalanceAdapterBase.sol";

/// @dev Enum defining internal actions that a LendingAdapter can perform on a lending pool
enum ActionType {
    AddCollateral,
    RemoveCollateral,
    Borrow,
    Repay
}

/// @dev Enum defining actions that users can perform on a LeverageToken
enum ExternalAction {
    Mint,
    Redeem
}

/// @dev Struct that contains all data related to a LeverageToken action
struct ActionData {
    /// @dev Amount of collateral added or withdrawn
    uint256 collateral;
    /// @dev Amount of debt borrowed or repaid
    uint256 debt;
    /// @dev Amount of shares the user gains or loses for the action (whether that be via minting, burning, or fees)
    uint256 shares;
    /// @dev Fee charged for the action to the leverage token, denominated in shares
    uint256 tokenFee;
    /// @dev Fee charged for the action to the treasury, denominated in shares
    uint256 treasuryFee;
}

/// @dev Struct containing auction parameters
struct Auction {
    /// @dev Whether the LeverageToken is over-collateralized
    bool isOverCollateralized;
    /// @dev Timestamp when the auction started
    uint120 startTimestamp;
    /// @dev Timestamp when the auction ends/ended
    uint120 endTimestamp;
}

/// @dev Struct that contains the base LeverageToken config stored in LeverageManager
struct BaseLeverageTokenConfig {
    /// @dev LendingAdapter for the LeverageToken
    ILendingAdapter lendingAdapter;
    /// @dev RebalanceAdapter for the LeverageToken
    IRebalanceAdapterBase rebalanceAdapter;
}

/// @dev Struct that contains the entire LeverageToken config
struct LeverageTokenConfig {
    /// @dev LendingAdapter for the LeverageToken
    ILendingAdapter lendingAdapter;
    /// @dev RebalanceAdapter for the LeverageToken
    IRebalanceAdapterBase rebalanceAdapter;
    /// @dev Fee for mint action, defined as a percentage
    uint256 mintTokenFee;
    /// @dev Fee for redeem action, defined as a percentage
    uint256 redeemTokenFee;
}

/// @dev Struct that contains all data describing the state of a LeverageToken
struct LeverageTokenState {
    /// @dev Collateral denominated in debt asset
    uint256 collateralInDebtAsset;
    /// @dev Debt
    uint256 debt;
    /// @dev Equity denominated in debt asset
    uint256 equity;
    /// @dev Collateral ratio on 8 decimals
    uint256 collateralRatio;
}

/// @dev Struct that contains all data related to a rebalance action
struct RebalanceAction {
    /// @dev Type of action to perform
    ActionType actionType;
    /// @dev Amount to perform the action with
    uint256 amount;
}
