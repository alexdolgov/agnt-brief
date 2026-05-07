// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (access/AccessControlEnumerable.sol)

pragma solidity ^0.8.0;

import "./IAccessControlEnumerableUpgradeable.sol";
import "./AccessControlUpgradeable.sol";
import "../utils/structs/EnumerableSetUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Extension of {AccessControl} that allows enumerating the members of each role.
 */
abstract contract AccessControlEnumerableUpgradeable is Initializable, IAccessControlEnumerableUpgradeable, AccessControlUpgradeable {
    function __AccessControlEnumerable_init() internal onlyInitializing {
    }

    function __AccessControlEnumerable_init_unchained() internal onlyInitializing {
    }
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    mapping(bytes32 => EnumerableSetUpgradeable.AddressSet) private _roleMembers;

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControlEnumerableUpgradeable).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns one of the accounts that have `role`. `index` must be a
     * value between 0 and {getRoleMemberCount}, non-inclusive.
     *
     * Role bearers are not sorted in any particular way, and their ordering may
     * change at any point.
     *
     * WARNING: When using {getRoleMember} and {getRoleMemberCount}, make sure
     * you perform all queries on the same block. See the following
     * https://forum.openzeppelin.com/t/iterating-over-elements-on-enumerableset-in-openzeppelin-contracts/2296[forum post]
     * for more information.
     */
    function getRoleMember(bytes32 role, uint256 index) public view virtual override returns (address) {
        return _roleMembers[role].at(index);
    }

    /**
     * @dev Returns the number of accounts that have `role`. Can be used
     * together with {getRoleMember} to enumerate all bearers of a role.
     */
    function getRoleMemberCount(bytes32 role) public view virtual override returns (uint256) {
        return _roleMembers[role].length();
    }

    /**
     * @dev Overload {_grantRole} to track enumerable memberships
     */
    function _grantRole(bytes32 role, address account) internal virtual override {
        super._grantRole(role, account);
        _roleMembers[role].add(account);
    }

    /**
     * @dev Overload {_revokeRole} to track enumerable memberships
     */
    function _revokeRole(bytes32 role, address account) internal virtual override {
        super._revokeRole(role, account);
        _roleMembers[role].remove(account);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

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
import "../proxy/utils/Initializable.sol";

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
    function __AccessControl_init() internal onlyInitializing {
    }

    function __AccessControl_init_unchained() internal onlyInitializing {
    }
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
// FILE: @openzeppelin/contracts-upgradeable/access/IAccessControlEnumerableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControlEnumerable.sol)

pragma solidity ^0.8.0;

import "./IAccessControlUpgradeable.sol";

/**
 * @dev External interface of AccessControlEnumerable declared to support ERC165 detection.
 */
interface IAccessControlEnumerableUpgradeable is IAccessControlUpgradeable {
    /**
     * @dev Returns one of the accounts that have `role`. `index` must be a
     * value between 0 and {getRoleMemberCount}, non-inclusive.
     *
     * Role bearers are not sorted in any particular way, and their ordering may
     * change at any point.
     *
     * WARNING: When using {getRoleMember} and {getRoleMemberCount}, make sure
     * you perform all queries on the same block. See the following
     * https://forum.openzeppelin.com/t/iterating-over-elements-on-enumerableset-in-openzeppelin-contracts/2296[forum post]
     * for more information.
     */
    function getRoleMember(bytes32 role, uint256 index) external view returns (address);

    /**
     * @dev Returns the number of accounts that have `role`. Can be used
     * together with {getRoleMember} to enumerate all bearers of a role.
     */
    function getRoleMemberCount(bytes32 role) external view returns (uint256);
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
import "../utils/Initializable.sol";

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 *
 * _Available since v4.1._
 */
abstract contract ERC1967UpgradeUpgradeable is Initializable, IERC1967Upgradeable {
    function __ERC1967Upgrade_init() internal onlyInitializing {
    }

    function __ERC1967Upgrade_init_unchained() internal onlyInitializing {
    }
    // This is the keccak-256 hash of "eip1967.proxy.rollback" subtracted by 1
    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

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
import "./Initializable.sol";

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
    function __UUPSUpgradeable_init() internal onlyInitializing {
    }

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing {
    }
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
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./IERC20Upgradeable.sol";
import "./extensions/IERC20MetadataUpgradeable.sol";
import "../../utils/ContextUpgradeable.sol";
import "../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
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
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20Upgradeable is Initializable, ContextUpgradeable, IERC20Upgradeable, IERC20MetadataUpgradeable {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

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
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
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
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(address from, address to, uint256 amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            // Overflow not possible: the sum of all balances is capped by totalSupply, and the sum is preserved by
            // decrementing then incrementing.
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= amount;
        }

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
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
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 amount) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[45] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20Upgradeable.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20MetadataUpgradeable is IERC20Upgradeable {
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
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;
import "../proxy/utils/Initializable.sol";

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
import "../../proxy/utils/Initializable.sol";

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
// FILE: @openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/structs/EnumerableSet.sol)
// This file was procedurally generated from scripts/generate/templates/EnumerableSet.js.

pragma solidity ^0.8.0;

/**
 * @dev Library for managing
 * https://en.wikipedia.org/wiki/Set_(abstract_data_type)[sets] of primitive
 * types.
 *
 * Sets have the following properties:
 *
 * - Elements are added, removed, and checked for existence in constant time
 * (O(1)).
 * - Elements are enumerated in O(n). No guarantees are made on the ordering.
 *
 * ```solidity
 * contract Example {
 *     // Add the library methods
 *     using EnumerableSet for EnumerableSet.AddressSet;
 *
 *     // Declare a set state variable
 *     EnumerableSet.AddressSet private mySet;
 * }
 * ```
 *
 * As of v3.3.0, sets of type `bytes32` (`Bytes32Set`), `address` (`AddressSet`)
 * and `uint256` (`UintSet`) are supported.
 *
 * [WARNING]
 * ====
 * Trying to delete such a structure from storage will likely result in data corruption, rendering the structure
 * unusable.
 * See https://github.com/ethereum/solidity/pull/11843[ethereum/solidity#11843] for more info.
 *
 * In order to clean an EnumerableSet, you can either remove all elements one by one or create a fresh instance using an
 * array of EnumerableSet.
 * ====
 */
library EnumerableSetUpgradeable {
    // To implement this library for multiple types with as little code
    // repetition as possible, we write it in terms of a generic Set type with
    // bytes32 values.
    // The Set implementation uses private functions, and user-facing
    // implementations (such as AddressSet) are just wrappers around the
    // underlying Set.
    // This means that we can only create new EnumerableSets for types that fit
    // in bytes32.

    struct Set {
        // Storage of set values
        bytes32[] _values;
        // Position of the value in the `values` array, plus 1 because index 0
        // means a value is not in the set.
        mapping(bytes32 => uint256) _indexes;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function _add(Set storage set, bytes32 value) private returns (bool) {
        if (!_contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._indexes[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function _remove(Set storage set, bytes32 value) private returns (bool) {
        // We read and store the value's index to prevent multiple reads from the same storage slot
        uint256 valueIndex = set._indexes[value];

        if (valueIndex != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 toDeleteIndex = valueIndex - 1;
            uint256 lastIndex = set._values.length - 1;

            if (lastIndex != toDeleteIndex) {
                bytes32 lastValue = set._values[lastIndex];

                // Move the last value to the index where the value to delete is
                set._values[toDeleteIndex] = lastValue;
                // Update the index for the moved value
                set._indexes[lastValue] = valueIndex; // Replace lastValue's index to valueIndex
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the index for the deleted slot
            delete set._indexes[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._indexes[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function _length(Set storage set) private view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function _at(Set storage set, uint256 index) private view returns (bytes32) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function _values(Set storage set) private view returns (bytes32[] memory) {
        return set._values;
    }

    // Bytes32Set

    struct Bytes32Set {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _add(set._inner, value);
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _remove(set._inner, value);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(Bytes32Set storage set, bytes32 value) internal view returns (bool) {
        return _contains(set._inner, value);
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(Bytes32Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(Bytes32Set storage set, uint256 index) internal view returns (bytes32) {
        return _at(set._inner, index);
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes32Set storage set) internal view returns (bytes32[] memory) {
        bytes32[] memory store = _values(set._inner);
        bytes32[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // AddressSet

    struct AddressSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(AddressSet storage set, address value) internal returns (bool) {
        return _add(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(AddressSet storage set, address value) internal returns (bool) {
        return _remove(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(AddressSet storage set, address value) internal view returns (bool) {
        return _contains(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(AddressSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(AddressSet storage set, uint256 index) internal view returns (address) {
        return address(uint160(uint256(_at(set._inner, index))));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(AddressSet storage set) internal view returns (address[] memory) {
        bytes32[] memory store = _values(set._inner);
        address[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // UintSet

    struct UintSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(UintSet storage set, uint256 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(UintSet storage set, uint256 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(UintSet storage set, uint256 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(UintSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(UintSet storage set, uint256 index) internal view returns (uint256) {
        return uint256(_at(set._inner, index));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(UintSet storage set) internal view returns (uint256[] memory) {
        bytes32[] memory store = _values(set._inner);
        uint256[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
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
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
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
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

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
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/structs/EnumerableSet.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/structs/EnumerableSet.sol)
// This file was procedurally generated from scripts/generate/templates/EnumerableSet.js.

pragma solidity ^0.8.0;

/**
 * @dev Library for managing
 * https://en.wikipedia.org/wiki/Set_(abstract_data_type)[sets] of primitive
 * types.
 *
 * Sets have the following properties:
 *
 * - Elements are added, removed, and checked for existence in constant time
 * (O(1)).
 * - Elements are enumerated in O(n). No guarantees are made on the ordering.
 *
 * ```solidity
 * contract Example {
 *     // Add the library methods
 *     using EnumerableSet for EnumerableSet.AddressSet;
 *
 *     // Declare a set state variable
 *     EnumerableSet.AddressSet private mySet;
 * }
 * ```
 *
 * As of v3.3.0, sets of type `bytes32` (`Bytes32Set`), `address` (`AddressSet`)
 * and `uint256` (`UintSet`) are supported.
 *
 * [WARNING]
 * ====
 * Trying to delete such a structure from storage will likely result in data corruption, rendering the structure
 * unusable.
 * See https://github.com/ethereum/solidity/pull/11843[ethereum/solidity#11843] for more info.
 *
 * In order to clean an EnumerableSet, you can either remove all elements one by one or create a fresh instance using an
 * array of EnumerableSet.
 * ====
 */
library EnumerableSet {
    // To implement this library for multiple types with as little code
    // repetition as possible, we write it in terms of a generic Set type with
    // bytes32 values.
    // The Set implementation uses private functions, and user-facing
    // implementations (such as AddressSet) are just wrappers around the
    // underlying Set.
    // This means that we can only create new EnumerableSets for types that fit
    // in bytes32.

    struct Set {
        // Storage of set values
        bytes32[] _values;
        // Position of the value in the `values` array, plus 1 because index 0
        // means a value is not in the set.
        mapping(bytes32 => uint256) _indexes;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function _add(Set storage set, bytes32 value) private returns (bool) {
        if (!_contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._indexes[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function _remove(Set storage set, bytes32 value) private returns (bool) {
        // We read and store the value's index to prevent multiple reads from the same storage slot
        uint256 valueIndex = set._indexes[value];

        if (valueIndex != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 toDeleteIndex = valueIndex - 1;
            uint256 lastIndex = set._values.length - 1;

            if (lastIndex != toDeleteIndex) {
                bytes32 lastValue = set._values[lastIndex];

                // Move the last value to the index where the value to delete is
                set._values[toDeleteIndex] = lastValue;
                // Update the index for the moved value
                set._indexes[lastValue] = valueIndex; // Replace lastValue's index to valueIndex
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the index for the deleted slot
            delete set._indexes[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._indexes[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function _length(Set storage set) private view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function _at(Set storage set, uint256 index) private view returns (bytes32) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function _values(Set storage set) private view returns (bytes32[] memory) {
        return set._values;
    }

    // Bytes32Set

    struct Bytes32Set {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _add(set._inner, value);
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _remove(set._inner, value);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(Bytes32Set storage set, bytes32 value) internal view returns (bool) {
        return _contains(set._inner, value);
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(Bytes32Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(Bytes32Set storage set, uint256 index) internal view returns (bytes32) {
        return _at(set._inner, index);
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes32Set storage set) internal view returns (bytes32[] memory) {
        bytes32[] memory store = _values(set._inner);
        bytes32[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // AddressSet

    struct AddressSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(AddressSet storage set, address value) internal returns (bool) {
        return _add(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(AddressSet storage set, address value) internal returns (bool) {
        return _remove(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(AddressSet storage set, address value) internal view returns (bool) {
        return _contains(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(AddressSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(AddressSet storage set, uint256 index) internal view returns (address) {
        return address(uint160(uint256(_at(set._inner, index))));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(AddressSet storage set) internal view returns (address[] memory) {
        bytes32[] memory store = _values(set._inner);
        address[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // UintSet

    struct UintSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(UintSet storage set, uint256 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(UintSet storage set, uint256 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(UintSet storage set, uint256 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(UintSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(UintSet storage set, uint256 index) internal view returns (uint256) {
        return uint256(_at(set._inner, index));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(UintSet storage set) internal view returns (uint256[] memory) {
        bytes32[] memory store = _values(set._inner);
        uint256[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/ModuleRegistry.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {BaseUpgradeableModule} from "./modules/BaseUpgradeableModule.sol";

contract ModuleRegistry is Ownable {
    mapping(bytes32 => address) private registryMap;

    function registerModule(bytes32 id, address addr) external onlyOwner {
        require(id != bytes4(0x0), "INVALID_MODULE_ID");
        require(addr != address(0x0), "INVALID_MODULE_ADDRESS");
        require(registryMap[id] == address(0x0), "MODULE_ALREADY_REGISTERED");
        registryMap[id] = addr;
    }

    function getModuleAddress(bytes32 id) external view returns (address) {
        return registryMap[id];
    }

    function getModuleVersion(bytes32 id) external view returns (uint8) {
        return BaseUpgradeableModule(registryMap[id]).getVersion();
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/AuthorizationModule.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {BaseUpgradeableModule} from "./BaseUpgradeableModule.sol";
import {IAccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/IAccessControlUpgradeable.sol";
import {IAuthorization} from "../../interfaces/IAuthorization.sol";
import {ITransactionStorage} from "../../interfaces/TransactionIfaces.sol";
import {IHoldings} from "../../interfaces/IHoldings.sol";
import {TokenRegistry} from "../../infrastructure/TokenRegistry.sol";

import {ModuleRegistry} from "../ModuleRegistry.sol";

contract AuthorizationModule is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IAuthorization
{
    bytes32 public constant MODULE_ID = keccak256("MODULE_AUTHORIZATION");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 public constant ROLE_AUTHORIZATION_ADMIN =
        keccak256("ROLE_AUTHORIZATION_ADMIN");
    bytes32 public constant ROLE_FUND_ADMIN = keccak256("ROLE_FUND_ADMIN");
    bytes32 public constant ROLE_FUND_AUTHORIZED =
        keccak256("ROLE_FUND_AUTHORIZED");
    // Inter-module comm
    bytes32 public constant WRITE_ACCESS_TRANSACTION =
        keccak256("WRITE_ACCESS_TRANSACTION");
    bytes32 public constant WRITE_ACCESS_TOKEN =
        keccak256("WRITE_ACCESS_TOKEN");

    address tokenAddress;

    /// @dev This is emitted when an account is authorized
    event AccountAuthorized(address indexed account);
    /// @dev This is emitted when an account is deauthorized
    event AccountDeauthorized(address indexed account);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _moduleOwner,
        address _authAdmin,
        address _fundAdmin,
        address _modRegistry,
        address _tokenRegistry,
        string memory _defaultToken
    ) public initializer {
        require(
            _moduleOwner != address(0) &&
                _authAdmin != address(0) &&
                _fundAdmin != address(0),
            "INVALID_ADDRESS"
        );
        require(_modRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        require(_tokenRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        __BaseUpgradeableModule_init();
        __AccessControlEnumerable_init();
        modules = ModuleRegistry(_modRegistry);
        tokenAddress = TokenRegistry(_tokenRegistry).getTokenAddress(_defaultToken);
        require(tokenAddress != address(0), "INVALID_TOKEN_ADDRESS");

        _grantRole(DEFAULT_ADMIN_ROLE, _moduleOwner);
        _setRoleAdmin(ROLE_MODULE_OWNER, ROLE_MODULE_OWNER);
        _grantRole(ROLE_MODULE_OWNER, _moduleOwner);

        _setRoleAdmin(ROLE_AUTHORIZATION_ADMIN, ROLE_AUTHORIZATION_ADMIN);
        _grantRole(ROLE_AUTHORIZATION_ADMIN, _authAdmin);

        _setRoleAdmin(ROLE_FUND_ADMIN, ROLE_FUND_ADMIN);
        _grantRole(ROLE_FUND_ADMIN, _fundAdmin);

        _setRoleAdmin(ROLE_FUND_AUTHORIZED, ROLE_AUTHORIZATION_ADMIN);
        _setRoleAdmin(WRITE_ACCESS_TRANSACTION, ROLE_MODULE_OWNER);
        _setRoleAdmin(WRITE_ACCESS_TOKEN, ROLE_MODULE_OWNER);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    // -------------------- Account Management --------------------  //

    /**
     * @dev Grants the shareholder status to the given account.
     *
     * Only shareholders can have requests defined by the {ITransactionStorage} interface.
     *
     * @param account The address to grant the shareholder status
     *
     */
    function authorizeAccount(
        address account
    ) external virtual override onlyRole(ROLE_AUTHORIZATION_ADMIN) {
        require(account != address(0), "INVALID_ADDRESS");
        require(
            !hasRole(ROLE_FUND_AUTHORIZED, account),
            "SHAREHOLDER_ALREADY_EXISTS"
        );
        _grantRole(ROLE_FUND_AUTHORIZED, account);
        emit AccountAuthorized(account);
    }

    /**
     * @dev Revokes the shareholder status from the given account.
     *
     * Only shareholders can have requests defined by the {ITransactionStorage} interface.
     *
     * @param account The address to revoke the shareholder status from
     *
     */
    function deauthorizeAccount(
        address account
    ) external virtual override onlyRole(ROLE_AUTHORIZATION_ADMIN) {
        require(account != address(0), "INVALID_ADDRESS");
        address txModule = modules.getModuleAddress(
            keccak256("MODULE_TRANSACTIONAL")
        );
        require(txModule != address(0), "MODULE_REQUIRED_NOT_FOUND");
        require(
            hasRole(ROLE_FUND_AUTHORIZED, account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        require(
            !ITransactionStorage(txModule).hasTransactions(account),
            "PENDING_TRANSACTIONS_EXIST"
        );
        require(
            IHoldings(tokenAddress).getShareHoldings(account) == 0,
            "ACCOUNT_HAS_BALANCE"
        );

        _revokeRole(ROLE_FUND_AUTHORIZED, account);
        emit AccountDeauthorized(account);
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
     * - the caller must be `account`, the only exception to this rule is
     *   for accounts that have the role 'ROLE_FUND_AUTHORIZED', in such cases
     *   the function caller is required to have the role 'ROLE_AUTHORIZATION_ADMIN'
     *
     * May emit a {RoleRevoked} event.
     *
     */
    function renounceRole(
        bytes32 role,
        address account
    )
        public
        virtual
        override(AccessControlUpgradeable, IAccessControlUpgradeable)
    {
        if (role == ROLE_FUND_AUTHORIZED) {
            require(
                hasRole(ROLE_FUND_AUTHORIZED, account),
                "ACCOUNT_IS_NOT_A_SHAREHOLDER"
            );
            require(
                hasRole(ROLE_AUTHORIZATION_ADMIN, _msgSender()),
                "CALLER_IS_NOT_AN_ADMIN"
            );
        } else {
            require(
                account == _msgSender(),
                "AccessControl: can only renounce roles for self"
            );
        }

        _revokeRole(role, account);
    }

    // --------------------------- Views ---------------------------  //

    function isAccountAuthorized(
        address account
    ) external view virtual override returns (bool) {
        return hasRole(ROLE_FUND_AUTHORIZED, account);
    }

    function isAdminAccount(
        address account
    ) external view virtual override returns (bool) {
        return hasRole(ROLE_FUND_ADMIN, account);
    }

    function getAuthorizedAccountsCount()
        external
        view
        virtual
        override
        returns (uint256)
    {
        return getRoleMemberCount(ROLE_FUND_AUTHORIZED);
    }

    function getAuthorizedAccountAt(
        uint256 index
    ) external view virtual override returns (address) {
        return getRoleMember(ROLE_FUND_AUTHORIZED, index);
    }

    function getVersion() public pure virtual override returns (uint8) {
        return 1;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/BaseUpgradeableModule.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {ModuleRegistry} from "../ModuleRegistry.sol";

abstract contract BaseUpgradeableModule is Initializable, UUPSUpgradeable {
    ModuleRegistry modules;

    function __BaseUpgradeableModule_init() internal onlyInitializing {
        __UUPSUpgradeable_init();
    }

    function __BaseUpgradeableModule_init_unchained()
        internal
        onlyInitializing
    {}

    function getVersion() external pure virtual returns (uint8);
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/IntentValidationModule.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "./BaseUpgradeableModule.sol";
import {IAuthorization} from "../../interfaces/IAuthorization.sol";
import {IDeviceValidation} from "../../interfaces/IDeviceValidation.sol";

import {ModuleRegistry} from "../ModuleRegistry.sol";

contract IntentValidationModule is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IDeviceValidation
{
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.UintSet;

    uint256 public constant MAX_DEVICES = 50;

    bytes32 public constant MODULE_ID = keccak256("MODULE_INTENT_VALIDATION");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");

    /// @dev This is emitted when a new is key is added for the account-device unique pair
    event DeviceKeyAdded(address indexed account, uint256 indexed deviceId);
    /// @dev This is emitted when an existing key is updated for the account-device unique pair
    event DeviceKeyUpdated(address indexed account, uint256 indexed deviceId);
    /// @dev This is emitted when a new is key is removed for the account-device unique pair
    event DeviceKeyRemoved(address indexed account, uint256 indexed deviceId);

    mapping(address => EnumerableSetUpgradeable.UintSet) devicesMap;
    mapping(address => mapping(uint256 => string)) deviceKeyMap;

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _moduleOwner,
        address _modRegistry
    ) public initializer {
        require(_moduleOwner != address(0), "INVALID_ADDRESS");
        require(_modRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        __BaseUpgradeableModule_init();
        __AccessControlEnumerable_init();
        modules = ModuleRegistry(_modRegistry);
        _grantRole(DEFAULT_ADMIN_ROLE, _moduleOwner);
        _setRoleAdmin(ROLE_MODULE_OWNER, ROLE_MODULE_OWNER);
        _grantRole(ROLE_MODULE_OWNER, _moduleOwner);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() external pure virtual override returns (uint8) {
        return 1;
    }

    /**
     * @notice Adds a key for the unique account-deviceId pair
     *
     * @dev The deviceId and key are generated off-chain and on a per account basis,
     *      this implies the same value for any deviceId and/or key could be the same
     *      for multiple accounts.
     *
     * @param account The address of the shareholder's account
     * @param deviceId The ID of the device
     * @param key The key associated with the unique account-deviceId pair
     *
     */
    function setDeviceKey(
        address account,
        uint256 deviceId,
        string memory key
    ) external virtual override onlyAdmin {
        if (devicesMap[account].add(deviceId)) {
            emit DeviceKeyAdded(account, deviceId);
        } else {
            emit DeviceKeyUpdated(account, deviceId);
        }
        deviceKeyMap[account][deviceId] = key;
    }

    /**
     * @notice Removes the key associated to the unique account-deviceId pair
     *
     * @dev The deviceId should exist or this operation will revert with an error.
     *
     * @param account The address of the shareholder's account
     * @param deviceId The ID of the device
     *
     */
    function clearDeviceKey(
        address account,
        uint256 deviceId
    ) external virtual override onlyAdmin {
        require(devicesMap[account].length() != 0, "INVALID_ACCOUNT");
        _removeDeviceKey(account, deviceId);
    }

    /**
     * @notice Removes all the device's keys associated with the given account
     *
     * @dev The account should exist or this operation will revert with an error.
     *
     * @param account The address of the shareholder's account
     *
     */
    function clearAccountKeys(
        address account
    ) external virtual override onlyAdmin {
        uint256[] memory devices = devicesMap[account].values();
        for (uint256 i = 0; i < devices.length; ) {
            _removeDeviceKey(account, devices[i]);
            unchecked {
                i++;
            }
        }
    }

    function getDeviceKey(
        address account,
        uint256 deviceId
    ) external view virtual returns (string memory key) {
        require(devicesMap[account].contains(deviceId), "INVALID_DEVICE_ID");
        key = deviceKeyMap[account][deviceId];
    }

    function getDeviceKeys(
        address account
    )
        external
        view
        virtual
        override
        returns (uint256[] memory devices, string[] memory keys)
    {
        devices = devicesMap[account].values();
        keys = new string[](devicesMap[account].length());
        for (uint256 i = 0; i < devicesMap[account].length(); ) {
            keys[i] = deviceKeyMap[account][devices[i]];
            unchecked {
                i++;
            }
        }
    }

    function hasDevices(
        address account
    ) external view virtual override returns (bool) {
        return devicesMap[account].length() != 0;
    }

    // -------------------- Internal --------------------  //

    function _removeDeviceKey(
        address account,
        uint256 deviceId
    ) internal virtual {
        require(devicesMap[account].contains(deviceId), "INVALID_DEVICE_ID");
        delete deviceKeyMap[account][deviceId];
        devicesMap[account].remove(deviceId);
        emit DeviceKeyRemoved(account, deviceId);
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/TransactionalModule.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "./BaseUpgradeableModule.sol";

import {IAuthorization} from "../../interfaces/IAuthorization.sol";
import {IHoldings} from "../../interfaces/IHoldings.sol";
import {IShareholderTransaction} from "../../interfaces/TransactionIfaces.sol";
import {IShareholderSelfServiceTransaction} from "../../interfaces/TransactionIfaces.sol";
import {ITransferAgentTransaction} from "../../interfaces/TransactionIfaces.sol";
import {ICancellableTransaction, ICancellableSelfServiceTransaction} from "../../interfaces/TransactionIfaces.sol";
import {ITransactionStorage} from "../../interfaces/TransactionIfaces.sol";

import {ModuleRegistry} from "../ModuleRegistry.sol";
import {TokenRegistry} from "../../infrastructure/TokenRegistry.sol";

contract TransactionalModule is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IShareholderTransaction,
    IShareholderSelfServiceTransaction,
    ITransferAgentTransaction,
    ITransactionStorage,
    ICancellableTransaction,
    ICancellableSelfServiceTransaction
{
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.Bytes32Set;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    /// @dev The Id for the current module used to register the module during deployment
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSACTIONAL");
    /// @dev The owner role that can be granted to manage the current contract
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    /// @dev The Id of the authorization module
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");

    event TransactionSubmitted(address indexed account, bytes32 transactionId);

    event TransactionCancelled(
        address indexed account,
        bytes32 transactionId,
        string memo
    );

    /// @dev Flag to enable/disable the Self Service API
    bool isSelfServiceOn;
    /// @dev Counter increased every time a new pending request is created
    uint256 requestsCounter;

    /// @dev Map of all the existing pending requests
    mapping(bytes32 => ITransactionStorage.TransactionDetail) transactionDetailMap;
    /// @dev Map of the list of pending requests id's per account
    mapping(address => EnumerableSetUpgradeable.Bytes32Set) pendingTransactionsMap;
    /// @dev Set containing the accounts with at least one pending requests
    EnumerableSetUpgradeable.AddressSet accountsWithTransactions;

    TokenRegistry tokenRegistry;
    /// @dev The Id of the token associated with the transaction requests of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // ---------------------- Modifiers ----------------------  //

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyShareholderAsMsgSender() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(msg.sender),
            "CALLER_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyShareholder(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "ACCOUNT_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyWithSelfServiceOn() {
        require(isSelfServiceOn, "SELF_SERVICE_NOT_ENABLED");
        _;
    }

    modifier onlyHigherThanZero(uint256 amount) {
        require(amount > 0, "INVALID_AMOUNT");
        _;
    }

    modifier whenTransactionStorageIsEmpty(address account) {
        if (pendingTransactionsMap[account].length() == 0) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _moduleOwner,
        address _modRegistry,
        address _tokenRegistry,
        string memory _defaultToken
    ) public initializer {
        require(_moduleOwner != address(0), "INVALID_ADDRESS");
        require(_modRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        require(_tokenRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        __BaseUpgradeableModule_init();
        __AccessControlEnumerable_init();
        modules = ModuleRegistry(_modRegistry);
        tokenRegistry = TokenRegistry(_tokenRegistry);
        tokenId = _defaultToken;
        _grantRole(DEFAULT_ADMIN_ROLE, _moduleOwner);
        _setRoleAdmin(ROLE_MODULE_OWNER, ROLE_MODULE_OWNER);
        _grantRole(ROLE_MODULE_OWNER, _moduleOwner);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    // ---------------------- Self Service Control ----------------------  //

    /**
     * @notice Enables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function enableSelfService() external override onlyAdmin {
        isSelfServiceOn = true;
    }

    /**
     * @notice Disables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function disableSelfService() external override onlyAdmin {
        isSelfServiceOn = false;
    }

    /**
     * @notice Gets the current value of the Self Service API status
     *
     */
    function isSelfServiceEnabled() external view override returns (bool) {
        return isSelfServiceOn;
    }

    // ----------------- Self Service Transactions -----------------  //

    /**
     * @notice Creates a request by the shareholder to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestSelfServiceCashPurchase(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        onlyHigherThanZero(amount)
    {
        _createCashTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestSelfServiceCashLiquidation(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                msg.sender,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell the entire share holdings of the given account.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     */
    function requestSelfServiceFullLiquidation()
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                msg.sender
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            true,
            block.timestamp,
            0 // No amount required
        );
    }

    /**
     * @notice Cancels an existing self service request for the calling shareholder.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not an authorized shareholder.
     *
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelSelfServiceRequest(
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyShareholderAsMsgSender {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            transactionDetailMap[requestId].selfService,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[msg.sender].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[msg.sender].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[msg.sender].length() == 0) {
            accountsWithTransactions.remove(msg.sender);
        }

        emit TransactionCancelled(msg.sender, requestId, memo);
    }

    // -------------------- Shareholder Transactions --------------------  //

    /**
     * @notice Creates a request to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestCashPurchase(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        onlyHigherThanZero(amount)
    {
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestCashLiquidation(
        address account,
        uint256 date,
        uint256 amount
    ) external virtual override onlyAdmin onlyShareholder(account) {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                account,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell the entire share holdings of the given account.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     *
     */
    function requestFullLiquidation(
        address account,
        uint256 date
    ) external virtual override onlyAdmin onlyShareholder(account) {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                account
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            false,
            date,
            0 // No amount required
        );
    }

    /**
     * @notice Cancels an existing request for the given account.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not the fund administrator.
     *
     * @param account The address of the shareholder's account
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelRequest(
        address account,
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyAdmin onlyShareholder(account) {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[account].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[account].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[account].length() == 0) {
            accountsWithTransactions.remove(account);
        }

        emit TransactionCancelled(account, requestId, memo);
    }

    // -------------------- TA Operations --------------------  //

    /**
     * @notice Creates a request to set up an Automatic Investent Plan for the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function setupAIP(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        onlyHigherThanZero(amount)
    {
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.AIP,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Removes an existing pending requests record for a given account
     *
     * @dev Only accounts or modules with ROLE_FUND_ADMIN or WRITE_ACCESS_TRANSACTION
     *      roles are allowed to call this function.
     * @dev The main usage for this function is to allow another module to modify
     *      the state of the current module.
     *
     * @param account The shareholder's account with the pending requests
     * @param requestId The Id of the pending request
     *
     */
    function clearTransactionStorage(
        address account,
        bytes32 requestId
    ) external virtual override returns (bool) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );
        delete transactionDetailMap[requestId];
        return pendingTransactionsMap[account].remove(requestId);
    }

    /**
     * @notice Removes an existing account from the list of accounts with transactions
     *
     * @dev This function will remove the given account from the list that contains all
     *      the accounts that have at least one pending transaction requests. This function
     *      should be called after validationg that the account as no more pending requests.
     *
     * @param account The shareholder's account
     *
     */
    function unlistFromAccountsWithPendingTransactions(
        address account
    ) external virtual override whenTransactionStorageIsEmpty(account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );
        accountsWithTransactions.remove(account);
    }

    // -------------------- Views --------------------  //

    // The operations below will copy the storage used to memory, which can be quite expensive.
    // See: https://docs.openzeppelin.com/contracts/4.x/api/utils#EnumerableSet-values-struct-EnumerableSet-Bytes32Set-
    function getAccountTransactions(
        address account
    ) external view virtual override returns (bytes32[] memory) {
        return pendingTransactionsMap[account].values();
    }

    function getTransactionDetail(
        bytes32 requestId
    ) external view virtual override returns (uint8, uint256, uint256, bool) {
        return (
            uint8(transactionDetailMap[requestId].txType),
            transactionDetailMap[requestId].date,
            transactionDetailMap[requestId].amount,
            transactionDetailMap[requestId].selfService
        );
    }

    function getAccountsWithTransactions(
        uint256 pageSize
    ) external view virtual override returns (address[] memory accounts) {
        require(
            pageSize > 0 && pageSize <= accountsWithTransactions.length(),
            "INVALID_PAGINATION_SIZE"
        );

        accounts = new address[](pageSize);
        for (uint i = 0; i < pageSize; ) {
            accounts[i] = accountsWithTransactions.at(i);
            unchecked {
                i++;
            }
        }
    }

    function getAccountsWithTransactionsCount()
        external
        view
        virtual
        override
        returns (uint256)
    {
        return accountsWithTransactions.length();
    }

    function hasTransactions(
        address account
    ) external view virtual override returns (bool) {
        return accountsWithTransactions.contains(account);
    }

    function isFromAccount(
        address account,
        bytes32 requestId
    ) external view virtual override returns (bool) {
        return pendingTransactionsMap[account].contains(requestId);
    }

    function getVersion() external pure virtual override returns (uint8) {
        return 1;
    }

    // -------------------- Internal --------------------  //

    function _listAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.add(account);
    }

    function _unlistAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.remove(account);
    }

    function _createCashTransaction(
        address account,
        ITransactionStorage.TransactionType txType,
        bool selfService,
        uint256 date,
        uint256 amount
    ) internal virtual {
        requestsCounter += 1;
        bytes32 requestId = _getTxId(account, date);
        require(
            pendingTransactionsMap[account].add(requestId),
            "INVALID_TRANSACTION_ID"
        );
        accountsWithTransactions.add(account);
        transactionDetailMap[requestId].txType = txType;
        transactionDetailMap[requestId].date = date;
        transactionDetailMap[requestId].amount = amount;
        transactionDetailMap[requestId].selfService = selfService;

        emit TransactionSubmitted(account, requestId);
    }

    function _getTxId(
        address account,
        uint256 timestamp
    ) internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encodePacked(
                    block.chainid,
                    block.number,
                    account,
                    timestamp,
                    requestsCounter
                )
            );
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/TransferAgentModule.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "./BaseUpgradeableModule.sol";

import {IAuthorization} from "../../interfaces/IAuthorization.sol";
import {IHoldings} from "../../interfaces/IHoldings.sol";
import {ITransactionStorage} from "../../interfaces/TransactionIfaces.sol";
import {ITransferAgent} from "../../interfaces/ITransferAgent.sol";
import {MoneyMarketFund} from "../../MoneyMarketFund.sol";
import {ModuleRegistry} from "../ModuleRegistry.sol";
import {TokenRegistry} from "../../infrastructure/TokenRegistry.sol";

contract TransferAgentModule is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    ITransferAgent
{
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSFER_AGENT");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    uint256 public constant MAX_ACCOUNT_PAGE_SIZE = 10;

    TokenRegistry tokenRegistry;
    MoneyMarketFund moneyMarketFund;
    /// @dev The Id of the token associated with the settlement and div distribution of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // *********************** Events *********************** //
    // ****************************************************** //

    /**
     * @dev This is emitted when dividends are paid to the shareholder,
     * in the very unlikely scenario of rate being lower than 0 the dividend
     * will be deducted from the shareholder's balance instead:
     */
    event DividendDistributed(
        address indexed account,
        uint256 indexed date,
        int256 rate,
        uint256 price,
        uint256 shares
    );
    /// @dev This is emitted when a shareholder request is settled:
    event TransactionSettled(
        address indexed account,
        uint256 indexed date,
        uint8 indexed transactionType,
        bytes32 transactionId,
        uint256 price,
        uint256 amount,
        uint256 shares
    );
    /// @dev This is emitted when a manual adjustment of the balance is performed by the TA:
    event BalanceAdjusted(address indexed account, uint256 amount, string memo);

    // ---------------------- Modifiers ----------------------  //

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyWhenShareholderExists(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        _;
    }

    // -------------------- Dividends --------------------  //

    modifier onlyWithValidRate(int256 rate) {
        require(rate != 0, "INVALID_DIV_RATE");
        _;
    }

    modifier whenLessThanZero(int256 rate) {
        if (rate < 0) {
            _;
        }
    }

    // ---------------- Transactions ----------------  //

    modifier onlyValidPaginationSize(
        uint256 arrayLength,
        uint256 maxArraySize
    ) {
        require(arrayLength <= maxArraySize, "INVALID_PAGINATION_SIZE");
        _;
    }

    modifier whenTransactionsExist(address account) {
        if (
            ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(account)
        ) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _moduleOwner,
        address _modRegistry,
        address _tokenRegistry,
        string memory _defaultToken
    ) public initializer {
        require(_moduleOwner != address(0), "INVALID_ADDRESS");
        require(_modRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        require(_tokenRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        __BaseUpgradeableModule_init();
        __AccessControlEnumerable_init();
        modules = ModuleRegistry(_modRegistry);
        tokenRegistry = TokenRegistry(_tokenRegistry);
        tokenId = _defaultToken;
        address tokenAddress = tokenRegistry.getTokenAddress(tokenId);
        require(tokenAddress != address(0), "INVALID_TOKEN_ADDRESS");
        moneyMarketFund = MoneyMarketFund(tokenAddress);
        _grantRole(DEFAULT_ADMIN_ROLE, _moduleOwner);
        _setRoleAdmin(ROLE_MODULE_OWNER, ROLE_MODULE_OWNER);
        _grantRole(ROLE_MODULE_OWNER, _moduleOwner);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() external pure virtual override returns (uint8) {
        return 1;
    }

    function adjustBalance(
        address account,
        uint256 currentBalance,
        uint256 newBalance,
        string memory memo
    ) external virtual override onlyAdmin onlyWhenShareholderExists(account) {
        require(
            currentBalance == moneyMarketFund.balanceOf(account),
            "CURRENT_BALANCE_MISMATCH"
        );
        require(
            newBalance != moneyMarketFund.balanceOf(account),
            "NO_ADJUSTMENT_REQUIRED"
        );

        if (currentBalance > newBalance) {
            moneyMarketFund.burnShares(account, (currentBalance - newBalance));
            emit BalanceAdjusted(account, (currentBalance - newBalance), memo);
        } else {
            moneyMarketFund.mintShares(account, (newBalance - currentBalance));
            emit BalanceAdjusted(account, (newBalance - currentBalance), memo);
        }
        moneyMarketFund.updateHolderInList(account);
    }

    /**
     * @notice Distributes dividends to the account if it has holdings.
     *
     * The amount of shares to distribute in the form of divideds are calculated as follows:
     *
     *      Share dividends = (account's balance * rate) / price
     *
     * This operation will mint or burn shares according to the rate provided.
     *      If rate > 0 it will mint shares
     *      If rate < 0 it will burn shares
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate for the given shareholder
     * @param price The NAV price per share
     *
     */
    function distributeDividends(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Distributes dividends and settles existing requests prior to the specified date for the given account.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate
     * @param price The NAV price per share
     *
     */
    function endOfDay(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Settles existing requests prior to the specified date for the given account.
     *
     * This operation will mint or burn shares according to the request type.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param price The NAV price per share
     *
     */
    function settleTransactions(
        address[] memory accounts,
        uint256 date,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    // -------------------- Dividends --------------------  //

    function _payDividend(
        address account,
        int256 rate,
        uint256 dividendShares
    ) internal virtual {
        if (rate > 0) {
            moneyMarketFund.mintShares(account, dividendShares);
        }
    }

    function _handleNegativeYield(
        address account,
        int256 rate,
        uint256 dividendShares
    ) internal whenLessThanZero(rate) {
        uint256 negativeYield;
        if (dividendShares < moneyMarketFund.balanceOf(account)) {
            negativeYield = dividendShares;
        } else {
            negativeYield = moneyMarketFund.balanceOf(account);
        }
        moneyMarketFund.burnShares(account, negativeYield);
    }

    // -------------------- Transactions --------------------  //

    function _processSettlements(
        address account,
        uint256 date,
        uint256 price
    ) internal virtual whenTransactionsExist(account) {
        bytes32[] memory pendingTxs = ITransactionStorage(
            modules.getModuleAddress(TRANSACTIONAL_MODULE)
        ).getAccountTransactions(account);
        for (uint256 i = 0; i < pendingTxs.length; ) {
            bytes32 txId = pendingTxs[i];
            (
                uint8 txType,
                uint256 txDate,
                uint256 amount,

            ) = ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).getTransactionDetail(txId);
            require(
                _isTypeSupported(ITransactionStorage.TransactionType(txType)),
                "INVALID_TRANSACTION_TYPE"
            );
            if (txDate <= date) {
                if (
                    _isLiquidation(ITransactionStorage.TransactionType(txType))
                ) {
                    _handleLiquidation(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                } else if (
                    _isPurchase(ITransactionStorage.TransactionType(txType))
                ) {
                    _handlePurchase(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                }
                moneyMarketFund.updateHolderInList(account);
                ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).clearTransactionStorage(account, txId);
            }
            unchecked {
                i++;
            }
        }
        ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
            .unlistFromAccountsWithPendingTransactions(account);
    }

    function _processDividends(
        address account,
        uint256 date,
        int256 rate,
        uint256 price
    ) internal virtual {
        if (moneyMarketFund.hasHoldings(account)) {
            uint256 dividendAmount = moneyMarketFund.balanceOf(account) *
                uint256(abs(rate));
            uint256 dividendShares = dividendAmount / price;

            _payDividend(account, rate, dividendShares);
            // handle very unlikely scenario if occurs
            _handleNegativeYield(account, rate, dividendShares);
            moneyMarketFund.removeEmptyHolderFromList(account);

            emit DividendDistributed(
                account,
                date,
                rate,
                price,
                dividendShares
            );
        }
    }

    function _handleLiquidation(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 scaleFactor = moneyMarketFund.NUMBER_SCALE_FACTOR();
        if (txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION) {
            uint256 lastBalance = moneyMarketFund.balanceOf(account);
            moneyMarketFund.burnShares(account, lastBalance);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                (lastBalance * price) / scaleFactor,
                lastBalance
            );
        } else {
            uint256 shares = _getQuantityOfTokens(scaleFactor, amount, price);
            moneyMarketFund.burnShares(account, shares);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                amount,
                shares
            );
        }
    }

    function _handlePurchase(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 shares = _getQuantityOfTokens(
            moneyMarketFund.NUMBER_SCALE_FACTOR(),
            amount,
            price
        );
        emit TransactionSettled(
            account,
            date,
            uint8(txType),
            txId,
            price,
            amount,
            shares
        );
        moneyMarketFund.mintShares(account, shares);
    }

    function _isTypeSupported(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE ||
            txType == ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION);
    }

    function _isPurchase(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE);
    }

    function _isLiquidation(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType ==
            ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION);
    }

    // ------------------------------------------------------------------- //

    function _getQuantityOfTokens(
        uint256 scaleFactor,
        uint256 amount,
        uint256 price
    ) internal pure virtual returns (uint256) {
        return ((amount * scaleFactor) / price);
    }

    function abs(int x) internal pure virtual returns (int) {
        return x >= 0 ? x : -x;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/authorization/AuthorizationModule_V1.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";
import {IAccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/IAccessControlUpgradeable.sol";
import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

import {ModuleRegistry} from "../../../ModuleRegistry.sol";

contract AuthorizationModule_V1 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IAuthorization
{
    bytes32 public constant MODULE_ID = keccak256("MODULE_AUTHORIZATION");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 public constant ROLE_AUTHORIZATION_ADMIN =
        keccak256("ROLE_AUTHORIZATION_ADMIN");
    bytes32 public constant ROLE_FUND_ADMIN = keccak256("ROLE_FUND_ADMIN");
    bytes32 public constant ROLE_FUND_AUTHORIZED =
        keccak256("ROLE_FUND_AUTHORIZED");
    // Inter-module comm
    bytes32 public constant WRITE_ACCESS_TRANSACTION =
        keccak256("WRITE_ACCESS_TRANSACTION");
    bytes32 public constant WRITE_ACCESS_TOKEN =
        keccak256("WRITE_ACCESS_TOKEN");

    address tokenAddress;

    /// @dev This is emitted when an account is authorized
    event AccountAuthorized(address indexed account);
    /// @dev This is emitted when an account is deauthorized
    event AccountDeauthorized(address indexed account);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _moduleOwner,
        address _authAdmin,
        address _fundAdmin,
        address _modRegistry,
        address _tokenRegistry,
        string memory _defaultToken
    ) public initializer {
        require(
            _moduleOwner != address(0) &&
                _authAdmin != address(0) &&
                _fundAdmin != address(0),
            "INVALID_ADDRESS"
        );
        require(_modRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        require(_tokenRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        __BaseUpgradeableModule_init();
        __AccessControlEnumerable_init();
        modules = ModuleRegistry(_modRegistry);
        tokenAddress = TokenRegistry(_tokenRegistry).getTokenAddress(_defaultToken);
        require(tokenAddress != address(0), "INVALID_TOKEN_ADDRESS");

        _grantRole(DEFAULT_ADMIN_ROLE, _moduleOwner);
        _setRoleAdmin(ROLE_MODULE_OWNER, ROLE_MODULE_OWNER);
        _grantRole(ROLE_MODULE_OWNER, _moduleOwner);

        _setRoleAdmin(ROLE_AUTHORIZATION_ADMIN, ROLE_AUTHORIZATION_ADMIN);
        _grantRole(ROLE_AUTHORIZATION_ADMIN, _authAdmin);

        _setRoleAdmin(ROLE_FUND_ADMIN, ROLE_FUND_ADMIN);
        _grantRole(ROLE_FUND_ADMIN, _fundAdmin);

        _setRoleAdmin(ROLE_FUND_AUTHORIZED, ROLE_AUTHORIZATION_ADMIN);
        _setRoleAdmin(WRITE_ACCESS_TRANSACTION, ROLE_MODULE_OWNER);
        _setRoleAdmin(WRITE_ACCESS_TOKEN, ROLE_MODULE_OWNER);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    // -------------------- Account Management --------------------  //

    /**
     * @dev Grants the shareholder status to the given account.
     *
     * Only shareholders can have requests defined by the {ITransactionStorage} interface.
     *
     * @param account The address to grant the shareholder status
     *
     */
    function authorizeAccount(
        address account
    ) external virtual override onlyRole(ROLE_AUTHORIZATION_ADMIN) {
        require(account != address(0), "INVALID_ADDRESS");
        require(
            !hasRole(ROLE_FUND_AUTHORIZED, account),
            "SHAREHOLDER_ALREADY_EXISTS"
        );
        _grantRole(ROLE_FUND_AUTHORIZED, account);
        emit AccountAuthorized(account);
    }

    /**
     * @dev Revokes the shareholder status from the given account.
     *
     * Only shareholders can have requests defined by the {ITransactionStorage} interface.
     *
     * @param account The address to revoke the shareholder status from
     *
     */
    function deauthorizeAccount(
        address account
    ) external virtual override onlyRole(ROLE_AUTHORIZATION_ADMIN) {
        require(account != address(0), "INVALID_ADDRESS");
        address txModule = modules.getModuleAddress(
            keccak256("MODULE_TRANSACTIONAL")
        );
        require(txModule != address(0), "MODULE_REQUIRED_NOT_FOUND");
        require(
            hasRole(ROLE_FUND_AUTHORIZED, account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        require(
            !ITransactionStorage(txModule).hasTransactions(account),
            "PENDING_TRANSACTIONS_EXIST"
        );
        require(
            IHoldings(tokenAddress).getShareHoldings(account) == 0,
            "ACCOUNT_HAS_BALANCE"
        );

        _revokeRole(ROLE_FUND_AUTHORIZED, account);
        emit AccountDeauthorized(account);
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
     * - the caller must be `account`, the only exception to this rule is
     *   for accounts that have the role 'ROLE_FUND_AUTHORIZED', in such cases
     *   the function caller is required to have the role 'ROLE_AUTHORIZATION_ADMIN'
     *
     * May emit a {RoleRevoked} event.
     *
     */
    function renounceRole(
        bytes32 role,
        address account
    )
        public
        virtual
        override(AccessControlUpgradeable, IAccessControlUpgradeable)
    {
        if (role == ROLE_FUND_AUTHORIZED) {
            require(
                hasRole(ROLE_FUND_AUTHORIZED, account),
                "ACCOUNT_IS_NOT_A_SHAREHOLDER"
            );
            require(
                hasRole(ROLE_AUTHORIZATION_ADMIN, _msgSender()),
                "CALLER_IS_NOT_AN_ADMIN"
            );
        } else {
            require(
                account == _msgSender(),
                "AccessControl: can only renounce roles for self"
            );
        }

        _revokeRole(role, account);
    }

    // --------------------------- Views ---------------------------  //

    function isAccountAuthorized(
        address account
    ) external view virtual override returns (bool) {
        return hasRole(ROLE_FUND_AUTHORIZED, account);
    }

    function isAdminAccount(
        address account
    ) external view virtual override returns (bool) {
        return hasRole(ROLE_FUND_ADMIN, account);
    }

    function getAuthorizedAccountsCount()
        external
        view
        virtual
        override
        returns (uint256)
    {
        return getRoleMemberCount(ROLE_FUND_AUTHORIZED);
    }

    function getAuthorizedAccountAt(
        uint256 index
    ) external view virtual override returns (address) {
        return getRoleMember(ROLE_FUND_AUTHORIZED, index);
    }

    function getVersion() public pure virtual override returns (uint8) {
        return 1;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/authorization/AuthorizationModule_V2.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";
import {IAccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/IAccessControlUpgradeable.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

import {ModuleRegistry} from "../../../ModuleRegistry.sol";

contract AuthorizationModule_V2 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IAuthorization,
    IAccountManager
{
    // Role-based Access Control
    bytes32 public constant MODULE_ID = keccak256("MODULE_AUTHORIZATION");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 public constant ROLE_AUTHORIZATION_ADMIN =
        keccak256("ROLE_AUTHORIZATION_ADMIN");
    bytes32 public constant ROLE_FUND_ADMIN = keccak256("ROLE_FUND_ADMIN");
    bytes32 public constant ROLE_FUND_AUTHORIZED =
        keccak256("ROLE_FUND_AUTHORIZED");
    // Inter-module comm
    bytes32 public constant WRITE_ACCESS_TRANSACTION =
        keccak256("WRITE_ACCESS_TRANSACTION");
    bytes32 public constant WRITE_ACCESS_TOKEN =
        keccak256("WRITE_ACCESS_TOKEN");
    bytes32 public constant WRITE_ACCESS_ACC_RECOVERY =
        keccak256("WRITE_ACCESS_ACC_RECOVERY");
    // Account status
    bytes32 public constant ACCESS_CONTROL_FROZEN =
        keccak256("ACCESS_CONTROL_FROZEN");

    address tokenAddress;

    /// @dev This is emitted when an account is authorized
    event AccountAuthorized(address indexed account);
    /// @dev This is emitted when an account is deauthorized
    event AccountDeauthorized(address indexed account);
    /// @dev This is emmited when an account is frozen
    event AccountFrozen(address indexed account, string memo);
    /// @dev This is emmited when an account is unfrozen
    event AccountUnfrozen(address indexed account, string memo);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // Set up the new roles for account status (frozen/unfrozen) and recovery
    function initializeP2PCapability() public reinitializer(2) {
        _setRoleAdmin(ACCESS_CONTROL_FROZEN, ROLE_AUTHORIZATION_ADMIN);
        _setRoleAdmin(WRITE_ACCESS_ACC_RECOVERY, ROLE_AUTHORIZATION_ADMIN);

        _grantRole(
            WRITE_ACCESS_ACC_RECOVERY,
            modules.getModuleAddress(keccak256("MODULE_TRANSFER_AGENT"))
        );
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    // -------------------- Account Management --------------------  //

    /**
     * @dev Grants the shareholder status to the given account.
     *
     * Only shareholders can have requests defined by the {ITransactionStorage} interface.
     *
     * @param account The address to grant the shareholder status
     *
     */
    function authorizeAccount(
        address account
    ) external virtual override onlyRole(ROLE_AUTHORIZATION_ADMIN) {
        require(account != address(0), "INVALID_ADDRESS");
        require(
            !hasRole(ROLE_FUND_AUTHORIZED, account),
            "SHAREHOLDER_ALREADY_EXISTS"
        );
        _grantRole(ROLE_FUND_AUTHORIZED, account);
        emit AccountAuthorized(account);
    }

    /**
     * @dev Revokes the shareholder status from the given account.
     *
     * Only shareholders can have requests defined by the {ITransactionStorage} interface.
     *
     * @param account The address to revoke the shareholder status from
     *
     */
    function deauthorizeAccount(
        address account
    ) external virtual override onlyRole(ROLE_AUTHORIZATION_ADMIN) {
        require(account != address(0), "INVALID_ADDRESS");
        address txModule = modules.getModuleAddress(
            keccak256("MODULE_TRANSACTIONAL")
        );
        require(txModule != address(0), "MODULE_REQUIRED_NOT_FOUND");
        require(
            hasRole(ROLE_FUND_AUTHORIZED, account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        require(
            !ITransactionStorage(txModule).hasTransactions(account),
            "PENDING_TRANSACTIONS_EXIST"
        );
        require(
            IHoldings(tokenAddress).getShareHoldings(account) == 0,
            "ACCOUNT_HAS_BALANCE"
        );

        _revokeRole(ROLE_FUND_AUTHORIZED, account);
        emit AccountDeauthorized(account);
    }

    /**
     * @dev Freezes a shareholder's account
     * A frozen account cannot have or create any new trades (pending requests)
     *
     * @param account The address of the shareholder's account
     * @param memo a memo for the frozen operation
     */
    function freezeAccount(
        address account,
        string memory memo
    ) external virtual override onlyRole(ROLE_AUTHORIZATION_ADMIN) {
        address txModule = modules.getModuleAddress(
            keccak256("MODULE_TRANSACTIONAL")
        );
        require(
            hasRole(ROLE_FUND_AUTHORIZED, account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        require(
            !hasRole(ACCESS_CONTROL_FROZEN, account),
            "ACCOUNT_ALREADY_FROZEN"
        );
        require(
            !ITransactionStorage(txModule).hasTransactions(account),
            "PENDING_TRANSACTIONS_EXIST"
        );

        _grantRole(ACCESS_CONTROL_FROZEN, account);
        emit AccountFrozen(account, memo);
    }

    /**
     * @dev Unfreezes a shareholder's account
     * Unfreezing an account restores its capability to have or create new trades.
     *
     * @param account The address of the shareholder's account
     * @param memo a memo for the unfrozen operation
     */
    function unfreezeAccount(
        address account,
        string memory memo
    ) external virtual override onlyRole(ROLE_AUTHORIZATION_ADMIN) {
        require(
            hasRole(ROLE_FUND_AUTHORIZED, account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        require(
            hasRole(ACCESS_CONTROL_FROZEN, account),
            "ACCOUNT_IS_NOT_FROZEN"
        );

        _revokeRole(ACCESS_CONTROL_FROZEN, account);
        emit AccountUnfrozen(account, memo);
    }

    /**
     * @dev Unfreezes and deauthorizes an account after an account recovery event
     * This operation is intended to be called by the module with required
     * 'WRITE_ACCESS_ACC_RECOVERY' privileges during the recovery
     *
     * @param from the origin account
     * @param to the destination account
     */
    function removeAccountPostRecovery(
        address from,
        address to
    ) external virtual override onlyRole(WRITE_ACCESS_ACC_RECOVERY) {
        require(
            hasRole(ROLE_FUND_AUTHORIZED, from) &&
                hasRole(ROLE_FUND_AUTHORIZED, to),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );

        if (hasRole(ACCESS_CONTROL_FROZEN, from)) {
            _revokeRole(ACCESS_CONTROL_FROZEN, from);
            emit AccountUnfrozen(from, "POST_RECOVERY");
        }

        _revokeRole(ROLE_FUND_AUTHORIZED, from);
        emit AccountDeauthorized(from);
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
     * - the caller must be `account`, the only exception to this rule is
     *   for accounts that have the role 'ROLE_FUND_AUTHORIZED', in such cases
     *   the function caller is required to have the role 'ROLE_AUTHORIZATION_ADMIN'
     *
     * May emit a {RoleRevoked} event.
     *
     */
    function renounceRole(
        bytes32 role,
        address account
    )
        public
        virtual
        override(AccessControlUpgradeable, IAccessControlUpgradeable)
    {
        if (role == ROLE_FUND_AUTHORIZED || role == ACCESS_CONTROL_FROZEN) {
            require(
                hasRole(ROLE_FUND_AUTHORIZED, account),
                "ACCOUNT_IS_NOT_A_SHAREHOLDER"
            );
            require(
                hasRole(ROLE_AUTHORIZATION_ADMIN, _msgSender()),
                "CALLER_IS_NOT_AN_ADMIN"
            );
        } else {
            require(
                account == _msgSender(),
                "AccessControl: can only renounce roles for self"
            );
        }

        _revokeRole(role, account);
    }

    // --------------------------- Views ---------------------------  //

    function isAccountAuthorized(
        address account
    ) external view virtual override returns (bool) {
        return hasRole(ROLE_FUND_AUTHORIZED, account);
    }

    function isAdminAccount(
        address account
    ) external view virtual override returns (bool) {
        return hasRole(ROLE_FUND_ADMIN, account);
    }

    function isAccountFrozen(
        address account
    ) external view virtual override returns (bool) {
        return hasRole(ACCESS_CONTROL_FROZEN, account);
    }

    function getAuthorizedAccountsCount()
        external
        view
        virtual
        override
        returns (uint256)
    {
        return getRoleMemberCount(ROLE_FUND_AUTHORIZED);
    }

    function getAuthorizedAccountAt(
        uint256 index
    ) external view virtual override returns (address) {
        return getRoleMember(ROLE_FUND_AUTHORIZED, index);
    }

    function getVersion() public pure virtual override returns (uint8) {
        return 2;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/intent_validation/IntentValidationModule_V1.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";
import {ModuleRegistry} from "../../../../infrastructure/ModuleRegistry.sol";
import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IDeviceValidation} from "../../../../interfaces/IDeviceValidation.sol";

contract IntentValidationModule_V1 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IDeviceValidation
{
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.UintSet;

    uint256 public constant MAX_DEVICES = 50;

    bytes32 public constant MODULE_ID = keccak256("MODULE_INTENT_VALIDATION");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");

    /// @dev This is emitted when a new is key is added for the account-device unique pair
    event DeviceKeyAdded(address indexed account, uint256 indexed deviceId);
    /// @dev This is emitted when an existing key is updated for the account-device unique pair
    event DeviceKeyUpdated(address indexed account, uint256 indexed deviceId);
    /// @dev This is emitted when a new is key is removed for the account-device unique pair
    event DeviceKeyRemoved(address indexed account, uint256 indexed deviceId);

    mapping(address => EnumerableSetUpgradeable.UintSet) devicesMap;
    mapping(address => mapping(uint256 => string)) deviceKeyMap;

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _moduleOwner,
        address _modRegistry
    ) public initializer {
        require(_moduleOwner != address(0), "INVALID_ADDRESS");
        require(_modRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        __BaseUpgradeableModule_init();
        __AccessControlEnumerable_init();
        modules = ModuleRegistry(_modRegistry);
        _grantRole(DEFAULT_ADMIN_ROLE, _moduleOwner);
        _setRoleAdmin(ROLE_MODULE_OWNER, ROLE_MODULE_OWNER);
        _grantRole(ROLE_MODULE_OWNER, _moduleOwner);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() external pure virtual override returns (uint8) {
        return 1;
    }

    /**
     * @notice Adds a key for the unique account-deviceId pair
     *
     * @dev The deviceId and key are generated off-chain and on a per account basis,
     *      this implies the same value for any deviceId and/or key could be the same
     *      for multiple accounts.
     *
     * @param account The address of the shareholder's account
     * @param deviceId The ID of the device
     * @param key The key associated with the unique account-deviceId pair
     *
     */
    function setDeviceKey(
        address account,
        uint256 deviceId,
        string memory key
    ) external virtual override onlyAdmin {
        if (devicesMap[account].add(deviceId)) {
            emit DeviceKeyAdded(account, deviceId);
        } else {
            emit DeviceKeyUpdated(account, deviceId);
        }
        deviceKeyMap[account][deviceId] = key;
    }

    /**
     * @notice Removes the key associated to the unique account-deviceId pair
     *
     * @dev The deviceId should exist or this operation will revert with an error.
     *
     * @param account The address of the shareholder's account
     * @param deviceId The ID of the device
     *
     */
    function clearDeviceKey(
        address account,
        uint256 deviceId
    ) external virtual override onlyAdmin {
        require(devicesMap[account].length() != 0, "INVALID_ACCOUNT");
        _removeDeviceKey(account, deviceId);
    }

    /**
     * @notice Removes all the device's keys associated with the given account
     *
     * @dev The account should exist or this operation will revert with an error.
     *
     * @param account The address of the shareholder's account
     *
     */
    function clearAccountKeys(
        address account
    ) external virtual override onlyAdmin {
        uint256[] memory devices = devicesMap[account].values();
        for (uint256 i = 0; i < devices.length; ) {
            _removeDeviceKey(account, devices[i]);
            unchecked {
                i++;
            }
        }
    }

    function getDeviceKey(
        address account,
        uint256 deviceId
    ) external view virtual returns (string memory key) {
        require(devicesMap[account].contains(deviceId), "INVALID_DEVICE_ID");
        key = deviceKeyMap[account][deviceId];
    }

    function getDeviceKeys(
        address account
    )
        external
        view
        virtual
        override
        returns (uint256[] memory devices, string[] memory keys)
    {
        devices = devicesMap[account].values();
        keys = new string[](devicesMap[account].length());
        for (uint256 i = 0; i < devicesMap[account].length(); ) {
            keys[i] = deviceKeyMap[account][devices[i]];
            unchecked {
                i++;
            }
        }
    }

    function hasDevices(
        address account
    ) external view virtual override returns (bool) {
        return devicesMap[account].length() != 0;
    }

    // -------------------- Internal --------------------  //

    function _removeDeviceKey(
        address account,
        uint256 deviceId
    ) internal virtual {
        require(devicesMap[account].contains(deviceId), "INVALID_DEVICE_ID");
        delete deviceKeyMap[account][deviceId];
        devicesMap[account].remove(deviceId);
        emit DeviceKeyRemoved(account, deviceId);
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/token/MoneyMarketFund_V1.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {ModuleRegistry} from "../../../../infrastructure/ModuleRegistry.sol";
import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {ITransferAgent} from "../../../../interfaces/ITransferAgent.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";

/**
 * @title Implementation of a Money Market Fund
 *
 * This implementation represents a 40 Act Fund in which all operations are cash based.
 * It means all amounts passed to the contract functions with the exception of the contructor's
 * _seed parameter represent the value (in terms of fiat currency) of the fund shares to buy or sell.
 *
 * Purchases or sells of shares requested are settled calling any of the settleTransactions or EndOfDay functions.
 * The price supplied in the settlement functions corresponds to the NAV per share at the moment of the market closing.
 *
 */
contract MoneyMarketFund_V1 is
    Initializable,
    ERC20Upgradeable,
    AccessControlUpgradeable,
    UUPSUpgradeable,
    IHoldings
{
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant MAX_PAGE_SIZE_BALANCE = 10;
    uint256 public constant NUMBER_SCALE_FACTOR = 1E18;

    bytes32 public constant ROLE_TOKEN_OWNER = keccak256("ROLE_TOKEN_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    // ******************** State Variables ******************** //
    // ********************************************************* //

    uint256 public lastKnownPrice;
    ModuleRegistry moduleRegistry;
    EnumerableSet.AddressSet accountsWithHoldings;

    // ********************* Modifiers ********************* //
    // ***************************************************** //

    modifier onlyAdminOrWriteAccess() {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(_msgSender()) ||
                AccessControlUpgradeable(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()),
            "NO_WRITE_ACCESS"
        );
        _;
    }

    // -------------------- Pagination --------------------  //

    modifier onlyWithValidPageSize(uint256 pageSize, uint256 maxPageSize) {
        require(
            pageSize > 0 && pageSize <= maxPageSize,
            "INVALID_PAGINATION_SIZE"
        );
        _;
    }

    // ********************************************************************* //
    // **********************     MoneyMarketFund     ********************** //
    // ********************************************************************* //

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _initToken(address owner, uint256 seed, uint256 price) private {
        lastKnownPrice = price;
        if (seed > 0) {
            _mint(owner, seed);
        }
    }

    function initialize(
        address _owner_,
        uint256 _seed_,
        uint256 _price_,
        string memory _name_,
        string memory _symbol_,
        address _moduleRegistry_
    ) public initializer {
        require(_owner_ != address(0), "Owner must not be empty!");
        require(_moduleRegistry_ != address(0), "INVALID_REGISTRY_ADDRESS");
        __ERC20_init(_name_, _symbol_);
        __AccessControl_init();
        __UUPSUpgradeable_init();
        moduleRegistry = ModuleRegistry(_moduleRegistry_);
        _grantRole(DEFAULT_ADMIN_ROLE, _owner_);
        _setRoleAdmin(ROLE_TOKEN_OWNER, ROLE_TOKEN_OWNER);
        _grantRole(ROLE_TOKEN_OWNER, _owner_);

        _initToken(_owner_, _seed_, _price_);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_TOKEN_OWNER) {}

    // ************************* Public Interface ************************* //
    // ******************************************************************** //

    function mintShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _mint(account, shares);
    }

    function burnShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _burn(account, shares);
    }

    function updateHolderInList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) > 0) {
            accountsWithHoldings.add(account);
        } else {
            accountsWithHoldings.remove(account);
        }
    }

    function removeEmptyHolderFromList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) == 0) {
            accountsWithHoldings.remove(account);
        }
    }

    function updateLastKnownPrice(
        uint256 price
    ) external virtual onlyAdminOrWriteAccess {
        lastKnownPrice = price;
    }

    // -------------------- Utility view functions --------------------  //

    function hasEnoughHoldings(
        address account,
        uint256 amount
    ) external view virtual override returns (bool) {
        uint256 holdings = ((balanceOf(account) * lastKnownPrice) /
            NUMBER_SCALE_FACTOR);
        return (holdings > 0 && holdings >= amount);
    }

    function getShareHoldings(
        address account
    ) external view virtual override returns (uint256) {
        return balanceOf(account);
    }

    // **************** Info Query Utilities (External) **************** //

    function getShareholdersWithHoldingsCount()
        external
        view
        virtual
        returns (uint256)
    {
        return accountsWithHoldings.length();
    }

    function getSharesOutstanding() external view virtual returns (uint256) {
        return totalSupply();
    }

    function hasHoldings(address account) external view virtual returns (bool) {
        return accountsWithHoldings.contains(account);
    }

    function getAccountsBalances(
        uint256 pageSize,
        uint256 startIndex
    )
        external
        view
        virtual
        onlyWithValidPageSize(pageSize, MAX_PAGE_SIZE_BALANCE)
        returns (
            bool hasNext,
            uint256 nextIndex,
            address[] memory accounts,
            uint256[] memory balances
        )
    {
        uint256 count = IAuthorization(
            moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
        ).getAuthorizedAccountsCount();
        require(startIndex <= count, "INVALID_PAGINATION_INDEX");

        uint256 arraySize = pageSize;
        hasNext = true;

        uint256 end = startIndex + pageSize;
        if (end >= count) {
            end = count;
            arraySize = end - startIndex;
            hasNext = false;
        }

        accounts = new address[](arraySize);
        balances = new uint256[](arraySize);
        nextIndex = end;

        for (uint256 i = startIndex; i < end; ) {
            uint256 resIdx = i - startIndex;
            accounts[resIdx] = IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).getAuthorizedAccountAt(i);
            balances[resIdx] = balanceOf(accounts[resIdx]);
            unchecked {
                i++;
            }
        }
    }

    // **************** Internal Functions ***************** //
    // ***************************************************** //

    // -------------------- ERC20 --------------------  //
    // https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20-_beforeTokenTransfer-address-address-uint256-
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        // token transfers must comply with the policy
        // defined by the concrete fund implementation.
        _checkTransferPolicy(from, to);
    }

    // -------------------- Compliance --------------------  //

    // Token transfer policy for this fund
    // 1. Tokens can only be minted to the admin or shareholder accounts
    // 2. Only the admin account is allowed to perform token transfers (this could change in the future)
    // 3. Token transfers by accounts other than the admin account will revert
    function _checkTransferPolicy(
        address from,
        address to
    ) internal view virtual {
        if (from == address(0)) {
            // Minting policy
            require(
                IAuthorization(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).isAdminAccount(to) ||
                    IAuthorization(
                        moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                    ).isAccountAuthorized(to),
                "TRANSFER_RESTRICTION"
            );
        } else if (
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(from)
        ) {
            // Transfer policy
            if (to != address(0)) {
                require(
                    IAuthorization(
                        moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                    ).isAccountAuthorized(to),
                    "TRANSFER_RESTRICTION"
                );
            }
        } else if (
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(from)
        ) {
            // Burning policy
            require(to == address(0), "TRANSFER_RESTRICTION");
        } else {
            // Any other transfer is restricted
            revert("TRANSFER_RESTRICTION");
        }
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/token/MoneyMarketFund_V2.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {ModuleRegistry} from "../../../../infrastructure/ModuleRegistry.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {ITransferAgent} from "../../../../interfaces/ITransferAgent.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";

/**
 * @title Implementation of a Money Market Fund
 *
 * This implementation represents a 40 Act Fund in which all operations are cash based.
 * It means all amounts passed to the contract functions with the exception of the contructor's
 * _seed parameter represent the value (in terms of fiat currency) of the fund shares to buy or sell.
 *
 * Purchases or sells of shares requested are settled calling any of the settleTransactions or EndOfDay functions.
 * The price supplied in the settlement functions corresponds to the NAV per share at the moment of the market closing.
 *
 */
contract MoneyMarketFund_V2 is
    Initializable,
    ERC20Upgradeable,
    AccessControlUpgradeable,
    UUPSUpgradeable,
    IHoldings
{
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant MAX_PAGE_SIZE_BALANCE = 10;
    uint256 public constant NUMBER_SCALE_FACTOR = 1E18;

    bytes32 public constant ROLE_TOKEN_OWNER = keccak256("ROLE_TOKEN_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    // ******************** State Variables ******************** //
    // ********************************************************* //

    uint256 public lastKnownPrice;
    ModuleRegistry moduleRegistry;
    EnumerableSet.AddressSet accountsWithHoldings;

    // ********************* Modifiers ********************* //
    // ***************************************************** //

    modifier onlyAdminOrWriteAccess() {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(_msgSender()) ||
                AccessControlUpgradeable(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()),
            "NO_WRITE_ACCESS"
        );
        _;
    }

    // -------------------- Pagination --------------------  //

    modifier onlyWithValidPageSize(uint256 pageSize, uint256 maxPageSize) {
        require(
            pageSize > 0 && pageSize <= maxPageSize,
            "INVALID_PAGINATION_SIZE"
        );
        _;
    }

    // ********************************************************************* //
    // **********************     MoneyMarketFund     ********************** //
    // ********************************************************************* //

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_TOKEN_OWNER) {}

    // ************************* Public Interface ************************* //
    // ******************************************************************** //

    function mintShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _mint(account, shares);
    }

    function burnShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _burn(account, shares);
    }

    function updateHolderInList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) > 0) {
            accountsWithHoldings.add(account);
        } else {
            accountsWithHoldings.remove(account);
        }
    }

    function removeEmptyHolderFromList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) == 0) {
            accountsWithHoldings.remove(account);
        }
    }

    function updateLastKnownPrice(
        uint256 price
    ) external virtual onlyAdminOrWriteAccess {
        lastKnownPrice = price;
    }

    // -------------------- Utility view functions --------------------  //

    function hasEnoughHoldings(
        address account,
        uint256 amount
    ) external view virtual override returns (bool) {
        uint256 holdings = ((balanceOf(account) * lastKnownPrice) /
            NUMBER_SCALE_FACTOR);
        return (holdings > 0 && holdings >= amount);
    }

    function getShareHoldings(
        address account
    ) external view virtual override returns (uint256) {
        return balanceOf(account);
    }

    // **************** Info Query Utilities (External) **************** //

    function getShareholdersWithHoldingsCount()
        external
        view
        virtual
        returns (uint256)
    {
        return accountsWithHoldings.length();
    }

    function getSharesOutstanding() external view virtual returns (uint256) {
        return totalSupply();
    }

    function hasHoldings(address account) external view virtual returns (bool) {
        return accountsWithHoldings.contains(account);
    }

    function getAccountsBalances(
        uint256 pageSize,
        uint256 startIndex
    )
        external
        view
        virtual
        onlyWithValidPageSize(pageSize, MAX_PAGE_SIZE_BALANCE)
        returns (
            bool hasNext,
            uint256 nextIndex,
            address[] memory accounts,
            uint256[] memory balances,
            bool[] memory status
        )
    {
        uint256 count = IAuthorization(
            moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
        ).getAuthorizedAccountsCount();
        require(startIndex <= count, "INVALID_PAGINATION_INDEX");

        uint256 arraySize = pageSize;
        hasNext = true;

        uint256 end = startIndex + pageSize;
        if (end >= count) {
            end = count;
            arraySize = end - startIndex;
            hasNext = false;
        }

        accounts = new address[](arraySize);
        balances = new uint256[](arraySize);
        status = new bool[](arraySize);
        nextIndex = end;

        for (uint256 i = startIndex; i < end; ) {
            uint256 resIdx = i - startIndex;
            accounts[resIdx] = IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).getAuthorizedAccountAt(i);
            balances[resIdx] = balanceOf(accounts[resIdx]);
            status[resIdx] = IAccountManager(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountFrozen(accounts[resIdx]);
            unchecked {
                i++;
            }
        }
    }

    function getVersion() public pure virtual returns (uint8) {
        return 2;
    }

    // **************** Internal Functions ***************** //
    // ***************************************************** //

    // -------------------- ERC20 --------------------  //
    // https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20-_beforeTokenTransfer-address-address-uint256-
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        // token transfers must comply with the policy
        // defined by the concrete fund implementation.
        _checkTransferPolicy(from, to);
    }

    // -------------------- Compliance --------------------  //

    // Token transfer policy for this fund
    // 1. Tokens can only be minted to the admin or shareholder accounts
    // 2. Only the admin account is allowed to perform token transfers (this could change in the future)
    // 3. Token transfers by accounts other than the admin account will revert
    function _checkTransferPolicy(
        address from,
        address to
    ) internal view virtual {
        if (from == address(0)) {
            // Minting policy
            require(
                IAuthorization(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).isAdminAccount(to) ||
                    IAuthorization(
                        moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                    ).isAccountAuthorized(to),
                "TRANSFER_RESTRICTION"
            );
        } else if (
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(from)
        ) {
            // Transfer policy
            if (to != address(0)) {
                require(
                    IAuthorization(
                        moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                    ).isAccountAuthorized(to),
                    "TRANSFER_RESTRICTION"
                );
            }
        } else if (
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(from)
        ) {
            // Burning policy
            require(to == address(0), "TRANSFER_RESTRICTION");
        } else {
            // Any other transfer is restricted
            revert("TRANSFER_RESTRICTION");
        }
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/token/MoneyMarketFund_V3.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {ModuleRegistry} from "../../../../infrastructure/ModuleRegistry.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {ITransferAgent} from "../../../../interfaces/ITransferAgent.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {IAdminTransfer} from "../../../../interfaces/IAdminTransfer.sol";

/**
 * @title Implementation of a Money Market Fund
 *
 * This implementation represents a 40 Act Fund in which all operations are cash based.
 * It means all amounts passed to the contract functions with the exception of the contructor's
 * _seed parameter represent the value (in terms of fiat currency) of the fund shares to buy or sell.
 *
 * Purchases or sells of shares requested are settled calling any of the settleTransactions or EndOfDay functions.
 * The price supplied in the settlement functions corresponds to the NAV per share at the moment of the market closing.
 *
 */
contract MoneyMarketFund_V3 is
    Initializable,
    ERC20Upgradeable,
    AccessControlUpgradeable,
    UUPSUpgradeable,
    IHoldings,
    IAdminTransfer
{
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant MAX_PAGE_SIZE_BALANCE = 10;
    uint256 public constant NUMBER_SCALE_FACTOR = 1E18;

    bytes32 public constant ROLE_TOKEN_OWNER = keccak256("ROLE_TOKEN_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    // ******************** State Variables ******************** //
    // ********************************************************* //

    uint256 public lastKnownPrice;
    ModuleRegistry moduleRegistry;
    EnumerableSet.AddressSet accountsWithHoldings;

    // ********************* Modifiers ********************* //
    // ***************************************************** //

    modifier onlyAdminOrWriteAccess() {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(_msgSender()) ||
                AccessControlUpgradeable(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()),
            "NO_WRITE_ACCESS"
        );
        _;
    }

    // -------------------- Pagination --------------------  //

    modifier onlyWithValidPageSize(uint256 pageSize, uint256 maxPageSize) {
        require(
            pageSize > 0 && pageSize <= maxPageSize,
            "INVALID_PAGINATION_SIZE"
        );
        _;
    }

    // ********************************************************************* //
    // **********************     MoneyMarketFund     ********************** //
    // ********************************************************************* //

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_TOKEN_OWNER) {}

    // ************************* Public Interface ************************* //
    // ******************************************************************** //

    function mintShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _mint(account, shares);
    }

    function burnShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _burn(account, shares);
    }

    /**
     * @dev Admin function to transfer shares from one account to another without the need of allowance
     * approval. It uses the internal OpenZeppellin _transfer function for implementing such use cases.
     * To ensure proper access this external API is protected with role based access control.
     *
     * @param from source account
     * @param to  destination account to transfer shares
     * @param amount the amount of shares to transfer
     */
    function transferShares(
        address from,
        address to,
        uint256 amount
    ) external virtual onlyAdminOrWriteAccess {
        _transfer(from, to, amount);
    }

    function updateHolderInList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) > 0) {
            accountsWithHoldings.add(account);
        } else {
            accountsWithHoldings.remove(account);
        }
    }

    function removeEmptyHolderFromList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) == 0) {
            accountsWithHoldings.remove(account);
        }
    }

    function updateLastKnownPrice(
        uint256 price
    ) external virtual onlyAdminOrWriteAccess {
        lastKnownPrice = price;
    }

    // -------------------- Utility view functions --------------------  //

    function hasEnoughHoldings(
        address account,
        uint256 amount
    ) external view virtual override returns (bool) {
        uint256 holdings = ((balanceOf(account) * lastKnownPrice) /
            NUMBER_SCALE_FACTOR);
        return (holdings > 0 && holdings >= amount);
    }

    function getShareHoldings(
        address account
    ) external view virtual override returns (uint256) {
        return balanceOf(account);
    }

    // **************** Info Query Utilities (External) **************** //

    function getShareholdersWithHoldingsCount()
        external
        view
        virtual
        returns (uint256)
    {
        return accountsWithHoldings.length();
    }

    function getSharesOutstanding() external view virtual returns (uint256) {
        return totalSupply();
    }

    function hasHoldings(address account) external view virtual returns (bool) {
        return accountsWithHoldings.contains(account);
    }

    function getAccountsBalances(
        uint256 pageSize,
        uint256 startIndex
    )
        external
        view
        virtual
        onlyWithValidPageSize(pageSize, MAX_PAGE_SIZE_BALANCE)
        returns (
            bool hasNext,
            uint256 nextIndex,
            address[] memory accounts,
            uint256[] memory balances,
            bool[] memory status
        )
    {
        uint256 count = IAuthorization(
            moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
        ).getAuthorizedAccountsCount();
        require(startIndex <= count, "INVALID_PAGINATION_INDEX");

        uint256 arraySize = pageSize;
        hasNext = true;

        uint256 end = startIndex + pageSize;
        if (end >= count) {
            end = count;
            arraySize = end - startIndex;
            hasNext = false;
        }

        accounts = new address[](arraySize);
        balances = new uint256[](arraySize);
        status = new bool[](arraySize);
        nextIndex = end;

        for (uint256 i = startIndex; i < end; ) {
            uint256 resIdx = i - startIndex;
            accounts[resIdx] = IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).getAuthorizedAccountAt(i);
            balances[resIdx] = balanceOf(accounts[resIdx]);
            status[resIdx] = IAccountManager(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountFrozen(accounts[resIdx]);
            unchecked {
                i++;
            }
        }
    }

    function getVersion() public pure virtual returns (uint8) {
        return 3;
    }

    // **************** Internal Functions ***************** //
    // ***************************************************** //

    // -------------------- ERC20 --------------------  //
    // https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20-_beforeTokenTransfer-address-address-uint256-
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        // token transfers must comply with the policy
        // defined by the concrete fund implementation.
        _checkTransferPolicy(from, to);
    }

    // -------------------- Compliance --------------------  //

    // Token transfer policy for this fund
    // 1. Tokens can only be minted to the admin or shareholder accounts
    // 2. Only the admin account is allowed to perform token transfers (this could change in the future)
    // 3. Token transfers by accounts other than the admin account will revert
    function _checkTransferPolicy(
        address from,
        address to
    ) internal view virtual {
        if (
            IAccessControlUpgradeable(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()) ||
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(_msgSender())
        ) {
            require(
                IAuthorization(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).isAdminAccount(to) ||
                    IAuthorization(
                        moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                    ).isAccountAuthorized(to) ||
                    to == address(0),
                "TRANSFER_RESTRICTION"
            );
        } else if (
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(_msgSender())
        ) {
            // Only Burning allowed
            require(from == _msgSender(), "TRANSFER_RESTRICTION");
            require(to == address(0), "TRANSFER_RESTRICTION");
        } else {
            // Any other type of transfer is restricted
            revert("TRANSFER_RESTRICTION");
        }
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/token/MoneyMarketFund_V4.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import { ModuleRegistry } from "../../../../infrastructure/ModuleRegistry.sol";
import { IAccountManager } from "../../../../interfaces/IAccountManager.sol";
import { IAuthorization } from "../../../../interfaces/IAuthorization.sol";
import { ITransferAgent } from "../../../../interfaces/ITransferAgent.sol";
import { IHoldings } from "../../../../interfaces/IHoldings.sol";
import { IAdminTransfer } from "../../../../interfaces/IAdminTransfer.sol";
import { IAdminInstantTransfer } from "../../../../interfaces/IAdminInstantTransfer.sol";
import { ITransferManager } from "../../../../interfaces/ITransferManager.sol";

/**
 * @title Implementation of a Money Market Fund
 *
 * This implementation represents a 40 Act Fund in which all operations are cash based.
 * It means all amounts passed to the contract functions with the exception of the contructor's
 * _seed parameter represent the value (in terms of fiat currency) of the fund shares to buy or sell.
 *
 * Purchases or sells of shares requested are settled calling any of the settleTransactions or EndOfDay functions.
 * The price supplied in the settlement functions corresponds to the NAV per share at the moment of the market closing.
 *
 */
contract MoneyMarketFund_V4 is
    Initializable,
    ERC20Upgradeable,
    AccessControlUpgradeable,
    UUPSUpgradeable,
    IHoldings,
    IAdminTransfer,
    IAdminInstantTransfer,
    ITransferManager
{
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant MAX_PAGE_SIZE_BALANCE = 10;
    uint256 public constant NUMBER_SCALE_FACTOR = 1E18;

    bytes32 public constant ROLE_TOKEN_OWNER = keccak256("ROLE_TOKEN_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    // ******************** State Variables ******************** //
    // ********************************************************* //

    uint256 public lastKnownPrice;
    ModuleRegistry moduleRegistry;
    EnumerableSet.AddressSet accountsWithHoldings;

    /// @dev Flag to enable/disable instant shareholder transfers
    bool isInstantTransferOn;
    /// @dev Flag to enable/disable regular ERC-20 shareholder transfers
    bool isERC20TransferOn;
    /// @dev Flag to enable/disable regular ERC-20 3rd party transfers
    bool isERC20ThirdPartyTransferOn;

    // ********************* Modifiers ********************* //
    // ***************************************************** //

    modifier onlyAdminOrWriteAccess() {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(_msgSender()) ||
                AccessControlUpgradeable(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()),
            "NO_WRITE_ACCESS"
        );
        _;
    }

    modifier onlyWhenShareholderExists(address account) {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        _;
    }

    modifier accountNotFrozen(address account) {
        require(
            !IAccountManager(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountFrozen(account),
            "ACCOUNT_IS_FROZEN"
        );
        _;
    }

    // -------------------- Pagination --------------------  //

    modifier onlyWithValidPageSize(uint256 pageSize, uint256 maxPageSize) {
        require(
            pageSize > 0 && pageSize <= maxPageSize,
            "INVALID_PAGINATION_SIZE"
        );
        _;
    }

    // ********************************************************************* //
    // **********************     MoneyMarketFund     ********************** //
    // ********************************************************************* //

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_TOKEN_OWNER) {}

    // ************************* Public Interface ************************* //
    // ******************************************************************** //

    function mintShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _mint(account, shares);
    }

    function burnShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _burn(account, shares);
    }

    /**
     * @notice Enables instant share transfer capability
     *
     * @dev Instant transfer capability allows an admin to transfer
     *      shares between shareholder accounts instantly
     */
    function enableInstantTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isInstantTransferOn = true;
        emit InstantTransferStatusUpdated(isInstantTransferOn);
    }

    /**
     * @notice Disables instant share transfer capability
     *
     * @dev Instant transfer capability allows an admin to transfer
     *      shares between shareholder accounts instantly
     */
    function disableInstantTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isInstantTransferOn = false;
        emit InstantTransferStatusUpdated(isInstantTransferOn);
    }

    /**
     * @notice Enables ERC-20 share transfer capability
     *
     * @dev ERC-20 transfer capability allows authorized shareholders
     *      to transfer shares between them instantly
     */
    function enableERC20Transfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20TransferOn = true;
        emit ERC20TransferStatusUpdated(isERC20TransferOn);
    }

    /**
     * @notice Disables ERC-20 share transfer capability
     *
     * @dev ERC-20 transfer capability allows authorized shareholders
     *      to transfer shares between them instantly
     */
    function disableERC20Transfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20TransferOn = false;
        emit ERC20TransferStatusUpdated(isERC20TransferOn);
    }

    /**
     * @notice Enables ERC-20 3rd party share transfer capability
     *
     * @dev ERC-20 transferFrom capability allows an authorized spender
     *      account by the shareholder to transfer shares on its behalf,
     *      however shares can only be transfered to other authorized shareholders.
     */
    function enableERC20ThirdPartyTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20ThirdPartyTransferOn = true;
        emit ERC20ThirdPartyTransferStatusUpdated(isERC20ThirdPartyTransferOn);
    }

    /**
     * @notice Disables ERC-20 3rd party share transfer capability
     *
     * @dev ERC-20 transferFrom capability allows an authorized spender
     *      account by the shareholder to transfer shares on its behalf,
     *      however shares can only be transfered to other authorized shareholders.
     */
    function disableERC20ThirdPartyTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20ThirdPartyTransferOn = false;
        emit ERC20ThirdPartyTransferStatusUpdated(isERC20ThirdPartyTransferOn);
    }

    /**
     * @notice Admin function to transfer shares from one account to another without the need of allowance
     * approval. It uses the internal OpenZeppellin _transfer function for implementing such use cases.
     * To ensure proper access this external API is protected with role based access control.
     * It performs additional validation of input data according to business requirements.
     *
     * @param from source account
     * @param to  destination account to transfer shares
     * @param amount the amount of shares to transfer
     * @param memo the amount of shares to transfer
     */
    function instantTransfer(
        address from,
        address to,
        uint256 amount,
        string memory memo
    )
        external
        virtual
        override
        onlyAdminOrWriteAccess
        onlyWhenShareholderExists(from)
        onlyWhenShareholderExists(to)
        accountNotFrozen(from)
        accountNotFrozen(to)
    {
        require(isInstantTransferOn, "INSTANT_TRANSFER_CAPABILITY_NOT_ENABLED");
        _transfer(from, to, amount);
        emit InstantTransfer(from, to, amount, memo);
    }

    /**
     * @notice See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     * - `to` and sender accounts should be authorized shareholders.
     * - `to` and sender accounts shouldn't have frozen status
     */
    function transfer(
        address to,
        uint256 amount
    )
        public
        virtual
        override
        onlyWhenShareholderExists(_msgSender())
        onlyWhenShareholderExists(to)
        accountNotFrozen(_msgSender())
        accountNotFrozen(to)
        returns (bool)
    {
        require(isInstantTransferOn, "INSTANT_TRANSFER_CAPABILITY_NOT_ENABLED");
        require(isERC20TransferOn, "ERC20_TRANSFER_CAPABILITY_NOT_ENABLED");
        return super.transfer(to, amount);
    }

    /**
     * @notice See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     * - `from` and `to` accounts should be authorized shareholders.
     * - `from` and `to` sender accounts shouldn't have frozen status
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    )
        public
        virtual
        override
        onlyWhenShareholderExists(from)
        onlyWhenShareholderExists(to)
        accountNotFrozen(from)
        accountNotFrozen(to)
        returns (bool)
    {
        require(isInstantTransferOn, "INSTANT_TRANSFER_CAPABILITY_NOT_ENABLED");
        require(
            isERC20ThirdPartyTransferOn,
            "ERC20_TRANSFER_FROM_CAPABILITY_NOT_ENABLED"
        );
        return super.transferFrom(from, to, amount);
    }

    /**
     * @dev Admin function to transfer shares from one account to another without the need of allowance
     * approval. It uses the internal OpenZeppellin _transfer function for implementing such use cases.
     * To ensure proper access this external API is protected with role based access control.
     *
     * @param from source account
     * @param to  destination account to transfer shares
     * @param amount the amount of shares to transfer
     */
    function transferShares(
        address from,
        address to,
        uint256 amount
    ) external virtual onlyAdminOrWriteAccess {
        _transfer(from, to, amount);
    }

    function updateHolderInList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) > 0) {
            accountsWithHoldings.add(account);
        } else {
            accountsWithHoldings.remove(account);
        }
    }

    function removeEmptyHolderFromList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) == 0) {
            accountsWithHoldings.remove(account);
        }
    }

    function updateLastKnownPrice(
        uint256 price
    ) external virtual onlyAdminOrWriteAccess {
        lastKnownPrice = price;
    }

    // -------------------- Utility view functions --------------------  //

    /**
     * @notice Gets the current value of the instant transfer capability status
     *
     */
    function isInstantTransferEnabled()
        external
        view
        virtual
        override
        returns (bool)
    {
        return isInstantTransferOn;
    }

    /**
     * @notice Gets the current value of the ERC-20 transfer capability status
     *
     */
    function isERC20TransferEnabled()
        external
        view
        virtual
        override
        returns (bool)
    {
        return isERC20TransferOn;
    }

    /**
     * @notice Gets the current value of the ERC-20 3rd party transfer capability status
     *
     */
    function isERC20ThirdPartyTransferEnabled()
        external
        view
        virtual
        override
        returns (bool)
    {
        return isERC20ThirdPartyTransferOn;
    }

    function hasEnoughHoldings(
        address account,
        uint256 amount
    ) external view virtual override returns (bool) {
        uint256 holdings = ((balanceOf(account) * lastKnownPrice) /
            NUMBER_SCALE_FACTOR);
        return (holdings > 0 && holdings >= amount);
    }

    function getShareHoldings(
        address account
    ) external view virtual override returns (uint256) {
        return balanceOf(account);
    }

    // **************** Info Query Utilities (External) **************** //

    function getShareholdersWithHoldingsCount()
        external
        view
        virtual
        returns (uint256)
    {
        return accountsWithHoldings.length();
    }

    function getSharesOutstanding() external view virtual returns (uint256) {
        return totalSupply();
    }

    function hasHoldings(address account) external view virtual returns (bool) {
        return accountsWithHoldings.contains(account);
    }

    function getAccountsBalances(
        uint256 pageSize,
        uint256 startIndex
    )
        external
        view
        virtual
        onlyWithValidPageSize(pageSize, MAX_PAGE_SIZE_BALANCE)
        returns (
            bool hasNext,
            uint256 nextIndex,
            address[] memory accounts,
            uint256[] memory balances,
            bool[] memory status
        )
    {
        uint256 count = IAuthorization(
            moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
        ).getAuthorizedAccountsCount();
        require(startIndex <= count, "INVALID_PAGINATION_INDEX");

        uint256 arraySize = pageSize;
        hasNext = true;

        uint256 end = startIndex + pageSize;
        if (end >= count) {
            end = count;
            arraySize = end - startIndex;
            hasNext = false;
        }

        accounts = new address[](arraySize);
        balances = new uint256[](arraySize);
        status = new bool[](arraySize);
        nextIndex = end;

        for (uint256 i = startIndex; i < end; ) {
            uint256 resIdx = i - startIndex;
            accounts[resIdx] = IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).getAuthorizedAccountAt(i);
            balances[resIdx] = balanceOf(accounts[resIdx]);
            status[resIdx] = IAccountManager(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountFrozen(accounts[resIdx]);
            unchecked {
                i++;
            }
        }
    }

    function getVersion() public pure virtual returns (uint8) {
        return 4;
    }

    // **************** Internal Functions ***************** //
    // ***************************************************** //

    function _isAdminOrPrivilegedModule(
        address account
    ) internal view virtual returns (bool) {
        return
            IAccessControlUpgradeable(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), account) ||
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(account);
    }

    function _isShareholder(
        address account
    ) internal view virtual returns (bool) {
        return
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(account);
    }

    function _isMint(
        address from,
        address to
    ) internal view virtual returns (bool) {
        return from == address(0) && to != address(0);
    }

    function _isBurn(
        address from,
        address to
    ) internal view virtual returns (bool) {
        return from != address(0) && to == address(0);
    }

    function _isTransfer(
        address from,
        address to
    ) internal view virtual returns (bool) {
        return from != address(0) && to != address(0);
    }

    // -------------------- ERC20 --------------------  //
    // https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20-_beforeTokenTransfer-address-address-uint256-
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        // token transfers must comply with the policy
        // defined by the concrete fund implementation.
        _checkTransferPolicy(from, to);
    }

    // -------------------- Compliance --------------------  //

    function _checkTransferPolicy(
        address from,
        address to
    ) internal view virtual {
        // ADMIN WORKFLOW
        if (_isAdminOrPrivilegedModule(_msgSender())) {
            if (_isMint(from, to)) {
                // MINT POLICY
                // Only mint tokens to shareholders
                require(
                    _isShareholder(to),
                    "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
                );
            } else if (_isBurn(from, to)) {
                // BURN POLICY
                // NO REQUIREMENT - This scenario shouldn't be possible but
                // we could technically burn shares from non shareholder accounts
            } else if (_isTransfer(from, to)) {
                // TRANSFER POLICY
                // Only transfer between shareholders
                require(
                    _isShareholder(from) && _isShareholder(to),
                    "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
                );
            } else {
                revert("TRANSFER_RESTRICTION_INVALID_ADMIN_OPERATION");
            }
        }
        // SHAREHOLDER WORKFLOW
        else if (_isShareholder(_msgSender())) {
            // Shareholder can only transfer its own shares
            // Destination can only be another shareholder
            require(
                from == _msgSender() && _isShareholder(to),
                "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
            );
        } else {
            // 3rd PARTY WORKFLOW
            // Any 'spender' is only authorized to transfer between authorized shareholders
            require(
                _isShareholder(from) && _isShareholder(to),
                "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
            );
        }
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/token/MoneyMarketFund_v5.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {ModuleRegistry} from "../../../../infrastructure/ModuleRegistry.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {ITransferAgent} from "../../../../interfaces/ITransferAgent.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {IAdminTransfer} from "../../../../interfaces/IAdminTransfer.sol";
import {IAdminInstantTransfer} from "../../../../interfaces/IAdminInstantTransfer.sol";
import {ITransferManager} from "../../../../interfaces/ITransferManager.sol";
import {IXChainInstantTransfer} from "../../../../interfaces/IXChainInstantTransfer.sol";

/**
 * @title Implementation of a Money Market Fund
 *
 * This implementation represents a 40 Act Fund in which all operations are cash based.
 * It means all amounts passed to the contract functions with the exception of the contructor's
 * _seed parameter represent the value (in terms of fiat currency) of the fund shares to buy or sell.
 *
 * Purchases or sells of shares requested are settled calling any of the settleTransactions or EndOfDay functions.
 * The price supplied in the settlement functions corresponds to the NAV per share at the moment of the market closing.
 *
 */
contract MoneyMarketFund_V5 is
    Initializable,
    ERC20Upgradeable,
    AccessControlUpgradeable,
    UUPSUpgradeable,
    IHoldings,
    IAdminTransfer,
    IAdminInstantTransfer,
    ITransferManager,
    IXChainInstantTransfer
{
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant MAX_PAGE_SIZE_BALANCE = 10;
    uint256 public constant NUMBER_SCALE_FACTOR = 1E18;

    bytes32 public constant ROLE_TOKEN_OWNER = keccak256("ROLE_TOKEN_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    // ******************** State Variables ******************** //
    // ********************************************************* //

    uint256 public lastKnownPrice;
    ModuleRegistry moduleRegistry;
    // Deprecated Set
    EnumerableSet.AddressSet accountsWithHoldings;

    /// @dev Flag to enable/disable instant shareholder transfers
    bool isInstantTransferOn;
    /// @dev Flag to enable/disable regular ERC-20 shareholder transfers
    bool isERC20TransferOn;
    /// @dev Flag to enable/disable regular ERC-20 3rd party transfers
    bool isERC20ThirdPartyTransferOn;

    // ********************* Modifiers ********************* //
    // ***************************************************** //

    modifier onlyAdminOrWriteAccess() {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(_msgSender()) ||
                AccessControlUpgradeable(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()),
            "NO_WRITE_ACCESS"
        );
        _;
    }

    modifier onlyWhenShareholderExists(address account) {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(account),
            "SHAREHOLDER_DOES_NOT_EXIST"
        );
        _;
    }

    modifier accountNotFrozen(address account) {
        require(
            !IAccountManager(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountFrozen(account),
            "ACCOUNT_IS_FROZEN"
        );
        _;
    }

    modifier onlyHigherThanZero(uint256 amount) {
        require(amount > 0, "INVALID_AMOUNT");
        _;
    }

    // -------------------- Pagination --------------------  //

    modifier onlyWithValidPageSize(uint256 pageSize, uint256 maxPageSize) {
        require(
            pageSize > 0 && pageSize <= maxPageSize,
            "INVALID_PAGINATION_SIZE"
        );
        _;
    }

    // ********************************************************************* //
    // **********************     MoneyMarketFund     ********************** //
    // ********************************************************************* //

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_TOKEN_OWNER) {}

    // ************************* Public Interface ************************* //
    // ******************************************************************** //

    function mintShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _mint(account, shares);
    }

    function burnShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _burn(account, shares);
    }

    /**
     * @notice Enables instant share transfer capability
     *
     * @dev Instant transfer capability allows an admin to transfer
     *      shares between shareholder accounts instantly
     */
    function enableInstantTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isInstantTransferOn = true;
        emit InstantTransferStatusUpdated(isInstantTransferOn);
    }

    /**
     * @notice Disables instant share transfer capability
     *
     * @dev Instant transfer capability allows an admin to transfer
     *      shares between shareholder accounts instantly
     */
    function disableInstantTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isInstantTransferOn = false;
        emit InstantTransferStatusUpdated(isInstantTransferOn);
    }

    /**
     * @notice Enables ERC-20 share transfer capability
     *
     * @dev ERC-20 transfer capability allows authorized shareholders
     *      to transfer shares between them instantly
     */
    function enableERC20Transfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20TransferOn = true;
        emit ERC20TransferStatusUpdated(isERC20TransferOn);
    }

    /**
     * @notice Disables ERC-20 share transfer capability
     *
     * @dev ERC-20 transfer capability allows authorized shareholders
     *      to transfer shares between them instantly
     */
    function disableERC20Transfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20TransferOn = false;
        emit ERC20TransferStatusUpdated(isERC20TransferOn);
    }

    /**
     * @notice Enables ERC-20 3rd party share transfer capability
     *
     * @dev ERC-20 transferFrom capability allows an authorized spender
     *      account by the shareholder to transfer shares on its behalf,
     *      however shares can only be transfered to other authorized shareholders.
     */
    function enableERC20ThirdPartyTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20ThirdPartyTransferOn = true;
        emit ERC20ThirdPartyTransferStatusUpdated(isERC20ThirdPartyTransferOn);
    }

    /**
     * @notice Disables ERC-20 3rd party share transfer capability
     *
     * @dev ERC-20 transferFrom capability allows an authorized spender
     *      account by the shareholder to transfer shares on its behalf,
     *      however shares can only be transfered to other authorized shareholders.
     */
    function disableERC20ThirdPartyTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20ThirdPartyTransferOn = false;
        emit ERC20ThirdPartyTransferStatusUpdated(isERC20ThirdPartyTransferOn);
    }

    /**
     * @notice Admin function to transfer shares from one account to another without the need of allowance
     * approval. It uses the internal OpenZeppellin _transfer function for implementing such use cases.
     * To ensure proper access this external API is protected with role based access control.
     * It performs additional validation of input data according to business requirements.
     *
     * @param from source account
     * @param to  destination account to transfer shares
     * @param amount the amount of shares to transfer
     * @param memo the amount of shares to transfer
     */
    function instantTransfer(
        address from,
        address to,
        uint256 amount,
        string memory memo
    )
        external
        virtual
        override
        onlyAdminOrWriteAccess
        onlyWhenShareholderExists(from)
        onlyWhenShareholderExists(to)
        accountNotFrozen(from)
        accountNotFrozen(to)
    {
        require(isInstantTransferOn, "INSTANT_TRANSFER_CAPABILITY_NOT_ENABLED");
        _transfer(from, to, amount);
        emit InstantTransfer(from, to, amount, memo);
    }

    /**
     * @notice See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     * - `to` and sender accounts should be authorized shareholders.
     * - `to` and sender accounts shouldn't have frozen status
     */
    function transfer(
        address to,
        uint256 amount
    )
        public
        virtual
        override
        onlyWhenShareholderExists(_msgSender())
        onlyWhenShareholderExists(to)
        accountNotFrozen(_msgSender())
        accountNotFrozen(to)
        returns (bool)
    {
        require(isInstantTransferOn, "INSTANT_TRANSFER_CAPABILITY_NOT_ENABLED");
        require(isERC20TransferOn, "ERC20_TRANSFER_CAPABILITY_NOT_ENABLED");
        return super.transfer(to, amount);
    }

    /**
     * @notice See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     * - `from` and `to` accounts should be authorized shareholders.
     * - `from` and `to` sender accounts shouldn't have frozen status
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    )
        public
        virtual
        override
        onlyWhenShareholderExists(from)
        onlyWhenShareholderExists(to)
        accountNotFrozen(from)
        accountNotFrozen(to)
        returns (bool)
    {
        require(isInstantTransferOn, "INSTANT_TRANSFER_CAPABILITY_NOT_ENABLED");
        require(
            isERC20ThirdPartyTransferOn,
            "ERC20_TRANSFER_FROM_CAPABILITY_NOT_ENABLED"
        );
        return super.transferFrom(from, to, amount);
    }

    /**
     * @dev Admin function to transfer shares from one account to another without the need of allowance
     * approval. It uses the internal OpenZeppellin _transfer function for implementing such use cases.
     * To ensure proper access this external API is protected with role based access control.
     *
     * @notice This API is intended only for inter-module interaction.
     * Only modules with the WRITE_ACCESS_TOKEN role are allowed to call this API.
     *
     * @param from source account
     * @param to  destination account to transfer shares
     * @param amount the amount of shares to transfer
     */
    function transferShares(
        address from,
        address to,
        uint256 amount
    ) external virtual override {
        require(
            AccessControlUpgradeable(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()),
            "NO_WRITE_ACCESS"
        );
        _transfer(from, to, amount);
    }

    // DEPRECATED API - accountsWithHoldings not used anymore
    function updateHolderInList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) > 0) {
            accountsWithHoldings.add(account);
        } else {
            accountsWithHoldings.remove(account);
        }
    }

    function instantCXTransferIn(
        address account,
        uint256 timestamp,
        uint256 amount,
        string memory memo
    )
        external
        virtual
        override
        onlyAdminOrWriteAccess
        onlyWhenShareholderExists(account)
        onlyHigherThanZero(amount)
        accountNotFrozen(account)
    {
        _mint(account, amount);
        emit InstantCXTransferIn(account, timestamp, amount, memo);
    }

    function instantCXTransferOut(
        address account,
        uint256 amount,
        string memory memo
    )
        external
        virtual
        override
        onlyAdminOrWriteAccess
        onlyWhenShareholderExists(account)
        onlyHigherThanZero(amount)
        accountNotFrozen(account)
    {
        require(
            balanceOf(account) > 0 && balanceOf(account) >= amount,
            "NOT_ENOUGH_BALANCE"
        );
        _burn(account, amount);
        emit InstantCXTransferOut(account, amount, memo);
    }

    // DEPRECATED API - accountsWithHoldings not used anymore
    function removeEmptyHolderFromList(
        address account
    ) external virtual override onlyAdminOrWriteAccess {
        if (balanceOf(account) == 0) {
            accountsWithHoldings.remove(account);
        }
    }

    function updateLastKnownPrice(
        uint256 price
    ) external virtual onlyAdminOrWriteAccess {
        lastKnownPrice = price;
    }

    // -------------------- Utility view functions --------------------  //

    /**
     * @notice Gets the current value of the instant transfer capability status
     *
     */
    function isInstantTransferEnabled()
        external
        view
        virtual
        override
        returns (bool)
    {
        return isInstantTransferOn;
    }

    /**
     * @notice Gets the current value of the ERC-20 transfer capability status
     *
     */
    function isERC20TransferEnabled()
        external
        view
        virtual
        override
        returns (bool)
    {
        return isERC20TransferOn;
    }

    /**
     * @notice Gets the current value of the ERC-20 3rd party transfer capability status
     *
     */
    function isERC20ThirdPartyTransferEnabled()
        external
        view
        virtual
        override
        returns (bool)
    {
        return isERC20ThirdPartyTransferOn;
    }

    function hasEnoughHoldings(
        address account,
        uint256 amount
    ) external view virtual override returns (bool) {
        uint256 holdings = ((balanceOf(account) * lastKnownPrice) /
            NUMBER_SCALE_FACTOR);
        return (holdings > 0 && holdings >= amount);
    }

    function getShareHoldings(
        address account
    ) external view virtual override returns (uint256) {
        return balanceOf(account);
    }

    // **************** Info Query Utilities (External) **************** //

    function getSharesOutstanding() external view virtual returns (uint256) {
        return totalSupply();
    }

    function hasHoldings(address account) external view virtual returns (bool) {
        return balanceOf(account) > 0;
    }

    function getAccountsBalances(
        uint256 pageSize,
        uint256 startIndex
    )
        external
        view
        virtual
        onlyWithValidPageSize(pageSize, MAX_PAGE_SIZE_BALANCE)
        returns (
            bool hasNext,
            uint256 nextIndex,
            address[] memory accounts,
            uint256[] memory balances,
            bool[] memory status
        )
    {
        uint256 count = IAuthorization(
            moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
        ).getAuthorizedAccountsCount();
        require(startIndex <= count, "INVALID_PAGINATION_INDEX");

        uint256 arraySize = pageSize;
        hasNext = true;

        uint256 end = startIndex + pageSize;
        if (end >= count) {
            end = count;
            arraySize = end - startIndex;
            hasNext = false;
        }

        accounts = new address[](arraySize);
        balances = new uint256[](arraySize);
        status = new bool[](arraySize);
        nextIndex = end;

        for (uint256 i = startIndex; i < end; ) {
            uint256 resIdx = i - startIndex;
            accounts[resIdx] = IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).getAuthorizedAccountAt(i);
            balances[resIdx] = balanceOf(accounts[resIdx]);
            status[resIdx] = IAccountManager(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountFrozen(accounts[resIdx]);
            unchecked {
                i++;
            }
        }
    }

    function getVersion() public pure virtual returns (uint8) {
        return 5;
    }

    // **************** Internal Functions ***************** //
    // ***************************************************** //

    function _isAdminOrPrivilegedModule(
        address account
    ) internal view virtual returns (bool) {
        return
            IAccessControlUpgradeable(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), account) ||
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(account);
    }

    function _isShareholder(
        address account
    ) internal view virtual returns (bool) {
        return
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(account);
    }

    function _isMint(
        address from,
        address to
    ) internal view virtual returns (bool) {
        return from == address(0) && to != address(0);
    }

    function _isBurn(
        address from,
        address to
    ) internal view virtual returns (bool) {
        return from != address(0) && to == address(0);
    }

    function _isTransfer(
        address from,
        address to
    ) internal view virtual returns (bool) {
        return from != address(0) && to != address(0);
    }

    // -------------------- ERC20 --------------------  //
    // https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20-_beforeTokenTransfer-address-address-uint256-
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        // token transfers must comply with the policy
        // defined by the concrete fund implementation.
        _checkTransferPolicy(from, to);
    }

    // -------------------- Compliance --------------------  //

    function _checkTransferPolicy(address from, address to) internal virtual {
        // ADMIN WORKFLOW
        if (_isAdminOrPrivilegedModule(_msgSender())) {
            if (_isMint(from, to)) {
                // MINT POLICY
                // Only mint tokens to shareholders
                require(
                    _isShareholder(to),
                    "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
                );
            } else if (_isBurn(from, to)) {
                // BURN POLICY
                // NO REQUIREMENT - This scenario shouldn't be possible but
                // we could technically burn shares from non shareholder accounts
            } else if (_isTransfer(from, to)) {
                // TRANSFER POLICY
                // Only transfer between shareholders
                require(
                    _isShareholder(from) && _isShareholder(to),
                    "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
                );
            } else {
                revert("TRANSFER_RESTRICTION_INVALID_ADMIN_OPERATION");
            }
        }
        // SHAREHOLDER WORKFLOW
        else if (_isShareholder(_msgSender())) {
            // Shareholder can only transfer its own shares
            // Destination can only be another shareholder
            require(
                from == _msgSender() && _isShareholder(to),
                "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
            );
        } else {
            // 3rd PARTY WORKFLOW
            // Any 'spender' is only authorized to transfer between authorized shareholders
            require(
                _isShareholder(from) && _isShareholder(to),
                "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
            );
        }
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/token/MoneyMarketFund_V6.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.18;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {ModuleRegistry} from "../../../../infrastructure/ModuleRegistry.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {ITransferAgent} from "../../../../interfaces/ITransferAgent.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {IAdminTransfer} from "../../../../interfaces/IAdminTransfer.sol";
import {IAdminInstantTransfer} from "../../../../interfaces/IAdminInstantTransfer.sol";
import {ITransferManager} from "../../../../interfaces/ITransferManager.sol";
import {IXChainInstantTransfer} from "../../../../interfaces/IXChainInstantTransfer.sol";

/**
 * @title Implementation of a Money Market Fund
 *
 * This implementation represents a 40 Act Fund in which all operations are cash based.
 * It means all amounts passed to the contract functions with the exception of the contructor's
 * _seed parameter represent the value (in terms of fiat currency) of the fund shares to buy or sell.
 *
 * Purchases or sells of shares requested are settled calling any of the settleTransactions or EndOfDay functions.
 * The price supplied in the settlement functions corresponds to the NAV per share at the moment of the market closing.
 *
 */
contract MoneyMarketFund_V6 is
    Initializable,
    ERC20Upgradeable,
    AccessControlUpgradeable,
    UUPSUpgradeable,
    IHoldings,
    IAdminTransfer,
    IAdminInstantTransfer,
    ITransferManager,
    IXChainInstantTransfer
{
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant MAX_PAGE_SIZE_BALANCE = 10;
    uint256 public constant NUMBER_SCALE_FACTOR = 1E18;

    bytes32 public constant ROLE_TOKEN_OWNER = keccak256("ROLE_TOKEN_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    // ******************** State Variables ******************** //
    // ********************************************************* //

    uint256 public lastKnownPrice;
    ModuleRegistry moduleRegistry;
    // Deprecated Set
    EnumerableSet.AddressSet accountsWithHoldings;

    /// @dev Flag to enable/disable instant shareholder transfers
    bool isInstantTransferOn;
    /// @dev Flag to enable/disable regular ERC-20 shareholder transfers
    bool isERC20TransferOn;
    /// @dev Flag to enable/disable regular ERC-20 3rd party transfers
    bool isERC20ThirdPartyTransferOn;

    // ********************* Modifiers ********************* //
    // ***************************************************** //

    modifier onlyAdminOrWriteAccess() {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(_msgSender()) ||
                AccessControlUpgradeable(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()),
            "NO_WRITE_ACCESS"
        );
        _;
    }

    modifier onlyWhenShareholderExists(address account) {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(account),
            "SHAREHOLDER_DOES_NOT_EXIST"
        );
        _;
    }

    modifier accountNotFrozen(address account) {
        require(
            !IAccountManager(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountFrozen(account),
            "ACCOUNT_IS_FROZEN"
        );
        _;
    }

    modifier onlyHigherThanZero(uint256 amount) {
        require(amount > 0, "INVALID_AMOUNT");
        _;
    }

    // -------------------- Pagination --------------------  //

    modifier onlyWithValidPageSize(uint256 pageSize, uint256 maxPageSize) {
        require(
            pageSize > 0 && pageSize <= maxPageSize,
            "INVALID_PAGINATION_SIZE"
        );
        _;
    }

    // ********************************************************************* //
    // **********************     MoneyMarketFund     ********************** //
    // ********************************************************************* //

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_TOKEN_OWNER) {}

    // ************************* Public Interface ************************* //
    // ******************************************************************** //

    function mintShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _mint(account, shares);
    }

    function burnShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _burn(account, shares);
    }

    /**
     * @notice Enables instant share transfer capability
     *
     * @dev Instant transfer capability allows an admin to transfer
     *      shares between shareholder accounts instantly
     */
    function enableInstantTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isInstantTransferOn = true;
        emit InstantTransferStatusUpdated(isInstantTransferOn);
    }

    /**
     * @notice Disables instant share transfer capability
     *
     * @dev Instant transfer capability allows an admin to transfer
     *      shares between shareholder accounts instantly
     */
    function disableInstantTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isInstantTransferOn = false;
        emit InstantTransferStatusUpdated(isInstantTransferOn);
    }

    /**
     * @notice Enables ERC-20 share transfer capability
     *
     * @dev ERC-20 transfer capability allows authorized shareholders
     *      to transfer shares between them instantly
     */
    function enableERC20Transfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20TransferOn = true;
        emit ERC20TransferStatusUpdated(isERC20TransferOn);
    }

    /**
     * @notice Disables ERC-20 share transfer capability
     *
     * @dev ERC-20 transfer capability allows authorized shareholders
     *      to transfer shares between them instantly
     */
    function disableERC20Transfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20TransferOn = false;
        emit ERC20TransferStatusUpdated(isERC20TransferOn);
    }

    /**
     * @notice Enables ERC-20 3rd party share transfer capability
     *
     * @dev ERC-20 transferFrom capability allows an authorized spender
     *      account by the shareholder to transfer shares on its behalf,
     *      however shares can only be transfered to other authorized shareholders.
     */
    function enableERC20ThirdPartyTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20ThirdPartyTransferOn = true;
        emit ERC20ThirdPartyTransferStatusUpdated(isERC20ThirdPartyTransferOn);
    }

    /**
     * @notice Disables ERC-20 3rd party share transfer capability
     *
     * @dev ERC-20 transferFrom capability allows an authorized spender
     *      account by the shareholder to transfer shares on its behalf,
     *      however shares can only be transfered to other authorized shareholders.
     */
    function disableERC20ThirdPartyTransfer()
        external
        virtual
        override
        onlyAdminOrWriteAccess
    {
        isERC20ThirdPartyTransferOn = false;
        emit ERC20ThirdPartyTransferStatusUpdated(isERC20ThirdPartyTransferOn);
    }

    /**
     * @notice Admin function to transfer shares from one account to another without the need of allowance
     * approval. It uses the internal OpenZeppellin _transfer function for implementing such use cases.
     * To ensure proper access this external API is protected with role based access control.
     * It performs additional validation of input data according to business requirements.
     *
     * @param from source account
     * @param to  destination account to transfer shares
     * @param amount the amount of shares to transfer
     * @param memo the amount of shares to transfer
     */
    function instantTransfer(
        address from,
        address to,
        uint256 amount,
        string memory memo
    )
        external
        virtual
        override
        onlyAdminOrWriteAccess
        onlyWhenShareholderExists(from)
        onlyWhenShareholderExists(to)
        accountNotFrozen(from)
        accountNotFrozen(to)
    {
        require(isInstantTransferOn, "INSTANT_TRANSFER_CAPABILITY_NOT_ENABLED");
        _transfer(from, to, amount);
        emit InstantTransfer(from, to, amount, memo);
    }

    /**
     * @notice See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     * - `to` and sender accounts should be authorized shareholders.
     * - `to` and sender accounts shouldn't have frozen status
     */
    function transfer(
        address to,
        uint256 amount
    )
        public
        virtual
        override
        onlyWhenShareholderExists(_msgSender())
        onlyWhenShareholderExists(to)
        accountNotFrozen(_msgSender())
        accountNotFrozen(to)
        returns (bool)
    {
        require(isInstantTransferOn, "INSTANT_TRANSFER_CAPABILITY_NOT_ENABLED");
        require(isERC20TransferOn, "ERC20_TRANSFER_CAPABILITY_NOT_ENABLED");
        return super.transfer(to, amount);
    }

    /**
     * @notice See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     * - `from` and `to` accounts should be authorized shareholders.
     * - `from` and `to` sender accounts shouldn't have frozen status
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    )
        public
        virtual
        override
        onlyWhenShareholderExists(from)
        onlyWhenShareholderExists(to)
        accountNotFrozen(from)
        accountNotFrozen(to)
        returns (bool)
    {
        require(isInstantTransferOn, "INSTANT_TRANSFER_CAPABILITY_NOT_ENABLED");
        require(
            isERC20ThirdPartyTransferOn,
            "ERC20_TRANSFER_FROM_CAPABILITY_NOT_ENABLED"
        );
        return super.transferFrom(from, to, amount);
    }

    /**
     * @dev Admin function to transfer shares from one account to another without the need of allowance
     * approval. It uses the internal OpenZeppellin _transfer function for implementing such use cases.
     * To ensure proper access this external API is protected with role based access control.
     *
     * @notice This API is intended only for inter-module interaction.
     * Only modules with the WRITE_ACCESS_TOKEN role are allowed to call this API.
     *
     * @param from source account
     * @param to  destination account to transfer shares
     * @param amount the amount of shares to transfer
     */
    function transferShares(
        address from,
        address to,
        uint256 amount
    ) external virtual override {
        require(
            AccessControlUpgradeable(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()),
            "NO_WRITE_ACCESS"
        );
        _transfer(from, to, amount);
    }

    // DEPRECATED API - accountsWithHoldings not used anymore
    function updateHolderInList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) > 0) {
            accountsWithHoldings.add(account);
        } else {
            accountsWithHoldings.remove(account);
        }
    }

    function instantCXTransferIn(
        address account,
        uint256 timestamp,
        uint256 amount,
        string memory memo
    )
        external
        virtual
        override
        onlyAdminOrWriteAccess
        onlyWhenShareholderExists(account)
        onlyHigherThanZero(amount)
        accountNotFrozen(account)
    {
        _mint(account, amount);
        emit InstantCXTransferIn(account, timestamp, amount, memo);
    }

    function instantCXTransferOut(
        address account,
        uint256 amount,
        string memory memo
    )
        external
        virtual
        override
        onlyAdminOrWriteAccess
        onlyWhenShareholderExists(account)
        onlyHigherThanZero(amount)
        accountNotFrozen(account)
    {
        require(
            balanceOf(account) > 0 && balanceOf(account) >= amount,
            "NOT_ENOUGH_BALANCE"
        );
        _burn(account, amount);
        emit InstantCXTransferOut(account, amount, memo);
    }

    // DEPRECATED API - accountsWithHoldings not used anymore
    function removeEmptyHolderFromList(
        address account
    ) external virtual override onlyAdminOrWriteAccess {
        if (balanceOf(account) == 0) {
            accountsWithHoldings.remove(account);
        }
    }

    function updateLastKnownPrice(
        uint256 price
    ) external virtual onlyAdminOrWriteAccess {
        lastKnownPrice = price;
    }


    /**
     * @notice Admin function to set approval on behalf of a shareholder
     * @dev Allows admin to grant spending allowance without shareholder signature.
     * This enables admin to authorize third parties to spend shareholder tokens
     * in scenarios where direct shareholder interaction is not feasible.
     *
     * Emits an {Approval} event.
     *
     * @param shareholder The shareholder whose tokens will be approved
     * @param spender The address authorized to spend tokens
     * @param amount The amount of tokens to approve
     */
    function adminApprove(
        address shareholder,
        address spender,
        uint256 amount
    )
        external
        virtual
        onlyAdminOrWriteAccess
        onlyWhenShareholderExists(shareholder)
        accountNotFrozen(shareholder)
    {
        _approve(shareholder, spender, amount);
        emit AdminApproval(_msgSender(), shareholder, spender, amount);
    }

    // ********************* Events ********************* //
    // ************************************************** //

    /**
     * @notice Emitted when admin approves on behalf of a shareholder
     * @param admin The admin account that performed the approval
     * @param shareholder The shareholder whose tokens were approved
     * @param spender The address authorized to spend tokens
     * @param amount The amount of tokens approved
     */
    event AdminApproval(
        address indexed admin,
        address indexed shareholder,
        address indexed spender,
        uint256 amount
    );
    // -------------------- Utility view functions --------------------  //

    /**
     * @notice Gets the current value of the instant transfer capability status
     *
     */
    function isInstantTransferEnabled()
        external
        view
        virtual
        override
        returns (bool)
    {
        return isInstantTransferOn;
    }

    /**
     * @notice Gets the current value of the ERC-20 transfer capability status
     *
     */
    function isERC20TransferEnabled()
        external
        view
        virtual
        override
        returns (bool)
    {
        return isERC20TransferOn;
    }

    /**
     * @notice Gets the current value of the ERC-20 3rd party transfer capability status
     *
     */
    function isERC20ThirdPartyTransferEnabled()
        external
        view
        virtual
        override
        returns (bool)
    {
        return isERC20ThirdPartyTransferOn;
    }

    function hasEnoughHoldings(
        address account,
        uint256 amount
    ) external view virtual override returns (bool) {
        uint256 holdings = ((balanceOf(account) * lastKnownPrice) /
            NUMBER_SCALE_FACTOR);
        return (holdings > 0 && holdings >= amount);
    }

    function getShareHoldings(
        address account
    ) external view virtual override returns (uint256) {
        return balanceOf(account);
    }

    // **************** Info Query Utilities (External) **************** //

    function getSharesOutstanding() external view virtual returns (uint256) {
        return totalSupply();
    }

    function hasHoldings(address account) external view virtual returns (bool) {
        return balanceOf(account) > 0;
    }

    function getAccountsBalances(
        uint256 pageSize,
        uint256 startIndex
    )
        external
        view
        virtual
        onlyWithValidPageSize(pageSize, MAX_PAGE_SIZE_BALANCE)
        returns (
            bool hasNext,
            uint256 nextIndex,
            address[] memory accounts,
            uint256[] memory balances,
            bool[] memory status
        )
    {
        uint256 count = IAuthorization(
            moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
        ).getAuthorizedAccountsCount();
        require(startIndex <= count, "INVALID_PAGINATION_INDEX");

        uint256 arraySize = pageSize;
        hasNext = true;

        uint256 end = startIndex + pageSize;
        if (end >= count) {
            end = count;
            arraySize = end - startIndex;
            hasNext = false;
        }

        accounts = new address[](arraySize);
        balances = new uint256[](arraySize);
        status = new bool[](arraySize);
        nextIndex = end;

        for (uint256 i = startIndex; i < end; ) {
            uint256 resIdx = i - startIndex;
            accounts[resIdx] = IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).getAuthorizedAccountAt(i);
            balances[resIdx] = balanceOf(accounts[resIdx]);
            status[resIdx] = IAccountManager(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountFrozen(accounts[resIdx]);
            unchecked {
                i++;
            }
        }
    }

    function getVersion() public pure virtual returns (uint8) {
        return 6;
    }

    // **************** Internal Functions ***************** //
    // ***************************************************** //

    function _isAdminOrPrivilegedModule(
        address account
    ) internal view virtual returns (bool) {
        return
            IAccessControlUpgradeable(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), account) ||
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(account);
    }

    function _isShareholder(
        address account
    ) internal view virtual returns (bool) {
        return
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(account);
    }

    function _isMint(
        address from,
        address to
    ) internal view virtual returns (bool) {
        return from == address(0) && to != address(0);
    }

    function _isBurn(
        address from,
        address to
    ) internal view virtual returns (bool) {
        return from != address(0) && to == address(0);
    }

    function _isTransfer(
        address from,
        address to
    ) internal view virtual returns (bool) {
        return from != address(0) && to != address(0);
    }

    // -------------------- ERC20 --------------------  //
    // https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20-_beforeTokenTransfer-address-address-uint256-
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        // token transfers must comply with the policy
        // defined by the concrete fund implementation.
        _checkTransferPolicy(from, to);
    }

    // -------------------- Compliance --------------------  //

    function _checkTransferPolicy(address from, address to) internal virtual {
        // ADMIN WORKFLOW
        if (_isAdminOrPrivilegedModule(_msgSender())) {
            if (_isMint(from, to)) {
                // MINT POLICY
                // Only mint tokens to shareholders
                require(
                    _isShareholder(to),
                    "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
                );
            } else if (_isBurn(from, to)) {
                // BURN POLICY
                // NO REQUIREMENT - This scenario shouldn't be possible but
                // we could technically burn shares from non shareholder accounts
            } else if (_isTransfer(from, to)) {
                // TRANSFER POLICY
                // Only transfer between shareholders
                require(
                    _isShareholder(from) && _isShareholder(to),
                    "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
                );
            } else {
                revert("TRANSFER_RESTRICTION_INVALID_ADMIN_OPERATION");
            }
        }
        // SHAREHOLDER WORKFLOW
        else if (_isShareholder(_msgSender())) {
            // Shareholder can only transfer its own shares
            // Destination can only be another shareholder
            require(
                from == _msgSender() && _isShareholder(to),
                "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
            );
        } else {
            // 3rd PARTY WORKFLOW
            // Any 'spender' is only authorized to transfer between authorized shareholders
            require(
                _isShareholder(from) && _isShareholder(to),
                "TRANSFER_RESTRICTION_INVALID_ACCOUNT"
            );
        }
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/transactional/TransactionalModule_V1.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";

import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {IShareholderTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {IShareholderSelfServiceTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransferAgentTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ICancellableTransaction, ICancellableSelfServiceTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";

import {ModuleRegistry} from "../../../ModuleRegistry.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

contract TransactionalModule_V1 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IShareholderTransaction,
    IShareholderSelfServiceTransaction,
    ITransferAgentTransaction,
    ITransactionStorage,
    ICancellableTransaction,
    ICancellableSelfServiceTransaction
{
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.Bytes32Set;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    /// @dev The Id for the current module used to register the module during deployment
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSACTIONAL");
    /// @dev The owner role that can be granted to manage the current contract
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    /// @dev The Id of the authorization module
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");

    event TransactionSubmitted(address indexed account, bytes32 transactionId);

    event TransactionCancelled(
        address indexed account,
        bytes32 transactionId,
        string memo
    );

    /// @dev Flag to enable/disable the Self Service API
    bool isSelfServiceOn;
    /// @dev Counter increased every time a new pending request is created
    uint256 requestsCounter;

    /// @dev Map of all the existing pending requests
    mapping(bytes32 => ITransactionStorage.TransactionDetail) transactionDetailMap;
    /// @dev Map of the list of pending requests id's per account
    mapping(address => EnumerableSetUpgradeable.Bytes32Set) pendingTransactionsMap;
    /// @dev Set containing the accounts with at least one pending requests
    EnumerableSetUpgradeable.AddressSet accountsWithTransactions;

    TokenRegistry tokenRegistry;
    /// @dev The Id of the token associated with the transaction requests of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // ---------------------- Modifiers ----------------------  //

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyShareholderAsMsgSender() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(msg.sender),
            "CALLER_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyShareholder(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "ACCOUNT_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyWithSelfServiceOn() {
        require(isSelfServiceOn, "SELF_SERVICE_NOT_ENABLED");
        _;
    }

    modifier onlyHigherThanZero(uint256 amount) {
        require(amount > 0, "INVALID_AMOUNT");
        _;
    }

    modifier whenTransactionStorageIsEmpty(address account) {
        if (pendingTransactionsMap[account].length() == 0) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _moduleOwner,
        address _modRegistry,
        address _tokenRegistry,
        string memory _defaultToken
    ) public initializer {
        require(_moduleOwner != address(0), "INVALID_ADDRESS");
        require(_modRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        require(_tokenRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        __BaseUpgradeableModule_init();
        __AccessControlEnumerable_init();
        modules = ModuleRegistry(_modRegistry);
        tokenRegistry = TokenRegistry(_tokenRegistry);
        tokenId = _defaultToken;
        _grantRole(DEFAULT_ADMIN_ROLE, _moduleOwner);
        _setRoleAdmin(ROLE_MODULE_OWNER, ROLE_MODULE_OWNER);
        _grantRole(ROLE_MODULE_OWNER, _moduleOwner);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    // ---------------------- Self Service Control ----------------------  //

    /**
     * @notice Enables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function enableSelfService() external override onlyAdmin {
        isSelfServiceOn = true;
    }

    /**
     * @notice Disables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function disableSelfService() external override onlyAdmin {
        isSelfServiceOn = false;
    }

    /**
     * @notice Gets the current value of the Self Service API status
     *
     */
    function isSelfServiceEnabled() external view override returns (bool) {
        return isSelfServiceOn;
    }

    // ----------------- Self Service Transactions -----------------  //

    /**
     * @notice Creates a request by the shareholder to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestSelfServiceCashPurchase(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        onlyHigherThanZero(amount)
    {
        _createCashTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestSelfServiceCashLiquidation(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                msg.sender,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell the entire share holdings of the given account.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     */
    function requestSelfServiceFullLiquidation()
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                msg.sender
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            true,
            block.timestamp,
            0 // No amount required
        );
    }

    /**
     * @notice Cancels an existing self service request for the calling shareholder.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not an authorized shareholder.
     *
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelSelfServiceRequest(
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyShareholderAsMsgSender {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            transactionDetailMap[requestId].selfService,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[msg.sender].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[msg.sender].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[msg.sender].length() == 0) {
            accountsWithTransactions.remove(msg.sender);
        }

        emit TransactionCancelled(msg.sender, requestId, memo);
    }

    // -------------------- Shareholder Transactions --------------------  //

    /**
     * @notice Creates a request to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestCashPurchase(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        onlyHigherThanZero(amount)
    {
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestCashLiquidation(
        address account,
        uint256 date,
        uint256 amount
    ) external virtual override onlyAdmin onlyShareholder(account) {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                account,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell the entire share holdings of the given account.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     *
     */
    function requestFullLiquidation(
        address account,
        uint256 date
    ) external virtual override onlyAdmin onlyShareholder(account) {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                account
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            false,
            date,
            0 // No amount required
        );
    }

    /**
     * @notice Cancels an existing request for the given account.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not the fund administrator.
     *
     * @param account The address of the shareholder's account
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelRequest(
        address account,
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyAdmin onlyShareholder(account) {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[account].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[account].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[account].length() == 0) {
            accountsWithTransactions.remove(account);
        }

        emit TransactionCancelled(account, requestId, memo);
    }

    // -------------------- TA Operations --------------------  //

    /**
     * @notice Creates a request to set up an Automatic Investent Plan for the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function setupAIP(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        onlyHigherThanZero(amount)
    {
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.AIP,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Removes an existing pending requests record for a given account
     *
     * @dev Only accounts or modules with ROLE_FUND_ADMIN or WRITE_ACCESS_TRANSACTION
     *      roles are allowed to call this function.
     * @dev The main usage for this function is to allow another module to modify
     *      the state of the current module.
     *
     * @param account The shareholder's account with the pending requests
     * @param requestId The Id of the pending request
     *
     */
    function clearTransactionStorage(
        address account,
        bytes32 requestId
    ) external virtual override returns (bool) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );
        delete transactionDetailMap[requestId];
        return pendingTransactionsMap[account].remove(requestId);
    }

    /**
     * @notice Removes an existing account from the list of accounts with transactions
     *
     * @dev This function will remove the given account from the list that contains all
     *      the accounts that have at least one pending transaction requests. This function
     *      should be called after validationg that the account as no more pending requests.
     *
     * @param account The shareholder's account
     *
     */
    function unlistFromAccountsWithPendingTransactions(
        address account
    ) external virtual override whenTransactionStorageIsEmpty(account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );
        accountsWithTransactions.remove(account);
    }

    // -------------------- Views --------------------  //

    // The operations below will copy the storage used to memory, which can be quite expensive.
    // See: https://docs.openzeppelin.com/contracts/4.x/api/utils#EnumerableSet-values-struct-EnumerableSet-Bytes32Set-
    function getAccountTransactions(
        address account
    ) external view virtual override returns (bytes32[] memory) {
        return pendingTransactionsMap[account].values();
    }

    function getTransactionDetail(
        bytes32 requestId
    ) external view virtual override returns (uint8, uint256, uint256, bool) {
        return (
            uint8(transactionDetailMap[requestId].txType),
            transactionDetailMap[requestId].date,
            transactionDetailMap[requestId].amount,
            transactionDetailMap[requestId].selfService
        );
    }

    function getAccountsWithTransactions(
        uint256 pageSize
    ) external view virtual override returns (address[] memory accounts) {
        require(
            pageSize > 0 && pageSize <= accountsWithTransactions.length(),
            "INVALID_PAGINATION_SIZE"
        );

        accounts = new address[](pageSize);
        for (uint i = 0; i < pageSize; ) {
            accounts[i] = accountsWithTransactions.at(i);
            unchecked {
                i++;
            }
        }
    }

    function getAccountsWithTransactionsCount()
        external
        view
        virtual
        override
        returns (uint256)
    {
        return accountsWithTransactions.length();
    }

    function hasTransactions(
        address account
    ) external view virtual override returns (bool) {
        return accountsWithTransactions.contains(account);
    }

    function isFromAccount(
        address account,
        bytes32 requestId
    ) external view virtual override returns (bool) {
        return pendingTransactionsMap[account].contains(requestId);
    }

    function getVersion() external pure virtual override returns (uint8) {
        return 1;
    }

    // -------------------- Internal --------------------  //

    function _listAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.add(account);
    }

    function _unlistAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.remove(account);
    }

    function _createCashTransaction(
        address account,
        ITransactionStorage.TransactionType txType,
        bool selfService,
        uint256 date,
        uint256 amount
    ) internal virtual {
        requestsCounter += 1;
        bytes32 requestId = _getTxId(account, date);
        require(
            pendingTransactionsMap[account].add(requestId),
            "INVALID_TRANSACTION_ID"
        );
        accountsWithTransactions.add(account);
        transactionDetailMap[requestId].txType = txType;
        transactionDetailMap[requestId].date = date;
        transactionDetailMap[requestId].amount = amount;
        transactionDetailMap[requestId].selfService = selfService;

        emit TransactionSubmitted(account, requestId);
    }

    function _getTxId(
        address account,
        uint256 timestamp
    ) internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encodePacked(
                    block.chainid,
                    block.number,
                    account,
                    timestamp,
                    requestsCounter
                )
            );
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/transactional/TransactionalModule_V2.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";

import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {IShareholderTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {IShareholderSelfServiceTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransferAgentTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ICancellableTransaction, ICancellableSelfServiceTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";

import {ModuleRegistry} from "../../../ModuleRegistry.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

contract TransactionalModule_V2 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IShareholderTransaction,
    IShareholderSelfServiceTransaction,
    ITransferAgentTransaction,
    ITransactionStorage,
    ICancellableTransaction,
    ICancellableSelfServiceTransaction
{
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.Bytes32Set;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    /// @dev The Id for the current module used to register the module during deployment
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSACTIONAL");
    /// @dev The owner role that can be granted to manage the current contract
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    /// @dev The Id of the authorization module
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");

    event TransactionSubmitted(address indexed account, bytes32 transactionId);

    event TransactionCancelled(
        address indexed account,
        bytes32 transactionId,
        string memo
    );

    /// @dev Flag to enable/disable the Self Service API
    bool isSelfServiceOn;
    /// @dev Counter increased every time a new pending request is created
    uint256 requestsCounter;

    /// @dev Map of all the existing pending requests
    mapping(bytes32 => ITransactionStorage.TransactionDetail) transactionDetailMap;
    /// @dev Map of the list of pending requests id's per account
    mapping(address => EnumerableSetUpgradeable.Bytes32Set) pendingTransactionsMap;
    /// @dev Set containing the accounts with at least one pending requests
    EnumerableSetUpgradeable.AddressSet accountsWithTransactions;

    TokenRegistry tokenRegistry;
    /// @dev The Id of the token associated with the transaction requests of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // ---------------------- Modifiers ----------------------  //
    modifier accountNotFrozen(address account) {
        require(
            !IAccountManager(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountFrozen(account),
            "ACCOUNT_IS_FROZEN"
        );
        _;
    }

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyShareholderAsMsgSender() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(msg.sender),
            "CALLER_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyShareholder(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "ACCOUNT_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyWithSelfServiceOn() {
        require(isSelfServiceOn, "SELF_SERVICE_NOT_ENABLED");
        _;
    }

    modifier onlyHigherThanZero(uint256 amount) {
        require(amount > 0, "INVALID_AMOUNT");
        _;
    }

    modifier whenTransactionStorageIsEmpty(address account) {
        if (pendingTransactionsMap[account].length() == 0) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    // ---------------------- Self Service Control ----------------------  //

    /**
     * @notice Enables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function enableSelfService() external override onlyAdmin {
        isSelfServiceOn = true;
    }

    /**
     * @notice Disables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function disableSelfService() external override onlyAdmin {
        isSelfServiceOn = false;
    }

    /**
     * @notice Gets the current value of the Self Service API status
     *
     */
    function isSelfServiceEnabled() external view override returns (bool) {
        return isSelfServiceOn;
    }

    // ----------------- Self Service Transactions -----------------  //

    /**
     * @notice Creates a request by the shareholder to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestSelfServiceCashPurchase(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        accountNotFrozen(msg.sender)
        onlyHigherThanZero(amount)
    {
        _createCashTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestSelfServiceCashLiquidation(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        accountNotFrozen(msg.sender)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                msg.sender,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell the entire share holdings of the given account.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     */
    function requestSelfServiceFullLiquidation()
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        accountNotFrozen(msg.sender)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                msg.sender
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            true,
            block.timestamp,
            0 // No amount required
        );
    }

    /**
     * @notice Cancels an existing self service request for the calling shareholder.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not an authorized shareholder.
     *
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelSelfServiceRequest(
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyShareholderAsMsgSender {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            transactionDetailMap[requestId].selfService,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[msg.sender].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[msg.sender].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[msg.sender].length() == 0) {
            accountsWithTransactions.remove(msg.sender);
        }

        emit TransactionCancelled(msg.sender, requestId, memo);
    }

    // -------------------- Shareholder Transactions --------------------  //

    /**
     * @notice Creates a request to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestCashPurchase(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
        onlyHigherThanZero(amount)
    {
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestCashLiquidation(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                account,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell the entire share holdings of the given account.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     *
     */
    function requestFullLiquidation(
        address account,
        uint256 date
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                account
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            false,
            date,
            0 // No amount required
        );
    }

    /**
     * @notice Cancels an existing request for the given account.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not the fund administrator.
     *
     * @param account The address of the shareholder's account
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelRequest(
        address account,
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyAdmin onlyShareholder(account) {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[account].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[account].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[account].length() == 0) {
            accountsWithTransactions.remove(account);
        }

        emit TransactionCancelled(account, requestId, memo);
    }

    // -------------------- TA Operations --------------------  //

    /**
     * @notice Creates a request to set up an Automatic Investent Plan for the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function setupAIP(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
        onlyHigherThanZero(amount)
    {
        _createCashTransaction(
            account,
            ITransactionStorage.TransactionType.AIP,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Removes an existing pending requests record for a given account
     *
     * @dev Only accounts or modules with ROLE_FUND_ADMIN or WRITE_ACCESS_TRANSACTION
     *      roles are allowed to call this function.
     * @dev The main usage for this function is to allow another module to modify
     *      the state of the current module.
     *
     * @param account The shareholder's account with the pending requests
     * @param requestId The Id of the pending request
     *
     */
    function clearTransactionStorage(
        address account,
        bytes32 requestId
    ) external virtual override returns (bool) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );
        delete transactionDetailMap[requestId];
        return pendingTransactionsMap[account].remove(requestId);
    }

    /**
     * @notice Removes an existing account from the list of accounts with transactions
     *
     * @dev This function will remove the given account from the list that contains all
     *      the accounts that have at least one pending transaction requests. This function
     *      should be called after validationg that the account as no more pending requests.
     *
     * @param account The shareholder's account
     *
     */
    function unlistFromAccountsWithPendingTransactions(
        address account
    ) external virtual override whenTransactionStorageIsEmpty(account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );
        accountsWithTransactions.remove(account);
    }

    // -------------------- Views --------------------  //

    // The operations below will copy the storage used to memory, which can be quite expensive.
    // See: https://docs.openzeppelin.com/contracts/4.x/api/utils#EnumerableSet-values-struct-EnumerableSet-Bytes32Set-
    function getAccountTransactions(
        address account
    ) external view virtual override returns (bytes32[] memory) {
        return pendingTransactionsMap[account].values();
    }

    function getTransactionDetail(
        bytes32 requestId
    ) external view virtual override returns (uint8, uint256, uint256, bool) {
        return (
            uint8(transactionDetailMap[requestId].txType),
            transactionDetailMap[requestId].date,
            transactionDetailMap[requestId].amount,
            transactionDetailMap[requestId].selfService
        );
    }

    function getAccountsWithTransactions(
        uint256 pageSize
    ) external view virtual override returns (address[] memory accounts) {
        require(
            pageSize > 0 && pageSize <= accountsWithTransactions.length(),
            "INVALID_PAGINATION_SIZE"
        );

        accounts = new address[](pageSize);
        for (uint i = 0; i < pageSize; ) {
            accounts[i] = accountsWithTransactions.at(i);
            unchecked {
                i++;
            }
        }
    }

    function getAccountsWithTransactionsCount()
        external
        view
        virtual
        override
        returns (uint256)
    {
        return accountsWithTransactions.length();
    }

    function hasTransactions(
        address account
    ) external view virtual override returns (bool) {
        return accountsWithTransactions.contains(account);
    }

    function isFromAccount(
        address account,
        bytes32 requestId
    ) external view virtual override returns (bool) {
        return pendingTransactionsMap[account].contains(requestId);
    }

    function getVersion() external pure virtual override returns (uint8) {
        return 2;
    }

    // -------------------- Internal --------------------  //

    function _listAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.add(account);
    }

    function _unlistAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.remove(account);
    }

    function _createCashTransaction(
        address account,
        ITransactionStorage.TransactionType txType,
        bool selfService,
        uint256 date,
        uint256 amount
    ) internal virtual {
        requestsCounter += 1;
        bytes32 requestId = _getTxId(account, date);
        require(
            pendingTransactionsMap[account].add(requestId),
            "INVALID_TRANSACTION_ID"
        );
        accountsWithTransactions.add(account);
        transactionDetailMap[requestId].txType = txType;
        transactionDetailMap[requestId].date = date;
        transactionDetailMap[requestId].amount = amount;
        transactionDetailMap[requestId].selfService = selfService;

        emit TransactionSubmitted(account, requestId);
    }

    function _getTxId(
        address account,
        uint256 timestamp
    ) internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encodePacked(
                    block.chainid,
                    block.number,
                    account,
                    timestamp,
                    requestsCounter
                )
            );
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/transactional/TransactionalModule_V3.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";

import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {IShareholderTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {IShareholderSelfServiceTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {IShareholderTransferTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {IShareholderSelfServiceTransferTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransferAgentTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ICancellableTransaction, ICancellableSelfServiceTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";
import {IExtendedTransactionDetail} from "../../../../interfaces/TransactionIfaces.sol";

import {ModuleRegistry} from "../../../ModuleRegistry.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

contract TransactionalModule_V3 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IShareholderTransaction,
    IShareholderSelfServiceTransaction,
    IShareholderTransferTransaction,
    IShareholderSelfServiceTransferTransaction,
    ITransferAgentTransaction,
    IExtendedTransactionDetail,
    ICancellableTransaction,
    ICancellableSelfServiceTransaction
{
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.Bytes32Set;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    /// @dev The Id for the current module used to register the module during deployment
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSACTIONAL");
    /// @dev The owner role that can be granted to manage the current contract
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    /// @dev The Id of the authorization module
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");

    event TransactionSubmitted(address indexed account, bytes32 transactionId);

    event TransactionCancelled(
        address indexed account,
        bytes32 transactionId,
        string memo
    );

    /// @dev Flag to enable/disable the Self Service API
    bool isSelfServiceOn;
    /// @dev Counter increased every time a new pending request is created
    uint256 requestsCounter;

    /// @dev Map of all the existing pending requests
    mapping(bytes32 => IExtendedTransactionDetail.ExtendedTransactionDetail) transactionDetailMap;
    /// @dev Map of the list of pending requests id's per account
    mapping(address => EnumerableSetUpgradeable.Bytes32Set) pendingTransactionsMap;
    /// @dev Set containing the accounts with at least one pending requests
    EnumerableSetUpgradeable.AddressSet accountsWithTransactions;

    TokenRegistry tokenRegistry;
    /// @dev The Id of the token associated with the transaction requests of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // ---------------------- Modifiers ----------------------  //
    modifier accountNotFrozen(address account) {
        require(
            !IAccountManager(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountFrozen(account),
            "ACCOUNT_IS_FROZEN"
        );
        _;
    }

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyShareholderAsMsgSender() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(msg.sender),
            "CALLER_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyShareholder(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "ACCOUNT_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyWithSelfServiceOn() {
        require(isSelfServiceOn, "SELF_SERVICE_NOT_ENABLED");
        _;
    }

    modifier onlyHigherThanZero(uint256 amount) {
        require(amount > 0, "INVALID_AMOUNT");
        _;
    }

    modifier whenTransactionStorageIsEmpty(address account) {
        if (pendingTransactionsMap[account].length() == 0) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    // ---------------------- Self Service Control ----------------------  //

    /**
     * @notice Enables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function enableSelfService() external override onlyAdmin {
        isSelfServiceOn = true;
    }

    /**
     * @notice Disables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function disableSelfService() external override onlyAdmin {
        isSelfServiceOn = false;
    }

    /**
     * @notice Gets the current value of the Self Service API status
     *
     */
    function isSelfServiceEnabled() external view override returns (bool) {
        return isSelfServiceOn;
    }

    // ----------------- Self Service Transactions -----------------  //

    /**
     * @notice Creates a request by the shareholder to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestSelfServiceCashPurchase(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        accountNotFrozen(msg.sender)
        onlyHigherThanZero(amount)
    {
        _createTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestSelfServiceCashLiquidation(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        accountNotFrozen(msg.sender)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                msg.sender,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell the entire share holdings of the given account.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     */
    function requestSelfServiceFullLiquidation()
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        accountNotFrozen(msg.sender)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                msg.sender
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            true,
            block.timestamp,
            0 // No amount required
        );
    }

    /**
     * @notice Creates a request by the shareholder to transfer shares to the given destination account.
     *
     * The shareholder's and the destination accounts must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount the amount of shares to transfer
     * @param destination the destination account
     */
    function requestSelfServiceShareTransfer(
        uint256 amount,
        address destination
    )
        external
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        onlyShareholder(destination)
        accountNotFrozen(msg.sender)
        accountNotFrozen(destination)
        onlyHigherThanZero(amount)
    {
        require(msg.sender != destination, "INVALID_TRANSFER_TO_SELF");
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                msg.sender
            ) >= amount,
            "NOT_ENOUGH_BALANCE"
        );
        _createTransferTransaction(
            msg.sender,
            destination,
            ITransactionStorage.TransactionType.SHARE_TRANSFER,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Cancels an existing self service request for the calling shareholder.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not an authorized shareholder.
     *
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelSelfServiceRequest(
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyShareholderAsMsgSender {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            transactionDetailMap[requestId].selfService,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[msg.sender].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[msg.sender].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[msg.sender].length() == 0) {
            accountsWithTransactions.remove(msg.sender);
        }

        emit TransactionCancelled(msg.sender, requestId, memo);
    }

    // -------------------- Shareholder Transactions --------------------  //

    /**
     * @notice Creates a request to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestCashPurchase(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
        onlyHigherThanZero(amount)
    {
        _createTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestCashLiquidation(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                account,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell the entire share holdings of the given account.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     *
     */
    function requestFullLiquidation(
        address account,
        uint256 date
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                account
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createTransaction(
            account,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            false,
            date,
            0 // No amount required
        );
    }

    /**
     * @notice Creates a request to transfer shares from the given account to the destination account.
     *
     * The shareholder's and the destination accounts must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount the shares to transfer
     * @param destination the destination account to transfer the shares
     */
    function requestShareTransfer(
        address account,
        address destination,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        onlyAdmin
        onlyShareholder(account)
        onlyShareholder(destination)
        accountNotFrozen(account)
        accountNotFrozen(destination)
        onlyHigherThanZero(amount)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                account
            ) >= amount,
            "NOT_ENOUGH_BALANCE"
        );
        _createTransferTransaction(
            account,
            destination,
            ITransactionStorage.TransactionType.SHARE_TRANSFER,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Cancels an existing request for the given account.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not the fund administrator.
     *
     * @param account The address of the shareholder's account
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelRequest(
        address account,
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyAdmin onlyShareholder(account) {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[account].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[account].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[account].length() == 0) {
            accountsWithTransactions.remove(account);
        }

        emit TransactionCancelled(account, requestId, memo);
    }

    // -------------------- TA Operations --------------------  //

    /**
     * @notice Creates a request to set up an Automatic Investent Plan for the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function setupAIP(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
        onlyHigherThanZero(amount)
    {
        _createTransaction(
            account,
            ITransactionStorage.TransactionType.AIP,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Removes an existing pending requests record for a given account
     *
     * @dev Only accounts or modules with ROLE_FUND_ADMIN or WRITE_ACCESS_TRANSACTION
     *      roles are allowed to call this function.
     * @dev The main usage for this function is to allow another module to modify
     *      the state of the current module.
     *
     * @param account The shareholder's account with the pending requests
     * @param requestId The Id of the pending request
     *
     */
    function clearTransactionStorage(
        address account,
        bytes32 requestId
    ) external virtual override returns (bool) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );

        if (pendingTransactionsMap[account].remove(requestId)) {
            delete transactionDetailMap[requestId];
            return true;
        }

        return false;
    }

    /**
     * @notice Removes an existing account from the list of accounts with transactions
     *
     * @dev This function will remove the given account from the list that contains all
     *      the accounts that have at least one pending transaction requests. This function
     *      should be called after validationg that the account as no more pending requests.
     *
     * @param account The shareholder's account
     *
     */
    function unlistFromAccountsWithPendingTransactions(
        address account
    ) external virtual override whenTransactionStorageIsEmpty(account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );
        accountsWithTransactions.remove(account);
    }

    // -------------------- Views --------------------  //

    // The operations below will copy the storage used to memory, which can be quite expensive.
    // See: https://docs.openzeppelin.com/contracts/4.x/api/utils#EnumerableSet-values-struct-EnumerableSet-Bytes32Set-
    function getAccountTransactions(
        address account
    ) external view virtual override returns (bytes32[] memory) {
        return pendingTransactionsMap[account].values();
    }

    function getTransactionDetail(
        bytes32 requestId
    ) external view virtual override returns (uint8, uint256, uint256, bool) {
        return (
            uint8(transactionDetailMap[requestId].txType),
            transactionDetailMap[requestId].date,
            transactionDetailMap[requestId].amount,
            transactionDetailMap[requestId].selfService
        );
    }

    function getExtendedTransactionDetail(
        bytes32 requestId
    )
        external
        view
        override
        returns (uint8, address, address, uint256, uint256, bool)
    {
        return (
            uint8(transactionDetailMap[requestId].txType),
            transactionDetailMap[requestId].source,
            transactionDetailMap[requestId].destination,
            transactionDetailMap[requestId].date,
            transactionDetailMap[requestId].amount,
            transactionDetailMap[requestId].selfService
        );
    }

    function getAccountsWithTransactions(
        uint256 pageSize
    ) external view virtual override returns (address[] memory accounts) {
        require(
            pageSize > 0 && pageSize <= accountsWithTransactions.length(),
            "INVALID_PAGINATION_SIZE"
        );

        accounts = new address[](pageSize);
        for (uint i = 0; i < pageSize; ) {
            accounts[i] = accountsWithTransactions.at(i);
            unchecked {
                i++;
            }
        }
    }

    function getAccountsWithTransactionsCount()
        external
        view
        virtual
        override
        returns (uint256)
    {
        return accountsWithTransactions.length();
    }

    function hasTransactions(
        address account
    ) external view virtual override returns (bool) {
        return accountsWithTransactions.contains(account);
    }

    function isFromAccount(
        address account,
        bytes32 requestId
    ) external view virtual override returns (bool) {
        return pendingTransactionsMap[account].contains(requestId);
    }

    function getVersion() external pure virtual override returns (uint8) {
        return 3;
    }

    // -------------------- Internal --------------------  //

    function _listAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.add(account);
    }

    function _unlistAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.remove(account);
    }

    function _createTransaction(
        address account,
        ITransactionStorage.TransactionType txType,
        bool selfService,
        uint256 date,
        uint256 amount
    ) internal virtual returns (bytes32 requestId) {
        requestsCounter += 1;
        requestId = _getTxId(account, date);
        require(
            pendingTransactionsMap[account].add(requestId),
            "INVALID_TRANSACTION_ID"
        );
        accountsWithTransactions.add(account);
        transactionDetailMap[requestId].txType = txType;
        transactionDetailMap[requestId].date = date;
        transactionDetailMap[requestId].amount = amount;
        transactionDetailMap[requestId].selfService = selfService;

        emit TransactionSubmitted(account, requestId);
    }

    function _createTransferTransaction(
        address account,
        address destination,
        ITransactionStorage.TransactionType txType,
        bool selfService,
        uint256 date,
        uint256 amount
    ) internal virtual returns (bytes32 requestId) {
        requestId = _createTransaction(
            account,
            txType,
            selfService,
            date,
            amount
        );
        transactionDetailMap[requestId].source = account;
        transactionDetailMap[requestId].destination = destination;
    }

    function _getTxId(
        address account,
        uint256 timestamp
    ) internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encodePacked(
                    block.chainid,
                    block.number,
                    account,
                    timestamp,
                    requestsCounter
                )
            );
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/transactional/TransactionalModule_V4.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";

import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {IShareholderTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {IShareholderSelfServiceTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {IShareholderTransferTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {IShareholderSelfServiceTransferTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransferAgentTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ICancellableTransaction, ICancellableSelfServiceTransaction} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";
import {IExtendedTransactionDetail} from "../../../../interfaces/TransactionIfaces.sol";
import {IXChainTransferTransaction} from "../../../../interfaces/IXChainTransferTransaction.sol";

import {ModuleRegistry} from "../../../ModuleRegistry.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

contract TransactionalModule_V4 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    IShareholderTransaction,
    IShareholderSelfServiceTransaction,
    IShareholderTransferTransaction,
    IShareholderSelfServiceTransferTransaction,
    ITransferAgentTransaction,
    IExtendedTransactionDetail,
    ICancellableTransaction,
    ICancellableSelfServiceTransaction,
    IXChainTransferTransaction
{
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.Bytes32Set;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    /// @dev The Id for the current module used to register the module during deployment
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSACTIONAL");
    /// @dev The owner role that can be granted to manage the current contract
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    /// @dev The Id of the authorization module
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");

    event TransactionSubmitted(address indexed account, bytes32 transactionId);

    event TransactionCancelled(
        address indexed account,
        bytes32 transactionId,
        string memo
    );

    /// @dev Flag to enable/disable the Self Service API
    bool isSelfServiceOn;
    /// @dev Counter increased every time a new pending request is created
    uint256 requestsCounter;

    /// @dev Map of all the existing pending requests
    mapping(bytes32 => IExtendedTransactionDetail.ExtendedTransactionDetail) transactionDetailMap;
    /// @dev Map of the list of pending requests id's per account
    mapping(address => EnumerableSetUpgradeable.Bytes32Set) pendingTransactionsMap;
    /// @dev Set containing the accounts with at least one pending requests
    EnumerableSetUpgradeable.AddressSet accountsWithTransactions;

    TokenRegistry tokenRegistry;
    /// @dev The Id of the token associated with the transaction requests of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // ---------------------- Modifiers ----------------------  //
    modifier accountNotFrozen(address account) {
        require(
            !IAccountManager(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountFrozen(account),
            "ACCOUNT_IS_FROZEN"
        );
        _;
    }

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyShareholderAsMsgSender() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(msg.sender),
            "CALLER_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyShareholder(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "ACCOUNT_IS_NOT_A_SHAREHOLDER"
        );
        _;
    }

    modifier onlyWithSelfServiceOn() {
        require(isSelfServiceOn, "SELF_SERVICE_NOT_ENABLED");
        _;
    }

    modifier onlyHigherThanZero(uint256 amount) {
        require(amount > 0, "INVALID_AMOUNT");
        _;
    }

    modifier whenTransactionStorageIsEmpty(address account) {
        if (pendingTransactionsMap[account].length() == 0) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    // ---------------------- Self Service Control ----------------------  //

    /**
     * @notice Enables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function enableSelfService() external override onlyAdmin {
        isSelfServiceOn = true;
    }

    /**
     * @notice Disables the Self Service API
     *
     * @dev Self Service allows shareholder accounts to call directly the associated API
     *      to create their own purchase, liquidation and cancellation requests
     *
     */
    function disableSelfService() external override onlyAdmin {
        isSelfServiceOn = false;
    }

    /**
     * @notice Gets the current value of the Self Service API status
     *
     */
    function isSelfServiceEnabled() external view override returns (bool) {
        return isSelfServiceOn;
    }

    // ----------------- Self Service Transactions -----------------  //

    /**
     * @notice Creates a request by the shareholder to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestSelfServiceCashPurchase(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        accountNotFrozen(msg.sender)
        onlyHigherThanZero(amount)
    {
        _createTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestSelfServiceCashLiquidation(
        uint256 amount
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        accountNotFrozen(msg.sender)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                msg.sender,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Creates a request by the shareholder to sell the entire share holdings of the given account.
     *
     * The shareholder must be the caller and it must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     */
    function requestSelfServiceFullLiquidation()
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        accountNotFrozen(msg.sender)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                msg.sender
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createTransaction(
            msg.sender,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            true,
            block.timestamp,
            0 // No amount required
        );
    }

    /**
     * @notice Creates a request by the shareholder to transfer shares to the given destination account.
     *
     * The shareholder's and the destination accounts must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount the amount of shares to transfer
     * @param destination the destination account
     */
    function requestSelfServiceShareTransfer(
        uint256 amount,
        address destination
    )
        external
        virtual
        override
        onlyWithSelfServiceOn
        onlyShareholderAsMsgSender
        onlyShareholder(destination)
        accountNotFrozen(msg.sender)
        accountNotFrozen(destination)
        onlyHigherThanZero(amount)
    {
        require(msg.sender != destination, "INVALID_TRANSFER_TO_SELF");
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                msg.sender
            ) >= amount,
            "NOT_ENOUGH_BALANCE"
        );
        _createTransferTransaction(
            msg.sender,
            destination,
            ITransactionStorage.TransactionType.SHARE_TRANSFER,
            true,
            block.timestamp,
            amount
        );
    }

    /**
     * @notice Cancels an existing self service request for the calling shareholder.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not an authorized shareholder.
     *
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelSelfServiceRequest(
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyShareholderAsMsgSender {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            transactionDetailMap[requestId].selfService,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[msg.sender].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[msg.sender].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[msg.sender].length() == 0) {
            accountsWithTransactions.remove(msg.sender);
        }

        emit TransactionCancelled(msg.sender, requestId, memo);
    }

    // -------------------- Shareholder Transactions --------------------  //

    /**
     * @notice Creates a request to buy a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function requestCashPurchase(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
        onlyHigherThanZero(amount)
    {
        _createTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_PURCHASE,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell a certain number of shares equivalent to the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to sell
     *
     */
    function requestCashLiquidation(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).hasEnoughHoldings(
                account,
                amount
            ),
            "NOT_ENOUGH_BALANCE"
        );
        _createTransaction(
            account,
            ITransactionStorage.TransactionType.CASH_LIQUIDATION,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a request to sell the entire share holdings of the given account.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     *
     */
    function requestFullLiquidation(
        address account,
        uint256 date
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                account
            ) > 0,
            "NOT_ENOUGH_BALANCE"
        );
        _createTransaction(
            account,
            ITransactionStorage.TransactionType.FULL_LIQUIDATION,
            false,
            date,
            0 // No amount required
        );
    }

    /**
     * @notice Creates a request to transfer shares from the given account to the destination account.
     *
     * The shareholder's and the destination accounts must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param amount the shares to transfer
     * @param destination the destination account to transfer the shares
     */
    function requestShareTransfer(
        address account,
        address destination,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        onlyShareholder(destination)
        accountNotFrozen(account)
        accountNotFrozen(destination)
        onlyHigherThanZero(amount)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                account
            ) >= amount,
            "NOT_ENOUGH_BALANCE"
        );
        _createTransferTransaction(
            account,
            destination,
            ITransactionStorage.TransactionType.SHARE_TRANSFER,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Cancels an existing request for the given account.
     *
     * The shareholder's account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @dev The operation will revert if the request does not exist for the account or the caller
     *      is not the fund administrator.
     *
     * @param account The address of the shareholder's account
     * @param requestId The request ID
     * @param memo a memo for the calcellation
     *
     */
    function cancelRequest(
        address account,
        bytes32 requestId,
        string memory memo
    ) external virtual override onlyAdmin onlyShareholder(account) {
        require(
            transactionDetailMap[requestId].txType >
                ITransactionStorage.TransactionType.INVALID,
            "INVALID_TRANSACTION_TYPE"
        );
        require(
            pendingTransactionsMap[account].contains(requestId),
            "INVALID_TRANSACTION_ID"
        );

        pendingTransactionsMap[account].remove(requestId);
        delete transactionDetailMap[requestId];

        if (pendingTransactionsMap[account].length() == 0) {
            accountsWithTransactions.remove(account);
        }

        emit TransactionCancelled(account, requestId, memo);
    }

    // -------------------- Cross-chain Transfers --------------------  //

    /**
     * @notice Creates a cross-chain transfer request representing an inflow of shares from another network to this contract.
     *
     * The shareholder account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account the address of the shareholder's account
     * @param date the date of the request as a UNIX timestamp
     * @param amount the shares to transfer
     *
     */
    function requestCrossChainTransferIn(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
    {
        _createTransaction(
            account,
            ITransactionStorage.TransactionType.CXFER_IN,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Creates a cross-chain transfer request representing an outflow of shares fom this contract to another network.
     *
     * The shareholder account must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account the address of the shareholder's account
     * @param date the date of the request as a UNIX timestamp
     * @param amount the shares to transfer
     *
     */
    function requestCrossChainTransferOut(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
        onlyHigherThanZero(amount)
    {
        require(
            IHoldings(tokenRegistry.getTokenAddress(tokenId)).getShareHoldings(
                account
            ) >= amount,
            "NOT_ENOUGH_BALANCE"
        );

        _createTransaction(
            account,
            ITransactionStorage.TransactionType.CXFER_OUT,
            false,
            date,
            amount
        );
    }

    // -------------------- TA Operations --------------------  //

    /**
     * @notice Creates a request to set up an Automatic Investent Plan for the given cash amount.
     *
     * The shareholder must be previously authorized via the authorization API defined
     * by the {IAuthorization} interface.
     *
     * @param account The address of the shareholder's account
     * @param date The date of the request as a UNIX timestamp
     * @param amount The cash amount equivalent to the number of shares to buy
     *
     */
    function setupAIP(
        address account,
        uint256 date,
        uint256 amount
    )
        external
        virtual
        override
        onlyAdmin
        onlyShareholder(account)
        accountNotFrozen(account)
        onlyHigherThanZero(amount)
    {
        _createTransaction(
            account,
            ITransactionStorage.TransactionType.AIP,
            false,
            date,
            amount
        );
    }

    /**
     * @notice Removes an existing pending requests record for a given account
     *
     * @dev Only accounts or modules with ROLE_FUND_ADMIN or WRITE_ACCESS_TRANSACTION
     *      roles are allowed to call this function.
     * @dev The main usage for this function is to allow another module to modify
     *      the state of the current module.
     *
     * @param account The shareholder's account with the pending requests
     * @param requestId The Id of the pending request
     *
     */
    function clearTransactionStorage(
        address account,
        bytes32 requestId
    ) external virtual override returns (bool) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );

        if (pendingTransactionsMap[account].remove(requestId)) {
            delete transactionDetailMap[requestId];
            return true;
        }

        return false;
    }

    /**
     * @notice Removes an existing account from the list of accounts with transactions
     *
     * @dev This function will remove the given account from the list that contains all
     *      the accounts that have at least one pending transaction requests. This function
     *      should be called after validationg that the account as no more pending requests.
     *
     * @param account The shareholder's account
     *
     */
    function unlistFromAccountsWithPendingTransactions(
        address account
    ) external virtual override whenTransactionStorageIsEmpty(account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender) ||
                AccessControlUpgradeable(
                    modules.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TRANSACTION"), msg.sender),
            "NO_WRITE_ACCESS"
        );
        accountsWithTransactions.remove(account);
    }

    // -------------------- Views --------------------  //

    // The operations below will copy the storage used to memory, which can be quite expensive.
    // See: https://docs.openzeppelin.com/contracts/4.x/api/utils#EnumerableSet-values-struct-EnumerableSet-Bytes32Set-
    function getAccountTransactions(
        address account
    ) external view virtual override returns (bytes32[] memory) {
        return pendingTransactionsMap[account].values();
    }

    function getTransactionDetail(
        bytes32 requestId
    ) external view virtual override returns (uint8, uint256, uint256, bool) {
        return (
            uint8(transactionDetailMap[requestId].txType),
            transactionDetailMap[requestId].date,
            transactionDetailMap[requestId].amount,
            transactionDetailMap[requestId].selfService
        );
    }

    function getExtendedTransactionDetail(
        bytes32 requestId
    )
        external
        view
        override
        returns (uint8, address, address, uint256, uint256, bool)
    {
        return (
            uint8(transactionDetailMap[requestId].txType),
            transactionDetailMap[requestId].source,
            transactionDetailMap[requestId].destination,
            transactionDetailMap[requestId].date,
            transactionDetailMap[requestId].amount,
            transactionDetailMap[requestId].selfService
        );
    }

    function getAccountsWithTransactions(
        uint256 pageSize
    ) external view virtual override returns (address[] memory accounts) {
        require(
            pageSize > 0 && pageSize <= accountsWithTransactions.length(),
            "INVALID_PAGINATION_SIZE"
        );

        accounts = new address[](pageSize);
        for (uint i = 0; i < pageSize; ) {
            accounts[i] = accountsWithTransactions.at(i);
            unchecked {
                i++;
            }
        }
    }

    function getAccountsWithTransactionsCount()
        external
        view
        virtual
        override
        returns (uint256)
    {
        return accountsWithTransactions.length();
    }

    function hasTransactions(
        address account
    ) external view virtual override returns (bool) {
        return accountsWithTransactions.contains(account);
    }

    function isFromAccount(
        address account,
        bytes32 requestId
    ) external view virtual override returns (bool) {
        return pendingTransactionsMap[account].contains(requestId);
    }

    function getVersion() external pure virtual override returns (uint8) {
        return 4;
    }

    // -------------------- Internal --------------------  //

    function _listAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.add(account);
    }

    function _unlistAccountWithTransactions(address account) internal virtual {
        accountsWithTransactions.remove(account);
    }

    function _createTransaction(
        address account,
        ITransactionStorage.TransactionType txType,
        bool selfService,
        uint256 date,
        uint256 amount
    ) internal virtual returns (bytes32 requestId) {
        requestsCounter += 1;
        requestId = _getTxId(account, date);
        require(
            pendingTransactionsMap[account].add(requestId),
            "INVALID_TRANSACTION_ID"
        );
        accountsWithTransactions.add(account);
        transactionDetailMap[requestId].txType = txType;
        transactionDetailMap[requestId].date = date;
        transactionDetailMap[requestId].amount = amount;
        transactionDetailMap[requestId].selfService = selfService;

        emit TransactionSubmitted(account, requestId);
    }

    function _createTransferTransaction(
        address account,
        address destination,
        ITransactionStorage.TransactionType txType,
        bool selfService,
        uint256 date,
        uint256 amount
    ) internal virtual returns (bytes32 requestId) {
        requestId = _createTransaction(
            account,
            txType,
            selfService,
            date,
            amount
        );
        transactionDetailMap[requestId].source = account;
        transactionDetailMap[requestId].destination = destination;
    }

    function _getTxId(
        address account,
        uint256 timestamp
    ) internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encodePacked(
                    block.chainid,
                    block.number,
                    account,
                    timestamp,
                    requestsCounter
                )
            );
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/transfer_agent/TransferAgentModule_V1.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";

import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransferAgent} from "../../../../interfaces/ITransferAgent.sol";
import {MoneyMarketFund} from "../../../../MoneyMarketFund.sol";
import {ModuleRegistry} from "../../../ModuleRegistry.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

contract TransferAgentModule_V1 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    ITransferAgent
{
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSFER_AGENT");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    uint256 public constant MAX_ACCOUNT_PAGE_SIZE = 10;

    TokenRegistry tokenRegistry;
    MoneyMarketFund moneyMarketFund;
    /// @dev The Id of the token associated with the settlement and div distribution of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // *********************** Events *********************** //
    // ****************************************************** //

    /**
     * @dev This is emitted when dividends are paid to the shareholder,
     * in the very unlikely scenario of rate being lower than 0 the dividend
     * will be deducted from the shareholder's balance instead:
     */
    event DividendDistributed(
        address indexed account,
        uint256 indexed date,
        int256 rate,
        uint256 price,
        uint256 shares
    );
    /// @dev This is emitted when a shareholder request is settled:
    event TransactionSettled(
        address indexed account,
        uint256 indexed date,
        uint8 indexed transactionType,
        bytes32 transactionId,
        uint256 price,
        uint256 amount,
        uint256 shares
    );
    /// @dev This is emitted when a manual adjustment of the balance is performed by the TA:
    event BalanceAdjusted(address indexed account, uint256 amount, string memo);

    // ---------------------- Modifiers ----------------------  //

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyWhenShareholderExists(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        _;
    }

    // -------------------- Dividends --------------------  //

    modifier onlyWithValidRate(int256 rate) {
        require(rate != 0, "INVALID_DIV_RATE");
        _;
    }

    modifier whenLessThanZero(int256 rate) {
        if (rate < 0) {
            _;
        }
    }

    // ---------------- Transactions ----------------  //

    modifier onlyValidPaginationSize(
        uint256 arrayLength,
        uint256 maxArraySize
    ) {
        require(arrayLength <= maxArraySize, "INVALID_PAGINATION_SIZE");
        _;
    }

    modifier whenTransactionsExist(address account) {
        if (
            ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(account)
        ) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _moduleOwner,
        address _modRegistry,
        address _tokenRegistry,
        string memory _defaultToken
    ) public initializer {
        require(_moduleOwner != address(0), "INVALID_ADDRESS");
        require(_modRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        require(_tokenRegistry != address(0), "INVALID_REGISTRY_ADDRESS");
        __BaseUpgradeableModule_init();
        __AccessControlEnumerable_init();
        modules = ModuleRegistry(_modRegistry);
        tokenRegistry = TokenRegistry(_tokenRegistry);
        tokenId = _defaultToken;
        address tokenAddress = tokenRegistry.getTokenAddress(tokenId);
        require(tokenAddress != address(0), "INVALID_TOKEN_ADDRESS");
        moneyMarketFund = MoneyMarketFund(tokenAddress);
        _grantRole(DEFAULT_ADMIN_ROLE, _moduleOwner);
        _setRoleAdmin(ROLE_MODULE_OWNER, ROLE_MODULE_OWNER);
        _grantRole(ROLE_MODULE_OWNER, _moduleOwner);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() external pure virtual override returns (uint8) {
        return 1;
    }

    function adjustBalance(
        address account,
        uint256 currentBalance,
        uint256 newBalance,
        string memory memo
    ) external virtual override onlyAdmin onlyWhenShareholderExists(account) {
        require(
            currentBalance == moneyMarketFund.balanceOf(account),
            "CURRENT_BALANCE_MISMATCH"
        );
        require(
            newBalance != moneyMarketFund.balanceOf(account),
            "NO_ADJUSTMENT_REQUIRED"
        );

        if (currentBalance > newBalance) {
            moneyMarketFund.burnShares(account, (currentBalance - newBalance));
            emit BalanceAdjusted(account, (currentBalance - newBalance), memo);
        } else {
            moneyMarketFund.mintShares(account, (newBalance - currentBalance));
            emit BalanceAdjusted(account, (newBalance - currentBalance), memo);
        }
        moneyMarketFund.updateHolderInList(account);
    }

    /**
     * @notice Distributes dividends to the account if it has holdings.
     *
     * The amount of shares to distribute in the form of divideds are calculated as follows:
     *
     *      Share dividends = (account's balance * rate) / price
     *
     * This operation will mint or burn shares according to the rate provided.
     *      If rate > 0 it will mint shares
     *      If rate < 0 it will burn shares
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate for the given shareholder
     * @param price The NAV price per share
     *
     */
    function distributeDividends(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Distributes dividends and settles existing requests prior to the specified date for the given account.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate
     * @param price The NAV price per share
     *
     */
    function endOfDay(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Settles existing requests prior to the specified date for the given account.
     *
     * This operation will mint or burn shares according to the request type.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param price The NAV price per share
     *
     */
    function settleTransactions(
        address[] memory accounts,
        uint256 date,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    // -------------------- Dividends --------------------  //

    function _payDividend(
        address account,
        int256 rate,
        uint256 dividendShares
    ) internal virtual {
        if (rate > 0) {
            moneyMarketFund.mintShares(account, dividendShares);
        }
    }

    function _handleNegativeYield(
        address account,
        int256 rate,
        uint256 dividendShares
    ) internal whenLessThanZero(rate) {
        uint256 negativeYield;
        if (dividendShares < moneyMarketFund.balanceOf(account)) {
            negativeYield = dividendShares;
        } else {
            negativeYield = moneyMarketFund.balanceOf(account);
        }
        moneyMarketFund.burnShares(account, negativeYield);
    }

    // -------------------- Transactions --------------------  //

    function _processSettlements(
        address account,
        uint256 date,
        uint256 price
    ) internal virtual whenTransactionsExist(account) {
        bytes32[] memory pendingTxs = ITransactionStorage(
            modules.getModuleAddress(TRANSACTIONAL_MODULE)
        ).getAccountTransactions(account);
        for (uint256 i = 0; i < pendingTxs.length; ) {
            bytes32 txId = pendingTxs[i];
            (
                uint8 txType,
                uint256 txDate,
                uint256 amount,

            ) = ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).getTransactionDetail(txId);
            require(
                _isTypeSupported(ITransactionStorage.TransactionType(txType)),
                "INVALID_TRANSACTION_TYPE"
            );
            if (txDate <= date) {
                if (
                    _isLiquidation(ITransactionStorage.TransactionType(txType))
                ) {
                    _handleLiquidation(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                } else if (
                    _isPurchase(ITransactionStorage.TransactionType(txType))
                ) {
                    _handlePurchase(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                }
                moneyMarketFund.updateHolderInList(account);
                ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).clearTransactionStorage(account, txId);
            }
            unchecked {
                i++;
            }
        }
        ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
            .unlistFromAccountsWithPendingTransactions(account);
    }

    function _processDividends(
        address account,
        uint256 date,
        int256 rate,
        uint256 price
    ) internal virtual {
        if (moneyMarketFund.hasHoldings(account)) {
            uint256 dividendAmount = moneyMarketFund.balanceOf(account) *
                uint256(abs(rate));
            uint256 dividendShares = dividendAmount / price;

            _payDividend(account, rate, dividendShares);
            // handle very unlikely scenario if occurs
            _handleNegativeYield(account, rate, dividendShares);
            moneyMarketFund.removeEmptyHolderFromList(account);

            emit DividendDistributed(
                account,
                date,
                rate,
                price,
                dividendShares
            );
        }
    }

    function _handleLiquidation(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 scaleFactor = moneyMarketFund.NUMBER_SCALE_FACTOR();
        if (txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION) {
            uint256 lastBalance = moneyMarketFund.balanceOf(account);
            moneyMarketFund.burnShares(account, lastBalance);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                (lastBalance * price) / scaleFactor,
                lastBalance
            );
        } else {
            uint256 shares = _getQuantityOfTokens(scaleFactor, amount, price);
            moneyMarketFund.burnShares(account, shares);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                amount,
                shares
            );
        }
    }

    function _handlePurchase(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 shares = _getQuantityOfTokens(
            moneyMarketFund.NUMBER_SCALE_FACTOR(),
            amount,
            price
        );
        emit TransactionSettled(
            account,
            date,
            uint8(txType),
            txId,
            price,
            amount,
            shares
        );
        moneyMarketFund.mintShares(account, shares);
    }

    function _isTypeSupported(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE ||
            txType == ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION);
    }

    function _isPurchase(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE);
    }

    function _isLiquidation(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType ==
            ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION);
    }

    // ------------------------------------------------------------------- //

    function _getQuantityOfTokens(
        uint256 scaleFactor,
        uint256 amount,
        uint256 price
    ) internal pure virtual returns (uint256) {
        return ((amount * scaleFactor) / price);
    }

    function abs(int x) internal pure virtual returns (int) {
        return x >= 0 ? x : -x;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/transfer_agent/TransferAgentModule_V2.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";

import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransferAgent} from "../../../../interfaces/ITransferAgent.sol";
import {IRecovery} from "../../../../interfaces/IRecovery.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {MoneyMarketFund} from "../../../../MoneyMarketFund.sol";
import {ModuleRegistry} from "../../../ModuleRegistry.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

contract TransferAgentModule_V2 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    ITransferAgent,
    IRecovery
{
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSFER_AGENT");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    uint256 public constant MAX_ACCOUNT_PAGE_SIZE = 10;

    TokenRegistry tokenRegistry;
    MoneyMarketFund moneyMarketFund;
    /// @dev The Id of the token associated with the settlement and div distribution of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // *********************** Events *********************** //
    // ****************************************************** //

    /**
     * @dev This is emitted when dividends are paid to the shareholder,
     * in the very unlikely scenario of rate being lower than 0 the dividend
     * will be deducted from the shareholder's balance instead:
     */
    event DividendDistributed(
        address indexed account,
        uint256 indexed date,
        int256 rate,
        uint256 price,
        uint256 shares
    );
    /// @dev This is emitted when a shareholder request is settled:
    event TransactionSettled(
        address indexed account,
        uint256 indexed date,
        uint8 indexed transactionType,
        bytes32 transactionId,
        uint256 price,
        uint256 amount,
        uint256 shares
    );
    /// @dev This is emitted when a manual adjustment of the balance is performed by the TA:
    event BalanceAdjusted(address indexed account, uint256 amount, string memo);
    /// @dev This is emmited when the entire balance of an account is recovered by the TA:
    event AccountRecovered(
        address indexed fromAccount,
        address indexed toAccount,
        uint256 amount,
        string memo
    );
    /// @dev This is emmited when a partial balance amount of an account is recovered by the TA:
    event AssetRecovered(
        address indexed fromAccount,
        address indexed toAccount,
        uint256 amount,
        string memo
    );

    // ---------------------- Modifiers ----------------------  //

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyWhenShareholderExists(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        _;
    }

    // -------------------- Dividends --------------------  //

    modifier onlyWithValidRate(int256 rate) {
        require(rate != 0, "INVALID_DIV_RATE");
        _;
    }

    modifier whenLessThanZero(int256 rate) {
        if (rate < 0) {
            _;
        }
    }

    // ---------------- Transactions ----------------  //

    modifier onlyValidPaginationSize(
        uint256 arrayLength,
        uint256 maxArraySize
    ) {
        require(arrayLength <= maxArraySize, "INVALID_PAGINATION_SIZE");
        _;
    }

    modifier whenTransactionsExist(address account) {
        if (
            ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(account)
        ) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() external pure virtual override returns (uint8) {
        return 2;
    }

    function adjustBalance(
        address account,
        uint256 currentBalance,
        uint256 newBalance,
        string memory memo
    ) external virtual override onlyAdmin onlyWhenShareholderExists(account) {
        require(
            currentBalance == moneyMarketFund.balanceOf(account),
            "CURRENT_BALANCE_MISMATCH"
        );
        require(
            newBalance != moneyMarketFund.balanceOf(account),
            "NO_ADJUSTMENT_REQUIRED"
        );

        if (currentBalance > newBalance) {
            moneyMarketFund.burnShares(account, (currentBalance - newBalance));
            emit BalanceAdjusted(account, (currentBalance - newBalance), memo);
        } else {
            moneyMarketFund.mintShares(account, (newBalance - currentBalance));
            emit BalanceAdjusted(account, (newBalance - currentBalance), memo);
        }
        moneyMarketFund.updateHolderInList(account);
    }

    /**
     * @notice Distributes dividends to the account if it has holdings.
     *
     * The amount of shares to distribute in the form of divideds are calculated as follows:
     *
     *      Share dividends = (account's balance * rate) / price
     *
     * This operation will mint or burn shares according to the rate provided.
     *      If rate > 0 it will mint shares
     *      If rate < 0 it will burn shares
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate for the given shareholder
     * @param price The NAV price per share
     *
     */
    function distributeDividends(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Distributes dividends and settles existing requests prior to the specified date for the given account.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate
     * @param price The NAV price per share
     *
     */
    function endOfDay(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Settles existing requests prior to the specified date for the given account.
     *
     * This operation will mint or burn shares according to the request type.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param price The NAV price per share
     *
     */
    function settleTransactions(
        address[] memory accounts,
        uint256 date,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @dev Recovers the entire balance of an account
     *
     * @param from the account holding the balance to recover
     * @param to the destination account to transfer the balance
     * @param memo a memo for the recovery operation
     */
    function recoverAccount(
        address from,
        address to,
        string memory memo
    ) external virtual override onlyAdmin {
        // Checks
        require(
            !ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(from),
            "PENDING_TRANSACTIONS_EXIST"
        );
        require(
            moneyMarketFund.getShareHoldings(from) > 0,
            "ACCOUNT_HAS_NO_BALANCE"
        );
        uint256 balance = moneyMarketFund.getShareHoldings(from);

        // Effects & Interactions
        moneyMarketFund.burnShares(from, balance);
        moneyMarketFund.mintShares(to, balance);
        moneyMarketFund.updateHolderInList(from);
        moneyMarketFund.updateHolderInList(to);
        IAccountManager(modules.getModuleAddress(AUTHORIZATION_MODULE))
            .removeAccountPostRecovery(from, to);

        emit AccountRecovered(from, to, balance, memo);
    }

    /**
     * @dev Recovers a part of the balance of an account
     *
     * @param from the account holding the balance amount to recover
     * @param to the destination account to transfer the balance
     * @param memo a memo for the recovery operation
     */
    function recoverAsset(
        address from,
        address to,
        uint256 amount,
        string memory memo
    ) external virtual override onlyAdmin {
        // Checks
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(from) &&
                IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                    .isAccountAuthorized(to),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );

        uint256 balance = moneyMarketFund.getShareHoldings(from);
        require(balance >= amount, "NOT_ENOUGH_BALANCE");

        // Effects & Interactions
        moneyMarketFund.burnShares(from, amount);
        moneyMarketFund.mintShares(to, amount);
        moneyMarketFund.updateHolderInList(from);
        moneyMarketFund.updateHolderInList(to);
        emit AssetRecovered(from, to, amount, memo);
    }

    // -------------------- Dividends --------------------  //

    function _payDividend(
        address account,
        int256 rate,
        uint256 dividendShares
    ) internal virtual {
        if (rate > 0) {
            moneyMarketFund.mintShares(account, dividendShares);
        }
    }

    function _handleNegativeYield(
        address account,
        int256 rate,
        uint256 dividendShares
    ) internal whenLessThanZero(rate) {
        uint256 negativeYield;
        if (dividendShares < moneyMarketFund.balanceOf(account)) {
            negativeYield = dividendShares;
        } else {
            negativeYield = moneyMarketFund.balanceOf(account);
        }
        moneyMarketFund.burnShares(account, negativeYield);
    }

    // -------------------- Transactions --------------------  //

    function _processSettlements(
        address account,
        uint256 date,
        uint256 price
    ) internal virtual whenTransactionsExist(account) {
        bytes32[] memory pendingTxs = ITransactionStorage(
            modules.getModuleAddress(TRANSACTIONAL_MODULE)
        ).getAccountTransactions(account);
        for (uint256 i = 0; i < pendingTxs.length; ) {
            bytes32 txId = pendingTxs[i];
            (
                uint8 txType,
                uint256 txDate,
                uint256 amount,

            ) = ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).getTransactionDetail(txId);
            require(
                _isTypeSupported(ITransactionStorage.TransactionType(txType)),
                "INVALID_TRANSACTION_TYPE"
            );
            if (txDate <= date) {
                if (
                    _isLiquidation(ITransactionStorage.TransactionType(txType))
                ) {
                    _handleLiquidation(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                } else if (
                    _isPurchase(ITransactionStorage.TransactionType(txType))
                ) {
                    _handlePurchase(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                }
                moneyMarketFund.updateHolderInList(account);
                ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).clearTransactionStorage(account, txId);
            }
            unchecked {
                i++;
            }
        }
        ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
            .unlistFromAccountsWithPendingTransactions(account);
    }

    function _processDividends(
        address account,
        uint256 date,
        int256 rate,
        uint256 price
    ) internal virtual {
        if (moneyMarketFund.hasHoldings(account)) {
            uint256 dividendAmount = moneyMarketFund.balanceOf(account) *
                uint256(abs(rate));
            uint256 dividendShares = dividendAmount / price;

            _payDividend(account, rate, dividendShares);
            // handle very unlikely scenario if occurs
            _handleNegativeYield(account, rate, dividendShares);
            moneyMarketFund.removeEmptyHolderFromList(account);

            emit DividendDistributed(
                account,
                date,
                rate,
                price,
                dividendShares
            );
        }
    }

    function _handleLiquidation(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 scaleFactor = moneyMarketFund.NUMBER_SCALE_FACTOR();
        if (txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION) {
            uint256 lastBalance = moneyMarketFund.balanceOf(account);
            moneyMarketFund.burnShares(account, lastBalance);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                (lastBalance * price) / scaleFactor,
                lastBalance
            );
        } else {
            uint256 shares = _getQuantityOfTokens(scaleFactor, amount, price);
            moneyMarketFund.burnShares(account, shares);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                amount,
                shares
            );
        }
    }

    function _handlePurchase(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 shares = _getQuantityOfTokens(
            moneyMarketFund.NUMBER_SCALE_FACTOR(),
            amount,
            price
        );
        emit TransactionSettled(
            account,
            date,
            uint8(txType),
            txId,
            price,
            amount,
            shares
        );
        moneyMarketFund.mintShares(account, shares);
    }

    function _isTypeSupported(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE ||
            txType == ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION);
    }

    function _isPurchase(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE);
    }

    function _isLiquidation(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType ==
            ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION);
    }

    // ------------------------------------------------------------------- //

    function _getQuantityOfTokens(
        uint256 scaleFactor,
        uint256 amount,
        uint256 price
    ) internal pure virtual returns (uint256) {
        return ((amount * scaleFactor) / price);
    }

    function abs(int x) internal pure virtual returns (int) {
        return x >= 0 ? x : -x;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/transfer_agent/TransferAgentModule_V3.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";

import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {IAdminTransfer} from "../../../../interfaces/IAdminTransfer.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";
import {IExtendedTransactionDetail} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransferAgent} from "../../../../interfaces/ITransferAgent.sol";
import {IRecovery} from "../../../../interfaces/IRecovery.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {MoneyMarketFund} from "../../../../MoneyMarketFund.sol";
import {ModuleRegistry} from "../../../ModuleRegistry.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

contract TransferAgentModule_V3 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    ITransferAgent,
    IRecovery
{
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSFER_AGENT");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    uint256 public constant MAX_ACCOUNT_PAGE_SIZE = 10;

    TokenRegistry tokenRegistry;
    MoneyMarketFund moneyMarketFund;
    /// @dev The Id of the token associated with the settlement and div distribution of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // *********************** Events *********************** //
    // ****************************************************** //

    /**
     * @dev This is emitted when dividends are paid to the shareholder,
     * in the very unlikely scenario of rate being lower than 0 the dividend
     * will be deducted from the shareholder's balance instead:
     */
    event DividendDistributed(
        address indexed account,
        uint256 indexed date,
        int256 rate,
        uint256 price,
        uint256 shares
    );
    /// @dev This is emitted when a shareholder request is settled:
    event TransactionSettled(
        address indexed account,
        uint256 indexed date,
        uint8 indexed transactionType,
        bytes32 transactionId,
        uint256 price,
        uint256 amount,
        uint256 shares
    );
    /// @dev This is emitted when a share transfer is settled:
    event TransferSettled(
        address indexed from,
        address indexed to,
        uint256 indexed date,
        uint8 transactionType,
        bytes32 transactionId,
        uint256 price,
        uint256 shares
    );
    /// @dev This is emitted when a manual adjustment of the balance is performed by the TA:
    event BalanceAdjusted(address indexed account, uint256 amount, string memo);
    /// @dev This is emmited when the entire balance of an account is recovered by the TA:
    event AccountRecovered(
        address indexed fromAccount,
        address indexed toAccount,
        uint256 amount,
        string memo
    );
    /// @dev This is emmited when a partial balance amount of an account is recovered by the TA:
    event AssetRecovered(
        address indexed fromAccount,
        address indexed toAccount,
        uint256 amount,
        string memo
    );

    // ---------------------- Modifiers ----------------------  //

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyWhenShareholderExists(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        _;
    }

    // -------------------- Dividends --------------------  //

    modifier onlyWithValidRate(int256 rate) {
        require(rate != 0, "INVALID_DIV_RATE");
        _;
    }

    // ---------------- Transactions ----------------  //

    modifier onlyValidPaginationSize(
        uint256 arrayLength,
        uint256 maxArraySize
    ) {
        require(arrayLength <= maxArraySize, "INVALID_PAGINATION_SIZE");
        _;
    }

    modifier whenTransactionsExist(address account) {
        if (
            ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(account)
        ) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() external pure virtual override returns (uint8) {
        return 3;
    }

    function adjustBalance(
        address account,
        uint256 currentBalance,
        uint256 newBalance,
        string memory memo
    ) external virtual override onlyAdmin onlyWhenShareholderExists(account) {
        require(
            currentBalance == moneyMarketFund.balanceOf(account),
            "CURRENT_BALANCE_MISMATCH"
        );
        require(
            newBalance != moneyMarketFund.balanceOf(account),
            "NO_ADJUSTMENT_REQUIRED"
        );

        if (currentBalance > newBalance) {
            moneyMarketFund.burnShares(account, (currentBalance - newBalance));
            emit BalanceAdjusted(account, (currentBalance - newBalance), memo);
        } else {
            moneyMarketFund.mintShares(account, (newBalance - currentBalance));
            emit BalanceAdjusted(account, (newBalance - currentBalance), memo);
        }
        moneyMarketFund.updateHolderInList(account);
    }

    /**
     * @notice Distributes dividends to the account if it has holdings.
     *
     * The amount of shares to distribute in the form of divideds are calculated as follows:
     *
     *      Share dividends = (account's balance * rate) / price
     *
     * This operation will mint or burn shares according to the rate provided.
     *      If rate > 0 it will mint shares
     *      If rate < 0 it will burn shares
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate for the given shareholder
     * @param price The NAV price per share
     *
     */
    function distributeDividends(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Distributes dividends and settles existing requests prior to the specified date for the given account.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate
     * @param price The NAV price per share
     *
     */
    function endOfDay(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Settles existing requests prior to the specified date for the given account.
     *
     * This operation will mint or burn shares according to the request type.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param price The NAV price per share
     *
     */
    function settleTransactions(
        address[] memory accounts,
        uint256 date,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @dev Recovers the entire balance of an account
     *
     * @param from the account holding the balance to recover
     * @param to the destination account to transfer the balance
     * @param memo a memo for the recovery operation
     */
    function recoverAccount(
        address from,
        address to,
        string memory memo
    ) external virtual override onlyAdmin {
        // Checks
        require(
            !ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(from),
            "PENDING_TRANSACTIONS_EXIST"
        );
        require(
            moneyMarketFund.getShareHoldings(from) > 0,
            "ACCOUNT_HAS_NO_BALANCE"
        );
        uint256 balance = moneyMarketFund.getShareHoldings(from);

        // Effects & Interactions
        moneyMarketFund.burnShares(from, balance);
        moneyMarketFund.mintShares(to, balance);
        moneyMarketFund.updateHolderInList(from);
        moneyMarketFund.updateHolderInList(to);
        IAccountManager(modules.getModuleAddress(AUTHORIZATION_MODULE))
            .removeAccountPostRecovery(from, to);

        emit AccountRecovered(from, to, balance, memo);
    }

    /**
     * @dev Recovers a part of the balance of an account
     *
     * @param from the account holding the balance amount to recover
     * @param to the destination account to transfer the balance
     * @param memo a memo for the recovery operation
     */
    function recoverAsset(
        address from,
        address to,
        uint256 amount,
        string memory memo
    ) external virtual override onlyAdmin {
        // Checks
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(from) &&
                IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                    .isAccountAuthorized(to),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );

        uint256 balance = moneyMarketFund.getShareHoldings(from);
        require(balance >= amount, "NOT_ENOUGH_BALANCE");

        // Effects & Interactions
        moneyMarketFund.burnShares(from, amount);
        moneyMarketFund.mintShares(to, amount);
        moneyMarketFund.updateHolderInList(from);
        moneyMarketFund.updateHolderInList(to);

        emit AssetRecovered(from, to, amount, memo);
    }

    // -------------------- Dividends --------------------  //

    function _payDividend(
        address account,
        int256 rate,
        uint256 dividendShares
    ) internal virtual {
        moneyMarketFund.mintShares(account, dividendShares);
    }

    function _handleNegativeYield(
        address account,
        int256 rate,
        uint256 dividendShares
    ) internal {
        uint256 negativeYield;
        if (dividendShares < moneyMarketFund.balanceOf(account)) {
            negativeYield = dividendShares;
        } else {
            negativeYield = moneyMarketFund.balanceOf(account);
        }
        moneyMarketFund.burnShares(account, negativeYield);
    }

    // -------------------- Transactions --------------------  //

    function _processSettlements(
        address account,
        uint256 date,
        uint256 price
    ) internal virtual whenTransactionsExist(account) {
        bytes32[] memory pendingTxs = ITransactionStorage(
            modules.getModuleAddress(TRANSACTIONAL_MODULE)
        ).getAccountTransactions(account);
        for (uint256 i = 0; i < pendingTxs.length; ) {
            bytes32 txId = pendingTxs[i];
            (
                uint8 txType,
                address source,
                address destination,
                uint256 txDate,
                uint256 amount,

            ) = IExtendedTransactionDetail(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).getExtendedTransactionDetail(txId);
            require(
                _isTypeSupported(ITransactionStorage.TransactionType(txType)),
                "INVALID_TRANSACTION_TYPE"
            );
            if (txDate <= date) {
                if (
                    _isLiquidation(ITransactionStorage.TransactionType(txType))
                ) {
                    _handleLiquidation(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                } else if (
                    _isPurchase(ITransactionStorage.TransactionType(txType))
                ) {
                    _handlePurchase(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                } else if (
                    ITransactionStorage.TransactionType(txType) ==
                    ITransactionStorage.TransactionType.SHARE_TRANSFER
                ) {
                    IAdminTransfer(tokenRegistry.getTokenAddress(tokenId))
                        .transferShares(source, destination, amount);
                    // Also update destination account for this TX type
                    // as a transfer changes the state of both accounts.
                    // For transfers account and source are the samme address.
                    moneyMarketFund.updateHolderInList(destination);
                    emit TransferSettled(
                        source,
                        destination,
                        date,
                        txType,
                        txId,
                        price,
                        amount // shares
                    );
                }
                moneyMarketFund.updateHolderInList(account);
                ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).clearTransactionStorage(account, txId);
            }
            unchecked {
                i++;
            }
        }
        ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
            .unlistFromAccountsWithPendingTransactions(account);
    }

    function _processDividends(
        address account,
        uint256 date,
        int256 rate,
        uint256 price
    ) internal virtual {
        if (moneyMarketFund.hasHoldings(account)) {
            uint256 dividendAmount = moneyMarketFund.balanceOf(account) *
                uint256(abs(rate));
            uint256 dividendShares = dividendAmount / price;

            // a valid rate for this internal function (rate != 0) is verified
            // in the calling function via the  'onlyWithValidRate' modifier
            if (rate > 0) {
                _payDividend(account, rate, dividendShares);
            } else {
                // handle very unlikely scenario if occurs
                _handleNegativeYield(account, rate, dividendShares);
            }
            moneyMarketFund.removeEmptyHolderFromList(account);

            emit DividendDistributed(
                account,
                date,
                rate,
                price,
                dividendShares
            );
        }
    }

    function _handleLiquidation(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 scaleFactor = moneyMarketFund.NUMBER_SCALE_FACTOR();
        if (txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION) {
            uint256 lastBalance = moneyMarketFund.balanceOf(account);
            moneyMarketFund.burnShares(account, lastBalance);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                (lastBalance * price) / scaleFactor,
                lastBalance
            );
        } else {
            uint256 shares = _getQuantityOfTokens(scaleFactor, amount, price);
            moneyMarketFund.burnShares(account, shares);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                amount,
                shares
            );
        }
    }

    function _handlePurchase(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 shares = _getQuantityOfTokens(
            moneyMarketFund.NUMBER_SCALE_FACTOR(),
            amount,
            price
        );
        emit TransactionSettled(
            account,
            date,
            uint8(txType),
            txId,
            price,
            amount,
            shares
        );
        moneyMarketFund.mintShares(account, shares);
    }

    function _isTypeSupported(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE ||
            txType == ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.SHARE_TRANSFER);
    }

    function _isPurchase(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE);
    }

    function _isLiquidation(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType ==
            ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION);
    }

    // ------------------------------------------------------------------- //

    function _getQuantityOfTokens(
        uint256 scaleFactor,
        uint256 amount,
        uint256 price
    ) internal pure virtual returns (uint256) {
        return ((amount * scaleFactor) / price);
    }

    function abs(int x) internal pure virtual returns (int) {
        return x >= 0 ? x : -x;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/transfer_agent/TransferAgentModule_V4.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";

import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IHoldings} from "../../../../interfaces/IHoldings.sol";
import {IAdminTransfer} from "../../../../interfaces/IAdminTransfer.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";
import {IExtendedTransactionDetail} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransferAgent} from "../../../../interfaces/ITransferAgent.sol";
import {IRecovery} from "../../../../interfaces/IRecovery.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {MoneyMarketFund} from "../../../../MoneyMarketFund.sol";
import {ModuleRegistry} from "../../../ModuleRegistry.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

contract TransferAgentModule_V4 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    ITransferAgent,
    IRecovery
{
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSFER_AGENT");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    uint256 public constant MAX_ACCOUNT_PAGE_SIZE = 10;

    TokenRegistry tokenRegistry;
    MoneyMarketFund moneyMarketFund;
    /// @dev The Id of the token associated with the settlement and div distribution of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // *********************** Events *********************** //
    // ****************************************************** //

    /**
     * @dev This is emitted when dividends are paid to the shareholder,
     * in the very unlikely scenario of rate being lower than 0 the dividend
     * will be deducted from the shareholder's balance instead:
     */
    event DividendDistributed(
        address indexed account,
        uint256 indexed date,
        int256 rate,
        uint256 price,
        uint256 shares
    );
    /// @dev This is emitted when a shareholder request is settled:
    event TransactionSettled(
        address indexed account,
        uint256 indexed date,
        uint8 indexed transactionType,
        bytes32 transactionId,
        uint256 price,
        uint256 amount,
        uint256 shares
    );
    /// @dev This is emitted when a share transfer is settled:
    event TransferSettled(
        address indexed from,
        address indexed to,
        uint256 indexed date,
        uint8 transactionType,
        bytes32 transactionId,
        uint256 price,
        uint256 shares
    );
    /// @dev This is emitted when a manual adjustment of the balance is performed by the TA:
    event BalanceAdjusted(address indexed account, uint256 amount, string memo);
    /// @dev This is emmited when the entire balance of an account is recovered by the TA:
    event AccountRecovered(
        address indexed fromAccount,
        address indexed toAccount,
        uint256 amount,
        string memo
    );
    /// @dev This is emmited when a partial balance amount of an account is recovered by the TA:
    event AssetRecovered(
        address indexed fromAccount,
        address indexed toAccount,
        uint256 amount,
        string memo
    );

    // ---------------------- Modifiers ----------------------  //

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyWhenShareholderExists(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );
        _;
    }

    // -------------------- Dividends --------------------  //

    modifier onlyWithValidRate(int256 rate) {
        require(rate != 0, "INVALID_DIV_RATE");
        _;
    }

    // ---------------- Transactions ----------------  //

    modifier onlyValidPaginationSize(
        uint256 arrayLength,
        uint256 maxArraySize
    ) {
        require(arrayLength <= maxArraySize, "INVALID_PAGINATION_SIZE");
        _;
    }

    modifier whenTransactionsExist(address account) {
        if (
            ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(account)
        ) {
            _;
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() external pure virtual override returns (uint8) {
        return 4;
    }

    function adjustBalance(
        address account,
        uint256 currentBalance,
        uint256 newBalance,
        string memory memo
    ) external virtual override onlyAdmin onlyWhenShareholderExists(account) {
        require(
            currentBalance == moneyMarketFund.balanceOf(account),
            "CURRENT_BALANCE_MISMATCH"
        );
        require(
            newBalance != moneyMarketFund.balanceOf(account),
            "NO_ADJUSTMENT_REQUIRED"
        );

        if (currentBalance > newBalance) {
            moneyMarketFund.burnShares(account, (currentBalance - newBalance));
            emit BalanceAdjusted(account, (currentBalance - newBalance), memo);
        } else {
            moneyMarketFund.mintShares(account, (newBalance - currentBalance));
            emit BalanceAdjusted(account, (newBalance - currentBalance), memo);
        }
        moneyMarketFund.updateHolderInList(account);
    }

    /**
     * @notice Distributes dividends to the account if it has holdings.
     *
     * The amount of shares to distribute in the form of divideds are calculated as follows:
     *
     *      Share dividends = (account's balance * rate) / price
     *
     * This operation will mint or burn shares according to the rate provided.
     *      If rate > 0 it will mint shares
     *      If rate < 0 it will burn shares
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate for the given shareholder
     * @param price The NAV price per share
     *
     */
    function distributeDividends(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Distributes dividends and settles existing requests prior to the specified date for the given account.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate
     * @param price The NAV price per share
     *
     */
    function endOfDay(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(accounts[i], date, rate, price);
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Settles existing requests prior to the specified date for the given account.
     *
     * This operation will mint or burn shares according to the request type.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param price The NAV price per share
     *
     */
    function settleTransactions(
        address[] memory accounts,
        uint256 date,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processSettlements(accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @dev Recovers the entire balance of an account
     *
     * @param from the account holding the balance to recover
     * @param to the destination account to transfer the balance
     * @param memo a memo for the recovery operation
     */
    function recoverAccount(
        address from,
        address to,
        string memory memo
    ) external virtual override onlyAdmin {
        // Checks
        require(
            !ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(from),
            "PENDING_TRANSACTIONS_EXIST"
        );
        require(
            moneyMarketFund.getShareHoldings(from) > 0,
            "ACCOUNT_HAS_NO_BALANCE"
        );
        uint256 balance = moneyMarketFund.getShareHoldings(from);

        // Effects & Interactions
        IAdminTransfer(address(moneyMarketFund)).transferShares(from, to, balance);
        moneyMarketFund.updateHolderInList(from);
        moneyMarketFund.updateHolderInList(to);
        IAccountManager(modules.getModuleAddress(AUTHORIZATION_MODULE))
            .removeAccountPostRecovery(from, to);

        emit AccountRecovered(from, to, balance, memo);
    }

    /**
     * @dev Recovers a part of the balance of an account
     *
     * @param from the account holding the balance amount to recover
     * @param to the destination account to transfer the balance
     * @param memo a memo for the recovery operation
     */
    function recoverAsset(
        address from,
        address to,
        uint256 amount,
        string memory memo
    ) external virtual override onlyAdmin {
        // Checks
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(from) &&
                IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                    .isAccountAuthorized(to),
            "SHAREHOLDER_DOES_NOT_EXISTS"
        );

        uint256 balance = moneyMarketFund.getShareHoldings(from);
        require(balance >= amount, "NOT_ENOUGH_BALANCE");

        // Effects & Interactions
        IAdminTransfer(address(moneyMarketFund)).transferShares(from, to, amount);
        moneyMarketFund.updateHolderInList(from);
        moneyMarketFund.updateHolderInList(to);

        emit AssetRecovered(from, to, amount, memo);
    }

    // -------------------- Dividends --------------------  //

    function _payDividend(
        address account,
        uint256 dividendShares
    ) internal virtual {
        moneyMarketFund.mintShares(account, dividendShares);
    }

    function _handleNegativeYield(
        address account,
        uint256 dividendShares
    ) internal {
        uint256 negativeYield;
        if (dividendShares < moneyMarketFund.balanceOf(account)) {
            negativeYield = dividendShares;
        } else {
            negativeYield = moneyMarketFund.balanceOf(account);
        }
        moneyMarketFund.burnShares(account, negativeYield);
    }

    // -------------------- Transactions --------------------  //

    function _processSettlements(
        address account,
        uint256 date,
        uint256 price
    ) internal virtual whenTransactionsExist(account) {
        bytes32[] memory pendingTxs = ITransactionStorage(
            modules.getModuleAddress(TRANSACTIONAL_MODULE)
        ).getAccountTransactions(account);
        for (uint256 i = 0; i < pendingTxs.length; ) {
            bytes32 txId = pendingTxs[i];
            (
                uint8 txType,
                address source,
                address destination,
                uint256 txDate,
                uint256 amount,

            ) = IExtendedTransactionDetail(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).getExtendedTransactionDetail(txId);
            require(
                _isTypeSupported(ITransactionStorage.TransactionType(txType)),
                "INVALID_TRANSACTION_TYPE"
            );
            if (txDate <= date) {
                if (
                    _isLiquidation(ITransactionStorage.TransactionType(txType))
                ) {
                    _handleLiquidation(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                } else if (
                    _isPurchase(ITransactionStorage.TransactionType(txType))
                ) {
                    _handlePurchase(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                } else if (
                    ITransactionStorage.TransactionType(txType) ==
                    ITransactionStorage.TransactionType.SHARE_TRANSFER
                ) {
                    IAdminTransfer(tokenRegistry.getTokenAddress(tokenId))
                        .transferShares(source, destination, amount);
                    // Also update destination account for this TX type
                    // as a transfer changes the state of both accounts.
                    // For transfers account and source are the samme address.
                    moneyMarketFund.updateHolderInList(destination);
                    emit TransferSettled(
                        source,
                        destination,
                        date,
                        txType,
                        txId,
                        price,
                        amount // shares
                    );
                }
                moneyMarketFund.updateHolderInList(account);
                ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).clearTransactionStorage(account, txId);
            }
            unchecked {
                i++;
            }
        }
        ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
            .unlistFromAccountsWithPendingTransactions(account);
    }

    function _processDividends(
        address account,
        uint256 date,
        int256 rate,
        uint256 price
    ) internal virtual {
        if (moneyMarketFund.hasHoldings(account)) {
            uint256 dividendAmount = moneyMarketFund.balanceOf(account) *
                uint256(abs(rate));
            uint256 dividendShares = dividendAmount / price;

            // a valid rate for this internal function (rate != 0) is verified
            // in the calling function via the  'onlyWithValidRate' modifier
            if (rate > 0) {
                _payDividend(account, dividendShares);
            } else {
                // handle very unlikely scenario if occurs
                _handleNegativeYield(account, dividendShares);
            }
            moneyMarketFund.removeEmptyHolderFromList(account);

            emit DividendDistributed(
                account,
                date,
                rate,
                price,
                dividendShares
            );
        }
    }

    function _handleLiquidation(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 scaleFactor = moneyMarketFund.NUMBER_SCALE_FACTOR();
        if (txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION) {
            uint256 lastBalance = moneyMarketFund.balanceOf(account);
            moneyMarketFund.burnShares(account, lastBalance);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                (lastBalance * price) / scaleFactor,
                lastBalance
            );
        } else {
            uint256 shares = _getQuantityOfTokens(scaleFactor, amount, price);
            moneyMarketFund.burnShares(account, shares);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                amount,
                shares
            );
        }
    }

    function _handlePurchase(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 shares = _getQuantityOfTokens(
            moneyMarketFund.NUMBER_SCALE_FACTOR(),
            amount,
            price
        );
        emit TransactionSettled(
            account,
            date,
            uint8(txType),
            txId,
            price,
            amount,
            shares
        );
        moneyMarketFund.mintShares(account, shares);
    }

    function _isTypeSupported(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE ||
            txType == ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.SHARE_TRANSFER);
    }

    function _isPurchase(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE);
    }

    function _isLiquidation(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType ==
            ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION);
    }

    // ------------------------------------------------------------------- //

    function _getQuantityOfTokens(
        uint256 scaleFactor,
        uint256 amount,
        uint256 price
    ) internal pure virtual returns (uint256) {
        return ((amount * scaleFactor) / price);
    }

    function abs(int x) internal pure virtual returns (int) {
        return x >= 0 ? x : -x;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/modules/upgrade_history/transfer_agent/TransferAgentModule_V5.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {BaseUpgradeableModule} from "../../BaseUpgradeableModule.sol";

import {IAuthorization} from "../../../../interfaces/IAuthorization.sol";
import {IAdminTransfer} from "../../../../interfaces/IAdminTransfer.sol";
import {ITransactionStorage} from "../../../../interfaces/TransactionIfaces.sol";
import {IExtendedTransactionDetail} from "../../../../interfaces/TransactionIfaces.sol";
import {ITransferAgentExt} from "../../../../interfaces/ITransferAgentExt.sol";
import {ITransferAgentXChain} from "../../../../interfaces/ITransferAgentXChain.sol";
import {IRecovery} from "../../../../interfaces/IRecovery.sol";
import {IAccountManager} from "../../../../interfaces/IAccountManager.sol";
import {MoneyMarketFund} from "../../../../MoneyMarketFund.sol";
import {ModuleRegistry} from "../../../ModuleRegistry.sol";
import {TokenRegistry} from "../../../../infrastructure/TokenRegistry.sol";

contract TransferAgentModule_V5 is
    BaseUpgradeableModule,
    AccessControlEnumerableUpgradeable,
    ITransferAgentExt,
    IRecovery,
    ITransferAgentXChain
{
    bytes32 public constant MODULE_ID = keccak256("MODULE_TRANSFER_AGENT");
    bytes32 public constant ROLE_MODULE_OWNER = keccak256("ROLE_MODULE_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    uint256 public constant MAX_ACCOUNT_PAGE_SIZE = 50;
    uint256 public constant MAX_TX_PAGE_SIZE = 50;
    uint256 public constant MAX_CX_TX_PAGE_SIZE = 10;

    TokenRegistry tokenRegistry;
    MoneyMarketFund moneyMarketFund;
    /// @dev The Id of the token associated with the settlement and div distribution of this contract
    /// At the moment only a default token Id can be provided during contract initialization
    /// but in the future more tokens could be used using the token registry
    string tokenId;

    // *********************** Events *********************** //
    // ****************************************************** //

    /**
     * @dev This is emitted when dividends are paid to the shareholder,
     * in the very unlikely scenario of rate being lower than 0 the dividend
     * will be deducted from the shareholder's balance instead:
     */
    event DividendDistributed(
        address indexed account,
        uint256 indexed date,
        int256 rate,
        uint256 price,
        uint256 shares,
        uint256 dividendCashAmount,
        uint256 dividendBasis,
        bool isNegativeYield
    );
    /// @dev This is emitted when a shareholder request is settled:
    event TransactionSettled(
        address indexed account,
        uint256 indexed date,
        uint8 indexed transactionType,
        bytes32 transactionId,
        uint256 price,
        uint256 amount,
        uint256 shares
    );
    /// @dev This is emitted when a share transfer is settled:
    event TransferSettled(
        address indexed from,
        address indexed to,
        uint256 indexed date,
        uint8 transactionType,
        bytes32 transactionId,
        uint256 price,
        uint256 shares
    );
    /// @dev This is emitted when a manual adjustment of the balance is performed by the TA:
    event BalanceAdjusted(address indexed account, uint256 amount, string memo);
    /// @dev This is emmited when the entire balance of an account is recovered by the TA:
    event AccountRecovered(
        address indexed fromAccount,
        address indexed toAccount,
        uint256 amount,
        string memo
    );
    /// @dev This is emmited when a partial balance amount of an account is recovered by the TA:
    event AssetRecovered(
        address indexed fromAccount,
        address indexed toAccount,
        uint256 amount,
        string memo
    );

    // ---------------------- Modifiers ----------------------  //

    modifier onlyAdmin() {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAdminAccount(msg.sender),
            "CALLER_IS_NOT_AN_ADMIN"
        );
        _;
    }

    modifier onlyWhenShareholderExists(address account) {
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(account),
            "SHAREHOLDER_DOES_NOT_EXIST"
        );
        _;
    }

    modifier onlyWithValidRate(int256 rate) {
        require(rate != 0, "INVALID_DIV_RATE");
        _;
    }

    modifier onlyValidPaginationSize(
        uint256 arrayLength,
        uint256 maxArraySize
    ) {
        require(arrayLength <= maxArraySize, "INVALID_PAGINATION_SIZE");
        _;
    }

    modifier whenTransactionsExist(address account) {
        if (
            ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(account)
        ) {
            _;
        }
    }

    modifier whenNotInArray(bytes32[] calldata txIds, bytes32 currentTxId) {
        if (txIds.length == 0) {
            _;
            return;
        }

        bool found = false;
        uint256 arrayLength = txIds.length;
        for (uint256 i = 0; i < arrayLength; ) {
            if (txIds[i] == currentTxId) {
                found = true;
                break;
            }
            unchecked {
                i++;
            }
        }
        if (!found) _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() external pure virtual override returns (uint8) {
        return 5;
    }

    // ---------------- TA operations ----------------  //

    /**
     * @notice Distributes dividends to the account if it has holdings.
     *
     * The amount of shares to distribute in the form of divideds are calculated as follows:
     *
     *      Share dividends = (account's balance * rate) / price
     *
     * This operation will mint or burn shares according to the rate provided.
     *      If rate > 0 it will mint shares
     *      If rate < 0 it will burn shares
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate for the given shareholder
     * @param price The NAV price per share
     *
     */
    function distributeDividends(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(
                accounts[i],
                moneyMarketFund.balanceOf(accounts[i]),
                date,
                rate,
                price
            );
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Distributes dividends and settles existing requests prior to the specified date for the given account.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate
     * @param price The NAV price per share
     *
     */
    function endOfDay(
        address[] calldata accounts,
        bytes32[] calldata txIds,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
        onlyValidPaginationSize(txIds.length, MAX_TX_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processDividends(
                accounts[i],
                moneyMarketFund.balanceOf(accounts[i]),
                date,
                rate,
                price
            );
            _processSettlements(txIds, accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Settles existing requests prior to the specified date for the given account.
     *
     * This operation will mint or burn shares according to the request type.
     *
     * @param accounts The address of the shareholders' accounts
     * @param date The date of the request as a UNIX timestamp
     * @param price The NAV price per share
     *
     */
    function settleTransactions(
        address[] calldata accounts,
        bytes32[] calldata txIds,
        uint256 date,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
        onlyValidPaginationSize(txIds.length, MAX_TX_PAGE_SIZE)
    {
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            _processSettlements(txIds, accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Distributes full or proportional dividends to the account if it has holdings.
     *
     * The amount of shares to distribute in the form of divideds are calculated as follows:
     *
     *      If the adjusted shares for the account are greather than zero,
     *          Share dividends = (adjusted shares * rate) / price
     *      Otherwise,
     *          Share dividends = (account's balance * rate) / price
     *
     * This operation will mint or burn shares according to the rate provided.
     *      If rate > 0 it will mint shares
     *      If rate < 0 it will burn shares
     *
     * @param accounts The address of the shareholders' accounts
     * @param adjustedShares The holdings to calculate the proportional yield if any
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate for the given shareholder
     * @param price The NAV price per share
     *
     */
    function distributeDividends(
        address[] calldata accounts,
        uint256[] calldata adjustedShares,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
        onlyValidPaginationSize(adjustedShares.length, MAX_ACCOUNT_PAGE_SIZE)
    {
        require(
            accounts.length == adjustedShares.length,
            "ARRAY_LENGTH_MISMATCH"
        );
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            uint256 accountBalance;
            if (adjustedShares[i] == 0) {
                accountBalance = moneyMarketFund.balanceOf(accounts[i]);
            } else {
                accountBalance = adjustedShares[i];
            }
            _processDividends(accounts[i], accountBalance, date, rate, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Distributes full or partial dividends and settles existing requests
     *         prior to the specified date for the given account.
     *
     * @param accounts The address of the shareholders' accounts
     * @param adjustedShares The holdings to calculate the proportional yield if any
     * @param date The date of the request as a UNIX timestamp
     * @param rate The rate
     * @param price The NAV price per share
     *
     */
    function endOfDay(
        address[] calldata accounts,
        uint256[] calldata adjustedShares,
        bytes32[] calldata txIds,
        uint256 date,
        int256 rate,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWithValidRate(rate)
        onlyValidPaginationSize(accounts.length, MAX_ACCOUNT_PAGE_SIZE)
        onlyValidPaginationSize(adjustedShares.length, MAX_ACCOUNT_PAGE_SIZE)
        onlyValidPaginationSize(txIds.length, MAX_TX_PAGE_SIZE)
    {
        require(
            accounts.length == adjustedShares.length,
            "ARRAY_LENGTH_MISMATCH"
        );
        moneyMarketFund.updateLastKnownPrice(price);
        for (uint i = 0; i < accounts.length; ) {
            uint256 accountBalance;
            if (adjustedShares[i] == 0) {
                accountBalance = moneyMarketFund.balanceOf(accounts[i]);
            } else {
                accountBalance = adjustedShares[i];
            }
            _processDividends(accounts[i], accountBalance, date, rate, price);
            _processSettlements(txIds, accounts[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    // ---------------- TA Cross-chain operations ----------------  //

    /**
     * @notice Settles all the account's request given as an array of id's prior to the specified date.
     *
     * @param account the address of the shareholders' account
     * @param requestIds an array with the id's of the requests to process
     * @param date the maximum date to finish processing request from represented as a UNIX timestamp
     * @param price the NAV price per share
     */
    function settleCXTransactions(
        address account,
        bytes32[] memory requestIds,
        uint256 date,
        uint256 price
    )
        external
        virtual
        override
        onlyAdmin
        onlyWhenShareholderExists(account)
        onlyValidPaginationSize(requestIds.length, MAX_CX_TX_PAGE_SIZE)
    {
        for (uint i = 0; i < requestIds.length; ) {
            _processCXSettlement(account, requestIds[i], date, price);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Settles the given cross-chain request prior to the specified date for the given account.
     *
     * This operation will mint or burn shares according to the request type.
     *
     * @param account the address of the shareholders' account
     * @param requestId the id of the request to process
     * @param date the maximum date to process the request represented as a UNIX timestamp
     * @param price The NAV price per share
     */
    function settleCXTransaction(
        address account,
        bytes32 requestId,
        uint256 date,
        uint256 price
    ) external virtual override onlyAdmin onlyWhenShareholderExists(account) {
        moneyMarketFund.updateLastKnownPrice(price);
        _processCXSettlement(account, requestId, date, price);
    }

    // ---------------- TA Admin operations ----------------  //

    /**
     * @notice Updates the current balance of a shareholder's account to a new one.
     *
     * @param account the address of the shareholders' account
     * @param currentBalance the current account's balance
     * @param newBalance the new balance for the account
     * @param memo a memo for the balance adjustment operation
     */
    function adjustBalance(
        address account,
        uint256 currentBalance,
        uint256 newBalance,
        string memory memo
    ) external virtual override onlyAdmin onlyWhenShareholderExists(account) {
        require(
            currentBalance == moneyMarketFund.balanceOf(account),
            "CURRENT_BALANCE_MISMATCH"
        );
        require(
            newBalance != moneyMarketFund.balanceOf(account),
            "NO_ADJUSTMENT_REQUIRED"
        );

        if (currentBalance > newBalance) {
            moneyMarketFund.burnShares(account, (currentBalance - newBalance));
            emit BalanceAdjusted(account, (currentBalance - newBalance), memo);
        } else {
            moneyMarketFund.mintShares(account, (newBalance - currentBalance));
            emit BalanceAdjusted(account, (newBalance - currentBalance), memo);
        }
    }

    /**
     * @dev Recovers the entire balance of an account
     *
     * @param from the account holding the balance to recover
     * @param to the destination account to transfer the balance
     * @param memo a memo for the recovery operation
     */
    function recoverAccount(
        address from,
        address to,
        string memory memo
    ) external virtual override onlyAdmin {
        // Checks
        require(
            !ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .hasTransactions(from),
            "PENDING_TRANSACTIONS_EXIST"
        );
        require(
            moneyMarketFund.getShareHoldings(from) > 0,
            "ACCOUNT_HAS_NO_BALANCE"
        );
        uint256 balance = moneyMarketFund.getShareHoldings(from);

        // Effects & Interactions
        IAdminTransfer(address(moneyMarketFund)).transferShares(
            from,
            to,
            balance
        );
        IAccountManager(modules.getModuleAddress(AUTHORIZATION_MODULE))
            .removeAccountPostRecovery(from, to);

        emit AccountRecovered(from, to, balance, memo);
    }

    /**
     * @dev Recovers a part of the balance of an account
     *
     * @param from the account holding the balance amount to recover
     * @param to the destination account to transfer the balance
     * @param memo a memo for the recovery operation
     */
    function recoverAsset(
        address from,
        address to,
        uint256 amount,
        string memory memo
    ) external virtual override onlyAdmin {
        // Checks
        require(
            IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                .isAccountAuthorized(from) &&
                IAuthorization(modules.getModuleAddress(AUTHORIZATION_MODULE))
                    .isAccountAuthorized(to),
            "SHAREHOLDER_DOES_NOT_EXIST"
        );

        uint256 balance = moneyMarketFund.getShareHoldings(from);
        require(balance >= amount, "NOT_ENOUGH_BALANCE");

        // Effects & Interactions
        IAdminTransfer(address(moneyMarketFund)).transferShares(
            from,
            to,
            amount
        );

        emit AssetRecovered(from, to, amount, memo);
    }

    // -------------------- Dividends --------------------  //

    function _payDividend(
        address account,
        uint256 dividendShares
    ) internal virtual {
        moneyMarketFund.mintShares(account, dividendShares);
    }

    function _handleNegativeYield(
        address account,
        uint256 balance,
        uint256 dividendShares
    ) internal {
        uint256 negativeYield;
        if (dividendShares < balance) {
            negativeYield = dividendShares;
        } else {
            negativeYield = balance;
        }
        moneyMarketFund.burnShares(account, negativeYield);
    }

    // -------------------- Transactions --------------------  //

    function _processSettlements(
        bytes32[] calldata txIds,
        address account,
        uint256 date,
        uint256 price
    ) internal virtual whenTransactionsExist(account) {
        bytes32[] memory pendingTxs = ITransactionStorage(
            modules.getModuleAddress(TRANSACTIONAL_MODULE)
        ).getAccountTransactions(account);
        for (uint256 i = 0; i < pendingTxs.length; ) {
            bytes32 txId = pendingTxs[i];
            (
                uint8 txType,
                address source,
                address destination,
                uint256 txDate,
                uint256 amount,

            ) = IExtendedTransactionDetail(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).getExtendedTransactionDetail(txId);
            require(
                _isTypeSupported(ITransactionStorage.TransactionType(txType)),
                "INVALID_TRANSACTION_TYPE"
            );
            if (txDate <= date) {
                if (
                    _isLiquidation(ITransactionStorage.TransactionType(txType))
                ) {
                    _handleBalanceDecrease(
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                    // remove settled tx from storage
                    ITransactionStorage(
                        modules.getModuleAddress(TRANSACTIONAL_MODULE)
                    ).clearTransactionStorage(account, txId);
                } else if (
                    _isPurchase(ITransactionStorage.TransactionType(txType))
                ) {
                    _handlePurchaseSettlement(
                        txIds,
                        account,
                        date,
                        amount,
                        price,
                        txId,
                        ITransactionStorage.TransactionType(txType)
                    );
                } else if (
                    ITransactionStorage.TransactionType(txType) ==
                    ITransactionStorage.TransactionType.SHARE_TRANSFER
                ) {
                    IAdminTransfer(tokenRegistry.getTokenAddress(tokenId))
                        .transferShares(source, destination, amount);
                    // remove settled tx from storage
                    ITransactionStorage(
                        modules.getModuleAddress(TRANSACTIONAL_MODULE)
                    ).clearTransactionStorage(account, txId);
                    emit TransferSettled(
                        source,
                        destination,
                        date,
                        txType,
                        txId,
                        price,
                        amount // shares
                    );
                }
            }
            unchecked {
                i++;
            }
        }
        ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
            .unlistFromAccountsWithPendingTransactions(account);
    }

    function _processCXSettlement(
        address account,
        bytes32 requestId,
        uint256 date,
        uint256 price
    ) internal virtual whenTransactionsExist(account) {
        (
            uint8 txType,
            ,
            ,
            uint256 txDate,
            uint256 amount,

        ) = IExtendedTransactionDetail(
                modules.getModuleAddress(TRANSACTIONAL_MODULE)
            ).getExtendedTransactionDetail(requestId);
        require(
            _isTypeSupported(ITransactionStorage.TransactionType(txType)),
            "INVALID_TRANSACTION_TYPE"
        );
        if (txDate <= date) {
            if (
                ITransactionStorage.TransactionType(txType) ==
                ITransactionStorage.TransactionType.CXFER_OUT
            ) {
                _handleBalanceDecrease(
                    account,
                    date,
                    amount,
                    price,
                    requestId,
                    ITransactionStorage.TransactionType(txType)
                );
                ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).clearTransactionStorage(account, requestId);
            } else if (
                ITransactionStorage.TransactionType(txType) ==
                ITransactionStorage.TransactionType.CXFER_IN
            ) {
                _handleBalanceIncrease(
                    account,
                    date,
                    amount,
                    price,
                    requestId,
                    ITransactionStorage.TransactionType(txType)
                );
                ITransactionStorage(
                    modules.getModuleAddress(TRANSACTIONAL_MODULE)
                ).clearTransactionStorage(account, requestId);
            }
            ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
                .unlistFromAccountsWithPendingTransactions(account);
        }
    }

    function _processDividends(
        address account,
        uint256 balance,
        uint256 date,
        int256 rate,
        uint256 price
    ) internal virtual {
        require(price > 0, "INVALID_PRICE");
        if (balance > 0) {
            uint256 dividendAmount = balance * uint256(abs(rate));
            uint256 dividendShares = dividendAmount / price;
            uint256 scaleFactor = moneyMarketFund.NUMBER_SCALE_FACTOR();

            // a valid rate for this internal function (rate != 0) is verified
            // in the calling function via the  'onlyWithValidRate' modifier
            bool isNegativeYield;
            if (rate > 0) {
                isNegativeYield = false;
                _payDividend(account, dividendShares);
            } else {
                // handle very unlikely scenario if occurs
                isNegativeYield = true;
                _handleNegativeYield(account, balance, dividendShares);
            }

            emit DividendDistributed(
                account,
                date,
                rate,
                price,
                dividendShares,
                dividendAmount / scaleFactor,
                balance,
                isNegativeYield
            );
        }
    }

    function _handleBalanceDecrease(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 scaleFactor = moneyMarketFund.NUMBER_SCALE_FACTOR();
        if (txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION) {
            uint256 lastBalance = moneyMarketFund.balanceOf(account);
            moneyMarketFund.burnShares(account, lastBalance);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                (lastBalance * price) / scaleFactor,
                lastBalance
            );
        } else {
            uint256 shares = _getQuantityOfTokens(scaleFactor, amount, price);
            moneyMarketFund.burnShares(account, shares);
            emit TransactionSettled(
                account,
                date,
                uint8(txType),
                txId,
                price,
                amount,
                shares
            );
        }
    }

    function _handleBalanceIncrease(
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual {
        uint256 shares = _getQuantityOfTokens(
            moneyMarketFund.NUMBER_SCALE_FACTOR(),
            amount,
            price
        );
        emit TransactionSettled(
            account,
            date,
            uint8(txType),
            txId,
            price,
            amount,
            shares
        );
        moneyMarketFund.mintShares(account, shares);
    }

    function _handlePurchaseSettlement(
        bytes32[] calldata txIds,
        address account,
        uint256 date,
        uint256 amount,
        uint256 price,
        bytes32 txId,
        ITransactionStorage.TransactionType txType
    ) internal virtual whenNotInArray(txIds, txId) {
        _handleBalanceIncrease(account, date, amount, price, txId, txType);
        // remove settled tx from storage
        ITransactionStorage(modules.getModuleAddress(TRANSACTIONAL_MODULE))
            .clearTransactionStorage(account, txId);
    }

    function _isTypeSupported(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE ||
            txType == ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.SHARE_TRANSFER ||
            txType == ITransactionStorage.TransactionType.CXFER_OUT ||
            txType == ITransactionStorage.TransactionType.CXFER_IN);
    }

    function _isPurchase(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType == ITransactionStorage.TransactionType.AIP ||
            txType == ITransactionStorage.TransactionType.CASH_PURCHASE);
    }

    function _isLiquidation(
        ITransactionStorage.TransactionType txType
    ) internal pure virtual returns (bool) {
        return (txType ==
            ITransactionStorage.TransactionType.CASH_LIQUIDATION ||
            txType == ITransactionStorage.TransactionType.FULL_LIQUIDATION);
    }

    // ------------------------------------------------------------------- //

    function _getQuantityOfTokens(
        uint256 scaleFactor,
        uint256 amount,
        uint256 price
    ) internal pure virtual returns (uint256) {
        return ((amount * scaleFactor) / price);
    }

    function abs(int x) internal pure virtual returns (int) {
        require(x != type(int256).min, "ARITHMETIC_OVERFLOW");
        return x >= 0 ? x : -x;
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/multisig/MultiSigGenVerifier.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/**
 * @title MultiSigGenVerifier
 * @author Franklin Templeton
 * @notice The multi-signature contract used to secure transactions
 *         for the tokenized fund
 */
contract MultiSigGenVerifier {
    using EnumerableSet for EnumerableSet.AddressSet;

    enum Threshold {
        HIGH,
        NORMAL
    }

    /// @dev This is emitted when a multi-sig transaction is executed
    event TransactionExecuted(
        address indexed destination,
        bytes indexed result
    );

    /// @dev This is emitted when a new submitter is added to the multi-sig
    event SubmitterAdded(address indexed submitter);
    /// @dev This is emitted when a submitter is removed from the multi-sig
    event SubmitterRemoved(address indexed submitter);
    /// @dev This is emitted when a new signer is added to the multi-sig
    event SignerAdded(address indexed signer);
    /// @dev This is emitted when a signer is removed from the multi-sig
    event SignerRemoved(address indexed signer);
    /// @dev This is emitted when the multi-sig Threshold.NORMAL is updated
    event NormalThresholdUpdated(uint256 indexed normal);
    /// @dev This is emitted when the multi-sig Threshold.HIGH is updated
    event HighThresholdUpdated(uint256 indexed high);
    /// @dev This is emitted when both multi-sig thresholds are updated
    event ThresholdsUpdated(uint256 indexed normal, uint256 indexed high);

    /// @dev the maximum number of signers that can be added for multi-sig validation
    uint256 public constant MAX_SIGNERS = 50;
    /// @dev the maximum number of valid submitters allowed to send transaction from the multi-sig
    uint256 public constant MAX_SUBMITTERS = 50;
    /// @dev the maximum value for a threshold
    uint256 public constant MAX_THRESHOLD = 255;
    /// @dev nonces to protect against replay attacks
    uint256 private globalNonce;
    mapping(address => uint256) private accountNonces;

    mapping(Threshold => uint256) private thresholdMap;
    mapping(address => uint256) private signersMap;
    EnumerableSet.AddressSet private signersSet;
    EnumerableSet.AddressSet private submittersSet;

    modifier onlySubmitter() {
        require(submittersSet.contains(msg.sender), "INVALID_CALLER");
        _;
    }

    modifier onlyVerifier() {
        require(msg.sender == address(this), "INVALID_CALLER");
        _;
    }

    modifier onlyWithinArrayBounds(
        uint256 signersArrayLength,
        uint256 weightsArrayLength
    ) {
        require(
            signersArrayLength > 0 && signersArrayLength <= MAX_SIGNERS,
            "INVALID_ARRAY_LENGTH"
        );
        require(
            signersArrayLength == weightsArrayLength,
            "ARRAY_SIZE_MISMATCH"
        );
        _;
    }

    /// @notice constructor
    constructor(
        address[2] memory submitters,
        address[] memory signers,
        uint256[] memory weights,
        uint256 _highThreshold,
        uint256 _normalThreshold
    ) onlyWithinArrayBounds(signers.length, weights.length) {
        require(_highThreshold > _normalThreshold, "INVALID_THRESHOLD");
        thresholdMap[Threshold.HIGH] = _highThreshold;
        thresholdMap[Threshold.NORMAL] = _normalThreshold;
        submittersSet.add(submitters[0]);
        submittersSet.add(submitters[1]);

        for (uint256 i = 0; i < signers.length; i++) {
            require(weights[i] > 0, "INVALID_WEIGHT");
            _setupSigner(signers[i], weights[i]);
        }
        require(
            _isAvailableThresholdEnough(_highThreshold),
            "INSUFICIENT_THRESHOLD_AVAILABLE"
        );
    }

    /**
     * @notice The entry function for the multi-sig contract
     *
     * @param account The account associated with the signed request
     * @param target The target smart contract from which to execute the encoded function in the payload
     * @param payload The encoded target function and parameters to be executed after signature valiation
     * @param signatures The byte-array of signatures to validate
     *
     * @dev This contract defines 2 types of thresholds: Threshold.HIGH and Threshold.NORMAL
     *      Function calls that modify the state of this multi-sig contract require HIGH threshold
     *      and calls to any other target contract controled by this multi-sig require NORMAL threshold
     *
     * @dev Every valid signer has an associated weight that will contribute to the final threshold acquired
     *
     */
    function signedDataExecution(
        address account,
        address target,
        bytes memory payload,
        bytes memory signatures
    ) external onlySubmitter {
        require(target.code.length > 0, "INVALID_TARGET_TYPE");
        uint256 signaturesCount = signatures.length / 65;
        uint256 acquiredThreshold;
        bytes32 hash;
        bytes32 r;
        bytes32 s;
        uint8 v;

        if (account == address(0)) {
            hash = _getHash(account, target, payload, globalNonce);
            globalNonce = globalNonce + 1;
        } else {
            hash = _getHash(account, target, payload, accountNonces[account]);
            accountNonces[account] = accountNonces[account] + 1;
        }

        address lastRecoveredSigner;

        for (uint256 i = 0; i < signaturesCount; i++) {
            (v, r, s) = _splitSignature(signatures, i);
            address signerRecovered = ecrecover(hash, v, r, s);

            if (signersSet.contains(signerRecovered)) {
                if (lastRecoveredSigner != address(0)) {
                    require(
                        signerRecovered > lastRecoveredSigner,
                        "INVALID_SIGNATURE_ORDER"
                    );
                }
                lastRecoveredSigner = signerRecovered;
                acquiredThreshold += signersMap[signerRecovered];

                if (acquiredThreshold >= _getRequiredThreshold(target)) {
                    break;
                }
            }
        }

        // Wallet logic
        if (acquiredThreshold < _getRequiredThreshold(target)) {
            revert("INSUFICIENT_THRESHOLD_ACQUIRED");
        }

        (bool success, bytes memory result) = target.call{value: 0}(payload);

        emit TransactionExecuted(target, result);

        if (!success) {
            assembly {
                result := add(result, 0x04)
            }
            revert(abi.decode(result, (string)));
        }
    }

    // -------------------------------------------------- //

    function addSubmitters(address[] memory submitters) public onlyVerifier {
        require(submitters.length <= MAX_SUBMITTERS, "INVALID_ARRAY_LENGTH");
        require(
            submitters.length + submittersSet.length() <= MAX_SUBMITTERS,
            "INVALID_SUBMITTER_COUNT"
        );
        for (uint256 i = 0; i < submitters.length; i++) {
            submittersSet.add(submitters[i]);
            emit SubmitterAdded(submitters[i]);
        }
    }

    function removeSubmitters(address[] memory submitters) public onlyVerifier {
        require(submitters.length <= MAX_SUBMITTERS, "INVALID_ARRAY_LENGTH");
        for (uint256 i = 0; i < submitters.length; i++) {
            submittersSet.remove(submitters[i]);
            require(submittersSet.length() > 0, "INVALID_SUBMITTER_COUNT");
            emit SubmitterRemoved(submitters[i]);
        }
    }

    function updateSigners(
        address[] memory signers,
        uint256[] memory weights
    )
        public
        onlyVerifier
        onlyWithinArrayBounds(signers.length, weights.length)
    {
        for (uint256 i = 0; i < signers.length; i++) {
            _setupSigner(signers[i], weights[i]);
        }

        require(
            _isAvailableThresholdEnough(thresholdMap[Threshold.HIGH]),
            "INSUFICIENT_THRESHOLD_AVAILABLE"
        );
        require(signersSet.length() <= MAX_SIGNERS, "INVALID_SIGNER_COUNT");
    }

    function updateHighThreshold(uint256 high) public onlyVerifier {
        require(high > 0 && high <= MAX_THRESHOLD, "INVALID_THRESHOLD");
        require(
            _isAvailableThresholdEnough(high),
            "INSUFICIENT_THRESHOLD_AVAILABLE"
        );
        thresholdMap[Threshold.HIGH] = high;
        emit HighThresholdUpdated(high);
    }

    function updateNormalThreshold(uint256 normal) public onlyVerifier {
        require(normal > 0 && normal <= MAX_THRESHOLD, "INVALID_THRESHOLD");
        require(normal < thresholdMap[Threshold.HIGH], "INVALID_THRESHOLD");
        thresholdMap[Threshold.NORMAL] = normal;
        emit NormalThresholdUpdated(normal);
    }

    function updateThresholds(
        uint256 high,
        uint256 normal
    ) public onlyVerifier {
        require(high > 0 && high <= MAX_THRESHOLD, "INVALID_THRESHOLD");
        require(normal > 0 && normal <= MAX_THRESHOLD, "INVALID_THRESHOLD");
        require(high > normal, "INVALID_THRESHOLD");
        require(
            _isAvailableThresholdEnough(high),
            "INSUFICIENT_THRESHOLD_AVAILABLE"
        );
        thresholdMap[Threshold.HIGH] = high;
        thresholdMap[Threshold.NORMAL] = normal;
        emit ThresholdsUpdated(normal, high);
    }

    // ******************** Private Functions ********************* //
    // ************************************************************ //

    function _getHash(
        address account,
        address target,
        bytes memory payload,
        uint256 nonce
    ) private view returns (bytes32 hash) {
        hash = keccak256(
            abi.encodePacked(
                "\x19Ethereum Signed Message:\n32",
                keccak256(
                    abi.encodePacked(
                        bytes1(0x19),
                        bytes1(0),
                        address(this),
                        target,
                        payload,
                        block.chainid,
                        account,
                        nonce
                    )
                )
            )
        );
    }

    function _getRequiredThreshold(
        address target
    ) private view returns (uint256) {
        return
            target == address(this)
                ? thresholdMap[Threshold.HIGH]
                : thresholdMap[Threshold.NORMAL];
    }

    function _splitSignature(
        bytes memory signatures,
        uint256 idx
    ) private pure returns (uint8 v, bytes32 r, bytes32 s) {
        assembly {
            r := mload(add(signatures, add(0x20, mul(0x41, idx))))
            s := mload(add(signatures, add(0x40, mul(0x41, idx))))
            v := and(mload(add(signatures, add(0x41, mul(0x41, idx)))), 0xff)
        }
        require(v == 27 || v == 28, "INVALID_SIGNATURE_FORMAT");
    }

    function _isAvailableThresholdEnough(
        uint256 requiredThreshold
    ) private view returns (bool enoughThreshold) {
        enoughThreshold = false;
        uint256 availableThreshold = 0;
        for (uint i = 0; i < signersSet.length(); i++) {
            availableThreshold += signersMap[signersSet.at(i)];
            if (availableThreshold >= requiredThreshold) {
                enoughThreshold = true;
                break;
            }
        }
    }

    function _setupSigner(address signer, uint256 weight) private {
        require(signer != address(0), "INVALID_ADDRESS");
        if (weight == 0) {
            _removeSigner(signer);
            emit SignerRemoved(signer);
            return;
        }
        signersSet.add(signer);
        emit SignerAdded(signer);
        signersMap[signer] = weight;
    }

    function _removeSigner(address signer) private {
        if (signersMap[signer] == 0) return;
        signersSet.remove(signer);
        delete signersMap[signer];
    }

    // ----------- Utility views functions ----------- //

    function getSubmittersCount() external view returns (uint256) {
        return submittersSet.length();
    }

    function getSubmitters()
        external
        view
        returns (address[] memory currentSubmitters)
    {
        currentSubmitters = new address[](submittersSet.length());
        currentSubmitters = submittersSet.values();
    }

    function getSignersCount() external view returns (uint256) {
        return signersSet.length();
    }

    function getSignerWeight(address signer) external view returns (uint256) {
        return signersMap[signer];
    }

    function getHighThresholdValue() external view returns (uint256) {
        return thresholdMap[Threshold.HIGH];
    }

    function getNormalThresholdValue() external view returns (uint256) {
        return thresholdMap[Threshold.NORMAL];
    }

    function getSignersInfo()
        external
        view
        returns (
            address[] memory currentSigners,
            uint256[] memory currentSignersWeights
        )
    {
        currentSigners = new address[](signersSet.length());
        currentSignersWeights = new uint256[](signersSet.length());

        currentSigners = signersSet.values();
        for (uint i = 0; i < signersSet.length(); i++) {
            currentSignersWeights[i] = signersMap[currentSigners[i]];
        }
    }

    function getNonce(address account) external view returns (uint256 nonce) {
        if (account == address(0)) {
            nonce = globalNonce;
        } else {
            nonce = accountNonces[account];
        }
    }
}

// ============================================================
// FILE: contracts/FT/infrastructure/TokenRegistry.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract TokenRegistry is Ownable {
    mapping(string => address) private registryMap;

    function registerToken(
        string memory id,
        address addr
    ) external onlyOwner {
        require(addr != address(0x0), "INVALID_TOKEN_ADDRESS");
        require(registryMap[id] == address(0x0), "TOKEN_ALREADY_REGISTERED");
        registryMap[id] = addr;
    }

    function getTokenAddress(
        string memory id
    ) external view returns (address) {
        return registryMap[id];
    }
}

// ============================================================
// FILE: contracts/FT/interfaces/IAccountManager.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IAccountManager {
    function freezeAccount(address account, string memory memo) external;

    function unfreezeAccount(address account, string memory memo) external;

    function isAccountFrozen(address account) external view returns (bool);

    function removeAccountPostRecovery(
        address from,
        address to
    ) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/IAdminInstantTransfer.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IAdminInstantTransfer {
    /**
     * @dev Emitted when the amount of shares are moved from one shareholder account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event InstantTransfer(address indexed from, address indexed to, uint256 amount, string memo);

    function instantTransfer(
        address from,
        address to,
        uint256 amount,
        string memory memo
    ) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/IAdminTransfer.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IAdminTransfer {
    function transferShares(address from, address to, uint256 amount) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/IAuthorization.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IAuthorization {
    function authorizeAccount(address account) external;

    function deauthorizeAccount(address account) external;

    function isAccountAuthorized(address account) external view returns (bool);

    function isAdminAccount(address account) external view returns (bool);

    function getAuthorizedAccountsCount() external view returns (uint256);

    function getAuthorizedAccountAt(
        uint256 index
    ) external view returns (address);
}

// ============================================================
// FILE: contracts/FT/interfaces/IDeviceValidation.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IDeviceValidation {
    function setDeviceKey(
        address account,
        uint256 deviceId,
        string memory key
    ) external;

    function clearDeviceKey(address account, uint256 deviceId) external;

    function clearAccountKeys(address account) external;

    function getDeviceKey(
        address account,
        uint256 deviceId
    ) external view returns (string memory key);

    function getDeviceKeys(
        address account
    ) external view returns (uint256[] memory devices, string[] memory keys);

    function hasDevices(address account) external view returns (bool);
}

// ============================================================
// FILE: contracts/FT/interfaces/IHoldings.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IHoldings {
    function getShareHoldings(address account) external view returns (uint256);

    function hasEnoughHoldings(
        address account,
        uint256 amount
    ) external view returns (bool);

    function updateHolderInList(address account) external;

    function removeEmptyHolderFromList(address account) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/IRecovery.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IRecovery {
    function recoverAccount(
        address from,
        address to,
        string memory memo
    ) external;

    function recoverAsset(
        address from,
        address to,
        uint256 amount,
        string memory memo
    ) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/ITransferAgent.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface ITransferAgent {
    function adjustBalance(
        address account,
        uint256 currentBalance,
        uint256 newBalance,
        string memory memo
    ) external;

    function distributeDividends(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    ) external;

    function endOfDay(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    ) external;

    function settleTransactions(
        address[] memory accounts,
        uint256 date,
        uint256 price
    ) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/ITransferAgentExt.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface ITransferAgentExt {
    function adjustBalance(
        address account,
        uint256 currentBalance,
        uint256 newBalance,
        string memory memo
    ) external;

    function distributeDividends(
        address[] memory accounts,
        uint256 date,
        int256 rate,
        uint256 price
    ) external;

    function distributeDividends(
        address[] calldata accounts,
        uint256[] calldata adjustedShares,
        uint256 date,
        int256 rate,
        uint256 price
    ) external;

    function endOfDay(
        address[] calldata accounts,
        bytes32[] calldata txIds,
        uint256 date,
        int256 rate,
        uint256 price
    ) external;

    function endOfDay(
        address[] calldata accounts,
        uint256[] calldata adjustedShares,
        bytes32[] calldata txIds,
        uint256 date,
        int256 rate,
        uint256 price
    ) external;

    function settleTransactions(
        address[] calldata accounts,
        bytes32[] calldata txIds,
        uint256 date,
        uint256 price
    ) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/ITransferAgentXChain.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface ITransferAgentXChain {
    function settleCXTransactions(
        address account,
        bytes32[] calldata requestIds,
        uint256 date,
        uint256 price
    ) external;

    function settleCXTransaction(
        address account,
        bytes32 requestId,
        uint256 date,
        uint256 price
    ) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/ITransferManager.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface ITransferManager {
    /// @dev This is emitted when instant shareholder transfer capability status is updated
    event InstantTransferStatusUpdated(bool indexed status);
    /// @dev This is emitted when regular ERC-20 shareholder transfer capability status is updated
    event ERC20TransferStatusUpdated(bool indexed status);
    /// @dev This is emitted when regular ERC-20 3rd party transfer capability status is updated
    event ERC20ThirdPartyTransferStatusUpdated(bool indexed status);

    function enableInstantTransfer() external;

    function disableInstantTransfer() external;

    function enableERC20Transfer() external;

    function disableERC20Transfer() external;

    function enableERC20ThirdPartyTransfer() external;

    function disableERC20ThirdPartyTransfer() external;

    function isInstantTransferEnabled() external view returns (bool);

    function isERC20TransferEnabled() external view returns (bool);

    function isERC20ThirdPartyTransferEnabled() external view returns (bool);
}

// ============================================================
// FILE: contracts/FT/interfaces/IXChainInstantTransfer.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IXChainInstantTransfer {
    /**
     * @dev Emitted when the amount of shares are moved to a shareholder account from another chain.
     *
     */
    event InstantCXTransferIn(
        address indexed account,
        uint256 indexed timestamp,
        uint256 amount,
        string memo
    );

    /**
     * @dev Emitted when the amount of shares are moved from a shareholder account to another chain.
     *
     */
    event InstantCXTransferOut(
        address indexed account,
        uint256 amount,
        string memo
    );

    function instantCXTransferIn(
        address account,
        uint256 timestamp,
        uint256 amount,
        string memory memo
    ) external;

    function instantCXTransferOut(
        address account,
        uint256 amount,
        string memory memo
    ) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/IXChainTransferTransaction.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IXChainTransferTransaction {
    function requestCrossChainTransferIn(
        address account,
        uint256 date,
        uint256 amount
    ) external;

    function requestCrossChainTransferOut(
        address account,
        uint256 date,
        uint256 amount
    ) external;
}

// ============================================================
// FILE: contracts/FT/interfaces/TransactionIfaces.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import {IAuthorization} from "./IAuthorization.sol";

interface ITransactionStorage {
    enum TransactionType {
        INVALID,
        ADJUSTMENT,
        AIP,
        DIVIDEND,
        DIVIDEND_REINVESTMENT,
        CASH_LIQUIDATION,
        SHARE_LIQUIDATION,
        CASH_PURCHASE,
        SHARE_PURCHASE,
        FULL_LIQUIDATION,
        SHARE_TRANSFER,
        CXFER_OUT,
        CXFER_IN
    }

    struct TransactionDetail {
        TransactionType txType;
        uint256 date;
        uint256 amount;
        bool selfService;
    }

    struct ShareholderTransaction {
        bytes32 txId;
        TransactionDetail txDetail;
    }

    function clearTransactionStorage(
        address account,
        bytes32 requestId
    ) external returns (bool);

    function unlistFromAccountsWithPendingTransactions(
        address account
    ) external;

    function getAccountTransactions(
        address account
    ) external view returns (bytes32[] memory);

    function getTransactionDetail(
        bytes32 requestId
    ) external view returns (uint8, uint256, uint256, bool);

    function getAccountsWithTransactions(
        uint256 pageSize
    ) external view returns (address[] memory accounts);

    function getAccountsWithTransactionsCount() external view returns (uint256);

    function hasTransactions(address account) external view returns (bool);

    function isFromAccount(
        address account,
        bytes32 requestId
    ) external view returns (bool);
}

// Extended interface introduced for the new Share Transfer functionality,
// it was added in TransactionalModule_V3.sol
interface IExtendedTransactionDetail is ITransactionStorage {
    struct ExtendedTransactionDetail {
        TransactionType txType;
        uint256 date;
        uint256 amount;
        bool selfService;
        address source;
        address destination;
    }

    function getExtendedTransactionDetail(
        bytes32 requestId
    ) external view returns (uint8, address, address, uint256, uint256, bool);
}

interface IShareholderTransaction {
    function requestCashPurchase(
        address account,
        uint256 date,
        uint256 amount
    ) external;

    function requestCashLiquidation(
        address account,
        uint256 date,
        uint256 amount
    ) external;

    function requestFullLiquidation(address account, uint256 date) external;
}

interface IShareholderTransferTransaction {
    function requestShareTransfer(
        address account,
        address destination,
        uint256 date,
        uint256 amount
    ) external;
}

interface IShareholderSelfServiceTransaction {
    function requestSelfServiceCashPurchase(uint256 amount) external;

    function requestSelfServiceCashLiquidation(uint256 amount) external;

    function requestSelfServiceFullLiquidation() external;

    function enableSelfService() external;

    function disableSelfService() external;

    function isSelfServiceEnabled() external view returns (bool);
}

interface IShareholderSelfServiceTransferTransaction {
    function requestSelfServiceShareTransfer(
        uint256 amount,
        address destination
    ) external;
}

interface ITransferAgentTransaction {
    function setupAIP(address account, uint256 date, uint256 amount) external;
}

interface ICancellableSelfServiceTransaction {
    function cancelSelfServiceRequest(
        bytes32 requestId,
        string memory memo
    ) external;
}

interface ICancellableTransaction {
    function cancelRequest(
        address account,
        bytes32 requestId,
        string calldata memo
    ) external;
}

// ============================================================
// FILE: contracts/FT/MoneyMarketFund.sol
// ============================================================

// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {ModuleRegistry} from "./infrastructure/ModuleRegistry.sol";
import {IAuthorization} from "./interfaces/IAuthorization.sol";
import {ITransferAgent} from "./interfaces/ITransferAgent.sol";
import {IHoldings} from "./interfaces/IHoldings.sol";

/**
 * @title Implementation of a Money Market Fund
 *
 * This implementation represents a 40 Act Fund in which all operations are cash based.
 * It means all amounts passed to the contract functions with the exception of the contructor's
 * _seed parameter represent the value (in terms of fiat currency) of the fund shares to buy or sell.
 *
 * Purchases or sells of shares requested are settled calling any of the settleTransactions or EndOfDay functions.
 * The price supplied in the settlement functions corresponds to the NAV per share at the moment of the market closing.
 *
 */
contract MoneyMarketFund is
    Initializable,
    ERC20Upgradeable,
    AccessControlUpgradeable,
    UUPSUpgradeable,
    IHoldings
{
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant MAX_PAGE_SIZE_BALANCE = 10;
    uint256 public constant NUMBER_SCALE_FACTOR = 1E18;

    bytes32 public constant ROLE_TOKEN_OWNER = keccak256("ROLE_TOKEN_OWNER");
    bytes32 constant AUTHORIZATION_MODULE = keccak256("MODULE_AUTHORIZATION");
    bytes32 constant TRANSACTIONAL_MODULE = keccak256("MODULE_TRANSACTIONAL");

    // ******************** State Variables ******************** //
    // ********************************************************* //

    uint256 public lastKnownPrice;
    ModuleRegistry moduleRegistry;
    EnumerableSet.AddressSet accountsWithHoldings;

    // ********************* Modifiers ********************* //
    // ***************************************************** //

    modifier onlyAdminOrWriteAccess() {
        require(
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(_msgSender()) ||
                AccessControlUpgradeable(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).hasRole(keccak256("WRITE_ACCESS_TOKEN"), _msgSender()),
            "NO_WRITE_ACCESS"
        );
        _;
    }

    // -------------------- Pagination --------------------  //

    modifier onlyWithValidPageSize(uint256 pageSize, uint256 maxPageSize) {
        require(
            pageSize > 0 && pageSize <= maxPageSize,
            "INVALID_PAGINATION_SIZE"
        );
        _;
    }

    // ********************************************************************* //
    // **********************     MoneyMarketFund     ********************** //
    // ********************************************************************* //

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _initToken(address owner, uint256 seed, uint256 price) private {
        lastKnownPrice = price;
        if (seed > 0) {
            _mint(owner, seed);
        }
    }

    function initialize(
        address _owner_,
        uint256 _seed_,
        uint256 _price_,
        string memory _name_,
        string memory _symbol_,
        address _moduleRegistry_
    ) public initializer {
        require(_owner_ != address(0), "Owner must not be empty!");
        require(_moduleRegistry_ != address(0), "INVALID_REGISTRY_ADDRESS");
        __ERC20_init(_name_, _symbol_);
        __AccessControl_init();
        __UUPSUpgradeable_init();
        moduleRegistry = ModuleRegistry(_moduleRegistry_);
        _grantRole(DEFAULT_ADMIN_ROLE, _owner_);
        _setRoleAdmin(ROLE_TOKEN_OWNER, ROLE_TOKEN_OWNER);
        _grantRole(ROLE_TOKEN_OWNER, _owner_);

        _initToken(_owner_, _seed_, _price_);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_TOKEN_OWNER) {}

    // ************************* Public Interface ************************* //
    // ******************************************************************** //

    function mintShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _mint(account, shares);
    }

    function burnShares(
        address account,
        uint256 shares
    ) external virtual onlyAdminOrWriteAccess {
        _burn(account, shares);
    }

    function updateHolderInList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) > 0) {
            accountsWithHoldings.add(account);
        } else {
            accountsWithHoldings.remove(account);
        }
    }

    function removeEmptyHolderFromList(
        address account
    ) external virtual onlyAdminOrWriteAccess {
        if (balanceOf(account) == 0) {
            accountsWithHoldings.remove(account);
        }
    }

    function updateLastKnownPrice(
        uint256 price
    ) external virtual onlyAdminOrWriteAccess {
        lastKnownPrice = price;
    }

    // -------------------- Utility view functions --------------------  //

    function hasEnoughHoldings(
        address account,
        uint256 amount
    ) external view virtual override returns (bool) {
        uint256 holdings = ((balanceOf(account) * lastKnownPrice) /
            NUMBER_SCALE_FACTOR);
        return (holdings > 0 && holdings >= amount);
    }

    function getShareHoldings(
        address account
    ) external view virtual override returns (uint256) {
        return balanceOf(account);
    }

    // **************** Info Query Utilities (External) **************** //

    function getShareholdersWithHoldingsCount()
        external
        view
        virtual
        returns (uint256)
    {
        return accountsWithHoldings.length();
    }

    function getSharesOutstanding() external view virtual returns (uint256) {
        return totalSupply();
    }

    function hasHoldings(address account) external view virtual returns (bool) {
        return accountsWithHoldings.contains(account);
    }

    function getAccountsBalances(
        uint256 pageSize,
        uint256 startIndex
    )
        external
        view
        virtual
        onlyWithValidPageSize(pageSize, MAX_PAGE_SIZE_BALANCE)
        returns (
            bool hasNext,
            uint256 nextIndex,
            address[] memory accounts,
            uint256[] memory balances
        )
    {
        uint256 count = IAuthorization(
            moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
        ).getAuthorizedAccountsCount();
        require(startIndex <= count, "INVALID_PAGINATION_INDEX");

        uint256 arraySize = pageSize;
        hasNext = true;

        uint256 end = startIndex + pageSize;
        if (end >= count) {
            end = count;
            arraySize = end - startIndex;
            hasNext = false;
        }

        accounts = new address[](arraySize);
        balances = new uint256[](arraySize);
        nextIndex = end;

        for (uint256 i = startIndex; i < end; ) {
            uint256 resIdx = i - startIndex;
            accounts[resIdx] = IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).getAuthorizedAccountAt(i);
            balances[resIdx] = balanceOf(accounts[resIdx]);
            unchecked {
                i++;
            }
        }
    }

    // **************** Internal Functions ***************** //
    // ***************************************************** //

    // -------------------- ERC20 --------------------  //
    // https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20-_beforeTokenTransfer-address-address-uint256-
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        // token transfers must comply with the policy
        // defined by the concrete fund implementation.
        _checkTransferPolicy(from, to);
    }

    // -------------------- Compliance --------------------  //

    // Token transfer policy for this fund
    // 1. Tokens can only be minted to the admin or shareholder accounts
    // 2. Only the admin account is allowed to perform token transfers (this could change in the future)
    // 3. Token transfers by accounts other than the admin account will revert
    function _checkTransferPolicy(
        address from,
        address to
    ) internal view virtual {
        if (from == address(0)) {
            // Minting policy
            require(
                IAuthorization(
                    moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                ).isAdminAccount(to) ||
                    IAuthorization(
                        moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                    ).isAccountAuthorized(to),
                "TRANSFER_RESTRICTION"
            );
        } else if (
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAdminAccount(from)
        ) {
            // Transfer policy
            if (to != address(0)) {
                require(
                    IAuthorization(
                        moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
                    ).isAccountAuthorized(to),
                    "TRANSFER_RESTRICTION"
                );
            }
        } else if (
            IAuthorization(
                moduleRegistry.getModuleAddress(AUTHORIZATION_MODULE)
            ).isAccountAuthorized(from)
        ) {
            // Burning policy
            require(to == address(0), "TRANSFER_RESTRICTION");
        } else {
            // Any other transfer is restricted
            revert("TRANSFER_RESTRICTION");
        }
    }
}

// ============================================================
// FILE: contracts/mocks/modules/AuthorizationModuleV2.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {AuthorizationModule} from "../../FT/infrastructure/modules/AuthorizationModule.sol";

contract AuthorizationModuleV2 is AuthorizationModule {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() public pure virtual override returns (uint8) {
        return 2;
    }
}

// ============================================================
// FILE: contracts/mocks/modules/AuthorizationTestStub.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {IAuthorization} from "../../FT/interfaces/IAuthorization.sol";

contract AuthorizationTestStub is IAuthorization {
    bytes32 public constant MODULE_ID = keccak256("MODULE_AUTHORIZATION");

    address fundAdminAccount;
    address authorizedAccount;
    bool isAuthorized;

    constructor(address admin) {
        fundAdminAccount = admin;
    }

    function authorizeAccount(address account) external override {
        authorizedAccount = account;
    }

    function deauthorizeAccount(address account) external override {
        require(authorizedAccount == account, "MOCK_ERROR_INVALID_ACCOUNT");
        authorizedAccount = address(0);
    }

    function isAccountAuthorized(
        address account
    ) external view override returns (bool) {
        return account == authorizedAccount;
    }

    function isAdminAccount(
        address account
    ) external view override returns (bool) {
        return account == fundAdminAccount;
    }

    function getAuthorizedAccountsCount()
        external
        view
        override
        returns (uint256)
    {
        return authorizedAccount != address(0) ? 1 : 0;
    }

    function getAuthorizedAccountAt(
        uint256
    ) external view override returns (address) {
        return authorizedAccount;
    }
}

// ============================================================
// FILE: contracts/mocks/modules/HoldingsTestStub.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {IHoldings} from "../../FT/interfaces/IHoldings.sol";

contract HoldingsTestStub is IHoldings {
    string tokenId;

    uint256 shareHoldings;
    bool hasEnoughHoldingsFlag;

    constructor(string memory _tokenId) {
        tokenId = _tokenId;
    }

    function devSetEnoughHoldings(bool _hasEnoughHoldings) external {
        hasEnoughHoldingsFlag = _hasEnoughHoldings;
    }

    function devSetSharehHoldings(uint256 _shareHoldings) external {
        shareHoldings = _shareHoldings;
    }

    function devGetTokenId() external view returns (string memory) {
        return tokenId;
    }

    function getShareHoldings(
        address
    ) external view override returns (uint256) {
        return shareHoldings;
    }

    function hasEnoughHoldings(
        address,
        uint256
    ) external view override returns (bool) {
        return hasEnoughHoldingsFlag;
    }

    function updateHolderInList(address account) external override {}

    function removeEmptyHolderFromList(address account) external override {}
}

// ============================================================
// FILE: contracts/mocks/modules/TransactionalModuleV2.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {TransactionalModule} from "../../FT/infrastructure/modules/TransactionalModule.sol";

contract TransactionalModuleV2 is TransactionalModule {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() public pure virtual override returns (uint8) {
        return 2;
    }
}

// ============================================================
// FILE: contracts/mocks/modules/UpgradableModuleTestStub.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {BaseUpgradeableModule} from "../../FT/infrastructure/modules/BaseUpgradeableModule.sol";

contract UpgradeableModuleTestStub is BaseUpgradeableModule {
    bytes32 public constant MODULE_ID = keccak256("TEST_MODULE");

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override {}

    function getVersion() public pure virtual override returns (uint8) {
        return 1;
    }
}

// ============================================================
// FILE: contracts/utils/external/OpenZeppelinTest.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "hardhat/console.sol";

contract OpenZeppelinTest {
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet addressSet;

    function addAddress(address account) public {
        addressSet.add(account);
    }

    function removeAddress(address account) public {
        addressSet.remove(account);
    }

    function getAddressAt(uint256 index) public view returns (address account) {
        account = addressSet.at(index);
    }

    function containsAddress(
        address account
    ) public view returns (bool contains) {
        contains = addressSet.contains(account);
    }

    function getAddressSetLength() public view returns (uint256 length) {
        length = addressSet.length();
    }

    function getAddressArray() public view returns (address[] memory array) {
        array = addressSet.values();
    }

    function removeAddresses(uint256 pageSize) public {
        uint256 windowSize = pageSize;
        uint256 start = addressSet.length();
        uint256 end = 0;

        if (pageSize < addressSet.length()) {
            end = start - windowSize;
        }

        // console.log("WindowSize: %o", windowSize);
        for (uint256 i = start; i > end; i--) {
            address acc = this.getAddressAt(i - 1);
            // console.log("Processing index: %o", i);
            // console.log("Address: %o", acc);
            // console.log("Size before removal: %o ", addressSet.length());
            this.removeAddress(acc);
            // console.log("Size after removal: %o ", addressSet.length());
        }
    }
}

// ============================================================
// FILE: hardhat/console.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

library console {
    address constant CONSOLE_ADDRESS =
        0x000000000000000000636F6e736F6c652e6c6f67;

    function _sendLogPayloadImplementation(bytes memory payload) internal view {
        address consoleAddress = CONSOLE_ADDRESS;
        /// @solidity memory-safe-assembly
        assembly {
            pop(
                staticcall(
                    gas(),
                    consoleAddress,
                    add(payload, 32),
                    mload(payload),
                    0,
                    0
                )
            )
        }
    }

    function _castToPure(
      function(bytes memory) internal view fnIn
    ) internal pure returns (function(bytes memory) pure fnOut) {
        assembly {
            fnOut := fnIn
        }
    }

    function _sendLogPayload(bytes memory payload) internal pure {
        _castToPure(_sendLogPayloadImplementation)(payload);
    }

    function log() internal pure {
        _sendLogPayload(abi.encodeWithSignature("log()"));
    }
    function logInt(int256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(int256)", p0));
    }

    function logUint(uint256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function logString(string memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function logBool(bool p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function logAddress(address p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function logBytes(bytes memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes)", p0));
    }

    function logBytes1(bytes1 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes1)", p0));
    }

    function logBytes2(bytes2 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes2)", p0));
    }

    function logBytes3(bytes3 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes3)", p0));
    }

    function logBytes4(bytes4 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes4)", p0));
    }

    function logBytes5(bytes5 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes5)", p0));
    }

    function logBytes6(bytes6 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes6)", p0));
    }

    function logBytes7(bytes7 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes7)", p0));
    }

    function logBytes8(bytes8 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes8)", p0));
    }

    function logBytes9(bytes9 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes9)", p0));
    }

    function logBytes10(bytes10 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes10)", p0));
    }

    function logBytes11(bytes11 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes11)", p0));
    }

    function logBytes12(bytes12 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes12)", p0));
    }

    function logBytes13(bytes13 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes13)", p0));
    }

    function logBytes14(bytes14 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes14)", p0));
    }

    function logBytes15(bytes15 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes15)", p0));
    }

    function logBytes16(bytes16 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes16)", p0));
    }

    function logBytes17(bytes17 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes17)", p0));
    }

    function logBytes18(bytes18 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes18)", p0));
    }

    function logBytes19(bytes19 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes19)", p0));
    }

    function logBytes20(bytes20 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes20)", p0));
    }

    function logBytes21(bytes21 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes21)", p0));
    }

    function logBytes22(bytes22 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes22)", p0));
    }

    function logBytes23(bytes23 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes23)", p0));
    }

    function logBytes24(bytes24 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes24)", p0));
    }

    function logBytes25(bytes25 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes25)", p0));
    }

    function logBytes26(bytes26 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes26)", p0));
    }

    function logBytes27(bytes27 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes27)", p0));
    }

    function logBytes28(bytes28 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes28)", p0));
    }

    function logBytes29(bytes29 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes29)", p0));
    }

    function logBytes30(bytes30 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes30)", p0));
    }

    function logBytes31(bytes31 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes31)", p0));
    }

    function logBytes32(bytes32 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes32)", p0));
    }

    function log(uint256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function log(string memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function log(bool p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function log(address p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function log(uint256 p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256)", p0, p1));
    }

    function log(uint256 p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string)", p0, p1));
    }

    function log(uint256 p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool)", p0, p1));
    }

    function log(uint256 p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address)", p0, p1));
    }

    function log(string memory p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256)", p0, p1));
    }

    function log(string memory p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string)", p0, p1));
    }

    function log(string memory p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool)", p0, p1));
    }

    function log(string memory p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address)", p0, p1));
    }

    function log(bool p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256)", p0, p1));
    }

    function log(bool p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string)", p0, p1));
    }

    function log(bool p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool)", p0, p1));
    }

    function log(bool p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address)", p0, p1));
    }

    function log(address p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256)", p0, p1));
    }

    function log(address p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string)", p0, p1));
    }

    function log(address p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool)", p0, p1));
    }

    function log(address p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address)", p0, p1));
    }

    function log(uint256 p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address)", p0, p1, p2));
    }

    function log(string memory p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256)", p0, p1, p2));
    }

    function log(string memory p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string)", p0, p1, p2));
    }

    function log(string memory p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool)", p0, p1, p2));
    }

    function log(string memory p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address)", p0, p1, p2));
    }

    function log(bool p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256)", p0, p1, p2));
    }

    function log(bool p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string)", p0, p1, p2));
    }

    function log(bool p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool)", p0, p1, p2));
    }

    function log(bool p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address)", p0, p1, p2));
    }

    function log(bool p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256)", p0, p1, p2));
    }

    function log(bool p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string)", p0, p1, p2));
    }

    function log(bool p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool)", p0, p1, p2));
    }

    function log(bool p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address)", p0, p1, p2));
    }

    function log(address p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256)", p0, p1, p2));
    }

    function log(address p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string)", p0, p1, p2));
    }

    function log(address p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool)", p0, p1, p2));
    }

    function log(address p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address)", p0, p1, p2));
    }

    function log(address p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256)", p0, p1, p2));
    }

    function log(address p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string)", p0, p1, p2));
    }

    function log(address p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool)", p0, p1, p2));
    }

    function log(address p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address)", p0, p1, p2));
    }

    function log(address p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256)", p0, p1, p2));
    }

    function log(address p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string)", p0, p1, p2));
    }

    function log(address p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool)", p0, p1, p2));
    }

    function log(address p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,address)", p0, p1, p2, p3));
    }

}
