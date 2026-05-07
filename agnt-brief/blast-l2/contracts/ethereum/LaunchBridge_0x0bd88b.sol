// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/access/Ownable2StepUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable2Step.sol)

pragma solidity ^0.8.0;

import "./OwnableUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership} and {acceptOwnership}.
 *
 * This module is used through inheritance. It will make available all functions
 * from parent (Ownable).
 */
abstract contract Ownable2StepUpgradeable is Initializable, OwnableUpgradeable {
    function __Ownable2Step_init() internal onlyInitializing {
        __Ownable_init_unchained();
    }

    function __Ownable2Step_init_unchained() internal onlyInitializing {
    }
    address private _pendingOwner;

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        return _pendingOwner;
    }

    /**
     * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual override onlyOwner {
        _pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner(), newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`) and deletes any pending owner.
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual override {
        delete _pendingOwner;
        super._transferOwnership(newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() public virtual {
        address sender = _msgSender();
        require(pendingOwner() == sender, "Ownable2Step: caller is not the new owner");
        _transferOwnership(sender);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/interfaces/draft-IERC1822Upgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/interfaces/IERC1967Upgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/beacon/IBeaconUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/ERC1967/ERC1967UpgradeUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/security/PausableUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/AddressUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/ContextUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/StorageSlotUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (interfaces/IERC20.sol)

pragma solidity ^0.8.0;

import "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/draft-IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/draft-IERC20Permit.sol)

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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

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
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

// ============================================================
// FILE: src/LaunchBridge_v3.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { Ownable2StepUpgradeable } from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { IERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/draft-IERC20Permit.sol";
import { Predeploys } from "src/libraries/Predeploys.sol";

interface ILido is IERC20, IERC20Permit {
    function submit(address user) external payable;
}

interface IDAI is IERC20 {
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
    function nonces(address user) external view returns (uint256);
}

interface IUSDC is IERC20, IERC20Permit {
    function transferWithAuthorization(address, address, uint256, uint256, uint256, bytes32, uint8, bytes32, bytes32) external;
}

interface IUSDT {
    function transfer(address to, uint256 amount) external;
    function transferFrom(address from, address to, uint256 amount) external;
    function approve(address spender, uint256 amount) external;
    function basisPointsRate() external view returns (uint256);
    function balanceOf(address) external view returns (uint256);
}

interface IDsrManager {
    function join(address dst, uint256 wad) external;
    function exit(address dst, uint256 wad) external;
    function exitAll(address dst) external;
    function daiBalance(address usr) external returns (uint256 wad);
    function pot() external view returns (address);
    function pieOf(address) external view returns (uint256);
}

interface IDssPsm {
    function sellGem(address usr, uint256 gemAmt) external;
    function buyGem(address usr, uint256 gemAmt) external;
    function dai() external view returns (address);
    function gemJoin() external view returns (address);
    function tin() external view returns (uint256);
    function tout() external view returns (uint256);
}

interface IPot {
    function chi() external view returns (uint256);
    function rho() external view returns (uint256);
    function dsr() external view returns (uint256);
}

interface IMainnetBridge {
    function bridgeETHTo(address _to, uint32 _minGasLimit, bytes calldata _extraData) external payable;
    function bridgeERC20To(address _l1Token, address _l2Token, address _to, uint256 _amount, uint32 _minGasLimit, bytes calldata _extraData) external payable;
}

interface ICurve3Pool {
    function exchange(int128 i, int128 j, uint256 dx, uint256 min_dy) external;
}

contract LaunchBridge is UUPSUpgradeable, Ownable2StepUpgradeable, PausableUpgradeable {
    mapping(address => uint256) public ethShares;
    uint256 public totalETHShares;

    mapping(address => uint256) public usdShares;
    uint256 public totalUSDShares;

    mapping(address => bool) public transitioned;
    bool public isTransitionEnabled;

    address public staker;

    IMainnetBridge internal _mainnetBridge;

    uint256 constant EMERGENCY_WITHDRAW_TIMESTAMP = 1717200000; // June 1, 2024

    ILido public constant LIDO = ILido(0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84);
    IUSDC public constant USDC = IUSDC(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    IUSDT public constant USDT = IUSDT(0xdAC17F958D2ee523a2206206994597C13D831ec7);
    IDsrManager public constant DSR_MANAGER = IDsrManager(0x373238337Bfe1146fb49989fc222523f83081dDb);
    IDssPsm public constant PSM = IDssPsm(0x89B78CfA322F6C5dE0aBcEecab66Aee45393cC5A);
    ICurve3Pool public constant CURVE_3POOL = ICurve3Pool(0xbEbc44782C7dB0a1A60Cb6fe97d0b483032FF1C7);
    IDAI public constant DAI = IDAI(0x6B175474E89094C44Da98b954EedeAC495271d0F);

    uint256 internal constant _BASIS_POINTS = 10_000;
    address internal constant _INITIAL_TOKEN_HOLDER = 0x000000000000000000000000000000000000dEaD;
    uint256 internal constant _USD_DECIMALS = 6;
    uint256 internal constant _WAD_DECIMALS = 18;
    int128 internal constant _CURVE_USDT_INDEX = 2;
    int128 internal constant _CURVE_DAI_INDEX = 0;
    uint256 internal constant _WAD = 10 ** 18;
    uint256 internal constant _RAY = 10 ** 27;
    uint256 internal constant _INITIAL_DEPOSIT_AMOUNT = 1000;

    event ETHDeposited(address indexed user, uint256 shares, uint256 amount);
    event USDDeposited(address indexed user, uint256 shares, uint256 amount, uint256 daiAmount);
    event Withdraw(address indexed user, uint256 ethAmount, uint256 stETHAmount, uint256 daiAmount);

    error CallerIsNotStaker();
    error TransitionNotEnabled();
    error TransitionIsEnabled();
    error UserAlreadyTransitioned();
    error InsufficientFunds();
    error BridgeIsNotSet();
    error ZeroDeposit();
    error ZeroSharesIssued();
    error SharesNotInitiated();
    error InvalidRecipientSignature();
    error InvalidRecipient();
    error OnlyEOA();

    modifier onlyEOA() {
        if (msg.sender != tx.origin) {
            revert OnlyEOA();
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(address _staker) external initializer {
        __UUPSUpgradeable_init();
        __Ownable2Step_init();
        __Pausable_init();

        _pause();

        staker = _staker;

        USDC.approve(PSM.gemJoin(), type(uint256).max);
        USDT.approve(address(CURVE_3POOL), type(uint256).max);
        DAI.approve(address(DSR_MANAGER), type(uint256).max);
    }

    function _authorizeUpgrade(address target) internal override onlyOwner {}

    /**
     * @notice Pause deposits to the bridge (admin only)
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpause deposits to the bridge (admin only)
     */
    function unpause() external onlyOwner {
        if (totalETHShares == 0 && totalUSDShares == 0) {
            revert SharesNotInitiated();
        }
        if (isTransitionEnabled) {
            revert TransitionIsEnabled();
        }
        _unpause();
    }

    /**
     * @notice Set approved staker (admin only)
     * @param _staker New staker address
     */
    function setStaker(address _staker) public onlyOwner {
        staker = _staker;
    }

    /**
     * @notice Open bridge to accept deposits; accept initial ETH and DAI deposit to initiate the shares accounting (admin only)
     * @param from Initial depositor
     * @param nonce Permit signature nonce
     * @param v Permit signature v parameter
     * @param r Permit signature r parameter
     * @param s Permit signature s parameter
     */
    function open(address from, uint256 nonce, uint8 v, bytes32 r, bytes32 s) external payable onlyOwner {
        DAI.permit(
            from,
            address(this),
            nonce,
            type(uint256).max,
            true,
            v,
            r,
            s
        );
        DAI.transferFrom(
            from,
            address(this),
            _INITIAL_DEPOSIT_AMOUNT
        );

        uint256 ethBalance = address(this).balance;
        uint256 daiBalance = DAI.balanceOf(address(this));

        assert(totalETHShares == 0 && totalUSDShares == 0);
        assert(ethBalance >= _INITIAL_DEPOSIT_AMOUNT && daiBalance >= _INITIAL_DEPOSIT_AMOUNT);
        _mintETHShares(_INITIAL_TOKEN_HOLDER, ethBalance);
        _mintUSDShares(_INITIAL_TOKEN_HOLDER, daiBalance);

        _unpause();
    }

    /**
     * @notice Wrapper to get mainnet bridge
     */
    function getMainnetBridge() public view returns (IMainnetBridge mainnetBridge) {
        mainnetBridge = _mainnetBridge;
        if (address(mainnetBridge) == address(0)) {
            revert BridgeIsNotSet();
        }
    }

    /**
     * @notice Wrapper to set mainnet bridge
     */
    function _setMainnetBridge(address mainnetBridge) internal {
        assert(mainnetBridge.code.length > 0);
        _mainnetBridge = IMainnetBridge(mainnetBridge);
    }

    /**
     * @notice Get the user balance in ETH and USD pool
     * @dev Does not update DSR yield
     * @param user User address
     * @return ethBalance User's ETH balance, usdBalance User's USD balance
     */
    function balanceOf(address user) external view returns (uint256 ethBalance, uint256 usdBalance) {
        ethBalance = _ethByShares(ethShares[user]);
        usdBalance = _usdBySharesNoUpdate(usdShares[user]);
    }

    /**
     * @notice Get the current ETH pool balance
     * @return Pooled ETH balance between buffered balance and deposited Lido balance
     */
    function totalETHBalance() public view returns (uint256) {
        return address(this).balance + LIDO.balanceOf(address(this));
    }

    /**
     * @notice Get the current USD pool balance
     * @dev Does not update DSR yield
     * @return Pooled USD balance between buffered balance and deposited DSR balance
     */
    function totalUSDBalanceNoUpdate() public view returns (uint256) {
        IPot pot = IPot(DSR_MANAGER.pot());
        uint256 chi = _rmul(_rpow(pot.dsr(), block.timestamp - pot.rho(), _RAY), pot.chi());
        return DAI.balanceOf(address(this)) + _rmul(DSR_MANAGER.pieOf(address(this)), chi);
    }

    /**
     * @notice Get the current USD pool balance
     * @return Pooled USD balance between buffered balance and deposited DSR balance
     */
    function totalUSDBalance() public returns (uint256) {
        return DAI.balanceOf(address(this)) + DSR_MANAGER.daiBalance(address(this));
    }

    /*/////////////////////////
             DEPOSITS
    /////////////////////////*/

    receive() external payable {
        depositETH();
    }

    /**
     * @notice Deposit ETH to the ETH pool
     */
    function depositETH() public payable {
        if (msg.value == 0) {
            revert ZeroDeposit();
        }
        _recordDepositETHAfterTransfer(msg.value);
    }

    /**
     * @notice Deposit StETH to the ETH pool
     * @param stETHAmount Amount to deposit in StETH (wad)
     */
    function depositStETH(uint256 stETHAmount) public {
        if (stETHAmount == 0) {
            revert ZeroDeposit();
        }
        _recordDepositETHBeforeTransfer(stETHAmount);
        LIDO.transferFrom(msg.sender, address(this), stETHAmount);
    }

    /**
     * @notice Deposit StETH to the ETH pool with a permit signature
     * @param stETHAmount Amount to deposit in StETH (wad)
     * @param allowance Allowance amount
     * @param deadline Permit signature deadline
     * @param v Permit signature v parameter
     * @param r Permit signature r parameter
     * @param s Permit signature s parameter
     */
    function depositStETHWithPermit(uint256 stETHAmount, uint256 allowance, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external {
        LIDO.permit(msg.sender, address(this), allowance, deadline, v, r, s);
        depositStETH(stETHAmount);
    }

    /**
     * @notice Deposit USDC to the USD pool
     * @dev USDC is converted to DAI using Maker DssPsm
     * @param usdcAmount Amount to deposit in USDC
     */
    function depositUSDC(uint256 usdcAmount) public {
        if (usdcAmount == 0) {
            revert ZeroDeposit();
        }
        uint256 wadAmount = _usdToWad(usdcAmount);
        uint256 conversionFee = PSM.tin() * wadAmount / _WAD;
        _recordDepositUSDBeforeTransfer(wadAmount, wadAmount - conversionFee);

        USDC.transferFrom(msg.sender, address(this), usdcAmount);

        /* Convert USDC to DAI through MakerDAO Peg Stability Mechanism. */
        PSM.sellGem(address(this), usdcAmount);
    }

    /**
     * @notice Deposit USDC to the USD pool with a permit signature
     * @dev USDC is converted to DAI using Maker DssPsm
     * @param usdcAmount Amount to deposit in USDC (usd)
     * @param allowance Allowance amount
     * @param deadline Permit signature deadline timestamp
     * @param v Permit signature v parameter
     * @param r Permit signature r parameter
     * @param s Permit signature s parameter
     */
    function depositUSDCWithPermit(uint256 usdcAmount, uint256 allowance, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external {
        USDC.permit(msg.sender, address(this), allowance, deadline, v, r, s);
        depositUSDC(usdcAmount);
    }

    /**
     * @notice Deposit DAI to the USD pool
     * @param daiAmount Amount to deposit in DAI (wad)
     */
    function depositDAI(uint256 daiAmount) public {
        if (daiAmount == 0) {
            revert ZeroDeposit();
        }
        _recordDepositUSDBeforeTransfer(daiAmount, daiAmount);

        DAI.transferFrom(msg.sender, address(this), daiAmount);
    }

    /**
     * @notice Deposit DAI to the USD pool with a permit signature
     * @param daiAmount Amount to deposit in DAI (wad)
     * @param nonce Permit signature nonce
     * @param expiry Permit signature expiry timestamp
     * @param v Permit signature v parameter
     * @param r Permit signature r parameter
     * @param s Permit signature s parameter
     */
    function depositDAIWithPermit(uint256 daiAmount, uint256 nonce, uint256 expiry, uint8 v, bytes32 r, bytes32 s) external {
        DAI.permit(msg.sender, address(this), nonce, expiry, true, v, r, s);
        depositDAI(daiAmount);
    }

    /**
     * @notice Deposit USDT to the USD pool
     * @dev USDT is converted to DAI using Curve 3Pool
     * @param usdtAmount Amount to deposit in USDT (usd)
     * @param minDAIAmount Minimum DAI amount to accept when exchanging through Curve (wad)
     */
    function depositUSDT(uint256 usdtAmount, uint256 minDAIAmount) external {
        if (usdtAmount == 0) {
            revert ZeroDeposit();
        }

        uint256 usdtBalance = USDT.balanceOf(address(this));
        USDT.transferFrom(msg.sender, address(this), usdtAmount);
        uint256 receivedUSDT = USDT.balanceOf(address(this)) - usdtBalance;

        /* Exchange USDT to DAI through the Curve 3Pool. */
        uint256 daiBalance = DAI.balanceOf(address(this));
        CURVE_3POOL.exchange(
            _CURVE_USDT_INDEX,
            _CURVE_DAI_INDEX,
            receivedUSDT,
            minDAIAmount
        );

        /* The amount of DAI received in the exchange is uncertain due to slippage, so we must record the deposit after the exchange. */
        uint256 receivedDAI = DAI.balanceOf(address(this)) - daiBalance;
        _recordDepositUSDAfterTransfer(_usdToWad(usdtAmount), receivedDAI);
    }

    /**
     * @notice Mint new ETH shares from new deposit before deposit has been made
     * @param amount Amount deposited in ETH
     */
    function _recordDepositETHBeforeTransfer(uint256 amount) internal {
        _recordDepositETH(amount, false);
    }

    /**
     * @notice Mint new ETH shares from new deposit after deposit has been made
     * @param amount Amount deposited in ETH
     */
    function _recordDepositETHAfterTransfer(uint256 amount) internal {
        _recordDepositETH(amount, true);
    }

    /**
     * @notice Mint new USD shares from new deposit before deposit has been made
     * @param depositedAmount Amount deposited in USD (wad)
     * @param daiAmount Amount of DAI obtained after conversion (wad)
     */
    function _recordDepositUSDBeforeTransfer(uint256 depositedAmount, uint256 daiAmount) internal {
        _recordDepositUSD(depositedAmount, daiAmount, false);
    }

    /**
     * @notice Mint new USD shares from new deposit after deposit has been made
     * @param depositedAmount Amount deposited in USD (wad)
     * @param daiAmount Amount of DAI obtained after conversion (wad)
     */
    function _recordDepositUSDAfterTransfer(uint256 depositedAmount, uint256 daiAmount) internal {
        _recordDepositUSD(depositedAmount, daiAmount, true);
    }

    /**
     * @notice Mint new ETH shares from new deposit
     * @param depositedAmount Amount deposited in ETH (wad)
     * @param alreadyDeposited The amount has already been deposited to the contract
     */
    function _recordDepositETH(uint256 depositedAmount, bool alreadyDeposited) internal whenNotPaused {
        uint256 _totalETHBalance = totalETHBalance();
        if (alreadyDeposited) {
            _totalETHBalance = _totalETHBalance - depositedAmount;
        }
        uint256 sharesToIssue = depositedAmount * totalETHShares / _totalETHBalance;
        if (sharesToIssue == 0) {
            revert ZeroSharesIssued();
        }

        _mintETHShares(msg.sender, sharesToIssue);

        emit ETHDeposited(msg.sender, sharesToIssue, depositedAmount);
    }

    /**
     * @notice Mint new USD shares from new deposit
     * @param depositedAmount Amount deposited in USD (wad)
     * @param daiAmount Amount of DAI obtained after conversion (wad)
     * @param alreadyDeposited The amount has already been deposited to the contract
     */
    function _recordDepositUSD(uint256 depositedAmount, uint256 daiAmount, bool alreadyDeposited) internal whenNotPaused {
        uint256 _totalUSDBalance = totalUSDBalance();
        if (alreadyDeposited) {
            _totalUSDBalance = _totalUSDBalance - daiAmount;
        }
        uint256 sharesToIssue = daiAmount * totalUSDShares / _totalUSDBalance; // user only gets shares for the obtained DAI
        if (sharesToIssue == 0) {
            revert ZeroSharesIssued();
        }

        _mintUSDShares(msg.sender, sharesToIssue);

        emit USDDeposited(msg.sender, sharesToIssue, depositedAmount, daiAmount);
    }

    /**
     * @notice Mint ETH shares
     * @param user User address
     * @param shares Number of ETH shares to mint
     */
    function _mintETHShares(address user, uint256 shares) internal {
        ethShares[user] += shares;
        totalETHShares += shares;
    }

    /**
     * @notice Mint USD shares
     * @param user User address
     * @param shares Number of USD shares to mint
     */
    function _mintUSDShares(address user, uint256 shares) internal {
        usdShares[user] += shares;
        totalUSDShares += shares;
    }

    /**
     * @notice Burn ETH shares
     * @param user User address
     * @param shares Number of ETH shares to burn
     */
    function _burnETHShares(address user, uint256 shares) internal {
        ethShares[user] -= shares;
        totalETHShares -= shares;
    }

    /**
     * @notice Burn USD shares
     * @param user User address
     * @param shares Number of USD shares to burn
     */
    function _burnUSDShares(address user, uint256 shares) internal {
        usdShares[user] -= shares;
        totalUSDShares -= shares;
    }

    /*/////////////////////////
              STAKING
    /////////////////////////*/

    /**
     * @notice Stake pooled ETH funds by submiting ETH to Lido
     * @param amount Amount in ETH to stake (wad)
     */
    function stakeETH(uint256 amount) external {
        if (msg.sender != staker) {
            revert CallerIsNotStaker();
        }
        if (amount > address(this).balance) {
            revert InsufficientFunds();
        }

        LIDO.submit{value: amount}(address(0));
    }

    /**
     * @notice Stake pooled USD funds by depositing DAI into the Maker DSR
     * @param amount Amount in DAI to stake (usd)
     */
    function stakeUSD(uint256 amount) external {
        if (msg.sender != staker) {
            revert CallerIsNotStaker();
        }
        if (amount > DAI.balanceOf(address(this))) {
            revert InsufficientFunds();
        }

        DSR_MANAGER.join(address(this), amount);
    }

    /*/////////////////////////
            TRANSITION
    /////////////////////////*/

    /**
     * @notice Start the transition to the mainnet bridge (admin only)
     * @param mainnetBridge Mainnet bridge address
     */
    function enableTransition(address mainnetBridge) external onlyOwner {
        if (isTransitionEnabled) {
            revert TransitionIsEnabled();
        }

        _pause();
        _setMainnetBridge(mainnetBridge);
        isTransitionEnabled = true;

        LIDO.approve(mainnetBridge, type(uint256).max);
        DAI.approve(mainnetBridge, type(uint256).max);
    }

    /**
     * @notice Transition the caller's portion of the pooled funds to the mainnet bridge
     */
    // NB: This function is now responsible for moving the assets to the new bridge,
    // this was before in the `_moveETH`-related functionality.
    function transition(uint32 minGasLimit) external onlyEOA {
        _transition(msg.sender, msg.sender, minGasLimit);
    }

    /**
     * @notice Transition the caller's portion of the pooled funds to the mainnet bridge
     */
    // NB: This function is now responsible for moving the assets to the new bridge,
    // this was before in the `_moveETH`-related functionality.
    function transition(address recipient, uint8 v, bytes32 r, bytes32 s, uint32 minGasLimit) external {
        address user = msg.sender;

        {
            if (recipient == address(0)) {
                revert InvalidRecipient();
            }

            /// Verify signature of the recipient address by the recipient address.
            /// This is just a safety check for the user that they own the wallet
            /// they are sending funds to.
            bytes memory prefix = "\x19Ethereum Signed Message:\n32";
            bytes32 prefixedHashMessage = keccak256(abi.encodePacked(prefix, recipient));
            address signer = ecrecover(prefixedHashMessage, v, r, s);
            if (signer != recipient) {
                revert InvalidRecipientSignature();
            }
        }

        _transition(msg.sender, recipient, minGasLimit);
    }

    /**
     * @notice Transition the caller's portion of the pooled funds to the mainnet bridge
     */
    // NB: This function is now responsible for moving the assets to the new bridge,
    // this was before in the `_moveETH`-related functionality.
    function _transition(address user, address recipient, uint32 minGasLimit) internal {
        if (!isTransitionEnabled) {
            revert TransitionNotEnabled();
        }

        if (transitioned[user]) {
            revert UserAlreadyTransitioned();
        }
        transitioned[user] = true;

        (uint ethAmountToMove, uint stETHAmountToMove) = _moveETH(user);
        uint daiAmountToMove = _moveUSD(user);

        IMainnetBridge mainnetBridge = getMainnetBridge();
        if (ethAmountToMove > 0) {
            mainnetBridge.bridgeETHTo{value: ethAmountToMove}(recipient, minGasLimit, bytes(""));
        }
        if (stETHAmountToMove > 0) {
            mainnetBridge.bridgeERC20To(address(LIDO), address(0), recipient, stETHAmountToMove, minGasLimit, hex"");
        }
        if (daiAmountToMove > 0) {
            mainnetBridge.bridgeERC20To(address(DAI), Predeploys.USDB, recipient, daiAmountToMove, minGasLimit, hex"");
        }
    }

    /// In the event multisig keys are lost, users can reclaim their funds after the contract
    /// has expired.
    function emergencyWithdraw() external {
        require(block.timestamp > EMERGENCY_WITHDRAW_TIMESTAMP, "Emergency timestamp not reached");
        _withdraw();
    }

    function _withdraw() internal {
        (uint ethAmountToMove, uint stETHAmountToMove) = _moveETH(msg.sender);
        uint daiAmountToMove = _moveUSD(msg.sender);

        if (stETHAmountToMove > 0) {
            LIDO.transfer(msg.sender, stETHAmountToMove);
        }
        if (daiAmountToMove > 0) {
            DAI.transfer(msg.sender, daiAmountToMove);
        }
        if (ethAmountToMove > 0) {
            payable(msg.sender).transfer(ethAmountToMove);
        }

        emit Withdraw(msg.sender, ethAmountToMove, stETHAmountToMove, daiAmountToMove);
    }

    /**
     * @notice Move user's portion of pooled ETH by the amount of shares
     * @param user User address
     */
    // NB: This function was refactored to return the assets it'd move around, and
    // the caller is responsible for executing the actual transfer.
    function _moveETH(address user) internal returns (uint ethAmountToMove, uint stETHAmountToMove) {
        uint256 userETHShares = ethShares[user];
        if (userETHShares > 0) {
            ethAmountToMove = _ethByShares(userETHShares);
            _burnETHShares(user, userETHShares);

            /*
               If there are insufficient ETH funds in the bridge to cover the user's share,
               then we need to start moving StETH.
            */
            uint256 contractETHBalance = address(this).balance;
            if (ethAmountToMove > contractETHBalance) {
                stETHAmountToMove = ethAmountToMove - contractETHBalance;
                ethAmountToMove = contractETHBalance;
            }
        }
    }

    /**
     * @notice Move user's portion of pooled USD by the amount of shares
     * @param user User address
     */
    function _moveUSD(address user) internal returns (uint daiAmountToMove) {
        uint256 userUSDShares = usdShares[user];
        if (userUSDShares > 0) {
            daiAmountToMove = _usdByShares(userUSDShares);
            _burnUSDShares(user, userUSDShares);

            /*
               If there are insufficient DAI funds in the bridge to cover the user's share,
               then we need to start withdrawing DAI from the DSR.
            */
            uint256 contractDAIBalance = DAI.balanceOf(address(this));
            if (daiAmountToMove > contractDAIBalance) {
                DSR_MANAGER.exit(address(this), daiAmountToMove - contractDAIBalance);
            }
        }
    }

    /*/////////////////////////
              HELPERS
    /////////////////////////*/

    /**
     * @notice Convert ETH to equivalent shares
     * @param shares Number of ETH shares
     * @return Amount of ETH
     */
    function _ethByShares(uint256 shares) internal view returns (uint256) {
        return shares * totalETHBalance() / totalETHShares;
    }

    /**
     * @notice Current shares to equivalent USD
     * @dev Does not update DSR yield
     * @param shares Number of USD shares
     * @return Amount of USD
     */
    function _usdBySharesNoUpdate(uint256 shares) internal view returns (uint256) {
        return shares * totalUSDBalanceNoUpdate() / totalUSDShares;
    }

    /**
     * @notice Current shares to equivalent USD
     * @param shares Number of USD shares
     * @return Amount of USD
     */
    function _usdByShares(uint256 shares) internal returns (uint256) {
        return shares * totalUSDBalance() / totalUSDShares;
    }

    /**
     * @notice Convert from wad (18 decimals) to USD (6 decimals) denomination
     * @param wad Amount in wad
     * @return Amount in USD
     */
    function _wadToUSD(uint256 wad) internal pure returns (uint256) {
        return wad / (10**(_WAD_DECIMALS - _USD_DECIMALS));
    }

    /**
     * @notice Convert from USD (6 decimals) to wad (18 decimals) denomination
     * @param usd Amount in USD
     * @return Amount in wad
     */
    function _usdToWad(uint256 usd) internal pure returns (uint256) {
        return usd * (10**(_WAD_DECIMALS - _USD_DECIMALS));
    }

    /**
     * @dev Based on _rpow from MakerDAO pot.sol contract (https://github.com/makerdao/dss/blob/fa4f6630afb0624d04a003e920b0d71a00331d98/src/pot.sol#L87-L105)
     */
    function _rpow(uint x, uint n, uint base) internal pure returns (uint z) {
        assembly {
            switch x case 0 {switch n case 0 {z := base} default {z := 0}}
            default {
                switch mod(n, 2) case 0 { z := base } default { z := x }
                let half := div(base, 2)  // for rounding.
                for { n := div(n, 2) } n { n := div(n,2) } {
                    let xx := mul(x, x)
                    if iszero(eq(div(xx, x), x)) { revert(0,0) }
                    let xxRound := add(xx, half)
                    if lt(xxRound, xx) { revert(0,0) }
                    x := div(xxRound, base)
                    if mod(n,2) {
                        let zx := mul(z, x)
                        if and(iszero(iszero(x)), iszero(eq(div(zx, x), z))) { revert(0,0) }
                        let zxRound := add(zx, half)
                        if lt(zxRound, zx) { revert(0,0) }
                        z := div(zxRound, base)
                    }
                }
            }
        }
    }

    /**
     * @dev Based on _rmul in MakerDAO pot.sol contract (https://github.com/makerdao/dss/blob/fa4f6630afb0624d04a003e920b0d71a00331d98/src/pot.sol#L109-L111)
     */
    function _rmul(uint x, uint y) internal pure returns (uint z) {
        z = x * y / _RAY;
    }
}

// ============================================================
// FILE: src/libraries/Predeploys.sol
// ============================================================

// SPDX-License-Identifier: BSL 1.1 - Copyright 2024 MetaLayer Labs Ltd.
pragma solidity ^0.8.0;

/// @title Predeploys
/// @notice Contains constant addresses for contracts that are pre-deployed to the L2 system.
library Predeploys {
    /// @notice Address of the L2ToL1MessagePasser predeploy.
    address internal constant L2_TO_L1_MESSAGE_PASSER = 0x4200000000000000000000000000000000000016;

    /// @notice Address of the L2CrossDomainMessenger predeploy.
    address internal constant L2_CROSS_DOMAIN_MESSENGER = 0x4200000000000000000000000000000000000007;

    /// @notice Address of the L2StandardBridge predeploy.
    address internal constant L2_STANDARD_BRIDGE = 0x4200000000000000000000000000000000000010;

    /// @notice Address of the L2ERC721Bridge predeploy.
    address internal constant L2_ERC721_BRIDGE = 0x4200000000000000000000000000000000000014;

    //// @notice Address of the SequencerFeeWallet predeploy.
    address internal constant SEQUENCER_FEE_WALLET = 0x4200000000000000000000000000000000000011;

    /// @notice Address of the OptimismMintableERC20Factory predeploy.
    address internal constant OPTIMISM_MINTABLE_ERC20_FACTORY = 0x4200000000000000000000000000000000000012;

    /// @notice Address of the OptimismMintableERC721Factory predeploy.
    address internal constant OPTIMISM_MINTABLE_ERC721_FACTORY = 0x4200000000000000000000000000000000000017;

    /// @notice Address of the L1Block predeploy.
    address internal constant L1_BLOCK_ATTRIBUTES = 0x4200000000000000000000000000000000000015;

    /// @notice Address of the GasPriceOracle predeploy. Includes fee information
    ///         and helpers for computing the L1 portion of the transaction fee.
    address internal constant GAS_PRICE_ORACLE = 0x420000000000000000000000000000000000000F;

    /// @custom:legacy
    /// @notice Address of the L1MessageSender predeploy. Deprecated. Use L2CrossDomainMessenger
    ///         or access tx.origin (or msg.sender) in a L1 to L2 transaction instead.
    address internal constant L1_MESSAGE_SENDER = 0x4200000000000000000000000000000000000001;

    /// @custom:legacy
    /// @notice Address of the DeployerWhitelist predeploy. No longer active.
    address internal constant DEPLOYER_WHITELIST = 0x4200000000000000000000000000000000000002;

    /// @custom:legacy
    /// @notice Address of the LegacyERC20ETH predeploy. Deprecated. Balances are migrated to the
    ///         state trie as of the Bedrock upgrade. Contract has been locked and write functions
    ///         can no longer be accessed.
    address internal constant LEGACY_ERC20_ETH = 0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000;

    /// @custom:legacy
    /// @notice Address of the L1BlockNumber predeploy. Deprecated. Use the L1Block predeploy
    ///         instead, which exposes more information about the L1 state.
    address internal constant L1_BLOCK_NUMBER = 0x4200000000000000000000000000000000000013;

    /// @custom:legacy
    /// @notice Address of the LegacyMessagePasser predeploy. Deprecate. Use the updated
    ///         L2ToL1MessagePasser contract instead.
    address internal constant LEGACY_MESSAGE_PASSER = 0x4200000000000000000000000000000000000000;

    /// @notice Address of the ProxyAdmin predeploy.
    address internal constant PROXY_ADMIN = 0x4200000000000000000000000000000000000018;

    /// @notice Address of the BaseFeeVault predeploy.
    address internal constant BASE_FEE_VAULT = 0x4200000000000000000000000000000000000019;

    /// @notice Address of the L1FeeVault predeploy.
    address internal constant L1_FEE_VAULT = 0x420000000000000000000000000000000000001A;

    /// @notice Address of the GovernanceToken predeploy.
    address internal constant GOVERNANCE_TOKEN = 0x4200000000000000000000000000000000000042;

    /// @notice Address of the SchemaRegistry predeploy.
    address internal constant SCHEMA_REGISTRY = 0x4200000000000000000000000000000000000020;

    /// @notice Address of the EAS predeploy.
    address internal constant EAS = 0x4200000000000000000000000000000000000021;

    /// @notice Address of the Shares predeploy.
    address internal constant SHARES = 0x4300000000000000000000000000000000000000;

    /// @notice Address of the Gas predeploy.
    address internal constant GAS = 0x4300000000000000000000000000000000000001;

    /// @notice Address of the Blast predeploy.
    address internal constant BLAST = 0x4300000000000000000000000000000000000002;

    /// @notice Address of the USDB predeploy.
    address internal constant USDB = 0x4300000000000000000000000000000000000003;

    /// @notice Address of the WETH predeploy.
    address internal constant WETH_REBASING = 0x4300000000000000000000000000000000000004;

    /// @notice Address of the L2BlastBridge predeploy.
    address internal constant L2_BLAST_BRIDGE = 0x4300000000000000000000000000000000000005;
}
