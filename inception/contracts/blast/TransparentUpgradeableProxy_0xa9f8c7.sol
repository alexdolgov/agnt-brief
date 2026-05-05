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
// FILE: @openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {Context} from "../utils/Context.sol";

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
abstract contract Ownable is Context {
    address private _owner;

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
    constructor(address initialOwner) {
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
        return _owner;
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
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/draft-IERC6093.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)
pragma solidity ^0.8.20;

/**
 * @dev Standard ERC20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC20 tokens.
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
 * @dev Standard ERC721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in EIP-20.
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
 * @dev Standard ERC1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC1155 tokens.
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
// FILE: @openzeppelin/contracts/interfaces/IERC1967.sol
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
// FILE: @openzeppelin/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20Metadata} from "../token/ERC20/extensions/IERC20Metadata.sol";

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
// FILE: @openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/ERC1967/ERC1967Proxy.sol)

pragma solidity ^0.8.20;

import {Proxy} from "../Proxy.sol";
import {ERC1967Utils} from "./ERC1967Utils.sol";

/**
 * @dev This contract implements an upgradeable proxy. It is upgradeable because calls are delegated to an
 * implementation address that can be changed. This address is stored in storage in the location specified by
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967], so that it doesn't conflict with the storage layout of the
 * implementation behind the proxy.
 */
contract ERC1967Proxy is Proxy {
    /**
     * @dev Initializes the upgradeable proxy with an initial implementation specified by `implementation`.
     *
     * If `_data` is nonempty, it's used as data in a delegate call to `implementation`. This will typically be an
     * encoded function call, and allows initializing the storage of the proxy like a Solidity constructor.
     *
     * Requirements:
     *
     * - If `data` is empty, `msg.value` must be zero.
     */
    constructor(address implementation, bytes memory _data) payable {
        ERC1967Utils.upgradeToAndCall(implementation, _data);
    }

    /**
     * @dev Returns the current implementation address.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using
     * the https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc`
     */
    function _implementation() internal view virtual override returns (address) {
        return ERC1967Utils.getImplementation();
    }
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
// FILE: @openzeppelin/contracts/proxy/Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/Proxy.sol)

pragma solidity ^0.8.20;

/**
 * @dev This abstract contract provides a fallback function that delegates all calls to another contract using the EVM
 * instruction `delegatecall`. We refer to the second contract as the _implementation_ behind the proxy, and it has to
 * be specified by overriding the virtual {_implementation} function.
 *
 * Additionally, delegation to the implementation can be triggered manually through the {_fallback} function, or to a
 * different contract through the {_delegate} function.
 *
 * The success and return data of the delegated call will be returned back to the caller of the proxy.
 */
abstract contract Proxy {
    /**
     * @dev Delegates the current call to `implementation`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _delegate(address implementation) internal virtual {
        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the implementation.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    /**
     * @dev This is a virtual function that should be overridden so it returns the address to which the fallback
     * function and {_fallback} should delegate.
     */
    function _implementation() internal view virtual returns (address);

    /**
     * @dev Delegates the current call to the address returned by `_implementation()`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _fallback() internal virtual {
        _delegate(_implementation());
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if no other
     * function in the contract matches the call data.
     */
    fallback() external payable virtual {
        _fallback();
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/transparent/ProxyAdmin.sol)

pragma solidity ^0.8.20;

import {ITransparentUpgradeableProxy} from "./TransparentUpgradeableProxy.sol";
import {Ownable} from "../../access/Ownable.sol";

/**
 * @dev This is an auxiliary contract meant to be assigned as the admin of a {TransparentUpgradeableProxy}. For an
 * explanation of why you would want to use this see the documentation for {TransparentUpgradeableProxy}.
 */
contract ProxyAdmin is Ownable {
    /**
     * @dev The version of the upgrade interface of the contract. If this getter is missing, both `upgrade(address)`
     * and `upgradeAndCall(address,bytes)` are present, and `upgradeTo` must be used if no function should be called,
     * while `upgradeAndCall` will invoke the `receive` function if the second argument is the empty byte string.
     * If the getter returns `"5.0.0"`, only `upgradeAndCall(address,bytes)` is present, and the second argument must
     * be the empty byte string if no function should be called, making it impossible to invoke the `receive` function
     * during an upgrade.
     */
    string public constant UPGRADE_INTERFACE_VERSION = "5.0.0";

    /**
     * @dev Sets the initial owner who can perform upgrades.
     */
    constructor(address initialOwner) Ownable(initialOwner) {}

    /**
     * @dev Upgrades `proxy` to `implementation` and calls a function on the new implementation.
     * See {TransparentUpgradeableProxy-_dispatchUpgradeToAndCall}.
     *
     * Requirements:
     *
     * - This contract must be the admin of `proxy`.
     * - If `data` is empty, `msg.value` must be zero.
     */
    function upgradeAndCall(
        ITransparentUpgradeableProxy proxy,
        address implementation,
        bytes memory data
    ) public payable virtual onlyOwner {
        proxy.upgradeToAndCall{value: msg.value}(implementation, data);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/transparent/TransparentUpgradeableProxy.sol)

pragma solidity ^0.8.20;

import {ERC1967Utils} from "../ERC1967/ERC1967Utils.sol";
import {ERC1967Proxy} from "../ERC1967/ERC1967Proxy.sol";
import {IERC1967} from "../../interfaces/IERC1967.sol";
import {ProxyAdmin} from "./ProxyAdmin.sol";

/**
 * @dev Interface for {TransparentUpgradeableProxy}. In order to implement transparency, {TransparentUpgradeableProxy}
 * does not implement this interface directly, and its upgradeability mechanism is implemented by an internal dispatch
 * mechanism. The compiler is unaware that these functions are implemented by {TransparentUpgradeableProxy} and will not
 * include them in the ABI so this interface must be used to interact with it.
 */
interface ITransparentUpgradeableProxy is IERC1967 {
    function upgradeToAndCall(address, bytes calldata) external payable;
}

/**
 * @dev This contract implements a proxy that is upgradeable through an associated {ProxyAdmin} instance.
 *
 * To avoid https://medium.com/nomic-labs-blog/malicious-backdoors-in-ethereum-proxies-62629adf3357[proxy selector
 * clashing], which can potentially be used in an attack, this contract uses the
 * https://blog.openzeppelin.com/the-transparent-proxy-pattern/[transparent proxy pattern]. This pattern implies two
 * things that go hand in hand:
 *
 * 1. If any account other than the admin calls the proxy, the call will be forwarded to the implementation, even if
 * that call matches the {ITransparentUpgradeableProxy-upgradeToAndCall} function exposed by the proxy itself.
 * 2. If the admin calls the proxy, it can call the `upgradeToAndCall` function but any other call won't be forwarded to
 * the implementation. If the admin tries to call a function on the implementation it will fail with an error indicating
 * the proxy admin cannot fallback to the target implementation.
 *
 * These properties mean that the admin account can only be used for upgrading the proxy, so it's best if it's a
 * dedicated account that is not used for anything else. This will avoid headaches due to sudden errors when trying to
 * call a function from the proxy implementation. For this reason, the proxy deploys an instance of {ProxyAdmin} and
 * allows upgrades only if they come through it. You should think of the `ProxyAdmin` instance as the administrative
 * interface of the proxy, including the ability to change who can trigger upgrades by transferring ownership.
 *
 * NOTE: The real interface of this proxy is that defined in `ITransparentUpgradeableProxy`. This contract does not
 * inherit from that interface, and instead `upgradeToAndCall` is implicitly implemented using a custom dispatch
 * mechanism in `_fallback`. Consequently, the compiler will not produce an ABI for this contract. This is necessary to
 * fully implement transparency without decoding reverts caused by selector clashes between the proxy and the
 * implementation.
 *
 * NOTE: This proxy does not inherit from {Context} deliberately. The {ProxyAdmin} of this contract won't send a
 * meta-transaction in any way, and any other meta-transaction setup should be made in the implementation contract.
 *
 * IMPORTANT: This contract avoids unnecessary storage reads by setting the admin only during construction as an
 * immutable variable, preventing any changes thereafter. However, the admin slot defined in ERC-1967 can still be
 * overwritten by the implementation logic pointed to by this proxy. In such cases, the contract may end up in an
 * undesirable state where the admin slot is different from the actual admin.
 *
 * WARNING: It is not recommended to extend this contract to add additional external functions. If you do so, the
 * compiler will not check that there are no selector conflicts, due to the note above. A selector clash between any new
 * function and the functions declared in {ITransparentUpgradeableProxy} will be resolved in favor of the new one. This
 * could render the `upgradeToAndCall` function inaccessible, preventing upgradeability and compromising transparency.
 */
contract TransparentUpgradeableProxy is ERC1967Proxy {
    // An immutable address for the admin to avoid unnecessary SLOADs before each call
    // at the expense of removing the ability to change the admin once it's set.
    // This is acceptable if the admin is always a ProxyAdmin instance or similar contract
    // with its own ability to transfer the permissions to another account.
    address private immutable _admin;

    /**
     * @dev The proxy caller is the current admin, and can't fallback to the proxy target.
     */
    error ProxyDeniedAdminAccess();

    /**
     * @dev Initializes an upgradeable proxy managed by an instance of a {ProxyAdmin} with an `initialOwner`,
     * backed by the implementation at `_logic`, and optionally initialized with `_data` as explained in
     * {ERC1967Proxy-constructor}.
     */
    constructor(address _logic, address initialOwner, bytes memory _data) payable ERC1967Proxy(_logic, _data) {
        _admin = address(new ProxyAdmin(initialOwner));
        // Set the storage value and emit an event for ERC-1967 compatibility
        ERC1967Utils.changeAdmin(_proxyAdmin());
    }

    /**
     * @dev Returns the admin of this proxy.
     */
    function _proxyAdmin() internal virtual returns (address) {
        return _admin;
    }

    /**
     * @dev If caller is the admin process the call internally, otherwise transparently fallback to the proxy behavior.
     */
    function _fallback() internal virtual override {
        if (msg.sender == _proxyAdmin()) {
            if (msg.sig != ITransparentUpgradeableProxy.upgradeToAndCall.selector) {
                revert ProxyDeniedAdminAccess();
            } else {
                _dispatchUpgradeToAndCall();
            }
        } else {
            super._fallback();
        }
    }

    /**
     * @dev Upgrade the implementation of the proxy. See {ERC1967Utils-upgradeToAndCall}.
     *
     * Requirements:
     *
     * - If `data` is empty, `msg.value` must be zero.
     */
    function _dispatchUpgradeToAndCall() private {
        (address newImplementation, bytes memory data) = abi.decode(msg.data[4:], (address, bytes));
        ERC1967Utils.upgradeToAndCall(newImplementation, data);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "./IERC20.sol";
import {IERC20Metadata} from "./extensions/IERC20Metadata.sol";
import {Context} from "../../utils/Context.sol";
import {IERC20Errors} from "../../interfaces/draft-IERC6093.sol";

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
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 */
abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
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
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
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
        return _allowances[owner][spender];
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
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
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
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                _totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                _balances[to] += value;
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
     * ```
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
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
// FILE: @openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

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

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
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
// FILE: contracts/bridge/InceptionBridge.sol
// ============================================================

// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.20;
// pragma abicoder v2;

// import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
// import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
// import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

// import "@openzeppelin/contracts/interfaces/IERC20.sol";
// import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
// import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// import "./InceptionBridgeStorage.sol";

// import "../interfaces/IInceptionBridge.sol";
// import "../interfaces/IXERC20Lockbox.sol";

// import "../lib/EthereumVerifier.sol";
// import "../lib/ProofParser.sol";
// import "../lib/Utils.sol";

// /// @author The InceptionLRT team
// /// @title The InceptionBridge contract
// /// @notice Facilitates cross-chain token(asset) transfers using the burn-mint pattern.
// contract InceptionBridge is
//     OwnableUpgradeable,
//     PausableUpgradeable,
//     ReentrancyGuardUpgradeable,
//     InceptionBridgeStorage,
//     IInceptionBridge
// {
//     using SafeERC20 for IERC20;

//     /// @custom:oz-upgrades-unsafe-allow constructor
//     /// @dev payable modifier reduces the deployment cost
//     constructor() payable {
//         _disableInitializers();
//     }

//     function initialize(
//         address initialOwner,
//         address notary
//     ) external initializer {
//         __Ownable_init(initialOwner);
//         __Pausable_init();
//         __ReentrancyGuard_init();

//         __initInceptionBridgeStorage(notary);
//     }

//     /*//////////////////////////////
//     ////// Deposit functions //////
//     ////////////////////////////*/

//     /**
//      * @dev Tokens on source and destination chains are linked with independent supplies.
//      * Burns tokens on source chain (to later mint it on the destination chain).
//      * @param fromToken is one of the many supported tokens on the current chain.
//      * @param destinationChain is the destination chain ID.
//      * @param receiver of `amount` on the destination chain.
//      * @param amount of tokens to be transferred
//      */
//     function deposit(
//         address fromToken,
//         uint256 destinationChain,
//         address receiver,
//         uint256 amount
//     ) external override nonReentrant whenNotPaused {
//         _beforeDeposit();
//         _updateDepositCaps(fromToken, amount);

//         if (getDestination(fromToken, destinationChain) != address(0)) {
//             _deposit(fromToken, destinationChain, receiver, amount);
//         } else revert UnknownDestinationChain();
//     }

//     function _deposit(
//         address fromToken,
//         uint256 destinationChain,
//         address receiver,
//         uint256 amount
//     ) internal {
//         if (_bridgeAddressByChainId[destinationChain] == address(0)) {
//             revert UnknownDestinationChain();
//         }
//         address sender = msg.sender;

//         address lockbox = xerc20TokenRegistry[fromToken];
//         if (lockbox == address(0)) {
//             _safeBurn(fromToken, sender, amount);
//         } else {
//             _depositIntoLockbox(lockbox, fromToken, sender, amount);
//         }

//         Metadata memory metaData = Metadata(
//             Utils.stringToBytes32(IERC20Extra(fromToken).name()),
//             Utils.stringToBytes32(IERC20Extra(fromToken).symbol()),
//             0,
//             address(0)
//         );

//         unchecked {
//             ++_globalNonce;
//         }

//         emit Deposited(
//             destinationChain,
//             _bridgeAddressByChainId[destinationChain],
//             sender,
//             receiver,
//             fromToken,
//             getDestination(fromToken, destinationChain),
//             amount,
//             _globalNonce,
//             metaData
//         );
//     }

//     function _depositIntoLockbox(
//         address lockbox,
//         address fromToken,
//         address sender,
//         uint256 amount
//     ) internal {
//         address xerc20 = address(IXERC20Lockbox(lockbox).XERC20());
//         if (xerc20 == address(0)) revert XERC20ZeroAddress();

//         /// deposit into the lockBox
//         IERC20(fromToken).safeTransferFrom(sender, address(this), amount);
//         IERC20(fromToken).safeApprove(lockbox, amount);
//         IXERC20Lockbox(lockbox).deposit(amount);

//         _safeBurn(xerc20, address(this), amount);
//     }

//     /*/////////////////////////////////
//     ////// Withdrawal functions //////
//     ///////////////////////////////*/

//     /// @dev Serves the authorized (signed) withdrawal request by the bridge committee.
//     /// @dev Mints the corresponding token to the `Deposited.receiver` address.
//     /// `encodedProof` represents the RLP-encoded 'Deposited' receipt.
//     /// @param rawReceipt is the raw deposit transaction receipt.
//     /// @param proofSignature is the signature of keccak256(`encodedProof`) by the operator.
//     function withdraw(
//         /* encodedProof */ bytes calldata,
//         bytes calldata rawReceipt,
//         bytes memory proofSignature
//     ) external override nonReentrant whenNotPaused {
//         uint256 proofOffset;
//         uint256 receiptOffset;
//         assembly {
//             proofOffset := add(0x4, calldataload(4))
//             receiptOffset := add(0x4, calldataload(36))
//         }

//         (
//             EthereumVerifier.State memory state,
//             EthereumVerifier.DepositType depositType
//         ) = EthereumVerifier.parseTransactionReceipt(receiptOffset);

//         if (state.chainId != block.chainid)
//             revert ReceiptWrongChain(block.chainid, state.chainId);

//         ProofParser.Proof memory proof = ProofParser.parseProof(proofOffset);

//         if (state.contractAddress == address(0))
//             revert InvalidContractAddress();

//         if (state.destinationContract != address(this))
//             revert WrongDestinationBridge();

//         if (_bridgeAddressByChainId[proof.chainId] != state.contractAddress)
//             revert UnknownBridge();

//         state.receiptHash = keccak256(rawReceipt);
//         proof.status = 0x01;
//         proof.receiptHash = state.receiptHash;
//         bytes32 proofHash;
//         assembly {
//             proofHash := keccak256(proof, _PROOF_LENGTH)
//         }

//         if (ECDSA.recover(proofHash, proofSignature) != notary)
//             revert WrongSignature();

//         _withdraw(state, depositType, proof, proofHash);
//     }

//     function _withdraw(
//         EthereumVerifier.State memory state,
//         EthereumVerifier.DepositType depositType,
//         ProofParser.Proof memory proof,
//         bytes32 payload
//     ) internal {
//         if (_usedProofs[payload]) {
//             revert WithdrawalProofUsed();
//         }
//         _usedProofs[payload] = true;
//         if (depositType == EthereumVerifier.DepositType.TokenDeposit) {
//             _withdraw(state, proof);
//         } else revert InvalidAssetType();
//     }

//     function _withdraw(
//         EthereumVerifier.State memory state,
//         ProofParser.Proof memory proof
//     ) internal {
//         if (state.fromToken == address(0)) revert InvalidFromTokenAddress();
//         if (getDestination(state.toToken, proof.chainId) != state.fromToken)
//             revert UnknownDestination();

//         _updateWithdrawCaps(state.toToken, state.amount);
//         address lockbox = xerc20TokenRegistry[state.toToken];
//         if (lockbox == address(0)) {
//             _safeMint(state.toToken, state.receiver, state.amount);
//         } else {
//             address xerc20 = address(IXERC20Lockbox(lockbox).XERC20());
//             if (xerc20 == address(0)) revert XERC20ZeroAddress();

//             _safeMint(xerc20, address(this), state.amount);
//             IXERC20Lockbox(lockbox).withdrawTo(state.receiver, state.amount);
//         }

//         emit Withdrawn(
//             state.receiptHash,
//             state.sender,
//             state.receiver,
//             state.fromToken,
//             state.toToken,
//             state.amount
//         );
//     }

//     function getDestination(
//         address fromToken,
//         uint256 destinationChain
//     ) public view returns (address) {
//         return
//             _destinationTokens[
//                 keccak256(
//                     abi.encodePacked(
//                         fromToken,
//                         block.chainid,
//                         _bridgeAddressByChainId[destinationChain],
//                         destinationChain
//                     )
//                 )
//             ];
//     }

//     /*//////////////////////////
//     ////// SET functions //////
//     ////////////////////////*/

//     function setNotary(address notaryAddress) external onlyOwner {
//         _setNotary(notaryAddress);
//     }

//     function setShortCap(
//         address tokenAddress,
//         uint256 amount
//     ) external onlyOwner {
//         _setShortCap(tokenAddress, amount);
//     }

//     function setShortCapDuration(uint256 duration) external onlyOwner {
//         _setShortCapDuration(duration);
//     }

//     function setLongCapDuration(uint256 duration) external onlyOwner {
//         _setLongCapDuration(duration);
//     }

//     function setLongCap(address token, uint256 amount) external onlyOwner {
//         _setLongCap(token, amount);
//     }

//     function addBridge(
//         address bridge,
//         uint256 destinationChain
//     ) external onlyOwner {
//         _addBridge(bridge, destinationChain);
//     }

//     function removeBridge(uint256 destinationChain) external onlyOwner {
//         _removeBridge(destinationChain);
//     }

//     function addDestination(
//         address fromToken,
//         uint256 destinationChain,
//         address toToken
//     ) external onlyOwner {
//         _addDestination(fromToken, destinationChain, toToken);
//     }

//     function removeDestination(
//         address fromToken,
//         uint256 destinationChain,
//         address toToken
//     ) external onlyOwner {
//         _removeDestination(fromToken, destinationChain, toToken);
//     }

//     function setXERC20Lockbox(
//         address token,
//         address xerc20Lockbox
//     ) external onlyOwner {
//         _setXERC20Lockbox(token, xerc20Lockbox);
//     }

//     /*///////////////////////////////
//     ////// Pausable functions //////
//     /////////////////////////////*/

//     function pause() external onlyOwner {
//         _pause();
//     }

//     function unpause() external onlyOwner {
//         _unpause();
//     }

//     /*///////////////////////////////
//     //////// Safe functions ////////
//     /////////////////////////////*/

//     function _safeBurn(
//         address token,
//         address account,
//         uint256 amount
//     ) internal {
//         uint256 balanceBefore = IERC20(token).balanceOf(account);
//         IERC20Mintable(token).burn(account, amount);
//         uint256 balanceAfter = IERC20(token).balanceOf(account);
//         if (balanceAfter + amount != balanceBefore) {
//             revert BurnFailed();
//         }
//     }

//     function _safeMint(
//         address token,
//         address account,
//         uint256 amount
//     ) internal {
//         uint256 balanceBefore = IERC20(token).balanceOf(account);
//         IERC20Mintable(token).mint(account, amount);
//         uint256 balanceAfter = IERC20(token).balanceOf(account);
//         if (balanceBefore + amount != balanceAfter) {
//             revert MintFailed();
//         }
//     }
// }

// ============================================================
// FILE: contracts/bridge/InceptionBridgeStorage.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
pragma abicoder v2;

import "../interfaces/IInceptionBridge.sol";
import "../interfaces/IInceptionBridgeErrors.sol";

/// @author The InceptionLRT team
/// @title The InceptionBridgeStorage contract
/// @notice Stores variables for the InceptionBridge contract and facilitates their updates.
abstract contract InceptionBridgeStorage is
    IInceptionBridgeStorage,
    IInceptionBridgeErrors
{
    uint256 internal constant _PROOF_LENGTH = 0x100;

    uint256 internal _globalNonce;
    address public notary;

    mapping(bytes32 => bool) internal _usedProofs;
    mapping(uint256 => address) internal _bridgeAddressByChainId;

    /// @dev keccak256(fromToken,fromChain,_bridgeAddressByChainId(destinationChain), destinationChain) => destinationToken
    mapping(bytes32 => address) internal _destinationTokens;

    uint256 public shortCapDuration;
    /// @dev token => Cap per 'shortCapTime'
    mapping(address => uint256) public shortCaps;

    /// @dev token => (epochTime/shortCapDuration) => Current Deposits
    mapping(address => mapping(uint256 => uint256)) public shortCapsDeposit;
    /// @dev token => (epochTime/shortCapDuration) => Current Withdraws
    mapping(address => mapping(uint256 => uint256)) public shortCapsWithdraw;

    uint256 public longCapDuration;
    /// @dev token => cap per 'longCapTime'
    mapping(address => uint256) public longCaps;
    /// @dev token => (epochTime/longCapDuration) => Current Deposits
    mapping(address => mapping(uint256 => uint256)) public longCapsDeposit;
    /// @dev token => (epochTime/longCapDuration) => Current Withdraws
    mapping(address => mapping(uint256 => uint256)) public longCapsWithdraw;

    address internal _previousSender;
    uint256 internal _previousDepositBlockNum;

    /// token -> lockbox
    mapping(address => address) public xerc20TokenRegistry;

    /// @notice WARNING: Keep it up-to-date
    uint256[50 - 16] private __gap;

    function __initInceptionBridgeStorage(address notaryAddress) internal {
        _setNotary(notaryAddress);
        _setDefaultCrosschainThreshold();
    }

    function _beforeDeposit() internal {
        if (_previousSender != address(0) && _previousDepositBlockNum != 0) {
            if (
                _previousSender == tx.origin &&
                _previousDepositBlockNum == block.number
            ) {
                revert MultipleDeposits();
            }
        }
        _previousSender = tx.origin;
        _previousDepositBlockNum = block.number;
    }

    function _updateDepositCaps(address fromToken, uint256 amount) internal {
        /// Short(default: per hour)
        if (
            shortCapsDeposit[fromToken][getCurrentStamp(shortCapDuration)] +
                amount >
            shortCaps[fromToken]
        ) {
            revert ShortCapExceeded(
                shortCaps[fromToken],
                shortCapsDeposit[fromToken][getCurrentStamp(shortCapDuration)] +
                    amount
            );
        }
        shortCapsDeposit[fromToken][
            getCurrentStamp(shortCapDuration)
        ] += amount;
        /// Long(default: per day)
        if (
            longCapsDeposit[fromToken][getCurrentStamp(longCapDuration)] +
                amount >
            longCaps[fromToken]
        ) {
            revert LongCapExceeded(
                longCaps[fromToken],
                longCapsDeposit[fromToken][getCurrentStamp(longCapDuration)] +
                    amount
            );
        }
        longCapsDeposit[fromToken][getCurrentStamp(longCapDuration)] += amount;
    }

    function _updateWithdrawCaps(address token, uint256 amount) internal {
        /// Short(default: per hour)
        if (
            shortCapsWithdraw[token][getCurrentStamp(shortCapDuration)] +
                amount >
            shortCaps[token]
        ) {
            revert ShortCapExceeded(
                shortCaps[token],
                shortCapsWithdraw[token][getCurrentStamp(shortCapDuration)] +
                    amount
            );
        }
        shortCapsWithdraw[token][getCurrentStamp(shortCapDuration)] += amount;

        /// Long(default: per day)
        if (
            longCapsWithdraw[token][getCurrentStamp(longCapDuration)] + amount >
            longCaps[token]
        ) {
            revert LongCapExceeded(
                longCaps[token],
                longCapsWithdraw[token][getCurrentStamp(longCapDuration)] +
                    amount
            );
        }
        longCapsWithdraw[token][getCurrentStamp(longCapDuration)] += amount;
    }

    function _setNotary(address notaryAddress) internal {
        if (notaryAddress == address(0x0)) revert NullAddress();

        emit NotaryChanged(notary, notaryAddress);
        notary = notaryAddress;
    }

    /*//////////////////////////
    ////// SET functions //////
    ////////////////////////*/

    function _setShortCap(address token, uint256 newValue) internal {
        if (token == address(0x0)) revert NullAddress();

        uint256 prevValue = shortCaps[token];
        emit ShortCapChanged(token, prevValue, newValue);
        shortCaps[token] = newValue;
    }

    function _setShortCapDuration(uint256 newValue) internal {
        emit ShortCapDurationChanged(shortCapDuration, newValue);
        shortCapDuration = newValue;
    }

    function _setLongCapDuration(uint256 newValue) internal {
        emit LongCapDurationChanged(longCapDuration, newValue);
        longCapDuration = newValue;
    }

    function _setLongCap(address token, uint256 newValue) internal {
        if (token == address(0x0)) {
            revert NullAddress();
        }
        emit LongCapChanged(token, longCaps[token], newValue);
        longCaps[token] = newValue;
    }

    function _setDefaultCrosschainThreshold() internal {
        shortCapDuration = 1 hours;
        longCapDuration = 1 days;
    }

    function _addBridge(address bridge, uint256 destinationChain) internal {
        if (bridge == address(0x0)) {
            revert NullAddress();
        }
        if (destinationChain == 0) {
            revert InvalidChain();
        }
        if (_bridgeAddressByChainId[destinationChain] != address(0x00)) {
            revert BridgeAlreadyAdded();
        }

        _bridgeAddressByChainId[destinationChain] = bridge;

        emit BridgeAdded(bridge, destinationChain);
    }

    function _removeBridge(uint256 destinationChain) internal {
        if (_bridgeAddressByChainId[destinationChain] == address(0x00)) {
            revert BridgeNotExist();
        }
        address bridge = _bridgeAddressByChainId[destinationChain];
        delete _bridgeAddressByChainId[destinationChain];

        emit BridgeRemoved(bridge, destinationChain);
    }

    function _addDestination(
        address fromToken,
        uint256 destinationChain,
        address toToken
    ) internal {
        if (_bridgeAddressByChainId[destinationChain] == address(0))
            revert UnknownDestinationChain();

        if (fromToken == address(0) || toToken == address(0))
            revert NullAddress();

        bytes32 direction = keccak256(
            abi.encodePacked(
                fromToken,
                block.chainid,
                _bridgeAddressByChainId[destinationChain],
                destinationChain
            )
        );

        if (_destinationTokens[direction] != address(0))
            revert DestinationAlreadyExists();

        _destinationTokens[direction] = toToken;

        emit DestinationAdded(fromToken, toToken, destinationChain);
    }

    function _removeDestination(
        address fromToken,
        uint256 destinationChain,
        address toToken
    ) internal {
        if (_bridgeAddressByChainId[destinationChain] == address(0))
            revert UnknownDestinationChain();

        bytes32 direction = keccak256(
            abi.encodePacked(
                fromToken,
                block.chainid,
                _bridgeAddressByChainId[destinationChain],
                destinationChain
            )
        );

        if (_destinationTokens[direction] != toToken)
            revert UnknownDestination();

        delete _destinationTokens[direction];

        emit DestinationRemoved(fromToken, toToken, destinationChain);
    }

    function _setXERC20Lockbox(address token, address lockbox) internal {
        if (address(token) == address(0) || address(lockbox) == address(0))
            revert NullAddress();

        if (xerc20TokenRegistry[token] != address(0))
            revert XERC20LockboxAlreadyAdded();

        emit XERC20LockboxAdded(token, lockbox);
        xerc20TokenRegistry[token] = lockbox;
    }

    function getCurrentStamp(uint256 duration) public view returns (uint256) {
        return (block.timestamp / duration) * duration;
    }
}

// ============================================================
// FILE: contracts/factory/BridgeFactory.sol
// ============================================================

// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.20;

// import "solmate/src/utils/CREATE3.sol";
// import "../XERC20/XERC20.sol";
// import "../XERC20/XERC20Lockbox.sol";
// import "../interfaces/IFactory.sol";

// /// @author The InceptionLRT team
// /// @title The BridgeFactory Contract
// /// @notice Facilitates the deployment of contracts via CREATE2 and CREATE3
// contract BridgeFactory is IFactory {
//     /**
//      *****************************************************************************
//      ****************************** CREATE2 FACTORY ******************************
//      *****************************************************************************
//      */

//     bytes32 public bridgeSalt = "InceptionLRT Factory";

//     function deployCreate2(
//         bytes calldata creationCode
//     ) external returns (address) {
//         return _deployCreate2(creationCode, msg.sender);
//     }

//     function _deployCreate2(
//         bytes memory bytecode,
//         address _sender
//     ) internal returns (address) {
//         address addr = _create2(bytecode, _sender);

//         emit ContractCreated(addr);
//         return addr;
//     }

//     function _create2(
//         bytes memory bytecode,
//         address _sender
//     ) internal returns (address) {
//         address payable addr;
//         bytes32 salt = _getSalt(_sender);

//         assembly {
//             addr := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
//             if iszero(extcodesize(addr)) {
//                 revert(0, 0)
//             }
//         }

//         return addr;
//     }

//     function getDeploymentCreate2Address(
//         bytes memory bytecode,
//         address _sender
//     ) external view returns (address) {
//         bytes32 salt = _getSalt(_sender);
//         bytes32 rawAddress = keccak256(
//             abi.encodePacked(
//                 bytes1(0xff),
//                 address(this),
//                 salt,
//                 keccak256(bytecode)
//             )
//         );

//         return address(bytes20(rawAddress << 96));
//     }

//     function _getSalt(address _sender) internal view returns (bytes32) {
//         return keccak256(abi.encodePacked(bridgeSalt, _sender));
//     }

//     /**
//      ****************************************************************************
//      ****************************** XERC20 FACTORY ******************************
//      ****************************************************************************
//      */

//     /**
//      * @notice Deploys an XERC20 contract using CREATE3
//      * @dev _limits and _minters must be the same length
//      * @param _name The name of the token
//      * @param _symbol The symbol of the token
//      * @return _xerc20 The address of the xerc20
//      */
//     function deployXERC20(
//         string memory _name,
//         string memory _symbol
//     ) external returns (address _xerc20) {
//         _xerc20 = _deployXERC20(_name, _symbol);

//         emit XERC20Deployed(_xerc20);
//     }

//     /**
//      * @notice Deploys an XERC20Lockbox contract using CREATE3
//      *
//      * @dev When deploying a lockbox for the gas token of the chain, then, the base token needs to be address(0)
//      * @param _xerc20 The address of the xerc20 that you want to deploy a lockbox for
//      * @param _baseToken The address of the base token that you want to lock
//      * @param _isNative Whether or not the base token is the native (gas) token of the chain. Eg: MATIC for polygon chain
//      * @return _lockbox The address of the lockbox
//      */
//     function deployLockbox(
//         address _xerc20,
//         address _baseToken,
//         bool _isNative
//     ) external returns (address _lockbox) {
//         if (
//             (_baseToken == address(0) && !_isNative) ||
//             (_isNative && _baseToken != address(0))
//         ) revert IXERC20Factory_BadTokenAddress();

//         if (XERC20(_xerc20).owner() != msg.sender)
//             revert IXERC20Factory_NotOwner();

//         _lockbox = _deployLockbox(_xerc20, _baseToken, _isNative);

//         emit LockboxDeployed(_lockbox);
//     }

//     /**
//      * @notice Deploys an XERC20 contract using CREATE3
//      * @dev _limits and _minters must be the same length
//      * @param _name The name of the token
//      * @param _symbol The symbol of the token
//      * @return _xerc20 The address of the xerc20
//      */
//     function _deployXERC20(
//         string memory _name,
//         string memory _symbol
//     ) internal returns (address _xerc20) {
//         address deployer = msg.sender;
//         bytes32 _salt = keccak256(abi.encodePacked(_name, _symbol, deployer));
//         bytes memory _creation = type(XERC20).creationCode;
//         bytes memory _bytecode = abi.encodePacked(
//             _creation,
//             abi.encode(_name, _symbol, address(this))
//         );

//         _xerc20 = CREATE3.deploy(_salt, _bytecode, 0);

//         XERC20(_xerc20).transferOwnership(deployer);
//     }

//     /**
//      * @notice Deploys an XERC20Lockbox contract using CREATE3
//      *
//      * @dev When deploying a lockbox for the gas token of the chain, then, the base token needs to be address(0)
//      * @param _xerc20 The address of the xerc20 that you want to deploy a lockbox for
//      * @param _baseToken The address of the base token that you want to lock
//      * @param _isNative Whether or not the base token is the native (gas) token of the chain. Eg: MATIC for polygon chain
//      * @return _lockbox The address of the lockbox
//      */
//     function _deployLockbox(
//         address _xerc20,
//         address _baseToken,
//         bool _isNative
//     ) internal returns (address _lockbox) {
//         address deployer = msg.sender;
//         bytes32 _salt = keccak256(
//             abi.encodePacked(_xerc20, _baseToken, deployer)
//         );
//         bytes memory _bytecode = abi.encodePacked(
//             type(XERC20Lockbox).creationCode,
//             abi.encode(_xerc20, _baseToken, _isNative)
//         );

//         _lockbox = CREATE3.deploy(_salt, _bytecode, 0);

//         XERC20(_xerc20).setLockbox(_lockbox);
//     }

//     function deployCreate3(
//         bytes calldata creationCode,
//         bytes32 _salt
//     ) external returns (address) {
//         return _deployCreate3(creationCode, _salt);
//     }

//     function _deployCreate3(
//         bytes memory bytecode,
//         bytes32 _salt
//     ) internal returns (address) {
//         address addr = CREATE3.deploy(_salt, bytecode, 0);

//         emit ContractCreated(addr);
//         return addr;
//     }
// }

// ============================================================
// FILE: contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20Mintable {
    function mint(address account, uint256 amount) external;

    function burn(address account, uint256 amount) external;

    function chargeFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);
}

interface IERC20Pegged {
    function getOrigin() external view returns (uint256, address);
}

interface IERC20Extra {
    function name() external returns (string memory);

    function decimals() external returns (uint8);

    function symbol() external returns (string memory);
}

interface IERC20MetadataChangeable {
    event NameChanged(string prevValue, string newValue);

    event SymbolChanged(string prevValue, string newValue);

    function changeName(bytes32) external;

    function changeSymbol(bytes32) external;
}

// ============================================================
// FILE: contracts/interfaces/IFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ICREATE2Factory {
    event ContractCreated(address indexed addr);

    function deployCreate2(
        bytes calldata creationCode
    ) external returns (address);
}

interface ICREATE3Factory {
    /**
     * @notice Emitted when a new XERC20 is deployed
     * @param _xerc20 The address of the xerc20
     */
    event XERC20Deployed(address _xerc20);

    /**
     * @notice Emitted when a new XERC20Lockbox is deployed
     * @param _lockbox The address of the lockbox
     */
    event LockboxDeployed(address _lockbox);

    /**
     * @notice Reverts when a non-owner attempts to call
     */
    error IXERC20Factory_NotOwner();

    /**
     * @notice Reverts when a lockbox is trying to be deployed from a malicious address
     */
    error IXERC20Factory_BadTokenAddress();

    /**
     * @notice Reverts when a lockbox is already deployed
     */
    error IXERC20Factory_LockboxAlreadyDeployed();

    /**
     * @notice Reverts when a the length of arrays sent is incorrect
     */
    error IXERC20Factory_InvalidLength();

    function deployXERC20(
        string memory _name,
        string memory _symbol
    ) external returns (address _xerc20);

    function deployLockbox(
        address _xerc20,
        address _baseToken,
        bool _isNative
    ) external returns (address _lockbox);
}

interface IFactory is ICREATE2Factory, ICREATE3Factory {}

// ============================================================
// FILE: contracts/interfaces/IInceptionBridge.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IERC20.sol";

interface IInceptionBridgeStorage {
    struct Metadata {
        bytes32 name;
        bytes32 symbol;
        uint256 originChain;
        address originAddress;
    }

    event ShortCapChanged(
        address indexed token,
        uint256 prevValue,
        uint256 newValue
    );
    event LongCapChanged(
        address indexed token,
        uint256 prevValue,
        uint256 newValue
    );

    event ShortCapDurationChanged(uint256 prevValue, uint256 newValue);
    event LongCapDurationChanged(uint256 prevValue, uint256 newValue);

    event BridgeAdded(address indexed bridge, uint256 destinationChain);
    event BridgeRemoved(address indexed bridge, uint256 destinationChain);

    event DestinationAdded(
        address indexed fromToken,
        address indexed toToken,
        uint256 toChain
    );
    event DestinationRemoved(
        address indexed fromToken,
        address indexed toToken,
        uint256 toChain
    );

    event NotaryChanged(address indexed prevValue, address indexed newValue);

    event XERC20LockboxAdded(address indexed token, address indexed lockbox);
}

interface IInceptionBridge {
    event Deposited(
        uint256 destinationChain,
        address indexed destinationBridge,
        address indexed sender,
        address indexed receiver,
        address fromToken,
        address toToken,
        uint256 amount,
        uint256 nonce,
        IInceptionBridgeStorage.Metadata metadata
    );

    event Withdrawn(
        bytes32 receiptHash,
        address indexed sender,
        address indexed receiver,
        address fromToken,
        address toToken,
        uint256 amount
    );

    function deposit(
        address fromToken,
        uint256 destinationChain,
        address receiver,
        uint256 amount
    ) external;

    function withdraw(
        bytes calldata encodedProof,
        bytes calldata rawReceipt,
        bytes memory receiptRootSignature
    ) external;
}

// ============================================================
// FILE: contracts/interfaces/IInceptionBridgeErrors.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IInceptionBridgeErrors {
    /// @dev
    error ShortCapExceeded(uint256 limit, uint256 current);
    /// @dev
    error LongCapExceeded(uint256 limit, uint256 current);

    /// @dev
    error BridgeAlreadyAdded();
    error BridgeNotExist();

    error InvalidChain();

    error MultipleDeposits();

    /// @dev
    error ReceiptWrongChain(uint256 required, uint256 provided);

    /// @dev
    error InvalidContractAddress();

    error NullAddress();

    /// @dev
    error UnknownBridge();

    /// @dev
    error WrongSignature();

    error WithdrawalProofUsed();

    error InvalidAssetType();

    error InvalidFromTokenAddress();

    error UnknownDestination();

    error WrongDestinationBridge();

    error XERC20LockboxAlreadyAdded();

    error XERC20ZeroAddress();

    /// @notice non-existing-bridge
    error UnknownDestinationChain();

    error DestinationAlreadyExists();

    error BurnFailed();

    error MintFailed();
}

// ============================================================
// FILE: contracts/interfaces/IInceptionRatioFeed.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IInceptionRatioFeedErrors {
    error OperatorUnauthorizedAccount(address account);

    error InconsistentInputData();

    error NullParams();

    error RatioThresholdNotSet();

    error NewRatioThresholdInvalid();

    error IncorrectDay(uint256 day);

    error IncorrectToken(address token);
}

interface IInceptionRatioFeed {
    event OperatorUpdated(address prevValue, address newValue);

    event RatioUpdated(
        address indexed tokenAddress,
        uint256 prevValue,
        uint256 newValue
    );

    event RatioNotUpdated(
        address indexed tokenAddress,
        uint256 failedRatio,
        string reason
    );

    event RatioThresholdChanged(uint256 prevValue, uint256 newValue);

    function updateRatioBatch(
        address[] calldata addresses,
        uint256[] calldata ratios
    ) external;

    function getRatioFor(address) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IRateProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @notice Rate Provider interface
interface IRateProvider {
    function getRate() external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IXERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20Errors {
    /**
     * @notice Reverts when a user with too low of a limit tries to call mint/burn
     */
    error IXERC20_NotHighEnoughLimits();

    /**
     * @notice Reverts when caller is not the factory
     */
    error IXERC20_NotFactory();

    /**
     * @notice Reverts when caller sets too small _limit
     */
    error IXERC20_WrongBridgeLimit();
}

interface IXERC20 is IERC20Errors {
    /**
     * @notice Contains the full minting and burning data for a particular bridge
     *
     * @param minterParams The minting parameters for the bridge
     * @param burnerParams The burning parameters for the bridge
     */
    struct Bridge {
        BridgeParameters minterParams;
        BridgeParameters burnerParams;
    }

    /**
     * @notice Emits when a lockbox is set
     *
     * @param _lockbox The address of the lockbox
     */
    event LockboxSet(address _lockbox);

    /**
     * @notice Emits when a limit is set
     *
     * @param _mintingLimit The updated minting limit we are setting to the bridge
     * @param _burningLimit The updated burning limit we are setting to the bridge
     * @param _bridge The address of the bridge we are setting the limit too
     */
    event BridgeLimitsSet(
        uint256 _mintingLimit,
        uint256 _burningLimit,
        address indexed _bridge
    );

    /**
     * @notice Contains the mint or burn parameters for a bridge
     *
     * @param timestamp The timestamp of the last mint/burn
     * @param ratePerSecond The rate per second of the bridge
     * @param maxLimit The max limit of the bridge
     * @param currentLimit The current limit of the bridge
     */
    struct BridgeParameters {
        uint256 timestamp;
        uint256 ratePerSecond;
        uint256 maxLimit;
        uint256 currentLimit;
    }

    /**
     * @notice Sets the lockbox address
     *
     * @param _lockbox The address of the lockbox
     */
    function setLockbox(address _lockbox) external;

    /**
     * @notice Updates the limits of any bridge
     * @dev Can only be called by the owner
     * @param _mintingLimit The updated minting limit we are setting to the bridge
     * @param _burningLimit The updated burning limit we are setting to the bridge
     * @param _bridge The address of the bridge we are setting the limits too
     */
    function setBridgeLimits(
        address _bridge,
        uint256 _mintingLimit,
        uint256 _burningLimit
    ) external;

    /**
     * @notice Returns the max limit of a minter
     *
     * @param _minter The minter we are viewing the limits of
     *  @return _limit The limit the minter has
     */
    function mintingMaxLimitOf(
        address _minter
    ) external view returns (uint256 _limit);

    /**
     * @notice Returns the max limit of a bridge
     *
     * @param _bridge the bridge we are viewing the limits of
     * @return _limit The limit the bridge has
     */
    function burningMaxLimitOf(
        address _bridge
    ) external view returns (uint256 _limit);

    /**
     * @notice Returns the current limit of a minter
     *
     * @param _minter The minter we are viewing the limits of
     * @return _limit The limit the minter has
     */
    function mintingCurrentLimitOf(
        address _minter
    ) external view returns (uint256 _limit);

    /**
     * @notice Returns the current limit of a bridge
     *
     * @param _bridge the bridge we are viewing the limits of
     * @return _limit The limit the bridge has
     */
    function burningCurrentLimitOf(
        address _bridge
    ) external view returns (uint256 _limit);

    /**
     * @notice Mints tokens for a user
     * @dev Can only be called by a minter
     * @param _user The address of the user who needs tokens minted
     * @param _amount The amount of tokens being minted
     */
    function mint(address _user, uint256 _amount) external;

    /**
     * @notice Burns tokens for a user
     * @dev Can only be called by a minter
     * @param _user The address of the user who needs tokens burned
     * @param _amount The amount of tokens being burned
     */
    function burn(address _user, uint256 _amount) external;
}

// ============================================================
// FILE: contracts/interfaces/IXERC20Lockbox.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "./IXERC20.sol";

interface IXERC20LockboxErrors {
    /// @notice Reverts when a user tries to deposit native tokens on a non-native lockbox
    error IXERC20Lockbox_NotNative();

    /// @notice Reverts when a user tries to deposit non-native tokens on a native lockbox
    error IXERC20Lockbox_Native();

    /// @notice Reverts when a user tries to withdraw and the call fails
    error IXERC20Lockbox_WithdrawFailed();

    /// @notice Reverts when a user tries to withdraw to the XERC20Lockbox itself
    error IXERC20Lockbox_WrongReceiver();
}

interface IXERC20Lockbox is IXERC20LockboxErrors {
    /**
     * @notice Emitted when tokens are deposited into the lockbox
     *
     * @param _sender The address of the user who deposited
     * @param _amount The amount of tokens deposited
     */
    event Deposit(address _sender, uint256 _amount);

    /**
     * @notice Emitted when tokens are withdrawn from the lockbox
     *
     * @param _sender The address of the user who withdrew
     * @param _amount The amount of tokens withdrawn
     */
    event Withdraw(address _sender, uint256 _amount);

    function XERC20() external view returns (IXERC20 xerc20);

    function ERC20() external view returns (IERC20 erc20);

    /**
     * @notice Deposit ERC20 tokens into the lockbox
     *
     * @param _amount The amount of tokens to deposit
     */
    function deposit(uint256 _amount) external;

    /**
     * @notice Deposit ERC20 tokens into the lockbox, and send the XERC20 to a user
     *
     * @param _user The user to send the XERC20 to
     * @param _amount The amount of tokens to deposit
     */
    function depositTo(address _user, uint256 _amount) external;

    /**
     * @notice Deposit the native asset into the lockbox, and send the XERC20 to a user
     *
     * @param _user The user to send the XERC20 to
     */
    function depositNativeTo(address _user) external payable;

    /**
     * @notice Withdraw ERC20 tokens from the lockbox
     *
     * @param _amount The amount of tokens to withdraw
     */
    function withdraw(uint256 _amount) external;

    /**
     * @notice Withdraw ERC20 tokens from the lockbox
     *
     * @param _user The user to withdraw to
     * @param _amount The amount of tokens to withdraw
     */
    function withdrawTo(address _user, uint256 _amount) external;
}

// ============================================================
// FILE: contracts/lib/CallDataRLPReader.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library CallDataRLPReader {
    uint8 constant STRING_SHORT_START = 0x80;
    uint8 constant STRING_LONG_START = 0xb8;
    uint8 constant LIST_SHORT_START = 0xc0;
    uint8 constant LIST_LONG_START = 0xf8;
    uint8 constant WORD_SIZE = 32;

    function beginIteration(
        uint256 listOffset
    ) internal pure returns (uint256 iter) {
        return listOffset + _payloadOffset(listOffset);
    }

    function next(uint256 iter) internal pure returns (uint256 nextIter) {
        return iter + itemLength(iter);
    }

    function payloadLen(
        uint256 ptr,
        uint256 len
    ) internal pure returns (uint256) {
        return len - _payloadOffset(ptr);
    }

    function receiver(uint256 ptr) internal pure returns (address) {
        return address(uint160(toUint(ptr, 21)));
    }

    function toUint(uint256 ptr, uint256 len) internal pure returns (uint256) {
        require(len > 0 && len <= 33);
        uint256 offset = _payloadOffset(ptr);
        uint256 numLen = len - offset;

        uint256 result;
        assembly {
            result := calldataload(add(ptr, offset))
            // cut off redundant bytes
            result := shr(mul(8, sub(32, numLen)), result)
        }
        return result;
    }

    function toUintStrict(uint256 ptr) internal pure returns (uint256) {
        // one byte prefix
        uint256 result;
        assembly {
            result := calldataload(add(ptr, 1))
        }
        return result;
    }

    function rawDataPtr(uint256 ptr) internal pure returns (uint256) {
        return ptr + _payloadOffset(ptr);
    }

    /// @return entire rlp item byte length
    function itemLength(uint256 callDataPtr) internal pure returns (uint256) {
        uint256 itemLen;
        uint256 byte0;
        assembly {
            byte0 := byte(0, calldataload(callDataPtr))
        }

        if (byte0 < STRING_SHORT_START) itemLen = 1;
        else if (byte0 < STRING_LONG_START)
            itemLen = byte0 - STRING_SHORT_START + 1;
        else if (byte0 < LIST_SHORT_START) {
            assembly {
                let byteLen := sub(byte0, 0xb7) // # of bytes the actual length is
                callDataPtr := add(callDataPtr, 1) // skip over the first byte

                /* 32 byte word size */
                let dataLen := shr(
                    mul(8, sub(32, byteLen)),
                    calldataload(callDataPtr)
                )
                itemLen := add(dataLen, add(byteLen, 1))
            }
        } else if (byte0 < LIST_LONG_START) {
            itemLen = byte0 - LIST_SHORT_START + 1;
        } else {
            assembly {
                let byteLen := sub(byte0, 0xf7)
                callDataPtr := add(callDataPtr, 1)

                let dataLen := shr(
                    mul(8, sub(32, byteLen)),
                    calldataload(callDataPtr)
                )
                itemLen := add(dataLen, add(byteLen, 1))
            }
        }

        return itemLen;
    }

    /// @return number of bytes until the data
    function _payloadOffset(
        uint256 callDataPtr
    ) private pure returns (uint256) {
        uint256 byte0;
        assembly {
            byte0 := byte(0, calldataload(callDataPtr))
        }

        if (byte0 < STRING_SHORT_START) return 0;
        else if (
            byte0 < STRING_LONG_START ||
            (byte0 >= LIST_SHORT_START && byte0 < LIST_LONG_START)
        ) return 1;
        else if (byte0 < LIST_SHORT_START)
            return byte0 - (STRING_LONG_START - 1) + 1;
        else return byte0 - (LIST_LONG_START - 1) + 1;
    }
}

// ============================================================
// FILE: contracts/lib/EthereumVerifier.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./CallDataRLPReader.sol";
import "./Utils.sol";
import "../interfaces/IInceptionBridge.sol";

library EthereumVerifier {
    bytes32 constant TOPIC_DEPOSITED =
        keccak256(
            "Deposited(uint256,address,address,address,address,address,uint256,uint256,(bytes32,bytes32,uint256,address))"
        );

    enum DepositType {
        None,
        TokenDeposit
    }

    struct State {
        bytes32 receiptHash;
        address contractAddress;
        address destinationContract;
        uint256 chainId;
        address sender;
        address receiver;
        address fromToken;
        address toToken;
        uint256 amount;
        uint256 nonce;
        // metadata fields (we can't use Metadata struct here because of Solidity struct memory layout)
        bytes32 symbol;
        bytes32 name;
        uint256 originChain;
        address originToken;
    }

    function getMetadata(
        State memory state
    ) internal pure returns (IInceptionBridgeStorage.Metadata memory) {
        IInceptionBridgeStorage.Metadata memory metadata;
        assembly {
            metadata := add(state, 0x120)
        }
        return metadata;
    }

    function parseTransactionReceipt(
        uint256 receiptOffset
    ) internal pure returns (State memory state, DepositType depositType) {
        uint256 iter = CallDataRLPReader.beginIteration(receiptOffset + 0x20);
        {
            /* postStateOrStatus - we must ensure that tx is not reverted */
            uint256 statusOffset = iter;
            iter = CallDataRLPReader.next(iter);
            require(
                CallDataRLPReader.payloadLen(
                    statusOffset,
                    iter - statusOffset
                ) == 1,
                "EthereumVerifier: tx is reverted"
            );
        }
        /* skip cumulativeGasUsed */
        iter = CallDataRLPReader.next(iter);
        /* logs - we need to find our logs */
        uint256 logs = iter;
        iter = CallDataRLPReader.next(iter);
        uint256 logsIter = CallDataRLPReader.beginIteration(logs);
        for (; logsIter < iter; ) {
            uint256 log = logsIter;
            logsIter = CallDataRLPReader.next(logsIter);
            /* make sure there is only one peg-in event in logs */
            DepositType logType = _decodeReceiptLogs(state, log);
            if (logType != DepositType.None) {
                require(
                    depositType == DepositType.None,
                    "EthereumVerifier: multiple logs"
                );
                depositType = logType;
            }
        }
        /* don't allow to process if peg-in type is unknown */
        require(
            depositType != DepositType.None,
            "EthereumVerifier: missing logs"
        );
        return (state, depositType);
    }

    function _decodeReceiptLogs(
        State memory state,
        uint256 log
    ) internal pure returns (DepositType depositType) {
        uint256 logIter = CallDataRLPReader.beginIteration(log);
        address contractAddress;
        {
            /* parse smart contract address */
            uint256 addressOffset = logIter;
            logIter = CallDataRLPReader.next(logIter);
            contractAddress = CallDataRLPReader.receiver(addressOffset);
        }
        /* topics */
        bytes32 mainTopic;
        address destinationContract;
        address sender;
        address receiver;
        {
            uint256 topicsIter = logIter;
            logIter = CallDataRLPReader.next(logIter);
            // Must be 4 topics RLP encoded: event signature, destinationContract, sender, receiver
            // Each topic RLP encoded is 33 bytes (0xa0[32 bytes data])
            // Total payload: 132 bytes. Since it's list with total size bigger than 55 bytes we need 2 bytes prefix (0xf863)
            // So total size of RLP encoded topics array must be 134
            if (CallDataRLPReader.itemLength(topicsIter) != 134) {
                return DepositType.None;
            }
            topicsIter = CallDataRLPReader.beginIteration(topicsIter);
            mainTopic = bytes32(CallDataRLPReader.toUintStrict(topicsIter));
            topicsIter = CallDataRLPReader.next(topicsIter);
            destinationContract = address(
                bytes20(uint160(CallDataRLPReader.toUintStrict(topicsIter)))
            );
            topicsIter = CallDataRLPReader.next(topicsIter);
            sender = address(
                bytes20(uint160(CallDataRLPReader.toUintStrict(topicsIter)))
            );
            topicsIter = CallDataRLPReader.next(topicsIter);
            receiver = address(
                bytes20(uint160(CallDataRLPReader.toUintStrict(topicsIter)))
            );
            topicsIter = CallDataRLPReader.next(topicsIter);
            require(topicsIter == logIter); // safety check that iteration is finished
        }

        uint256 ptr = CallDataRLPReader.rawDataPtr(logIter);
        logIter = CallDataRLPReader.next(logIter);
        uint256 len = logIter - ptr;
        {
            // parse logs based on topic type and check that event data has correct length
            uint256 expectedLen;
            if (mainTopic == TOPIC_DEPOSITED) {
                expectedLen = 0x120;
                depositType = DepositType.TokenDeposit;
            } else {
                return DepositType.None;
            }
            if (len != expectedLen) {
                return DepositType.None;
            }
        }
        {
            // read chain id separately and verify that contract that emitted event is relevant
            uint256 chainId;
            assembly {
                chainId := calldataload(ptr)
            }
            //  if (chainId != Utils.currentChain()) return DepositType.None;
            // All checks are passed after this point, no errors allowed and we can modify state
            state.chainId = chainId;
            ptr += 0x20;
            len -= 0x20;
        }

        {
            uint256 structOffset;
            assembly {
                // skip 6 fields: receiptHash, destinationContract, contractAddress, chainId, sender, receiver
                structOffset := add(state, 0xc0)
                calldatacopy(structOffset, ptr, len)
            }
        }
        state.destinationContract = destinationContract;
        state.contractAddress = contractAddress;
        state.sender = sender;
        state.receiver = receiver;
        return depositType;
    }
}

// ============================================================
// FILE: contracts/lib/ProofParser.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./CallDataRLPReader.sol";
import "./Utils.sol";

library ProofParser {
    // Proof is message format signed by the protocol. It contains somewhat redundant information, so only part
    // of the proof could be passed into the contract and other part can be inferred from transaction receipt
    struct Proof {
        uint256 chainId;
        uint256 status;
        bytes32 transactionHash;
        uint256 blockNumber;
        bytes32 blockHash;
        uint256 transactionIndex;
        bytes32 receiptHash;
        uint256 transferAmount;
    }

    function parseProof(
        uint256 proofOffset
    ) internal pure returns (Proof memory) {
        Proof memory proof;
        uint256 dataOffset = proofOffset + 0x20;
        assembly {
            calldatacopy(proof, dataOffset, 0x20) // 1 field (chainId)
            dataOffset := add(dataOffset, 0x40)
            calldatacopy(add(proof, 0x40), dataOffset, 0x80) // 4 fields * 0x20 = 0x80
            dataOffset := add(dataOffset, 0xa0)
            calldatacopy(add(proof, 0xe0), dataOffset, 0x20) // transferAmount
        }
        return proof;
    }
}

// ============================================================
// FILE: contracts/lib/Utils.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library Utils {
    function currentChain() internal view returns (uint256) {
        uint256 chain;
        assembly {
            chain := chainid()
        }
        return chain;
    }

    function stringToBytes32(
        string memory source
    ) internal pure returns (bytes32 result) {
        bytes memory tempEmptyStringTest = bytes(source);
        if (tempEmptyStringTest.length == 0) {
            return 0x0;
        }
        assembly {
            result := mload(add(source, 32))
        }
    }

    function saturatingMultiply(
        uint256 a,
        uint256 b
    ) internal pure returns (uint256) {
        unchecked {
            if (a == 0) return 0;
            uint256 c = a * b;
            if (c / a != b) return type(uint256).max;
            return c;
        }
    }

    function saturatingAdd(
        uint256 a,
        uint256 b
    ) internal pure returns (uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return type(uint256).max;
            return c;
        }
    }

    // Preconditions:
    //  1. a may be arbitrary (up to 2 ** 256 - 1)
    //  2. b * c < 2 ** 256
    // Returned value: min(floor((a * b) / c), 2 ** 256 - 1)
    function multiplyAndDivideFloor(
        uint256 a,
        uint256 b,
        uint256 c
    ) internal pure returns (uint256) {
        return
            saturatingAdd(
                saturatingMultiply(a / c, b),
                ((a % c) * b) / c // can't fail because of assumption 2.
            );
    }

    // Preconditions:
    //  1. a may be arbitrary (up to 2 ** 256 - 1)
    //  2. b * c < 2 ** 256
    // Returned value: min(ceil((a * b) / c), 2 ** 256 - 1)
    function multiplyAndDivideCeil(
        uint256 a,
        uint256 b,
        uint256 c
    ) internal pure returns (uint256) {
        return
            saturatingAdd(
                saturatingMultiply(a / c, b),
                ((a % c) * b + (c - 1)) / c // can't fail because of assumption 2.
            );
    }
}

// ============================================================
// FILE: contracts/proxy/InitializableERC1967Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// pragma solidity ^0.8.20;

// import "@openzeppelin/contracts/proxy/Proxy.sol";

// //import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Upgrade.sol";

// /// @dev The original OpenZeppelin Contracts (last updated v4.7.0) (proxy/ERC1967/ERC1967Proxy.sol), but
// /// constructor() was removed
// contract InitializableERC1967Proxy is Proxy {
//     // /**
//     //  * @dev Returns the current implementation address.
//     //  */
//     // function _implementation()
//     //     internal
//     //     view
//     //     virtual
//     //     override
//     //     returns (address impl)
//     // {
//     //     return ERC1967Upgrade._getImplementation();
//     // }
// }

// ============================================================
// FILE: contracts/proxy/InitializableTransparentUpgradeableProxy.sol
// ============================================================

// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.20;

// import "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol";
// import "./InitializableERC1967Proxy.sol";

// contract InceptionProxyAdmin is ProxyAdmin {}

// /// @dev The original OpenZeppelin Contracts (last updated v4.9.0) (proxy/transparent/TransparentUpgradeableProxy.sol)
// /// with replacement constructor by initializer
// contract InitializableTransparentUpgradeableProxy is InitializableERC1967Proxy {
//     /**
//      * Contract initializer.
//      * @param _logic address of the initial implementation.
//      * @param admin_ Address of the proxy administrator.
//      * @param _data Data to send as msg.data to the implementation to initialize the proxied contract
//      */
//     function initialize(
//         address _logic,
//         address admin_,
//         bytes memory _data
//     ) external payable {
//         require(
//             _implementation() == address(0),
//             "implementation has already been set"
//         );
//         _upgradeToAndCall(_logic, _data, false);
//         _changeAdmin(admin_);
//     }

//     /**
//      * @dev Modifier used internally that will delegate the call to the implementation unless the sender is the admin.
//      *
//      * CAUTION: This modifier is deprecated, as it could cause issues if the modified function has arguments, and the
//      * implementation provides a function with the same selector.
//      */
//     modifier ifAdmin() {
//         if (msg.sender == _getAdmin()) {
//             _;
//         } else {
//             _fallback();
//         }
//     }

//     /**
//      * @dev If caller is the admin process the call internally, otherwise transparently fallback to the proxy behavior
//      */
//     function _fallback() internal virtual override {
//         if (msg.sender == _getAdmin()) {
//             bytes memory ret;
//             bytes4 selector = msg.sig;
//             if (selector == ITransparentUpgradeableProxy.upgradeTo.selector) {
//                 ret = _dispatchUpgradeTo();
//             } else if (
//                 selector ==
//                 ITransparentUpgradeableProxy.upgradeToAndCall.selector
//             ) {
//                 ret = _dispatchUpgradeToAndCall();
//             } else if (
//                 selector == ITransparentUpgradeableProxy.changeAdmin.selector
//             ) {
//                 ret = _dispatchChangeAdmin();
//             } else if (
//                 selector == ITransparentUpgradeableProxy.admin.selector
//             ) {
//                 ret = _dispatchAdmin();
//             } else if (
//                 selector == ITransparentUpgradeableProxy.implementation.selector
//             ) {
//                 ret = _dispatchImplementation();
//             } else {
//                 revert(
//                     "TransparentUpgradeableProxy: admin cannot fallback to proxy target"
//                 );
//             }
//             assembly {
//                 return(add(ret, 0x20), mload(ret))
//             }
//         } else {
//             super._fallback();
//         }
//     }

//     /**
//      * @dev Returns the current admin.
//      *
//      * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using the
//      * https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
//      * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
//      */
//     function _dispatchAdmin() private returns (bytes memory) {
//         _requireZeroValue();

//         address admin = _getAdmin();
//         return abi.encode(admin);
//     }

//     /**
//      * @dev Returns the current implementation.
//      *
//      * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using the
//      * https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
//      * `0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc`
//      */
//     function _dispatchImplementation() private returns (bytes memory) {
//         _requireZeroValue();

//         address implementation = _implementation();
//         return abi.encode(implementation);
//     }

//     /**
//      * @dev Changes the admin of the proxy.
//      *
//      * Emits an {AdminChanged} event.
//      */
//     function _dispatchChangeAdmin() private returns (bytes memory) {
//         _requireZeroValue();

//         address newAdmin = abi.decode(msg.data[4:], (address));
//         _changeAdmin(newAdmin);

//         return "";
//     }

//     /**
//      * @dev Upgrade the implementation of the proxy.
//      */
//     function _dispatchUpgradeTo() private returns (bytes memory) {
//         _requireZeroValue();

//         address newImplementation = abi.decode(msg.data[4:], (address));
//         _upgradeToAndCall(newImplementation, bytes(""), false);

//         return "";
//     }

//     /**
//      * @dev Upgrade the implementation of the proxy, and then call a function from the new implementation as specified
//      * by `data`, which should be an encoded function call. This is useful to initialize new storage variables in the
//      * proxied contract.
//      */
//     function _dispatchUpgradeToAndCall() private returns (bytes memory) {
//         (address newImplementation, bytes memory data) = abi.decode(
//             msg.data[4:],
//             (address, bytes)
//         );
//         _upgradeToAndCall(newImplementation, data, true);

//         return "";
//     }

//     /**
//      * @dev Returns the current admin.
//      *
//      * CAUTION: This function is deprecated. Use {ERC1967Upgrade-_getAdmin} instead.
//      */
//     function _admin() internal view virtual returns (address) {
//         return _getAdmin();
//     }

//     /**
//      * @dev To keep this contract fully transparent, all `ifAdmin` functions must be payable. This helper is here to
//      * emulate some proxy functions being non-payable while still allowing value to pass through.
//      */
//     function _requireZeroValue() private {
//         require(msg.value == 0, "zero value is required");
//     }
// }

// ============================================================
// FILE: contracts/proxy/Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract XXX is TransparentUpgradeableProxy {
    constructor(
        address _logic,
        address admin_,
        bytes memory _data
    ) TransparentUpgradeableProxy(_logic, admin_, _data) {}
}

// ============================================================
// FILE: contracts/rate_providers/InceptionRateProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "../interfaces/IRateProvider.sol";
import "../interfaces/IInceptionRatioFeed.sol";

/// @author The InceptionLRT team
/// @title The InceptionRateProvider contract
/// @notice Inheritable standard rate provider interface.
abstract contract InceptionRateProvider is IRateProvider {
    //using SafeMath for uint256;

    IInceptionRatioFeed public ratioFeed;
    address internal _asset;

    constructor(address ratioFeedAddress, address assetAddress) payable {
        ratioFeed = IInceptionRatioFeed(ratioFeedAddress);
        _asset = assetAddress;
    }

    function getRate() external view override returns (uint256) {
        return
            safeFloorMultiplyAndDivide(
                1e18,
                1e18,
                ratioFeed.getRatioFor(_asset)
            );
    }

    function safeFloorMultiplyAndDivide(
        uint256 a,
        uint256 b,
        uint256 c
    ) internal pure returns (uint256) {
        // uint256 remainder = a.mod(c);
        // uint256 result = a.div(c);
        // bool safe;
        // (safe, result) = result.tryMul(b);
        // if (!safe) {
        //     return
        //         0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        // }
        // (safe, result) = result.tryAdd(remainder.mul(b).div(c));
        // if (!safe) {
        //     return
        //         0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        // }
        return 0;
    }
}

// ============================================================
// FILE: contracts/rate_providers/InETH/InETHRateProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../InceptionRateProvider.sol";

/// @author The InceptionLRT team
/// @title The InETHRateProvider contract
/// @notice The InceptionRateProvider is used to build a rate provider for inETH LRT.
contract InETHRateProvider is InceptionRateProvider {
    constructor(
        address ratioFeedAddress,
        address assetAddress
    ) payable InceptionRateProvider(ratioFeedAddress, assetAddress) {}

    function inETH() external view returns (address) {
        return _asset;
    }
}

// ============================================================
// FILE: contracts/rate_providers/InstETH/InstETHRateProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../InceptionRateProvider.sol";

/// @author The InceptionLRT team
/// @title The InstETHRateProvider contract
/// @notice The InceptionRateProvider is used to build a rate provider for instETH LRT.
contract InstETHRateProvider is InceptionRateProvider {
    constructor(
        address ratioFeedAddress,
        address assetAddress
    ) payable InceptionRateProvider(ratioFeedAddress, assetAddress) {}

    function instETH() external view returns (address) {
        return _asset;
    }
}

// ============================================================
// FILE: contracts/ratio_feed/InceptionRatioFeed.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "../interfaces/IInceptionRatioFeed.sol";

/// @author The InceptionLRT team
/// @title InceptionRatioFeed Contract
/// @notice Holds the up-to-date ratios for the bridged LRTs.
contract InceptionRatioFeed is
    OwnableUpgradeable,
    PausableUpgradeable,
    IInceptionRatioFeed,
    IInceptionRatioFeedErrors
{
    struct HistoricalRatios {
        uint64[9] historicalRatios;
        uint40 lastUpdate;
    }

    /// @dev 100000000
    uint32 public constant MAX_THRESHOLD = uint32(1e8);

    address public inceptionOperator;

    mapping(address => uint256) private _ratios;
    mapping(address => HistoricalRatios) public historicalRatios;

    /// @dev use this instead of HistoricalRatios.lastUpdate to check for 12hr ratio update timeout
    mapping(address => uint256) private _ratioUpdates;

    /// @dev diff between the current ratio and a new one in %(0.000001 ... 100%)
    uint256 public ratioThreshold;

    modifier onlyOperator() {
        if (msg.sender != owner() && msg.sender != inceptionOperator)
            revert OperatorUnauthorizedAccount(msg.sender);
        _;
    }

    function initialize(address operator) external initializer {
        __Ownable_init(msg.sender);
        __Pausable_init();

        inceptionOperator = operator;
        emit OperatorUpdated(address(0), operator);
    }

    function updateRatioBatch(
        address[] calldata addresses,
        uint256[] calldata ratios
    ) external override whenNotPaused onlyOperator {
        if (ratioThreshold == 0) revert RatioThresholdNotSet();

        uint256 numOfRatios = addresses.length;
        if (numOfRatios != ratios.length) revert InconsistentInputData();

        for (uint256 i = 0; i < numOfRatios; ) {
            address tokenAddr = addresses[i];
            uint256 lastUpdate = _ratioUpdates[tokenAddr];
            uint256 oldRatio = _ratios[tokenAddr];
            uint256 newRatio = ratios[i];

            (bool valid, string memory reason) = _checkRatioRules(
                lastUpdate,
                newRatio,
                oldRatio
            );

            if (!valid) {
                emit RatioNotUpdated(tokenAddr, newRatio, reason);
                unchecked {
                    ++i;
                }
                continue;
            }

            _ratios[tokenAddr] = newRatio;
            emit RatioUpdated(tokenAddr, oldRatio, newRatio);

            _ratioUpdates[tokenAddr] = uint40(block.timestamp);

            // let's compare with the new ratio
            HistoricalRatios storage hisRatio = historicalRatios[tokenAddr];
            if (block.timestamp - hisRatio.lastUpdate > 1 days - 1 minutes) {
                uint64 latestOffset = hisRatio.historicalRatios[0];
                hisRatio.historicalRatios[
                    ((latestOffset + 1) % 8) + 1
                ] = uint64(newRatio);
                hisRatio.historicalRatios[0] = latestOffset + 1;
                hisRatio.lastUpdate = uint40(block.timestamp);
            }
            unchecked {
                ++i;
            }
        }
    }

    function _checkRatioRules(
        uint256 lastUpdated,
        uint256 newRatio,
        uint256 oldRatio
    ) internal view returns (bool valid, string memory reason) {
        // initialization of the first ratio -> skip checks
        if (oldRatio == 0) return (valid = true, reason);

        if (block.timestamp - lastUpdated < 12 hours)
            return (valid, reason = "update time range exceeds");

        // new ratio should be not greater than a previous one
        if (newRatio > oldRatio)
            return (valid, reason = "new ratio is greater than old");

        // new ratio should be in the range (oldRatio - threshold , oldRatio]
        uint256 threshold = (oldRatio * ratioThreshold) / MAX_THRESHOLD;
        if (newRatio < oldRatio - threshold)
            return (valid, reason = "new ratio too low");

        return (valid = true, reason);
    }

    function averagePercentageRate(
        address token,
        uint256 day
    ) external view returns (uint256) {
        if (token == address(0)) revert NullParams();
        if (day == 0 || day > 7) revert IncorrectDay(day);

        HistoricalRatios storage hisRatio = historicalRatios[token];
        uint64 latestOffset = hisRatio.historicalRatios[0];
        if (latestOffset == 0) revert IncorrectToken(token);
        if (latestOffset < day) revert IncorrectDay(day);

        uint256 oldestRatio = hisRatio.historicalRatios[
            ((latestOffset - day) % 8) + 1
        ];
        uint256 newestRatio = hisRatio.historicalRatios[
            ((latestOffset) % 8) + 1
        ];

        if (oldestRatio <= newestRatio) {
            return 0;
        }

        return
            ((oldestRatio - newestRatio) * 10 ** 20 * 365) /
            (newestRatio * (day));
    }

    function getRatioFor(
        address token
    ) external view override returns (uint256) {
        return _ratios[token];
    }

    function repairRatioFor(address token, uint256 ratio) external onlyOwner {
        if (token == address(0) || ratio == 0) revert NullParams();

        uint256 oldRatio = _ratios[token];
        _ratios[token] = ratio;
        emit RatioUpdated(token, oldRatio, ratio);
    }

    function setRatioThreshold(uint256 newValue) external onlyOwner {
        if (newValue >= MAX_THRESHOLD || newValue == 0)
            revert NewRatioThresholdInvalid();

        emit RatioThresholdChanged(ratioThreshold, newValue);
        ratioThreshold = newValue;
    }

    function setInceptionOperator(address newOperator) external onlyOwner {
        if (newOperator == address(0)) revert NullParams();

        emit OperatorUpdated(inceptionOperator, newOperator);
        inceptionOperator = newOperator;
    }

    /*///////////////////////////////
    ////// Pausable functions //////
    /////////////////////////////*/

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }
}

// ============================================================
// FILE: contracts/tests/ERC20Mintable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";

contract ERC20Mintable is ERC20 {
    constructor(
        string memory name_,
        string memory symbol_
    ) payable ERC20(name_, symbol_) {}

    function mint(address usr, uint wad) external {
        _mint(usr, wad);
    }

    function burn(address usr, uint wad) external {
        _burn(usr, wad);
    }
}

// ============================================================
// FILE: contracts/tests/MultipleDepositor.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/interfaces/IERC20.sol";

import "../interfaces/IInceptionBridge.sol";

contract MultipleDepositor {
    IInceptionBridge internal _bridge;

    constructor(IInceptionBridge bridge) {
        _bridge = bridge;
    }

    function deposit(
        address fromToken,
        uint256 destinationChain,
        address receiver,
        uint256 amount,
        uint256 numOfDeposits
    ) external {
        IERC20(fromToken).transferFrom(
            msg.sender,
            address(this),
            numOfDeposits * amount
        );
        IERC20(fromToken).approve(address(_bridge), numOfDeposits * amount);
        for (uint256 i = 0; i < numOfDeposits; i++) {
            _bridge.deposit(fromToken, destinationChain, receiver, amount);
        }
    }
}

// ============================================================
// FILE: contracts/XERC20/XERC20.sol
// ============================================================

// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.20;

// import "../interfaces/IXERC20.sol";
// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";

// contract XERC20 is ERC20, Ownable, IXERC20, ERC20Permit {
//     /**
//      * @notice The duration it takes for the limits to fully replenish
//      */
//     uint256 private constant _DURATION = 1 days;

//     /**
//      * @notice The address of the factory which deployed this contract
//      */
//     address public immutable FACTORY;

//     /**
//      * @notice The address of the lockbox contract
//      */
//     address public lockbox;

//     /**
//      * @notice Maps bridge address to bridge configurations
//      */
//     mapping(address => Bridge) public bridges;

//     /**
//      * @param _name The name of the token
//      * @param _symbol The symbol of the token
//      * @param _factory The factory which deployed this contract
//      */
//     constructor(
//         string memory _name,
//         string memory _symbol,
//         address _factory
//     ) ERC20(_name, _symbol) ERC20Permit(_name) {
//         _transferOwnership(_factory);
//         FACTORY = _factory;
//     }

//     /**
//      * @notice Mints tokens for a user
//      * @dev Can only be called by a bridge
//      * @param _user The address of the user who needs tokens minted
//      * @param _amount The amount of tokens being minted
//      */
//     function mint(address _user, uint256 _amount) external {
//         _mintWithCaller(msg.sender, _user, _amount);
//     }

//     /**
//      * @notice Burns tokens for a user
//      * @dev Can only be called by a bridge
//      * @param _user The address of the user who needs tokens burned
//      * @param _amount The amount of tokens being burned
//      */
//     function burn(address _user, uint256 _amount) external {
//         _burnWithCaller(msg.sender, _user, _amount);
//     }

//     /**
//      * @notice Sets the lockbox address
//      * @param _lockbox The address of the lockbox
//      */
//     function setLockbox(address _lockbox) external {
//         if (msg.sender != FACTORY) revert IXERC20_NotFactory();
//         lockbox = _lockbox;

//         emit LockboxSet(_lockbox);
//     }

//     /**
//      * @notice Updates the limits of any bridge
//      * @dev Can only be called by the owner
//      * @param _mintingLimit The updated minting limit we are setting to the bridge
//      * @param _burningLimit The updated burning limit we are setting to the bridge
//      * @param _bridge The address of the bridge we are setting the limits too
//      */
//     function setBridgeLimits(
//         address _bridge,
//         uint256 _mintingLimit,
//         uint256 _burningLimit
//     ) external onlyOwner {
//         _changeMinterLimit(_bridge, _mintingLimit);
//         _changeBurnerLimit(_bridge, _burningLimit);
//         emit BridgeLimitsSet(_mintingLimit, _burningLimit, _bridge);
//     }

//     /**
//      * @notice Returns the max limit of a bridge
//      * @param _bridge the bridge we are viewing the limits of
//      * @return _limit The limit the bridge has
//      */
//     function mintingMaxLimitOf(
//         address _bridge
//     ) external view returns (uint256 _limit) {
//         _limit = bridges[_bridge].minterParams.maxLimit;
//     }

//     /**
//      * @notice Returns the max limit of a bridge
//      * @param _bridge the bridge we are viewing the limits of
//      * @return _limit The limit the bridge has
//      */
//     function burningMaxLimitOf(
//         address _bridge
//     ) external view returns (uint256 _limit) {
//         _limit = bridges[_bridge].burnerParams.maxLimit;
//     }

//     /**
//      * @notice Returns the current limit of a bridge
//      * @param _bridge the bridge we are viewing the limits of
//      * @return _limit The limit the bridge has
//      */
//     function mintingCurrentLimitOf(
//         address _bridge
//     ) public view returns (uint256 _limit) {
//         _limit = _getCurrentLimit(
//             bridges[_bridge].minterParams.currentLimit,
//             bridges[_bridge].minterParams.maxLimit,
//             bridges[_bridge].minterParams.timestamp,
//             bridges[_bridge].minterParams.ratePerSecond
//         );
//     }

//     /**
//      * @notice Returns the current limit of a bridge
//      * @param _bridge the bridge we are viewing the limits of
//      * @return _limit The limit the bridge has
//      */
//     function burningCurrentLimitOf(
//         address _bridge
//     ) public view returns (uint256 _limit) {
//         _limit = _getCurrentLimit(
//             bridges[_bridge].burnerParams.currentLimit,
//             bridges[_bridge].burnerParams.maxLimit,
//             bridges[_bridge].burnerParams.timestamp,
//             bridges[_bridge].burnerParams.ratePerSecond
//         );
//     }

//     /**
//      * @notice Uses the limit of any bridge
//      * @param _bridge The address of the bridge who is being changed
//      * @param _change The change in the limit
//      */
//     function _useMinterLimits(address _bridge, uint256 _change) internal {
//         uint256 _currentLimit = mintingCurrentLimitOf(_bridge);
//         bridges[_bridge].minterParams.timestamp = block.timestamp;
//         bridges[_bridge].minterParams.currentLimit = _currentLimit - _change;
//     }

//     /**
//      * @notice Uses the limit of any bridge
//      * @param _bridge The address of the bridge who is being changed
//      * @param _change The change in the limit
//      */
//     function _useBurnerLimits(address _bridge, uint256 _change) internal {
//         uint256 _currentLimit = burningCurrentLimitOf(_bridge);
//         bridges[_bridge].burnerParams.timestamp = block.timestamp;
//         bridges[_bridge].burnerParams.currentLimit = _currentLimit - _change;
//     }

//     /**
//      * @notice Updates the limit of any bridge
//      * @dev Can only be called by the owner
//      * @param _bridge The address of the bridge we are setting the limit too
//      * @param _limit The updated limit we are setting to the bridge
//      */
//     function _changeMinterLimit(address _bridge, uint256 _limit) internal {
//         if (_limit < _DURATION && _limit > 0) revert IXERC20_WrongBridgeLimit();

//         uint256 _oldLimit = bridges[_bridge].minterParams.maxLimit;
//         uint256 _currentLimit = mintingCurrentLimitOf(_bridge);
//         bridges[_bridge].minterParams.maxLimit = _limit;

//         bridges[_bridge].minterParams.currentLimit = _calculateNewCurrentLimit(
//             _limit,
//             _oldLimit,
//             _currentLimit
//         );

//         bridges[_bridge].minterParams.ratePerSecond = _limit / _DURATION;
//         bridges[_bridge].minterParams.timestamp = block.timestamp;
//     }

//     /**
//      * @notice Updates the limit of any bridge
//      * @dev Can only be called by the owner
//      * @param _bridge The address of the bridge we are setting the limit too
//      * @param _limit The updated limit we are setting to the bridge
//      */
//     function _changeBurnerLimit(address _bridge, uint256 _limit) internal {
//         if (_limit < _DURATION && _limit > 0) revert IXERC20_WrongBridgeLimit();

//         uint256 _oldLimit = bridges[_bridge].burnerParams.maxLimit;
//         uint256 _currentLimit = burningCurrentLimitOf(_bridge);
//         bridges[_bridge].burnerParams.maxLimit = _limit;

//         bridges[_bridge].burnerParams.currentLimit = _calculateNewCurrentLimit(
//             _limit,
//             _oldLimit,
//             _currentLimit
//         );

//         bridges[_bridge].burnerParams.ratePerSecond = _limit / _DURATION;
//         bridges[_bridge].burnerParams.timestamp = block.timestamp;
//     }

//     /**
//      * @param _limit The new limit
//      * @param _oldLimit The old limit
//      * @param _currentLimit The current limit
//      * @return _newCurrentLimit The new current limit
//      */
//     function _calculateNewCurrentLimit(
//         uint256 _limit,
//         uint256 _oldLimit,
//         uint256 _currentLimit
//     ) internal pure returns (uint256 _newCurrentLimit) {
//         uint256 _difference;

//         if (_oldLimit > _limit) {
//             _difference = _oldLimit - _limit;
//             _newCurrentLimit = _currentLimit > _difference
//                 ? _currentLimit - _difference
//                 : 0;
//         } else {
//             _difference = _limit - _oldLimit;
//             _newCurrentLimit = _currentLimit + _difference;
//         }
//     }

//     /**
//      * @param _currentLimit The current limit
//      * @param _maxLimit The max limit
//      * @param _timestamp The timestamp of the last update
//      * @param _ratePerSecond The rate per second
//      * @return _limit The current limit
//      */
//     function _getCurrentLimit(
//         uint256 _currentLimit,
//         uint256 _maxLimit,
//         uint256 _timestamp,
//         uint256 _ratePerSecond
//     ) internal view returns (uint256 _limit) {
//         _limit = _currentLimit;
//         if (_limit == _maxLimit) {
//             return _limit;
//         } else if (_timestamp + _DURATION <= block.timestamp) {
//             _limit = _maxLimit;
//         } else if (_timestamp + _DURATION > block.timestamp) {
//             uint256 _timePassed = block.timestamp - _timestamp;
//             uint256 _calculatedLimit = _limit + (_timePassed * _ratePerSecond);
//             _limit = _calculatedLimit > _maxLimit
//                 ? _maxLimit
//                 : _calculatedLimit;
//         }
//     }

//     /**
//      * @param _caller The caller address
//      * @param _user The user address
//      * @param _amount The amount to burn
//      */
//     function _burnWithCaller(
//         address _caller,
//         address _user,
//         uint256 _amount
//     ) internal {
//         if (_caller != lockbox) {
//             uint256 _currentLimit = burningCurrentLimitOf(_caller);
//             if (_currentLimit < _amount) revert IXERC20_NotHighEnoughLimits();
//             _useBurnerLimits(_caller, _amount);
//         }
//         _burn(_user, _amount);
//     }

//     /**
//      * @param _caller The caller address
//      * @param _user The user address
//      * @param _amount The amount to mint
//      */
//     function _mintWithCaller(
//         address _caller,
//         address _user,
//         uint256 _amount
//     ) internal {
//         if (_caller != lockbox) {
//             uint256 _currentLimit = mintingCurrentLimitOf(_caller);
//             if (_currentLimit < _amount) revert IXERC20_NotHighEnoughLimits();
//             _useMinterLimits(_caller, _amount);
//         }
//         _mint(_user, _amount);
//     }
// }

// ============================================================
// FILE: contracts/XERC20/XERC20Lockbox.sol
// ============================================================

// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.20;

// import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
// import "@openzeppelin/contracts/utils/math/SafeCast.sol";

// import "../interfaces/IXERC20Lockbox.sol";
// import "../interfaces/IXERC20.sol";

// contract XERC20Lockbox is IXERC20Lockbox {
//     using SafeERC20 for IERC20;
//     using SafeCast for uint256;

//     /**
//      * @notice The XERC20 token of this contract
//      */
//     IXERC20 public immutable XERC20;

//     /**
//      * @notice The ERC20 token of this contract
//      */
//     IERC20 public immutable ERC20;

//     /**
//      * @notice Whether the ERC20 token is the native gas token of this chain
//      */
//     bool public immutable IS_NATIVE;

//     /**
//      * @param _xerc20 The address of the XERC20 contract
//      * @param _erc20 The address of the ERC20 contract
//      * @param _isNative Whether the ERC20 token is the native gas token of this chain or not
//      */
//     constructor(address _xerc20, address _erc20, bool _isNative) payable {
//         XERC20 = IXERC20(_xerc20);
//         ERC20 = IERC20(_erc20);
//         IS_NATIVE = _isNative;
//     }

//     /**
//      * @notice Deposit native tokens into the lockbox
//      */
//     function depositNative() public payable {
//         if (!IS_NATIVE) revert IXERC20Lockbox_NotNative();
//         _deposit(msg.sender, msg.value);
//     }

//     /**
//      * @notice Deposit ERC20 tokens into the lockbox
//      * @param _amount The amount of tokens to deposit
//      */
//     function deposit(uint256 _amount) external {
//         if (IS_NATIVE) revert IXERC20Lockbox_Native();
//         _deposit(msg.sender, _amount);
//     }

//     /**
//      * @notice Deposit ERC20 tokens into the lockbox, and send the XERC20 to a user
//      * @param _to The user to send the XERC20 to
//      * @param _amount The amount of tokens to deposit
//      */
//     function depositTo(address _to, uint256 _amount) external {
//         if (IS_NATIVE) revert IXERC20Lockbox_Native();
//         _deposit(_to, _amount);
//     }

//     /**
//      * @notice Deposit the native asset into the lockbox, and send the XERC20 to a user
//      * @param _to The user to send the XERC20 to
//      */
//     function depositNativeTo(address _to) external payable {
//         if (!IS_NATIVE) revert IXERC20Lockbox_NotNative();
//         _deposit(_to, msg.value);
//     }

//     /**
//      * @notice Withdraw ERC20 tokens from the lockbox
//      * @param _amount The amount of tokens to withdraw
//      */
//     function withdraw(uint256 _amount) external {
//         _withdraw(msg.sender, _amount);
//     }

//     /**
//      * @notice Withdraw tokens from the lockbox
//      * @param _to The user to withdraw to
//      * @param _amount The amount of tokens to withdraw
//      */
//     function withdrawTo(address _to, uint256 _amount) external {
//         _withdraw(_to, _amount);
//     }

//     /**
//      * @notice Withdraw tokens from the lockbox
//      * @param _to The user to withdraw to
//      * @param _amount The amount of tokens to withdraw
//      */
//     function _withdraw(address _to, uint256 _amount) internal {
//         if (_to == address(this)) revert IXERC20Lockbox_WrongReceiver();
//         XERC20.burn(msg.sender, _amount);
//         if (IS_NATIVE) {
//             (bool _success, ) = payable(_to).call{value: _amount}("");
//             if (!_success) revert IXERC20Lockbox_WithdrawFailed();
//         } else {
//             ERC20.safeTransfer(_to, _amount);
//         }
//         emit Withdraw(_to, _amount);
//     }

//     /**
//      * @notice Deposit tokens into the lockbox
//      * @param _to The address to send the XERC20 to
//      * @param _amount The amount of tokens to deposit
//      */
//     function _deposit(address _to, uint256 _amount) internal {
//         if (_to == address(this)) revert IXERC20Lockbox_WrongReceiver();
//         if (!IS_NATIVE)
//             ERC20.safeTransferFrom(msg.sender, address(this), _amount);

//         XERC20.mint(_to, _amount);
//         emit Deposit(_to, _amount);
//     }

//     /**
//      * @notice Fallback function to deposit native tokens
//      */
//     receive() external payable {
//         depositNative();
//     }
// }
