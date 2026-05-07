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
// FILE: @openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Pausable.sol)

pragma solidity ^0.8.20;

import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
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
    /// @custom:storage-location erc7201:openzeppelin.storage.Pausable
    struct PausableStorage {
        bool _paused;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Pausable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant PausableStorageLocation = 0xcd5ed15c6e187e77e9aee88184c21f4f2182ab5827cb3b7e07fbedcd63f03300;

    function _getPausableStorage() private pure returns (PausableStorage storage $) {
        assembly {
            $.slot := PausableStorageLocation
        }
    }

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
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
        PausableStorage storage $ = _getPausableStorage();
        $._paused = false;
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
        PausableStorage storage $ = _getPausableStorage();
        return $._paused;
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
        PausableStorage storage $ = _getPausableStorage();
        $._paused = true;
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
        PausableStorage storage $ = _getPausableStorage();
        $._paused = false;
        emit Unpaused(_msgSender());
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/ReentrancyGuard.sol)

pragma solidity ^0.8.20;
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
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    /// @custom:storage-location erc7201:openzeppelin.storage.ReentrancyGuard
    struct ReentrancyGuardStorage {
        uint256 _status;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ReentrancyGuard")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ReentrancyGuardStorageLocation = 0x9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00;

    function _getReentrancyGuardStorage() private pure returns (ReentrancyGuardStorage storage $) {
        assembly {
            $.slot := ReentrancyGuardStorageLocation
        }
    }

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        $._status = NOT_ENTERED;
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
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if ($._status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        $._status = ENTERED;
    }

    function _nonReentrantAfter() private {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        $._status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        return $._status == ENTERED;
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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
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
// FILE: contracts/interfaces/IPriceOracle.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

/**
 * @title IPriceOracle
 * @author multichainz
 * @notice Defines the basic interface for a Price oracle.
 */
interface IPriceOracle {
  /**
   * @notice Returns the asset price in the base currency
   * @param asset The address of the asset
   * @return price of the asset
   */
  function getAssetPrice(address asset) external view returns (uint256);

 
}

// ============================================================
// FILE: contracts/protocol/pool/interfaces/IMTZPool.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IMTZPool {
  error TransferFailed();
  error InsufficientTokenAmount();
  error InsufficientLiquidity();
  error InvalidAmount();
  error TokenNotSupported();
  error UserAddressNotFound();
  error InvalidAddress();

  struct Deposit {
    uint256 amount;
    uint256 interestAccumulated;
    uint256 lastUpdated;
  }

  struct BorrowEntry {
    uint256 amount;
    uint256 loanInterestAccrued;
    uint256 lastUpdated;
  }

struct Token {
    address tokenAddress;
    uint256 LTV; // Loan to Value
    uint256 rate; // Borrow/supply rate
    string name;
    uint256 liquidationThreshold;
}

struct InterestRateParams {
        uint256 baseRate;
        uint256 slope1;
        uint256 slope2;
        uint256 kink;
    }


  event Liquidation(
    address indexed liquidator,
    address indexed borrower,
    address indexed tokenRepaid,
    uint256 repayAmount,
    address collateralToken,
    uint256 collateralSeizedAmount
  );

  event Withdraw(
    address sender,
    address asset,
    uint256 amount,
    uint256 amountInUSD,
    uint256 totalAmountToWithdraw,
    uint256 totalInterest
  );
  event PayDebt(
    address sender,
    address asset,
    int256 index,
    uint256 tokenAmountBorrowed,
    uint256 totalTokenAmountToCollectFromUser,
     uint256 amountToRepayInUSD
  );
  event Borrow(
    address sender,
    address asset,
    uint256 amount,
    uint256 amountInDollars,
    uint256 totalAmountAvailableForBorrowInDollars,
    bool userPresent,
    int256 userIndex,
    uint256 currentUserTokenBorrowedAmount
  );
  event Supply(
    address sender,
    address asset,
    uint256 amount,
    uint256 amountInUSD,
    uint256 currentUserTokenLentAmount
  );
  event WithdrawTesting(
    address sender,
    uint256 tokentoWithdrawInDollars,
    uint256 availableToWithdraw
  );
  event BorrowTesting1(
    address sender,
    uint256 amountInDollars,
    uint256 totalAmountAvailableForBorrowInDollars
  );
  event FeeParamsUpdated(address feeWallet, uint256 fee, uint256 liquidationPenalty);
  event TokenForLendingAdded(
    string name,
    address tokenAddress,
    uint256 LTV,
    uint256 supplyStableRate,
    uint256 liquidationThreshold
  );
  event TokenForBorrowingAdded(
    string name,
    address tokenAddress,
    uint256 LTV,
    uint256 borrowStableRate,
    uint256 liquidationThreshold
  );
    event RatesUpdated(address indexed token, uint256 baseRate, uint256 slope1, uint256 slope2, uint256 kink);

  event BorrowTesting2(address sender, uint256 balance, uint256 amount);
  event RepayTesting1(address sender, int256 index);
  event RepayTesting2(address sender, uint256 tokenBorrowed);
  event OracleSet(address oracle);
  event AdminUpdated(address newAdmin);
  event DaoUpdated(address dao);
  event UtilizationReset(address indexed token);


  function supply(address tokenAddress, uint256 amount, address user) external payable;
  function borrow(address tokenAddress, uint256 amount, address user) external;
  function payDebt(address tokenAddress, uint256 amount, address user) external payable;
  function withdraw(address tokenAddress, uint256 amount, address user) external;
  function liquidate(address borrower, address tokenToRepay, uint256 repayAmount) external payable;
  function getUserDeposits(
    address user,
    address tokenAddress
  ) external view returns(Deposit[] memory);
  function getUserBorrows(
    address user,
    address tokenAddress
  ) external view returns(BorrowEntry[] memory);
  function getTokenForBorrow(address tokenAddress) external view returns (Token memory);
  function getTokenForSupply(address tokenAddress) external view returns (Token memory);
}

// ============================================================
// FILE: contracts/protocol/pool/MtzPool.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Initializable} from '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import {PausableUpgradeable} from '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import {UUPSUpgradeable} from '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import {OwnableUpgradeable} from '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import {ReentrancyGuardUpgradeable} from '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import {IERC20Metadata} from '@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol';
import {IERC20} from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SafeERC20} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {IPriceOracle} from '../../interfaces/IPriceOracle.sol';
import {IMTZPool} from './interfaces/IMTZPool.sol';

contract MtzPool is
  IMTZPool,
  Initializable,
  UUPSUpgradeable,
  OwnableUpgradeable,
  ReentrancyGuardUpgradeable,
  PausableUpgradeable
{
  using SafeERC20 for IERC20;

  IPriceOracle public oracle;
  address public mtzAdmin;
  address public dao;

  address[] public lenders; //admin only
  address[] public borrowers; //admin only

  mapping(address => mapping(address => uint256)) public tokensLentAmount;
  mapping(address => mapping(address => uint256)) public tokensBorrowedAmount;
  mapping(uint256 => mapping(address => address)) public tokensLent;
  mapping(uint256 => mapping(address => address)) public tokensBorrowed;
  mapping(uint256 => mapping(address => address)) public tokensLentOrBorrowed;
  mapping(address => mapping(address => Deposit[])) public userDeposits;
  mapping(address => mapping(address => BorrowEntry[])) public userBorrows;
  mapping(address => InterestRateParams) public interestRateModels;

  Token[] public tokensForLending;
  Token[] public tokensForBorrowing;

  address private feeAddress;
  uint256 public fee;
  uint256 public liquidationPenalty;

  // store active tokens
  mapping(address => mapping(address => bool)) private activeTokensLent;
  mapping(address => mapping(address => bool)) private activeTokensBorrowed;
  uint256 public constant PRECISION_FACTOR = 1e10;
  address constant ETHEREUM = address(0);

  mapping(address => bool) public isLender;
  mapping(address => bool) public isBorrower;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() initializer {}

  // Modifier that allows only the admin to call a function
  modifier onlyAdmin() {
    require(msg.sender == mtzAdmin, 'Unauthorized: caller is not the admin');
    _;
  }
  modifier onlyDao() {
    require(msg.sender == dao, 'Unauthorized: caller is not the dao admin');
    _;
  }

  function changeAdmin(address newAdmin) public onlyDao {
    require(newAdmin != address(0), 'Invalid address: new admin cannot be the zero address');
    mtzAdmin = newAdmin;
    emit AdminUpdated(newAdmin);
  }

  function changeDAO(address newDao) public onlyDao {
    require(newDao != address(0), 'Invalid address: new admin cannot be the zero address');
    dao = newDao;
    emit DaoUpdated(newDao);
  }

  function initialize(address _dao, address _mtzAdmin) external initializer {
    if (_dao == address(0) || _mtzAdmin == address(0)) revert('AddressNotSupported');
    UUPSUpgradeable.__UUPSUpgradeable_init();
    OwnableUpgradeable.__Ownable_init(_dao);
    ReentrancyGuardUpgradeable.__ReentrancyGuard_init();
    PausableUpgradeable.__Pausable_init();
    dao = _dao;
    mtzAdmin = _mtzAdmin;
  }

  function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}

  function addPriceFeed(address _oracle) public onlyAdmin {
    oracle = IPriceOracle(_oracle);
    emit OracleSet(_oracle);
  }

  function addFeeParams(
    address _feeWallet,
    uint256 _fee,
    uint256 _liquidationPenalty
  ) public onlyAdmin {
    if (_feeWallet == address(0)) revert('InvalidAddress');

    feeAddress = _feeWallet;
    fee = _fee;
    liquidationPenalty = _liquidationPenalty;

    emit FeeParamsUpdated(_feeWallet, _fee, _liquidationPenalty);
  }

  function setTokenParams(
    address tokenAddress,
    uint256 _baseRate,
    uint256 _slope1,
    uint256 _slope2,
    uint256 _kink
  ) external onlyAdmin {
    InterestRateParams storage params = interestRateModels[tokenAddress];
    params.baseRate = _baseRate;
    params.slope1 = _slope1;
    params.slope2 = _slope2;
    params.kink = _kink;
    emit RatesUpdated(tokenAddress, _baseRate, _slope1, _slope2, _kink);
  }

  // Function to get the interest rate parameters for a specific token
  function getParameters(address tokenAddress) public view returns (InterestRateParams memory) {
    return interestRateModels[tokenAddress];
  }

  function addTokensForLending(
    string memory name,
    address tokenAddress,
    uint256 LTV,
    uint256 initialSupplyRate,
    uint256 liquidationThreshold
  ) public onlyAdmin {
    Token memory newToken = Token({
      tokenAddress: tokenAddress,
      LTV: LTV,
      rate: initialSupplyRate,
      name: name,
      liquidationThreshold: liquidationThreshold
    });
    tokensForLending.push(newToken);
    emit TokenForLendingAdded(name, tokenAddress, LTV, initialSupplyRate, liquidationThreshold);
  }

  function addTokensForBorrowing(
    string memory name,
    address tokenAddress,
    uint256 LTV,
    uint256 initialBorrowRate,
    uint256 liquidationThreshold
  ) public onlyAdmin {
    Token memory newToken = Token({
      tokenAddress: tokenAddress,
      LTV: LTV,
      rate: initialBorrowRate,
      name: name,
      liquidationThreshold: liquidationThreshold
    });
    tokensForBorrowing.push(newToken);
    emit TokenForBorrowingAdded(name, tokenAddress, LTV, initialBorrowRate, liquidationThreshold);
  }

  // Remove token from lending array
  function removeTokenFromLending(address tokenAddress) public onlyAdmin {
    _removeToken(tokenAddress, tokensForLending);
  }

  // Remove token from borrowing array
  function removeTokenFromBorrowing(address tokenAddress) public onlyAdmin {
    _removeToken(tokenAddress, tokensForBorrowing);
  }

  // Internal function to remove a token from an array
  function _removeToken(address tokenAddress, Token[] storage tokenList) internal {
    int256 index = _findTokenIndex(tokenAddress, tokenList);
    require(index >= 0, 'Token not found');

    for (uint256 i = uint256(index); i < tokenList.length - 1; i++) {
      tokenList[i] = tokenList[i + 1];
    }
    tokenList.pop();
  }

  // Helper function to find the index of a token in an array
  function _findTokenIndex(
    address tokenAddress,
    Token[] storage tokenList
  ) internal view returns (int256) {
    for (uint256 i = 0; i < tokenList.length; i++) {
      if (tokenList[i].tokenAddress == tokenAddress) {
        return int256(i);
      }
    }
    return -1; // Token not found
  }

  // Function to calculate the utilization rate of a token
  function getUtilizationRate(address tokenAddress) public view returns (uint256) {
    uint256 totalLent = getTotalTokenSupplied(tokenAddress);
    uint256 totalBorrowed = getTotalTokenBorrowed(tokenAddress);
    if (totalLent == 0) return 0; // To prevent division by zero
    return (totalBorrowed * 1e18) / totalLent;
  }

  // Dynamic Borrow Rate Calculation
  function calculateDynamicBorrowRate(address tokenAddress) internal view returns (uint256) {
    uint256 utilizationRate = getUtilizationRate(tokenAddress);

    InterestRateParams memory params = interestRateModels[tokenAddress];

    // Retrieve parameters for the specific token
    uint256 baseRate = params.baseRate; // Base rate
    uint256 slope1 = params.slope1; // Slope 1 rate
    uint256 slope2 = params.slope2; // Slope 2 rate
    uint256 kink = params.kink; // Utilization kink

    if (utilizationRate < kink) {
      return baseRate + ((utilizationRate * slope1) / 1e18);
    } else {
      return baseRate + ((kink * slope1) / 1e18) + (((utilizationRate - kink) * slope2) / 1e18);
    }
  }

  // Dynamic Supply Rate Calculation
  function calculateDynamicSupplyRate(address tokenAddress) internal view returns (uint256) {
    uint256 borrowRate = calculateDynamicBorrowRate(tokenAddress);
    uint256 utilizationRate = getUtilizationRate(tokenAddress);
    Token memory token = _getTokenForSupply(tokenAddress);
    if (utilizationRate == 0) {
      return token.rate;
    }
    // Supply rate is typically lower than borrow rate to maintain a spread
    return ((borrowRate * utilizationRate) / 1e18);
  }

  // Update rates function called after each supply or borrow transaction
  function updateInterestRates(address tokenAddress) internal {
    uint256 newBorrowRate = calculateDynamicBorrowRate(tokenAddress);
    uint256 newSupplyRate = calculateDynamicSupplyRate(tokenAddress);

    for (uint256 i = 0; i < tokensForLending.length; i++) {
      if (tokensForLending[i].tokenAddress == tokenAddress) {
        tokensForLending[i].rate = newSupplyRate;
        break;
      }
    }
    for (uint256 i = 0; i < tokensForBorrowing.length; i++) {
      if (tokensForBorrowing[i].tokenAddress == tokenAddress) {
        tokensForBorrowing[i].rate = newBorrowRate;
        break;
      }
    }
  }

  function updateUserAccInterest() public whenNotPaused {
    updateAccInterestForUserTokens(msg.sender);
    updateBorrowInterestForUserTokens(msg.sender);
  }

  // Function to be called by an admin to update accrued interest for all users
  function updateAllUsersAccruedInterest() public onlyAdmin {
    for (uint i = 0; i < lenders.length; i++) {
      updateAccInterestForUserTokens(lenders[i]);
    }
    for (uint i = 0; i < borrowers.length; i++) {
      updateBorrowInterestForUserTokens(borrowers[i]);
    }
  }

  function updateAccInterestForUserTokens(address user) internal {
    // Iterate over all tokens that the user has supplied
    for (uint j = 0; j < tokensForLending.length; j++) {
      address tokenAddress = tokensForLending[j].tokenAddress;
      // Check if the user has supplied this token
      if (tokensLentAmount[tokenAddress][user] > 0) {
        // Get the deposits for the specific token
        Deposit[] storage deposits = userDeposits[user][tokenAddress];

        // Update accumulated interest for each deposit
        for (uint i = 0; i < deposits.length; i++) {
          Deposit storage deposit = deposits[i];
          uint256 timeElapsed = block.timestamp - deposit.lastUpdated;

          // Calculate the new interest based on time elapsed
          uint256 interest = calculateCompoundInterest(
            deposit.amount,
            deposit.interestAccumulated,
            tokenAddress,
            timeElapsed
          );

          // Update the accumulated interest and last updated time
          deposit.interestAccumulated += interest;
          deposit.lastUpdated = block.timestamp;
        }
      }
    }
  }

  function updateBorrowInterestForUserTokens(address user) internal {
    for (uint j = 0; j < tokensForBorrowing.length; j++) {
      address tokenAddress = tokensForBorrowing[j].tokenAddress;

      if (tokensBorrowedAmount[tokenAddress][user] > 0) {
        BorrowEntry[] storage borrows = userBorrows[user][tokenAddress];

        for (uint i = 0; i < borrows.length; i++) {
          BorrowEntry storage borrowEntry = borrows[i];
          uint256 timeElapsed = block.timestamp - borrowEntry.lastUpdated;

          uint256 interestAccrued = calculateBorrowInterest(
            borrowEntry.amount,
            borrowEntry.loanInterestAccrued,
            tokenAddress,
            timeElapsed
          );

          // Update the loan interest accrued and the last updated timestamp
          borrowEntry.loanInterestAccrued += interestAccrued;
          borrowEntry.lastUpdated = block.timestamp;
        }
      }
    }
  }

  function calculateCompoundInterest(
    uint256 principal,
    uint256 accumulatedInterest,
    address tokenAddress,
    uint256 timeElapsed
  ) internal view returns (uint256) {
    Token memory token = _getTokenForSupply(tokenAddress);
    uint256 ratePerHour = token.rate / 8760; // Annual to hourly rate
    uint256 hoursElapsed = timeElapsed / 1 hours;
    uint256 totalAmount = principal + accumulatedInterest;

    if (hoursElapsed > 0) {
      uint256 compoundedAmount = totalAmount;
      for (uint256 i = 0; i < hoursElapsed; i++) {
        compoundedAmount += (compoundedAmount * ratePerHour) / 1e18;
      }
      return compoundedAmount - totalAmount;
    }

    return 0;
  }

  function calculateBorrowInterest(
    uint256 principal,
    uint256 accumulatedInterest,
    address tokenAddress,
    uint256 timeElapsed
  ) internal view returns (uint256) {
    Token memory token = _getTokenForBorrow(tokenAddress);
    uint256 ratePerHour = token.rate / 8760; // Annual to hourly rate
    uint256 hoursElapsed = timeElapsed / 1 hours;
    uint256 totalAmount = principal + accumulatedInterest;

    if (hoursElapsed > 0) {
      uint256 compoundedAmount = totalAmount;
      for (uint256 i = 0; i < hoursElapsed; i++) {
        compoundedAmount += (compoundedAmount * ratePerHour) / 1e18;
      }
      return compoundedAmount - totalAmount;
    }

    return 0;
  }

  function getTotalDebtIncludingInterest(
    address user,
    address tokenAddress
  ) public view returns (uint256) {
    uint256 accruedInterest = getTotalBorrowInterestAccrued(user, tokenAddress);
    uint256 totalDebtIncludingInterest = tokensBorrowedAmount[tokenAddress][user] + accruedInterest;
    return totalDebtIncludingInterest;
  }

  function getTotalBorrowInterestAccrued(
    address user,
    address tokenAddress
  ) public view returns (uint256) {
    uint256 totalInterest = 0;
    BorrowEntry[] memory borrows = userBorrows[user][tokenAddress];
    for (uint256 i = 0; i < borrows.length; i++) {
      uint256 timeElapsed = block.timestamp - borrows[i].lastUpdated;
      uint256 interest = calculateBorrowInterest(
        borrows[i].amount,
        borrows[i].loanInterestAccrued,
        tokenAddress,
        timeElapsed
      );
      totalInterest += interest;
    }
    return totalInterest;
  }

  function getTotalSupplyInterestAccrued(
    address user,
    address tokenAddress
  ) public view returns (uint256) {
    uint256 totalInterest = 0;
    Deposit[] memory deposits = userDeposits[user][tokenAddress];
    for (uint256 i = 0; i < deposits.length; i++) {
      uint256 timeElapsed = block.timestamp - deposits[i].lastUpdated;
      uint256 interest = calculateCompoundInterest(
        deposits[i].amount,
        deposits[i].interestAccumulated,
        tokenAddress,
        timeElapsed
      );
      totalInterest += interest;
    }
    return totalInterest;
  }

  function supply(
    address tokenAddress,
    uint256 amount,
    address onBehalfOf
  ) external payable whenNotPaused nonReentrant {
    address user = onBehalfOf == address(0) ? msg.sender : onBehalfOf;
    if (!tokenIsAllowed(tokenAddress, tokensForLending)) revert('TokenNotSupported');
    if (amount == 0) revert('InvalidAmount');

    if (tokenAddress == ETHEREUM) {
      require(msg.value == amount, 'ETH amount mismatch');
    } else {
      IERC20 token = IERC20(tokenAddress);
      if (token.balanceOf(msg.sender) < amount) revert('InsufficientTokenAmount');
      token.safeTransferFrom(msg.sender, address(this), amount);
    }

    uint256 amountInDollars = getAmountInDollars(amount, tokenAddress);

    if (getTotalAmountLentInDollars(user) == 0) {
      lenders.push(user);
    }

    userDeposits[user][tokenAddress].push(
      Deposit({amount: amount, interestAccumulated: 0, lastUpdated: block.timestamp})
    );

    tokensLentAmount[tokenAddress][user] += amount;
    activeTokensLent[user][tokenAddress] = true;

    if (!isLender[user]) {
      isLender[user] = true;
    }

    emit Supply(user, tokenAddress, amount, amountInDollars, tokensLentAmount[tokenAddress][user]);
  }

  function borrow(address tokenAddress, uint256 amount, address onBehalfOf) external whenNotPaused nonReentrant {
    address user = onBehalfOf == address(0) ? msg.sender : onBehalfOf;
    if (!tokenIsAllowed(tokenAddress, tokensForBorrowing)) revert TokenNotSupported();
    if (amount == 0) revert InvalidAmount();

    uint256 totalAmountAvailableForBorrowInDollars = getUserTotalAmountAvailableForBorrowInDollars(
      user
    );
    uint256 amountInDollars = getAmountInDollars(amount, tokenAddress);
    IERC20 token = IERC20(tokenAddress);

    if (amountInDollars > totalAmountAvailableForBorrowInDollars)
      revert("You don't have enough collateral to borrow this amount");

    if (tokenAddress == ETHEREUM) {
      if (address(this).balance < amount) revert('InsufficientLiquidity');
      (bool sent, ) = user.call{value: amount}('');
      if (!sent) revert('Failed to send Ether');
    } else {
      if (token.balanceOf(address(this)) < amount) revert('InsufficientLiquidity');
      token.safeTransfer(user, amount);
    }

    if (getTotalAmountBorrowedInDollars(user) == 0) {
      borrowers.push(user);
    }

    BorrowEntry memory newBorrowEntry = BorrowEntry({
      amount: amount,
      loanInterestAccrued: 0,
      lastUpdated: block.timestamp
    });
    userBorrows[user][tokenAddress].push(newBorrowEntry);

    tokensBorrowedAmount[tokenAddress][user] += amount;
    activeTokensBorrowed[user][tokenAddress] = true;

    if (!isBorrower[user]) {
      isBorrower[user] = true;
    }

    emit Borrow(
      user,
      tokenAddress,
      amount,
      amountInDollars,
      totalAmountAvailableForBorrowInDollars,
      isBorrower[user],
      -1,
      tokensBorrowedAmount[tokenAddress][user]
    );
  }

  function payDebt(
    address tokenAddress,
    uint256 amount,
    address onBehalfOf
  ) external payable whenNotPaused nonReentrant {
    address user = onBehalfOf == address(0) ? msg.sender : onBehalfOf;

    if (userBorrows[user][tokenAddress].length == 0) revert('No borrows found');

    uint256 tokenBorrowed = tokensBorrowedAmount[tokenAddress][user];
    uint256 remainingAmount = amount;
    uint256 repayAmountInDollar = getAmountInDollars(amount, tokenAddress);
    IERC20 token = IERC20(tokenAddress);

    uint256 totalDebtIncludingInterest = getTotalDebtIncludingInterest(user, tokenAddress);
    if (totalDebtIncludingInterest < amount) revert('Repayment amount exceeds total debt');

    if (tokenAddress == ETHEREUM) {
      if (msg.value != amount) revert('Incorrect ETH amount sent');
    } else {
      if (amount == 0) revert InvalidAmount();
      token.safeTransferFrom(msg.sender, address(this), amount);
    }

    BorrowEntry[] storage borrows = userBorrows[user][tokenAddress];
    for (uint i = 0; i < borrows.length && remainingAmount > 0; i++) {
      uint256 debt = borrows[i].amount + borrows[i].loanInterestAccrued;
      if (debt <= remainingAmount) {
        remainingAmount -= debt;
        tokensBorrowedAmount[tokenAddress][user] -= borrows[i].amount;
        borrows[i].amount = 0;
        borrows[i].loanInterestAccrued = 0;
      } else {
        uint256 interestDeduct = remainingAmount > borrows[i].loanInterestAccrued
          ? borrows[i].loanInterestAccrued
          : remainingAmount;
        uint256 principalDeduct = remainingAmount - interestDeduct;
        borrows[i].loanInterestAccrued -= interestDeduct;
        borrows[i].amount -= principalDeduct;
        tokensBorrowedAmount[tokenAddress][user] -= principalDeduct;
        remainingAmount = 0;
      }
    }

    cleanupBorrowEntries(borrows);

    if (tokensBorrowedAmount[tokenAddress][user] == 0) {
      delete userBorrows[user][tokenAddress];
      delete activeTokensBorrowed[user][tokenAddress];
      delete tokensBorrowedAmount[tokenAddress][user];
    }

    if (getTotalAmountBorrowedInDollars(user) == 0) {
      isBorrower[user] = false;
    }

    emit PayDebt(user, tokenAddress, -1, tokenBorrowed, amount, repayAmountInDollar); // -1 index placeholder
  }

  function withdraw(
    address tokenAddress,
    uint256 amount,
    address onBehalfOf
  ) external whenNotPaused nonReentrant {
    address user = onBehalfOf == address(0) ? msg.sender : onBehalfOf;
    if (amount == 0) revert InvalidAmount();
    if (userDeposits[user][tokenAddress].length == 0) revert('No deposits found');

    uint256 amountInDollars = getAmountInDollars(amount, tokenAddress);
    uint256 availableToWithdrawInDollars = getTokenAvailableToWithdraw(user);
    if (amountInDollars > availableToWithdrawInDollars)
      revert('Withdrawal exceeds available collateral');

    Deposit[] storage deposits = userDeposits[user][tokenAddress];
    uint256 remainingPrincipalToWithdraw = amount;
    uint256 totalWithdrawn = 0;
    uint256 totalInterest = 0;

    for (uint i = 0; i < deposits.length && remainingPrincipalToWithdraw > 0; i++) {
      Deposit storage deposit = deposits[i];
      uint256 availablePrincipal = deposit.amount;
      uint256 interest = deposit.interestAccumulated;

      if (availablePrincipal + interest <= remainingPrincipalToWithdraw) {
        totalWithdrawn += availablePrincipal + interest;
        totalInterest += interest;
        remainingPrincipalToWithdraw -= (availablePrincipal + interest);
        tokensLentAmount[tokenAddress][user] -= availablePrincipal;
        deposit.amount = 0;
        deposit.interestAccumulated = 0;
      } else {
        uint256 principalWithdrawn = remainingPrincipalToWithdraw > interest
          ? remainingPrincipalToWithdraw - interest
          : 0;
        uint256 interestUsed = remainingPrincipalToWithdraw > interest
          ? interest
          : remainingPrincipalToWithdraw;
        totalInterest += interestUsed;
        deposit.amount -= principalWithdrawn;
        deposit.interestAccumulated -= interestUsed;
        totalWithdrawn += remainingPrincipalToWithdraw;
        tokensLentAmount[tokenAddress][user] -= principalWithdrawn;
        remainingPrincipalToWithdraw = 0;
      }
    }

    if (remainingPrincipalToWithdraw != 0) revert('Insufficient balance after interest adjustment');

    uint256 adminFeeAmount = (totalWithdrawn * fee) / 1e18;

    if (tokenAddress == ETHEREUM) {
      payable(feeAddress).transfer(adminFeeAmount);
      payable(user).transfer(totalWithdrawn - adminFeeAmount);
    } else {
      IERC20(tokenAddress).safeTransfer(feeAddress, adminFeeAmount);
      IERC20(tokenAddress).safeTransfer(user, totalWithdrawn - adminFeeAmount);
    }

    cleanupDepositEntries(deposits);

    if (tokensLentAmount[tokenAddress][user] == 0) {
      delete userDeposits[user][tokenAddress];
      delete activeTokensLent[user][tokenAddress];
      delete tokensLentAmount[tokenAddress][user];
    }

    if (getTotalAmountLentInDollars(user) == 0) {
      isLender[user] = false;
    }

    emit Withdraw(
      user,
      tokenAddress,
      amount,
      amountInDollars,
      totalWithdrawn - adminFeeAmount,
      totalInterest
    );
  }

  function liquidate(
    address borrower,
    address tokenToRepay,
    uint256 repayAmount
  ) external payable whenNotPaused nonReentrant {
    if (msg.sender == borrower) revert('Cannot liquidate own position');
    if (tokensBorrowedAmount[tokenToRepay][borrower] == 0) revert('No active debt for this token');
    // Calculate the overall health factor using weighted average thresholds
    uint256 healthFactor = getHealthFactor(borrower);
    if (healthFactor >= 1e18) revert('Position is healthy, cannot be liquidated');

    uint256 repayAmountInDollars = getAmountInDollars(repayAmount, tokenToRepay);
    uint256 collateralSeizedValue = (repayAmountInDollars * (1e18 + liquidationPenalty)) / 1e18;
    address collateralToken = getTopCollateralToken(borrower);
    uint256 availableCollateral = tokensLentAmount[collateralToken][borrower];
    uint256 collateralSeizedAmount = calculateCollateralSeizedAmount(
      collateralSeizedValue,
      collateralToken
    );

    // If available collateral is less than the calculated seize amount
    if (availableCollateral < collateralSeizedAmount) {
      collateralSeizedAmount = availableCollateral; // Adjust the seizure amount to available collateral
    }

    // Perform the token transfers
    if (tokenToRepay == ETHEREUM) {
      if (msg.value != repayAmount) revert('Incorrect ETH amount sent');
    } else {
      IERC20(tokenToRepay).safeTransferFrom(msg.sender, address(this), repayAmount);
    }

    if (collateralToken == ETHEREUM) {
      (bool sent, ) = msg.sender.call{value: collateralSeizedAmount}('');
      if (!sent) revert('Failed to send ETH');
    } else {
      IERC20(collateralToken).safeTransfer(msg.sender, collateralSeizedAmount);
    }
    // Update tokens borrowed and lent amounts
    tokensBorrowedAmount[tokenToRepay][borrower] -= repayAmount;
    tokensLentAmount[collateralToken][borrower] -= collateralSeizedAmount;

    // // Check if the borrower still owes more after liquidation
    // if (collateralSeizedValue > availableCollateral) {
    //     // Apply a penalty or leave residual debt to be settled
    //     uint256 deficit = collateralSeizedValue - availableCollateral;
    //     // Handle deficit (e.g., convert to a term or penalty)
    // }

    // Update user borrow and deposit records
    updateBorrowEntries(borrower, tokenToRepay, repayAmount);
    updateDepositEntries(borrower, collateralToken, collateralSeizedAmount);

    emit Liquidation(
      msg.sender,
      borrower,
      tokenToRepay,
      repayAmount,
      collateralToken,
      collateralSeizedAmount
    );
  }

  // Function to update borrow entries after liquidation
  function updateBorrowEntries(address borrower, address token, uint256 amount) private {
    BorrowEntry[] storage borrows = userBorrows[borrower][token];
    for (uint i = 0; i < borrows.length && amount > 0; i++) {
      if (borrows[i].amount <= amount) {
        amount -= borrows[i].amount;
        borrows[i].amount = 0;
      } else {
        borrows[i].amount -= amount;
        break;
      }
    }
    cleanupBorrowEntries(borrows);
  }

  // Function to update deposit entries after liquidation
  function updateDepositEntries(address borrower, address token, uint256 amount) private {
    Deposit[] storage deposits = userDeposits[borrower][token];
    for (uint i = 0; i < deposits.length && amount > 0; i++) {
      if (deposits[i].amount <= amount) {
        amount -= deposits[i].amount;
        deposits[i].amount = 0;
      } else {
        deposits[i].amount -= amount;
        break;
      }
    }
    cleanupDepositEntries(deposits);
  }

  // General cleanup function for zero-balance entries
  function cleanupBorrowEntries(BorrowEntry[] storage entries) private {
    uint256 count = 0;
    for (uint256 i = 0; i < entries.length; i++) {
      if (entries[i].amount > 0) {
        entries[count++] = entries[i];
      }
    }
    while (entries.length > count) {
      entries.pop();
    }
  }

  function cleanupDepositEntries(Deposit[] storage entries) private {
    uint256 count = 0;
    for (uint256 i = 0; i < entries.length; i++) {
      if (entries[i].amount > 0) {
        entries[count++] = entries[i];
      }
    }
    while (entries.length > count) {
      entries.pop();
    }
  }

  function getHealthFactor(address borrower) public view returns (uint256) {
    // Calculate total collateral and borrowed values
    uint256 totalCollateralValue = getTotalAmountLentInDollars(borrower);
    uint256 totalBorrowedValue = getTotalAmountBorrowedInDollars(borrower);

    if (totalCollateralValue == 0 || totalBorrowedValue == 0) {
      return 1e18; //very safe 100%
    }

    uint256 averageLiquidationThld = averageLiquidationThreshold(borrower);
    return (totalCollateralValue * averageLiquidationThld) / totalBorrowedValue;
  }

  function calculateCollateralSeizedAmount(
    uint256 collateralSeizedValue,
    address collateralToken
  ) internal view returns (uint256) {
    uint256 tokenDecimals = IERC20Metadata(collateralToken).decimals();
    return (collateralSeizedValue * (10 ** tokenDecimals)) / tokenDollarPrice(collateralToken);
  }

  function averageLiquidationThreshold(address borrower) internal view returns (uint256) {
    uint256 totalCollateralValue = 0;
    uint256 weightedThresholdSum = 0;
    // Iterate over all tokens in the lending pool
    for (uint256 i = 0; i < tokensForLending.length; i++) {
      address tokenAddress = tokensForLending[i].tokenAddress;
      uint256 tokenCollateralValue = getAmountInDollars(
        tokensLentAmount[tokenAddress][borrower],
        tokenAddress
      );
      if (tokenCollateralValue > 0) {
        totalCollateralValue += tokenCollateralValue;
        // Multiply the token's collateral value by its liquidation threshold
        weightedThresholdSum += tokenCollateralValue * tokensForLending[i].liquidationThreshold;
      }
    }
    // Prevent division by zero in case there is no collateral
    if (totalCollateralValue == 0) {
      return 0;
    }
    // Calculates the weighted average of the liquidation thresholds
    return weightedThresholdSum / totalCollateralValue;
  }

  function getUserDeposits(
    address user,
    address tokenAddress
  ) external view returns (Deposit[] memory) {
    Deposit[] storage deposits = userDeposits[user][tokenAddress];
    return deposits;
  }

  function getUserBorrows(
    address user,
    address tokenAddress
  ) external view returns (BorrowEntry[] memory) {
    BorrowEntry[] storage borrows = userBorrows[user][tokenAddress];
    return borrows;
  }

  //external
  function _getTokenForBorrow(address tokenAddress) internal view returns (Token memory) {
    Token memory token;
    for (uint256 i = 0; i < tokensForBorrowing.length; i++) {
      Token memory currentToken = tokensForBorrowing[i];
      if (currentToken.tokenAddress == tokenAddress) {
        token = currentToken;
        break;
      }
    }
    return token;
  }

  function getTokenForBorrow(address tokenAddress) external view returns (Token memory) {
    return _getTokenForBorrow(tokenAddress);
  }

  //external
  function _getTokenForSupply(address tokenAddress) internal view returns (Token memory) {
    Token memory token;
    for (uint256 i = 0; i < tokensForLending.length; i++) {
      Token memory currentToken = tokensForLending[i];
      if (currentToken.tokenAddress == tokenAddress) {
        token = currentToken;
        break;
      }
    }
    return token;
  }

  function getTokenForSupply(address tokenAddress) external view returns (Token memory) {
    return _getTokenForSupply(tokenAddress);
  }

  function getTopCollateralToken(address user) internal view returns (address) {
    uint256 highestCollateralValue = 0;
    address topCollateralToken;

    for (uint256 i = 0; i < tokensForLending.length; i++) {
      address tokenAddress = tokensForLending[i].tokenAddress;
      uint256 collateralAmount = tokensLentAmount[tokenAddress][user];
      uint256 collateralValue = getAmountInDollars(collateralAmount, tokenAddress);

      if (collateralValue > highestCollateralValue) {
        highestCollateralValue = collateralValue;
        topCollateralToken = tokenAddress;
      }
    }

    return topCollateralToken;
  }

  function getTokenAvailableToWithdraw(address user) public view returns (uint256) {
    uint256 totalAmountBorrowedInDollars = getTotalAmountBorrowedInDollars(user);

    uint remainingCollateral = 0;

    if (totalAmountBorrowedInDollars > 0) {
      remainingCollateral = getRemainingCollateral(user);
    } else {
      remainingCollateral = getTotalAmountLentInDollars(user);
    }

    if (remainingCollateral < totalAmountBorrowedInDollars) {
      return 0;
    }

    uint256 availableToWithdraw = remainingCollateral - totalAmountBorrowedInDollars;

    return availableToWithdraw;
  }

  function getUserTotalAmountAvailableForBorrowInDollars(
    address user
  ) public view returns (uint256) {
    uint256 availableCollateral = getRemainingCollateral(user);
    uint256 totalBorrowed = getTotalAmountBorrowedInDollars(user);

    if (totalBorrowed >= availableCollateral) {
      return 0;
    }

    return availableCollateral - totalBorrowed;
  }

  function getRemainingCollateral(address user) public view returns (uint256) {
    uint256 remainingCollateral = 0;
    for (uint256 i = 0; i < tokensForLending.length; i++) {
      address tokenAddress = tokensForLending[i].tokenAddress;
      if (activeTokensLent[user][tokenAddress]) {
        uint256 tokenAmountLent = tokensLentAmount[tokenAddress][user];
        // Calculate the current value of the supplied amount including accrued interest
        uint256 accruedInterest = getTotalSupplyInterestAccrued(user, tokenAddress);
        uint256 totalLentWithInterest = tokenAmountLent + accruedInterest;
        uint256 tokenAmountLentInDollars = getAmountInDollars(totalLentWithInterest, tokenAddress);

        Token memory currentToken = _getTokenForSupply(tokenAddress);
        remainingCollateral += (tokenAmountLentInDollars * currentToken.LTV) / 1e18;
      }
    }
    return remainingCollateral;
  }

  function getRemainingCollateralPerToken(
    address user,
    address tokenAddress
  ) public view returns (uint256) {
    if (activeTokensLent[user][tokenAddress]) {
      uint256 tokenAmountLent = tokensLentAmount[tokenAddress][user];
      uint256 accruedInterest = getTotalSupplyInterestAccrued(user, tokenAddress);
      uint256 totalLentWithInterest = tokenAmountLent + accruedInterest;
      uint256 tokenAmountLentInDollars = getAmountInDollars(totalLentWithInterest, tokenAddress);
      Token memory currentToken = _getTokenForSupply(tokenAddress);
      return (tokenAmountLentInDollars * currentToken.LTV) / 1e18;
    }
    return 0; // Return 0 if no active tokens lent found for this user and token
  }

  function getUserSupplyForToken(
    address user,
    address tokenAddress
  ) external view returns (uint256) {
    return tokensLentAmount[tokenAddress][user];
  }

  function getUserBorrowedForToken(
    address user,
    address tokenAddress
  ) external view returns (uint256) {
    return tokensBorrowedAmount[tokenAddress][user];
  }

  function getUserTotalAmountLentForTokenInDollars(
    address user,
    address tokenAddress
  ) public view returns (uint256) {
    uint256 tokenAmountLent = tokensLentAmount[tokenAddress][user];

    if (tokenAmountLent == 0) {
      return 0;
    }

    uint256 tokenAmountLentInDollars = getAmountInDollars(tokenAmountLent, tokenAddress);

    return tokenAmountLentInDollars;
  }

  function getUserTotalAmountBorrowedForTokenInDollars(
    address user,
    address tokenAddress
  ) public view returns (uint256) {
    uint256 tokenAmountBorrowed = tokensBorrowedAmount[tokenAddress][user];

    if (tokenAmountBorrowed == 0) {
      return 0;
    }

    uint256 tokenAmountBorrowedInDollars = getAmountInDollars(tokenAmountBorrowed, tokenAddress);

    return tokenAmountBorrowedInDollars;
  }

  function getTotalAmountBorrowedInDollars(
    address user
  ) public view returns (uint256 totalAmountBorrowed) {
    for (uint256 i = 0; i < tokensForBorrowing.length; i++) {
      address tokenAddress = tokensForBorrowing[i].tokenAddress;
      if (activeTokensBorrowed[user][tokenAddress]) {
        uint256 tokenAmountBorrowed = tokensBorrowedAmount[tokenAddress][user];
        totalAmountBorrowed += getAmountInDollars(tokenAmountBorrowed, tokenAddress);
      }
    }
  }

  function getTotalAmountLentInDollars(address user) public view returns (uint256 totalAmountLent) {
    // This loop now iterates only over active lent tokens
    for (uint256 i = 0; i < tokensForLending.length; i++) {
      address tokenAddress = tokensForLending[i].tokenAddress;
      if (activeTokensLent[user][tokenAddress]) {
        uint256 amount = tokensLentAmount[tokenAddress][user];
        totalAmountLent += getAmountInDollars(amount, tokenAddress);
      }
    }
  }

  function getTokensSuppliedByUser(address user) external view returns (Token[] memory) {
    uint256 tokenCount = 0;

    // First, count how many tokens the user has supplied
    for (uint256 i = 0; i < tokensForLending.length; i++) {
      address tokenAddress = tokensForLending[i].tokenAddress;
      if (tokensLentAmount[tokenAddress][user] > 0) {
        tokenCount++;
      }
    }

    Token[] memory tokensSupplied = new Token[](tokenCount);
    uint256 index = 0;

    // Add tokens that the user has supplied to the array (as Token structs)
    for (uint256 i = 0; i < tokensForLending.length; i++) {
      address tokenAddress = tokensForLending[i].tokenAddress;
      if (tokensLentAmount[tokenAddress][user] > 0) {
        tokensSupplied[index] = tokensForLending[i];
        index++;
      }
    }

    return tokensSupplied;
  }

  function getTokensBorrowedByUser(address user) external view returns (Token[] memory) {
    uint256 tokenCount = 0;

    for (uint256 i = 0; i < tokensForBorrowing.length; i++) {
      address tokenAddress = tokensForBorrowing[i].tokenAddress;
      if (tokensBorrowedAmount[tokenAddress][user] > 0) {
        tokenCount++;
      }
    }

    Token[] memory BorrowedTokens = new Token[](tokenCount);
    uint256 index = 0;

    for (uint256 i = 0; i < tokensForBorrowing.length; i++) {
      address tokenAddress = tokensForBorrowing[i].tokenAddress;
      if (tokensBorrowedAmount[tokenAddress][user] > 0) {
        BorrowedTokens[index] = tokensForBorrowing[i];
        index++;
      }
    }

    return BorrowedTokens;
  }

  function tokenIsBorrowed(address user, address token) private view returns (bool) {
    return tokensBorrowedAmount[token][user] != 0;
  }

  function tokenIsAllowed(
    address tokenAddress,
    Token[] memory tokenArray
  ) private pure returns (bool) {
    if (tokenArray.length > 0) {
      for (uint256 i = 0; i < tokenArray.length; i++) {
        Token memory currentToken = tokenArray[i];
        if (currentToken.tokenAddress == tokenAddress) {
          return true;
        }
      }
    }

    return false;
  }

  function tokenIsAlreadyThere(
    Token memory token,
    Token[] memory tokenArray
  ) private pure returns (bool) {
    if (tokenArray.length > 0) {
      for (uint256 i = 0; i < tokenArray.length; i++) {
        Token memory currentToken = tokenArray[i];
        if (currentToken.tokenAddress == token.tokenAddress) {
          return true;
        }
      }
    }

    return false;
  }

  function getAmountInDollars(uint256 amount, address tokenAddress) public view returns (uint256) {
    uint256 dollarPerToken = tokenDollarPrice(tokenAddress);
    uint8 tokenDecimals;
    if (tokenAddress == address(0)) {
      tokenDecimals = 18;
    } else {
      tokenDecimals = IERC20Metadata(tokenAddress).decimals();
    }

    uint256 amountIn;

    if (tokenDecimals > 18) {
      // If token decimals are greater than 18, divide to reduce precision
      uint256 scaleDownFactor = 10 ** (tokenDecimals - 18);
      amountIn = amount / scaleDownFactor;
    } else if (tokenDecimals < 18) {
      // If token decimals are less than 18, multiply to increase precision
      uint256 scaleUpFactor = 10 ** (18 - tokenDecimals);
      amountIn = amount * scaleUpFactor;
    } else {
      // If token decimals are 18, no scaling is needed
      amountIn = amount;
    }

    return (amountIn * dollarPerToken) / 1e18;
  }

  function tokenDollarPrice(address asset) public view returns (uint256) {
    uint256 price = oracle.getAssetPrice(asset);
    return price;
  }

  function getTotalTokenSupplied(address tokenAddress) public view returns (uint256) {
    uint256 totalTokenSupplied = 0;
    if (lenders.length > 0) {
      for (uint256 i = 0; i < lenders.length; i++) {
        address curentLender = lenders[i];
        totalTokenSupplied += tokensLentAmount[tokenAddress][curentLender];
      }
    }

    return totalTokenSupplied;
  }

  function getTotalTokenBorrowed(address tokenAddress) public view returns (uint256) {
    uint256 totalTokenBorrowed = 0;
    if (borrowers.length > 0) {
      for (uint256 i = 0; i < borrowers.length; i++) {
        address curentBorrower = borrowers[i];
        totalTokenBorrowed += tokensBorrowedAmount[tokenAddress][curentBorrower];
      }
    }
    return totalTokenBorrowed;
  }

  function getTotalSupplyInDollars() external view returns (uint256) {
    uint256 totalSupplyInDollars = 0;

    for (uint256 i = 0; i < tokensForLending.length; i++) {
      address tokenAddress = tokensForLending[i].tokenAddress;
      uint256 tokenTotalSupply = getTotalTokenSupplied(tokenAddress);

      if (tokenTotalSupply == 0) continue;

      uint256 tokenTotalSupplyInDollars = getAmountInDollars(tokenTotalSupply, tokenAddress);
      totalSupplyInDollars += tokenTotalSupplyInDollars;
    }

    return totalSupplyInDollars;
  }

  function getTotalBorrowedInDollars() external view returns (uint256) {
    uint256 totalBorrowedInDollars = 0;

    for (uint256 i = 0; i < tokensForBorrowing.length; i++) {
      address tokenAddress = tokensForBorrowing[i].tokenAddress;
      uint256 tokenTotalBorrowed = 0;

      for (uint256 j = 0; j < borrowers.length; j++) {
        address borrower = borrowers[j];
        if (tokensBorrowedAmount[tokenAddress][borrower] == 0) continue;
        tokenTotalBorrowed += tokensBorrowedAmount[tokenAddress][borrower];
      }

      uint256 tokenTotalBorrowedInDollars = getAmountInDollars(tokenTotalBorrowed, tokenAddress);
      totalBorrowedInDollars += tokenTotalBorrowedInDollars;
    }

    return totalBorrowedInDollars;
  }

  function resetUtilizationForToken(address tokenAddress) external onlyDao whenNotPaused {
    for (uint256 i = 0; i < lenders.length; i++) {
      address lender = lenders[i];
      if (tokensLentAmount[tokenAddress][lender] > 0) {
        tokensLentAmount[tokenAddress][lender] = 0;
        delete userDeposits[lender][tokenAddress];
        delete activeTokensLent[lender][tokenAddress];
      }
      isLender[lender] = false;
    }

    for (uint256 i = 0; i < borrowers.length; i++) {
      address borrower = borrowers[i];
      if (tokensBorrowedAmount[tokenAddress][borrower] > 0) {
        tokensBorrowedAmount[tokenAddress][borrower] = 0;
        delete userBorrows[borrower][tokenAddress];
        delete activeTokensBorrowed[borrower][tokenAddress];
      }
      isBorrower[borrower] = false;
    }

    emit UtilizationReset(tokenAddress);
  }

  function withdrawToDao(
    address _token,
    address _vault,
    uint256 _amount
  ) external whenNotPaused nonReentrant onlyAdmin {
    IERC20(_token).safeTransfer(_vault, _amount);
  }

  function getLendersArray() external view returns (address[] memory) {
    return lenders;
  }

  function getBorrowersArray() external view returns (address[] memory) {
    return borrowers;
  }

  function getTokensForLendingArray() external view returns (Token[] memory) {
    return tokensForLending;
  }

  function getTokensForBorrowingArray() external view returns (Token[] memory) {
    return tokensForBorrowing;
  }

  function pause() public onlyOwner {
    _pause();
  }

  function unpause() public onlyOwner {
    _unpause();
  }

  // Function to receive Ether. msg.data must be empty
  receive() external payable {}
}
