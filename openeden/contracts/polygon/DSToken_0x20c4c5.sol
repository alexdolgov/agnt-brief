// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol
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
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
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
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/UUPSUpgradeable.sol)

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
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
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
     * @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
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
     * context is not of a proxy with an ERC1967-compliant implementation pointing to self.
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
     * is expected to be the implementation slot in ERC1967.
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
// FILE: @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol
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
// FILE: @openzeppelin/contracts/interfaces/draft-IERC1822.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.20;

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
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
// FILE: @openzeppelin/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: @openzeppelin/contracts/proxy/beacon/IBeacon.sol
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
// FILE: @openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/ERC1967/ERC1967Utils.sol)

pragma solidity ^0.8.20;

import {IBeacon} from "../beacon/IBeacon.sol";
import {Address} from "../../utils/Address.sol";
import {StorageSlot} from "../../utils/StorageSlot.sol";

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 */
library ERC1967Utils {
    // We re-declare ERC-1967 events here because they can't be used directly from IERC1967.
    // This will be fixed in Solidity 0.8.21. At that point we should remove these events.
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
     * @dev Stores a new address in the EIP1967 implementation slot.
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
        emit Upgraded(newImplementation);

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
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using
     * the https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
     */
    function getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
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
        emit AdminChanged(getAdmin(), newAdmin);
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
     * @dev Stores a new beacon in the EIP1967 beacon slot.
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
        emit BeaconUpgraded(newBeacon);

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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

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
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

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
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC20Permit} from "../extensions/IERC20Permit.sol";
import {Address} from "../../../utils/Address.sol";

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
     * @dev An operation with an ERC20 token failed.
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
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
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
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
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

        bytes memory returndata = address(token).functionCall(data);
        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20FailedOperation(address(token));
        }
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
        return success && (returndata.length == 0 || abi.decode(returndata, (bool))) && address(token).code.length > 0;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error AddressInsufficientBalance(address account);

    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedInnerCall();

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
            revert AddressInsufficientBalance(address(this));
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert FailedInnerCall();
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
     * {FailedInnerCall} error.
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
            revert AddressInsufficientBalance(address(this));
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
     * was not a contract or bubbling up the revert reason (falling back to {FailedInnerCall}) in case of an
     * unsuccessful call.
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
     * revert reason or with a default {FailedInnerCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {FailedInnerCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert FailedInnerCall();
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Muldiv operation overflow.
     */
    error MathOverflowedMulDiv();

    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
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
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
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
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
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
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            return a / b;
        }

        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
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

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            if (denominator <= prod1) {
                revert MathOverflowedMulDiv();
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

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
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
        if (unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
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
            return result + (unsignedRoundsUp(rounding) && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
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
            return result + (unsignedRoundsUp(rounding) && 1 << result < value ? 1 : 0);
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
            return result + (unsignedRoundsUp(rounding) && 10 ** result < value ? 1 : 0);
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
            return result + (unsignedRoundsUp(rounding) && 1 << (result << 3) < value ? 1 : 0);
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
// FILE: @openzeppelin/contracts/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow
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
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/StorageSlot.sol)
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
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
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
// FILE: contracts/compliance/ComplianceConfigurationService.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./IDSComplianceConfigurationService.sol";
import "../data-stores/ComplianceConfigurationDataStore.sol";
import "../utils/BaseDSContract.sol";

contract ComplianceConfigurationService is IDSComplianceConfigurationService, ComplianceConfigurationDataStore, BaseDSContract {

    function initialize() public override onlyProxy initializer {
        __BaseDSContract_init();
    }

    function setCountriesCompliance(string[] calldata _countries, uint256[] calldata _values) public override onlyTransferAgentOrAbove {
        require(_countries.length <= 35, "Exceeded the maximum number of countries");
        require(_countries.length == _values.length, "Wrong length of parameters");
        for (uint i = 0; i < _countries.length; i++) {
            setCountryCompliance(_countries[i], _values[i]);
        }
    }

    function setCountryCompliance(string calldata _country, uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceStringToUIntMapRuleSet("countryCompliance", _country, countriesCompliances[_country], _value);
        countriesCompliances[_country] = _value;
    }

    function getCountryCompliance(string memory _country) public view override returns (uint256) {
        return countriesCompliances[_country];
    }

    function getTotalInvestorsLimit() public view override returns (uint256) {
        return totalInvestorsLimit;
    }

    function setTotalInvestorsLimit(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("totalInvestorsLimit", totalInvestorsLimit, _value);
        totalInvestorsLimit = _value;
    }

    function getMinUSTokens() public view override returns (uint256) {
        return minUSTokens;
    }

    function setMinUSTokens(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("minUSTokens", minUSTokens, _value);
        minUSTokens = _value;
    }

    function getMinEUTokens() public view override returns (uint256) {
        return minEUTokens;
    }

    function setMinEUTokens(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("minEUTokens", minEUTokens, _value);
        minEUTokens = _value;
    }

    function getUSInvestorsLimit() public view override returns (uint256) {
        return usInvestorsLimit;
    }

    function setUSInvestorsLimit(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("usInvestorsLimit", usInvestorsLimit, _value);
        usInvestorsLimit = _value;
    }

    function getJPInvestorsLimit() public view override returns (uint256) {
        return jpInvestorsLimit;
    }

    function setJPInvestorsLimit(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("jpInvestorsLimit", jpInvestorsLimit, _value);
        jpInvestorsLimit = _value;
    }

    function getUSAccreditedInvestorsLimit() public view override returns (uint256) {
        return usAccreditedInvestorsLimit;
    }

    function setUSAccreditedInvestorsLimit(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("usAccreditedInvestorsLimit", usAccreditedInvestorsLimit, _value);
        usAccreditedInvestorsLimit = _value;
    }

    function getNonAccreditedInvestorsLimit() public view override returns (uint256) {
        return nonAccreditedInvestorsLimit;
    }

    function setNonAccreditedInvestorsLimit(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("nonAccreditedInvestorsLimit", nonAccreditedInvestorsLimit, _value);
        nonAccreditedInvestorsLimit = _value;
    }

    function getMaxUSInvestorsPercentage() public view override returns (uint256) {
        return maxUSInvestorsPercentage;
    }

    function setMaxUSInvestorsPercentage(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("maxUSInvestorsPercentage", maxUSInvestorsPercentage, _value);
        maxUSInvestorsPercentage = _value;
    }

    function getBlockFlowbackEndTime() public view override returns (uint256) {
        return blockFlowbackEndTime;
    }

    function setBlockFlowbackEndTime(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("blockFlowbackEndTime", blockFlowbackEndTime, _value);
        blockFlowbackEndTime = _value;
    }

    function getNonUSLockPeriod() public view override returns (uint256) {
        return nonUSLockPeriod;
    }

    function setNonUSLockPeriod(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("nonUSLockPeriod", nonUSLockPeriod, _value);
        nonUSLockPeriod = _value;
    }

    function getMinimumTotalInvestors() public view override returns (uint256) {
        return minimumTotalInvestors;
    }

    function setMinimumTotalInvestors(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("minimumTotalInvestors", minimumTotalInvestors, _value);
        minimumTotalInvestors = _value;
    }

    function getMinimumHoldingsPerInvestor() public view override returns (uint256) {
        return minimumHoldingsPerInvestor;
    }

    function setMinimumHoldingsPerInvestor(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("minimumHoldingsPerInvestor", minimumHoldingsPerInvestor, _value);
        minimumHoldingsPerInvestor = _value;
    }

    function getMaximumHoldingsPerInvestor() public view override returns (uint256) {
        return maximumHoldingsPerInvestor;
    }

    function setMaximumHoldingsPerInvestor(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("maximumHoldingsPerInvestor", maximumHoldingsPerInvestor, _value);
        maximumHoldingsPerInvestor = _value;
    }

    function getEURetailInvestorsLimit() public view override returns (uint256) {
        return euRetailInvestorsLimit;
    }

    function setEURetailInvestorsLimit(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("euRetailInvestorsLimit", euRetailInvestorsLimit, _value);
        euRetailInvestorsLimit = _value;
    }

    function getUSLockPeriod() public view override returns (uint256) {
        return usLockPeriod;
    }

    function setUSLockPeriod(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("usLockPeriod", usLockPeriod, _value);
        usLockPeriod = _value;
    }

    function getForceFullTransfer() public view override returns (bool) {
        return forceFullTransfer;
    }

    function setForceFullTransfer(bool _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceBoolRuleSet("forceFullTransfer", forceFullTransfer, _value);
        forceFullTransfer = _value;
    }

    function getForceAccreditedUS() public view override returns (bool) {
        return forceAccreditedUS;
    }

    function setForceAccreditedUS(bool _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceBoolRuleSet("forceAccreditedUS", forceAccreditedUS, _value);
        forceAccreditedUS = _value;
    }

    function getForceAccredited() public view override returns (bool) {
        return forceAccredited;
    }

    function setForceAccredited(bool _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceBoolRuleSet("forceAccredited", forceAccredited, _value);
        forceAccredited = _value;
    }

    function getWorldWideForceFullTransfer() public view override returns (bool) {
        return worldWideForceFullTransfer;
    }

    function setWorldWideForceFullTransfer(bool _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceBoolRuleSet("worldWideForceFullTransfer", worldWideForceFullTransfer, _value);
        worldWideForceFullTransfer = _value;
    }

    function getAuthorizedSecurities() public view override returns (uint256) {
        return authorizedSecurities;
    }

    function setAuthorizedSecurities(uint256 _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceUIntRuleSet("authorizedSecurities", authorizedSecurities, _value);
        authorizedSecurities = _value;
    }

    function getDisallowBackDating() public view override returns (bool) {
        return disallowBackDating;
    }

    function setDisallowBackDating(bool _value) public override onlyTransferAgentOrAbove {
        emit DSComplianceBoolRuleSet("disallowBackDating", disallowBackDating, _value);
        disallowBackDating = _value;
    }

    function setAll(uint256[] calldata _uint_values, bool[] calldata _bool_values) public override onlyTransferAgentOrAbove {
        require(_uint_values.length == 16, "Wrong length of parameters");
        require(_bool_values.length == 5, "Wrong length of parameters");
        setTotalInvestorsLimit(_uint_values[0]);
        setMinUSTokens(_uint_values[1]);
        setMinEUTokens(_uint_values[2]);
        setUSInvestorsLimit(_uint_values[3]);
        setUSAccreditedInvestorsLimit(_uint_values[4]);
        setNonAccreditedInvestorsLimit(_uint_values[5]);
        setMaxUSInvestorsPercentage(_uint_values[6]);
        setBlockFlowbackEndTime(_uint_values[7]);
        setNonUSLockPeriod(_uint_values[8]);
        setMinimumTotalInvestors(_uint_values[9]);
        setMinimumHoldingsPerInvestor(_uint_values[10]);
        setMaximumHoldingsPerInvestor(_uint_values[11]);
        setEURetailInvestorsLimit(_uint_values[12]);
        setUSLockPeriod(_uint_values[13]);
        setJPInvestorsLimit(_uint_values[14]);
        setAuthorizedSecurities(_uint_values[15]);
        setForceFullTransfer(_bool_values[0]);
        setForceAccredited(_bool_values[1]);
        setForceAccreditedUS(_bool_values[2]);
        setWorldWideForceFullTransfer(_bool_values[3]);
        setDisallowBackDating(_bool_values[4]);
    }

    function getAll() public view override returns (uint256[] memory, bool[] memory) {
        uint256[] memory uintValues = new uint256[](16);
        bool[] memory boolValues = new bool[](5);

        uintValues[0] = getTotalInvestorsLimit();
        uintValues[1] = getMinUSTokens();
        uintValues[2] = getMinEUTokens();
        uintValues[3] = getUSInvestorsLimit();
        uintValues[4] = getUSAccreditedInvestorsLimit();
        uintValues[5] = getNonAccreditedInvestorsLimit();
        uintValues[6] = getMaxUSInvestorsPercentage();
        uintValues[7] = getBlockFlowbackEndTime();
        uintValues[8] = getNonUSLockPeriod();
        uintValues[9] = getMinimumTotalInvestors();
        uintValues[10] = getMinimumHoldingsPerInvestor();
        uintValues[11] = getMaximumHoldingsPerInvestor();
        uintValues[12] = getEURetailInvestorsLimit();
        uintValues[13] = getUSLockPeriod();
        uintValues[14] = getJPInvestorsLimit();
        uintValues[15] = getAuthorizedSecurities();
        boolValues[0] = getForceFullTransfer();
        boolValues[1] = getForceAccredited();
        boolValues[2] = getForceAccreditedUS();
        boolValues[3] = getWorldWideForceFullTransfer();
        boolValues[4] = getDisallowBackDating();
        return (uintValues, boolValues);
    }
}

// ============================================================
// FILE: contracts/compliance/ComplianceService.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./IDSComplianceService.sol";
import "../utils/CommonUtils.sol";
import "../data-stores/ComplianceServiceDataStore.sol";
import "../utils/BaseDSContract.sol";

/**
 *   @title Compliance service main implementation.
 *
 *   Combines the different implementation files for the compliance service and serves as a base class for
 *   concrete implementation.
 *
 *   To create a concrete implementation of a compliance service, one should inherit from this contract,
 *   and implement the five functions - recordIssuance,checkTransfer,recordTransfer,recordBurn and recordSeize.
 *   The rest of the functions should only be overridden in rare circumstances.
 */

abstract contract ComplianceService is IDSComplianceService, ComplianceServiceDataStore, BaseDSContract {

    function initialize() public virtual override onlyProxy onlyInitializing {
        __BaseDSContract_init();
    }

    function validateTransfer(
        address _from,
        address _to,
        uint256 _value
    ) public override onlyToken returns (bool) {
        uint256 code;
        string memory reason;

        (code, reason) = preTransferCheck(_from, _to, _value);
        require(code == 0, reason);

        return recordTransfer(_from, _to, _value);
    }

    function validateTransfer(
        address _from,
        address _to,
        uint256 _value,
        bool _paused,
        uint256 _balanceFrom
    ) public virtual override onlyToken returns (bool) {
        uint256 code;
        string memory reason;

        (code, reason) = newPreTransferCheck(_from, _to, _value, _balanceFrom, _paused);
        require(code == 0, reason);

        return recordTransfer(_from, _to, _value);
    }

    function validateIssuance(
        address _to,
        uint256 _value,
        uint256 _issuanceTime
    ) public override onlyToken returns (bool) {
        uint256 code;
        string memory reason;

        uint256 authorizedSecurities = getComplianceConfigurationService().getAuthorizedSecurities();

        require(authorizedSecurities == 0 || getToken().totalSupply() + _value <= authorizedSecurities,
            MAX_AUTHORIZED_SECURITIES_EXCEEDED);

        (code, reason) = preIssuanceCheck(_to, _value);
        require(code == 0, reason);

        uint256 issuanceTime = validateIssuanceTime(_issuanceTime);
        return recordIssuance(_to, _value, issuanceTime);
    }

    function validateIssuanceWithNoCompliance(
        address _to,
        uint256 _value,
        uint256 _issuanceTime
    ) public override onlyToken returns (bool) {
        uint256 authorizedSecurities = getComplianceConfigurationService().getAuthorizedSecurities();

        require(authorizedSecurities == 0 || getToken().totalSupply() + _value <= authorizedSecurities,
            MAX_AUTHORIZED_SECURITIES_EXCEEDED);

        uint256 issuanceTime = validateIssuanceTime(_issuanceTime);
        return recordIssuance(_to, _value, issuanceTime);
    }

    function validateBurn(address _who, uint256 _value) public virtual override onlyToken returns (bool) {
        return recordBurn(_who, _value);
    }

    function validateSeize(
        address _from,
        address _to,
        uint256 _value
    ) public virtual override onlyToken returns (bool) {
        require(getWalletManager().isIssuerSpecialWallet(_to), "Target wallet type error");

        return recordSeize(_from, _to, _value);
    }

    /**
     * @dev Verify disallowBackDating compliance: if set to false returns _issuanceTime parameter, otherwise returns current timestamp
     * @param _issuanceTime.
     * @return issuanceTime
     */
    function validateIssuanceTime(uint256 _issuanceTime) public view override returns (uint256 issuanceTime) {
        if (!getComplianceConfigurationService().getDisallowBackDating()) {
            return _issuanceTime;
        }
        return block.timestamp;
    }

    function newPreTransferCheck(
        address _from,
        address _to,
        uint256 _value,
        uint256 _balanceFrom,
        bool _pausedToken
    ) public view virtual override returns (uint256 code, string memory reason) {
        if (_pausedToken) {
            return (10, TOKEN_PAUSED);
        }

        if (_balanceFrom < _value) {
            return (15, NOT_ENOUGH_TOKENS);
        }

        if (getLockManager().getTransferableTokens(_from, block.timestamp) < _value) {
            return (16, TOKENS_LOCKED);
        }

        return checkTransfer(_from, _to, _value);
    }

    function preTransferCheck(
        address _from,
        address _to,
        uint256 _value
    ) public view virtual override returns (uint256 code, string memory reason) {
        if (getToken().isPaused()) {
            return (10, TOKEN_PAUSED);
        }

        if (getToken().balanceOf(_from) < _value) {
            return (15, NOT_ENOUGH_TOKENS);
        }

        if (getLockManager().getTransferableTokens(_from, block.timestamp) < _value) {
            return (16, TOKENS_LOCKED);
        }

        return checkTransfer(_from, _to, _value);
    }

    function preInternalTransferCheck(
        address _from,
        address _to,
        uint256 _value
    ) public view virtual override returns (uint256 code, string memory reason) {
        if (getToken().isPaused()) {
            return (10, TOKEN_PAUSED);
        }

        return checkTransfer(_from, _to, _value);
    }

    function preIssuanceCheck(
        address, /*_to*/
        uint256 /*_value*/
    ) public view virtual override returns (uint256 code, string memory reason) {
        return (0, VALID);
    }

    function adjustInvestorCountsAfterCountryChange(
        string memory, /*_id*/
        string memory, /*_country*/
        string memory /*_prevCountry*/
    ) public virtual override returns (bool) {
        return true;
    }

    // These functions should be implemented by the concrete compliance manager
    function recordIssuance(
        address _to,
        uint256 _value,
        uint256 _issuanceTime
    ) internal virtual returns (bool);

    function recordTransfer(
        address _from,
        address _to,
        uint256 _value
    ) internal virtual returns (bool);

    function recordBurn(address _who, uint256 _value) internal virtual returns (bool);

    function recordSeize(
        address _from,
        address _to,
        uint256 _value
    ) internal virtual returns (bool);

    function checkTransfer(
        address _from,
        address _to,
        uint256 _value
    ) internal view virtual returns (uint256, string memory);
}

// ============================================================
// FILE: contracts/compliance/ComplianceServiceRegulated.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./ComplianceServiceWhitelisted.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

library ComplianceServiceLibrary {
    uint256 internal constant DS_TOKEN = 0;
    uint256 internal constant REGISTRY_SERVICE = 1;
    uint256 internal constant WALLET_MANAGER = 2;
    uint256 internal constant COMPLIANCE_CONFIGURATION_SERVICE = 3;
    uint256 internal constant LOCK_MANAGER = 4;
    uint256 internal constant COMPLIANCE_SERVICE = 5;
    uint256 internal constant OMNIBUS_TBE_CONTROLLER = 6;
    uint256 internal constant NONE = 0;
    uint256 internal constant US = 1;
    uint256 internal constant EU = 2;
    uint256 internal constant FORBIDDEN = 4;
    uint256 internal constant JP = 8;
    string internal constant TOKEN_PAUSED = "Token paused";
    string internal constant NOT_ENOUGH_TOKENS = "Not enough tokens";
    string internal constant VALID = "Valid";
    string internal constant TOKENS_LOCKED = "Tokens locked";
    string internal constant ONLY_FULL_TRANSFER = "Only full transfer";
    string internal constant FLOWBACK = "Flowback";
    string internal constant WALLET_NOT_IN_REGISTRY_SERVICE = "Wallet not in registry service";
    string internal constant AMOUNT_OF_TOKENS_UNDER_MIN = "Amount of tokens under min";
    string internal constant AMOUNT_OF_TOKENS_ABOVE_MAX = "Amount of tokens above max";
    string internal constant HOLD_UP = "Under lock-up";
    string internal constant DESTINATION_RESTRICTED = "Destination restricted";
    string internal constant MAX_INVESTORS_IN_CATEGORY = "Max investors in category";
    string internal constant ONLY_ACCREDITED = "Only accredited";
    string internal constant ONLY_US_ACCREDITED = "Only us accredited";
    string internal constant NOT_ENOUGH_INVESTORS = "Not enough investors";

    struct CompletePreTransferCheckArgs {
        address from;
        address to;
        uint256 value;
        uint256 fromInvestorBalance;
        uint256 fromRegion;
        bool isPlatformWalletTo;
    }

    function isRetail(address[] memory _services, address _wallet) internal view returns (bool) {
        IDSRegistryService registry = IDSRegistryService(_services[REGISTRY_SERVICE]);

        return !registry.isQualifiedInvestor(_wallet);
    }

    function isAccredited(address[] memory _services, address _wallet) internal view returns (bool) {
        IDSRegistryService registry = IDSRegistryService(_services[REGISTRY_SERVICE]);

        return registry.isAccreditedInvestor(_wallet);
    }

    function balanceOfInvestor(address[] memory _services, address _wallet) internal view returns (uint256) {
        IDSRegistryService registry = IDSRegistryService(_services[REGISTRY_SERVICE]);
        IDSToken token = IDSToken(_services[DS_TOKEN]);

        return token.balanceOfInvestor(registry.getInvestor(_wallet));
    }

    function isNewInvestor(address[] memory _services, address _to, uint256 _balanceOfInvestorTo) internal view returns (bool) {
        IDSOmnibusTBEController omnibusTBEController = IDSOmnibusTBEController(_services[OMNIBUS_TBE_CONTROLLER]);

        // Return whether this investor has 0 balance and is not an omnibus TBE wallet
        return _balanceOfInvestorTo == 0 && !isOmnibusTBE(omnibusTBEController, _to);
    }

    function getCountry(address[] memory _services, address _wallet) internal view returns (string memory) {
        IDSRegistryService registry = IDSRegistryService(_services[REGISTRY_SERVICE]);

        return registry.getCountry(registry.getInvestor(_wallet));
    }

    function getCountryCompliance(address[] memory _services, address _wallet) internal view returns (uint256) {
        return IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getCountryCompliance(getCountry(_services, _wallet));
    }

    function getUSInvestorsLimit(address[] memory _services) internal view returns (uint256) {
        ComplianceServiceRegulated complianceService = ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]);
        IDSComplianceConfigurationService compConfService = IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]);

        if (compConfService.getMaxUSInvestorsPercentage() == 0) {
            return compConfService.getUSInvestorsLimit();
        }

        if (compConfService.getUSInvestorsLimit() == 0) {
            return compConfService.getMaxUSInvestorsPercentage() * (complianceService.getTotalInvestorsCount()) / 100;
        }

        return Math.min(compConfService.getUSInvestorsLimit(), compConfService.getMaxUSInvestorsPercentage() * (complianceService.getTotalInvestorsCount()) / 100);
    }

    function isOmnibusTBE(IDSOmnibusTBEController _omnibusTBE, address _from) internal view returns (bool) {
        if (address(_omnibusTBE) != address(0)) {
            return _omnibusTBE.getOmnibusWallet() == _from;
        }
        return false;
    }

    function checkHoldUp(
        address[] memory _services,
        address _from,
        uint256 _value,
        bool _isUSLockPeriod,
        bool _isPlatformWalletFrom
    ) internal view returns (bool) {
        ComplianceServiceRegulated complianceService = ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]);
        uint256 lockPeriod;
        if (_isUSLockPeriod) {
            lockPeriod = IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getUSLockPeriod();
        } else {
            lockPeriod = IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getNonUSLockPeriod();
        }

        return
        !_isPlatformWalletFrom &&
        complianceService.getComplianceTransferableTokens(_from, block.timestamp, uint64(lockPeriod)) < _value;
    }

    function maxInvestorsInCategoryForNonAccredited(
        address[] memory _services,
        address _from,
        address _to,
        uint256 _value,
        uint256 fromInvestorBalance,
        uint256 toInvestorBalance
    ) internal view returns (bool) {
        uint256 nonAccreditedInvestorLimit = IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getNonAccreditedInvestorsLimit();
        return
        nonAccreditedInvestorLimit != 0 &&
        ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]).getTotalInvestorsCount() -
            ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]).getAccreditedInvestorsCount()
        >=
        nonAccreditedInvestorLimit &&
        isNewInvestor(_services, _to, toInvestorBalance) &&
        (isAccredited(_services, _from) || fromInvestorBalance > _value);
    }

    function newPreTransferCheck(
        address[] calldata _services,
        address _from,
        address _to,
        uint256 _value,
        uint256 _balanceFrom,
        bool _paused
    ) public view returns (uint256 code, string memory reason) {
        return doPreTransferCheckRegulated
        (_services, _from, _to, _value, _balanceFrom, _paused);
    }

    function preTransferCheck(
        address[] calldata _services,
        address _from,
        address _to,
        uint256 _value
    ) public view returns (uint256 code, string memory reason) {
        return doPreTransferCheckRegulated(_services, _from, _to, _value, IDSToken(_services[DS_TOKEN]).balanceOf(_from), IDSToken(_services[DS_TOKEN]).isPaused());
    }

    function doPreTransferCheckRegulated(
        address[] memory _services,
        address _from,
        address _to,
        uint256 _value,
        uint256 _balanceFrom,
        bool _paused
    ) internal view returns (uint256 code, string memory reason) {

        if (_balanceFrom < _value) {
            return (15, NOT_ENOUGH_TOKENS);
        }

        uint256 fromInvestorBalance = balanceOfInvestor(_services, _from);
        uint256 fromRegion = getCountryCompliance(_services, _from);
        bool isPlatformWalletTo = IDSWalletManager(_services[WALLET_MANAGER]).isPlatformWallet(_to);
        if (isPlatformWalletTo) {
            if (
                ((IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getForceFullTransfer()
                && (fromRegion == US)) ||
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getWorldWideForceFullTransfer()) &&
                fromInvestorBalance > _value
            ) {
                return (50, ONLY_FULL_TRANSFER);
            }
            return (0, VALID);
        }

        if (_paused && !(isOmnibusTBE(IDSOmnibusTBEController(_services[OMNIBUS_TBE_CONTROLLER]), _from))) {
            return (10, TOKEN_PAUSED);
        }

        CompletePreTransferCheckArgs memory args = CompletePreTransferCheckArgs(_from, _to, _value, fromInvestorBalance, fromRegion, isPlatformWalletTo);
        return completeTransferCheck(_services, args);
    }

    function completeTransferCheck(
        address[] memory _services,
        CompletePreTransferCheckArgs memory _args
    ) internal view returns (uint256 code, string memory reason) {
        (string memory investorFrom, string memory investorTo) = IDSRegistryService(_services[REGISTRY_SERVICE]).getInvestors(_args.from, _args.to);
        if (
            !CommonUtils.isEmptyString(investorFrom) && CommonUtils.isEqualString(investorFrom, investorTo)
        ) {
            return (0, VALID);
        }

        if (!ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]).checkWhitelisted(_args.to)) {
            return (20, WALLET_NOT_IN_REGISTRY_SERVICE);
        }

        uint256 toRegion = getCountryCompliance(_services, _args.to);
        if (toRegion == FORBIDDEN) {
            return (26, DESTINATION_RESTRICTED);
        }

        if (isOmnibusTBE(IDSOmnibusTBEController(_services[OMNIBUS_TBE_CONTROLLER]), _args.from)) {
            return(0, VALID);
        }

        bool isPlatformWalletFrom = IDSWalletManager(_services[WALLET_MANAGER]).isPlatformWallet(_args.from);
        if (
            !isPlatformWalletFrom &&
        IDSLockManager(_services[LOCK_MANAGER]).getTransferableTokens(_args.from, block.timestamp) < _args.value
        ) {
            return (16, TOKENS_LOCKED);
        }

        if (_args.fromRegion == US) {
            if (checkHoldUp(_services, _args.from, _args.value, true, isPlatformWalletFrom)) {
                return (32, HOLD_UP);
            }

            if (
                _args.fromInvestorBalance > _args.value &&
                _args.fromInvestorBalance - _args.value < IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getMinUSTokens()
            ) {
                return (51, AMOUNT_OF_TOKENS_UNDER_MIN);
            }

            if (
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getForceFullTransfer() &&
                _args.fromInvestorBalance > _args.value
            ) {
                return (50, ONLY_FULL_TRANSFER);
            }
        } else {
            if (checkHoldUp(_services, _args.from, _args.value, false, isPlatformWalletFrom)) {
                return (33, HOLD_UP);
            }

            if (
                toRegion == US &&
                !isPlatformWalletFrom &&
                isBlockFlowbackEndTimeOk(IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getBlockFlowbackEndTime())
            ) {
                return (25, FLOWBACK);
            }

            if (
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getWorldWideForceFullTransfer() &&
                _args.fromInvestorBalance > _args.value
            ) {
                return (50, ONLY_FULL_TRANSFER);
            }
        }

        uint256 toInvestorBalance = balanceOfInvestor(_services, _args.to);
        string memory toCountry = getCountry(_services, _args.to);

        if (_args.fromRegion == EU) {
            if (_args.fromInvestorBalance - _args.value < IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getMinEUTokens() &&
                _args.fromInvestorBalance > _args.value) {
                return (51, AMOUNT_OF_TOKENS_UNDER_MIN);
            }
        }

        bool isAccreditedTo = isAccredited(_services, _args.to);
        if (
            IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getForceAccredited() && !isAccreditedTo
        ) {
            return (61, ONLY_ACCREDITED);
        }

        if (toRegion == JP) {
            if (
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getJPInvestorsLimit() != 0 &&
                ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]).getJPInvestorsCount() >=
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getJPInvestorsLimit() &&
                isNewInvestor(_services, _args.to, toInvestorBalance) &&
                (!CommonUtils.isEqualString(getCountry(_services, _args.from), toCountry) || (_args.fromInvestorBalance > _args.value))
            ) {
                return (40, MAX_INVESTORS_IN_CATEGORY);
            }
        } else if (toRegion == EU) {
            if (
                isRetail(_services, _args.to) &&
                ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]).getEURetailInvestorsCount(toCountry) >=
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getEURetailInvestorsLimit() &&
                isNewInvestor(_services, _args.to, toInvestorBalance) &&
                (!CommonUtils.isEqualString(getCountry(_services, _args.from), toCountry) ||
                (_args.fromInvestorBalance > _args.value && isRetail(_services, _args.from)))
            ) {
                return (40, MAX_INVESTORS_IN_CATEGORY);
            }

            if (
                toInvestorBalance + _args.value < IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getMinEUTokens()
            ) {
                return (51, AMOUNT_OF_TOKENS_UNDER_MIN);
            }
        } else if (toRegion == US) {
            if (
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getForceAccreditedUS() &&
                !isAccreditedTo
            ) {
                return (62, ONLY_US_ACCREDITED);
            }

            uint256 usInvestorsLimit = getUSInvestorsLimit(_services);
            if (
                usInvestorsLimit != 0 &&
                _args.fromInvestorBalance > _args.value &&
                ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]).getUSInvestorsCount() >= usInvestorsLimit &&
                isNewInvestor(_services, _args.to, toInvestorBalance)
            ) {
                return (40, MAX_INVESTORS_IN_CATEGORY);
            }

            if (
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getUSAccreditedInvestorsLimit() != 0 &&
                isAccreditedTo &&
                ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]).getUSAccreditedInvestorsCount() >=
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getUSAccreditedInvestorsLimit() &&
                isNewInvestor(_services, _args.to, toInvestorBalance) &&
                (_args.fromRegion != US || !isAccredited(_services, _args.from) || _args.fromInvestorBalance > _args.value)
            ) {
                return (40, MAX_INVESTORS_IN_CATEGORY);
            }

            if (
                toInvestorBalance + _args.value < IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getMinUSTokens()
            ) {
                return (51, AMOUNT_OF_TOKENS_UNDER_MIN);
            }
        }

        if (!isAccreditedTo) {
            if (maxInvestorsInCategoryForNonAccredited(_services, _args.from, _args.to, _args.value, _args.fromInvestorBalance, toInvestorBalance)) {
                return (40, MAX_INVESTORS_IN_CATEGORY);
            }
        }

        if (
            IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getTotalInvestorsLimit() != 0 &&
            _args.fromInvestorBalance > _args.value &&
            ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]).getTotalInvestorsCount() >=
            IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getTotalInvestorsLimit() &&
            isNewInvestor(_services, _args.to, toInvestorBalance)
        ) {
            return (40, MAX_INVESTORS_IN_CATEGORY);
        }

        if (
            _args.fromInvestorBalance == _args.value &&
            !isNewInvestor(_services, _args.to, toInvestorBalance) &&
            ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]).getTotalInvestorsCount() <=
            IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getMinimumTotalInvestors()
        ) {
            return (71, NOT_ENOUGH_INVESTORS);
        }

        if (
            !isPlatformWalletFrom &&
        _args.fromInvestorBalance - _args.value < IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getMinimumHoldingsPerInvestor() &&
        _args.fromInvestorBalance > _args.value
        ) {
            return (51, AMOUNT_OF_TOKENS_UNDER_MIN);
        }

        if (
            !_args.isPlatformWalletTo &&
        toInvestorBalance + _args.value < IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getMinimumHoldingsPerInvestor()
        ) {
            return (51, AMOUNT_OF_TOKENS_UNDER_MIN);
        }

        if (
            isMaximumHoldingsPerInvestorOk(
                IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]).getMaximumHoldingsPerInvestor(),
                toInvestorBalance, _args.value)
        ) {
            return (52, AMOUNT_OF_TOKENS_ABOVE_MAX);
        }

        return (0, VALID);
    }


    function preIssuanceCheck(
        address[] calldata _services,
        address _to,
        uint256 _value
    ) public view returns (uint256 code, string memory reason) {
        ComplianceServiceRegulated complianceService = ComplianceServiceRegulated(_services[COMPLIANCE_SERVICE]);
        IDSComplianceConfigurationService complianceConfigurationService = IDSComplianceConfigurationService(_services[COMPLIANCE_CONFIGURATION_SERVICE]);
        IDSWalletManager walletManager = IDSWalletManager(_services[WALLET_MANAGER]);
        string memory toCountry = IDSRegistryService(_services[REGISTRY_SERVICE]).getCountry(IDSRegistryService(_services[REGISTRY_SERVICE]).getInvestor(_to));
        uint256 toRegion = complianceConfigurationService.getCountryCompliance(toCountry);

        if (toRegion == FORBIDDEN) {
            return (26, DESTINATION_RESTRICTED);
        }

        if (!complianceService.checkWhitelisted(_to)) {
            return (20, WALLET_NOT_IN_REGISTRY_SERVICE);
        }

        uint256 balanceOfInvestorTo = balanceOfInvestor(_services, _to);
        if (isNewInvestor(_services, _to, balanceOfInvestorTo)) {
            // verify global non accredited limit
            if (!isAccredited(_services, _to)) {
                if (
                    complianceConfigurationService.getNonAccreditedInvestorsLimit() != 0 &&
                    complianceService.getTotalInvestorsCount() - complianceService.getAccreditedInvestorsCount() >=
                    complianceConfigurationService.getNonAccreditedInvestorsLimit()
                ) {
                    return (40, MAX_INVESTORS_IN_CATEGORY);
                }
            }
            // verify global investors limit
            if (
                complianceConfigurationService.getTotalInvestorsLimit() != 0 &&
                complianceService.getTotalInvestorsCount() >= complianceConfigurationService.getTotalInvestorsLimit()
            ) {
                return (40, MAX_INVESTORS_IN_CATEGORY);
            }

            if (toRegion == US) {
                // verify US investors limit is not exceeded
                if (complianceConfigurationService.getUSInvestorsLimit() != 0 && complianceService.getUSInvestorsCount() >= complianceConfigurationService.getUSInvestorsLimit()) {
                    return (40, MAX_INVESTORS_IN_CATEGORY);
                }
                // verify accredited US limit is not exceeded
                if (
                    complianceConfigurationService.getUSAccreditedInvestorsLimit() != 0 &&
                    isAccredited(_services, _to) &&
                    complianceService.getUSAccreditedInvestorsCount() >= complianceConfigurationService.getUSAccreditedInvestorsLimit()
                ) {
                    return (40, MAX_INVESTORS_IN_CATEGORY);
                }
            } else if (toRegion == EU) {
                if (
                    isRetail(_services, _to) &&
                    complianceService.getEURetailInvestorsCount(getCountry(_services, _to)) >= complianceConfigurationService.getEURetailInvestorsLimit()
                ) {
                    return (40, MAX_INVESTORS_IN_CATEGORY);
                }
            } else if (toRegion == JP) {
                if (complianceConfigurationService.getJPInvestorsLimit() != 0 && complianceService.getJPInvestorsCount() >= complianceConfigurationService.getJPInvestorsLimit()) {
                    return (40, MAX_INVESTORS_IN_CATEGORY);
                }
            }
        }

        if (
            !walletManager.isPlatformWallet(_to) &&
        balanceOfInvestorTo + _value < complianceConfigurationService.getMinimumHoldingsPerInvestor()
        ) {
            return (51, AMOUNT_OF_TOKENS_UNDER_MIN);
        }
        if (isMaximumHoldingsPerInvestorOk(
                complianceConfigurationService.getMaximumHoldingsPerInvestor(),
                balanceOfInvestorTo,
                _value)
        ) {
            return (52, AMOUNT_OF_TOKENS_ABOVE_MAX);
        }

        return (0, VALID);
    }

    function isMaximumHoldingsPerInvestorOk(uint256 _maximumHoldingsPerInvestor, uint256 _balanceOfInvestorTo, uint256 _value) internal pure returns (bool) {
        return _maximumHoldingsPerInvestor != 0 && _balanceOfInvestorTo + _value > _maximumHoldingsPerInvestor;
    }

    function isBlockFlowbackEndTimeOk(uint256 _blockFlowBackEndTime) private view returns (bool){
        return  (_blockFlowBackEndTime == 0 || _blockFlowBackEndTime > block.timestamp);
    }
}

/**
 *   @title Concrete compliance service for tokens with regulation
 *
 */

contract ComplianceServiceRegulated is ComplianceServiceWhitelisted {

    function initialize() public virtual override onlyProxy initializer {
        super.initialize();
    }

    function compareInvestorBalance(
        address _who,
        uint256 _value,
        uint256 _compareTo
    ) internal view returns (bool) {
        return (_value != 0 && getToken().balanceOfInvestor(getRegistryService().getInvestor(_who)) == _compareTo);
    }

    function recordTransfer(
        address _from,
        address _to,
        uint256 _value
    ) internal override returns (bool) {
        if (!(ComplianceServiceLibrary.isOmnibusTBE(getOmnibusTBEController(), _from) ||
        ComplianceServiceLibrary.isOmnibusTBE(getOmnibusTBEController(), _to))) {
            if (compareInvestorBalance(_to, _value, 0)) {
                adjustTransferCounts(_to, CommonUtils.IncDec.Increase);
            }
        }

        return true;
    }

    function adjustTransferCounts(
        address _from,
        CommonUtils.IncDec _increase
    ) internal {
        adjustTotalInvestorsCounts(_from, _increase);
    }

    function recordIssuance(
        address _to,
        uint256 _value,
        uint256 _issuanceTime
    ) internal override returns (bool) {
        if (compareInvestorBalance(_to, _value, 0)) {
            adjustTotalInvestorsCounts(_to, CommonUtils.IncDec.Increase);
        }

        return createIssuanceInformation(getRegistryService().getInvestor(_to), _value, _issuanceTime);
    }

    function recordBurn(address /*_who*/, uint256 /*_value*/) internal pure override returns (bool) {
        return true;
    }

    function recordSeize(
        address _from,
        address, /*_to*/
        uint256 _value
    ) internal pure override returns (bool) {
        return recordBurn(_from, _value);
    }

    function adjustInvestorCountsAfterCountryChange(
        string memory _id,
        string memory _country,
        string memory /*_prevCountry*/
    ) public override onlyRegistry returns (bool) {
        if (getToken().balanceOfInvestor(_id) == 0) {
            return false;
        }

        adjustInvestorsCountsByCountry(_country, _id, CommonUtils.IncDec.Increase);

        return true;
    }

    function adjustTotalInvestorsCounts(address _wallet, CommonUtils.IncDec _increase) internal {
        if (!getWalletManager().isSpecialWallet(_wallet)) {
            if (_increase == CommonUtils.IncDec.Increase) {
                totalInvestors++;
            }

            string memory id = getRegistryService().getInvestor(_wallet);
            string memory country = getRegistryService().getCountry(id);

            adjustInvestorsCountsByCountry(country, id, _increase);
        }
    }

    function adjustInvestorsCountsByCountry(
        string memory _country,
        string memory _id,
        CommonUtils.IncDec _increase
    ) internal {
        uint256 countryCompliance = getComplianceConfigurationService().getCountryCompliance(_country);

        if (getRegistryService().isAccreditedInvestor(_id)) {
            if(_increase == CommonUtils.IncDec.Increase) {
                accreditedInvestorsCount++;
            }
            if (countryCompliance == US) {
                if(_increase == CommonUtils.IncDec.Increase) {
                    usAccreditedInvestorsCount++;
                }
            }
        }

        if (countryCompliance == US) {
            if(_increase == CommonUtils.IncDec.Increase) {
                usInvestorsCount++;
            }
        } else if (countryCompliance == EU && !getRegistryService().isQualifiedInvestor(_id)) {
            if(_increase == CommonUtils.IncDec.Increase) {
                euRetailInvestorsCount[_country]++;
            }
        } else if (countryCompliance == JP) {
            if(_increase == CommonUtils.IncDec.Increase) {
                jpInvestorsCount++;
            }
        }
    }

    function createIssuanceInformation(
        string memory _investor,
        uint256 _value,
        uint256 _issuanceTime
    ) internal returns (bool) {
        uint256 issuancesCount = issuancesCounters[_investor];

        issuancesValues[_investor][issuancesCount] = _value;
        issuancesTimestamps[_investor][issuancesCount] = _issuanceTime;
        issuancesCounters[_investor] = issuancesCount + 1;

        return true;
    }

    function preTransferCheck(
        address _from,
        address _to,
        uint256 _value
    ) public view virtual override returns (uint256 code, string memory reason) {
        return ComplianceServiceLibrary.preTransferCheck(getServices(), _from, _to, _value);
    }

    function newPreTransferCheck(
        address _from,
        address _to,
        uint256 _value,
        uint256 _balanceFrom,
        bool _pausedToken
    ) public view virtual override returns (uint256 code, string memory reason) {
        return ComplianceServiceLibrary.newPreTransferCheck(getServices(), _from, _to, _value, _balanceFrom, _pausedToken);
    }

    function preInternalTransferCheck(
        address _from,
        address _to,
        uint256 _value)
    public view override returns (uint256 code, string memory reason) {
        return ComplianceServiceLibrary.preTransferCheck(getServices(), _from, _to, _value);
    }

    function getComplianceTransferableTokens(
        address _who,
        uint256 _time,
        uint64 _lockTime
    ) public view override returns (uint256) {
        require(_time != 0, "Time must be greater than zero");
        string memory investor = getRegistryService().getInvestor(_who);

        uint256 balanceOfInvestor = getLockManager().getTransferableTokens(_who, _time);

        uint256 investorIssuancesCount = issuancesCounters[investor];

        //No locks, go to base class implementation
        if (investorIssuancesCount == 0) {
            return balanceOfInvestor;
        }

        uint256 totalLockedTokens = 0;
        for (uint256 i = 0; i < investorIssuancesCount; i++) {
            uint256 issuanceTimestamp = issuancesTimestamps[investor][i];

            if (uint256(_lockTime) > _time || issuanceTimestamp > (_time - uint256(_lockTime))) {
                totalLockedTokens = totalLockedTokens + issuancesValues[investor][i];
            }
        }

        //there may be more locked tokens than actual tokens, so the minimum between the two
        uint256 transferable = balanceOfInvestor - Math.min(totalLockedTokens, balanceOfInvestor);

        return transferable;
    }

    function preIssuanceCheck(address _to, uint256 _value) public view override returns (uint256 code, string memory reason) {
        return ComplianceServiceLibrary.preIssuanceCheck(getServices(), _to, _value);
    }

    function getTotalInvestorsCount() public view returns (uint256) {
        return totalInvestors;
    }

    function getUSInvestorsCount() public view returns (uint256) {
        return usInvestorsCount;
    }

    function getUSAccreditedInvestorsCount() public view returns (uint256) {
        return usAccreditedInvestorsCount;
    }

    function getAccreditedInvestorsCount() public view returns (uint256) {
        return accreditedInvestorsCount;
    }

    function getEURetailInvestorsCount(string calldata _country) public view returns (uint256) {
        return euRetailInvestorsCount[_country];
    }

    function getJPInvestorsCount() public view returns (uint256) {
        return jpInvestorsCount;
    }

    function setTotalInvestorsCount(uint256 _value) public onlyMasterOrTBEOmnibus returns (bool) {
        totalInvestors = _value;

        return true;
    }

    function setUSInvestorsCount(uint256 _value) public onlyMasterOrTBEOmnibus returns (bool) {
        usInvestorsCount = _value;

        return true;
    }

    function setUSAccreditedInvestorsCount(uint256 _value) public onlyMasterOrTBEOmnibus returns (bool) {
        usAccreditedInvestorsCount = _value;

        return true;
    }

    function setAccreditedInvestorsCount(uint256 _value) public onlyMasterOrTBEOmnibus returns (bool) {
        accreditedInvestorsCount = _value;

        return true;
    }

    function setEURetailInvestorsCount(string calldata _country, uint256 _value) public onlyMasterOrTBEOmnibus returns (bool) {
        euRetailInvestorsCount[_country] = _value;

        return true;
    }

    function setJPInvestorsCount(uint256 _value) public onlyMasterOrTBEOmnibus returns (bool) {
        jpInvestorsCount = _value;

        return true;
    }

    function getServices() internal view returns (address[] memory services) {
        services = new address[](7);
        services[0] = getDSService(DS_TOKEN);
        services[1] = getDSService(REGISTRY_SERVICE);
        services[2] = getDSService(WALLET_MANAGER);
        services[3] = getDSService(COMPLIANCE_CONFIGURATION_SERVICE);
        services[4] = getDSService(LOCK_MANAGER);
        services[5] = address(this);
        services[6] = getDSService(OMNIBUS_TBE_CONTROLLER);
    }
}

// ============================================================
// FILE: contracts/compliance/ComplianceServiceWhitelisted.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./ComplianceService.sol";

/**
*   @title Concrete compliance service for tokens with whitelisted wallets.
*
*   This simple compliance service is meant to be used for tokens that only need to be validated against an investor registry.
*/

contract ComplianceServiceWhitelisted is ComplianceService {

    function initialize() public virtual override onlyProxy initializer {
        ComplianceService.initialize();
    }

    function newPreTransferCheck(
        address _from,
        address _to,
        uint256 _value,
        uint256 _balanceFrom,
        bool _pausedToken
    ) public view virtual override returns (uint256 code, string memory reason) {
        return doPreTransferCheckWhitelisted(_from, _to, _value, _balanceFrom, _pausedToken);
    }

    function preTransferCheck(
        address _from,
        address _to,
        uint256 _value
    ) public view virtual override returns (uint256 code, string memory reason) {
        return doPreTransferCheckWhitelisted(_from, _to, _value, getToken().balanceOf(_from), getToken().isPaused());
    }

    function checkWhitelisted(address _who) public view returns (bool) {
        return getWalletManager().isPlatformWallet(_who) || !CommonUtils.isEmptyString(getRegistryService().getInvestor(_who));
    }

    function recordIssuance(address, uint256, uint256) internal virtual override returns (bool) {
        return true;
    }

    function recordTransfer(address, address, uint256) internal virtual override returns (bool) {
        return true;
    }

    function checkTransfer(address, address _to, uint256) internal view override returns (uint256, string memory) {
        if (!checkWhitelisted(_to)) {
            return (20, WALLET_NOT_IN_REGISTRY_SERVICE);
        }

        return (0, VALID);
    }

    function preIssuanceCheck(address _to, uint256) public view virtual override returns (uint256, string memory) {
        if (!checkWhitelisted(_to)) {
            return (20, WALLET_NOT_IN_REGISTRY_SERVICE);
        }

        return (0, VALID);
    }

    function recordBurn(address, uint256) internal virtual override returns (bool) {
        return true;
    }

    function recordSeize(address, address, uint256) internal virtual override returns (bool) {
        return true;
    }

    function doPreTransferCheckWhitelisted(
        address _from,
        address _to,
        uint256 _value,
        uint256 _balanceFrom,
        bool _pausedToken
    ) internal view returns (uint256 code, string memory reason) {
        if (_pausedToken) {
            return (10, TOKEN_PAUSED);
        }

        if (_balanceFrom < _value) {
            return (15, NOT_ENOUGH_TOKENS);
        }

        if (!getWalletManager().isPlatformWallet(_from) && getLockManager().getTransferableTokens(_from, block.timestamp) < _value) {
            return (16, TOKENS_LOCKED);
        }

        return checkTransfer(_from, _to, _value);
    }

    function getComplianceTransferableTokens(
        address _who,
        uint256 _time,
        uint64 /*_lockTime*/
    ) public view virtual override returns (uint256) {
        require(_time > 0, "Time must be greater than zero");
        return getLockManager().getTransferableTokens(_who, _time);
    }
}

// ============================================================
// FILE: contracts/compliance/IDSComplianceConfigurationService.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

abstract contract IDSComplianceConfigurationService {

    function initialize() public virtual;

    event DSComplianceUIntRuleSet(string ruleName, uint256 prevValue, uint256 newValue);
    event DSComplianceBoolRuleSet(string ruleName, bool prevValue, bool newValue);
    event DSComplianceStringToUIntMapRuleSet(string ruleName, string keyValue, uint256 prevValue, uint256 newValue);

    function getCountryCompliance(string memory _country) public view virtual returns (uint256);

    function setCountriesCompliance(string[] calldata _countries, uint256[] calldata _values) public virtual;

    function setCountryCompliance(
        string calldata _country,
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getTotalInvestorsLimit() public view virtual returns (uint256);

    function setTotalInvestorsLimit(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getMinUSTokens() public view virtual returns (uint256);

    function setMinUSTokens(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getMinEUTokens() public view virtual returns (uint256);

    function setMinEUTokens(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getUSInvestorsLimit() public view virtual returns (uint256);

    function setUSInvestorsLimit(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getJPInvestorsLimit() public view virtual returns (uint256);

    function setJPInvestorsLimit(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getUSAccreditedInvestorsLimit() public view virtual returns (uint256);

    function setUSAccreditedInvestorsLimit(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getNonAccreditedInvestorsLimit() public view virtual returns (uint256);

    function setNonAccreditedInvestorsLimit(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getMaxUSInvestorsPercentage() public view virtual returns (uint256);

    function setMaxUSInvestorsPercentage(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getBlockFlowbackEndTime() public view virtual returns (uint256);

    function setBlockFlowbackEndTime(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getNonUSLockPeriod() public view virtual returns (uint256);

    function setNonUSLockPeriod(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getMinimumTotalInvestors() public view virtual returns (uint256);

    function setMinimumTotalInvestors(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getMinimumHoldingsPerInvestor() public view virtual returns (uint256);

    function setMinimumHoldingsPerInvestor(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getMaximumHoldingsPerInvestor() public view virtual returns (uint256);

    function setMaximumHoldingsPerInvestor(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getEURetailInvestorsLimit() public view virtual returns (uint256);

    function setEURetailInvestorsLimit(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getUSLockPeriod() public view virtual returns (uint256);

    function setUSLockPeriod(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getForceFullTransfer() public view virtual returns (bool);

    function setForceFullTransfer(
        bool _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getForceAccredited() public view virtual returns (bool);

    function setForceAccredited(
        bool _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function setForceAccreditedUS(
        bool _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getForceAccreditedUS() public view virtual returns (bool);

    function setWorldWideForceFullTransfer(
        bool _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getWorldWideForceFullTransfer() public view virtual returns (bool);

    function getAuthorizedSecurities() public view virtual returns (uint256);

    function setAuthorizedSecurities(
        uint256 _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getDisallowBackDating() public view virtual returns (bool);

    function setDisallowBackDating(
        bool _value /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function setAll(
        uint256[] calldata _uint_values,
        bool[] calldata _bool_values /*onlyTransferAgentOrAbove*/
    ) public virtual;

    function getAll() public view virtual returns (uint256[] memory, bool[] memory);
}

// ============================================================
// FILE: contracts/compliance/IDSComplianceService.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

abstract contract IDSComplianceService {

    uint256 internal constant NONE = 0;
    uint256 internal constant US = 1;
    uint256 internal constant EU = 2;
    uint256 internal constant FORBIDDEN = 4;
    uint256 internal constant JP = 8;
    string internal constant TOKEN_PAUSED = "Token Paused";
    string internal constant NOT_ENOUGH_TOKENS = "Not Enough Tokens";
    string internal constant TOKENS_LOCKED = "Tokens Locked";
    string internal constant WALLET_NOT_IN_REGISTRY_SERVICE = "Wallet not in registry Service";
    string internal constant DESTINATION_RESTRICTED = "Destination restricted";
    string internal constant VALID = "Valid";
    string internal constant HOLD_UP = "Under lock-up";
    string internal constant ONLY_FULL_TRANSFER = "Only Full Transfer";
    string internal constant FLOWBACK = "Flowback";
    string internal constant MAX_INVESTORS_IN_CATEGORY = "Max Investors in category";
    string internal constant AMOUNT_OF_TOKENS_UNDER_MIN = "Amount of tokens under min";
    string internal constant AMOUNT_OF_TOKENS_ABOVE_MAX = "Amount of tokens above max";
    string internal constant ONLY_ACCREDITED = "Only accredited";
    string internal constant ONLY_US_ACCREDITED = "Only us accredited";
    string internal constant NOT_ENOUGH_INVESTORS = "Not enough investors";
    string internal constant MAX_AUTHORIZED_SECURITIES_EXCEEDED = "Max authorized securities exceeded";

    function initialize() public virtual;

    function adjustInvestorCountsAfterCountryChange(
        string memory _id,
        string memory _country,
        string memory _prevCountry
    ) public virtual returns (bool);

    //*****************************************
    // TOKEN ACTION VALIDATIONS
    //*****************************************

    function validateTransfer(
        address _from,
        address _to,
        uint256 _value /*onlyToken*/
    ) public virtual returns (bool);

    function validateTransfer(
        address _from,
        address _to,
        uint256 _value, /*onlyToken*/
        bool _pausedToken,
        uint256 _balanceFrom
    ) public virtual returns (bool);

    function validateIssuance(
        address _to,
        uint256 _value,
        uint256 _issuanceTime /*onlyToken*/
    ) public virtual returns (bool);

    function validateIssuanceWithNoCompliance(
        address _to,
        uint256 _value,
        uint256 _issuanceTime /*onlyToken*/
    ) public virtual returns (bool);

    function validateBurn(
        address _who,
        uint256 _value /*onlyToken*/
    ) public virtual returns (bool);

    function validateSeize(
        address _from,
        address _to,
        uint256 _value /*onlyToken*/
    ) public virtual returns (bool);

    function preIssuanceCheck(address _to, uint256 _value) public view virtual returns (uint256 code, string memory reason);

    function preTransferCheck(
        address _from,
        address _to,
        uint256 _value
    ) public view virtual returns (uint256 code, string memory reason);

    function newPreTransferCheck(
        address _from,
        address _to,
        uint256 _value,
        uint256 _balanceFrom,
        bool _pausedToken
    ) public view virtual returns (uint256 code, string memory reason);

    function preInternalTransferCheck(
        address _from,
        address _to,
        uint256 _value
    ) public view virtual returns (uint256 code, string memory reason);

    function validateIssuanceTime(uint256 _issuanceTime) public view virtual returns (uint256 issuanceTime);

    function getComplianceTransferableTokens(
        address _who,
        uint256 _time,
        uint64 _lockTime
    ) public view virtual returns (uint256);
}

// ============================================================
// FILE: contracts/compliance/IDSComplianceServicePartitioned.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./IDSComplianceService.sol";

abstract contract IDSComplianceServicePartitioned is IDSComplianceService {

    function initialize() public virtual override;

    function getComplianceTransferableTokens(
        address _who,
        uint256 _time,
        bool _checkFlowback
    ) public view virtual returns (uint256 transferable);

    function getComplianceTransferableTokens(
        address _who,
        uint256 _time,
        bool _checkFlowback,
        bytes32 _partition
    ) public view virtual returns (uint256);

    function getComplianceTransferableTokens(
        address _who,
        uint256 _time,
        address _to
    ) public view virtual returns (uint256 transferable);

    function getComplianceTransferableTokens(
        address _who,
        uint256 _time,
        address _to,
        bytes32 _partition
    ) public view virtual returns (uint256);
}

// ============================================================
// FILE: contracts/compliance/IDSLockManager.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

abstract contract IDSLockManager {

    function initialize() public virtual;

    modifier validLock(uint256 _valueLocked, uint256 _releaseTime) {
        require(_valueLocked > 0, "Value is zero");
        require(_releaseTime == 0 || _releaseTime > uint256(block.timestamp), "Release time is in the past");
        _;
    }

    event Locked(address indexed who, uint256 value, uint256 indexed reason, string reasonString, uint256 releaseTime);
    event Unlocked(address indexed who, uint256 value, uint256 indexed reason, string reasonString, uint256 releaseTime);

    event HolderLocked(string holderId, uint256 value, uint256 indexed reason, string reasonString, uint256 releaseTime);
    event HolderUnlocked(string holderId, uint256 value, uint256 indexed reason, string reasonString, uint256 releaseTime);
    /**
     * @dev creates a lock record for wallet address
     * @param _to address to lock the tokens at
     * @param _valueLocked value of tokens to lock
     * @param _reason reason for lock
     * @param _releaseTime timestamp to release the lock (or 0 for locks which can only released by an unlockTokens call)
     * Note: The user MAY have at a certain time more locked tokens than actual tokens
     */

    function addManualLockRecord(
        address _to,
        uint256 _valueLocked,
        string calldata _reason,
        uint256 _releaseTime /*issuerOrAboveOrToken*/
    ) public virtual;

    /**
     * @dev creates a lock record for investor Id
     * @param _investor investor id to lock the tokens at
     * @param _valueLocked value of tokens to lock
     * @param _reasonCode reason code for lock
     * @param _reasonString reason for lock
     * @param _releaseTime timestamp to release the lock (or 0 for locks which can only released by an unlockTokens call)
     * Note: The user MAY have at a certain time more locked tokens than actual tokens
     */

    function createLockForInvestor(
        string memory _investor,
        uint256 _valueLocked,
        uint256 _reasonCode,
        string calldata _reasonString,
        uint256 _releaseTime /*onlyIssuerOrAboveOrToken*/
    ) public virtual;

    /**
     * @dev Releases a specific lock record for a wallet
     * @param _to address to release the tokens for
     * @param _lockIndex the index of the lock to remove
     *
     * note - this may change the order of the locks on an address, so if iterating the iteration should be restarted.
     * @return true on success
     */
    function removeLockRecord(
        address _to,
        uint256 _lockIndex /*issuerOrAbove*/
    ) public virtual returns (bool);

    /**
     * @dev Releases a specific lock record for a investor
     * @param _investorId investor id to release the tokens for
     * @param _lockIndex the index of the lock to remove
     *
     * note - this may change the order of the locks on an address, so if iterating the iteration should be restarted.
     * @return true on success
     */
    function removeLockRecordForInvestor(
        string memory _investorId,
        uint256 _lockIndex /*onlyIssuerOrAbove*/
    ) public virtual returns (bool);

    /**
     * @dev Get number of locks currently associated with an address
     * @param _who address to get count for
     *
     * @return number of locks
     *
     * Note - a lock can be inactive (due to its time expired) but still exists for a specific address
     */
    function lockCount(address _who) public view virtual returns (uint256);

    /**
     * @dev Get number of locks currently associated with a investor
     * @param _investorId investor id to get count for
     *
     * @return number of locks
     *
     * Note - a lock can be inactive (due to its time expired) but still exists for a specific address
     */

    function lockCountForInvestor(string memory _investorId) public view virtual returns (uint256);

    /**
     * @dev Get details of a specific lock associated with an address
     * can be used to iterate through the locks of a user
     * @param _who address to get token lock for
     * @param _lockIndex the 0 based index of the lock.
     * @return reasonCode the reason code
     * @return reasonString the reason for the lock
     * @return value the value of tokens locked
     * @return autoReleaseTime the timestamp in which the lock will be inactive (or 0 if it's always active until removed)
     *
     * Note - a lock can be inactive (due to its time expired) but still exists for a specific address
     */
    function lockInfo(address _who, uint256 _lockIndex) public view virtual returns (uint256 reasonCode, string memory reasonString, uint256 value, uint256 autoReleaseTime);

    /**
     * @dev Get details of a specific lock associated with a investor
     * can be used to iterate through the locks of a user
     * @param _investorId investorId to get token lock for
     * @param _lockIndex the 0 based index of the lock.
     * @return reasonCode the reason code
     * @return reasonString the reason for the lock
     * @return value the value of tokens locked
     * @return autoReleaseTime the timestamp in which the lock will be inactive (or 0 if it's always active until removed)
     *
     * Note - a lock can be inactive (due to its time expired) but still exists for a specific address
     */
    function lockInfoForInvestor(
        string memory _investorId,
        uint256 _lockIndex
    ) public view virtual  returns (uint256 reasonCode, string memory reasonString, uint256 value, uint256 autoReleaseTime);

    /**
     * @dev get total number of transferable tokens for a wallet, at a certain time
     * @param _who address to get number of transferable tokens for
     * @param _time time to calculate for
     */
    function getTransferableTokens(address _who, uint256 _time) public view virtual returns (uint256);

    /**
     * @dev get total number of transferable tokens for a investor, at a certain time
     * @param _investorId investor id
     * @param _time time to calculate for
     */
    function getTransferableTokensForInvestor(string memory _investorId, uint256 _time) public view virtual returns (uint256);

    /**
     * @dev pause investor
     * @param _investorId investor id
     */
    function lockInvestor(
        string memory _investorId /*issuerOrAbove*/
    ) public virtual returns (bool);

    /**
     * @dev unpauses investor
     * @param _investorId investor id
     */
    function unlockInvestor(
        string memory _investorId /*issuerOrAbove*/
    ) public virtual returns (bool);

    /**
     * @dev Returns true if paused, otherwise false
     * @param _investorId investor id
     */
    function isInvestorLocked(string memory _investorId) public view virtual returns (bool);
}

// ============================================================
// FILE: contracts/compliance/IDSLockManagerPartitioned.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./IDSLockManager.sol";

abstract contract IDSLockManagerPartitioned {

    event LockedPartition(address indexed who, uint256 value, uint256 indexed reason, string reasonString, uint256 releaseTime, bytes32 indexed partition);
    event UnlockedPartition(address indexed who, uint256 value, uint256 indexed reason, string reasonString, uint256 releaseTime, bytes32 indexed partition);
    event HolderLockedPartition(string investorId, uint256 value, uint256 indexed reason, string reasonString, uint256 releaseTime, bytes32 indexed partition);
    event HolderUnlockedPartition(string investorId, uint256 value, uint256 indexed reason, string reasonString, uint256 releaseTime, bytes32 indexed partition);

    function createLockForInvestor(
        string memory _investorId,
        uint256 _valueLocked,
        uint256 _reasonCode,
        string memory _reasonString,
        uint256 _releaseTime,
        bytes32 _partition
    ) public virtual;

    function addManualLockRecord(
        address _to,
        uint256 _valueLocked,
        string memory _reason,
        uint256 _releaseTime,
        bytes32 _partition /*issuerOrAboveOrToken*/
    ) public virtual;

    function removeLockRecord(
        address _to,
        uint256 _lockIndex,
        bytes32 _partition /*issuerOrAbove*/
    ) public virtual returns (bool);

    function removeLockRecordForInvestor(
        string memory _investorId,
        uint256 _lockIndex,
        bytes32 _partition /*issuerOrAbove*/
    ) public virtual returns (bool);

    function lockCount(address _who, bytes32 _partition) public view virtual returns (uint256);

    function lockInfo(
        address _who,
        uint256 _lockIndex,
        bytes32 _partition
    )
        public
        view
        virtual
        returns (
            uint256 reasonCode,
            string memory reasonString,
            uint256 value,
            uint256 autoReleaseTime
        );

    function lockCountForInvestor(string memory _investorId, bytes32 _partition) public view virtual returns (uint256);

    function lockInfoForInvestor(
        string memory _investorId,
        uint256 _lockIndex,
        bytes32 _partition
    )
        public
        view
        virtual
        returns (
            uint256 reasonCode,
            string memory reasonString,
            uint256 value,
            uint256 autoReleaseTime
        );

    function getTransferableTokens(
        address _who,
        uint256 _time,
        bytes32 _partition
    ) public view virtual returns (uint256);

    function getTransferableTokensForInvestor(
        string memory _investorId,
        uint256 _time,
        bytes32 _partition
    ) public view virtual returns (uint256);

    /*************** Legacy functions ***************/
    function createLockForHolder(
        string memory _investorId,
        uint256 _valueLocked,
        uint256 _reasonCode,
        string memory _reasonString,
        uint256 _releaseTime,
        bytes32 _partition
    ) public virtual;

    function removeLockRecordForHolder(
        string memory _investorId,
        uint256 _lockIndex,
        bytes32 _partition
    ) public virtual returns (bool);

    function lockCountForHolder(string memory _holderId, bytes32 _partition) public view virtual returns (uint256);

    function lockInfoForHolder(
        string memory _holderId,
        uint256 _lockIndex,
        bytes32 _partition
    )
        public
        view
        virtual
        returns (
            uint256 reasonCode,
            string memory reasonString,
            uint256 value,
            uint256 autoReleaseTime
        );

    function getTransferableTokensForHolder(
        string memory _holderId,
        uint256 _time,
        bytes32 _partition
    ) public view virtual returns (uint256);

    /******************************/
}

// ============================================================
// FILE: contracts/compliance/IDSPartitionsManager.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

abstract contract IDSPartitionsManager {

    event PartitionCreated(uint256 _date, uint256 _region, bytes32 _partition);

    function initialize() public virtual;

    function ensurePartition(
        uint256 _issuanceDate,
        uint256 _region /*onlyIssuerOrAboveOrToken*/
    ) public virtual returns (bytes32 partition);

    function getPartition(bytes32 _partition) public view virtual returns (uint256 date, uint256 region);

    function getPartitionIssuanceDate(bytes32 _partition) public view virtual returns (uint256);

    function getPartitionRegion(bytes32 _partition) public view virtual returns (uint256);
}

// ============================================================
// FILE: contracts/compliance/IDSWalletManager.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

abstract contract IDSWalletManager {

    function initialize() public virtual;

    // Special wallets constants
    uint8 public constant NONE = 0;
    uint8 public constant ISSUER = 1;
    uint8 public constant PLATFORM = 2;
    uint8 public constant EXCHANGE = 4;

    /**
     * @dev should be emitted when a special wallet is added.
     */
    event DSWalletManagerSpecialWalletAdded(address wallet, uint8 walletType, address sender);
    /**
     * @dev should be emitted when a special wallet is removed.
     */
    event DSWalletManagerSpecialWalletRemoved(address wallet, uint8 walletType, address sender);
    /**
     * @dev should be emitted when the number of reserved slots is set for a wallet.
     */
    event DSWalletManagerReservedSlotsSet(address wallet, string country, uint8 accreditationStatus, uint256 slots, address sender);

    /**
     * @dev Sets a wallet to be an special wallet. (internal)
     * @param _wallet The address of the wallet.
     * @param _type The type of the wallet.
     * @return A boolean that indicates if the operation was successful.
     */
    function setSpecialWallet(address _wallet, uint8 _type) internal virtual returns (bool);

    /**
     * @dev gets a wallet type
     * @param _wallet the address of the wallet to check.
     */
    function getWalletType(address _wallet) public view virtual returns (uint8);

    /**
     * @dev Returns true if it is platform wallet
     * @param _wallet the address of the wallet to check.
     */
    function isPlatformWallet(address _wallet) external view virtual returns (bool);

    /**
     * @dev Returns true if it is special wallet
     * @param _wallet the address of the wallet to check.
     */
    function isSpecialWallet(address _wallet) external view virtual returns (bool);

    /**
     * @dev Returns true if it is issuer special wallet
     * @param _wallet the address of the wallet to check.
     */
    function isIssuerSpecialWallet(address _wallet) external view virtual returns (bool);

    /**
     * @dev Sets a wallet to be an issuer wallet.
     * @param _wallet The address of the wallet.
     * @return A boolean that indicates if the operation was successful.
     */
    function addIssuerWallet(
        address _wallet /*onlyIssuerOrAbove*/
    ) public virtual returns (bool);

    /**
     * @dev Sets an array of wallets to be issuer wallets.
     * @param _wallets The address of the wallets.
     * @return A boolean that indicates if the operation was successful.
     */
    function addIssuerWallets(address[] memory _wallets) public virtual returns (bool);

    /**
     * @dev Sets a wallet to be a platform wallet.
     * @param _wallet The address of the wallet.
     * @return A boolean that indicates if the operation was successful.
     */
    function addPlatformWallet(
        address _wallet /*onlyIssuerOrAbove*/
    ) public virtual returns (bool);

    /**
     * @dev Sets an array of wallets to be platforms wallet.
     * @param _wallets The address of the wallets.
     * @return A boolean that indicates if the operation was successful.
     */
    function addPlatformWallets(address[] memory _wallets) public virtual returns (bool);

    /**
     * @dev Sets a wallet to be an exchange wallet.
     * @param _wallet The address of the wallet.
     * @param _owner The address of the owner.
     * @return A boolean that indicates if the operation was successful.
     */
    function addExchangeWallet(address _wallet, address _owner) public virtual returns (bool);

    /**
     * @dev Removes a special wallet.
     * @param _wallet The address of the wallet.
     * @return A boolean that indicates if the operation was successful.
     */
    function removeSpecialWallet(
        address _wallet /*onlyIssuerOrAbove*/
    ) public virtual returns (bool);
}

// ============================================================
// FILE: contracts/data-stores/ComplianceConfigurationDataStore.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./ServiceConsumerDataStore.sol";

contract ComplianceConfigurationDataStore is ServiceConsumerDataStore {
    mapping(string => uint256) public countriesCompliances;
    uint256 public totalInvestorsLimit;
    uint256 public minUSTokens;
    uint256 public minEUTokens;
    uint256 public usInvestorsLimit;
    uint256 public jpInvestorsLimit;
    uint256 public usAccreditedInvestorsLimit;
    uint256 public nonAccreditedInvestorsLimit;
    uint256 public maxUSInvestorsPercentage;
    uint256 public blockFlowbackEndTime;
    uint256 public nonUSLockPeriod;
    uint256 public minimumTotalInvestors;
    uint256 public minimumHoldingsPerInvestor;
    uint256 public maximumHoldingsPerInvestor;
    uint256 public euRetailInvestorsLimit;
    uint256 public usLockPeriod;
    bool public forceFullTransfer;
    bool public forceAccreditedUS;
    bool public forceAccredited;
    bool public worldWideForceFullTransfer;
    uint256 public authorizedSecurities;
    bool public disallowBackDating;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[31] private __gap;
}

// ============================================================
// FILE: contracts/data-stores/ComplianceServiceDataStore.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./ServiceConsumerDataStore.sol";

contract ComplianceServiceDataStore is ServiceConsumerDataStore {
    uint256 internal totalInvestors;
    uint256 internal accreditedInvestorsCount;
    uint256 internal usAccreditedInvestorsCount;
    uint256 internal usInvestorsCount;
    uint256 internal jpInvestorsCount;
    mapping(string => uint256) internal euRetailInvestorsCount;
    mapping(string => uint256) internal issuancesCounters;
    mapping(string => mapping(uint256 => uint256)) issuancesValues;
    mapping(string => mapping(uint256 => uint256)) issuancesTimestamps;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[41] private __gap;
}

// ============================================================
// FILE: contracts/data-stores/OmnibusTBEControllerDataStore.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./ServiceConsumerDataStore.sol";

contract OmnibusTBEControllerDataStore is ServiceConsumerDataStore {
    address internal omnibusWallet;
    bool internal isPartitionedToken;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/data-stores/ServiceConsumerDataStore.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

contract ServiceConsumerDataStore {

    mapping(uint256 => address) internal services;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/data-stores/TokenDataStore.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./ServiceConsumerDataStore.sol";
import '../token/TokenPartitionsLibrary.sol';
import '../token/TokenLibrary.sol';

contract TokenDataStore is ServiceConsumerDataStore {

    TokenLibrary.TokenData internal tokenData;
    mapping(address => mapping(address => uint256)) internal allowances;
    mapping(uint256 => address) internal walletsList;
    uint256 internal walletsCount;
    mapping(address => uint256) internal walletsToIndexes;
    TokenPartitionsLibrary.TokenPartitions internal partitionsManagement;
    uint256 public cap;
    string public name;
    string public symbol;
    uint8 public decimals;
    TokenLibrary.SupportedFeatures public supportedFeatures;
    bool internal paused;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[35] private __gap;
}

// ============================================================
// FILE: contracts/omnibus/IDSOmnibusTBEController.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "../service/ServiceConsumer.sol";
import "../data-stores/OmnibusTBEControllerDataStore.sol";

abstract contract IDSOmnibusTBEController {

    function initialize(address _omnibusWallet, bool _isPartitionedToken) public virtual;

    function bulkIssuance(
        uint256 value,
        uint256 issuanceTime,
        uint256 totalInvestors,
        uint256 accreditedInvestors,
        uint256 usAccreditedInvestors,
        uint256 usTotalInvestors,
        uint256 jpTotalInvestors,
        bytes32[] calldata euRetailCountries,
        uint256[] calldata euRetailCountryCounts
    ) public virtual;

    function bulkBurn(
        uint256 value,
        uint256 totalInvestors,
        uint256 accreditedInvestors,
        uint256 usAccreditedInvestors,
        uint256 usTotalInvestors,
        uint256 jpTotalInvestors,
        bytes32[] calldata euRetailCountries,
        uint256[] calldata euRetailCountryCounts
    ) public virtual;

    function bulkTransfer(address[] calldata wallets, uint256[] calldata values) public virtual;

    function adjustCounters(
        int256 totalDelta,
        int256 accreditedDelta,
        int256 usAccreditedDelta,
        int256 usTotalDelta,
        int256 jpTotalDelta,
        bytes32[] calldata euRetailCountries,
        int256[] calldata euRetailCountryDeltas
    ) public virtual;

    function getOmnibusWallet() public view virtual returns (address);
}

// ============================================================
// FILE: contracts/omnibus/IDSOmnibusWalletController.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

abstract contract IDSOmnibusWalletController {
    uint8 public constant BENEFICIARY = 0;
    uint8 public constant HOLDER_OF_RECORD = 1;

    function initialize(address _omnibusWallet) public virtual;

    function setAssetTrackingMode(uint8 _assetTrackingMode) public virtual;

    function getAssetTrackingMode() public view virtual returns (uint8);

    function isHolderOfRecord() public view virtual returns (bool);

    function balanceOf(address _who) public view virtual returns (uint256);

    function transfer(
        address _from,
        address _to,
        uint256 _value /*onlyOperator*/
    ) public virtual;

    function deposit(
        address _to,
        uint256 _value /*onlyToken*/
    ) public virtual;

    function withdraw(
        address _from,
        uint256 _value /*onlyToken*/
    ) public virtual;

    function seize(
        address _from,
        uint256 _value /*onlyToken*/
    ) public virtual;

    function burn(
        address _from,
        uint256 _value /*onlyToken*/
    ) public virtual;
}

// ============================================================
// FILE: contracts/omnibus/OmnibusTBEController.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "../data-stores/OmnibusTBEControllerDataStore.sol";
import "../compliance/ComplianceServiceRegulated.sol";
import "../compliance/ComplianceConfigurationService.sol";
import "../token/IDSTokenPartitioned.sol";
import "../utils/BaseDSContract.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract OmnibusTBEController is IDSOmnibusTBEController, OmnibusTBEControllerDataStore, BaseDSContract {

    using SafeERC20 for IDSToken;

    string internal constant MAX_INVESTORS_IN_CATEGORY = "Max investors in category";

    function initialize(address _omnibusWallet, bool _isPartitionedToken) public override onlyProxy initializer {
        require(_omnibusWallet != address(0), "Omnibus wallet can not be zero address");
        __BaseDSContract_init();

        omnibusWallet = _omnibusWallet;
        isPartitionedToken = _isPartitionedToken;
    }

    function bulkIssuance(
        uint256 value,
        uint256 issuanceTime,
        uint256 totalInvestors,
        uint256 accreditedInvestors,
        uint256 usAccreditedInvestors,
        uint256 usTotalInvestors,
        uint256 jpTotalInvestors,
        bytes32[] calldata euRetailCountries,
        uint256[] calldata euRetailCountryCounts
    ) public override onlyIssuerOrAbove {
        require(euRetailCountries.length == euRetailCountryCounts.length, 'EU Retail countries arrays do not match');
        // Issue tokens
        getToken().issueTokensCustom(omnibusWallet, value, issuanceTime, 0, '', 0);
        addToCounters(
            totalInvestors,
            accreditedInvestors,
            usAccreditedInvestors,
            usTotalInvestors,
            jpTotalInvestors,
            euRetailCountries,
            euRetailCountryCounts,
            true
        );
        emitTBEOperationEvent(totalInvestors, accreditedInvestors, usAccreditedInvestors, usTotalInvestors, jpTotalInvestors, true);
    }

    function bulkBurn(
        uint256 value,
        uint256 totalInvestors,
        uint256 accreditedInvestors,
        uint256 usAccreditedInvestors,
        uint256 usTotalInvestors,
        uint256 jpTotalInvestors,
        bytes32[] calldata euRetailCountries,
        uint256[] calldata euRetailCountryCounts
    ) public override onlyTransferAgentOrAbove {
        require(euRetailCountries.length == euRetailCountryCounts.length, 'EU Retail countries arrays do not match');

        if (isPartitionedToken) {
            IDSTokenPartitioned token = IDSTokenPartitioned(getDSService(DS_TOKEN));
            uint256 pendingBurn = value;
            uint256 currentPartitionBalance;
            bytes32 partition;
            while (pendingBurn > 0) {
                require(token.partitionCountOf(omnibusWallet) > 0, 'Not enough tokens in partitions to burn the required value');
                partition = token.partitionOf(omnibusWallet, 0);
                currentPartitionBalance = token.balanceOfByPartition(omnibusWallet, partition);
                require(currentPartitionBalance > 0, 'Not enough tokens in remaining partitions to burn the required value');
                uint256 amountToBurn = currentPartitionBalance >= pendingBurn ? pendingBurn : currentPartitionBalance;
                token.burnByPartition(omnibusWallet, amountToBurn, 'Omnibus burn by partition', partition);
                pendingBurn = pendingBurn - amountToBurn;
            }
        } else {
            // Burn non partitioned tokens
            getToken().burn(omnibusWallet, value, 'Omnibus');
        }

        emitTBEOperationEvent(totalInvestors, accreditedInvestors, usAccreditedInvestors, usTotalInvestors, jpTotalInvestors, false);
    }

    function bulkTransfer(address[] calldata wallets, uint256[] calldata values) public override onlyIssuerOrTransferAgentOrAbove {
        require(wallets.length == values.length, 'Wallets and values lengths do not match');
        for (uint i = 0; i < wallets.length; i++) {
            getToken().safeTransferFrom(omnibusWallet, wallets[i], values[i]);
        }
    }

    function internalTBETransfer(
        string memory externalId,
        int256 totalDelta,
        int256 accreditedDelta,
        int256 usAccreditedDelta,
        int256 usTotalDelta,
        int256 jpTotalDelta,
        bytes32[] calldata euRetailCountries,
        int256[] calldata euRetailCountryDeltas
    ) public onlyIssuerOrTransferAgentOrAbove {
        adjustCounters(
            totalDelta,
            accreditedDelta,
            usAccreditedDelta,
            usTotalDelta,
            jpTotalDelta,
            euRetailCountries,
            euRetailCountryDeltas
        );
        getToken().emitOmnibusTBETransferEvent(omnibusWallet, externalId);
    }

    function adjustCounters(
        int256 totalDelta,
        int256 accreditedDelta,
        int256 usAccreditedDelta,
        int256 usTotalDelta,
        int256 jpTotalDelta,
        bytes32[] calldata euRetailCountries,
        int256[] calldata euRetailCountryDeltas
    ) public override onlyIssuerOrTransferAgentOrAbove {
        require(euRetailCountries.length == euRetailCountryDeltas.length, 'Array lengths do not match');

        addToCounters(
            totalDelta > 0 ? SafeCast.toUint256(totalDelta) : 0,
            accreditedDelta > 0 ? SafeCast.toUint256(accreditedDelta) : 0,
            usAccreditedDelta > 0 ? SafeCast.toUint256(usAccreditedDelta) : 0,
            usTotalDelta > 0 ? SafeCast.toUint256(usTotalDelta) : 0,
            jpTotalDelta > 0 ? SafeCast.toUint256(jpTotalDelta) : 0,
            euRetailCountries,
            getUintEuCountriesDeltas(euRetailCountryDeltas, true),
            true
        );

        getToken().emitOmnibusTBEEvent(
            omnibusWallet,
            totalDelta,
            accreditedDelta,
            usAccreditedDelta,
            usTotalDelta,
            jpTotalDelta);
    }

    function getOmnibusWallet() public view override returns (address) {
        return omnibusWallet;
    }

    function addToCounters(uint256 _totalInvestors, uint256 _accreditedInvestors,
        uint256 _usAccreditedInvestors, uint256 _usTotalInvestors, uint256 _jpTotalInvestors, bytes32[] memory _euRetailCountries,
        uint256[] memory _euRetailCountryCounts, bool _increase) internal returns (bool) {
        if (_increase) {
            ComplianceServiceRegulated cs = ComplianceServiceRegulated(getDSService(COMPLIANCE_SERVICE));
            IDSComplianceConfigurationService ccs = IDSComplianceConfigurationService(getDSService(COMPLIANCE_CONFIGURATION_SERVICE));

            require(ccs.getNonAccreditedInvestorsLimit() == 0 || (cs.getTotalInvestorsCount() - cs.getAccreditedInvestorsCount()
            + _totalInvestors - _accreditedInvestors <= ccs.getNonAccreditedInvestorsLimit()), MAX_INVESTORS_IN_CATEGORY);

            cs.setTotalInvestorsCount(increaseCounter(cs.getTotalInvestorsCount(), ccs.getTotalInvestorsLimit(), _totalInvestors));
            cs.setAccreditedInvestorsCount(increaseCounter(cs.getAccreditedInvestorsCount(), ccs.getTotalInvestorsLimit(), _accreditedInvestors));
            cs.setUSAccreditedInvestorsCount(increaseCounter(cs.getUSAccreditedInvestorsCount(), ccs.getUSAccreditedInvestorsLimit(), _usAccreditedInvestors));
            cs.setUSInvestorsCount(increaseCounter(cs.getUSInvestorsCount(), ccs.getUSInvestorsLimit(), _usTotalInvestors));
            cs.setJPInvestorsCount(increaseCounter(cs.getJPInvestorsCount(), ccs.getJPInvestorsLimit(), _jpTotalInvestors));
            for (uint i = 0; i < _euRetailCountries.length; i++) {
                string memory countryCode = bytes32ToString(_euRetailCountries[i]);
                cs.setEURetailInvestorsCount(
                    countryCode,
                    increaseCounter(
                        cs.getEURetailInvestorsCount(countryCode),
                        ccs.getEURetailInvestorsLimit(),
                        _euRetailCountryCounts[i]
                    )
                );
            }
        }

        return true;
    }

    function emitTBEOperationEvent(uint256 _totalInvestors, uint256 _accreditedInvestors,
        uint256 _usAccreditedInvestors, uint256 _usTotalInvestors, uint256 _jpTotalInvestors, bool /* _increase */) internal {
        getToken().emitOmnibusTBEEvent(
            omnibusWallet,
            SafeCast.toInt256(_totalInvestors),
            SafeCast.toInt256(_accreditedInvestors),
            SafeCast.toInt256(_usAccreditedInvestors),
            SafeCast.toInt256(_usTotalInvestors),
            SafeCast.toInt256(_jpTotalInvestors)
        );
    }

    function getUintEuCountriesDeltas(int256[] memory euCountryDeltas, bool increase) internal pure returns (uint256[] memory) {
        uint256[] memory result = new uint256[](euCountryDeltas.length);

        for (uint i = 0; i < euCountryDeltas.length; i++) {
            if (increase) {
                result[i] = euCountryDeltas[i] > 0 ? uint256(euCountryDeltas[i]) : 0;
            } else {
                result[i] = euCountryDeltas[i] < 0 ? uint256(euCountryDeltas[i] * - 1) : 0;
            }
        }
        return result;
    }

    function increaseCounter(uint256 currentValue, uint256 currentLimit, uint256 delta) internal pure returns (uint256) {
        uint256 result = currentValue + delta;
        require(currentLimit == 0 || result <= currentLimit, MAX_INVESTORS_IN_CATEGORY);
        return result;
    }

    function bytes32ToString(bytes32 _bytes32) internal pure returns (string memory) {
        uint8 i = 0;
        while (i < 32 && _bytes32[i] != 0) {
            i++;
        }
        bytes memory bytesArray = new bytes(i);
        for (i = 0; i < 32 && _bytes32[i] != 0; i++) {
            bytesArray[i] = _bytes32[i];
        }
        return string(bytesArray);
    }
}

// ============================================================
// FILE: contracts/registry/IDSRegistryService.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "../utils/CommonUtils.sol";
import "../omnibus/IDSOmnibusWalletController.sol";

abstract contract IDSRegistryService {

    function initialize() public virtual;

    event DSRegistryServiceInvestorAdded(string investorId, address sender);
    event DSRegistryServiceInvestorRemoved(string investorId, address sender);
    event DSRegistryServiceInvestorCountryChanged(string investorId, string country, address sender);
    event DSRegistryServiceInvestorAttributeChanged(string investorId, uint256 attributeId, uint256 value, uint256 expiry, string proofHash, address sender);
    event DSRegistryServiceWalletAdded(address wallet, string investorId, address sender);
    event DSRegistryServiceWalletRemoved(address wallet, string investorId, address sender);
    event DSRegistryServiceOmnibusWalletAdded(address omnibusWallet, string investorId, IDSOmnibusWalletController omnibusWalletController);
    event DSRegistryServiceOmnibusWalletRemoved(address omnibusWallet, string investorId);

    uint8 public constant NONE = 0;
    uint8 public constant KYC_APPROVED = 1;
    uint8 public constant ACCREDITED = 2;
    uint8 public constant QUALIFIED = 4;
    uint8 public constant PROFESSIONAL = 8;

    uint8 public constant PENDING = 0;
    uint8 public constant APPROVED = 1;
    uint8 public constant REJECTED = 2;

    uint8 public constant EXCHANGE = 4;

    modifier investorExists(string memory _id) {
        require(isInvestor(_id), "Unknown investor");
        _;
    }

    modifier newInvestor(string memory _id) {
        require(!CommonUtils.isEmptyString(_id), "Investor id must not be empty");
        require(!isInvestor(_id), "Investor already exists");
        _;
    }

    modifier walletExists(address _address) {
        require(isWallet(_address), "Unknown wallet");
        _;
    }

    modifier newWallet(address _address) {
        require(!isWallet(_address), "Wallet already exists");
        _;
    }

    modifier newOmnibusWallet(address _omnibusWallet) {
        require(!isOmnibusWallet(_omnibusWallet), "Omnibus wallet already exists");
        _;
    }

    modifier omnibusWalletExists(address _omnibusWallet) {
        require(isOmnibusWallet(_omnibusWallet), "Unknown omnibus wallet");
        _;
    }

    modifier walletBelongsToInvestor(address _address, string memory _id) {
        require(CommonUtils.isEqualString(getInvestor(_address), _id), "Wallet does not belong to investor");
        _;
    }

    function registerInvestor(
        string calldata _id,
        string calldata _collision_hash /*onlyExchangeOrAbove newInvestor(_id)*/
    ) public virtual returns (bool);

    function updateInvestor(
        string calldata _id,
        string calldata _collisionHash,
        string memory _country,
        address[] memory _wallets,
        uint8[] memory _attributeIds,
        uint256[] memory _attributeValues,
        uint256[] memory _attributeExpirations /*onlyIssuerOrAbove*/
    ) public virtual returns (bool);

    function removeInvestor(
        string calldata _id /*onlyExchangeOrAbove investorExists(_id)*/
    ) public virtual returns (bool);

    function setCountry(
        string calldata _id,
        string memory _country /*onlyExchangeOrAbove investorExists(_id)*/
    ) public virtual returns (bool);

    function getCountry(string memory _id) public view virtual returns (string memory);

    function getCollisionHash(string calldata _id) public view virtual returns (string memory);

    function setAttribute(
        string calldata _id,
        uint8 _attributeId,
        uint256 _value,
        uint256 _expiry,
        string memory _proofHash /*onlyExchangeOrAbove investorExists(_id)*/
    ) public virtual returns (bool);

    function getAttributeValue(string memory _id, uint8 _attributeId) public view virtual returns (uint256);

    function getAttributeExpiry(string memory _id, uint8 _attributeId) public view virtual returns (uint256);

    function getAttributeProofHash(string memory _id, uint8 _attributeId) public view virtual returns (string memory);

    function addWallet(
        address _address,
        string memory _id /*onlyExchangeOrAbove newWallet(_address)*/
    ) public virtual returns (bool);

    function addWalletByInvestor(address _address) public virtual returns (bool);

    function removeWallet(
        address _address,
        string memory _id /*onlyExchangeOrAbove walletExists walletBelongsToInvestor(_address, _id)*/
    ) public virtual returns (bool);

    function addOmnibusWallet(
        string memory _id,
        address _omnibusWallet,
        IDSOmnibusWalletController _omnibusWalletController /*onlyIssuerOrAbove newOmnibusWallet*/
    ) public virtual;

    function removeOmnibusWallet(
        string memory _id,
        address _omnibusWallet /*onlyIssuerOrAbove omnibusWalletControllerExists*/
    ) public virtual;

    function getOmnibusWalletController(address _omnibusWallet) public view virtual returns (IDSOmnibusWalletController);

    function isOmnibusWallet(address _omnibusWallet) public view virtual returns (bool);

    function getInvestor(address _address) public view virtual returns (string memory);

    function getInvestorDetails(address _address) public view virtual returns (string memory, string memory);

    function getInvestorDetailsFull(string memory _id)
        public
        view
        virtual
        returns (string memory, uint256[] memory, uint256[] memory, string memory, string memory, string memory, string memory);

    function isInvestor(string memory _id) public view virtual returns (bool);

    function isWallet(address _address) public view virtual returns (bool);

    function isAccreditedInvestor(string calldata _id) external view virtual returns (bool);

    function isQualifiedInvestor(string calldata _id) external view virtual returns (bool);

    function isAccreditedInvestor(address _wallet) external view virtual returns (bool);

    function isQualifiedInvestor(address _wallet) external view virtual returns (bool);

    function getInvestors(address _from, address _to) external view virtual returns (string memory, string memory);
}

// ============================================================
// FILE: contracts/service/IDSServiceConsumer.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "../omnibus/IDSOmnibusWalletController.sol";

abstract contract IDSServiceConsumer {

    uint256 public constant TRUST_SERVICE = 1;
    uint256 public constant DS_TOKEN = 2;
    uint256 public constant REGISTRY_SERVICE = 4;
    uint256 public constant COMPLIANCE_SERVICE = 8;
    uint256 public constant UNUSED_1 = 16;
    uint256 public constant WALLET_MANAGER = 32;
    uint256 public constant LOCK_MANAGER = 64;
    uint256 public constant PARTITIONS_MANAGER = 128;
    uint256 public constant COMPLIANCE_CONFIGURATION_SERVICE = 256;
    uint256 public constant TOKEN_ISSUER = 512;
    uint256 public constant WALLET_REGISTRAR = 1024;
    uint256 public constant OMNIBUS_TBE_CONTROLLER = 2048;
    uint256 public constant TRANSACTION_RELAYER = 4096;
    uint256 public constant TOKEN_REALLOCATOR = 8192;
    uint256 public constant ISSUER_MULTICALL = 8194;
    uint256 public constant TA_MULTICALL = 8195;
    uint256 public constant SECURITIZE_SWAP = 16384;
    
    function getDSService(uint256 _serviceId) public view virtual returns (address);

    function setDSService(
        uint256 _serviceId,
        address _address /*onlyMaster*/
    ) public virtual returns (bool);

    event DSServiceSet(uint256 serviceId, address serviceAddress);
}

// ============================================================
// FILE: contracts/service/ServiceConsumer.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./IDSServiceConsumer.sol";
import "../data-stores/ServiceConsumerDataStore.sol";
import "../token/IDSToken.sol";
import "../compliance/IDSWalletManager.sol";
import "../compliance/IDSLockManager.sol";
import "../compliance/IDSLockManagerPartitioned.sol";
import "../compliance/IDSComplianceService.sol";
import "../compliance/IDSPartitionsManager.sol";
import "../compliance/IDSComplianceConfigurationService.sol";
import "../registry/IDSRegistryService.sol";
import "../omnibus/IDSOmnibusTBEController.sol";
import "../trust/IDSTrustService.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


abstract contract ServiceConsumer is IDSServiceConsumer, ServiceConsumerDataStore, OwnableUpgradeable {

    // Bring role constants to save gas both in deployment (less bytecode) and usage
    uint8 public constant ROLE_NONE = 0;
    uint8 public constant ROLE_MASTER = 1;
    uint8 public constant ROLE_ISSUER = 2;
    uint8 public constant ROLE_EXCHANGE = 4;
    uint8 public constant ROLE_TRANSFER_AGENT = 8;

    function __ServiceConsumer_init() public virtual onlyInitializing {
        __Ownable_init(msg.sender);
    }

    modifier onlyMaster {
        IDSTrustService trustManager = getTrustService();
        require(owner() == msg.sender || trustManager.getRole(msg.sender) == ROLE_MASTER, "Insufficient trust level");
        _;
    }

    /**
   * @dev Allow invoking functions only by the users who have the MASTER role or the ISSUER role or the TRANSFER AGENT role.
   */
    modifier onlyIssuerOrTransferAgentOrAbove() {
        IDSTrustService trustManager = getTrustService();
        require(trustManager.getRole(msg.sender) == ROLE_TRANSFER_AGENT || trustManager.getRole(msg.sender) == ROLE_ISSUER || trustManager.getRole(msg.sender) == ROLE_MASTER, "Insufficient trust level");
        _;
    }

    modifier onlyIssuerOrAbove {
        IDSTrustService trustManager = getTrustService();
        require(trustManager.getRole(msg.sender) == ROLE_ISSUER || trustManager.getRole(msg.sender) == ROLE_MASTER, "Insufficient trust level");
        _;
    }

    modifier onlyTransferAgentOrAbove {
        IDSTrustService trustManager = getTrustService();
        require(trustManager.getRole(msg.sender) == ROLE_TRANSFER_AGENT || trustManager.getRole(msg.sender) == ROLE_MASTER, "Insufficient trust level");
        _;
    }

    modifier onlyExchangeOrAbove {
        IDSTrustService trustManager = getTrustService();
        require(
            trustManager.getRole(msg.sender) == ROLE_EXCHANGE
            || trustManager.getRole(msg.sender) == ROLE_ISSUER
            || trustManager.getRole(msg.sender) == ROLE_TRANSFER_AGENT
            || trustManager.getRole(msg.sender) == ROLE_MASTER,
            "Insufficient trust level"
        );
        _;
    }

    modifier onlyToken {
        require(msg.sender == getDSService(DS_TOKEN), "This function can only called by the associated token");
        _;
    }

    modifier onlyRegistry {
        require(msg.sender == getDSService(REGISTRY_SERVICE), "This function can only called by the registry service");
        _;
    }

    modifier onlyIssuerOrAboveOrToken {
        if (msg.sender != getDSService(DS_TOKEN)) {
            IDSTrustService trustManager = IDSTrustService(getDSService(TRUST_SERVICE));
            require(trustManager.getRole(msg.sender) == ROLE_ISSUER || trustManager.getRole(msg.sender) == ROLE_MASTER, "Insufficient trust level");
        }
        _;
    }

    modifier onlyTransferAgentOrAboveOrToken {
        if (msg.sender != getDSService(DS_TOKEN)) {
            IDSTrustService trustManager = IDSTrustService(getDSService(TRUST_SERVICE));
            require(trustManager.getRole(msg.sender) == ROLE_TRANSFER_AGENT || trustManager.getRole(msg.sender) == ROLE_MASTER, "Insufficient trust level");
        }
        _;
    }

    modifier onlyOmnibusWalletController(address omnibusWallet, IDSOmnibusWalletController omnibusWalletController) {
        require(getRegistryService().getOmnibusWalletController(omnibusWallet) == omnibusWalletController, "Wrong controller address");
        _;
    }

    modifier onlyTBEOmnibus {
        require(msg.sender == address(getOmnibusTBEController()), "Not authorized");
        _;
    }

    modifier onlyMasterOrTBEOmnibus {
        IDSTrustService trustManager = getTrustService();
        require(msg.sender == address(getOmnibusTBEController()) ||
        owner() == msg.sender || trustManager.getRole(msg.sender) == ROLE_MASTER, "Not authorized");
        _;
    }

    modifier onlyOwnerOrIssuerOrAbove {
        if(owner() != msg.sender) {
            IDSTrustService trustManager = getTrustService();
            require(trustManager.getRole(msg.sender) == ROLE_ISSUER || trustManager.getRole(msg.sender) == ROLE_MASTER, "Insufficient trust level");
        }
        _;
    }

    function getDSService(uint256 _serviceId) public view override returns (address) {
        return services[_serviceId];
    }

    function setDSService(uint256 _serviceId, address _address) public override onlyMaster returns (bool) {
        services[_serviceId] = _address;
        emit DSServiceSet(_serviceId, _address);
        return true;
    }

    function getToken() internal view returns (IDSToken) {
        return IDSToken(getDSService(DS_TOKEN));
    }

    function getTrustService() internal view returns (IDSTrustService) {
        return IDSTrustService(getDSService(TRUST_SERVICE));
    }

    function getWalletManager() internal view returns (IDSWalletManager) {
        return IDSWalletManager(getDSService(WALLET_MANAGER));
    }

    function getLockManager() internal view returns (IDSLockManager) {
        return IDSLockManager(getDSService(LOCK_MANAGER));
    }

    function getLockManagerPartitioned() internal view returns (IDSLockManagerPartitioned) {
        return IDSLockManagerPartitioned(getDSService(LOCK_MANAGER));
    }

    function getComplianceService() internal view returns (IDSComplianceService) {
        return IDSComplianceService(getDSService(COMPLIANCE_SERVICE));
    }

    function getRegistryService() internal view returns (IDSRegistryService) {
        return IDSRegistryService(getDSService(REGISTRY_SERVICE));
    }

    function getPartitionsManager() internal view returns (IDSPartitionsManager) {
        return IDSPartitionsManager(getDSService(PARTITIONS_MANAGER));
    }

    function getComplianceConfigurationService() internal view returns (IDSComplianceConfigurationService) {
        return IDSComplianceConfigurationService(getDSService(COMPLIANCE_CONFIGURATION_SERVICE));
    }

    function getOmnibusTBEController() internal view returns (IDSOmnibusTBEController) {
        return IDSOmnibusTBEController(getDSService(OMNIBUS_TBE_CONTROLLER));
    }
}

// ============================================================
// FILE: contracts/token/DSToken.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./IDSToken.sol";
import "./StandardToken.sol";

contract DSToken is StandardToken {
    // using FeaturesLibrary for SupportedFeatures;
    using TokenLibrary for TokenLibrary.SupportedFeatures;
    uint256 internal constant OMNIBUS_NO_ACTION = 0;

    function initialize(string calldata _name, string calldata _symbol, uint8 _decimals) public virtual override onlyProxy initializer {
        __StandardToken_init();

        name = _name;
        symbol = _symbol;
        decimals = _decimals;
    }

    /******************************
       TOKEN CONFIGURATION
   *******************************/

    function setFeature(uint8 featureIndex, bool enable) public onlyMaster {
        supportedFeatures.setFeature(featureIndex, enable);
    }

    function setFeatures(uint256 features) public onlyMaster {
        supportedFeatures.value = features;
    }

    function setCap(uint256 _cap) public override onlyTransferAgentOrAbove {
        require(cap == 0, "Token cap already set");
        require(_cap > 0);
        cap = _cap;
    }

    function totalIssued() public view returns (uint256) {
        return tokenData.totalIssued;
    }

    /******************************
       TOKEN ISSUANCE (MINTING)
   *******************************/

    /**
     * @dev Issues unlocked tokens
     * @param _to address The address which is going to receive the newly issued tokens
     * @param _value uint256 the value of tokens to issue
     * @return true if successful
     */
    function issueTokens(
        address _to,
        uint256 _value /*onlyIssuerOrAbove*/
    ) public override returns (bool) {
        issueTokensCustom(_to, _value, block.timestamp, 0, "", 0);
        return true;
    }

    /**
     * @dev Issuing tokens from the fund
     * @param _to address The address which is going to receive the newly issued tokens
     * @param _value uint256 the value of tokens to issue
     * @param _valueLocked uint256 value of tokens, from those issued, to lock immediately.
     * @param _reason reason for token locking
     * @param _releaseTime timestamp to release the lock (or 0 for locks which can only released by an unlockTokens call)
     * @return true if successful
     */
    function issueTokensCustom(address _to, uint256 _value, uint256 _issuanceTime, uint256 _valueLocked, string memory _reason, uint64 _releaseTime)
    public
    virtual
    override
    returns (
    /*onlyIssuerOrAbove*/
        bool
    )
    {
        uint256[] memory valuesLocked;
        uint64[] memory releaseTimes;
        if (_valueLocked > 0) {
            valuesLocked = new uint256[](1);
            releaseTimes = new uint64[](1);
            valuesLocked[0] = _valueLocked;
            releaseTimes[0] = _releaseTime;
        }

        issueTokensWithMultipleLocks(_to, _value, _issuanceTime, valuesLocked, _reason, releaseTimes);
        return true;
    }

    function issueTokensWithMultipleLocks(address _to, uint256 _value, uint256 _issuanceTime, uint256[] memory _valuesLocked, string memory _reason, uint64[] memory _releaseTimes)
    public
    virtual
    override
    onlyIssuerOrAbove
    returns (bool)
    {
        TokenLibrary.issueTokensCustom(tokenData, getCommonServices(), getLockManager(), _to, _value, _issuanceTime, _valuesLocked, _releaseTimes, _reason, cap);
        emit Transfer(address(0), _to, _value);

        checkWalletsForList(address(0), _to);
        return true;
    }

    function issueTokensWithNoCompliance(address _to, uint256 _value) public virtual override onlyIssuerOrAbove {
        require(getRegistryService().isWallet(_to), "Unknown wallet");
        TokenLibrary.issueTokensWithNoCompliance(tokenData, getCommonServices(), _to, _value, block.timestamp, cap);
        emit Transfer(address(0), _to, _value);
    }

    //*********************
    // TOKEN BURNING
    //*********************

    function burn(address _who, uint256 _value, string calldata _reason) public virtual override onlyIssuerOrTransferAgentOrAbove {
        TokenLibrary.burn(tokenData, getCommonServices(), _who, _value);
        emit Burn(_who, _value, _reason);
        emit Transfer(_who, address(0), _value);
        checkWalletsForList(_who, address(0));
    }

    function omnibusBurn(address _omnibusWallet, address _who, uint256 _value, string calldata _reason) public override onlyTransferAgentOrAbove {
        require(_value <= tokenData.walletsBalances[_omnibusWallet]);
        TokenLibrary.omnibusBurn(tokenData, getCommonServices(), _omnibusWallet, _who, _value);
        emit OmnibusBurn(_omnibusWallet, _who, _value, _reason, getAssetTrackingMode(_omnibusWallet));
        emit Burn(_omnibusWallet, _value, _reason);
        emit Transfer(_omnibusWallet, address(0), _value);
        checkWalletsForList(_omnibusWallet, address(0));
    }

    //*********************
    // TOKEN SEIZING
    //*********************

    function seize(address _from, address _to, uint256 _value, string calldata _reason) public virtual override onlyTransferAgentOrAbove {
        TokenLibrary.seize(tokenData, getCommonServices(), _from, _to, _value);
        emit Seize(_from, _to, _value, _reason);
        emit Transfer(_from, _to, _value);
        checkWalletsForList(_from, _to);
    }

    function omnibusSeize(address _omnibusWallet, address _from, address _to, uint256 _value, string calldata _reason) public override onlyTransferAgentOrAbove {
        TokenLibrary.omnibusSeize(tokenData, getCommonServices(), _omnibusWallet, _from, _to, _value);
        emit OmnibusSeize(_omnibusWallet, _from, _value, _reason, getAssetTrackingMode(_omnibusWallet));
        emit Seize(_omnibusWallet, _to, _value, _reason);
        emit Transfer(_omnibusWallet, _to, _value);
        checkWalletsForList(_omnibusWallet, _to);
    }

    //*********************
    // TRANSFER RESTRICTIONS
    //*********************

    /**
     * @dev Checks whether it can transfer with the compliance manager, if not -throws.
     */
    modifier canTransfer(address _sender, address _receiver, uint256 _value) {
        getComplianceService().validateTransfer(_sender, _receiver, _value, paused, super.balanceOf(_sender));
        _;
    }

    /**
     * @dev override for transfer with modifiers:
     * whether the token is not paused (checked in super class)
     * and that the sender is allowed to transfer tokens
     * @param _to The address that will receive the tokens.
     * @param _value The amount of tokens to be transferred.
     */
    function transfer(address _to, uint256 _value) public virtual override canTransfer(msg.sender, _to, _value) returns (bool) {
        return postTransferImpl(super.transfer(_to, _value), msg.sender, _to, _value);
    }

    /**
     * @dev override for transfer with modifiers:
     * whether the token is not paused (checked in super class)
     * and that the sender is allowed to transfer tokens
     * @param _from The address that will send the tokens.
     * @param _to The address that will receive the tokens.
     * @param _value The amount of tokens to be transferred.
     */
    function transferFrom(address _from, address _to, uint256 _value) public virtual override canTransfer(_from, _to, _value) returns (bool) {
        return postTransferImpl(super.transferFrom(_from, _to, _value), _from, _to, _value);
    }

    function postTransferImpl(bool _superResult, address _from, address _to, uint256 _value) internal returns (bool) {
        if (_superResult) {
            updateInvestorsBalancesOnTransfer(_from, _to, _value);
        }

        checkWalletsForList(_from, _to);

        return _superResult;
    }

    //*********************
    // WALLET ENUMERATION
    //****

    function getWalletAt(uint256 _index) public view override returns (address) {
        require(_index > 0 && _index <= walletsCount);
        return walletsList[_index];
    }

    function walletCount() public view override returns (uint256) {
        return walletsCount;
    }

    function checkWalletsForList(address _from, address _to) private {
        if (super.balanceOf(_from) == 0) {
            removeWalletFromList(_from);
        }
        if (super.balanceOf(_to) > 0) {
            addWalletToList(_to);
        }
    }

    function addWalletToList(address _address) private {
        //Check if it's already there
        uint256 existingIndex = walletsToIndexes[_address];
        if (existingIndex == 0) {
            //If not - add it
            uint256 index = walletsCount + 1;
            walletsList[index] = _address;
            walletsToIndexes[_address] = index;
            walletsCount = index;
        }
    }

    function removeWalletFromList(address _address) private {
        //Make sure it's there
        uint256 existingIndex = walletsToIndexes[_address];
        if (existingIndex != 0) {
            uint256 lastIndex = walletsCount;
            if (lastIndex != existingIndex) {
                //Put the last wallet instead of it (this will work even with 1 wallet in the list)
                address lastWalletAddress = walletsList[lastIndex];
                walletsList[existingIndex] = lastWalletAddress;
                walletsToIndexes[lastWalletAddress] = existingIndex;
            }

            delete walletsToIndexes[_address];
            delete walletsList[lastIndex];
            walletsCount = lastIndex - 1;
        }
    }

    //**************************************
    // MISCELLANEOUS FUNCTIONS
    //**************************************

    function balanceOfInvestor(string memory _id) public view override returns (uint256) {
        return tokenData.investorsBalances[_id];
    }

    function getAssetTrackingMode(address _omnibusWallet) internal view returns (uint8) {
        return getRegistryService().getOmnibusWalletController(_omnibusWallet).getAssetTrackingMode();
    }

    function updateOmnibusInvestorBalance(address _omnibusWallet, address _wallet, uint256 _value, CommonUtils.IncDec _increase)
    public
    override
    onlyOmnibusWalletController(_omnibusWallet, IDSOmnibusWalletController(msg.sender))
    returns (bool)
    {
        return updateInvestorBalance(_wallet, _value, _increase);
    }

    function emitOmnibusTransferEvent(address _omnibusWallet, address _from, address _to, uint256 _value)
    public
    override
    onlyOmnibusWalletController(_omnibusWallet, IDSOmnibusWalletController(msg.sender))
    {
        emit OmnibusTransfer(_omnibusWallet, _from, _to, _value, getAssetTrackingMode(_omnibusWallet));
    }

    function emitOmnibusTBEEvent(address omnibusWallet, int256 totalDelta, int256 accreditedDelta,
        int256 usAccreditedDelta, int256 usTotalDelta, int256 jpTotalDelta) public override onlyTBEOmnibus {
        emit OmnibusTBEOperation(omnibusWallet, totalDelta, accreditedDelta, usAccreditedDelta, usTotalDelta, jpTotalDelta);
    }

    function emitOmnibusTBETransferEvent(address omnibusWallet, string memory externalId) public override onlyTBEOmnibus {
        emit OmnibusTBETransfer(omnibusWallet, externalId);
    }

    function updateInvestorsBalancesOnTransfer(address _from, address _to, uint256 _value) internal {
        uint256 omnibusEvent = TokenLibrary.applyOmnibusBalanceUpdatesOnTransfer(tokenData, getRegistryService(), _from, _to, _value);
        if (omnibusEvent == OMNIBUS_NO_ACTION) {
            updateInvestorBalance(_from, _value, CommonUtils.IncDec.Decrease);
            updateInvestorBalance(_to, _value, CommonUtils.IncDec.Increase);
        }
    }

    function updateInvestorBalance(address _wallet, uint256 _value, CommonUtils.IncDec _increase) internal override returns (bool) {
        string memory investor = getRegistryService().getInvestor(_wallet);
        if (!CommonUtils.isEmptyString(investor)) {
            uint256 balance = balanceOfInvestor(investor);
            if (_increase == CommonUtils.IncDec.Increase) {
                balance += _value;
            } else {
                balance -= _value;
            }
            tokenData.investorsBalances[investor] = balance;
        }

        return true;
    }

    function preTransferCheck(address _from, address _to, uint256 _value) public view override returns (uint256 code, string memory reason) {
        return getComplianceService().preTransferCheck(_from, _to, _value);
    }

    function getCommonServices() internal view returns (address[] memory) {
        address[] memory services = new address[](3);
        services[0] = getDSService(COMPLIANCE_SERVICE);
        services[1] = getDSService(REGISTRY_SERVICE);
        services[2] = getDSService(OMNIBUS_TBE_CONTROLLER);
        return services;
    }
}

// ============================================================
// FILE: contracts/token/IDSToken.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../utils/CommonUtils.sol";
import "../omnibus/IDSOmnibusWalletController.sol";

abstract contract IDSToken is IERC20, Initializable {
    event Issue(address indexed to, uint256 value, uint256 valueLocked);
    event Burn(address indexed burner, uint256 value, string reason);
    event Seize(address indexed from, address indexed to, uint256 value, string reason);
    event OmnibusDeposit(address indexed omnibusWallet, address to, uint256 value, uint8 assetTrackingMode);
    event OmnibusWithdraw(address indexed omnibusWallet, address from, uint256 value, uint8 assetTrackingMode);
    event OmnibusSeize(address indexed omnibusWallet, address from, uint256 value, string reason, uint8 assetTrackingMode);
    event OmnibusBurn(address indexed omnibusWallet, address who, uint256 value, string reason, uint8 assetTrackingMode);
    event OmnibusTransfer(address indexed omnibusWallet, address from, address to, uint256 value, uint8 assetTrackingMode);
    event OmnibusTBEOperation(address indexed omnibusWallet, int256 totalDelta, int256 accreditedDelta,
        int256 usAccreditedDelta, int256 usTotalDelta, int256 jpTotalDelta);
    event OmnibusTBETransfer(address omnibusWallet, string externalId);

    event WalletAdded(address wallet);
    event WalletRemoved(address wallet);

    function initialize(string calldata _name, string calldata _symbol, uint8 _decimals) public virtual;

    /******************************
       CONFIGURATION
   *******************************/

    /**
     * @dev Sets the total issuance cap
     * Note: The cap is compared to the total number of issued token, not the total number of tokens available,
     * So if a token is burned, it is not removed from the "total number of issued".
     * This call cannot be called again after it was called once.
     * @param _cap address The address which is going to receive the newly issued tokens
     */
    function setCap(
        uint256 _cap /*onlyMaster*/
    ) public virtual;

    /******************************
       TOKEN ISSUANCE (MINTING)
   *******************************/

    /**
     * @dev Issues unlocked tokens
     * @param _to address The address which is going to receive the newly issued tokens
     * @param _value uint256 the value of tokens to issue
     * @return true if successful
     */
    function issueTokens(
        address _to,
        uint256 _value /*onlyIssuerOrAbove*/
    ) public virtual returns (bool);

    /**
     * @dev Issuing tokens from the fund
     * @param _to address The address which is going to receive the newly issued tokens
     * @param _value uint256 the value of tokens to issue
     * @param _valueLocked uint256 value of tokens, from those issued, to lock immediately.
     * @param _reason reason for token locking
     * @param _releaseTime timestamp to release the lock (or 0 for locks which can only released by an unlockTokens call)
     * @return true if successful
     */
    function issueTokensCustom(
        address _to,
        uint256 _value,
        uint256 _issuanceTime,
        uint256 _valueLocked,
        string memory _reason,
        uint64 _releaseTime /*onlyIssuerOrAbove*/
    ) public virtual returns (bool);

    function issueTokensWithMultipleLocks(
        address _to,
        uint256 _value,
        uint256 _issuanceTime,
        uint256[] memory _valuesLocked,
        string memory _reason,
        uint64[] memory _releaseTimes /*onlyIssuerOrAbove*/
    ) public virtual returns (bool);

    function issueTokensWithNoCompliance(address _to, uint256 _value) public virtual /*onlyIssuerOrAbove*/;

    //*********************
    // TOKEN BURNING
    //*********************

    function burn(
        address _who,
        uint256 _value,
        string calldata _reason /*onlyIssuerOrAbove*/
    ) public virtual;

    function omnibusBurn(
        address _omnibusWallet,
        address _who,
        uint256 _value,
        string calldata _reason /*onlyIssuerOrAbove*/
    ) public virtual;

    //*********************
    // TOKEN SIEZING
    //*********************

    function seize(
        address _from,
        address _to,
        uint256 _value,
        string calldata _reason /*onlyIssuerOrAbove*/
    ) public virtual;

    function omnibusSeize(
        address _omnibusWallet,
        address _from,
        address _to,
        uint256 _value,
        string calldata
        /*onlyIssuerOrAbove*/
    ) public virtual;

    //*********************
    // WALLET ENUMERATION
    //*********************

    function getWalletAt(uint256 _index) public view virtual returns (address);

    function walletCount() public view virtual returns (uint256);

    //**************************************
    // MISCELLANEOUS FUNCTIONS
    //**************************************
    function isPaused() public view virtual returns (bool);

    function balanceOfInvestor(string memory _id) public view virtual returns (uint256);

    function updateOmnibusInvestorBalance(
        address _omnibusWallet,
        address _wallet,
        uint256 _value,
        CommonUtils.IncDec _increase /*onlyOmnibusWalletController*/
    ) public virtual returns (bool);

    function emitOmnibusTransferEvent(
        address _omnibusWallet,
        address _from,
        address _to,
        uint256 _value /*onlyOmnibusWalletController*/
    ) public virtual;

    function emitOmnibusTBEEvent(address omnibusWallet, int256 totalDelta, int256 accreditedDelta,
        int256 usAccreditedDelta, int256 usTotalDelta, int256 jpTotalDelta /*onlyTBEOmnibus*/
    ) public virtual;

    function emitOmnibusTBETransferEvent(address omnibusWallet, string memory externalId) public virtual;

    function updateInvestorBalance(address _wallet, uint256 _value, CommonUtils.IncDec _increase) internal virtual returns (bool);

    function preTransferCheck(address _from, address _to, uint256 _value) public view virtual returns (uint256 code, string memory reason);
}

// ============================================================
// FILE: contracts/token/IDSTokenPartitioned.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "./IDSToken.sol";

abstract contract IDSTokenPartitioned {

    function balanceOfByPartition(address _who, bytes32 _partition) public view virtual returns (uint256);

    function balanceOfInvestorByPartition(string memory _id, bytes32 _partition) public view virtual returns (uint256);

    function partitionCountOf(address _who) public view virtual returns (uint256);

    function partitionOf(address _who, uint256 _index) public view virtual returns (bytes32);

    function transferByPartitions(address _to, uint256 _value, bytes32[] memory _partitions, uint256[] memory _values) public virtual returns (bool);

    function transferFromByPartitions(address _from, address _to, uint256 _value, bytes32[] memory _partitions, uint256[] memory _values) public virtual returns (bool);

    function burnByPartition(
        address _who,
        uint256 _value,
        string calldata _reason,
        bytes32 _partition /*onlyIssuerOrAbove*/
    ) public virtual;

    function seizeByPartition(
        address _from,
        address _to,
        uint256 _value,
        string calldata _reason,
        bytes32 _partition /*onlyIssuerOrAbove*/
    ) public virtual;

    event TransferByPartition(address indexed from, address indexed to, uint256 value, bytes32 indexed partition);
    event IssueByPartition(address indexed to, uint256 value, bytes32 indexed partition);
    event BurnByPartition(address indexed burner, uint256 value, string reason, bytes32 indexed partition);
    event SeizeByPartition(address indexed from, address indexed to, uint256 value, string reason, bytes32 indexed partition);
}

// ============================================================
// FILE: contracts/token/StandardToken.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "../data-stores/TokenDataStore.sol";
import "../omnibus/OmnibusTBEController.sol";

abstract contract StandardToken is IDSToken, TokenDataStore, BaseDSContract {
    event Pause();
    event Unpause();

    modifier whenNotPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    modifier whenPaused() {
        require(paused, "Contract is not paused");
        _;
    }

    function __StandardToken_init() public onlyProxy onlyInitializing {
        __BaseDSContract_init();
    }

    function pause() public onlyTransferAgentOrAbove whenNotPaused {
        paused = true;
        emit Pause();
    }

    function unpause() public onlyTransferAgentOrAbove whenPaused {
        paused = false;
        emit Unpause();
    }

    function isPaused() public view override returns (bool) {
        return paused;
    }

    /**
     * @dev Gets the balance of the specified address.
     * @param _owner The address to query the the balance of.
     * @return An uint256 representing the amount owned by the passed address.
     */
    function balanceOf(address _owner) public view returns (uint256) {
        return tokenData.walletsBalances[_owner];
    }

    function totalSupply() public view returns (uint256) {
        return tokenData.totalSupply;
    }

    /**
     * @dev transfer token for a specified address
     * @param _to The address to transfer to.
     * @param _value The amount to be transferred.
     */
    function transfer(address _to, uint256 _value) public virtual returns (bool) {
        return transferImpl(msg.sender, _to, _value);
    }

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public virtual returns (bool) {
        IDSOmnibusTBEController tbeController = getOmnibusTBEController();
        if (!(msg.sender == address(tbeController) && _from == tbeController.getOmnibusWallet())) {
            require(_value <= allowances[_from][msg.sender], "Not enough allowance");
            allowances[_from][msg.sender] -= _value;
        }
        return transferImpl(_from, _to, _value);
    }

    function transferImpl(
        address _from,
        address _to,
        uint256 _value
    ) internal returns (bool) {
        require(_to != address(0));
        require(_value <= tokenData.walletsBalances[_from]);

        tokenData.walletsBalances[_from] -= _value;
        tokenData.walletsBalances[_to] += _value;

        emit Transfer(_from, _to, _value);

        return true;
    }

    function approve(address _spender, uint256 _value) public returns (bool) {
        allowances[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return allowances[_owner][_spender];
    }

    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
        allowances[msg.sender][_spender] = allowances[msg.sender][_spender] + _addedValue;
        emit Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
        return true;
    }

    function decreaseApproval(address _spender, uint256 _subtractedValue) public returns (bool) {
        uint256 oldValue = allowances[msg.sender][_spender];
        if (_subtractedValue > oldValue) {
            allowances[msg.sender][_spender] = 0;
        } else {
            allowances[msg.sender][_spender] = oldValue - _subtractedValue;
        }
        emit Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
        return true;
    }
}

// ============================================================
// FILE: contracts/token/TokenLibrary.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "../service/ServiceConsumer.sol";

library TokenLibrary {
    event OmnibusDeposit(address indexed omnibusWallet, address to, uint256 value, uint8 assetTrackingMode);
    event OmnibusWithdraw(address indexed omnibusWallet, address from, uint256 value, uint8 assetTrackingMode);
    event Issue(address indexed to, uint256 value, uint256 valueLocked);

    uint256 internal constant COMPLIANCE_SERVICE = 0;
    uint256 internal constant REGISTRY_SERVICE = 1;
    uint256 internal constant OMNIBUS_NO_ACTION = 0;
    uint256 internal constant OMNIBUS_DEPOSIT = 1;
    uint256 internal constant OMNIBUS_WITHDRAW = 2;

    struct TokenData {
        mapping(address => uint256) walletsBalances;
        mapping(string => uint256) investorsBalances;
        uint256 totalSupply;
        uint256 totalIssued;
    }

    struct SupportedFeatures {
        uint256 value;
    }

    function setFeature(SupportedFeatures storage supportedFeatures, uint8 featureIndex, bool enable) public {
        uint256 base = 2;
        uint256 mask = base**featureIndex;

        // Enable only if the feature is turned off and disable only if the feature is turned on
        if (enable && (supportedFeatures.value & mask == 0)) {
            supportedFeatures.value = supportedFeatures.value ^ mask;
        } else if (!enable && (supportedFeatures.value & mask >= 1)) {
            supportedFeatures.value = supportedFeatures.value ^ mask;
        }
    }

    function issueTokensCustom(
        TokenData storage _tokenData,
        address[] memory _services,
        IDSLockManager _lockManager,
        address _to,
        uint256 _value,
        uint256 _issuanceTime,
        uint256[] memory _valuesLocked,
        uint64[] memory _releaseTimes,
        string memory _reason,
        uint256 _cap
    ) public returns (bool) {
        //Check input values
        require(_to != address(0), "Invalid address");
        require(_value > 0, "Value is zero");
        require(_valuesLocked.length == _releaseTimes.length, "Wrong length of parameters");

        //Make sure we are not hitting the cap
        require(_cap == 0 || _tokenData.totalIssued + _value <= _cap, "Token Cap Hit");

        //Check issuance is allowed (and inform the compliance manager, possibly adding locks)
        IDSComplianceService(_services[COMPLIANCE_SERVICE]).validateIssuance(_to, _value, _issuanceTime);

        _tokenData.totalSupply += _value;
        _tokenData.totalIssued += _value;
        _tokenData.walletsBalances[_to] += _value;
        updateInvestorBalance(_tokenData, IDSRegistryService(_services[REGISTRY_SERVICE]), _to, _value, CommonUtils.IncDec.Increase);

        uint256 totalLocked = 0;
        for (uint256 i = 0; i < _valuesLocked.length; i++) {
            totalLocked += _valuesLocked[i];
            _lockManager.addManualLockRecord(_to, _valuesLocked[i], _reason, _releaseTimes[i]);
        }
        require(totalLocked <= _value, "valueLocked must be smaller than value");
        emit Issue(_to, _value, totalLocked);
        return true;
    }

    function issueTokensWithNoCompliance(
        TokenData storage _tokenData,
        address[] memory _services,
        address _to,
        uint256 _value,
        uint256 _issuanceTime,
        uint256 _cap
    ) public returns (bool) {
        //Make sure we are not hitting the cap
        require(_cap == 0 || _tokenData.totalIssued + _value <= _cap, "Token Cap Hit");

        //Check and inform issuance
        IDSComplianceService(_services[COMPLIANCE_SERVICE]).validateIssuanceWithNoCompliance(_to, _value, _issuanceTime);

        _tokenData.totalSupply += _value;
        _tokenData.totalIssued += _value;
        _tokenData.walletsBalances[_to] += _value;
        updateInvestorBalance(_tokenData, IDSRegistryService(_services[REGISTRY_SERVICE]), _to, _value, CommonUtils.IncDec.Increase);

        emit Issue(_to, _value, 0);
        return true;
    }

    modifier validSeizeParameters(TokenData storage _tokenData, address _from, address _to, uint256 _value) {
        require(_from != address(0), "Invalid address");
        require(_to != address(0), "Invalid address");
        require(_value <= _tokenData.walletsBalances[_from], "Not enough balance");

        _;
    }

    function burn(TokenData storage _tokenData, address[] memory _services, address _who, uint256 _value) public {
        require(_value <= _tokenData.walletsBalances[_who], "Not enough balance");
        // no need to require value <= totalSupply, since that would imply the
        // sender's balance is greater than the totalSupply, which *should* be an assertion failure

        IDSComplianceService(_services[COMPLIANCE_SERVICE]).validateBurn(_who, _value);

        _tokenData.walletsBalances[_who] -= _value;
        updateInvestorBalance(_tokenData, IDSRegistryService(_services[REGISTRY_SERVICE]), _who, _value, CommonUtils.IncDec.Decrease);
        _tokenData.totalSupply -= _value;
    }

    function seize(TokenData storage _tokenData, address[] memory _services, address _from, address _to, uint256 _value)
    public
    validSeizeParameters(_tokenData, _from, _to, _value)
    {
        IDSRegistryService registryService = IDSRegistryService(_services[REGISTRY_SERVICE]);
        IDSComplianceService(_services[COMPLIANCE_SERVICE]).validateSeize(_from, _to, _value);
        _tokenData.walletsBalances[_from] -= _value;
        _tokenData.walletsBalances[_to] += _value;
        updateInvestorBalance(_tokenData, registryService, _from, _value, CommonUtils.IncDec.Decrease);
        updateInvestorBalance(_tokenData, registryService, _to, _value, CommonUtils.IncDec.Increase);
    }

    function omnibusBurn(TokenData storage _tokenData, address[] memory _services, address _omnibusWallet, address _who, uint256 _value) public {
        IDSRegistryService registryService = IDSRegistryService(_services[REGISTRY_SERVICE]);
        IDSOmnibusWalletController omnibusController = IDSRegistryService(_services[REGISTRY_SERVICE]).getOmnibusWalletController(_omnibusWallet);
        _tokenData.walletsBalances[_omnibusWallet] -= _value;
        omnibusController.burn(_who, _value);
        decreaseInvestorBalanceOnOmnibusSeizeOrBurn(_tokenData, registryService, omnibusController, _omnibusWallet, _who, _value);
        _tokenData.totalSupply -= _value;
    }

    function omnibusSeize(TokenData storage _tokenData, address[] memory _services, address _omnibusWallet, address _from, address _to, uint256 _value)
    public
    validSeizeParameters(_tokenData, _omnibusWallet, _to, _value)
    {
        IDSRegistryService registryService = IDSRegistryService(_services[REGISTRY_SERVICE]);
        IDSOmnibusWalletController omnibusController = registryService.getOmnibusWalletController(_omnibusWallet);

        _tokenData.walletsBalances[_omnibusWallet] -= _value;
        _tokenData.walletsBalances[_to] += _value;
        omnibusController.seize(_from, _value);
        decreaseInvestorBalanceOnOmnibusSeizeOrBurn(_tokenData, registryService, omnibusController, _omnibusWallet, _from, _value);
        updateInvestorBalance(_tokenData, registryService, _to, _value, CommonUtils.IncDec.Increase);
    }

    function decreaseInvestorBalanceOnOmnibusSeizeOrBurn(
        TokenData storage _tokenData,
        IDSRegistryService _registryService,
        IDSOmnibusWalletController _omnibusController,
        address _omnibusWallet,
        address _from,
        uint256 _value
    ) internal {
        if (_omnibusController.isHolderOfRecord()) {
            updateInvestorBalance(_tokenData, _registryService, _omnibusWallet, _value, CommonUtils.IncDec.Decrease);
        } else {
            updateInvestorBalance(_tokenData, _registryService, _from, _value, CommonUtils.IncDec.Decrease);
        }
    }

    function applyOmnibusBalanceUpdatesOnTransfer(TokenData storage _tokenData, IDSRegistryService _registryService, address _from, address _to, uint256 _value)
    public
    returns (uint256)
    {
        if (_registryService.isOmnibusWallet(_to)) {
            IDSOmnibusWalletController omnibusWalletController = _registryService.getOmnibusWalletController(_to);
            omnibusWalletController.deposit(_from, _value);
            emit OmnibusDeposit(_to, _from, _value, omnibusWalletController.getAssetTrackingMode());

            if (omnibusWalletController.isHolderOfRecord()) {
                updateInvestorBalance(_tokenData, _registryService, _from, _value, CommonUtils.IncDec.Decrease);
                updateInvestorBalance(_tokenData, _registryService, _to, _value, CommonUtils.IncDec.Increase);
            }
            return OMNIBUS_DEPOSIT;
        } else if (_registryService.isOmnibusWallet(_from)) {
            IDSOmnibusWalletController omnibusWalletController = _registryService.getOmnibusWalletController(_from);
            omnibusWalletController.withdraw(_to, _value);
            emit OmnibusWithdraw(_from, _to, _value, omnibusWalletController.getAssetTrackingMode());

            if (omnibusWalletController.isHolderOfRecord()) {
                updateInvestorBalance(_tokenData, _registryService, _from, _value, CommonUtils.IncDec.Decrease);
                updateInvestorBalance(_tokenData, _registryService, _to, _value, CommonUtils.IncDec.Increase);
            }
            return OMNIBUS_WITHDRAW;
        }
        return OMNIBUS_NO_ACTION;
    }

    function updateInvestorBalance(TokenData storage _tokenData, IDSRegistryService _registryService, address _wallet, uint256 _value, CommonUtils.IncDec _increase) internal returns (bool) {
        string memory investor = _registryService.getInvestor(_wallet);
        if (!CommonUtils.isEmptyString(investor)) {
            uint256 balance = _tokenData.investorsBalances[investor];
            if (_increase == CommonUtils.IncDec.Increase) {
                balance += _value;
            } else {
                balance -= _value;
            }
            _tokenData.investorsBalances[investor] = balance;
        }

        return true;
    }
}

// ============================================================
// FILE: contracts/token/TokenPartitionsLibrary.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "../utils/CommonUtils.sol";
import "../compliance/IDSComplianceServicePartitioned.sol";
import "../compliance/IDSLockManagerPartitioned.sol";
import "../registry/IDSRegistryService.sol";
import "../compliance/IDSComplianceConfigurationService.sol";
import "../compliance/IDSPartitionsManager.sol";
import "../omnibus/IDSOmnibusTBEController.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

library TokenPartitionsLibrary {

    uint256 internal constant COMPLIANCE_SERVICE = 0;
    uint256 internal constant REGISTRY_SERVICE = 1;
    uint256 internal constant OMNIBUS_TBE_CONTROLLER = 2;

    event IssueByPartition(address indexed to, uint256 value, bytes32 indexed partition);
    event TransferByPartition(address indexed from, address indexed to, uint256 value, bytes32 indexed partition);
    struct AddressPartitions {
        uint256 count;
        mapping(bytes32 => uint256) toIndex;
        mapping(uint256 => bytes32) partitions;
        mapping(bytes32 => uint256) balances;
    }

    struct TokenPartitions {
        mapping(address => AddressPartitions) walletPartitions;
        mapping(string => mapping(bytes32 => uint256)) investorPartitionsBalances;
    }

    function issueTokensCustom(
        TokenPartitions storage self,
        IDSRegistryService _registry,
        IDSComplianceConfigurationService _compConf,
        IDSPartitionsManager _partitionsManager,
        IDSLockManagerPartitioned _lockManager,
        address _to,
        uint256 _value,
        uint256 _issuanceTime,
        uint256[] memory _valuesLocked,
        string memory _reason,
        uint64[] memory _releaseTimes
    ) public returns (bool) {
        string memory investor = _registry.getInvestor(_to);
        string memory country = _registry.getCountry(investor);
        bytes32 partition = _partitionsManager.ensurePartition(_issuanceTime, _compConf.getCountryCompliance(country));
        emit IssueByPartition(_to, _value, partition);
        transferPartition(self, _registry, address(0), _to, _value, partition);
        uint256 totalLocked = 0;
        for (uint256 i = 0; i < _valuesLocked.length; i++) {
            totalLocked += _valuesLocked[i];
            _lockManager.createLockForInvestor(investor, _valuesLocked[i], 0, _reason, _releaseTimes[i], partition);
        }
        require(totalLocked <= _value, "valueLocked must be smaller than value");

        return true;
    }

    function issueTokensWithNoCompliance(
        TokenPartitions storage self,
        IDSRegistryService _registry,
        IDSComplianceConfigurationService _compConf,
        IDSPartitionsManager _partitionsManager,
        address _to,
        uint256 _value,
        uint256 _issuanceTime
    ) public returns (bool) {
        string memory investor = _registry.getInvestor(_to);
        string memory country = _registry.getCountry(investor);
        bytes32 partition = _partitionsManager.ensurePartition(_issuanceTime, _compConf.getCountryCompliance(country));
        emit IssueByPartition(_to, _value, partition);
        transferPartition(self, _registry, address(0), _to, _value, partition);
        return true;
    }

    function setPartitionToAddressImpl(TokenPartitions storage self, address _who, uint256 _index, bytes32 _partition) internal returns (bool) {
        self.walletPartitions[_who].partitions[_index] = _partition;
        self.walletPartitions[_who].toIndex[_partition] = _index;
        return true;
    }

    function addPartitionToAddress(TokenPartitions storage self, address _who, bytes32 _partition) internal {
        uint256 partitionCount = self.walletPartitions[_who].count;
        setPartitionToAddressImpl(self, _who, self.walletPartitions[_who].count, _partition);
        self.walletPartitions[_who].count = partitionCount + 1;
    }

    function removePartitionFromAddress(TokenPartitions storage self, address _from, bytes32 _partition) internal {
        uint256 oldIndex = self.walletPartitions[_from].toIndex[_partition];
        uint256 lastPartitionIndex = self.walletPartitions[_from].count - 1;
        bytes32 lastPartition = self.walletPartitions[_from].partitions[lastPartitionIndex];

        setPartitionToAddressImpl(self, _from, oldIndex, lastPartition);

        delete self.walletPartitions[_from].partitions[lastPartitionIndex];
        delete self.walletPartitions[_from].toIndex[_partition];
        delete self.walletPartitions[_from].balances[_partition];
        self.walletPartitions[_from].count = self.walletPartitions[_from].count - 1;
    }

    function transferPartition(TokenPartitions storage self, IDSRegistryService _registry, address _from, address _to, uint256 _value, bytes32 _partition) public {
        if (_from != address(0)) {
            self.walletPartitions[_from].balances[_partition] = self.walletPartitions[_from].balances[_partition] - _value;
            updateInvestorPartitionBalance(self, _registry, _from, _value, CommonUtils.IncDec.Decrease, _partition);
            if (self.walletPartitions[_from].balances[_partition] == 0) {
                removePartitionFromAddress(self, _from, _partition);
            }
        }

        if (_to != address(0)) {
            if (self.walletPartitions[_to].balances[_partition] == 0 && _value > 0) {
                addPartitionToAddress(self, _to, _partition);
            }
            self.walletPartitions[_to].balances[_partition] += _value;
            updateInvestorPartitionBalance(self, _registry, _to, _value, CommonUtils.IncDec.Increase, _partition);
        }
        emit TransferByPartition(_from, _to, _value, _partition);
    }

    function transferPartitions(TokenPartitions storage self, address[] memory _services, address _from, address _to, uint256 _value) public returns (bool) {
        uint256 partitionCount = partitionCountOf(self, _from);
        uint256 index = 0;
        bool skipComplianceCheck = shouldSkipComplianceCheck(IDSRegistryService(_services[REGISTRY_SERVICE]),
            IDSOmnibusTBEController(_services[OMNIBUS_TBE_CONTROLLER]), _from, _to);
        while (_value > 0 && index < partitionCount) {
            bytes32 partition = partitionOf(self, _from, index);
            uint256 transferableInPartition = skipComplianceCheck
                ? self.walletPartitions[_from].balances[partition]
                : IDSComplianceServicePartitioned(_services[COMPLIANCE_SERVICE]).getComplianceTransferableTokens(_from, block.timestamp, _to, partition);
            uint256 transferable = Math.min(_value, transferableInPartition);
            if (transferable > 0) {
                if (self.walletPartitions[_from].balances[partition] == transferable) {
                    unchecked {
                        --index;
                        --partitionCount;
                    }
                }
                transferPartition(self, IDSRegistryService(_services[REGISTRY_SERVICE]), _from, _to, transferable, partition);
                _value -= transferable;
            }
            unchecked {
                ++index;
            }
        }

        require(_value == 0);

        return true;
    }

    function transferPartitions(
        TokenPartitions storage self,
        address[] memory _services,
        address _from,
        address _to,
        uint256 _value,
        bytes32[] memory _partitions,
        uint256[] memory _values
    ) public returns (bool) {
        require(_partitions.length == _values.length);
        bool skipComplianceCheck = shouldSkipComplianceCheck(IDSRegistryService(_services[REGISTRY_SERVICE]),
            IDSOmnibusTBEController(_services[OMNIBUS_TBE_CONTROLLER]), _from, _to);
        for (uint256 index = 0; index < _partitions.length; ++index) {
            if (!skipComplianceCheck) {
                require(_values[index] <= IDSComplianceServicePartitioned(_services[COMPLIANCE_SERVICE]).getComplianceTransferableTokens(_from, block.timestamp, _to, _partitions[index]));
            }
            transferPartition(self, IDSRegistryService(_services[REGISTRY_SERVICE]), _from, _to, _values[index], _partitions[index]);
            _value -= _values[index];
        }

        require(_value == 0);
        return true;
    }

    function balanceOfByPartition(TokenPartitions storage self, address _who, bytes32 _partition) internal view returns (uint256) {
        return self.walletPartitions[_who].balances[_partition];
    }

    function balanceOfInvestorByPartition(TokenPartitions storage self, string memory _id, bytes32 _partition) internal view returns (uint256) {
        return self.investorPartitionsBalances[_id][_partition];
    }

    function partitionCountOf(TokenPartitions storage self, address _who) internal view returns (uint256) {
        return self.walletPartitions[_who].count;
    }

    function partitionOf(TokenPartitions storage self, address _who, uint256 _index) internal view returns (bytes32) {
        return self.walletPartitions[_who].partitions[_index];
    }

    function updateInvestorPartitionBalance(TokenPartitions storage self, IDSRegistryService _registry, address _wallet, uint256 _value, CommonUtils.IncDec _increase, bytes32 _partition)
        internal
        returns (bool)
    {
        string memory investor = _registry.getInvestor(_wallet);
        if (!CommonUtils.isEmptyString(investor)) {
            uint256 balance = self.investorPartitionsBalances[investor][_partition];
            if (_increase == CommonUtils.IncDec.Increase) {
                balance = balance + _value;
            } else {
                balance = balance - _value;
            }
            self.investorPartitionsBalances[investor][_partition] = balance;
        }
        return true;
    }

    function shouldSkipComplianceCheck(IDSRegistryService _registry, IDSOmnibusTBEController _omnibusTBEController, address _from, address _to) internal view returns (bool) {
        return CommonUtils.isEqualString(_registry.getInvestor(_from), _registry.getInvestor(_to)) ||
            (address(_omnibusTBEController) != address(0) && (_omnibusTBEController.getOmnibusWallet() == _from ||
                _omnibusTBEController.getOmnibusWallet() == _to));
    }
}

// ============================================================
// FILE: contracts/trust/IDSTrustService.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

/**
 * @title IDSTrustService
 * @dev An interface for a trust service which allows role-based access control for other contracts.
 */

abstract contract IDSTrustService {

    function initialize() public virtual;

    /**
     * @dev Should be emitted when a role is set for a user.
     */
    event DSTrustServiceRoleAdded(address targetAddress, uint8 role, address sender);
    /**
     * @dev Should be emitted when a role is removed for a user.
     */
    event DSTrustServiceRoleRemoved(address targetAddress, uint8 role, address sender);

    // Role constants
    uint8 public constant NONE = 0;
    uint8 public constant MASTER = 1;
    uint8 public constant ISSUER = 2;
    uint8 public constant EXCHANGE = 4;
    uint8 public constant TRANSFER_AGENT = 8;

    /**
     * @dev Transfers the ownership (MASTER role) of the contract.
     * @param _address The address which the ownership needs to be transferred to.
     * @return A boolean that indicates if the operation was successful.
     */
    function setServiceOwner(
        address _address /*onlyMaster*/
    ) public virtual returns (bool);

    /**
     * @dev Sets a role for an array of wallets.
     * @dev Should not be used for setting MASTER (use setServiceOwner) or role removal (use removeRole).
     * @param _addresses The array of wallet whose role needs to be set.
     * @param _roles The array of role to be set. The length and order must match with _addresses
     * @return A boolean that indicates if the operation was successful.
     */
    function setRoles(address[] calldata _addresses, uint8[] calldata _roles) public virtual returns (bool);

    /**
     * @dev Sets a role for a wallet.
     * @dev Should not be used for setting MASTER (use setServiceOwner) or role removal (use removeRole).
     * @param _address The wallet whose role needs to be set.
     * @param _role The role to be set.
     * @return A boolean that indicates if the operation was successful.
     */
    function setRole(
        address _address,
        uint8 _role /*onlyMasterOrIssuer*/
    ) public virtual returns (bool);

    /**
     * @dev Removes the role for a wallet.
     * @dev Should not be used to remove MASTER (use setServiceOwner).
     * @param _address The wallet whose role needs to be removed.
     * @return A boolean that indicates if the operation was successful.
     */
    function removeRole(
        address _address /*onlyMasterOrIssuer*/
    ) public virtual returns (bool);

    /**
     * @dev Gets the role for a wallet.
     * @param _address The wallet whose role needs to be fetched.
     * @return A boolean that indicates if the operation was successful.
     */
    function getRole(address _address) public view virtual returns (uint8);

    function addEntity(
        string calldata _name,
        address _owner /*onlyMasterOrIssuer onlyNewEntity onlyNewEntityOwner*/
    ) public virtual;

    function changeEntityOwner(
        string calldata _name,
        address _oldOwner,
        address _newOwner /*onlyMasterOrIssuer onlyExistingEntityOwner*/
    ) public virtual;

    function addOperator(
        string calldata _name,
        address _operator /*onlyEntityOwnerOrAbove onlyNewOperator*/
    ) public virtual;

    function removeOperator(
        string calldata _name,
        address _operator /*onlyEntityOwnerOrAbove onlyExistingOperator*/
    ) public virtual;

    function addResource(
        string calldata _name,
        address _resource /*onlyMasterOrIssuer onlyExistingEntity onlyNewResource*/
    ) public virtual;

    function removeResource(
        string calldata _name,
        address _resource /*onlyMasterOrIssuer onlyExistingResource*/
    ) public virtual;

    function getEntityByOwner(address _owner) public view virtual returns (string memory);

    function getEntityByOperator(address _operator) public view virtual returns (string memory);

    function getEntityByResource(address _resource) public view virtual returns (string memory);

    function isResourceOwner(address _resource, address _owner) public view virtual returns (bool);

    function isResourceOperator(address _resource, address _operator) public view virtual returns (bool);
}

// ============================================================
// FILE: contracts/utils/BaseDSContract.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

import "../service/ServiceConsumer.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

abstract contract BaseDSContract is UUPSUpgradeable, ServiceConsumer {

    function __BaseDSContract_init() public onlyProxy onlyInitializing {
        __UUPSUpgradeable_init();
        __ServiceConsumer_init();
    }

    /**
     * @dev required by the OZ UUPS module
     */
    function _authorizeUpgrade(address) internal override onlyMaster {}

    /**
     * @dev returns proxy ERC1967 implementation address
     */
    function getImplementationAddress() external view returns (address) {
        return ERC1967Utils.getImplementation();
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function getInitializedVersion() external view returns (uint64) {
        return _getInitializedVersion();
    }

}

// ============================================================
// FILE: contracts/utils/CommonUtils.sol
// ============================================================

/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.20;

library CommonUtils {
  enum IncDec { Increase, Decrease }

  function encodeString(string memory _str) internal pure returns (bytes32) {
    return keccak256(abi.encodePacked(_str));
  }

  function isEqualString(string memory _str1, string memory _str2) internal pure returns (bool) {
    return encodeString(_str1) == encodeString(_str2);
  }

  function isEmptyString(string memory _str) internal pure returns (bool) {
    return isEqualString(_str, "");
  }
}
