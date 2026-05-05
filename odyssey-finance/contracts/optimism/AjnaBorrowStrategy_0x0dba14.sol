// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable2Step.sol)

pragma solidity ^0.8.20;

import {OwnableUpgradeable} from "./OwnableUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This extension of the {Ownable} contract includes a two-step mechanism to transfer
 * ownership, where the new owner must call {acceptOwnership} in order to replace the
 * old one. This can help prevent common mistakes, such as transfers of ownership to
 * incorrect accounts, or to contracts that are unable to interact with the
 * permission system.
 *
 * The initial owner is specified at deployment time in the constructor for `Ownable`. This
 * can later be changed with {transferOwnership} and {acceptOwnership}.
 *
 * This module is used through inheritance. It will make available all functions
 * from parent (Ownable).
 */
abstract contract Ownable2StepUpgradeable is Initializable, OwnableUpgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.Ownable2Step
    struct Ownable2StepStorage {
        address _pendingOwner;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Ownable2Step")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant Ownable2StepStorageLocation = 0x237e158222e3e6968b72b9db0d8043aacf074ad9f650f0d1606b4d82ee432c00;

    function _getOwnable2StepStorage() private pure returns (Ownable2StepStorage storage $) {
        assembly {
            $.slot := Ownable2StepStorageLocation
        }
    }

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    function __Ownable2Step_init() internal onlyInitializing {
    }

    function __Ownable2Step_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        Ownable2StepStorage storage $ = _getOwnable2StepStorage();
        return $._pendingOwner;
    }

    /**
     * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual override onlyOwner {
        Ownable2StepStorage storage $ = _getOwnable2StepStorage();
        $._pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner(), newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`) and deletes any pending owner.
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual override {
        Ownable2StepStorage storage $ = _getOwnable2StepStorage();
        delete $._pendingOwner;
        super._transferOwnership(newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() public virtual {
        address sender = _msgSender();
        if (pendingOwner() != sender) {
            revert OwnableUnauthorizedAccount(sender);
        }
        _transferOwnership(sender);
    }
}

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
 * https://eips.ethereum.org/EIPS/eip-1967[ERC-1967] slots.
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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

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
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

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
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

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

        // The following calculation ensures accurate ceiling division without overflow.
        // Since a is non-zero, (a - 1) / b will not overflow.
        // The largest possible result occurs when (a - 1) / b is type(uint256).max,
        // but the largest value we can obtain is type(uint256).max - 1, which happens
        // when a = type(uint256).max and b = 1.
        unchecked {
            return a == 0 ? 0 : (a - 1) / b + 1;
        }
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
 * Example usage to set ERC-1967 implementation slot:
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
// FILE: src/components/Ajna.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IAjnaPool} from "../interfaces/external/ajna/erc20/IAjnaPool.sol";
import {IPoolInfoUtils} from "../interfaces/external/ajna/commons/IPoolInfoUtils.sol";
import {Helpers} from "src/libraries/Helpers.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IMasterOracle} from "../interfaces/external/IMasterOracle.sol";

IPoolInfoUtils constant POOL_INFO_UTILS = IPoolInfoUtils(0x30c5eF2997d6a882DE52c4ec01B6D0a5e5B4fAAE);

library AjnaDelegateCalls {
    using Address for address;

    function delegateDrawDebt(
        Ajna ajna_,
        IAjnaPool ajnaPool_,
        address borrowerAddress_,
        uint256 amountToBorrow_,
        uint256 limitIndex_,
        uint256 collateralToPledge_
    ) internal {
        address(ajna_).functionDelegateCall(
            abi.encodeWithSelector(
                ajna_.drawDebt.selector,
                ajnaPool_,
                borrowerAddress_,
                amountToBorrow_,
                limitIndex_,
                collateralToPledge_
            )
        );
    }

    function delegateRepayDebt(
        Ajna ajna_,
        IAjnaPool ajnaPool_,
        address borrowerAddress_,
        uint256 amountToRepay_,
        uint256 collateralAmountToPull_,
        address collateralReceiver_,
        uint256 limitIndex_
    ) internal {
        address(ajna_).functionDelegateCall(
            abi.encodeWithSelector(
                ajna_.repayDebt.selector,
                ajnaPool_,
                borrowerAddress_,
                amountToRepay_,
                collateralAmountToPull_,
                collateralReceiver_,
                limitIndex_
            )
        );
    }
}

library AjnaMaths {
    uint256 internal constant WAD = 1e18;

    function ceilDiv(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x + y - 1) / y;
    }
}

/// @title Ajna protocol
contract Ajna {
    using SafeERC20 for IERC20;

    error AmountIsZero();
    error CouldNotRedeem();
    error CouldNotDeposit();
    error CouldNotRepay();
    error CouldNotBorrow();

    /**
     *  @notice Retrieves info of a given borrower in a given `Ajna` pool.
     *  @param  ajnaPool_         Address of `Ajna` pool.
     *  @param  borrowerAddress_         Borrower's address.
     *  @return debt_             Current debt owed by borrower (token decimal).
     *  @return collateral_       Pledged collateral, including encumbered (token decimal).
     *  @return t0Np_             `Neutral price` (18 decimal).
     *  @return thresholdPrice_   Borrower's `Threshold Price` (18 decimal).
     */
    function borrowerInfo(
        IAjnaPool ajnaPool_,
        address borrowerAddress_
    ) public view returns (uint256 debt_, uint256 collateral_, uint256 t0Np_, uint256 thresholdPrice_) {
        (debt_, collateral_, t0Np_, thresholdPrice_) = POOL_INFO_UTILS.borrowerInfo(
            address(ajnaPool_),
            borrowerAddress_
        );
        debt_ = AjnaMaths.ceilDiv(debt_, ajnaPool_.quoteTokenScale());
        collateral_ = AjnaMaths.ceilDiv(collateral_, ajnaPool_.collateralScale());
    }

    function drawDebt(
        IAjnaPool ajnaPool_,
        address borrowerAddress_,
        uint256 amountToBorrow_,
        uint256 limitIndex_,
        uint256 collateralToPledge_
    ) external {
        IERC20 _collateralToken = IERC20(ajnaPool_.collateralAddress());
        collateralToPledge_ = Helpers.amountOrAllBalanceIfMax(_collateralToken, collateralToPledge_);
        _collateralToken.forceApprove(address(ajnaPool_), 0);
        _collateralToken.forceApprove(address(ajnaPool_), collateralToPledge_);
        collateralToPledge_ *= ajnaPool_.collateralScale();
        amountToBorrow_ *= ajnaPool_.quoteTokenScale();
        ajnaPool_.drawDebt(borrowerAddress_, amountToBorrow_, limitIndex_, collateralToPledge_);
    }

    function repayDebt(
        IAjnaPool ajnaPool_,
        address borrowerAddress_,
        uint256 amountToRepay_,
        uint256 collateralAmountToPull_,
        address collateralReceiver_,
        uint256 limitIndex_
    ) external {
        if (collateralAmountToPull_ != type(uint256).max) {
            collateralAmountToPull_ *= ajnaPool_.collateralScale();
        } else {
            (, collateralAmountToPull_, , ) = POOL_INFO_UTILS.borrowerInfo(address(ajnaPool_), borrowerAddress_);
        }

        if (amountToRepay_ != type(uint256).max) {
            amountToRepay_ *= ajnaPool_.quoteTokenScale();
        }

        IERC20 _quoteToken = IERC20(ajnaPool_.quoteTokenAddress());
        _quoteToken.forceApprove(address(ajnaPool_), type(uint256).max);
        ajnaPool_.repayDebt(
            borrowerAddress_,
            amountToRepay_,
            collateralAmountToPull_,
            collateralReceiver_,
            limitIndex_
        );
        _quoteToken.forceApprove(address(ajnaPool_), 0);
    }

    function interestRateOf(IAjnaPool ajnaPool_) external view returns (uint256 _interestRate) {
        (_interestRate, ) = ajnaPool_.interestRateInfo();
    }

    function dynamicMaxLTV(IAjnaPool ajnaPool_, IMasterOracle oracle_) external view returns (uint256) {
        uint256 _marketPrice = oracle_.quote(
            ajnaPool_.collateralAddress(),
            ajnaPool_.quoteTokenAddress(),
            1e18 / ajnaPool_.collateralScale()
        ) * ajnaPool_.quoteTokenScale();

        uint256 _lup = POOL_INFO_UTILS.lup(address(ajnaPool_));

        return (_lup * 1e18) / _marketPrice;
    }

    function healthFactorOf(IAjnaPool ajnaPool_, address user_) external view returns (uint256 _healthFactor) {
        uint256 _lup = POOL_INFO_UTILS.lup(address(ajnaPool_));
        (, , , uint256 _tp) = POOL_INFO_UTILS.borrowerInfo(address(ajnaPool_), user_);
        return (_lup * 1e18) / _tp;
    }
}

// ============================================================
// FILE: src/components/SwapAggregator.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

struct SwapParams {
    // The executor contract to use
    uint8 executorIndex;
    // The token to sell
    IERC20 tokenIn;
    // The token to buy
    IERC20 tokenOut;
    // The amount to sell
    uint256 amountIn;
    // The beneficiary of the swap
    address receiver;
    // The aggregator's call that will perform the swap.
    // Check `SwapAggregator.EXECUTOR` to see which swapper/aggregator contract will be called.
    bytes callData;
}

/// @title Component delegate calls wrapper
library SwapAggregatorDelegateCalls {
    using Address for address;

    function delegateSwap(
        SwapAggregator aggregator_,
        SwapParams memory swapParams_
    ) internal returns (uint256 _amountIn, uint256 _amountOut) {
        bytes memory _ret = address(aggregator_).functionDelegateCall(
            abi.encodeWithSelector(SwapAggregator.swap.selector, swapParams_)
        );
        return abi.decode(_ret, (uint256, uint256));
    }
}

/// @title Swap aggregator component
contract SwapAggregator {
    using Address for address;
    using SafeERC20 for IERC20;

    /// @notice The swapper contract (e.g., aggregator for 1-inch, AllowanceHolder for Matcha/0x, etc).
    /// @dev To avoid misuse of the `callData`, the swap aggregator mustn't allow more than one swap in the same call.
    /// Otherwise the user could transfer funds out bypassing the strategies safe-guards.
    /// On top of the swap call itself, we perform validations using metadata to ensure the call is executing the intended swap.
    address public immutable EXECUTOR_0;
    address public immutable EXECUTOR_1;
    address public immutable EXECUTOR_2;

    error NoCallData();
    error SwapWasNotExecuted();
    error AddressIsNull();
    error InvalidExecutor();

    constructor(address executor0_, address executor1_, address executor2_) {
        if (executor0_ == address(0)) revert AddressIsNull();

        EXECUTOR_0 = executor0_;
        EXECUTOR_1 = executor1_;
        EXECUTOR_2 = executor2_;
    }

    /// @notice Execute a swap
    /// The actual swap must correspond the metadata set in parameters otherwise the call will revert.
    /// @param swapParams_ The swap params
    function swap(SwapParams calldata swapParams_) external returns (uint256 _amountIn, uint256 _amountOut) {
        if (swapParams_.callData.length == 0) revert NoCallData();
        if (swapParams_.receiver == address(0)) revert AddressIsNull();

        address _executor = _getExecutor(swapParams_.executorIndex);

        uint256 _inBefore = swapParams_.tokenIn.balanceOf(address(this));
        uint256 _outBefore = swapParams_.tokenOut.balanceOf(swapParams_.receiver);

        swapParams_.tokenIn.forceApprove(_executor, swapParams_.amountIn);
        _executor.functionCall(swapParams_.callData);

        uint256 _inAfter = swapParams_.tokenIn.balanceOf(address(this));
        uint256 _outAfter = swapParams_.tokenOut.balanceOf(swapParams_.receiver);

        if (_inAfter >= _inBefore || _inBefore - _inAfter != swapParams_.amountIn || _outAfter <= _outBefore)
            revert SwapWasNotExecuted();

        _amountIn = _inBefore - _inAfter;
        _amountOut = _outAfter - _outBefore;
    }

    function _getExecutor(uint256 index_) private view returns (address _executor) {
        if (index_ == 0) _executor = EXECUTOR_0;
        else if (index_ == 1) _executor = EXECUTOR_1;
        else if (index_ == 2) _executor = EXECUTOR_2;

        if (_executor == address(0)) revert InvalidExecutor();
    }
}

// ============================================================
// FILE: src/interfaces/external/ajna/commons/IPoolBorrowerActions.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title Pool Borrower Actions
 */
interface IPoolBorrowerActions {
    /**
     *  @notice Called by fully collateralized borrowers to restamp the `Np to Tp ratio` of the loan (only if loan is fully collateralized and not in auction).
     *          The reason for stamping the `Np to Tp ratio` on the loan is to provide some certainty to the borrower as to at what price they can expect to be liquidated.
     *          This action can restamp only the loan of `msg.sender`.
     */
    function stampLoan() external;
}

// ============================================================
// FILE: src/interfaces/external/ajna/commons/IPoolDerivedState.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title Pool Derived State
 */
interface IPoolDerivedState {
    /**
     *  @notice Returns the exchange rate for a given bucket index.
     *  @param  index_        The bucket index.
     *  @return exchangeRate_ Exchange rate of the bucket (`WAD` precision).
     */
    function bucketExchangeRate(uint256 index_) external view returns (uint256 exchangeRate_);

    /**
     *  @notice Returns the prefix sum of a given bucket.
     *  @param  index_   The bucket index.
     *  @return The deposit up to given index (`WAD` precision).
     */
    function depositUpToIndex(uint256 index_) external view returns (uint256);

    /**
     *  @notice Returns the bucket index for a given debt amount.
     *  @param  debt_  The debt amount to calculate bucket index for (`WAD` precision).
     *  @return Bucket index.
     */
    function depositIndex(uint256 debt_) external view returns (uint256);

    /**
     *  @notice Returns the total amount of quote tokens deposited in pool.
     *  @return Total amount of deposited quote tokens (`WAD` precision).
     */
    function depositSize() external view returns (uint256);

    /**
     *  @notice Returns the meaningful actual utilization of the pool.
     *  @return Deposit utilization (`WAD` precision).
     */
    function depositUtilization() external view returns (uint256);

    /**
     *  @notice Returns the scaling value of deposit at given index.
     *  @param  index_  Deposit index.
     *  @return Deposit scaling (`WAD` precision).
     */
    function depositScale(uint256 index_) external view returns (uint256);
}

// ============================================================
// FILE: src/interfaces/external/ajna/commons/IPoolEvents.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title Pool Events
 */
interface IPoolEvents {
    /*********************/
    /*** Lender events ***/
    /*********************/

    /**
     *  @notice Emitted when lender adds quote token to the pool.
     *  @param  lender    Recipient that added quote tokens.
     *  @param  index     Index at which quote tokens were added.
     *  @param  amount    Amount of quote tokens added to the pool (`WAD` precision).
     *  @param  lpAwarded Amount of `LP` awarded for the deposit (`WAD` precision).
     *  @param  lup       `LUP` calculated after deposit.
     */
    event AddQuoteToken(address indexed lender, uint256 indexed index, uint256 amount, uint256 lpAwarded, uint256 lup);

    /**
     *  @notice Emitted when lender moves quote token from a bucket price to another.
     *  @param  lender         Recipient that moved quote tokens.
     *  @param  from           Price bucket from which quote tokens were moved.
     *  @param  to             Price bucket where quote tokens were moved.
     *  @param  amount         Amount of quote tokens moved (`WAD` precision).
     *  @param  lpRedeemedFrom Amount of `LP` removed from the `from` bucket (`WAD` precision).
     *  @param  lpAwardedTo    Amount of `LP` credited to the `to` bucket (`WAD` precision).
     *  @param  lup            `LUP` calculated after removal.
     */
    event MoveQuoteToken(
        address indexed lender,
        uint256 indexed from,
        uint256 indexed to,
        uint256 amount,
        uint256 lpRedeemedFrom,
        uint256 lpAwardedTo,
        uint256 lup
    );

    /**
     *  @notice Emitted when lender removes quote token from the pool.
     *  @param  lender     Recipient that removed quote tokens.
     *  @param  index      Index at which quote tokens were removed.
     *  @param  amount     Amount of quote tokens removed from the pool (`WAD` precision).
     *  @param  lpRedeemed Amount of `LP` exchanged for quote token (`WAD` precision).
     *  @param  lup        `LUP` calculated after removal.
     */
    event RemoveQuoteToken(
        address indexed lender,
        uint256 indexed index,
        uint256 amount,
        uint256 lpRedeemed,
        uint256 lup
    );

    /**
     *  @notice Emitted when lender claims collateral from a bucket.
     *  @param  claimer    Recipient that claimed collateral.
     *  @param  index      Index at which collateral was claimed.
     *  @param  amount     The amount of collateral (`WAD` precision for `ERC20` pools, number of `NFT` tokens for `ERC721` pools) transferred to the claimer.
     *  @param  lpRedeemed Amount of `LP` exchanged for quote token (`WAD` precision).
     */
    event RemoveCollateral(address indexed claimer, uint256 indexed index, uint256 amount, uint256 lpRedeemed);

    /***********************/
    /*** Borrower events ***/
    /***********************/

    /**
     *  @notice Emitted when borrower repays quote tokens to the pool and/or pulls collateral from the pool.
     *  @param  borrower         `msg.sender` or on behalf of sender.
     *  @param  quoteRepaid      Amount of quote tokens repaid to the pool (`WAD` precision).
     *  @param  collateralPulled The amount of collateral (`WAD` precision for `ERC20` pools, number of `NFT` tokens for `ERC721` pools) transferred to the claimer.
     *  @param  lup              `LUP` after repay.
     */
    event RepayDebt(address indexed borrower, uint256 quoteRepaid, uint256 collateralPulled, uint256 lup);

    /**********************/
    /*** Auction events ***/
    /**********************/

    /**
     *  @notice Emitted when a liquidation is initiated.
     *  @param  borrower   Identifies the loan being liquidated.
     *  @param  debt       Debt the liquidation will attempt to cover (`WAD` precision).
     *  @param  collateral Amount of collateral up for liquidation (`WAD` precision for `ERC20` pools, number of `NFT` tokens for `ERC721` pools).
     *  @param  bond       Bond amount locked by kicker (`WAD` precision).
     */
    event Kick(address indexed borrower, uint256 debt, uint256 collateral, uint256 bond);

    /**
     *  @notice Emitted when kickers are withdrawing funds posted as auction bonds.
     *  @param  kicker   The kicker withdrawing bonds.
     *  @param  reciever The address receiving withdrawn bond amount.
     *  @param  amount   The bond amount that was withdrawn (`WAD` precision).
     */
    event BondWithdrawn(address indexed kicker, address indexed reciever, uint256 amount);

    /**
     *  @notice Emitted when an actor uses quote token to arb higher-priced deposit off the book.
     *  @param  borrower    Identifies the loan being liquidated.
     *  @param  index       The index of the `Highest Price Bucket` used for this take.
     *  @param  amount      Amount of quote token used to purchase collateral (`WAD` precision).
     *  @param  collateral  Amount of collateral purchased with quote token (`WAD` precision).
     *  @param  bondChange  Impact of this take to the liquidation bond (`WAD` precision).
     *  @param  isReward    `True` if kicker was rewarded with `bondChange` amount, `false` if kicker was penalized.
     *  @dev    amount / collateral implies the auction price.
     */
    event BucketTake(
        address indexed borrower,
        uint256 index,
        uint256 amount,
        uint256 collateral,
        uint256 bondChange,
        bool isReward
    );

    /**
     *  @notice Emitted when `LP` are awarded to a taker or kicker in a bucket take.
     *  @param  taker           Actor who invoked the bucket take.
     *  @param  kicker          Actor who started the auction.
     *  @param  lpAwardedTaker  Amount of `LP` awarded to the taker (`WAD` precision).
     *  @param  lpAwardedKicker Amount of `LP` awarded to the actor who started the auction (`WAD` precision).
     */
    event BucketTakeLPAwarded(
        address indexed taker,
        address indexed kicker,
        uint256 lpAwardedTaker,
        uint256 lpAwardedKicker
    );

    /**
     *  @notice Emitted when an actor uses quote token outside of the book to purchase collateral under liquidation.
     *  @param  borrower   Identifies the loan being liquidated.
     *  @param  amount     Amount of quote token used to purchase collateral (`WAD` precision).
     *  @param  collateral Amount of collateral purchased with quote token (for `ERC20` pool, `WAD` precision) or number of `NFT`s purchased (for `ERC721` pool).
     *  @param  bondChange Impact of this take to the liquidation bond (`WAD` precision).
     *  @param  isReward   `True` if kicker was rewarded with `bondChange` amount, `false` if kicker was penalized.
     *  @dev    amount / collateral implies the auction price.
     */
    event Take(address indexed borrower, uint256 amount, uint256 collateral, uint256 bondChange, bool isReward);

    /**
     *  @notice Emitted when an actor settles debt in a completed liquidation
     *  @param  borrower    Identifies the loan under liquidation.
     *  @param  settledDebt Amount of pool debt settled in this transaction (`WAD` precision).
     *  @dev    When `amountRemaining_ == 0`, the auction has been completed cleared and removed from the queue.
     */
    event Settle(address indexed borrower, uint256 settledDebt);

    /**
     *  @notice Emitted when auction is completed.
     *  @param  borrower   Address of borrower that exits auction.
     *  @param  collateral Borrower's remaining collateral when auction completed (`WAD` precision).
     */
    event AuctionSettle(address indexed borrower, uint256 collateral);

    /**
     *  @notice Emitted when `NFT` auction is completed.
     *  @param  borrower   Address of borrower that exits auction.
     *  @param  collateral Borrower's remaining collateral when auction completed.
     *  @param  lp         Amount of `LP` given to the borrower to compensate fractional collateral (if any, `WAD` precision).
     *  @param  index      Index of the bucket with `LP` to compensate fractional collateral.
     */
    event AuctionNFTSettle(address indexed borrower, uint256 collateral, uint256 lp, uint256 index);

    /**
     *  @notice Emitted when a `Claimaible Reserve Auction` is started.
     *  @param  claimableReservesRemaining Amount of claimable reserves which has not yet been taken (`WAD` precision).
     *  @param  auctionPrice               Current price at which `1` quote token may be purchased, denominated in `Ajna`.
     *  @param  currentBurnEpoch           Current burn epoch.
     */
    event KickReserveAuction(uint256 claimableReservesRemaining, uint256 auctionPrice, uint256 currentBurnEpoch);

    /**
     *  @notice Emitted when a `Claimaible Reserve Auction` is taken.
     *  @param  claimableReservesRemaining Amount of claimable reserves which has not yet been taken (`WAD` precision).
     *  @param  auctionPrice               Current price at which `1` quote token may be purchased, denominated in `Ajna`.
     *  @param  currentBurnEpoch           Current burn epoch.
     */
    event ReserveAuction(uint256 claimableReservesRemaining, uint256 auctionPrice, uint256 currentBurnEpoch);

    /**************************/
    /*** LP transfer events ***/
    /**************************/

    /**
     *  @notice Emitted when owner increase the `LP` allowance of a spender at specified indexes with specified amounts.
     *  @param  owner     `LP` owner.
     *  @param  spender   Address approved to transfer `LP`.
     *  @param  indexes   Bucket indexes of `LP` approved.
     *  @param  amounts   `LP` amounts added (ordered by indexes, `WAD` precision).
     */
    event IncreaseLPAllowance(address indexed owner, address indexed spender, uint256[] indexes, uint256[] amounts);

    /**
     *  @notice Emitted when owner decrease the `LP` allowance of a spender at specified indexes with specified amounts.
     *  @param  owner     `LP` owner.
     *  @param  spender   Address approved to transfer `LP`.
     *  @param  indexes   Bucket indexes of `LP` approved.
     *  @param  amounts   `LP` amounts removed (ordered by indexes, `WAD` precision).
     */
    event DecreaseLPAllowance(address indexed owner, address indexed spender, uint256[] indexes, uint256[] amounts);

    /**
     *  @notice Emitted when lender removes the allowance of a spender for their `LP`.
     *  @param  owner   `LP` owner.
     *  @param  spender Address that is having it's allowance revoked.
     *  @param  indexes List of bucket index to remove the allowance from.
     */
    event RevokeLPAllowance(address indexed owner, address indexed spender, uint256[] indexes);

    /**
     *  @notice Emitted when lender whitelists addresses to accept `LP` from.
     *  @param  lender      Recipient that approves new owner for `LP`.
     *  @param  transferors List of addresses that can transfer `LP` to lender.
     */
    event ApproveLPTransferors(address indexed lender, address[] transferors);

    /**
     *  @notice Emitted when lender removes addresses from the `LP` transferors whitelist.
     *  @param  lender      Recipient that approves new owner for `LP`.
     *  @param  transferors List of addresses that won't be able to transfer `LP` to lender anymore.
     */
    event RevokeLPTransferors(address indexed lender, address[] transferors);

    /**
     *  @notice Emitted when a lender transfers their `LP` to a different address.
     *  @dev    Used by `PositionManager.memorializePositions()`.
     *  @param  owner    The original owner address of the position.
     *  @param  newOwner The new owner address of the position.
     *  @param  indexes  Array of price bucket indexes at which `LP` were transferred.
     *  @param  lp       Amount of `LP` transferred (`WAD` precision).
     */
    event TransferLP(address owner, address newOwner, uint256[] indexes, uint256 lp);

    /**************************/
    /*** Pool common events ***/
    /**************************/

    /**
     *  @notice Emitted when `LP` are forfeited as a result of the bucket losing all assets.
     *  @param  index       The index of the bucket.
     *  @param  lpForfeited Amount of `LP` forfeited by lenders (`WAD` precision).
     */
    event BucketBankruptcy(uint256 indexed index, uint256 lpForfeited);

    /**
     *  @notice Emitted when a flashloan is taken from pool.
     *  @param  receiver The address receiving the flashloan.
     *  @param  token    The address of token flashloaned from pool.
     *  @param  amount   The amount of tokens flashloaned from pool (token precision).
     */
    event Flashloan(address indexed receiver, address indexed token, uint256 amount);

    /**
     *  @notice Emitted when a loan `Np to Tp ratio` is restamped.
     *  @param  borrower Identifies the loan to update the `Np to Tp ratio`.
     */
    event LoanStamped(address indexed borrower);

    /**
     *  @notice Emitted when pool interest rate is reset. This happens when `interest rate > 10%` and `debtEma < 5%` of `depositEma`
     *  @param  oldRate Old pool interest rate.
     *  @param  newRate New pool interest rate.
     */
    event ResetInterestRate(uint256 oldRate, uint256 newRate);

    /**
     *  @notice Emitted when pool interest rate is updated.
     *  @param  oldRate Old pool interest rate.
     *  @param  newRate New pool interest rate.
     */
    event UpdateInterestRate(uint256 oldRate, uint256 newRate);

    /**
     *  @notice Emitted when interest accural or update interest overflows.
     */
    event InterestUpdateFailure();
}

// ============================================================
// FILE: src/interfaces/external/ajna/commons/IPoolImmutables.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title Pool Immutables
 */
interface IPoolImmutables {
    /**
     *  @notice Returns the type of the pool (`0` for `ERC20`, `1` for `ERC721`).
     */
    function poolType() external pure returns (uint8);

    /**
     *  @notice Returns the address of the pool's collateral token.
     */
    function collateralAddress() external pure returns (address);

    /**
     *  @notice Returns the address of the pool's quote token.
     */
    function quoteTokenAddress() external pure returns (address);

    /**
     *  @notice Returns the `quoteTokenScale` state variable.
     *  @notice Token scale is also the minimum amount a lender may have in a bucket (dust amount).
     *  @return The precision of the quote `ERC20` token based on decimals.
     */
    function quoteTokenScale() external pure returns (uint256);
}

// ============================================================
// FILE: src/interfaces/external/ajna/commons/IPoolInfoUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

interface IPoolInfoUtils {
    function borrowerInfo(
        address ajnaPool_,
        address borrower_
    ) external view returns (uint256 debt_, uint256 collateral_, uint256 t0Np_, uint256 thresholdPrice_);

    function borrowFeeRate(address ajnaPool_) external view returns (uint256);

    function lup(address ajnPool_) external view returns (uint256);
}

// ============================================================
// FILE: src/interfaces/external/ajna/commons/IPoolLenderActions.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title Pool Lender Actions
 */
interface IPoolLenderActions {
    /*********************************************/
    /*** Quote/collateral management functions ***/
    /*********************************************/

    /**
     *  @notice Called by lenders to add an amount of credit at a specified price bucket.
     *  @param  amount_           The amount of quote token to be added by a lender (`WAD` precision).
     *  @param  index_            The index of the bucket to which the quote tokens will be added.
     *  @param  expiry_           Timestamp after which this transaction will revert, preventing inclusion in a block with unfavorable price.
     *  @return bucketLP_         The amount of `LP` changed for the added quote tokens (`WAD` precision).
     *  @return addedAmount_      The amount of quote token added (`WAD` precision).
     */
    function addQuoteToken(
        uint256 amount_,
        uint256 index_,
        uint256 expiry_
    ) external returns (uint256 bucketLP_, uint256 addedAmount_);

    /**
     *  @notice Called by lenders to move an amount of credit from a specified price bucket to another specified price bucket.
     *  @param  maxAmount_        The maximum amount of quote token to be moved by a lender (`WAD` precision).
     *  @param  fromIndex_        The bucket index from which the quote tokens will be removed.
     *  @param  toIndex_          The bucket index to which the quote tokens will be added.
     *  @param  expiry_           Timestamp after which this transaction will revert, preventing inclusion in a block with unfavorable price.
     *  @return fromBucketLP_     The amount of `LP` moved out from bucket (`WAD` precision).
     *  @return toBucketLP_       The amount of `LP` moved to destination bucket (`WAD` precision).
     *  @return movedAmount_      The amount of quote token moved (`WAD` precision).
     */
    function moveQuoteToken(
        uint256 maxAmount_,
        uint256 fromIndex_,
        uint256 toIndex_,
        uint256 expiry_
    ) external returns (uint256 fromBucketLP_, uint256 toBucketLP_, uint256 movedAmount_);

    /**
     *  @notice Called by lenders to claim collateral from a price bucket.
     *  @param  maxAmount_     The amount of collateral (`WAD` precision for `ERC20` pools, number of `NFT` tokens for `ERC721` pools) to claim.
     *  @param  index_         The bucket index from which collateral will be removed.
     *  @return removedAmount_ The amount of collateral removed (`WAD` precision).
     *  @return redeemedLP_    The amount of `LP` used for removing collateral amount (`WAD` precision).
     */
    function removeCollateral(
        uint256 maxAmount_,
        uint256 index_
    ) external returns (uint256 removedAmount_, uint256 redeemedLP_);

    /**
     *  @notice Called by lenders to remove an amount of credit at a specified price bucket.
     *  @param  maxAmount_     The max amount of quote token to be removed by a lender (`WAD` precision).
     *  @param  index_         The bucket index from which quote tokens will be removed.
     *  @return removedAmount_ The amount of quote token removed (`WAD` precision).
     *  @return redeemedLP_    The amount of `LP` used for removing quote tokens amount (`WAD` precision).
     */
    function removeQuoteToken(
        uint256 maxAmount_,
        uint256 index_
    ) external returns (uint256 removedAmount_, uint256 redeemedLP_);

    /********************************/
    /*** Interest update function ***/
    /********************************/

    /**
     *  @notice Called by actors to update pool interest rate (can be updated only once in a `12` hours period of time).
     */
    function updateInterest() external;
}

// ============================================================
// FILE: src/interfaces/external/ajna/commons/IPoolLPActions.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title Pool `LP` Actions
 */
interface IPoolLPActions {
    /**
     *  @notice Called by `LP` owners to approve transfer of an amount of `LP` to a new owner.
     *  @dev    Intended for use by the `PositionManager` contract.
     *  @param  spender_ The new owner of the `LP`.
     *  @param  indexes_ Bucket indexes from where `LP` are transferred.
     *  @param  amounts_ The amounts of `LP` approved to transfer (`WAD` precision).
     */
    function increaseLPAllowance(address spender_, uint256[] calldata indexes_, uint256[] calldata amounts_) external;

    /**
     *  @notice Called by `LP` owners to decrease the amount of `LP` that can be spend by a new owner.
     *  @dev    Intended for use by the `PositionManager` contract.
     *  @param  spender_ The new owner of the `LP`.
     *  @param  indexes_ Bucket indexes from where `LP` are transferred.
     *  @param  amounts_ The amounts of `LP` disapproved to transfer (`WAD` precision).
     */
    function decreaseLPAllowance(address spender_, uint256[] calldata indexes_, uint256[] calldata amounts_) external;

    /**
     *  @notice Called by `LP` owners to decrease the amount of `LP` that can be spend by a new owner.
     *  @param  spender_ Address that is having it's allowance revoked.
     *  @param  indexes_ List of bucket index to remove the allowance from.
     */
    function revokeLPAllowance(address spender_, uint256[] calldata indexes_) external;

    /**
     *  @notice Called by `LP` owners to allow addresses that can transfer LP.
     *  @dev    Intended for use by the `PositionManager` contract.
     *  @param  transferors_ Addresses that are allowed to transfer `LP` to new owner.
     */
    function approveLPTransferors(address[] calldata transferors_) external;

    /**
     *  @notice Called by `LP` owners to revoke addresses that can transfer `LP`.
     *  @dev    Intended for use by the `PositionManager` contract.
     *  @param  transferors_ Addresses that are revoked to transfer `LP` to new owner.
     */
    function revokeLPTransferors(address[] calldata transferors_) external;

    /**
     *  @notice Called by `LP` owners to transfers their `LP` to a different address. `approveLpOwnership` needs to be run first.
     *  @dev    Used by `PositionManager.memorializePositions()`.
     *  @param  owner_    The original owner address of the position.
     *  @param  newOwner_ The new owner address of the position.
     *  @param  indexes_  Array of price buckets index at which `LP` were moved.
     */
    function transferLP(address owner_, address newOwner_, uint256[] calldata indexes_) external;
}

// ============================================================
// FILE: src/interfaces/external/ajna/commons/IPoolState.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title Pool State
 */
interface IPoolState {
    /**
     *  @notice Returns details of an auction for a given borrower address.
     *  @param  borrower_         Address of the borrower that is liquidated.
     *  @return kicker_           Address of the kicker that is kicking the auction.
     *  @return bondFactor_       The factor used for calculating bond size.
     *  @return bondSize_         The bond amount in quote token terms.
     *  @return kickTime_         Time the liquidation was initiated.
     *  @return referencePrice_   Price used to determine auction start price.
     *  @return neutralPrice_     `Neutral Price` of auction.
     *  @return debtToCollateral_ Borrower debt to collateral, which is used in BPF for kicker's reward calculation.
     *  @return head_             Address of the head auction.
     *  @return next_             Address of the next auction in queue.
     *  @return prev_             Address of the prev auction in queue.
     */
    function auctionInfo(
        address borrower_
    )
        external
        view
        returns (
            address kicker_,
            uint256 bondFactor_,
            uint256 bondSize_,
            uint256 kickTime_,
            uint256 referencePrice_,
            uint256 neutralPrice_,
            uint256 debtToCollateral_,
            address head_,
            address next_,
            address prev_
        );

    /**
     *  @notice Returns pool related debt values.
     *  @return debt_                Current amount of debt owed by borrowers in pool.
     *  @return accruedDebt_         Debt owed by borrowers based on last inflator snapshot.
     *  @return debtInAuction_       Total amount of debt in auction.
     *  @return t0Debt2ToCollateral_ t0debt accross all borrowers divided by their collateral, used in determining a collateralization weighted debt.
     */
    function debtInfo()
        external
        view
        returns (uint256 debt_, uint256 accruedDebt_, uint256 debtInAuction_, uint256 t0Debt2ToCollateral_);

    /**
     *  @notice Mapping of borrower addresses to `Borrower` structs.
     *  @dev    NOTE: Cannot use appended underscore syntax for return params since struct is used.
     *  @param  borrower_   Address of the borrower.
     *  @return t0Debt_     Amount of debt borrower would have had if their loan was the first debt drawn from the pool.
     *  @return collateral_ Amount of collateral that the borrower has deposited, in collateral token.
     *  @return npTpRatio_  Np to Tp ratio of borrower at the time of last borrow or pull collateral.
     */
    function borrowerInfo(
        address borrower_
    ) external view returns (uint256 t0Debt_, uint256 collateral_, uint256 npTpRatio_);

    /**
     *  @notice Mapping of buckets indexes to `Bucket` structs.
     *  @dev    NOTE: Cannot use appended underscore syntax for return params since struct is used.
     *  @param  index_               Bucket index.
     *  @return lpAccumulator_       Amount of `LP` accumulated in current bucket.
     *  @return availableCollateral_ Amount of collateral available in current bucket.
     *  @return bankruptcyTime_      Timestamp when bucket become insolvent, `0` if healthy.
     *  @return bucketDeposit_       Amount of quote tokens in bucket.
     *  @return bucketScale_         Bucket multiplier.
     */
    function bucketInfo(
        uint256 index_
    )
        external
        view
        returns (
            uint256 lpAccumulator_,
            uint256 availableCollateral_,
            uint256 bankruptcyTime_,
            uint256 bucketDeposit_,
            uint256 bucketScale_
        );

    /**
     *  @notice Mapping of burnEventEpoch to `BurnEvent` structs.
     *  @dev    Reserve auctions correspond to burn events.
     *  @param  burnEventEpoch_  Id of the current reserve auction.
     *  @return burnBlock_       Block in which a reserve auction started.
     *  @return totalInterest_   Total interest as of the reserve auction.
     *  @return totalBurned_     Total ajna tokens burned as of the reserve auction.
     */
    function burnInfo(uint256 burnEventEpoch_) external view returns (uint256, uint256, uint256);

    /**
     *  @notice Returns the latest `burnEventEpoch` of reserve auctions.
     *  @dev    If a reserve auction is active, it refers to the current reserve auction. If no reserve auction is active, it refers to the last reserve auction.
     *  @return Current `burnEventEpoch`.
     */
    function currentBurnEpoch() external view returns (uint256);

    /**
     *  @notice Returns information about the pool `EMA (Exponential Moving Average)` variables.
     *  @return debtColEma_   Debt squared to collateral Exponential, numerator to `TU` calculation.
     *  @return lupt0DebtEma_ Exponential of `LUP * t0 debt`, denominator to `TU` calculation
     *  @return debtEma_      Exponential debt moving average.
     *  @return depositEma_   sample of meaningful deposit Exponential, denominator to `MAU` calculation.
     */
    function emasInfo()
        external
        view
        returns (uint256 debtColEma_, uint256 lupt0DebtEma_, uint256 debtEma_, uint256 depositEma_);

    /**
     *  @notice Returns information about pool inflator.
     *  @return inflator_   Pool inflator value.
     *  @return lastUpdate_ The timestamp of the last `inflator` update.
     */
    function inflatorInfo() external view returns (uint256 inflator_, uint256 lastUpdate_);

    /**
     *  @notice Returns information about pool interest rate.
     *  @return interestRate_       Current interest rate in pool.
     *  @return interestRateUpdate_ The timestamp of the last interest rate update.
     */
    function interestRateInfo() external view returns (uint256 interestRate_, uint256 interestRateUpdate_);

    /**
     *  @notice Returns details about kicker balances.
     *  @param  kicker_    The address of the kicker to retrieved info for.
     *  @return claimable_ Amount of quote token kicker can claim / withdraw from pool at any time.
     *  @return locked_    Amount of quote token kicker locked in auctions (as bonds).
     */
    function kickerInfo(address kicker_) external view returns (uint256 claimable_, uint256 locked_);

    /**
     *  @notice Mapping of buckets indexes and owner addresses to `Lender` structs.
     *  @param  index_       Bucket index.
     *  @param  lender_      Address of the liquidity provider.
     *  @return lpBalance_   Amount of `LP` owner has in current bucket.
     *  @return depositTime_ Time the user last deposited quote token.
     */
    function lenderInfo(
        uint256 index_,
        address lender_
    ) external view returns (uint256 lpBalance_, uint256 depositTime_);

    /**
     *  @notice Return the `LP` allowance a `LP` owner provided to a spender.
     *  @param  index_     Bucket index.
     *  @param  spender_   Address of the `LP` spender.
     *  @param  owner_     The initial owner of the `LP`.
     *  @return allowance_ Amount of `LP` spender can utilize.
     */
    function lpAllowance(uint256 index_, address spender_, address owner_) external view returns (uint256 allowance_);

    /**
     *  @notice Returns information about a loan in the pool.
     *  @param  loanId_             Loan's id within loan heap. Max loan is position `1`.
     *  @return borrower_           Borrower address at the given position.
     *  @return t0DebtToCollateral_ Borrower t0 debt to collateral.
     */
    function loanInfo(uint256 loanId_) external view returns (address borrower_, uint256 t0DebtToCollateral_);

    /**
     *  @notice Returns information about pool loans.
     *  @return maxBorrower_           Borrower address with highest t0 debt to collateral.
     *  @return maxT0DebtToCollateral_ Highest t0 debt to collateral in pool.
     *  @return noOfLoans_             Total number of loans.
     */
    function loansInfo()
        external
        view
        returns (address maxBorrower_, uint256 maxT0DebtToCollateral_, uint256 noOfLoans_);

    /**
     *  @notice Returns information about pool reserves.
     *  @return liquidationBondEscrowed_ Amount of liquidation bond across all liquidators.
     *  @return reserveAuctionUnclaimed_ Amount of claimable reserves which has not been taken in the `Claimable Reserve Auction`.
     *  @return reserveAuctionKicked_    Time a `Claimable Reserve Auction` was last kicked.
     *  @return lastKickedReserves_      Amount of reserves upon last kick, used to calculate price.
     *  @return totalInterestEarned_     Total interest earned by all lenders in the pool
     */
    function reservesInfo()
        external
        view
        returns (
            uint256 liquidationBondEscrowed_,
            uint256 reserveAuctionUnclaimed_,
            uint256 reserveAuctionKicked_,
            uint256 lastKickedReserves_,
            uint256 totalInterestEarned_
        );

    /**
     *  @notice Returns the `pledgedCollateral` state variable.
     *  @return The total pledged collateral in the system, in WAD units.
     */
    function pledgedCollateral() external view returns (uint256);

    /**
     *  @notice Returns the total number of active auctions in pool.
     *  @return totalAuctions_ Number of active auctions.
     */
    function totalAuctionsInPool() external view returns (uint256);

    /**
     *  @notice Returns the `t0Debt` state variable.
     *  @dev    This value should be multiplied by inflator in order to calculate current debt of the pool.
     *  @return The total `t0Debt` in the system, in `WAD` units.
     */
    function totalT0Debt() external view returns (uint256);

    /**
     *  @notice Returns the `t0DebtInAuction` state variable.
     *  @dev    This value should be multiplied by inflator in order to calculate current debt in auction of the pool.
     *  @return The total `t0DebtInAuction` in the system, in `WAD` units.
     */
    function totalT0DebtInAuction() external view returns (uint256);

    /**
     *  @notice Mapping of addresses that can transfer `LP` to a given lender.
     *  @param  lender_     Lender that receives `LP`.
     *  @param  transferor_ Transferor that transfers `LP`.
     *  @return True if the transferor is approved by lender.
     */
    function approvedTransferors(address lender_, address transferor_) external view returns (bool);
}

/*********************/
/*** State Structs ***/
/*********************/

/******************/
/*** Pool State ***/
/******************/

/// @dev Struct holding inflator state.
struct InflatorState {
    uint208 inflator; // [WAD] pool's inflator
    uint48 inflatorUpdate; // [SEC] last time pool's inflator was updated
}

/// @dev Struct holding pool interest state.
struct InterestState {
    uint208 interestRate; // [WAD] pool's interest rate
    uint48 interestRateUpdate; // [SEC] last time pool's interest rate was updated (not before 12 hours passed)
    uint256 debt; // [WAD] previous update's debt
    uint256 meaningfulDeposit; // [WAD] previous update's meaningfulDeposit
    uint256 t0Debt2ToCollateral; // [WAD] utilization weight accumulator, tracks debt and collateral relationship accross borrowers
    uint256 debtCol; // [WAD] previous debt squared to collateral
    uint256 lupt0Debt; // [WAD] previous LUP * t0 debt
}

/// @dev Struct holding pool EMAs state.
struct EmaState {
    uint256 debtEma; // [WAD] sample of debt EMA, numerator to MAU calculation
    uint256 depositEma; // [WAD] sample of meaningful deposit EMA, denominator to MAU calculation
    uint256 debtColEma; // [WAD] debt squared to collateral EMA, numerator to TU calculation
    uint256 lupt0DebtEma; // [WAD] EMA of LUP * t0 debt, denominator to TU calculation
    uint256 emaUpdate; // [SEC] last time pool's EMAs were updated
}

/// @dev Struct holding pool balances state.
struct PoolBalancesState {
    uint256 pledgedCollateral; // [WAD] total collateral pledged in pool
    uint256 t0DebtInAuction; // [WAD] Total debt in auction used to restrict LPB holder from withdrawing
    uint256 t0Debt; // [WAD] Pool debt as if the whole amount was incurred upon the first loan
}

/// @dev Struct holding pool params (in memory only).
struct PoolState {
    uint8 poolType; // pool type, can be ERC20 or ERC721
    uint256 t0Debt; // [WAD] t0 debt in pool
    uint256 t0DebtInAuction; // [WAD] t0 debt in auction within pool
    uint256 debt; // [WAD] total debt in pool, accrued in current block
    uint256 collateral; // [WAD] total collateral pledged in pool
    uint256 inflator; // [WAD] current pool inflator
    bool isNewInterestAccrued; // true if new interest already accrued in current block
    uint256 rate; // [WAD] pool's current interest rate
    uint256 quoteTokenScale; // [WAD] quote token scale of the pool. Same as quote token dust.
}

/*********************/
/*** Buckets State ***/
/*********************/

/// @dev Struct holding lender state.
struct Lender {
    uint256 lps; // [WAD] Lender LP accumulator
    uint256 depositTime; // timestamp of last deposit
}

/// @dev Struct holding bucket state.
struct Bucket {
    uint256 lps; // [WAD] Bucket LP accumulator
    uint256 collateral; // [WAD] Available collateral tokens deposited in the bucket
    uint256 bankruptcyTime; // Timestamp when bucket become insolvent, 0 if healthy
    mapping(address => Lender) lenders; // lender address to Lender struct mapping
}

/**********************/
/*** Deposits State ***/
/**********************/

/// @dev Struct holding deposits (Fenwick) values and scaling.
struct DepositsState {
    uint256[8193] values; // Array of values in the FenwickTree.
    uint256[8193] scaling; // Array of values which scale (multiply) the FenwickTree accross indexes.
}

/*******************/
/*** Loans State ***/
/*******************/

/// @dev Struct holding loans state.
struct LoansState {
    Loan[] loans;
    mapping(address => uint) indices; // borrower address => loan index mapping
    mapping(address => Borrower) borrowers; // borrower address => Borrower struct mapping
}

/// @dev Struct holding loan state.
struct Loan {
    address borrower; // borrower address
    uint96 t0DebtToCollateral; // [WAD] Borrower t0 debt to collateral.
}

/// @dev Struct holding borrower state.
struct Borrower {
    uint256 t0Debt; // [WAD] Borrower debt time-adjusted as if it was incurred upon first loan of pool.
    uint256 collateral; // [WAD] Collateral deposited by borrower.
    uint256 npTpRatio; // [WAD] Np to Tp ratio at the time of last borrow or pull collateral.
}

/**********************/
/*** Auctions State ***/
/**********************/

/// @dev Struct holding pool auctions state.
struct AuctionsState {
    uint96 noOfAuctions; // total number of auctions in pool
    address head; // first address in auction queue
    address tail; // last address in auction queue
    uint256 totalBondEscrowed; // [WAD] total amount of quote token posted as auction kick bonds
    mapping(address => Liquidation) liquidations; // mapping of borrower address and auction details
    mapping(address => Kicker) kickers; // mapping of kicker address and kicker balances
}

/// @dev Struct holding liquidation state.
struct Liquidation {
    address kicker; // address that initiated liquidation
    uint96 bondFactor; // [WAD] bond factor used to start liquidation
    uint96 kickTime; // timestamp when liquidation was started
    address prev; // previous liquidated borrower in auctions queue
    uint96 referencePrice; // [WAD] used to calculate auction start price
    address next; // next liquidated borrower in auctions queue
    uint160 bondSize; // [WAD] liquidation bond size
    uint96 neutralPrice; // [WAD] Neutral Price when liquidation was started
    uint256 debtToCollateral; // [WAD] Borrower debt to collateral, which is used in BPF for kicker's reward calculation
    uint256 t0ReserveSettleAmount; // [WAD] Amount of t0Debt that could be settled via reserves in this auction
}

/// @dev Struct holding kicker state.
struct Kicker {
    uint256 claimable; // [WAD] kicker's claimable balance
    uint256 locked; // [WAD] kicker's balance of tokens locked in auction bonds
}

/******************************/
/*** Reserve Auctions State ***/
/******************************/

/// @dev Struct holding reserve auction state.
struct ReserveAuctionState {
    uint256 kicked; // Time a Claimable Reserve Auction was last kicked.
    uint256 lastKickedReserves; // [WAD] Amount of reserves upon last kick, used to calculate price.
    uint256 unclaimed; // [WAD] Amount of claimable reserves which has not been taken in the Claimable Reserve Auction.
    uint256 latestBurnEventEpoch; // Latest burn event epoch.
    uint256 totalAjnaBurned; // [WAD] Total ajna burned in the pool.
    uint256 totalInterestEarned; // [WAD] Total interest earned by all lenders in the pool.
    mapping(uint256 => BurnEvent) burnEvents; // Mapping burnEventEpoch => BurnEvent.
}

/// @dev Struct holding burn event state.
struct BurnEvent {
    uint256 timestamp; // time at which the burn event occured
    uint256 totalInterest; // [WAD] current pool interest accumulator `PoolCommons.accrueInterest().newInterest`
    uint256 totalBurned; // [WAD] burn amount accumulator
}

// ============================================================
// FILE: src/interfaces/external/ajna/erc20/IAjnaPool.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IPool} from "./IPool.sol";
import {IERC20PoolBorrowerActions} from "./IERC20PoolBorrowerActions.sol";
import {IERC20PoolLenderActions} from "./IERC20PoolLenderActions.sol";
import {IERC20PoolImmutables} from "./IERC20PoolImmutables.sol";
import {IERC20PoolEvents} from "./IERC20PoolEvents.sol";

/**
 * @title ERC20 Pool
 */
interface IAjnaPool is
    IPool,
    IERC20PoolLenderActions,
    IERC20PoolBorrowerActions,
    IERC20PoolImmutables,
    IERC20PoolEvents
{

}

// ============================================================
// FILE: src/interfaces/external/ajna/erc20/IERC20PoolBorrowerActions.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title ERC20 Pool Borrower Actions
 */
interface IERC20PoolBorrowerActions {
    /**
     *  @notice Called by borrowers to add collateral to the pool and/or borrow quote from the pool.
     *  @dev    Can be called by borrowers with either `0` `amountToBorrow_` or `0` `collateralToPledge_`, if borrower only wants to take a single action.
     *  @param  borrowerAddress_    The borrower to whom collateral was pledged, and/or debt was drawn for.
     *  @param  amountToBorrow_     The amount of quote tokens to borrow (`WAD` precision).
     *  @param  limitIndex_         Lower bound of `LUP` change (if any) that the borrower will tolerate from a creating or modifying position.
     *  @param  collateralToPledge_ The amount of collateral to be added to the pool (`WAD` precision).
     */
    function drawDebt(
        address borrowerAddress_,
        uint256 amountToBorrow_,
        uint256 limitIndex_,
        uint256 collateralToPledge_
    ) external;

    /**
     *  @notice Called by borrowers to repay borrowed quote to the pool, and/or pull collateral form the pool.
     *  @dev    Can be called by borrowers with either `0` `maxQuoteTokenAmountToRepay_` or `0` `collateralAmountToPull_`, if borrower only wants to take a single action.
     *  @param  borrowerAddress_            The borrower whose loan is being interacted with.
     *  @param  maxQuoteTokenAmountToRepay_ The max amount of quote tokens to repay (`WAD` precision).
     *  @param  collateralAmountToPull_     The max amount of collateral to be puled from the pool (`WAD` precision).
     *  @param  recipient_                  The address to receive amount of pulled collateral.
     *  @param  limitIndex_                 Ensures `LUP` has not moved far from state when borrower pulls collateral.
     *  @return amountRepaid_               The amount of quote token repaid (`WAD` precision).
     */
    function repayDebt(
        address borrowerAddress_,
        uint256 maxQuoteTokenAmountToRepay_,
        uint256 collateralAmountToPull_,
        address recipient_,
        uint256 limitIndex_
    ) external returns (uint256 amountRepaid_);
}

// ============================================================
// FILE: src/interfaces/external/ajna/erc20/IERC20PoolEvents.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title ERC20 Pool Events
 */
interface IERC20PoolEvents {
    /**
     *  @notice Emitted when actor adds claimable collateral to a bucket.
     *  @param  actor     Recipient that added collateral.
     *  @param  index     Index at which collateral were added.
     *  @param  amount    Amount of collateral added to the pool (`WAD` precision).
     *  @param  lpAwarded Amount of `LP` awarded for the deposit (`WAD` precision).
     */
    event AddCollateral(address indexed actor, uint256 indexed index, uint256 amount, uint256 lpAwarded);

    /**
     *  @notice Emitted when borrower draws debt from the pool, or adds collateral to the pool.
     *  @param  borrower          The borrower to whom collateral was pledged, and/or debt was drawn for.
     *  @param  amountBorrowed    Amount of quote tokens borrowed from the pool (`WAD` precision).
     *  @param  collateralPledged Amount of collateral locked in the pool (`WAD` precision).
     *  @param  lup               `LUP` after borrow.
     */
    event DrawDebt(address indexed borrower, uint256 amountBorrowed, uint256 collateralPledged, uint256 lup);
}

// ============================================================
// FILE: src/interfaces/external/ajna/erc20/IERC20PoolImmutables.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title ERC20 Pool Immutables
 */
interface IERC20PoolImmutables {
    /**
     *  @notice Returns the `collateralScale` immutable.
     *  @return The precision of the collateral `ERC20` token based on decimals.
     */
    function collateralScale() external view returns (uint256);
}

// ============================================================
// FILE: src/interfaces/external/ajna/erc20/IERC20PoolLenderActions.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

/**
 * @title ERC20 Pool Lender Actions
 */
interface IERC20PoolLenderActions {
    /**
     *  @notice Deposit claimable collateral into a specified bucket.
     *  @param  amountToAdd_ Amount of collateral to deposit (`WAD` precision).
     *  @param  index_       The bucket index to which collateral will be deposited.
     *  @param  expiry_      Timestamp after which this transaction will revert, preventing inclusion in a block with unfavorable price.
     *  @return bucketLP_    The amount of `LP` awarded for the added collateral (`WAD` precision).
     */
    function addCollateral(uint256 amountToAdd_, uint256 index_, uint256 expiry_) external returns (uint256 bucketLP_);
}

// ============================================================
// FILE: src/interfaces/external/ajna/erc20/IPool.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IPoolEvents} from "../commons/IPoolEvents.sol";
import {IPoolBorrowerActions} from "../commons/IPoolBorrowerActions.sol";
import {IPoolLPActions} from "../commons/IPoolLPActions.sol";
import {IPoolLenderActions} from "../commons/IPoolLenderActions.sol";
import {IPoolImmutables} from "../commons/IPoolImmutables.sol";
import {IPoolState} from "../commons/IPoolState.sol";
import {IPoolDerivedState} from "../commons/IPoolDerivedState.sol";

/**
 * @title Base Pool Interface
 */
interface IPool is
    IPoolBorrowerActions,
    IPoolLPActions,
    IPoolLenderActions,
    IPoolImmutables,
    IPoolState,
    IPoolDerivedState,
    IPoolEvents
{

}

// ============================================================
// FILE: src/interfaces/external/IMasterOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

interface IMasterOracle {
    function quoteTokenToUsd(address _asset, uint256 _amount) external view returns (uint256 _amountInUsd);

    function quoteUsdToToken(address _asset, uint256 _amountInUsd) external view returns (uint256 _amount);

    function quote(address _assetIn, address _assetOut, uint256 _amountIn) external view returns (uint256 _amountOut);

    function getPriceInUsd(address token_) external view returns (uint256 _princeInUsd);
}

// ============================================================
// FILE: src/interfaces/IBorrowStrategy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IStrategy} from "./IStrategy.sol";

interface IBorrowStrategy is IStrategy {
    /// @notice Get Loan-to-value
    /// @return _ltv The `debt/collateral` ratio (e.g., 50% == 0.5e18)
    function ltv() external view returns (uint256 _ltv);

    /// @notice Deposit collateral and borrow
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `depositAndBorrow` from the target strategy's implementation).
    function depositAndBorrow(bytes memory params_) external;

    /// @notice Repay debt and withdraw collateral
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `repayAndWithdraw` from the target strategy's implementation).
    function repayAndWithdraw(bytes memory params_) external;

    /// @notice Deposit collateral
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `deposit` from the target strategy's implementation).
    function deposit(bytes memory params_) external;

    /// @notice Withdraw collateral
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `withdraw` from the target strategy's implementation).
    function withdraw(bytes memory params_) external;

    /// @notice Borrow token
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `borrow` from the target strategy's implementation).
    function borrow(bytes memory params_) external;

    /// @notice Repay debt
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `repay` from the target strategy's implementation).
    function repay(bytes memory params_) external;

    /// @notice Get borrow token
    /// @return The borrow token
    function borrowToken() external view returns (IERC20);

    /// @notice Get collateral balance
    /// @return The deposited amount (in `asset`)
    function depositedAmount() external view returns (uint256);

    /// @notice Debt balance
    /// @return The borrowed amount (in `borrowToken`)
    function borrowedAmount() external view returns (uint256);

    /// @notice Get collateral factor of the deposit token (e.g. 0.7e18 = 70%)
    /// @return The collateral factor
    function collateralFactor() external view returns (uint256);

    /// @notice Interest rate of the borrow token (e.g. 0.1e18 = 10%)
    /// @return The interest rate
    function interestRate() external view returns (uint256);

    /// @notice Health factor of the position (i.e., >= 1e18 means healthy position)
    /// @return The health factor
    function healthFactor() external view returns (uint256);

    /// @notice Preview position's borrow params
    /// This function is useful to calculate leverage and APY before opening a position
    /// @param positionParams_ The positions' params (i.e., collateral asset and target protocol config).
    /// The `positionParams_` is encoded by `abi.encode(_genericParams, _customParams)` where `_genericParams` is `abi.encode(collateral)`,
    /// and `_customParams` is protocol-related encoded params (See: `_setCustomParams` from the target strategy's implementation).
    /// @return _collateralFactor The collateral factor of the deposit token (e.g. 0.7e18 = 70%)
    /// @return _interestRate The interest rate of the borrow token (e.g. 0.1e18 = 10%)
    function previewBorrowParams(
        bytes memory positionParams_
    ) external view returns (uint256 _collateralFactor, uint256 _interestRate);
}

// ============================================================
// FILE: src/interfaces/IFeePolicy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

interface IFeePolicy {
    function quoteAllocatedInFee(uint256 amount_) external view returns (uint256 _fee);

    function quoteAllocatedOutFee(uint256 amount_) external view returns (uint256 _fee);

    function quoteTimeBasedFee() external view returns (uint256 _fee);
}

// ============================================================
// FILE: src/interfaces/IPositionRegistry.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IFeePolicy} from "./IFeePolicy.sol";

interface IPositionRegistry {
    function feeCollector() external view returns (address);

    function implementationIndexOf(uint256 strategyId_, address implementation_) external view returns (uint256);

    function implementationsOf(uint256 strategyId_) external view returns (address[] memory);

    function updateOwnerOf(address owner_, address newOwner_) external;

    function feePolicyOf(uint256 strategyId_) external view returns (IFeePolicy);

    function isKeeper(address keeper_) external view returns (bool);
}

// ============================================================
// FILE: src/interfaces/IStrategy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IMasterOracle} from "./external/IMasterOracle.sol";
import {IPositionRegistry} from "./IPositionRegistry.sol";
import {IFeePolicy} from "./IFeePolicy.sol";
import {SwapParams} from "src/components/SwapAggregator.sol";

interface IStrategy {
    function latest() external view returns (uint256 _tvl, uint256 _timestamp);

    function feePolicy() external view returns (IFeePolicy);

    function asset() external view returns (IERC20);

    function strategyId() external view returns (uint256);

    function open(bytes memory positionParams_, bytes memory pushParams_) external;

    function push(bytes memory params_) external;

    function pull(bytes memory params_) external;

    function close(bytes memory claimParams_, bytes memory pullParams_) external;

    function close(bytes memory claimParams_, bytes memory pullParams_, bytes memory withdrawParams_) external;

    function claim(bytes memory params_) external returns (uint256 _claimed);

    function totalAllocated() external view returns (uint256);

    function oracle() external view returns (IMasterOracle);

    function transferOut(IERC20 token_, uint256 amountOut_) external;

    function transferOut(IERC20 token_, uint256 amountOut_, SwapParams memory zapOut_) external;

    function isOpen() external view returns (bool);

    function pendingFees() external view returns (uint256);

    function totalShares() external view returns (uint256);

    function positionRegistry() external view returns (IPositionRegistry);
}

// ============================================================
// FILE: src/libraries/Helpers.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

library Helpers {
    /// @notice Return total balance if `amount_` is `MAX_UINT256`
    /// @param token_ The token
    /// @param amount_ The amount to check
    /// @return `amount_` value or balance
    function amountOrAllBalanceIfMax(IERC20 token_, uint256 amount_) internal view returns (uint256) {
        return amount_ == type(uint256).max ? token_.balanceOf(address(this)) : amount_;
    }
}

// ============================================================
// FILE: src/strategies/AjnaBorrowStrategy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IAjnaPool} from "../interfaces/external/ajna/erc20/IAjnaPool.sol";
import {Strategy, IMasterOracle, SwapAggregator} from "./Strategy.sol";
import {Ajna, AjnaDelegateCalls} from "src/components/Ajna.sol";
import {IBorrowStrategy} from "src/interfaces/IBorrowStrategy.sol";
import {Strategy} from "./Strategy.sol";

/**
 * @title Deposit and borrow strategy for Ajna protocol.
 * Leverage it by swapping borrowed token to collateral and deposit again.
 */
contract AjnaBorrowStrategy is IBorrowStrategy, Strategy {
    using SafeERC20 for IERC20;
    using AjnaDelegateCalls for Ajna;

    Ajna public immutable ajna;

    error CollateralTokenIsNotValid();
    error CouldNotBorrow();
    error CouldNotRepay();

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:odyssey.storage.AjnaBorrowStrategy
    struct AjnaBorrowStrategyStorage {
        IAjnaPool _ajnaPool;
    }

    bytes32 private constant AjnaBorrowStrategyStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.AjnaBorrowStrategy")) - 1)) & ~bytes32(uint256(0xff));

    function _getAjnaBorrowStrategyStorage() private pure returns (AjnaBorrowStrategyStorage storage $) {
        bytes32 location = AjnaBorrowStrategyStorageLocation;
        assembly {
            $.slot := location
        }
    }

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(IMasterOracle oracle_, SwapAggregator swapAggregator_, Ajna ajna_) Strategy(oracle_, swapAggregator_) {
        if (address(ajna_) == address(0)) revert AddressIsNull();

        ajna = ajna_;
    }

    /*//////////////////////////////////////////////////////////////
                                 PARAMS
    //////////////////////////////////////////////////////////////*/

    function _setCustomParams(bytes memory customParams_) internal override {
        IAjnaPool _ajnaPool = abi.decode(customParams_, (IAjnaPool));
        if (address(_ajnaPool) == address(0)) revert AddressIsNull();

        if (_ajnaPool.collateralAddress() != address(asset())) {
            revert CollateralTokenIsNotValid();
        }
        AjnaBorrowStrategyStorage storage $ = _getAjnaBorrowStrategyStorage();
        $._ajnaPool = _ajnaPool;
    }

    function _unsetCustomParams() internal override {
        AjnaBorrowStrategyStorage storage $ = _getAjnaBorrowStrategyStorage();
        delete $._ajnaPool;
    }

    /*//////////////////////////////////////////////////////////////
                              OVERWRITTEN
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IBorrowStrategy
    function previewBorrowParams(
        bytes memory positionParams_
    ) external view returns (uint256 _collateralFactor, uint256 _interestRate) {
        (, bytes memory _customParams) = abi.decode(positionParams_, (bytes, bytes));
        IAjnaPool _ajnaPool = abi.decode(_customParams, (IAjnaPool));

        _collateralFactor = ajna.dynamicMaxLTV(_ajnaPool, oracle);
        _interestRate = ajna.interestRateOf(_ajnaPool);
    }

    function _totalAllocated() internal view override returns (uint256 _assets) {
        IAjnaPool _ajnaPool = ajnaPool();
        uint256 _debt;
        (_debt, _assets, , ) = ajna.borrowerInfo(_ajnaPool, address(this));
        if (_debt > 0) {
            uint256 _debtInAssets = oracle.quote(_ajnaPool.quoteTokenAddress(), address(asset()), _debt);
            if (_debtInAssets >= _assets) {
                return 0;
            }

            _assets -= _debtInAssets;
        }
    }

    /// @inheritdoc IBorrowStrategy
    function ltv() public view override returns (uint256 _ltv) {
        if (!isOpen()) return 0;

        IAjnaPool _ajnaPool = ajnaPool();

        (uint256 _debt, uint256 _collateral, , ) = ajna.borrowerInfo(_ajnaPool, address(this));

        return (oracle.quote(_ajnaPool.quoteTokenAddress(), address(asset()), _debt) * 1e18) / _collateral;
    }

    /// @inheritdoc IBorrowStrategy
    function collateralFactor() public view override returns (uint256) {
        return ajna.dynamicMaxLTV(ajnaPool(), oracle);
    }

    /// @inheritdoc IBorrowStrategy
    function interestRate() public view override returns (uint256) {
        return ajna.interestRateOf(ajnaPool());
    }

    /// @inheritdoc IBorrowStrategy
    function healthFactor() external view override returns (uint256) {
        return ajna.healthFactorOf(ajnaPool(), address(this));
    }

    /*//////////////////////////////////////////////////////////////
                                FEATURES
    //////////////////////////////////////////////////////////////*/

    function _push(bytes memory params_) internal override {
        (uint256 _amountIn, uint256 _amountToBorrow, uint256 _limitIndex) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        ajna.delegateDrawDebt(ajnaPool(), address(this), _amountToBorrow, _limitIndex, _amountIn);
    }

    function _pull(bytes memory params_) internal virtual override {
        (uint256 _repayAmount, uint256 collateralAmountToPull_, uint256 _limitIndex) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        _repayAndWithdraw({
            repayAmount_: _repayAmount,
            withdrawAmount_: collateralAmountToPull_,
            limitIndex_: _limitIndex
        });
    }

    /// @inheritdoc IBorrowStrategy
    function depositAndBorrow(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _borrowAmount, uint256 _limitIndex) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        _depositAndBorrow({depositAmount_: _depositAmount, borrowAmount_: _borrowAmount, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function repayAndWithdraw(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _withdrawAmount, uint256 _limitIndex) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        _repayAndWithdraw({repayAmount_: _repayAmount, withdrawAmount_: _withdrawAmount, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function deposit(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _limitIndex) = abi.decode(params_, (uint256, uint256));

        _depositAndBorrow({depositAmount_: _depositAmount, borrowAmount_: 0, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function borrow(bytes memory params_) external isFeature {
        (uint256 _borrowAmount, uint256 _limitIndex) = abi.decode(params_, (uint256, uint256));

        _depositAndBorrow({depositAmount_: 0, borrowAmount_: _borrowAmount, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function repay(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _limitIndex) = abi.decode(params_, (uint256, uint256));

        _repayAndWithdraw({repayAmount_: _repayAmount, withdrawAmount_: 0, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function withdraw(bytes memory params_) external isFeature {
        (uint256 _withdrawAmount, uint256 _limitIndex) = abi.decode(params_, (uint256, uint256));

        _repayAndWithdraw({repayAmount_: 0, withdrawAmount_: _withdrawAmount, limitIndex_: _limitIndex});
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    function ajnaPool() public view returns (IAjnaPool) {
        AjnaBorrowStrategyStorage storage $ = _getAjnaBorrowStrategyStorage();
        return $._ajnaPool;
    }

    function _depositAsset(uint256 amount_, bytes memory extraParams_) internal override {
        uint256 _limitIndex = abi.decode(extraParams_, (uint256));

        _depositAndBorrow({depositAmount_: amount_, borrowAmount_: 0, limitIndex_: _limitIndex});
    }

    function _depositAsset(uint256) internal pure override {
        revert("not-supported");
    }

    function _withdrawAsset(uint256 amount_, bytes memory extraParams_) internal override returns (uint256 _withdrawn) {
        uint256 _limitIndex = abi.decode(extraParams_, (uint256));
        IERC20 _asset = asset();
        uint256 _balance = _asset.balanceOf(address(this));
        ajna.delegateRepayDebt(ajnaPool(), address(this), 0, amount_, address(this), _limitIndex);
        _withdrawn = _asset.balanceOf(address(this)) - _balance;
    }

    function _withdrawAsset(uint256) internal pure override returns (uint256) {
        revert("not-supported");
    }

    function _canTransferOut(IERC20 tokenOut_) internal view override returns (bool) {
        return address(tokenOut_) == ajnaPool().quoteTokenAddress();
    }

    function _repayAndWithdraw(uint256 repayAmount_, uint256 withdrawAmount_, uint256 limitIndex_) private {
        ajna.delegateRepayDebt({
            ajnaPool_: ajnaPool(),
            borrowerAddress_: address(this),
            amountToRepay_: repayAmount_,
            collateralAmountToPull_: withdrawAmount_,
            collateralReceiver_: address(this),
            limitIndex_: limitIndex_
        });
    }

    function _depositAndBorrow(uint256 depositAmount_, uint256 borrowAmount_, uint256 limitIndex_) private {
        ajna.delegateDrawDebt({
            ajnaPool_: ajnaPool(),
            borrowerAddress_: address(this),
            amountToBorrow_: borrowAmount_,
            limitIndex_: limitIndex_,
            collateralToPledge_: depositAmount_
        });
    }

    /// @inheritdoc IBorrowStrategy
    function borrowToken() public view returns (IERC20) {
        return IERC20(ajnaPool().quoteTokenAddress());
    }

    /// @inheritdoc IBorrowStrategy
    function depositedAmount() public view returns (uint256 _depositedAmount) {
        if (!isOpen()) return 0;
        (, _depositedAmount, , ) = ajna.borrowerInfo(ajnaPool(), address(this));
    }

    /// @inheritdoc IBorrowStrategy
    function borrowedAmount() public view returns (uint256 _borrowedAmount) {
        if (!isOpen()) return 0;
        (_borrowedAmount, , , ) = ajna.borrowerInfo(ajnaPool(), address(this));
    }

    receive() external payable {}
}

// ============================================================
// FILE: src/strategies/Strategy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IERC20, IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ERC1967Utils} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";
import {IStrategy, IFeePolicy, IMasterOracle, IPositionRegistry} from "src/interfaces/IStrategy.sol";
import {SwapParams, SwapAggregator, SwapAggregatorDelegateCalls} from "src/components/SwapAggregator.sol";

/// @title Abstract Strategy contract
abstract contract Strategy is IStrategy, Initializable, UUPSUpgradeable, Ownable2StepUpgradeable {
    using SafeERC20 for IERC20;
    using Math for uint256;
    using SafeCast for uint256;
    using SwapAggregatorDelegateCalls for SwapAggregator;

    uint256 public constant UPDATE_SNAPSHOT_COOL_DOWN = 1 weeks;
    uint256 internal constant MAX_BPS = 100_00;
    uint256 internal constant MAX_REWARDS_DUST_BPS = 50; // 0.5%
    uint256 private constant ONE_USD = 1e18;
    address private constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    IMasterOracle public immutable oracle;
    SwapAggregator public immutable swapAggregator;

    /// @notice Emitted when a feature is called
    event FeatureCalled(uint256 allocatedBefore, uint256 allocatedAfter);

    /// @notice Emitted when a position is opened
    event PositionOpened(IERC20 indexed asset, uint256 pushed);

    /// @notice Emitted when a position is closed
    event PositionClosed(IERC20 indexed asset, uint256 pulled);

    /// @notice Emitted when rewards are claimed
    event RewardsClaimed(IERC20 indexed asset, uint256 claimed);

    /// @notice Emitted when a snapshot is taken
    event SnapshotUpdated(address indexed sender, uint256 timestamp, uint256 pendingFees, uint256 totalAllocated);

    /// @notice Emitted when fees are collected
    event FeesCollected(address indexed sender, IERC20 indexed asset, uint256 collected);

    /// @notice Emitted when the fee policy is updated
    event FeePolicyUpdated(IFeePolicy indexed oldFeePolicy, IFeePolicy indexed newFeePolicy);

    error PositionIsClosed();
    error PositionIsOpen();
    error InvalidStrategyId();
    error AddressIsNull();
    error AmountIsZero();
    error DustTooHigh();
    error TokenCanNotBeTransferred();
    error AmountGreaterThanMax();
    error TooEarlyToUpdateSnapshot();
    error SlippageTooHigh();
    error NewOwnerIsSameAsCurrent();
    error ZapIsNotSupportedForETH();
    error SenderCanNotCollectFee();
    error InvalidSwapParams();
    error SenderIsNotSelf();
    error ImplementationIsUpToDate();

    /// @custom:storage-location erc7201:odyssey.storage.Position
    struct PositionStorage {
        // global
        IPositionRegistry _positionRegistry;
        // strategy
        uint256 _strategyId;
        IFeePolicy _feePolicy;
        // current position
        IERC20 _asset;
        uint128 _totalShares;
        // snapshot
        uint128 _latestPendingFees;
        uint208 _latestTotalAllocated;
        uint48 _latestTimestamp;
    }

    bytes32 private constant PositionStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.Position")) - 1)) & ~bytes32(uint256(0xff));

    function _getPositionStorage() private pure returns (PositionStorage storage $) {
        bytes32 location = PositionStorageLocation;
        assembly {
            $.slot := location
        }
    }

    /// @notice The feature modifier
    /// This logic applies to almost all the features
    /// It's utilized to generically calculate fees and shares supply
    /// @dev There are a few use cases where it doesn't apply (i.e., open, close and claim)
    modifier isFeature() {
        _checkOwner();
        if (!isOpen()) revert PositionIsClosed();

        uint256 _allocatedBefore = _totalAllocated();
        _;
        uint256 _allocatedAfter = _totalAllocated();

        _calculateFeeAndUpdateShares(_allocatedBefore, _allocatedAfter);

        emit FeatureCalled(_allocatedBefore, _allocatedAfter);
    }

    /// @notice Validates who can call the `collectPendingFees()` function
    modifier onlyIfCanCollectFees() {
        if (!positionRegistry().isKeeper(msg.sender) && msg.sender != owner()) revert SenderCanNotCollectFee();
        _;
    }

    modifier onlySelf() {
        if (msg.sender != address(this)) revert SenderIsNotSelf();
        _;
    }

    constructor(IMasterOracle oracle_, SwapAggregator swapAggregator_) {
        if (address(oracle_) == address(0)) revert AddressIsNull();
        if (address(swapAggregator_) == address(0)) revert AddressIsNull();

        oracle = oracle_;
        swapAggregator = swapAggregator_;

        _disableInitializers();
    }

    /// @notice Initializes the position (proxy)
    /// @param strategyId_ The strategy's id
    /// @param owner_ The position's owner
    /// @param positionRegistry_ The position registry contract
    function initialize(uint256 strategyId_, address owner_, address positionRegistry_) external initializer {
        if (strategyId_ == 0) revert InvalidStrategyId();
        if (address(owner_) == address(0)) revert AddressIsNull();
        if (address(positionRegistry_) == address(0)) revert AddressIsNull();

        PositionStorage storage $ = _getPositionStorage();
        $._positionRegistry = IPositionRegistry(positionRegistry_);
        $._strategyId = strategyId_;

        __Ownable_init_unchained(owner_);
    }

    /// @notice Set the current position parameters when opening it
    /// @param positionParams_ The new position's params (e.g., tokens, protocol contracts, etc)
    function _setPositionParams(bytes memory positionParams_) internal virtual {
        (bytes memory _genericParams, bytes memory _customParams) = abi.decode(positionParams_, (bytes, bytes));
        PositionStorage storage $ = _getPositionStorage();
        $._asset = abi.decode(_genericParams, (IERC20));

        _setFeePolicy();

        _setCustomParams(_customParams);
    }

    /// @notice Set the current position's custom parameters (e.g., external protocol addresses)
    function _setCustomParams(bytes memory customParams_) internal virtual;

    /// @notice Unset the current positions parameters when closing it
    function _unsetParams() internal virtual {
        PositionStorage storage $ = _getPositionStorage();
        delete $._feePolicy;
        delete $._asset;
        delete $._totalShares;
        delete $._latestPendingFees;
        delete $._latestTotalAllocated;
        delete $._latestTimestamp;

        _unsetCustomParams();
    }

    /// @notice Unset the current position's custom parameters (e.g., external protocol addresses)
    function _unsetCustomParams() internal virtual;

    /// @notice Open feature
    /// @param positionParams_ The positions' params (i.e., collateral asset and target protocol config).
    /// The `positionParams_` is encoded by `abi.encode(_genericParams, _customParams)` where `_genericParams` is `abi.encode(collateral)`,
    /// and `_customParams` is protocol-related encoded params (See: `_setCustomParams` from the target strategy's implementation).
    /// @param pushParams_ The push feature's params
    /// The `pushParams_` is protocol-related encoded params (See: `_push` from the target strategy's implementation).
    function open(bytes memory positionParams_, bytes memory pushParams_) external override onlyOwner {
        if (isOpen()) revert PositionIsOpen();

        _setPositionParams(positionParams_);
        _push(pushParams_);
        uint256 _allocated = _totalAllocated();
        _calculateFeeAndUpdateShares(0, _allocated);

        emit PositionOpened(asset(), _allocated);
    }

    /// @notice Close feature
    /// This feature will claim any pending rewards, pull assets from yield routing, and, unset position's parameters.
    /// Any pending fees will be collected during the closure process.
    /// @dev It must pull all (or almost all) assets, otherwise it'll revert if the remaining value is > $1 worth
    /// @param claimParams_ The claim's params
    /// The `claimParams_` is protocol-related encoded params (See: `_claimAllAndAllocate` from the target strategy's implementation).
    /// @param pullParams_ The pull feature's params
    /// The `pullParams_` is protocol-related encoded params (See: `_pull` from the target strategy's implementation).
    /// @param withdrawParams_ To be used when the strategy requires (e.g. slippage param)
    /// The `withdrawParams_` is protocol-related encoded params (See: `_withdrawAsset` from the target strategy's implementation).
    function close(
        bytes memory claimParams_,
        bytes memory pullParams_,
        bytes memory withdrawParams_
    ) public override onlyOwner {
        if (!isOpen()) revert PositionIsClosed();

        uint256 _allocatedBefore = _totalAllocated();

        (SwapParams[] memory _swapParams, bytes memory _extraParams) = abi.decode(claimParams_, (SwapParams[], bytes));
        _claimAllAndAllocate(_swapParams, _extraParams);
        _pull(pullParams_);

        uint256 _allocatedAfter = _totalAllocated();
        IERC20 _asset = asset();

        if (oracle.quoteTokenToUsd(address(_asset), _allocatedAfter) >= ONE_USD) revert DustTooHigh();

        _calculateFeeAndUpdateShares(_allocatedBefore, _allocatedAfter);
        collectPendingFees(withdrawParams_);
        _unsetParams();

        emit PositionClosed(_asset, _allocatedAfter);
    }

    /// @notice Close feature
    /// This feature will claim any pending rewards, pull assets from yield routing, and, unset position's parameters.
    /// Any pending fees will be collected during the closure process.
    /// @dev It must pull all (or almost all) assets, otherwise it'll revert if the remaining value is > $1 worth
    /// @param claimParams_ The claim's params
    /// The `claimParams_` is protocol-related encoded params (See: `_claimAllAndAllocate` from the target strategy's implementation).
    /// @param pullParams_ The pull feature's params
    /// The `pullParams_` is protocol-related encoded params (See: `_pull` from the target strategy's implementation).
    function close(bytes memory claimParams_, bytes memory pullParams_) external override onlyOwner {
        close(claimParams_, pullParams_, "");
    }

    /// @notice Claim feature
    /// @param params_ The claim parameters
    /// The `params_` is protocol-related encoded params (See: `_claimAllAndAllocate` from the target strategy's implementation).
    function claim(bytes memory params_) external override onlyOwner returns (uint256 _claimed) {
        if (!isOpen()) revert PositionIsClosed();

        (SwapParams[] memory _swapParams, bytes memory _extraParams) = abi.decode(params_, (SwapParams[], bytes));
        _claimed = _claimAllAndAllocate(_swapParams, _extraParams);

        if (_claimed > 0) {
            uint256 _allocated = _totalAllocated();
            // Note: Using no delta value to not mint shares, therefore considering the claimed amount as profit
            _calculateFeeAndUpdateShares(_allocated, _allocated);
        }

        emit RewardsClaimed(asset(), _claimed);
    }

    /// @notice Swap and allocate feature
    /// This feature will swap tokens for `asset` and allocate resulting amount. It can be useful when there is non productive tokens sitting in the position.
    /// @param swapParams_ The swap params
    /// @param depositParams_ The extra deposit params (if any)
    /// The `depositParams_` is protocol-related encoded params (See: `_depositAsset` from the target strategy's implementation).
    function swapAndAllocate(SwapParams[] memory swapParams_, bytes memory depositParams_) external isFeature {
        uint256 _len = swapParams_.length;
        IERC20 _asset = asset();
        uint256 _assets;

        for (uint256 i; i < _len; ++i) {
            if (swapParams_[i].amountIn == 0) revert InvalidSwapParams();
            if (swapParams_[i].tokenIn == _asset) revert InvalidSwapParams();
            if (swapParams_[i].tokenOut != _asset) revert InvalidSwapParams();
            if (swapParams_[i].receiver != address(this)) revert InvalidSwapParams();

            (, uint256 _amountOut) = _swap(swapParams_[i]);

            _assets += _amountOut;
        }

        _depositAsset(_assets, depositParams_);
    }

    /// @notice Claim and allocate reward tokens
    /// This function will claim any pending rewards, swap them for `asset`, and, allocate to the position.
    /// @param swapParams_ The parameters to swap reward token for `asset`
    /// @param extraParams_ The additional parameters for claiming (if any)
    /// The `extraParams_` is protocol-related encoded params (See: `_claimAllAndAllocate` from the target strategy's implementation).
    /// @return _claimed Returns total claimed amount in `asset` tokens (i.e., swap amount out)
    function _claimAllAndAllocate(
        SwapParams[] memory swapParams_,
        bytes memory extraParams_
    ) internal virtual returns (uint256 _claimed) {}

    /// @notice Swap reward tokens for `asset`
    /// @param swapParams_ The swap params array
    /// @param tokens_ The reward tokens array
    /// @param amounts_ The claimed amounts
    function _swapRewardsForAssets(
        SwapParams[] memory swapParams_,
        IERC20[] memory tokens_,
        uint256[] memory amounts_
    ) internal returns (uint256 _claimedInAssets) {
        uint256 _len = swapParams_.length;

        if (_len != amounts_.length || _len != tokens_.length) revert InvalidSwapParams();

        IERC20 _asset = asset();

        for (uint256 i; i < _len; ++i) {
            uint256 _claimed = amounts_[i];

            if (_claimed == 0) continue;

            if (swapParams_[i].amountIn == 0) revert InvalidSwapParams();
            if (swapParams_[i].tokenIn != tokens_[i]) revert InvalidSwapParams();
            if (swapParams_[i].tokenOut != _asset) revert InvalidSwapParams();
            if (swapParams_[i].receiver != address(this)) revert InvalidSwapParams();

            (uint256 _amountIn, uint256 _amountOut) = _swap(swapParams_[i]);

            uint256 _maxDust = (_claimed * MAX_REWARDS_DUST_BPS) / MAX_BPS;

            if (_amountIn < _claimed && _claimed - _amountIn > _maxDust) revert DustTooHigh();

            _claimedInAssets += _amountOut;
        }
    }

    /// @notice Swap reward tokens for `asset`
    /// @param swapParams_ The swap params
    /// @param token_ The reward token
    /// @param amount_ The claimed amount
    function _swapRewardsForAssets(
        SwapParams[] memory swapParams_,
        IERC20 token_,
        uint256 amount_
    ) internal returns (uint256 _claimedInAssets) {
        IERC20[] memory _tokens = new IERC20[](1);
        _tokens[0] = token_;

        uint256[] memory _amounts = new uint256[](1);
        _amounts[0] = amount_;

        return _swapRewardsForAssets(swapParams_, _tokens, _amounts);
    }

    /// @notice Push feature
    /// This function will allocate the `asset` tokens following the strategy's yield routing
    /// @param params_ The push feature's params
    /// The `params_` is protocol-related encoded params (See: `_push` from the target strategy's implementation).
    function push(bytes memory params_) external override isFeature {
        _push(params_);
    }

    /// @notice Implementation for pushing assets to the strategy's yield routing
    /// @param params_ The push params
    function _push(bytes memory params_) internal virtual;

    /// @notice Pull feature
    /// This function will deallocate assets from target protocol. It's the inversion operation of `push`.
    /// @param params_ The pull feature's params
    /// The `params_` is protocol-related encoded params (See: `_pull` from the target strategy's implementation).
    function pull(bytes memory params_) external override isFeature {
        _pull(params_);
    }

    /// @notice Implementation for pulling assets from the strategy's yield routing
    /// @param params_ The pull params
    function _pull(bytes memory params_) internal virtual;

    /// @notice Deposit assets to the strategy
    function _depositAsset(uint256 amount_, bytes memory /*extraParams_*/) internal virtual {
        return _depositAsset(amount_);
    }

    /// @notice Deposit assets to the strategy (without `extraParams_`)
    function _depositAsset(uint256 amount_) internal virtual;

    /// @notice Withdraw assets from the strategy
    /// Mostly utilized to make assets available for fee collection
    function _withdrawAsset(
        uint256 amount_,
        bytes memory /*extraParams_*/
    ) internal virtual returns (uint256 _withdrawn) {
        return _withdrawAsset(amount_);
    }

    /// @notice Withdraw assets from the strategy (without `extraParams_`)
    function _withdrawAsset(uint256 amount_) internal virtual returns (uint256 _withdrawn);

    /// @notice Get the net amount of `asset` allocated to the strategy
    /// @return _assets The assets amount
    function totalAllocated() public view returns (uint256 _assets) {
        if (isOpen()) {
            return _totalAllocated();
        }
    }

    /// @notice Implements the `totalAllocated()` logic
    /// @dev This function is called on every feature execution; because of that, it's important to keep gas costs as low as possible
    /// @return _assets The assets amount
    function _totalAllocated() internal view virtual returns (uint256 _assets);

    /// @notice Get price per share
    /// This function is used to calculate the strategy's performance over time.
    /// Position's shares are internal values used for accounting purposes only.
    /// @return _pricePerShare The `asset` amount represented for each share
    function pricePerShare() external view returns (uint256 _pricePerShare) {
        if (isOpen()) {
            return
                _convertToAssets(
                    10 ** IERC20Metadata(address(asset())).decimals(),
                    _totalAllocated(),
                    Math.Rounding.Ceil
                );
        }
    }

    /// @notice Convert shares amount to assets
    /// @param shares_ The shares amount
    /// @param allocated_ The updated `totalAllocated` amount
    /// @param rounding_ The rounding rule
    /// @return _assets The assets amount
    function _convertToAssets(
        uint256 shares_,
        uint256 allocated_,
        Math.Rounding rounding_
    ) private view returns (uint256 _assets) {
        PositionStorage storage $ = _getPositionStorage();
        uint256 _totalShares = $._totalShares;
        return shares_.mulDiv(allocated_ + 1, _totalShares + 1, rounding_);
    }

    /// @notice Convert shares amount to assets
    /// @param assets_ The assets amount
    /// @param allocated_ The updated `totalAllocated` amount
    /// @param rounding_ The rounding rule
    /// @return _shares The shares amount
    function _convertToShares(
        uint256 assets_,
        uint256 allocated_,
        Math.Rounding rounding_
    ) private view returns (uint256 _shares) {
        PositionStorage storage $ = _getPositionStorage();
        uint256 _totalShares = $._totalShares;
        return assets_.mulDiv(_totalShares + 1, allocated_ + 1, rounding_);
    }

    /// @notice Preview how many shares will be minted when increasing allocated assets
    /// @param assets_ The assets increasing
    /// @param allocated_ The `totalAllocated` amount
    /// @return _shares The shares to mint
    function _previewDeposit(uint256 assets_, uint256 allocated_) private view returns (uint256 _shares) {
        return _convertToShares(assets_, allocated_, Math.Rounding.Floor);
    }

    /// @notice Preview how many shares will be burnt when decreasing allocated assets
    /// @param assets_ The assets decreasing
    /// @param allocated_ The `totalAllocated` amount
    /// @return _shares The shares to burn
    function _previewWithdraw(uint256 assets_, uint256 allocated_) private view returns (uint256 _shares) {
        return _convertToShares(assets_, allocated_, Math.Rounding.Ceil);
    }

    /// @notice Check if a non-asset token can be transferred out
    /// @dev There is no need to check `asset` token here because it's always allowed
    function _canTransferOut(IERC20 /*tokenOut_*/) internal view virtual returns (bool) {
        return false;
    }

    /// @notice Get current balance for the token
    function _balanceOf(IERC20 token_) private view returns (uint256) {
        return (address(token_) == ETH) ? address(this).balance : token_.balanceOf(address(this));
    }

    /// @notice Calculate the max amount that can be transferred out from the position
    /// Notes:
    /// - When the position is closed, any token and any amount can be transferred
    /// - When the position is open and the token is `asset` it must keep enough assets to pay for the pending fees
    /// - When the position is open and the token is allowed, any amount can be transferred
    ///
    /// @param tokenOut_ The token to transfer
    /// @return The max amount to transfer
    function _maxAmountOut(IERC20 tokenOut_) private view returns (uint256) {
        IERC20 _asset = asset();

        if (isOpen() && tokenOut_ != _asset && !_canTransferOut(tokenOut_)) revert TokenCanNotBeTransferred();

        uint256 _balance = _balanceOf(tokenOut_);

        // If allocated amount is enough to deduct fee in future then no need to take fee from current balance
        if (tokenOut_ == _asset) {
            uint256 _allocated = _totalAllocated();
            uint256 _fee = pendingFees();
            uint256 _forFee = _allocated >= _fee ? 0 : _fee - _allocated; // Balance reserved for fee payment
            return _balance > _forFee ? _balance - _forFee : 0;
        }

        return _balance;
    }

    /// @notice Transfer tokens out (with zap-out support)
    /// @param token_ The token to transfer
    /// @param to_ The transfer beneficiary
    /// @param amountOut_ The amount to transfer (Use `MAX_UINT256` value to transfer the maximum amount)
    /// @param zapOut_  The zap-out swap operation
    function transferOut(IERC20 token_, address to_, uint256 amountOut_, SwapParams memory zapOut_) external onlyOwner {
        _transferOut(token_, to_, amountOut_, zapOut_);
    }

    /// @notice Transfer tokens out to the owner (with zap-out support)
    /// @param token_ The token to transfer
    /// @param amountOut_ The amount to transfer (Use `MAX_UINT256` value to transfer the maximum amount)
    /// @param zapOut_  The zap-out swap operation
    function transferOut(IERC20 token_, uint256 amountOut_, SwapParams memory zapOut_) external onlyOwner {
        _transferOut(token_, owner(), amountOut_, zapOut_);
    }

    /// @notice Transfer tokens out to the owner
    /// @param token_ The token to transfer
    /// @param amountOut_ The amount to transfer (Use `MAX_UINT256` value to transfer the maximum amount)
    function transferOut(IERC20 token_, uint256 amountOut_) external onlyOwner {
        _transferOut(token_, owner(), amountOut_, SwapParams(0, token_, token_, 0, address(0), ""));
    }

    /// @notice Transfer tokens out (with zap-out support)
    function _transferOut(IERC20 token_, address to_, uint256 amountOut_, SwapParams memory zapOut_) private {
        uint256 _max = _maxAmountOut(token_);

        if (amountOut_ == type(uint256).max) {
            amountOut_ = _max;
        } else if (amountOut_ > _max) {
            revert AmountGreaterThanMax();
        }

        if (amountOut_ == 0) revert AmountIsZero();

        if (zapOut_.callData.length == 0) {
            if (address(token_) == ETH) {
                Address.sendValue(payable(to_), amountOut_);
            } else {
                token_.safeTransfer(to_, amountOut_);
            }
        } else {
            if (address(token_) == ETH) revert ZapIsNotSupportedForETH();
            if (zapOut_.tokenIn != token_) revert InvalidSwapParams();
            if (zapOut_.receiver != to_) revert InvalidSwapParams();
            if (zapOut_.amountIn > amountOut_) revert InvalidSwapParams();

            _swap(zapOut_);
        }
    }

    /// @notice Calculate fee and shares based on the allocated amount changing
    /// If the feature doesn't impact allocated amount, no shares are minted/burnt but fees may apply if the fee policy is timed-based (e.g., APY-based)
    /// @param allocatedBefore_ The allocated amount before the feature execution
    /// @param allocatedAfter_ The allocated amount after the feature execution
    function _calculateFeeAndUpdateShares(uint256 allocatedBefore_, uint256 allocatedAfter_) private {
        PositionStorage storage $ = _getPositionStorage();
        uint256 _fee;
        if (allocatedAfter_ > allocatedBefore_) {
            uint256 _amountIn = allocatedAfter_ - allocatedBefore_;
            _fee = feePolicy().quoteAllocatedInFee(_amountIn);
            $._totalShares += _previewDeposit(_amountIn, allocatedBefore_).toUint128();
        } else if (allocatedAfter_ < allocatedBefore_) {
            uint256 _amountOut = allocatedBefore_ - allocatedAfter_;
            _fee = feePolicy().quoteAllocatedOutFee(_amountOut);
            // Note: Avoid underflow due to rounding
            $._totalShares -= Math.min(_previewWithdraw(_amountOut, allocatedBefore_), $._totalShares).toUint128();
        } else {
            _fee = feePolicy().quoteTimeBasedFee();
        }

        _updateSnapshot({newPendingFees_: $._latestPendingFees + _fee, newTotalAllocated_: allocatedAfter_});
    }

    /// @notice Perform a swap using swap aggregator component
    function _swap(SwapParams memory swapParams_) internal returns (uint256 _amountIn, uint256 _amountOut) {
        return swapAggregator.delegateSwap(swapParams_);
    }

    /// @notice Get updated pending fee
    /// This function returns stored pending fees amount plus accrued fee since latest snapshot (if the fee policy is time-based)
    /// @return The updated pending fees amount
    function getUpdatedPendingFees() public view returns (uint256) {
        if (!isOpen()) return 0;
        PositionStorage storage $ = _getPositionStorage();
        return $._latestPendingFees + feePolicy().quoteTimeBasedFee();
    }

    /// @notice Update snapshot
    /// This function avoid having outdated fees to collect for a dormant position.
    /// Because of pending fee value are usually directly proportional to the total allocated, and assume some volatility condition,
    /// the caller may advantageously call this function (between features executions) to store more or less fees.
    /// To avoid this kind of behavior, this function can only be called after a cooldown period since the latest snapshot.
    /// @dev This function *MUST* be called whenever the total allocated amount or pending fees may change
    function updateSnapshot() external {
        if (!isOpen()) revert PositionIsClosed();
        PositionStorage storage $ = _getPositionStorage();
        if (block.timestamp < $._latestTimestamp + UPDATE_SNAPSHOT_COOL_DOWN) revert TooEarlyToUpdateSnapshot();

        uint256 _pendingFees = getUpdatedPendingFees();
        uint256 _allocated = _totalAllocated();

        _updateSnapshot(_pendingFees, _allocated);

        emit SnapshotUpdated(msg.sender, block.timestamp, _pendingFees, _allocated);
    }

    /// @notice Collect pending fees
    /// If the position hasn't enough assets balance, remaining amount will be withdrawn from the strategy
    /// @param withdrawParams_ To be used when the strategy requires (e.g., slippage param)
    /// The `withdrawParams_` is protocol-related encoded params (See: `_withdrawAsset` from the target strategy's implementation).
    function collectPendingFees(bytes memory withdrawParams_) public onlyIfCanCollectFees {
        uint256 _pendingFees = pendingFees();

        if (_pendingFees == 0) return;

        IERC20 _asset = asset();
        uint256 _balance = _balanceOf(_asset);
        uint256 _collected = _pendingFees;

        if (_balance < _pendingFees) {
            uint256 _withdrawAmount = Math.min(_pendingFees - _balance, totalAllocated());
            _collected = Math.min(_balance + _withdrawAsset(_withdrawAmount, withdrawParams_), _pendingFees);
        }

        _updateSnapshot({newPendingFees_: _pendingFees - _collected, newTotalAllocated_: totalAllocated()});

        _asset.safeTransfer(positionRegistry().feeCollector(), _collected);

        emit FeesCollected(msg.sender, asset(), _collected);
    }

    /// @notice Set the latest fee policy for the strategy
    function _setFeePolicy() private {
        PositionStorage storage $ = _getPositionStorage();
        IFeePolicy _current = $._feePolicy;

        IFeePolicy _latest = positionRegistry().feePolicyOf($._strategyId);
        if (_latest != _current) {
            if (address(_current) != address(0)) {
                emit FeePolicyUpdated(_current, _latest);
            }

            $._feePolicy = _latest;
        }
    }

    /// @notice Take a `totalAllocated` and `pendingFees` snapshot
    function _updateSnapshot(uint256 newPendingFees_, uint256 newTotalAllocated_) private {
        PositionStorage storage $ = _getPositionStorage();
        $._latestPendingFees = newPendingFees_.toUint128();
        $._latestTotalAllocated = newTotalAllocated_.toUint208();
        $._latestTimestamp = block.timestamp.toUint48();
    }

    /// @notice Called during implementation upgrade if any operation is needed (e.g. storage data adjustments)
    function migrate() external virtual onlySelf {}

    /// @notice Upgrade strategy with the latest implementation (if any)
    function upgrade() external onlyOwner {
        IPositionRegistry _positionRegistry = positionRegistry();
        uint256 _strategyId = strategyId();

        address[] memory implementations = _positionRegistry.implementationsOf(_strategyId);

        uint256 _currentIdx = _positionRegistry.implementationIndexOf(_strategyId, ERC1967Utils.getImplementation());
        uint256 _latestIdx = implementations.length - 1;

        if (_currentIdx == _latestIdx) revert ImplementationIsUpToDate();

        while (_currentIdx < _latestIdx) {
            this.upgradeToAndCall({
                newImplementation: implementations[++_currentIdx],
                data: abi.encodeCall(this.migrate, ())
            });
        }
    }

    /// @notice Check if there is a newer implementation for the strategy
    function isOutdated() external view returns (bool) {
        IPositionRegistry _positionRegistry = positionRegistry();
        uint256 _strategyId = strategyId();
        uint256 _currentIdx = _positionRegistry.implementationIndexOf(_strategyId, ERC1967Utils.getImplementation());
        address[] memory implementations = _positionRegistry.implementationsOf(_strategyId);
        uint256 _latestIdx = implementations.length - 1;
        return _currentIdx < _latestIdx;
    }

    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(address /*newImplementation_*/) internal view override onlySelf {}

    /// @notice Update the fee policy with the latest version (if any)
    function updateFeePolicy() external onlyOwner {
        _setFeePolicy();
    }

    /// @notice Overrides `Ownable2StepUpgradeable._transferOwnership` and calls `positionRegistry` to keep ownership set on track
    /// @dev Do not call `updateOwnerOf` when initializing
    function _transferOwnership(address newOwner_) internal override {
        address _current = owner();
        if (_current == newOwner_) revert NewOwnerIsSameAsCurrent();

        if (_current != address(0)) {
            positionRegistry().updateOwnerOf(_current, newOwner_);
        }
        super._transferOwnership(newOwner_);
    }

    /// @notice Check if the position is open
    /// @return `true` if the position is open
    function isOpen() public view returns (bool) {
        return address(asset()) != address(0);
    }

    /// @notice Get position registry
    /// @return The position registry contract address
    function positionRegistry() public view returns (IPositionRegistry) {
        PositionStorage storage $ = _getPositionStorage();
        return $._positionRegistry;
    }

    /// @notice Get stored fee policy
    /// @return The fee policy contract address
    function feePolicy() public view returns (IFeePolicy) {
        PositionStorage storage $ = _getPositionStorage();
        return $._feePolicy;
    }

    /// @notice Get strategy's id
    /// @return The strategy id
    function strategyId() public view returns (uint256) {
        PositionStorage storage $ = _getPositionStorage();
        return $._strategyId;
    }

    /// @notice Get asset token
    /// @return The asset token address
    function asset() public view override returns (IERC20) {
        PositionStorage storage $ = _getPositionStorage();
        return $._asset;
    }

    /// @notice Get pending fees from the latest snapshot
    /// @return The pending fees
    function pendingFees() public view returns (uint256) {
        PositionStorage storage $ = _getPositionStorage();
        return $._latestPendingFees;
    }

    /// @notice Get total shares
    /// @return The total shares amount
    function totalShares() external view returns (uint256) {
        PositionStorage storage $ = _getPositionStorage();
        return $._totalShares;
    }

    /// @notice Get total allocated amount from the latest snapshot
    /// @return _latestTotalAllocated The latest total allocated stored
    /// @return _latestTimestamp The timestamp of the latest snapshot
    function latest() external view returns (uint256 _latestTotalAllocated, uint256 _latestTimestamp) {
        PositionStorage storage $ = _getPositionStorage();
        return ($._latestTotalAllocated, $._latestTimestamp);
    }
}
