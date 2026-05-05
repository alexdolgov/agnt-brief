// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

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
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    function __Ownable_init() internal onlyInitializing {
        __Ownable_init_unchained();
    }

    function __Ownable_init_unchained() internal onlyInitializing {
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
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
// FILE: @openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

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
// FILE: @openzeppelin/contracts/interfaces/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (interfaces/IERC165.sol)

pragma solidity ^0.8.0;

import "../utils/introspection/IERC165.sol";

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC4906.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (interfaces/IERC4906.sol)

pragma solidity ^0.8.0;

import "./IERC165.sol";
import "./IERC721.sol";

/// @title EIP-721 Metadata Update Extension
interface IERC4906 is IERC165, IERC721 {
    /// @dev This event emits when the metadata of a token is changed.
    /// So that the third-party platforms such as NFT market could
    /// timely update the images and related attributes of the NFT.
    event MetadataUpdate(uint256 _tokenId);

    /// @dev This event emits when the metadata of a range of tokens is changed.
    /// So that the third-party platforms such as NFT market could
    /// timely update the images and related attributes of the NFTs.
    event BatchMetadataUpdate(uint256 _fromTokenId, uint256 _toTokenId);
}

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (interfaces/IERC721.sol)

pragma solidity ^0.8.0;

import "../token/ERC721/IERC721.sol";

// ============================================================
// FILE: @openzeppelin/contracts/security/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;

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
abstract contract ReentrancyGuard {
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

    constructor() {
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
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
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
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../extensions/IERC20Permit.sol";
import "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20 token, address spender, uint256 value) internal {
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
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Compatible with tokens that require the approval to be set to
     * 0 before setting it to a non-zero value.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
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
        IERC20Permit token,
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
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
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
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && Address.isContract(address(token));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC721.sol";

/**
 * @title ERC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721Metadata is IERC721 {
    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC721 compliant contract.
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
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC721
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
     * - The `operator` cannot be the caller.
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
// FILE: @openzeppelin/contracts/token/ERC721/IERC721Receiver.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC721/IERC721Receiver.sol)

pragma solidity ^0.8.0;

/**
 * @title ERC721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC721 asset contracts.
 */
interface IERC721Receiver {
    /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
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
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
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
// FILE: @openzeppelin/contracts/utils/introspection/IERC165.sol
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
interface IERC165 {
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
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
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
// FILE: @openzeppelin/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
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
// FILE: @openzeppelin/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

import "./math/Math.sol";
import "./math/SignedMath.sol";

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
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
        return string(abi.encodePacked(value < 0 ? "-" : "", toString(SignedMath.abs(value))));
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
// FILE: src/protocol-v2/interfaces/IGlobalAccessList.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
 * @title IGlobalAccessList
 * @notice Interface for the GlobalAccessList contract that manages restricted accounts.
 * @author vBlackwhale (https://github.com/vblackwhale)
 */
interface IGlobalAccessList {
  // =========== ERRORS =========== //

  /// @notice Thrown when trying to restrict an account that is already restricted
  error AccountAlreadyRestricted();
  /// @notice Thrown when trying to unrestrict an account that is not restricted
  error AccountNotRestricted();

  // =========== EVENTS =========== //

  /// @notice Emitted when an account is added to the restricted list
  /// @param account The address of the restricted account
  event RestrictAccount(address indexed account);
  /// @notice Emitted when an account is removed from the restricted list
  /// @param account The address of the unrestricted account
  event UnrestrictAccount(address indexed account);

  // =========== READ FUNCTIONS =========== //

  /**
   * @notice Checks whether a given account is restricted.
   * @param account Address of the account to check.
   * @return True if the account is restricted, false otherwise
   */
  function isRestricted(address account) external view returns (bool);

  /**
   * @notice Returns a paginated list of restricted accounts.
   * @param startIndex The index of the first account to return.
   * @param nbAccounts The number of accounts to return.
   * @return accounts An array of restricted accounts addresses.
   */
  function getRestrictedAccounts(
    uint256 startIndex,
    uint256 nbAccounts
  ) external view returns (address[] memory accounts);

  // =========== WRITE FUNCTIONS =========== //

  /**
   * @notice Adds a given account to the restricted list.
   * @dev Only callable by the contract owner.
   * @param account The account's address to be restricted.
   */
  function restrictAccount(address account) external;

  /**
   * @notice Removes a given account from the restricted list.
   * @dev Only callable by the contract owner. Uses swap-and-pop for gas efficiency.
   * @param account The account's address to be unrestricted.
   */
  function unRestrictAccount(address account) external;
}

// ============================================================
// FILE: src/protocol-v2/interfaces/IGlobalOwner.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
 * @title IGlobalOwner
 * @notice Interface for the GlobalOwner contract that holds the address of a global 
 * owner account shared by all contracts of the Ledgity Yield's codebase.
 */
interface IGlobalOwner {
    /**
     * @notice Returns the address of the current owner.
     * @return The address of the current owner.
     */
    function owner() external view returns (address);

    /**
     * @notice Returns the address of the pending owner.
     * @return The address of the pending owner.
     */
    function pendingOwner() external view returns (address);

    /**
     * @notice Starts the ownership transfer of the contract to a new account.
     * @param newOwner The address to transfer ownership to.
     */
    function transferOwnership(address newOwner) external;

    /**
     * @notice The new owner accepts the ownership transfer.
     */
    function acceptOwnership() external;

    /**
     * @notice Leaves the contract without owner. Can only be called by the current owner.
     */
    function renounceOwnership() external;
}

// ============================================================
// FILE: src/protocol-v2/interfaces/IGlobalPause.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
 * @title IGlobalPause
 * @notice Interface for the GlobalPause contract that holds a global pause state 
 * shared by all contracts of the Ledgity Yield codebase.
 */
interface IGlobalPause {
    /**
     * @notice Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @notice Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @notice Returns true if the contract is paused, and false otherwise.
     * @return True if paused, false otherwise.
     */
    function paused() external view returns (bool);

    /**
     * @notice Triggers stopped state.
     */
    function pause() external;

    /**
     * @notice Returns to normal state.
     */
    function unpause() external;

    /**
     * @notice Returns the address of the current owner.
     * @return The address of the current owner.
     */
    function owner() external view returns (address);

    /**
     * @notice Returns the address of the pending owner.
     * @return The address of the pending owner.
     */
    function pendingOwner() external view returns (address);

    /**
     * @notice Starts the ownership transfer of the contract to a new account.
     * @param newOwner The address to transfer ownership to.
     */
    function transferOwnership(address newOwner) external;

    /**
     * @notice The new owner accepts the ownership transfer.
     */
    function acceptOwnership() external;

    /**
     * @notice Leaves the contract without owner. Can only be called by the current owner.
     */
    function renounceOwnership() external;
}

// ============================================================
// FILE: src/protocol-v2/interfaces/IStakingPositions.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { IERC165 } from "@openzeppelin/contracts/interfaces/IERC165.sol";
import { IERC721, IERC721Metadata } from "@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol";
import { IERC4906 } from "@openzeppelin/contracts/interfaces/IERC4906.sol";

interface IStakingPositions is IERC4906, IERC721Metadata {
  struct LockedBalance {
    int128 amount;
    uint256 end;
  }

  struct UserPoint {
    int128 bias;
    int128 slope; // # -dweight / dt
    uint256 timestamp;
  }

  struct GlobalPoint {
    int128 bias;
    int128 slope; // # -dweight / dt
    uint256 timestamp;
  }

  enum DepositType {
    DEPOSIT_FOR_TYPE,
    CREATE_LOCK_TYPE,
    INCREASE_LOCK_AMOUNT,
    INCREASE_UNLOCK_TIME
  }

  struct NFTData {
    uint256 tokenId;
    LockedBalance locked;
    uint256 votingPower;
    uint256 votingPowerAt;
    address owner;
  }

  error NonExistentToken();
  error ZeroAddress();
  error SameAddress();
  error NotApprovedOrOwner();
  error ERC721ReceiverRejectedTokens();
  error ERC721TransferToNonERC721ReceiverImplementer();
  error LockExpired();
  error NoLockFound();
  error LockDurationNotInFuture();
  error LockDurationTooLong();
  error LockNotExpired();
  error NotOwner();
  error ZeroAmount();

  event Deposit(
    address indexed from,
    uint256 indexed tokenId,
    DepositType indexed depositType,
    uint256 value,
    uint256 locktime,
    uint256 timestamp
  );
  event Withdraw(
    address indexed from,
    uint256 indexed tokenId,
    uint256 value,
    uint256 timestamp
  );

  event Supply(uint256 prevSupply, uint256 supply);

  event BreakerActivated();

  /// @notice Address of token (VELO) used to create a veNFT
  function token() external view returns (address);

  /// @notice Address of art proxy used for on-chain art generation
  function artProxy() external view returns (address);

  /// @dev Current count of token
  function tokenId() external view returns (uint256);

  /// @notice Maximum lock time in seconds
  function maxTime() external view returns (uint256);

  /// @notice Maximum lock time as int128
  function iMaxTime() external view returns (int128);

  /*///////////////////////////////////////////////////////////////
                             METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

  function name() external view returns (string memory);

  function symbol() external view returns (string memory);

  function decimals() external view returns (uint8);

  /// @inheritdoc IERC721Metadata
  function tokenURI(
    uint256 tokenId
  ) external view returns (string memory);

  /*//////////////////////////////////////////////////////////////
                      ERC721 BALANCE/OWNER STORAGE
    //////////////////////////////////////////////////////////////*/

  /// @dev Mapping from owner address to mapping of index to tokenId
  function ownerToNFTokenIdList(
    address _owner,
    uint256 _index
  ) external view returns (uint256 _tokenId);

  /// @inheritdoc IERC721
  function ownerOf(
    uint256 tokenId
  ) external view returns (address owner);

  /// @notice Get the balance of a user's veNFTs, replaces the ERC721 balanceOf function
  /// @param _owner .
  /// @return balance of _owner
  function balanceOfAccountNFT(
    address _owner
  ) external view returns (uint256 balance);

  /*//////////////////////////////////////////////////////////////
                         ERC721 APPROVAL STORAGE
    //////////////////////////////////////////////////////////////*/

  /// @inheritdoc IERC721
  function getApproved(
    uint256 _tokenId
  ) external view returns (address operator);

  /// @inheritdoc IERC721
  function isApprovedForAll(
    address owner,
    address operator
  ) external view returns (bool);

  /// @notice Check whether spender is owner or an approved user for a given veNFT
  /// @param _spender .
  /// @param _tokenId .
  function isApprovedOrOwner(
    address _spender,
    uint256 _tokenId
  ) external view returns (bool);

  /*//////////////////////////////////////////////////////////////
                              ERC721 LOGIC
    //////////////////////////////////////////////////////////////*/

  /// @inheritdoc IERC721
  function approve(address to, uint256 tokenId) external;

  /// @inheritdoc IERC721
  function setApprovalForAll(
    address operator,
    bool approved
  ) external;

  /// @inheritdoc IERC721
  function transferFrom(
    address from,
    address to,
    uint256 tokenId
  ) external;

  /// @inheritdoc IERC721
  function safeTransferFrom(
    address from,
    address to,
    uint256 tokenId
  ) external;

  /// @inheritdoc IERC721
  function safeTransferFrom(
    address from,
    address to,
    uint256 tokenId,
    bytes calldata data
  ) external;

  /*//////////////////////////////////////////////////////////////
                              ERC165 LOGIC
    //////////////////////////////////////////////////////////////*/

  /// @inheritdoc IERC165
  function supportsInterface(
    bytes4 _interfaceID
  ) external view returns (bool);

  /*//////////////////////////////////////////////////////////////
                             ESCROW STORAGE
    //////////////////////////////////////////////////////////////*/

  /// @notice Total count of epochs witnessed since contract creation
  function epoch() external view returns (uint256);

  /// @notice Total amount of token() deposited
  function supply() external view returns (uint256);

  function userPointEpoch(
    uint256 _tokenId
  ) external view returns (uint256 _epoch);

  /// @notice time -> signed slope change
  function slopeChanges(
    uint256 _timestamp
  ) external view returns (int128);

  /// @notice Global point history at a given index
  function getPointHistory(
    uint256 _loc
  ) external view returns (GlobalPoint memory);

  /// @notice Get the LockedBalance (amount, end) of a _tokenId
  /// @param _tokenId .
  /// @return LockedBalance of _tokenId
  function getLockedBalance(
    uint256 _tokenId
  ) external view returns (LockedBalance memory);

  /// @notice User -> UserPoint[userEpoch]
  function getUserPointHistory(
    uint256 _tokenId,
    uint256 _loc
  ) external view returns (UserPoint memory);

  /*//////////////////////////////////////////////////////////////
                              ESCROW LOGIC
    //////////////////////////////////////////////////////////////*/

  /// @notice Record global data to checkpoint
  function checkpoint() external;

  /// @notice Deposit `_value` tokens for `_tokenId` and add to the lock
  /// @dev Anyone (even a smart contract) can deposit for someone else, but
  ///      cannot extend their locktime and deposit for a brand new user
  /// @param _tokenId lock NFT
  /// @param _value Amount to add to user's lock
  function depositFor(uint256 _tokenId, uint256 _value) external;

  /// @notice Deposit `_value` tokens for `msg.sender` and lock for `_lockDuration`
  /// @param _value Amount to deposit
  /// @param _lockDuration Number of seconds to lock tokens for (rounded down to nearest week)
  /// @return TokenId of created veNFT
  function createLock(
    uint256 _value,
    uint256 _lockDuration
  ) external returns (uint256);

  /// @notice Deposit `_value` additional tokens for `_tokenId` without modifying the unlock time
  /// @param _value Amount of tokens to deposit and add to the lock
  function increaseAmount(uint256 _tokenId, uint256 _value) external;

  /// @notice Extend the unlock time for `_tokenId`
  ///         Cannot extend lock time of permanent locks
  /// @param _lockDuration New number of seconds until tokens unlock
  function increaseUnlockTime(
    uint256 _tokenId,
    uint256 _lockDuration
  ) external;

  /// @notice Withdraw all tokens for `_tokenId`
  /// @dev Only possible if the lock is both expired and not permanent
  ///      This will burn the veNFT. Any rebases or rewards that are unclaimed
  ///      will no longer be claimable. Claim all rebases and rewards prior to calling this.
  function withdraw(uint256 _tokenId) external;

  /*///////////////////////////////////////////////////////////////
                           GAUGE VOTING STORAGE
    //////////////////////////////////////////////////////////////*/

  /// @notice Total amount of voting power of a user across all veNFTs
  /// @dev Same as getUserTotalVotingPower
  function balanceOf(
    address owner
  ) external view returns (uint256 balance);

  /// @notice Get the voting power for _tokenId at the current timestamp
  /// @dev Returns 0 if called in the same block as a transfer.
  /// @param _tokenId .
  /// @return Voting power
  function balanceOfNFT(
    uint256 _tokenId
  ) external view returns (uint256);

  /// @notice Get the voting power for _tokenId at a given timestamp
  /// @param _tokenId .
  /// @param _t Timestamp to query voting power
  /// @return Voting power
  function balanceOfNFTAt(
    uint256 _tokenId,
    uint256 _t
  ) external view returns (uint256);

  /// @notice Calculate total voting power at current timestamp
  /// @return Total voting power at current timestamp
  function totalSupply() external view returns (uint256);

  /// @notice Calculate total voting power at a given timestamp
  /// @param _t Timestamp to query total voting power
  /// @return Total voting power at given timestamp
  function totalSupplyAt(uint256 _t) external view returns (uint256);

  /// @notice Get all NFT data for a user
  /// @param _user Address to query NFTs for
  /// @return Array of NFTData structs containing all user's NFT information
  function getUserNFTs(
    address _user
  ) external view returns (NFTData[] memory);

  /// @notice Get total voting power for a user across all their NFTs at current timestamp
  /// @param _user Address to query total voting power for
  /// @return Total voting power across all user's NFTs
  /// @dev Same as balanceOf
  function getUserTotalVotingPower(
    address _user
  ) external view returns (uint256);

  /// @notice Get total voting power for a user across all their NFTs at a specific timestamp
  /// @param _user Address to query total voting power for
  /// @param _t Timestamp to query voting power at
  /// @return Total voting power across all user's NFTs at given timestamp
  function getUserTotalVotingPowerAt(
    address _user,
    uint256 _t
  ) external view returns (uint256);

  /*///////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @notice Set art proxy (owner only)
  function setArtProxy(address _proxy) external;

  /// @notice Set maximum lock time (owner only)
  function setMaxTime(uint256 _maxTime) external;

  /// @notice Unlock all veNFTs (owner only)
  function unlockAll() external;
}

// ============================================================
// FILE: src/protocol-v2/interfaces/IStakingRewardsDistributor.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { IStakingPositions } from "src/protocol-v2/interfaces/IStakingPositions.sol";

interface IStakingRewardsDistributor {
  /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

  struct BaseRewardPeriod {
    uint256 startWeek;
    uint256 endWeek;
    uint256 totalAmount;
    uint256 weeklyAmount;
  }

  /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

  event BaseRewardsDeposited(
    uint256 indexed periodId,
    uint256 amount,
    uint256 startWeek,
    uint256 duration,
    uint256 weeklyAmount
  );

  event ProtocolFeesDeposited(
    uint256 amount,
    uint256 timestamp,
    uint256 totalSupply
  );

  event BaseRewardsClaimed(
    uint256 indexed tokenId,
    uint256 amount,
    uint256 fromWeek,
    uint256 toWeek
  );

  event ProtocolRewardsClaimed(
    uint256 indexed tokenId,
    uint256 amount
  );

  /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

  error NotOwner();
  error ZeroAmount();
  error ZeroDuration();
  error InvalidTokenId();
  error NotApprovedOrOwner();
  error OnlyStakingPositions();

  /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @notice StakingPositions contract address
  function staking() external view returns (IStakingPositions);

  /// @notice Reward token address (LDY)
  function token() external view returns (address);

  /// @notice Start time of the reward system
  function startTime() external view returns (uint256);

  /// @notice Last time base rewards were checkpointed
  function lastTokenTime() external view returns (uint256);

  /// @notice Current active base reward period ID
  function currentPeriodId() external view returns (uint256);

  /// @notice Base rewards per week for a specific period
  function baseRewardsPerWeek(
    uint256 periodId,
    uint256 week
  ) external view returns (uint256);

  /// @notice Last claim cursor for base rewards for each tokenId
  function baseRewardCursor(
    uint256 tokenId
  ) external view returns (uint256);

  /// @notice Last processed period cursor for base rewards for each tokenId
  function baseRewardPeriodCursor(
    uint256 tokenId
  ) external view returns (uint256);

  /// @notice Cumulative protocol rewards per token (scaled by 1e18)
  function cumulativeProtocolRewardsPerToken()
    external
    view
    returns (uint256);

  /// @notice Last recorded cumulative rewards per token for each NFT
  function protocolRewardsPerTokenPaid(
    uint256 tokenId
  ) external view returns (uint256);

  /// @notice Calculate total claimable rewards for a tokenId
  function claimable(
    uint256 tokenId
  )
    external
    view
    returns (uint256 baseRewards, uint256 protocolRewards);

  /// @notice Returns pending base rewards for the current incomplete week (not yet claimable)
  /// @param tokenId The NFT token ID
  /// @return pendingRewards Estimated rewards for the current week (will be claimable after week ends)
  function pendingBaseRewards(
    uint256 tokenId
  ) external view returns (uint256 pendingRewards);

  /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @notice Deposit base rewards to be distributed over time
  /// @param amount Amount of tokens to distribute
  /// @param duration Duration in weeks for distribution
  function depositBaseRewards(
    uint256 amount,
    uint256 duration
  ) external;

  /// @notice Deposit protocol fee rewards for immediate distribution
  /// @param amount Amount of protocol fee tokens to distribute
  function depositProtocolFees(uint256 amount) external;

  /// @notice Update the addresses of the staking and token contracts
  /// @param staking_ Address of the staking contract
  /// @param token_ Address of the token contract
  function updateAddresses(address staking_, address token_) external;

  /*//////////////////////////////////////////////////////////////
                            USER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @notice Claim all available rewards for a tokenId
  /// @param tokenId The NFT tokenId to claim rewards for
  /// @return baseRewards Amount of base rewards claimed
  /// @return protocolRewards Amount of protocol rewards claimed
  function claim(
    uint256 tokenId
  ) external returns (uint256 baseRewards, uint256 protocolRewards);

  /// @notice Claim all available rewards for a tokenId on withdrawal
  /// @param tokenId The NFT tokenId to claim rewards for
  /// @param to Address to receive the rewards
  function claimOnWithdrawal(uint256 tokenId, address to) external;

  /// @notice Claim rewards for multiple tokenIds
  /// @param tokenIds Array of tokenIds to claim for
  /// @return success True if all claims succeeded
  function claimMany(
    uint256[] calldata tokenIds
  ) external returns (bool success);

  /*//////////////////////////////////////////////////////////////
                          CALLBACK FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @notice Called by StakingPositions when a new lock is created
  /// @param tokenId The NFT tokenId that was created
  function onLockCreated(uint256 tokenId) external;
}

// ============================================================
// FILE: src/protocol-v2/libraries/BalanceLogicLibrary.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.18;

// Libraries
import { SafeCastLibrary } from "src/protocol-v2/libraries/SafeCastLibrary.sol";
// Interfaces
import { IStakingPositions } from "src/protocol-v2/interfaces/IStakingPositions.sol";

library BalanceLogicLibrary {
  using SafeCastLibrary for uint256;
  using SafeCastLibrary for int128;

  uint256 internal constant WEEK = 1 weeks;

  /// @notice Binary search to get the user point index for a token id at or prior to a given timestamp
  /// @dev If a user point does not exist prior to the timestamp, this will return 0.
  /// @param _userPointEpoch State of all user point epochs
  /// @param _userPointHistory State of all user point history
  /// @param _tokenId .
  /// @param _timestamp .
  /// @return User point index
  function getPastUserPointIndex(
    mapping(uint256 => uint256) storage _userPointEpoch,
    mapping(uint256 => IStakingPositions.UserPoint[1000000000])
      storage _userPointHistory,
    uint256 _tokenId,
    uint256 _timestamp
  ) internal view returns (uint256) {
    uint256 _userEpoch = _userPointEpoch[_tokenId];
    if (_userEpoch == 0) return 0;
    // First check most recent balance
    if (
      _userPointHistory[_tokenId][_userEpoch].timestamp <= _timestamp
    ) return (_userEpoch);
    // Next check implicit zero balance
    if (_userPointHistory[_tokenId][1].timestamp > _timestamp)
      return 0;

    uint256 lower = 0;
    uint256 upper = _userEpoch;
    while (upper > lower) {
      uint256 center = upper - (upper - lower) / 2; // ceil, avoiding overflow
      IStakingPositions.UserPoint
        storage userPoint = _userPointHistory[_tokenId][center];
      if (userPoint.timestamp == _timestamp) {
        return center;
      } else if (userPoint.timestamp < _timestamp) {
        lower = center;
      } else {
        upper = center - 1;
      }
    }
    return lower;
  }

  /// @notice Binary search to get the global point index at or prior to a given timestamp
  /// @dev If a checkpoint does not exist prior to the timestamp, this will return 0.
  /// @param _epoch Current global point epoch
  /// @param _pointHistory State of all global point history
  /// @param _timestamp .
  /// @return Global point index
  function getPastGlobalPointIndex(
    uint256 _epoch,
    mapping(uint256 => IStakingPositions.GlobalPoint)
      storage _pointHistory,
    uint256 _timestamp
  ) internal view returns (uint256) {
    if (_epoch == 0) return 0;
    // First check most recent balance
    if (_pointHistory[_epoch].timestamp <= _timestamp)
      return (_epoch);
    // Next check implicit zero balance
    if (_pointHistory[1].timestamp > _timestamp) return 0;

    uint256 lower = 0;
    uint256 upper = _epoch;
    while (upper > lower) {
      uint256 center = upper - (upper - lower) / 2; // ceil, avoiding overflow
      IStakingPositions.GlobalPoint
        storage globalPoint = _pointHistory[center];
      if (globalPoint.timestamp == _timestamp) {
        return center;
      } else if (globalPoint.timestamp < _timestamp) {
        lower = center;
      } else {
        upper = center - 1;
      }
    }
    return lower;
  }

  /// @notice Get the current voting power for `_tokenId`
  /// @dev Adheres to the ERC20 `balanceOf` interface for Aragon compatibility
  ///      Fetches last user point prior to a certain timestamp, then walks forward to timestamp.
  /// @param _userPointEpoch State of all user point epochs
  /// @param _userPointHistory State of all user point history
  /// @param _tokenId NFT for lock
  /// @param _t Epoch time to return voting power at
  /// @return User voting power
  function balanceOfNFTAt(
    mapping(uint256 => uint256) storage _userPointEpoch,
    mapping(uint256 => IStakingPositions.UserPoint[1000000000])
      storage _userPointHistory,
    uint256 _tokenId,
    uint256 _t
  ) external view returns (uint256) {
    uint256 _epoch = getPastUserPointIndex(
      _userPointEpoch,
      _userPointHistory,
      _tokenId,
      _t
    );
    // epoch 0 is an empty point
    if (_epoch == 0) return 0;
    IStakingPositions.UserPoint memory lastPoint = _userPointHistory[
      _tokenId
    ][_epoch];

    lastPoint.bias -=
      lastPoint.slope *
      (_t - lastPoint.timestamp).toInt128();
    if (lastPoint.bias < 0) {
      lastPoint.bias = 0;
    }
    return lastPoint.bias.toUint256();
  }

  /// @notice Calculate total voting power at some point in the past
  /// @param _slopeChanges State of all slopeChanges
  /// @param _pointHistory State of all global point history
  /// @param _epoch The epoch to start search from
  /// @param _t Time to calculate the total voting power at
  /// @return Total voting power at that time
  function supplyAt(
    mapping(uint256 => int128) storage _slopeChanges,
    mapping(uint256 => IStakingPositions.GlobalPoint)
      storage _pointHistory,
    uint256 _epoch,
    uint256 _t
  ) external view returns (uint256) {
    uint256 epoch_ = getPastGlobalPointIndex(
      _epoch,
      _pointHistory,
      _t
    );
    // epoch 0 is an empty point
    if (epoch_ == 0) return 0;
    IStakingPositions.GlobalPoint memory _point = _pointHistory[
      epoch_
    ];
    int128 bias = _point.bias;
    int128 slope = _point.slope;
    uint256 timestamp = _point.timestamp;
    uint256 t_i = (timestamp / WEEK) * WEEK;
    for (uint256 i = 0; i < 255; ++i) {
      t_i += WEEK;
      int128 dSlope = 0;
      if (t_i > _t) {
        t_i = _t;
      } else {
        dSlope = _slopeChanges[t_i];
      }
      bias -= slope * (t_i - timestamp).toInt128();
      if (t_i == _t) {
        break;
      }
      slope += dSlope;
      timestamp = t_i;
    }

    if (bias < 0) {
      bias = 0;
    }
    return bias.toUint256();
  }
}

// ============================================================
// FILE: src/protocol-v2/libraries/SafeCastLibrary.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.18;

/// @title SafeCast Library
/// @author velodrome.finance
/// @notice Safely convert unsigned and signed integers without overflow / underflow
library SafeCastLibrary {
  error SafeCastOverflow();
  error SafeCastUnderflow();

  /// @dev Safely convert uint256 to int128
  function toInt128(uint256 value) internal pure returns (int128) {
    if (value > uint128(type(int128).max)) revert SafeCastOverflow();
    return int128(uint128(value));
  }

  /// @dev Safely convert int128 to uint256
  function toUint256(int128 value) internal pure returns (uint256) {
    if (value < 0) revert SafeCastUnderflow();
    return uint256(int256(value));
  }
}

// ============================================================
// FILE: src/protocol-v2/modules/AdministeredUpgradable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contracts
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
// Interfaces
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IGlobalOwner } from "src/protocol-v2/interfaces/IGlobalOwner.sol";
import { IGlobalPause } from "src/protocol-v2/interfaces/IGlobalPause.sol";
import { IGlobalAccessList } from "src/protocol-v2/interfaces/IGlobalAccessList.sol";

/**
 * @title AdministeredUpgradable
 * @notice Abstract base contract providing administration features for upgradeable contracts
 * @dev This contract integrates with global administration contracts (GlobalOwner, GlobalPause, GlobalRestrict)
 *      to provide centralized ownership, pause functionality, and blacklist management across the protocol.
 *      It implements UUPS upgradeability pattern and includes token recovery functionality.
 *
 *      Key features:
 *      - Global ownership management through IGlobalOwner
 *      - Global pause functionality through IGlobalPause
 *      - Global blacklist integration through IGlobalAccessList
 *      - UUPS upgradeable pattern with owner-restricted upgrades
 *      - ERC20 token recovery for admin purposes
 *
 * @author vBlackwhale (https://github.com/vblackwhale)
 */
abstract contract AdministeredUpgradable is
  Initializable,
  UUPSUpgradeable,
  PausableUpgradeable,
  OwnableUpgradeable
{
  // =========== ERRORS =========== //

  error UserIsRestricted();

  // =========== STORAGE =========== //

  IGlobalOwner public globalOwner;
  IGlobalPause public globalPause;
  IGlobalAccessList public globalRestrict;

  bool public isPausedLocal;

  // =========== CONSTRUCTOR & INITIALIZER =========== //

  constructor() {
    _disableInitializers();
  }

  /**
   * @notice Initializer functions of the contract. They replace the constructor()
   * function in the context of upgradeable contracts.
   * @dev See: https://docs.openzeppelin.com/contracts/4.x/upgradeable
   * @param globalOwner_ The address of the GlobalOwner contract.
   * @param globalPause_ The address of the GlobalPause contract.
   * @param globalRestrict_ The address of the GlobalRestrict contract.
   */
  function __AdministeredUpgradable_init(
    address globalOwner_,
    address globalPause_,
    address globalRestrict_
  ) internal onlyInitializing {
    __UUPSUpgradeable_init();
    __Pausable_init_unchained();
    __Ownable_init_unchained();

    globalOwner = IGlobalOwner(globalOwner_);
    globalPause = IGlobalPause(globalPause_);
    globalRestrict = IGlobalAccessList(globalRestrict_);

    _transferOwnership(globalOwner.owner());
  }

  // =========== UPGRADABLE =========== //

  /**
   * @notice Override of UUPSUpgradeable._authorizeUpgrade() function restricted to
   * global owner. It is called by the proxy contract during an upgrade.
   * @param newImplementation The address of the new implementation contract.
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner {}

  // =========== OWNABLE =========== //

  /**
   * @notice Returns the owner of the contract
   * @return The owner's address
   */
  function owner() public view virtual override returns (address) {
    return globalOwner.owner();
  }

  // =========== PAUSABLE =========== //

  /**
   * @notice Override of PausableUpgradeable.pause() that retrieves the pause state
   * from the GlobalPause contract instead.
   * @return Whether the contract is paused or not.
   */
  function paused()
    public
    view
    override(PausableUpgradeable)
    returns (bool)
  {
    return isPausedLocal || globalPause.paused();
  }

  /**
   * @notice Pauses the contract.
   */
  function pauseLocal() external onlyOwner {
    isPausedLocal = true;
    emit Paused(msg.sender);
  }

  /**
   * @notice Unpauses the contract.
   */
  function unpauseLocal() external onlyOwner {
    isPausedLocal = false;
    emit Unpaused(msg.sender);
  }

  // =========== RESTRICTIONS =========== //

  /**
   * @notice Reverts if the given account is restricted by the GlobalRestrict contract.
   * @param account Address to verify.
   */
  modifier notRestricted(address account) {
    if (globalRestrict.isRestricted(account))
      revert UserIsRestricted();
    _;
  }

  // =========== RECOVERABLE =========== //

  /**
   * @notice Recovers a specified amount of a given token address.
   * @param tokenAddress The address of the token to recover.
   * @param amount The amount of the token to recover.
   */
  function recoverERC20(
    address tokenAddress,
    uint256 amount
  ) public onlyOwner {
    if (tokenAddress == address(0)) {
      payable(msg.sender).transfer(amount);
    } else {
      // slither-disable-next-line unchecked-transfer
      IERC20(tokenAddress).transfer(msg.sender, amount);
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
// FILE: src/protocol-v2/staking/StakingPositions.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contracts
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { AdministeredUpgradable } from "src/protocol-v2/modules/AdministeredUpgradable.sol";
// Libraries
import { BalanceLogicLibrary } from "src/protocol-v2/libraries/BalanceLogicLibrary.sol";
import { SafeCastLibrary } from "src/protocol-v2/libraries/SafeCastLibrary.sol";
// Extensions
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
// Interfaces
import { IStakingPositions } from "src/protocol-v2/interfaces/IStakingPositions.sol";
import { IStakingRewardsDistributor } from "src/protocol-v2/interfaces/IStakingRewardsDistributor.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC721Receiver } from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import { IERC721Metadata } from "@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol";

/**
 * @title Ledgity Staking Positions
 * @notice Staking position NFT implementation that escrows ERC-20 tokens in the form of an ERC-721 NFT
 * @notice Voting power has a weight depending on time, so that users are committed to the future of the protocol
 * @author Modified from Solidly (https://github.com/solidlyexchange/solidly/blob/master/contracts/ve.sol)
 * @author Modified from Curve (https://github.com/curvefi/curve-dao-contracts/blob/master/contracts/VotingEscrow.vy)
 * @author Modified from Velodrome (https://github.com/velodrome-finance/contracts/blob/main/contracts/VotingEscrow.sol)
 * @author Ledgity, vBlackwhale (https://github.com/vblackwhale)
 *
 * @dev Vote weight decays linearly over time. Lock time cannot be more than `maxTime` (configurable, default 4 years).
 */
contract StakingPositions is
  IStakingPositions,
  ReentrancyGuard,
  AdministeredUpgradable
{
  using SafeERC20 for IERC20;
  using SafeCastLibrary for uint256;
  using SafeCastLibrary for int128;

  /*//////////////////////////////////////////////////////////////
                                CONSTANTS
    //////////////////////////////////////////////////////////////*/

  uint256 internal constant WEEK = 1 weeks;
  string public constant name = "Ledgity Staking Positions";
  string public constant symbol = "lsNFT";
  uint8 public constant decimals = 18;

  /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

  /// @inheritdoc IStakingPositions
  address public token;

  address public rewardsDistributor;
  /// @inheritdoc IStakingPositions
  address public artProxy;
  /// @inheritdoc IStakingPositions
  uint256 public tokenId;
  /// @inheritdoc IStakingPositions
  uint256 public epoch;
  /// @inheritdoc IStakingPositions
  uint256 public supply;
  /// @notice Maximum lock time in seconds (configurable by owner)
  uint256 public maxTime = 4 * 365 * 86400;
  /// @notice Maximum lock time as int128 for calculations
  int128 public iMaxTime = 4 * 365 * 86400;
  /// @notice Breaker to allow owner to unlock all positions
  bool public breaker;

  mapping(uint256 epoch => GlobalPoint globalPoint)
    internal pointHistory;
  mapping(bytes4 interfaceId => bool supported)
    internal supportedInterfaces;
  mapping(uint256 tokenId => address owner) internal idToOwner;
  mapping(address owner => uint256 count)
    internal ownerToNFTokenCount;
  mapping(uint256 tokenId => address approved) internal idToApprovals;
  mapping(address owner => mapping(address operator => bool approved))
    internal ownerToOperators;
  mapping(uint256 tokenId => uint256 blockNumber)
    internal ownershipChange;
  /// @inheritdoc IStakingPositions
  mapping(address owner => mapping(uint256 index => uint256 tokenId))
    public ownerToNFTokenIdList;
  mapping(uint256 tokenId => uint256 index)
    internal tokenToOwnerIndex;
  mapping(uint256 tokenId => LockedBalance balance) internal locked;
  mapping(uint256 tokenId => UserPoint[1000000000] points)
    internal userPointHistory;
  mapping(uint256 tokenId => uint256 epoch) public userPointEpoch;
  /// @inheritdoc IStakingPositions
  mapping(uint256 timestamp => int128 change) public slopeChanges;

  /*//////////////////////////////////////////////////////////////
                               INITIALIZER
    //////////////////////////////////////////////////////////////*/

  constructor() {
    _disableInitializers();
  }

  /// @param token_ `LDY` token address
  function initialize(
    address token_,
    address rewardsDistributor_,
    uint256 maxTime_,
    address globalOwner_,
    address globalPause_,
    address globalAccessList_
  ) public initializer {
    maxTime = maxTime_;
    iMaxTime = int128(uint128(maxTime_));
    token = token_;
    rewardsDistributor = rewardsDistributor_;

    pointHistory[0].timestamp = block.timestamp;

    /// @dev ERC165 interface ID of ERC165
    supportedInterfaces[0x01ffc9a7] = true;
    /// @dev ERC165 interface ID of ERC721
    supportedInterfaces[0x80ac58cd] = true;
    /// @dev ERC165 interface ID of ERC721Metadata
    supportedInterfaces[0x5b5e139f] = true;
    /// @dev ERC165 interface ID of ERC4906
    supportedInterfaces[0x49064906] = true;
    /// @dev ERC165 interface ID of ERC6372
    supportedInterfaces[0xda287a1d] = true;

    // mint-ish
    emit Transfer(address(0), address(this), tokenId);
    // burn-ish
    emit Transfer(address(this), address(0), tokenId);

    __AdministeredUpgradable_init(
      globalOwner_,
      globalPause_,
      globalAccessList_
    );
  }

  /*//////////////////////////////////////////////////////////////
                              READ FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @inheritdoc IStakingPositions
  function tokenURI(
    uint256 _tokenId
  ) external view returns (string memory) {
    if (idToOwner[_tokenId] == address(0)) revert NonExistentToken();
    return IERC721Metadata(artProxy).tokenURI(_tokenId);
  }

  /// @inheritdoc IStakingPositions
  function ownerOf(uint256 _tokenId) public view returns (address) {
    return idToOwner[_tokenId];
  }

  /// @inheritdoc IStakingPositions
  function balanceOf(address _owner) external view returns (uint256) {
    return getUserTotalVotingPowerAt(_owner, block.timestamp);
  }

  /// @inheritdoc IStakingPositions
  function balanceOfAccountNFT(
    address _owner
  ) external view returns (uint256) {
    return ownerToNFTokenCount[_owner];
  }

  /// @inheritdoc IStakingPositions
  function getApproved(
    uint256 _tokenId
  ) external view returns (address) {
    return idToApprovals[_tokenId];
  }

  /// @inheritdoc IStakingPositions
  function isApprovedForAll(
    address _owner,
    address _operator
  ) external view returns (bool) {
    return (ownerToOperators[_owner])[_operator];
  }

  /// @inheritdoc IStakingPositions
  function isApprovedOrOwner(
    address _spender,
    uint256 _tokenId
  ) public view returns (bool) {
    address owner = idToOwner[_tokenId];
    bool spenderIsOwner = owner == _spender;
    bool spenderIsApproved = _spender == idToApprovals[_tokenId];
    bool spenderIsApprovedForAll = (ownerToOperators[owner])[
      _spender
    ];
    return
      spenderIsOwner || spenderIsApproved || spenderIsApprovedForAll;
  }

  /// @inheritdoc IStakingPositions
  function supportsInterface(
    bytes4 _interfaceID
  ) external view returns (bool) {
    return supportedInterfaces[_interfaceID];
  }

  /// @inheritdoc IStakingPositions
  function getLockedBalance(
    uint256 _tokenId
  ) external view returns (LockedBalance memory) {
    return locked[_tokenId];
  }

  /// @inheritdoc IStakingPositions
  function getUserPointHistory(
    uint256 _tokenId,
    uint256 _epoch
  ) external view returns (UserPoint memory) {
    return userPointHistory[_tokenId][_epoch];
  }

  /// @inheritdoc IStakingPositions
  function getPointHistory(
    uint256 _epoch
  ) external view returns (GlobalPoint memory) {
    return pointHistory[_epoch];
  }

  /// @inheritdoc IStakingPositions
  function balanceOfNFT(
    uint256 _tokenId
  ) public view returns (uint256) {
    if (ownershipChange[_tokenId] == block.number) return 0;
    return balanceOfNFTAt(_tokenId, block.timestamp);
  }

  /// @inheritdoc IStakingPositions
  function balanceOfNFTAt(
    uint256 _tokenId,
    uint256 _timestamp
  ) public view returns (uint256) {
    return
      BalanceLogicLibrary.balanceOfNFTAt(
        userPointEpoch,
        userPointHistory,
        _tokenId,
        _timestamp
      );
  }

  /// @inheritdoc IStakingPositions
  function totalSupply() external view returns (uint256) {
    return totalSupplyAt(block.timestamp);
  }

  /// @inheritdoc IStakingPositions
  function totalSupplyAt(
    uint256 _timestamp
  ) public view returns (uint256) {
    return
      BalanceLogicLibrary.supplyAt(
        slopeChanges,
        pointHistory,
        epoch,
        _timestamp
      );
  }

  /// @inheritdoc IStakingPositions
  function getUserNFTs(
    address _user
  ) external view returns (IStakingPositions.NFTData[] memory) {
    uint256 userBalance = ownerToNFTokenCount[_user];
    IStakingPositions.NFTData[]
      memory nftData = new IStakingPositions.NFTData[](userBalance);

    for (uint256 i; i < userBalance; i++) {
      uint256 currentTokenId = ownerToNFTokenIdList[_user][i];
      nftData[i] = IStakingPositions.NFTData({
        tokenId: currentTokenId,
        locked: locked[currentTokenId],
        votingPower: balanceOfNFT(currentTokenId),
        votingPowerAt: block.timestamp,
        owner: _user
      });
    }

    return nftData;
  }

  /// @inheritdoc IStakingPositions
  function getUserTotalVotingPower(
    address _user
  ) external view returns (uint256) {
    return getUserTotalVotingPowerAt(_user, block.timestamp);
  }

  /// @inheritdoc IStakingPositions
  function getUserTotalVotingPowerAt(
    address _user,
    uint256 _timestamp
  ) public view returns (uint256) {
    uint256 userBalance = ownerToNFTokenCount[_user];
    uint256 totalVotingPower = 0;

    for (uint256 i; i < userBalance; i++) {
      uint256 currentTokenId = ownerToNFTokenIdList[_user][i];
      totalVotingPower += balanceOfNFTAt(currentTokenId, _timestamp);
    }

    return totalVotingPower;
  }

  /*//////////////////////////////////////////////////////////////
                              READ INTERNAL
    //////////////////////////////////////////////////////////////*/

  function _isContract(address account) internal view returns (bool) {
    // This method relies on extcodesize, which returns 0 for contracts in
    // construction, since the code is only stored at the end of the
    // constructor execution.
    uint256 size;
    assembly {
      size := extcodesize(account)
    }
    return size > 0;
  }

  /*//////////////////////////////////////////////////////////////
                              NFT FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @inheritdoc IStakingPositions
  function approve(
    address _approved,
    uint256 _tokenId
  ) external whenNotPaused {
    address owner = idToOwner[_tokenId];
    // Throws if `_tokenId` is not a valid NFT
    if (owner == address(0)) revert ZeroAddress();
    // Throws if `_approved` is the current owner
    if (owner == _approved) revert SameAddress();
    // Check requirements
    bool senderIsOwner = (idToOwner[_tokenId] == msg.sender);
    bool senderIsApprovedForAll = (ownerToOperators[owner])[
      msg.sender
    ];
    if (!senderIsOwner && !senderIsApprovedForAll)
      revert NotApprovedOrOwner();
    // Set the approval
    idToApprovals[_tokenId] = _approved;
    emit Approval(owner, _approved, _tokenId);
  }

  /// @inheritdoc IStakingPositions
  function setApprovalForAll(
    address _operator,
    bool _approved
  ) external whenNotPaused {
    // Throws if `_operator` is the `msg.sender`
    if (_operator == msg.sender) revert SameAddress();
    ownerToOperators[msg.sender][_operator] = _approved;
    emit ApprovalForAll(msg.sender, _operator, _approved);
  }

  /* TRANSFER FUNCTIONS */

  /// @inheritdoc IStakingPositions
  function transferFrom(
    address _from,
    address _to,
    uint256 _tokenId
  ) external whenNotPaused notRestricted(_from) notRestricted(_to) {
    _transferFrom(_from, _to, _tokenId, msg.sender);
  }

  /// @inheritdoc IStakingPositions
  function safeTransferFrom(
    address _from,
    address _to,
    uint256 _tokenId
  ) external whenNotPaused notRestricted(_from) notRestricted(_to) {
    safeTransferFrom(_from, _to, _tokenId, "");
  }

  /// @inheritdoc IStakingPositions
  function safeTransferFrom(
    address _from,
    address _to,
    uint256 _tokenId,
    bytes memory _data
  ) public whenNotPaused notRestricted(_from) notRestricted(_to) {
    _transferFrom(_from, _to, _tokenId, msg.sender);

    if (_isContract(_to)) {
      // Throws if transfer destination is a contract which does not implement 'onERC721Received'
      try
        IERC721Receiver(_to).onERC721Received(
          msg.sender,
          _from,
          _tokenId,
          _data
        )
      returns (bytes4 response) {
        if (
          response != IERC721Receiver(_to).onERC721Received.selector
        ) {
          revert ERC721ReceiverRejectedTokens();
        }
      } catch (bytes memory reason) {
        if (reason.length == 0) {
          revert ERC721TransferToNonERC721ReceiverImplementer();
        } else {
          assembly {
            revert(add(32, reason), mload(reason))
          }
        }
      }
    }
  }

  /*//////////////////////////////////////////////////////////////
                              POSITION FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @inheritdoc IStakingPositions
  function checkpoint() external nonReentrant whenNotPaused {
    _checkpoint(0, LockedBalance(0, 0), LockedBalance(0, 0));
  }

  /// @inheritdoc IStakingPositions
  function depositFor(
    uint256 _tokenId,
    uint256 _value
  ) external nonReentrant whenNotPaused notRestricted(msg.sender) {
    _increaseAmountFor(
      _tokenId,
      _value,
      DepositType.DEPOSIT_FOR_TYPE
    );
  }

  /// @inheritdoc IStakingPositions
  function createLock(
    uint256 _value,
    uint256 _lockDuration
  )
    external
    nonReentrant
    whenNotPaused
    notRestricted(msg.sender)
    returns (uint256)
  {
    return _createLock(_value, _lockDuration, msg.sender);
  }

  /// @inheritdoc IStakingPositions
  function increaseAmount(
    uint256 _tokenId,
    uint256 _value
  ) external nonReentrant whenNotPaused notRestricted(msg.sender) {
    if (!isApprovedOrOwner(msg.sender, _tokenId))
      revert NotApprovedOrOwner();
    _increaseAmountFor(
      _tokenId,
      _value,
      DepositType.INCREASE_LOCK_AMOUNT
    );
  }

  /// @inheritdoc IStakingPositions
  function increaseUnlockTime(
    uint256 _tokenId,
    uint256 _lockDuration
  ) external nonReentrant whenNotPaused notRestricted(msg.sender) {
    if (!isApprovedOrOwner(msg.sender, _tokenId))
      revert NotApprovedOrOwner();

    LockedBalance memory oldLocked = locked[_tokenId];

    uint256 unlockTime = ((block.timestamp + _lockDuration) / WEEK) *
      WEEK; // Locktime is rounded down to weeks

    if (oldLocked.end <= block.timestamp) revert LockExpired();
    if (oldLocked.amount <= 0) revert NoLockFound();
    if (unlockTime <= oldLocked.end) revert LockDurationNotInFuture();
    if (block.timestamp + maxTime < unlockTime)
      revert LockDurationTooLong();

    _depositFor(
      _tokenId,
      0,
      unlockTime,
      oldLocked,
      DepositType.INCREASE_UNLOCK_TIME
    );

    emit MetadataUpdate(_tokenId);
  }

  /// @inheritdoc IStakingPositions
  function withdraw(
    uint256 _tokenId
  ) external nonReentrant whenNotPaused notRestricted(msg.sender) {
    if (!isApprovedOrOwner(msg.sender, _tokenId))
      revert NotApprovedOrOwner();

    LockedBalance memory oldLocked = locked[_tokenId];

    if (block.timestamp < oldLocked.end && !breaker)
      revert LockNotExpired();
    uint256 value = oldLocked.amount.toUint256();

    // Claim potential rewards before the token is burned
    IStakingRewardsDistributor(rewardsDistributor).claimOnWithdrawal(
      _tokenId,
      msg.sender
    );

    // Burn the NFT
    _burn(_tokenId);
    locked[_tokenId] = LockedBalance(0, 0);
    uint256 supplyBefore = supply;
    supply = supplyBefore - value;

    // oldLocked can have either expired <= timestamp or zero end
    // oldLocked has only 0 end
    // Both can have >= 0 amount
    _checkpoint(_tokenId, oldLocked, LockedBalance(0, 0));

    IERC20(token).safeTransfer(msg.sender, value);

    emit Withdraw(msg.sender, _tokenId, value, block.timestamp);
    emit Supply(supplyBefore, supplyBefore - value);
  }

  /*//////////////////////////////////////////////////////////////
                              NFT INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  function _transferFrom(
    address _from,
    address _to,
    uint256 _tokenId,
    address _sender
  ) internal {
    // Check requirements
    if (!isApprovedOrOwner(_sender, _tokenId))
      revert NotApprovedOrOwner();
    // Clear approval. Throws if `_from` is not the current owner
    if (idToOwner[_tokenId] != _from) revert NotOwner();
    delete idToApprovals[_tokenId];
    // Remove NFT. Throws if `_tokenId` is not a valid NFT
    _removeTokenFrom(_from, _tokenId);
    // Add NFT
    _addTokenTo(_to, _tokenId);
    // Set the block of ownership transfer (for Flash NFT protection)
    ownershipChange[_tokenId] = block.number;
    // Log the transfer
    emit Transfer(_from, _to, _tokenId);
  }

  /// @dev Add a NFT to an index mapping to a given address
  /// @param _to address of the receiver
  /// @param _tokenId uint ID Of the token to be added
  function _addTokenToOwnerList(
    address _to,
    uint256 _tokenId
  ) internal {
    uint256 currentCount = ownerToNFTokenCount[_to];

    ownerToNFTokenIdList[_to][currentCount] = _tokenId;
    tokenToOwnerIndex[_tokenId] = currentCount;
  }

  /// @dev Add a NFT to a given address
  ///      Throws if `_tokenId` is owned by someone.
  function _addTokenTo(address _to, uint256 _tokenId) internal {
    // Throws if `_tokenId` is owned by someone
    assert(idToOwner[_tokenId] == address(0));
    // Change the owner
    idToOwner[_tokenId] = _to;
    // Update owner token index tracking
    _addTokenToOwnerList(_to, _tokenId);
    // Change count tracking
    ownerToNFTokenCount[_to] += 1;
  }

  /// @dev Function to mint tokens
  ///      Throws if `_to` is zero address.
  ///      Throws if `_tokenId` is owned by someone.
  /// @param _to The address that will receive the minted tokens.
  /// @param _tokenId The token id to mint.
  /// @return A boolean that indicates if the operation was successful.
  function _mint(
    address _to,
    uint256 _tokenId
  ) internal returns (bool) {
    // Throws if `_to` is zero address
    assert(_to != address(0));
    // Add NFT. Throws if `_tokenId` is owned by someone
    _addTokenTo(_to, _tokenId);
    emit Transfer(address(0), _to, _tokenId);
    return true;
  }

  /// @dev Remove a NFT from an index mapping to a given address
  /// @param _from address of the sender
  /// @param _tokenId uint ID Of the token to be removed
  function _removeTokenFromOwnerList(
    address _from,
    uint256 _tokenId
  ) internal {
    // Delete
    uint256 currentCount = ownerToNFTokenCount[_from] - 1;
    uint256 currentIndex = tokenToOwnerIndex[_tokenId];

    if (currentCount == currentIndex) {
      // update ownerToNFTokenIdList
      ownerToNFTokenIdList[_from][currentCount] = 0;
      // update tokenToOwnerIndex
      tokenToOwnerIndex[_tokenId] = 0;
    } else {
      uint256 lastTokenId = ownerToNFTokenIdList[_from][currentCount];

      // Add
      // update ownerToNFTokenIdList
      ownerToNFTokenIdList[_from][currentIndex] = lastTokenId;
      // update tokenToOwnerIndex
      tokenToOwnerIndex[lastTokenId] = currentIndex;

      // Delete
      // update ownerToNFTokenIdList
      ownerToNFTokenIdList[_from][currentCount] = 0;
      // update tokenToOwnerIndex
      tokenToOwnerIndex[_tokenId] = 0;
    }
  }

  /// @dev Remove a NFT from a given address
  ///      Throws if `_from` is not the current owner.
  function _removeTokenFrom(
    address _from,
    uint256 _tokenId
  ) internal {
    // Throws if `_from` is not the current owner
    assert(idToOwner[_tokenId] == _from);
    // Change the owner
    idToOwner[_tokenId] = address(0);
    // Update owner token index tracking
    _removeTokenFromOwnerList(_from, _tokenId);
    // Change count tracking
    ownerToNFTokenCount[_from] -= 1;
  }

  /// @dev Must be called prior to updating `LockedBalance`
  function _burn(uint256 _tokenId) internal {
    if (!isApprovedOrOwner(msg.sender, _tokenId))
      revert NotApprovedOrOwner();
    address owner = idToOwner[_tokenId];

    // Clear approval
    delete idToApprovals[_tokenId];
    // Remove token
    _removeTokenFrom(owner, _tokenId);
    emit Transfer(owner, address(0), _tokenId);
  }

  /*//////////////////////////////////////////////////////////////
                             POSITION INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @notice Record global and per-user data to checkpoints. Used by VotingEscrow system.
  /// @param _tokenId NFT token ID. No user checkpoint if 0
  /// @param _oldLocked Pevious locked amount / end lock time for the user
  /// @param _newLocked New locked amount / end lock time for the user
  function _checkpoint(
    uint256 _tokenId,
    LockedBalance memory _oldLocked,
    LockedBalance memory _newLocked
  ) internal {
    UserPoint memory uOld;
    UserPoint memory uNew;
    int128 oldDslope = 0;
    int128 newDslope = 0;
    uint256 _epoch = epoch;

    if (_tokenId != 0) {
      // Calculate slopes and biases
      // Kept at zero when they have to
      if (_oldLocked.end > block.timestamp && _oldLocked.amount > 0) {
        uOld.slope = _oldLocked.amount / iMaxTime;
        uOld.bias =
          uOld.slope *
          (_oldLocked.end - block.timestamp).toInt128();
      }
      if (_newLocked.end > block.timestamp && _newLocked.amount > 0) {
        uNew.slope = _newLocked.amount / iMaxTime;
        uNew.bias =
          uNew.slope *
          (_newLocked.end - block.timestamp).toInt128();
      }

      // Read values of scheduled changes in the slope
      // _oldLocked.end can be in the past and in the future
      // _newLocked.end can ONLY by in the FUTURE unless everything expired: than zeros
      oldDslope = slopeChanges[_oldLocked.end];
      if (_newLocked.end != 0) {
        if (_newLocked.end == _oldLocked.end) {
          newDslope = oldDslope;
        } else {
          newDslope = slopeChanges[_newLocked.end];
        }
      }
    }

    GlobalPoint memory lastPoint = GlobalPoint({
      bias: 0,
      slope: 0,
      timestamp: block.timestamp
    });
    if (_epoch > 0) {
      lastPoint = pointHistory[_epoch];
    }
    uint256 lastCheckpoint = lastPoint.timestamp;
    // If last point is already recorded in this block, slope=0
    // But that's ok b/c we know the block in such case

    // Go over weeks to fill history and calculate what the current point is
    {
      uint256 t_i = (lastCheckpoint / WEEK) * WEEK;
      for (uint256 i; i < 255; ++i) {
        // Hopefully it won't happen that this won't get used in 5 years!
        // If it does, users will be able to withdraw but vote weight will be broken
        t_i += WEEK; // Initial value of t_i is always larger than the timestamp of the last point
        int128 d_slope = 0;
        if (t_i > block.timestamp) {
          t_i = block.timestamp;
        } else {
          d_slope = slopeChanges[t_i];
        }
        lastPoint.bias -=
          lastPoint.slope *
          (t_i - lastCheckpoint).toInt128();
        lastPoint.slope += d_slope;
        if (lastPoint.bias < 0) {
          // This can happen
          lastPoint.bias = 0;
        }
        if (lastPoint.slope < 0) {
          // This cannot happen - just in case
          lastPoint.slope = 0;
        }
        lastCheckpoint = t_i;
        lastPoint.timestamp = t_i;
        _epoch += 1;
        if (t_i == block.timestamp) {
          break;
        } else {
          pointHistory[_epoch] = lastPoint;
        }
      }
    }

    if (_tokenId != 0) {
      // If last point was in this block, the slope change has been applied already
      // But in such case we have 0 slope(s)
      lastPoint.slope += (uNew.slope - uOld.slope);
      lastPoint.bias += (uNew.bias - uOld.bias);
      if (lastPoint.slope < 0) {
        lastPoint.slope = 0;
      }
      if (lastPoint.bias < 0) {
        lastPoint.bias = 0;
      }
    }

    // If timestamp of last global point is the same, overwrite the last global point
    // Else record the new global point into history
    // Exclude epoch 0 (note: _epoch is always >= 1, see above)
    // Two possible outcomes:
    // Missing global checkpoints in prior weeks. In this case, _epoch = epoch + x, where x > 1
    // No missing global checkpoints, but timestamp != block.timestamp. Create new checkpoint.
    // No missing global checkpoints, but timestamp == block.timestamp. Overwrite last checkpoint.
    if (
      _epoch != 1 &&
      pointHistory[_epoch - 1].timestamp == block.timestamp
    ) {
      // _epoch = epoch + 1, so we do not increment epoch
      pointHistory[_epoch - 1] = lastPoint;
    } else {
      // more than one global point may have been written, so we update epoch
      epoch = _epoch;
      pointHistory[_epoch] = lastPoint;
    }

    if (_tokenId != 0) {
      // Schedule the slope changes (slope is going down)
      // We subtract new_user_slope from [_newLocked.end]
      // and add old_user_slope to [_oldLocked.end]
      if (_oldLocked.end > block.timestamp) {
        // oldDslope was <something> - uOld.slope, so we cancel that
        oldDslope += uOld.slope;
        if (_newLocked.end == _oldLocked.end) {
          oldDslope -= uNew.slope; // It was a new deposit, not extension
        }
        slopeChanges[_oldLocked.end] = oldDslope;
      }

      if (_newLocked.end > block.timestamp) {
        // update slope if new lock is greater than old lock
        if ((_newLocked.end > _oldLocked.end)) {
          newDslope -= uNew.slope; // old slope disappeared at this point
          slopeChanges[_newLocked.end] = newDslope;
        }
        // else: we recorded it already in oldDslope
      }
      // If timestamp of last user point is the same, overwrite the last user point
      // Else record the new user point into history
      // Exclude epoch 0
      uNew.timestamp = block.timestamp;
      uint256 userEpoch = userPointEpoch[_tokenId];
      if (
        userEpoch != 0 &&
        userPointHistory[_tokenId][userEpoch].timestamp ==
        block.timestamp
      ) {
        userPointHistory[_tokenId][userEpoch] = uNew;
      } else {
        userPointEpoch[_tokenId] = ++userEpoch;
        userPointHistory[_tokenId][userEpoch] = uNew;
      }
    }
  }

  /// @notice Deposit and lock tokens for a user
  /// @param _tokenId NFT that holds lock
  /// @param _value Amount to deposit
  /// @param _unlockTime New time when to unlock the tokens, or 0 if unchanged
  /// @param _oldLocked Previous locked amount / timestamp
  /// @param _depositType The type of deposit
  function _depositFor(
    uint256 _tokenId,
    uint256 _value,
    uint256 _unlockTime,
    LockedBalance memory _oldLocked,
    DepositType _depositType
  ) internal {
    uint256 supplyBefore = supply;
    supply = supplyBefore + _value;

    // Set newLocked to _oldLocked without mangling memory
    LockedBalance memory newLocked;
    (newLocked.amount, newLocked.end) = (
      _oldLocked.amount,
      _oldLocked.end
    );

    // Adding to existing lock, or if a lock is expired - creating a new one
    newLocked.amount += _value.toInt128();
    if (_unlockTime != 0) {
      newLocked.end = _unlockTime;
    }
    locked[_tokenId] = newLocked;

    // Possibilities:
    // Both _oldLocked.end could be current or expired (>/< block.timestamp)
    // value == 0 (extend lock) or value > 0 (add to lock or extend lock)
    // newLocked.end > block.timestamp (always)
    _checkpoint(_tokenId, _oldLocked, newLocked);

    if (_value != 0) {
      IERC20(token).safeTransferFrom(
        msg.sender,
        address(this),
        _value
      );
    }

    emit Deposit(
      msg.sender,
      _tokenId,
      _depositType,
      _value,
      newLocked.end,
      block.timestamp
    );
    emit Supply(supplyBefore, supplyBefore + _value);
  }

  /// @dev Deposit `_value` tokens for `_to` and lock for `_lockDuration`
  /// @param _value Amount to deposit
  /// @param _lockDuration Number of seconds to lock tokens for (rounded down to nearest week)
  /// @param _to Address to deposit
  function _createLock(
    uint256 _value,
    uint256 _lockDuration,
    address _to
  ) internal returns (uint256) {
    uint256 unlockTime = ((block.timestamp + _lockDuration) / WEEK) *
      WEEK; // Locktime is rounded down to weeks

    if (_value == 0) revert ZeroAmount();
    if (unlockTime <= block.timestamp)
      revert LockDurationNotInFuture();
    if (block.timestamp + maxTime < unlockTime)
      revert LockDurationTooLong();

    uint256 _tokenId = ++tokenId;
    _mint(_to, _tokenId);

    _depositFor(
      _tokenId,
      _value,
      unlockTime,
      locked[_tokenId],
      DepositType.CREATE_LOCK_TYPE
    );

    // Notify rewards distributor of new lock creation
    IStakingRewardsDistributor(rewardsDistributor).onLockCreated(
      _tokenId
    );

    return _tokenId;
  }

  function _increaseAmountFor(
    uint256 _tokenId,
    uint256 _value,
    DepositType _depositType
  ) internal {
    LockedBalance memory oldLocked = locked[_tokenId];

    if (_value == 0) revert ZeroAmount();
    if (oldLocked.amount <= 0) revert NoLockFound();
    if (oldLocked.end <= block.timestamp) revert LockExpired();

    _depositFor(_tokenId, _value, 0, oldLocked, _depositType);

    emit MetadataUpdate(_tokenId);
  }

  /*//////////////////////////////////////////////////////////////
                              OWNER/ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  /// @inheritdoc IStakingPositions
  function setArtProxy(address _proxy) external onlyOwner {
    artProxy = _proxy;
    emit BatchMetadataUpdate(0, type(uint256).max);
  }

  /// @inheritdoc IStakingPositions
  function setMaxTime(uint256 _maxTime) external onlyOwner {
    maxTime = _maxTime;
    iMaxTime = int128(uint128(_maxTime));
  }

  /// @inheritdoc IStakingPositions
  function unlockAll() external onlyOwner {
    breaker = true;
    emit BreakerActivated();
  }
}
