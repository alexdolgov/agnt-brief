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
// FILE: @openzeppelin/contracts-upgradeable/interfaces/draft-IERC1822Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.0;

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822ProxiableUpgradeable {
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
// FILE: @openzeppelin/contracts-upgradeable/interfaces/IERC1967Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (interfaces/IERC1967.sol)

pragma solidity ^0.8.0;

/**
 * @dev ERC-1967: Proxy Storage Slots. This interface contains the events defined in the ERC.
 *
 * _Available since v4.8.3._
 */
interface IERC1967Upgradeable {
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
// FILE: @openzeppelin/contracts-upgradeable/proxy/beacon/IBeaconUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.0;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeaconUpgradeable {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {BeaconProxy} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/ERC1967/ERC1967UpgradeUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/ERC1967/ERC1967Upgrade.sol)

pragma solidity ^0.8.2;

import "../beacon/IBeaconUpgradeable.sol";
import "../../interfaces/IERC1967Upgradeable.sol";
import "../../interfaces/draft-IERC1822Upgradeable.sol";
import "../../utils/AddressUpgradeable.sol";
import "../../utils/StorageSlotUpgradeable.sol";
import {Initializable} from "../utils/Initializable.sol";

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 *
 * _Available since v4.1._
 */
abstract contract ERC1967UpgradeUpgradeable is Initializable, IERC1967Upgradeable {
    // This is the keccak-256 hash of "eip1967.proxy.rollback" subtracted by 1
    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    function __ERC1967Upgrade_init() internal onlyInitializing {
    }

    function __ERC1967Upgrade_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Returns the current implementation address.
     */
    function _getImplementation() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        require(AddressUpgradeable.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Perform implementation upgrade
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeTo(address newImplementation) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);
    }

    /**
     * @dev Perform implementation upgrade with additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCall(address newImplementation, bytes memory data, bool forceCall) internal {
        _upgradeTo(newImplementation);
        if (data.length > 0 || forceCall) {
            AddressUpgradeable.functionDelegateCall(newImplementation, data);
        }
    }

    /**
     * @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCallUUPS(address newImplementation, bytes memory data, bool forceCall) internal {
        // Upgrades from old implementations will perform a rollback test. This test requires the new
        // implementation to upgrade back to the old, non-ERC1822 compliant, implementation. Removing
        // this special case will break upgrade paths from old UUPS implementation to new ones.
        if (StorageSlotUpgradeable.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822ProxiableUpgradeable(newImplementation).proxiableUUID() returns (bytes32 slot) {
                require(slot == _IMPLEMENTATION_SLOT, "ERC1967Upgrade: unsupported proxiableUUID");
            } catch {
                revert("ERC1967Upgrade: new implementation is not UUPS");
            }
            _upgradeToAndCall(newImplementation, data, forceCall);
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Returns the current admin.
     */
    function _getAdmin() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {AdminChanged} event.
     */
    function _changeAdmin(address newAdmin) internal {
        emit AdminChanged(_getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is bytes32(uint256(keccak256('eip1967.proxy.beacon')) - 1)) and is validated in the constructor.
     */
    bytes32 internal constant _BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Returns the current beacon.
     */
    function _getBeacon() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        require(AddressUpgradeable.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(
            AddressUpgradeable.isContract(IBeaconUpgradeable(newBeacon).implementation()),
            "ERC1967: beacon implementation is not a contract"
        );
        StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value = newBeacon;
    }

    /**
     * @dev Perform beacon upgrade with additional setup call. Note: This upgrades the address of the beacon, it does
     * not upgrade the implementation contained in the beacon (see {UpgradeableBeacon-_setImplementation} for that).
     *
     * Emits a {BeaconUpgraded} event.
     */
    function _upgradeBeaconToAndCall(address newBeacon, bytes memory data, bool forceCall) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);
        if (data.length > 0 || forceCall) {
            AddressUpgradeable.functionDelegateCall(IBeaconUpgradeable(newBeacon).implementation(), data);
        }
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
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
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/UUPSUpgradeable.sol)

pragma solidity ^0.8.0;

import "../../interfaces/draft-IERC1822Upgradeable.sol";
import "../ERC1967/ERC1967UpgradeUpgradeable.sol";
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
 *
 * _Available since v4.1._
 */
abstract contract UUPSUpgradeable is Initializable, IERC1822ProxiableUpgradeable, ERC1967UpgradeUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address private immutable __self = address(this);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        require(address(this) != __self, "Function must be called through delegatecall");
        require(_getImplementation() == __self, "Function must be called through active proxy");
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        require(address(this) == __self, "UUPSUpgradeable: must not be called through delegatecall");
        _;
    }

    function __UUPSUpgradeable_init() internal onlyInitializing {
    }

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate the implementation's compatibility when performing an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual override notDelegated returns (bytes32) {
        return _IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     *
     * @custom:oz-upgrades-unsafe-allow-reachable delegatecall
     */
    function upgradeTo(address newImplementation) public virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, new bytes(0), false);
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
        _upgradeToAndCallUUPS(newImplementation, data, true);
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeTo} and {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal override onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
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
// FILE: @openzeppelin/contracts-upgradeable/utils/StorageSlotUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity ^0.8.0;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * _Available since v4.1 for `address`, `bool`, `bytes32`, `uint256`._
 * _Available since v4.9 for `string`, `bytes`._
 */
library StorageSlotUpgradeable {
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
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
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
// FILE: contracts/fuelchain/FuelChainState.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
// solhint-disable not-rely-on-time
pragma solidity 0.8.9;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {CryptographyLib} from "../lib/Cryptography.sol";

/// @notice Structure for commits
struct Commit {
    bytes32 blockHash;
    uint32 timestamp;
    address reserved1;
    uint16 reserved2;
}

/// @notice The Fuel v2 chain state
contract FuelChainState is Initializable, PausableUpgradeable, AccessControlUpgradeable, UUPSUpgradeable {
    ///////////////
    // Constants //
    ///////////////

    /// @dev The commit proccess parameters
    // NUM_COMMIT_SLOTS an arbitrary number of commits to store before starting to overwrite
    uint256 public constant NUM_COMMIT_SLOTS = 240;
    // Number of blocks per commit interval
    // BLOCKS_PER_COMMIT_INTERVAL = (num of blocks per minute (=60) * target interval in minutes)
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint256 public immutable BLOCKS_PER_COMMIT_INTERVAL;

    // Time after which a commit becomes finalized
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint256 public immutable TIME_TO_FINALIZE;

    /// Time before a slot can be overwritten
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint32 public immutable COMMIT_COOLDOWN;

    /// @dev The admin related contract roles
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant COMMITTER_ROLE = keccak256("COMMITTER_ROLE");

    ////////////
    // Events //
    ////////////

    /// @dev Emitted when a commit is first submitted
    event CommitSubmitted(uint256 indexed commitHeight, bytes32 blockHash);

    ////////////
    // Errors //
    ////////////
    error CannotRecommit();
    error CommitCooldownTooLarge();
    error FinalizationIsGtCooldown();
    error InvalidTimeToFinalize();
    error TimeToFinalizeTooLarge();
    error UnknownBlock();

    /////////////
    // Storage //
    /////////////

    /// @dev The commits buffer
    Commit[NUM_COMMIT_SLOTS] private _commitSlots;

    /////////////////////////////
    // Constructor/Initializer //
    /////////////////////////////

    /// @notice Constructor disables initialization for the implementation contract
    /// @dev assumes 1 block per second in the L2 chain
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(uint256 timeToFinalize, uint256 blocksPerCommitInterval, uint32 commitCooldown) {
        if (timeToFinalize == 0) {
            revert InvalidTimeToFinalize();
        }

        if (timeToFinalize > commitCooldown) {
            revert FinalizationIsGtCooldown();
        }

        uint256 circularBufferSizeInSeconds = NUM_COMMIT_SLOTS * blocksPerCommitInterval;

        if (timeToFinalize > circularBufferSizeInSeconds) {
            revert TimeToFinalizeTooLarge();
        }

        if (commitCooldown > circularBufferSizeInSeconds) {
            revert CommitCooldownTooLarge();
        }

        TIME_TO_FINALIZE = timeToFinalize;
        COMMIT_COOLDOWN = commitCooldown;
        BLOCKS_PER_COMMIT_INTERVAL = blocksPerCommitInterval;

        _disableInitializers();
    }

    /// @notice Contract initializer to setup starting values
    function initialize() public initializer {
        __Pausable_init();
        __AccessControl_init();
        __UUPSUpgradeable_init();

        //grant initial roles
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(PAUSER_ROLE, msg.sender);
        _grantRole(COMMITTER_ROLE, msg.sender);
    }

    /////////////////////
    // Admin Functions //
    /////////////////////

    /// @notice Pause block commitments
    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /// @notice Unpause block commitments
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /// @notice Commits a block header.
    /// @param blockHash The hash of a block
    /// @param commitHeight The height of the commit
    function commit(bytes32 blockHash, uint256 commitHeight) external whenNotPaused onlyRole(COMMITTER_ROLE) {
        uint256 slot = commitHeight % NUM_COMMIT_SLOTS;
        Commit storage commitSlot = _commitSlots[slot];

        unchecked {
            if (commitSlot.timestamp + COMMIT_COOLDOWN > uint32(block.timestamp)) {
                revert CannotRecommit();
            }
        }

        commitSlot.blockHash = blockHash;
        commitSlot.timestamp = uint32(block.timestamp);

        emit CommitSubmitted(commitHeight, blockHash);
    }

    //////////////////////
    // Public Functions //
    //////////////////////

    /// @notice Checks if a given block is finalized
    /// @param blockHash The hash of the block to check
    /// @param blockHeight The height of the block to check
    /// @return true if the block is finalized
    function finalized(bytes32 blockHash, uint256 blockHeight) external view whenNotPaused returns (bool) {
        // TODO This division could be done offchain, or at least also could be assembly'ed to avoid non-zero division check
        uint256 commitHeight = blockHeight / BLOCKS_PER_COMMIT_INTERVAL;
        Commit storage commitSlot = _commitSlots[commitHeight % NUM_COMMIT_SLOTS];
        if (commitSlot.blockHash != blockHash) revert UnknownBlock();

        return block.timestamp >= uint256(commitSlot.timestamp) + TIME_TO_FINALIZE;
    }

    /// @notice Gets the block hash at the given commit height
    /// @param commitHeight The height of the commit
    /// @return hash of the block at the given commit height
    function blockHashAtCommit(uint256 commitHeight) external view returns (bytes32) {
        Commit storage commitSlot = _commitSlots[commitHeight % NUM_COMMIT_SLOTS];
        return commitSlot.blockHash;
    }

    ////////////////////////
    // Internal Functions //
    ////////////////////////

    /// @notice Executes a message in the given header
    // solhint-disable-next-line no-empty-blocks
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {
        //should revert if msg.sender is not authorized to upgrade the contract (currently only owner)
    }
}

// ============================================================
// FILE: contracts/fuelchain/FuelMessagePortal.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {verifyBinaryTree} from "../lib/VerifyBinaryTree/VerifyBinaryTree.sol";
import {FuelChainState} from "./FuelChainState.sol";
import {FuelBlockHeader, FuelBlockHeaderLib} from "./types/FuelBlockHeader.sol";
import {FuelBlockHeaderLite, FuelBlockHeaderLiteLib} from "./types/FuelBlockHeaderLite.sol";
import {CryptographyLib} from "../lib/Cryptography.sol";
import {CommonPredicates} from "../lib/CommonPredicates.sol";

/// @notice Structure for proving an element in a merkle tree
struct MerkleProof {
    uint256 key;
    bytes32[] proof;
}

/// @notice Structure containing all message details
struct Message {
    bytes32 sender;
    bytes32 recipient;
    bytes32 nonce;
    uint64 amount;
    bytes data;
}

/// @title FuelMessagePortal
/// @notice The Fuel Message Portal contract sends messages to and from Fuel
/// @custom:deprecation THIS CONTRACT IS DEPRECATED. CHECK FuelMessagePortalV3
contract FuelMessagePortal is
    Initializable,
    PausableUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable
{
    using FuelBlockHeaderLib for FuelBlockHeader;
    using FuelBlockHeaderLiteLib for FuelBlockHeaderLite;

    ////////////
    // Events //
    ////////////

    /// @dev Emitted when a message is sent from Ethereum to Fuel
    event MessageSent(
        bytes32 indexed sender,
        bytes32 indexed recipient,
        uint256 indexed nonce,
        uint64 amount,
        bytes data
    );

    /// @dev Emitted when a message is successfully relayed to Ethereum from Fuel
    event MessageRelayed(bytes32 indexed messageId, bytes32 indexed sender, bytes32 indexed recipient, uint64 amount);

    ////////////
    // Errors //
    ////////////

    error UnfinalizedBlock();
    error InvalidBlockInHistoryProof();
    error InvalidMessageInBlockProof();
    error CurrentMessageSenderNotSet();
    error MessageDataTooLarge();
    error AmountPrecisionIncompatibility();
    error AmountTooBig();
    error AlreadyRelayed();

    ///////////////
    // Constants //
    ///////////////

    /// @dev The admin related contract roles
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    /// @dev The number of decimals that the base Fuel asset uses
    uint256 public constant FUEL_BASE_ASSET_DECIMALS = 9;
    uint256 public constant ETH_DECIMALS = 18;
    uint256 public constant PRECISION = 10 ** (ETH_DECIMALS - FUEL_BASE_ASSET_DECIMALS);

    /// @dev The max message data size in bytes
    uint256 public constant MAX_MESSAGE_DATA_SIZE = 2 ** 16;

    /// @dev Non-zero null value to optimize gas costs
    bytes32 internal constant NULL_MESSAGE_SENDER = 0x000000000000000000000000000000000000000000000000000000000000dead;

    /////////////
    // Storage //
    /////////////

    /// @notice Current message sender for other contracts to reference
    bytes32 internal _incomingMessageSender;

    /// @notice The Fuel chain state contract
    FuelChainState internal _fuelChainState;

    /// @notice Nonce for the next message to be sent
    uint256 internal _outgoingMessageNonce;

    /// @notice Mapping of message hash to boolean success value
    mapping(bytes32 => bool) internal _incomingMessageSuccessful;

    /////////////////////////////
    // Constructor/Initializer //
    /////////////////////////////

    /// @notice Constructor disables initialization for the implementation contract
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Contract initializer to setup starting values
    /// @param fuelChainState Chain state contract
    function initialize(FuelChainState fuelChainState) public virtual initializer {
        initializerV1(fuelChainState);
    }

    function initializerV1(FuelChainState fuelChainState) internal virtual onlyInitializing {
        __Pausable_init();
        __AccessControl_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        //grant initial roles
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(PAUSER_ROLE, msg.sender);

        //chain state contract
        _fuelChainState = fuelChainState;

        //outgoing message data
        _outgoingMessageNonce = 0;

        //incoming message data
        _incomingMessageSender = NULL_MESSAGE_SENDER;
    }

    /////////////////////
    // Admin Functions //
    /////////////////////

    /// @notice Pause outbound messages
    function pause() external virtual onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /// @notice Unpause outbound messages
    function unpause() external virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    //////////////////////
    // Public Functions //
    //////////////////////

    /// @notice Gets the number of decimals used in the Fuel base asset
    /// @return decimals of the Fuel base asset
    function fuelBaseAssetDecimals() public pure virtual returns (uint8) {
        return uint8(FUEL_BASE_ASSET_DECIMALS);
    }

    /// @notice Gets the set Fuel chain state contract
    /// @return fuel chain state contract
    function fuelChainStateContract() public view virtual returns (address) {
        return address(_fuelChainState);
    }

    function getNextOutgoingMessageNonce() public view virtual returns (uint256) {
        return _outgoingMessageNonce;
    }

    ///////////////////////////////////////
    // Incoming Message Public Functions //
    ///////////////////////////////////////

    /// @notice Relays a message published on Fuel from a given block
    /// @param message The message to relay
    /// @param rootBlockHeader The root block for proving chain history
    /// @param blockHeader The block containing the message
    /// @param blockInHistoryProof Proof that the message block exists in the history of the root block
    /// @param messageInBlockProof Proof that message exists in block
    /// @dev Made payable to reduce gas costs
    function relayMessage(
        Message calldata message,
        FuelBlockHeaderLite calldata rootBlockHeader,
        FuelBlockHeader calldata blockHeader,
        MerkleProof calldata blockInHistoryProof,
        MerkleProof calldata messageInBlockProof
    ) external payable virtual whenNotPaused {
        //verify root block header
        if (!_fuelChainState.finalized(rootBlockHeader.computeConsensusHeaderHash(), rootBlockHeader.height)) {
            revert UnfinalizedBlock();
        }

        //verify block in history
        if (
            !verifyBinaryTree(
                rootBlockHeader.prevRoot,
                abi.encodePacked(blockHeader.computeConsensusHeaderHash()),
                blockInHistoryProof.proof,
                blockInHistoryProof.key,
                rootBlockHeader.height
            )
        ) revert InvalidBlockInHistoryProof();

        //verify message in block
        bytes32 messageId = CryptographyLib.hash(
            abi.encodePacked(message.sender, message.recipient, message.nonce, message.amount, message.data)
        );
        if (
            !verifyBinaryTree(
                blockHeader.outputMessagesRoot,
                abi.encodePacked(messageId),
                messageInBlockProof.proof,
                messageInBlockProof.key,
                blockHeader.outputMessagesCount
            )
        ) revert InvalidMessageInBlockProof();

        //execute message
        _executeMessage(messageId, message);
    }

    /// @notice Gets if the given message ID has been relayed successfully
    /// @param messageId Message ID
    /// @return true if message has been relayed successfully
    function incomingMessageSuccessful(bytes32 messageId) public view virtual returns (bool) {
        return _incomingMessageSuccessful[messageId];
    }

    /// @notice Used by message receiving contracts to get the address on Fuel that sent the message
    /// @return sender the address of the sender on Fuel
    function messageSender() external view virtual returns (bytes32) {
        if (_incomingMessageSender == NULL_MESSAGE_SENDER) revert CurrentMessageSenderNotSet();
        return _incomingMessageSender;
    }

    ///////////////////////////////////////
    // Outgoing Message Public Functions //
    ///////////////////////////////////////

    /// @notice Send a message to a recipient on Fuel
    /// @param recipient The target message receiver address or predicate root
    /// @param data The message data to be sent to the receiver
    function sendMessage(bytes32 recipient, bytes calldata data) external payable virtual whenNotPaused {
        _sendOutgoingMessage(recipient, data);
    }

    /// @notice Send only ETH to the given recipient
    /// @param recipient The target message receiver
    function depositETH(bytes32 recipient) external payable virtual whenNotPaused {
        _sendOutgoingMessage(recipient, new bytes(0));
    }

    ////////////////////////
    // Internal Functions //
    ////////////////////////

    /// @notice Performs all necessary logic to send a message to a target on Fuel
    /// @param recipient The message receiver address or predicate root
    /// @param data The message data to be sent to the receiver
    function _sendOutgoingMessage(bytes32 recipient, bytes memory data) internal virtual {
        bytes32 sender = bytes32(uint256(uint160(msg.sender)));
        unchecked {
            //make sure data size is not too large
            if (data.length >= MAX_MESSAGE_DATA_SIZE) revert MessageDataTooLarge();

            //make sure amount fits into the Fuel base asset decimal level
            uint256 precision = 10 ** (ETH_DECIMALS - FUEL_BASE_ASSET_DECIMALS);
            uint256 amount = msg.value / precision;
            if (msg.value > 0) {
                if (amount * PRECISION != msg.value) revert AmountPrecisionIncompatibility();
                if (amount > type(uint64).max) revert AmountTooBig();
            }

            //emit message for Fuel clients to pickup (messageID calculated offchain)
            uint256 nonce = _outgoingMessageNonce;
            emit MessageSent(sender, recipient, nonce, uint64(amount), data);

            // increment nonce for next message
            _outgoingMessageNonce = nonce + 1;
        }
    }

    /// @notice Executes a message in the given header
    /// @param messageId The id of message to execute
    /// @param message The message to execute
    function _executeMessage(bytes32 messageId, Message calldata message) internal virtual nonReentrant {
        if (_incomingMessageSuccessful[messageId]) revert AlreadyRelayed();

        //set message sender for receiving contract to reference
        _incomingMessageSender = message.sender;

        (bool success, bytes memory result) = address(uint160(uint256(message.recipient))).call{
            value: message.amount * (10 ** (ETH_DECIMALS - FUEL_BASE_ASSET_DECIMALS))
        }(message.data);

        if (!success) {
            // Look for revert reason and bubble it up if present
            if (result.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly
                /// @solidity memory-safe-assembly
                assembly {
                    let returndata_size := mload(result)
                    revert(add(32, result), returndata_size)
                }
            }
            revert("Message relay failed");
        }

        //unset message sender reference
        _incomingMessageSender = NULL_MESSAGE_SENDER;

        //keep track of successfully relayed messages
        _incomingMessageSuccessful[messageId] = true;

        //emit event for successful message relay
        emit MessageRelayed(messageId, message.sender, message.recipient, message.amount);
    }

    /// @notice Executes a message in the given header
    // solhint-disable-next-line no-empty-blocks
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {
        //should revert if msg.sender is not authorized to upgrade the contract (currently only admin)
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/fuelchain/FuelMessagePortal/v2/FuelMessagePortalV2.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.9;

import "../../FuelMessagePortal.sol";

/// @custom:oz-upgrades-unsafe-allow constructor state-variable-immutable
/// @custom:deprecation THIS CONTRACT IS DEPRECATED. CHECK FuelMessagePortalV3
contract FuelMessagePortalV2 is FuelMessagePortal {
    error GlobalDepositLimit();

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint256 public immutable depositLimitGlobal;

    uint256 public totalDeposited;

    constructor(uint256 _depositLimitGlobal) {
        /// @custom:oz-upgrades-unsafe-allow state-variable-assignment
        depositLimitGlobal = _depositLimitGlobal;
        _disableInitializers();
    }

    ////////////////////////
    // Internal Functions //
    ////////////////////////

    /// @notice Performs all necessary logic to send a message to a target on Fuel
    /// @param recipient The message receiver address or predicate root
    /// @param data The message data to be sent to the receiver
    function _sendOutgoingMessage(bytes32 recipient, bytes memory data) internal virtual override {
        bytes32 sender = bytes32(uint256(uint160(msg.sender)));
        unchecked {
            //make sure data size is not too large
            if (data.length >= MAX_MESSAGE_DATA_SIZE) revert MessageDataTooLarge();

            // v2: increase global deposited ether
            uint256 globalDepositedAmount = totalDeposited += msg.value;
            if (globalDepositedAmount > depositLimitGlobal) {
                revert GlobalDepositLimit();
            }

            //make sure amount fits into the Fuel base asset decimal level
            uint256 amount = msg.value / PRECISION;
            if (msg.value > 0) {
                if (amount * PRECISION != msg.value) revert AmountPrecisionIncompatibility();
                if (amount > type(uint64).max) revert AmountTooBig();
            }

            //emit message for Fuel clients to pickup (messageID calculated offchain)
            uint256 nonce = _outgoingMessageNonce;
            emit MessageSent(sender, recipient, nonce, uint64(amount), data);

            // increment nonce for next message
            _outgoingMessageNonce = nonce + 1;
        }
    }

    /// @notice Executes a message in the given header
    /// @param messageId The id of message to execute
    /// @param message The message to execute
    function _executeMessage(bytes32 messageId, Message calldata message) internal virtual override nonReentrant {
        if (_incomingMessageSuccessful[messageId]) revert AlreadyRelayed();

        //set message sender for receiving contract to reference
        _incomingMessageSender = message.sender;

        // v2: update accounting if the message carries an amount
        bool success;
        bytes memory result;
        if (message.amount > 0) {
            uint256 withdrawnAmount = message.amount * PRECISION;

            // Underflow check enabled since the amount is coded in `message`
            totalDeposited -= withdrawnAmount;

            (success, result) = address(uint160(uint256(message.recipient))).call{value: withdrawnAmount}(message.data);
        } else {
            (success, result) = address(uint160(uint256(message.recipient))).call(message.data);
        }

        if (!success) {
            // Look for revert reason and bubble it up if present
            if (result.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly
                /// @solidity memory-safe-assembly
                assembly {
                    let returndata_size := mload(result)
                    revert(add(32, result), returndata_size)
                }
            }
            revert("Message relay failed");
        }

        //unset message sender reference
        _incomingMessageSender = NULL_MESSAGE_SENDER;

        //keep track of successfully relayed messages
        _incomingMessageSuccessful[messageId] = true;

        //emit event for successful message relay
        emit MessageRelayed(messageId, message.sender, message.recipient, message.amount);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/fuelchain/FuelMessagePortal/v3/FuelMessagePortalV3.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.9;

import "../v2/FuelMessagePortalV2.sol";

/// @custom:oz-upgrades-unsafe-allow constructor state-variable-immutable
contract FuelMessagePortalV3 is FuelMessagePortalV2 {
    using FuelBlockHeaderLib for FuelBlockHeader;
    using FuelBlockHeaderLiteLib for FuelBlockHeaderLite;

    /// @dev Emitted when fuel chain state is emitted
    event FuelChainStateUpdated(address indexed sender, address indexed oldValue, address indexed newValue);

    /// @dev Emitted when rate limit is reset
    event ResetRateLimit(uint256 amount);

    error MessageBlacklisted();
    error MessageRelayFailed();
    error NotSupported();
    error RateLimitExceeded();
    error WithdrawalsPaused();
    event RateLimitStatusUpdated(bool status);

    /// @dev The rate limit setter role
    bytes32 public constant SET_RATE_LIMITER_ROLE = keccak256("SET_RATE_LIMITER_ROLE");

    /// @notice Duration after which rate limit resets.
    uint256 public immutable RATE_LIMIT_DURATION;

    /// @notice Flag to indicate whether withdrawals are paused or not.
    bool public withdrawalsPaused;

    mapping(bytes32 => bool) public messageIsBlacklisted;

    /// @notice Amounts already withdrawn this period.
    uint256 public currentPeriodAmount;

    /// @notice The time at which the current period ends at.
    uint256 public currentPeriodEnd;

    /// @notice The eth withdrawal limit amount.
    uint256 public limitAmount;

    /// @notice Flag to enable or disable the rate limit feature
    bool public rateLimitEnabled;

    constructor(uint256 _depositLimitGlobal, uint256 _rateLimitDuration) FuelMessagePortalV2(_depositLimitGlobal) {
        RATE_LIMIT_DURATION = _rateLimitDuration;
        _disableInitializers();
    }

    function initialize(FuelChainState) public virtual override {
        revert NotSupported();
    }

    function initializerV3(FuelChainState fuelChainState, uint256 _limitAmount) public reinitializer(3) {
        initializerV1(fuelChainState);
        _setInitParams(_limitAmount);
    }

    function reinitializeV3(uint256 _limitAmount) public reinitializer(3) {
        _setInitParams(_limitAmount);
    }

    function pauseWithdrawals() external payable onlyRole(PAUSER_ROLE) {
        withdrawalsPaused = true;
    }

    function unpauseWithdrawals() external payable onlyRole(DEFAULT_ADMIN_ROLE) {
        withdrawalsPaused = false;
    }

    function addMessageToBlacklist(bytes32 messageId) external payable onlyRole(PAUSER_ROLE) {
        messageIsBlacklisted[messageId] = true;
    }

    function removeMessageFromBlacklist(bytes32 messageId) external payable onlyRole(DEFAULT_ADMIN_ROLE) {
        messageIsBlacklisted[messageId] = false;
    }

    function updateRateLimitStatus(bool value) external onlyRole(SET_RATE_LIMITER_ROLE) {
        rateLimitEnabled = value;
        emit RateLimitStatusUpdated(value);
    }

    /**
     * @notice Resets the rate limit amount.
     * @param _amount The amount to reset the limit to.
     * Fuel's implementation is inspired by the Linea Bridge dessign (https://github.com/Consensys/linea-contracts/blob/main/contracts/messageService/lib/RateLimiter.sol)
     * Only point of difference from the linea implementation is that when currentPeriodEnd >= block.timestamp then if the new rate limit amount is less than the currentPeriodAmount, then currentPeriodAmount is not updated this makes sure that if rate limit is first reduced & then increased within the rate limit duration then any extra amount can't be withdrawn
     */
    function resetRateLimitAmount(uint256 _amount) external onlyRole(SET_RATE_LIMITER_ROLE) {
        // if period has expired then currentPeriodAmount is zero
        if (currentPeriodEnd < block.timestamp) {
            unchecked {
                currentPeriodEnd = block.timestamp + RATE_LIMIT_DURATION;
            }

            currentPeriodAmount = 0;
        }

        limitAmount = _amount;

        emit ResetRateLimit(_amount);
    }

    ///////////////////////////////////////
    // Incoming Message Public Functions //
    ///////////////////////////////////////

    /// @notice Relays a message published on Fuel from a given block
    /// @param message The message to relay
    /// @param rootBlockHeader The root block for proving chain history
    /// @param blockHeader The block containing the message
    /// @param blockInHistoryProof Proof that the message block exists in the history of the root block
    /// @param messageInBlockProof Proof that message exists in block
    /// @dev Made payable to reduce gas costs
    function relayMessage(
        Message calldata message,
        FuelBlockHeaderLite calldata rootBlockHeader,
        FuelBlockHeader calldata blockHeader,
        MerkleProof calldata blockInHistoryProof,
        MerkleProof calldata messageInBlockProof
    ) external payable virtual override whenNotPaused {
        if (withdrawalsPaused) {
            revert WithdrawalsPaused();
        }

        //verify root block header
        if (!_fuelChainState.finalized(rootBlockHeader.computeConsensusHeaderHash(), rootBlockHeader.height)) {
            revert UnfinalizedBlock();
        }

        //verify block in history
        if (
            !verifyBinaryTree(
                rootBlockHeader.prevRoot,
                abi.encodePacked(blockHeader.computeConsensusHeaderHash()),
                blockInHistoryProof.proof,
                blockInHistoryProof.key,
                rootBlockHeader.height
            )
        ) revert InvalidBlockInHistoryProof();

        //verify message in block
        bytes32 messageId = CryptographyLib.hash(
            abi.encodePacked(message.sender, message.recipient, message.nonce, message.amount, message.data)
        );

        if (messageIsBlacklisted[messageId]) {
            revert MessageBlacklisted();
        }

        if (
            !verifyBinaryTree(
                blockHeader.outputMessagesRoot,
                abi.encodePacked(messageId),
                messageInBlockProof.proof,
                messageInBlockProof.key,
                blockHeader.outputMessagesCount
            )
        ) revert InvalidMessageInBlockProof();

        //execute message
        _executeMessage(messageId, message);
    }

    /// @notice Executes a message in the given header
    /// @param messageId The id of message to execute
    /// @param message The message to execute
    function _executeMessage(bytes32 messageId, Message calldata message) internal virtual override nonReentrant {
        if (_incomingMessageSuccessful[messageId]) revert AlreadyRelayed();

        //set message sender for receiving contract to reference
        _incomingMessageSender = message.sender;

        // v2: update accounting if the message carries an amount
        bool success;
        bytes memory result;
        if (message.amount > 0) {
            uint256 withdrawnAmount = message.amount * PRECISION;

            // Underflow check enabled since the amount is coded in `message`
            totalDeposited -= withdrawnAmount;

            // rate limit check
            if (rateLimitEnabled) _addWithdrawnAmount(withdrawnAmount);

            (success, result) = address(uint160(uint256(message.recipient))).call{value: withdrawnAmount}(message.data);
        } else {
            (success, result) = address(uint160(uint256(message.recipient))).call(message.data);
        }

        if (!success) {
            // Look for revert reason and bubble it up if present
            if (result.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly
                /// @solidity memory-safe-assembly
                assembly {
                    let returndata_size := mload(result)
                    revert(add(32, result), returndata_size)
                }
            }
            revert MessageRelayFailed();
        }

        //unset message sender reference
        _incomingMessageSender = NULL_MESSAGE_SENDER;

        //keep track of successfully relayed messages
        _incomingMessageSuccessful[messageId] = true;

        //emit event for successful message relay
        emit MessageRelayed(messageId, message.sender, message.recipient, message.amount);
    }

    function setFuelChainState(address newFuelChainState) external onlyRole(DEFAULT_ADMIN_ROLE) {
        emit FuelChainStateUpdated(msg.sender, address(_fuelChainState), newFuelChainState);
        _fuelChainState = FuelChainState(newFuelChainState);
    }

    /**
     * @notice Increments the amount withdrawn in the period.
     * @dev Reverts if the withdrawn limit is breached.
     * @param _withdrawnAmount The amount withdrawn to be added.
     */
    function _addWithdrawnAmount(uint256 _withdrawnAmount) internal {
        uint256 currentPeriodAmountTemp;

        if (currentPeriodEnd < block.timestamp) {
            unchecked {
                currentPeriodEnd = block.timestamp + RATE_LIMIT_DURATION;
            }
            currentPeriodAmountTemp = _withdrawnAmount;
        } else {
            unchecked {
                currentPeriodAmountTemp = currentPeriodAmount + _withdrawnAmount;
            }
        }

        if (currentPeriodAmountTemp > limitAmount) {
            revert RateLimitExceeded();
        }

        currentPeriodAmount = currentPeriodAmountTemp;
    }

    /**
     * @notice Sets rate limiter role and other params
     * @param _limitAmount rate limit amount.
     */
    function _setInitParams(uint256 _limitAmount) internal {
        // set rate limiter role
        _grantRole(SET_RATE_LIMITER_ROLE, msg.sender);

        // initializing rate limit var
        currentPeriodEnd = block.timestamp + RATE_LIMIT_DURATION;
        limitAmount = _limitAmount;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[48] private __gap;
}

// ============================================================
// FILE: contracts/fuelchain/types/FuelBlockHeader.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;

import {CryptographyLib} from "../../lib/Cryptography.sol";

/// @title Fuel Chain Block Header
/// @dev The Fuel chain block header structure
struct FuelBlockHeader {
    ///////////////
    // Consensus //
    ///////////////
    // Merkle root of all previous consensus header hashes (not including this block)
    bytes32 prevRoot;
    // Time this block was created, in TAI64 format
    uint64 timestamp;
    /////////////////
    // Application //
    /////////////////
    //Height of the data availability layer up to which (inclusive) input messages are processed
    uint64 daHeight;
    // Number of output messages in this block
    uint32 outputMessagesCount;
    // Version of consensus parameters
    uint32 consensusParametersVersion;
    // Version of state transition bytecode
    uint32 stateTransitionBytecodeVersion;
    // Height of this block
    uint32 height;
    // Merkle root of transactions in this block
    bytes32 txRoot;
    // Merkle root of output messages in this block
    bytes32 outputMessagesRoot;
    // Merkle root of incoming messages in this block
    bytes32 eventInboxRoot;
    // Number of transactions in this block
    uint16 txCount;
}

/// @title Block Header Library
/// @dev Provides useful functions for dealing with Fuel blocks
library FuelBlockHeaderLib {
    /////////////
    // Methods //
    /////////////

    /// @notice Serialize a block application header.
    /// @param header The block header structure.
    /// @return The serialized block application header.
    function serializeApplicationHeader(FuelBlockHeader memory header) internal pure returns (bytes memory) {
        return
            abi.encodePacked(
                header.daHeight,
                header.consensusParametersVersion,
                header.stateTransitionBytecodeVersion,
                header.txCount,
                header.outputMessagesCount,
                header.txRoot,
                header.outputMessagesRoot,
                header.eventInboxRoot
            );
    }

    /// @notice Produce the block application header hash.
    /// @param header The block header structure.
    /// @return The block application header hash.
    function computeApplicationHeaderHash(FuelBlockHeader memory header) internal pure returns (bytes32) {
        return CryptographyLib.hash(serializeApplicationHeader(header));
    }

    /// @notice Serialize a block consensus header.
    /// @param header The block header structure.
    /// @return The serialized block consensus header.
    function serializeConsensusHeader(FuelBlockHeader memory header) internal pure returns (bytes memory) {
        return abi.encodePacked(header.prevRoot, header.height, header.timestamp, computeApplicationHeaderHash(header));
    }

    /// @notice Produce the block consensus header hash.
    /// @param header The block header structure.
    /// @return The block consensus header hash.
    function computeConsensusHeaderHash(FuelBlockHeader memory header) internal pure returns (bytes32) {
        return CryptographyLib.hash(serializeConsensusHeader(header));
    }
}

// ============================================================
// FILE: contracts/fuelchain/types/FuelBlockHeaderLite.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;

import {CryptographyLib} from "../../lib/Cryptography.sol";

/// @title Lightweight Fuel Chain Block Header
/// @dev The Fuel chain block header structure with just a hash of the application header
struct FuelBlockHeaderLite {
    // Merkle root of all previous consensus header hashes (not including this block)
    bytes32 prevRoot;
    // Height of this block
    uint32 height;
    // Time this block was created, in TAI64 format
    uint64 timestamp;
    // Hash of serialized application header for this block
    bytes32 applicationHash;
}

/// @title Block Header Library
/// @dev Provides useful functions for dealing with Fuel blocks
library FuelBlockHeaderLiteLib {
    /////////////
    // Methods //
    /////////////

    /// @notice Serialize a block consensus header.
    /// @param header The block header structure.
    /// @return The serialized block consensus header.
    function serializeConsensusHeader(FuelBlockHeaderLite memory header) internal pure returns (bytes memory) {
        return abi.encodePacked(header.prevRoot, (uint32)(header.height), header.timestamp, header.applicationHash);
    }

    /// @notice Produce the block consensus header hash.
    /// @param header The block header structure.
    /// @return The block consensus header hash.
    function computeConsensusHeaderHash(FuelBlockHeaderLite memory header) internal pure returns (bytes32) {
        return CryptographyLib.hash(serializeConsensusHeader(header));
    }
}

// ============================================================
// FILE: contracts/lib/CommonPredicates.sol
// ============================================================

// SPDX-License-Identifier: Apache 2.0

pragma solidity 0.8.9;

/// @notice Common predicates for Fuel inputs
library CommonPredicates {
    bytes32 public constant CONTRACT_MESSAGE_PREDICATE =
        0xe821b978bcce9abbf40c3e50ea30143e68c65fa95b9da8907fef59c02d954cec;
}

// ============================================================
// FILE: contracts/lib/Cryptography.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;

/// @notice This is the Fuel protocol cryptography library.
library CryptographyLib {
    /////////////
    // Methods //
    /////////////

    // secp256k1n / 2
    uint256 private constant MAX_SIGNATURE_S_VALUE = 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0;

    /// @notice The primary hash method for Fuel.
    /// @param data The bytes input data.
    /// @return The returned hash result.
    function hash(bytes memory data) internal pure returns (bytes32) {
        return sha256(data);
    }
}

// ============================================================
// FILE: contracts/lib/VerifyBinaryTree/Constants.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

library Constants {
    ///////////////
    // Constants //
    ///////////////

    /// @dev Maximum tree height
    uint256 internal constant MAX_HEIGHT = 256;

    /// @dev Empty node hash
    bytes32 internal constant EMPTY = sha256("");

    /// @dev Default value for sparse Merkle tree node
    bytes32 internal constant ZERO = bytes32(0);

    /// @dev The null pointer
    bytes32 internal constant NULL = bytes32(0);

    /// @dev The prefixes of leaves and nodes
    bytes1 internal constant LEAF_PREFIX = 0x00;
    bytes1 internal constant NODE_PREFIX = 0x01;
}

// ============================================================
// FILE: contracts/lib/VerifyBinaryTree/Node.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

/// @notice Merkle Tree Node structure.
struct Node {
    bytes32 digest;
    // Left child.
    bytes32 leftChildPtr;
    // Right child.
    bytes32 rightChildPtr;
}

// ============================================================
// FILE: contracts/lib/VerifyBinaryTree/TreeHasher.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import {CryptographyLib} from "../Cryptography.sol";
import {Constants} from "./Constants.sol";
import {Node} from "./Node.sol";

/// @notice hash some data
/// @param data: The data to be hashed
// solhint-disable-next-line func-visibility
function hash(bytes memory data) pure returns (bytes32) {
    return CryptographyLib.hash(data);
}

/// @notice Calculate the digest of a node
/// @param left : The left child
/// @param right: The right child
/// @return digest : The node digest
// solhint-disable-next-line func-visibility
function nodeDigest(bytes32 left, bytes32 right) pure returns (bytes32 digest) {
    digest = hash(abi.encodePacked(Constants.NODE_PREFIX, left, right));
}

/// @notice Calculate the digest of a leaf
/// @param data : The data of the leaf
/// @return digest : The leaf digest
// solhint-disable-next-line func-visibility
function leafDigest(bytes memory data) pure returns (bytes32 digest) {
    digest = hash(abi.encodePacked(Constants.LEAF_PREFIX, data));
}

// ============================================================
// FILE: contracts/lib/VerifyBinaryTree/Utils.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import {Constants} from "./Constants.sol";

/// @notice Calculate the starting bit of the path to a leaf
/// @param numLeaves : The total number of leaves in the tree
/// @return startingBit : The starting bit of the path
// solhint-disable-next-line func-visibility
function getStartingBit(uint256 numLeaves) pure returns (uint256 startingBit) {
    // Determine height of the left subtree. This is the maximum path length, so all paths start at this offset from the right-most bit
    startingBit = 0;
    while ((1 << startingBit) < numLeaves) {
        startingBit += 1;
    }
    return Constants.MAX_HEIGHT - startingBit;
}

/// @notice Calculate the length of the path to a leaf
/// @param key: The key of the leaf
/// @param numLeaves: The total number of leaves in the tree
/// @return pathLength : The length of the path to the leaf
/// @dev A precondition to this function is that `numLeaves > 1`, so that `(pathLength - 1)` does not cause an underflow when pathLength = 0.
// solhint-disable-next-line func-visibility
function pathLengthFromKey(uint256 key, uint256 numLeaves) pure returns (uint256 pathLength) {
    // Get the height of the left subtree. This is equal to the offset of the starting bit of the path
    pathLength = 256 - getStartingBit(numLeaves);

    // Determine the number of leaves in the left subtree
    uint256 numLeavesLeftSubTree = (1 << (pathLength - 1));

    // If leaf is in left subtree, path length is full height of left subtree
    if (key <= numLeavesLeftSubTree - 1) {
        return pathLength;
    }
    // Otherwise, if left sub tree has only one leaf, path has one additional step
    else if (numLeavesLeftSubTree == 1) {
        return 1;
    }
    // Otherwise, if right sub tree has only one leaf, path has one additional step
    else if (numLeaves - numLeavesLeftSubTree <= 1) {
        return 1;
    }
    // Otherwise, add 1 to height and recurse into right subtree
    else {
        return 1 + pathLengthFromKey(key - numLeavesLeftSubTree, numLeaves - numLeavesLeftSubTree);
    }
}

// ============================================================
// FILE: contracts/lib/VerifyBinaryTree/VerifyBinaryTree.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
/// @title VerifyBinaryTree
/// @author Fuel Labs
/// @dev This implements verification for the binary trees used by the FuelVM
/// @dev For more details, check:
/// @dev https://github.com/FuelLabs/fuel-specs/blob/master/src/protocol/cryptographic-primitives.md

pragma solidity ^0.8.4;

import {Node} from "./Node.sol";
import {nodeDigest, leafDigest} from "./TreeHasher.sol";
import {pathLengthFromKey, getStartingBit} from "./Utils.sol";

/// @notice Verify if element (key, data) exists in Merkle tree, given data, proof, and root.
/// @param root: The root of the tree in which verify the given leaf
/// @param data: The data of the leaf to verify
/// @param key: The key of the leaf to verify.
/// @param proof: Binary Merkle Proof for the leaf.
/// @param numLeaves: The number of leaves in the tree
/// @return : Whether the proof is valid
/// @dev numLeaves is necessary to determine height of sub-tree containing the data to prove
// solhint-disable-next-line func-visibility
function verifyBinaryTree(
    bytes32 root,
    bytes memory data,
    bytes32[] memory proof,
    uint256 key,
    uint256 numLeaves
) pure returns (bool) {
    // A sibling at height 1 is created by getting the hash of the data to prove.
    return verifyBinaryTreeDigest(root, leafDigest(data), proof, key, numLeaves);
}

/// @notice Verify if element (key, digest) exists in Merkle tree, given digest, proof, and root.
/// @param root: The root of the tree in which verify the given leaf
/// @param digest: The digest of the data of the leaf to verify
/// @param key: The key of the leaf to verify.
/// @param proof: Binary Merkle Proof for the leaf.
/// @param numLeaves: The number of leaves in the tree
/// @return : Whether the proof is valid
/// @dev numLeaves is necessary to determine height of sub-tree containing the data to prove
// solhint-disable-next-line func-visibility
function verifyBinaryTreeDigest(
    bytes32 root,
    bytes32 digest,
    bytes32[] memory proof,
    uint256 key,
    uint256 numLeaves
) pure returns (bool) {
    // Check proof is correct length for the key it is proving
    if (numLeaves <= 1) {
        if (proof.length != 0) {
            return false;
        }
    } else if (proof.length != pathLengthFromKey(key, numLeaves)) {
        return false;
    }

    // Check key is in tree
    if (key >= numLeaves) {
        return false;
    }

    // Null proof is only valid if numLeaves = 1
    // If so, just verify digest is root
    if (proof.length == 0) {
        if (numLeaves == 1) {
            return (root == digest);
        } else {
            return false;
        }
    }

    uint256 height = 1;
    uint256 stableEnd = key;

    // While the current subtree (of height 'height') is complete, determine
    // the position of the next sibling using the complete subtree algorithm.
    // 'stableEnd' tells us the ending index of the last full subtree. It gets
    // initialized to 'key' because the first full subtree was the
    // subtree of height 1, created above (and had an ending index of
    // 'key').

    while (true) {
        // Determine if the subtree is complete. This is accomplished by
        // rounding down the key to the nearest 1 << 'height', adding 1
        // << 'height', and comparing the result to the number of leaves in the
        // Merkle tree.

        uint256 subTreeStartIndex = (key / (1 << height)) * (1 << height);
        uint256 subTreeEndIndex = subTreeStartIndex + (1 << height) - 1;

        // If the Merkle tree does not have a leaf at index
        // 'subTreeEndIndex', then the subtree of the current height is not
        // a complete subtree.
        if (subTreeEndIndex >= numLeaves) {
            break;
        }
        stableEnd = subTreeEndIndex;

        // Determine if the key is in the first or the second half of
        // the subtree.
        if (proof.length <= height - 1) {
            return false;
        }
        if (key - subTreeStartIndex < (1 << (height - 1))) {
            digest = nodeDigest(digest, proof[height - 1]);
        } else {
            digest = nodeDigest(proof[height - 1], digest);
        }

        height += 1;
    }

    // Determine if the next hash belongs to an orphan that was elevated. This
    // is the case IFF 'stableEnd' (the last index of the largest full subtree)
    // is equal to the number of leaves in the Merkle tree.
    if (stableEnd != numLeaves - 1) {
        if (proof.length <= height - 1) {
            return false;
        }
        digest = nodeDigest(digest, proof[height - 1]);
        height += 1;
    }

    // All remaining elements in the proof set will belong to a left sibling\
    // i.e proof sideNodes are hashed in "from the left"
    while (height - 1 < proof.length) {
        digest = nodeDigest(proof[height - 1], digest);
        height += 1;
    }

    return (digest == root);
}
