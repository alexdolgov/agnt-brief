// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol
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
// FILE: @openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;
import "../proxy/utils/Initializable.sol";

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
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-IERC20PermitUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/draft-IERC20Permit.sol)

pragma solidity ^0.8.0;

// EIP-2612 is Final as of 2022-11-01. This file is deprecated.

import "./IERC20PermitUpgradeable.sol";

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20PermitUpgradeable.sol
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
// FILE: contracts/core/CoreStrategy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "../interface/IStrategy.sol";

/**
 * @title Aspida's CoreStrategy module
 * @dev This contract is an abstract contract that defines the core strategy functions and variables.
 * @author Aspida engineer
 */
abstract contract CoreStrategy {
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 internal constant MAX_RESERVE_RATIO = 1e18;

    uint256 internal reserveRatio_;
    uint256 internal strategyReserve_;
    uint256 internal depositStrategy_;
    uint256 internal receiveStrategy_;

    /// @dev EnumerableSet of strategists
    EnumerableSet.AddressSet internal strategists_;

    /**
     * @dev Emitted when "reserveRatio_" has changed.
     */
    event SetReserveRatio(uint256 reserveRatio);

    /**
     * @dev Emitted when "strategyReserve_" has been updated.
     */
    event UpdateStrategyReserve(uint256 strategyReserve);

    /**
     * @dev Emitted when 'strategy' is added to 'strategists_'.
     */
    event StrategyAdded(address strategy);

    /**
     * @dev Emitted when `strategy` is removed from `strategists_`.
     */
    event StrategyRemoved(address strategy);

    /**
     * @dev Emitted when a deposit is made to a `strategy`.
     */
    event DepositToStrategy(address strategy, uint256 amount);

    /**
     * @dev Emitted when an amount is received from a `strategy`.
     */
    event ReceiveFromStrategy(address strategy, uint256 amount);

    /**
     * @dev Throws an exception if strategic addresses are not enabled.
     */
    modifier isStrategy(address _strategy) {
        require(strategists_.contains(_strategy), "isStrategy: invalid strategy address");
        _;
    }

    /**
     * @notice Set the reserve ratio internally.
     * @dev This function sets the reserve ratio to the specified value.
     * @param _reserveRatio The new reserve ratio to be set.
     */
    function _setReserveRatioInternal(uint256 _reserveRatio) internal {
        require(_reserveRatio <= MAX_RESERVE_RATIO, "_setReserveRatioInternal: ReserveRatio too large");
        require(_reserveRatio != reserveRatio_, "_setReserveRatioInternal: Cannot set the same value");
        reserveRatio_ = _reserveRatio;
        emit SetReserveRatio(_reserveRatio);
    }

    /**
     * @notice Add `strategy` into strategists_.
     * If `strategy` have not been a strategy, emits a `StrategyAdded` event.
     *
     * @param _strategy The strategy to add
     */
    function _addStrategyInternal(address _strategy) internal virtual {
        require(
            _strategy != address(0) && IStrategy(_strategy).core() == address(this),
            "_addStrategyInternal: invalid strategy address"
        );
        require(strategists_.add(_strategy), "_addStrategyInternal: Strategy has been added");
        emit StrategyAdded(_strategy);
    }

    /**
     * @notice Remove `strategy` from strategists_.
     * If `strategy` is a strategy, emits a `StrategyRemoved` event.
     *
     * @param _strategy The strategy to remove
     */
    function _removeStrategyInternal(address _strategy) internal virtual {
        require(strategists_.remove(_strategy), "_removeStrategyInternal: Strategy has been removed");
        emit StrategyRemoved(_strategy);
    }

    /**
     * @notice Update the strategy reserve with the specified value.
     * @dev This function updates the strategy reserve to the given value.
     * @param _strategyReserve The new value for the strategy reserve.
     */
    function _updateStrategyReserve(uint256 _strategyReserve) internal {
        strategyReserve_ = _strategyReserve;
        emit UpdateStrategyReserve(_strategyReserve);
    }

    /**
     * @notice Increase the strategy reserve by the specified amount.
     * @dev This function increases the strategy reserve by the given amount.
     * @param _increaseReserve The amount to increase the strategy reserve by.
     */
    function _increaseStrategyReserve(uint256 _increaseReserve) internal {
        _updateStrategyReserve(strategyReserve_ + _increaseReserve);
    }

    /**
     * @notice Decrease the strategy reserve by the specified amount.
     * @dev This function decreases the strategy reserve by the given amount.
     * @param _decreaseReserve The amount to decrease the strategy reserve by.
     */
    function _decreaseStrategyReserve(uint256 _decreaseReserve) internal {
        _updateStrategyReserve(strategyReserve_ - _decreaseReserve);
    }

    /**
     * @notice Increase the reserves by a ratio of the specified amount.
     * @dev This function increases the reserves by a ratio of the given amount.
     * @param _amount The amount to increase the reserves by.
     */
    function _increaseReservesByRatio(uint256 _amount) internal {
        _increaseStrategyReserve((_amount * reserveRatio_) / MAX_RESERVE_RATIO);
    }

    /**
     * @notice Deposit ETH into the specified strategy.
     * @dev This function deposits the specified amount of ETH into the strategy.
     * @param _strategy The address of the strategy to deposit into.
     * @param _ethAmount The amount of ETH to deposit.
     */
    function _depositIntoStrategyInternal(
        address _strategy,
        uint256 _ethAmount
    ) internal virtual isStrategy(_strategy) {
        _decreaseStrategyReserve(_ethAmount);
        depositStrategy_ += _ethAmount;
        IStrategy(_strategy).strategyReceive{ value: _ethAmount }();
        emit DepositToStrategy(_strategy, _ethAmount);
    }

    /**
     * @notice Receive strategy earnings from the specified strategy.
     * @dev This function receives the earnings from the specified strategy.
     * @param _strategy The address of the strategy to receive earnings from.
     */
    function _receiveStrategyEarning(address _strategy) internal virtual isStrategy(_strategy) {
        uint256 _ethValue = msg.value;
        _increaseStrategyReserve(_ethValue);
        receiveStrategy_ += _ethValue;
        emit ReceiveFromStrategy(_strategy, _ethValue);
    }

    /**
     * @notice Get the reserve ratio.
     * @return The reserve ratio.
     */
    function reserveRatio() external view returns (uint256) {
        return reserveRatio_;
    }

    /**
     * @notice Get the strategy reserve.
     * @return The strategy reserve.
     */
    function strategyReserve() external view returns (uint256) {
        return strategyReserve_;
    }

    /**
     * @notice Get the deposit strategy.
     * @return The deposit strategy.
     */
    function depositStrategy() external view returns (uint256) {
        return depositStrategy_;
    }

    /**
     * @notice Get the receive strategy.
     * @return The receive strategy.
     */
    function receiveStrategy() external view returns (uint256) {
        return receiveStrategy_;
    }

    /**
     * @notice Get all strategists.
     * @return _strategists The list of strategy addresses.
     */
    function strategists() external view returns (address[] memory _strategists) {
        _strategists = strategists_.values();
    }
}

// ============================================================
// FILE: contracts/core/CoreTreasury.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Aspida's CoreTreasury module
 * @dev This contract is an abstract contract that defines the core treasury functionality of Aspida.
 * @dev It contains internal functions to set the treasury and treasury ratio, and a function to calculate the treasury amount.
 * @dev It also contains external functions to get the treasury address and treasury ratio.
 * @dev The maximum treasury ratio is set to 1e18.
 * @author Aspida engineer
 */
abstract contract CoreTreasury {
    uint256 internal constant MAX_TREASURY_RATIO = 1e18;

    // The address of the treasury
    address internal treasury_;

    // The treasury ratio
    uint256 internal treasuryRatio_;

    /**
     * @dev Emitted when the treasury address is set
     */
    event SetTreasury(address treasury);

    /**
     * @dev Emitted when the treasury ratio is set
     */
    event SetTreasuryRatio(uint256 treasuryRatio);

    /**
     * @dev Sets the treasury address.
     * @param _treasury The address of the treasury.
     */
    function _setTreasuryInternal(address _treasury) internal {
        require(_treasury != address(0) && _treasury != treasury_, "_setTreasuryInternal: Invalid treasury");
        treasury_ = _treasury;
        emit SetTreasury(_treasury);
    }

    /**
     * @dev Sets the treasury ratio.
     * @param _treasuryRatio The treasury ratio.
     */
    function _setTreasuryRatioInternal(uint256 _treasuryRatio) internal {
        require(_treasuryRatio <= MAX_TREASURY_RATIO, "_setTreasuryRatioInternal: TreasuryRatio too large");
        require(_treasuryRatio != treasuryRatio_, "_setTreasuryRatioInternal: Cannot set the same value");
        treasuryRatio_ = _treasuryRatio;
        emit SetTreasuryRatio(_treasuryRatio);
    }

    /**
     * @dev Calculates the treasury amount.
     * @param _amount The amount to calculate the treasury amount for.
     * @return The treasury amount.
     */
    function _getTreasuryAmount(uint256 _amount) internal view returns (uint256) {
        return (_amount * treasuryRatio_) / MAX_TREASURY_RATIO;
    }

    /**
     * @dev Gets the treasury address.
     * @return The address of the treasury.
     */
    function treasury() external view returns (address) {
        return treasury_;
    }

    /**
     * @dev Gets the treasury ratio.
     * @return The treasury ratio.
     */
    function treasuryRatio() external view returns (uint256) {
        return treasuryRatio_;
    }
}

// ============================================================
// FILE: contracts/core/StakingModel.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interface/IDepositContract.sol";

/**
 * @title Aspida's StakingModel
 * @dev This contract manages the deposit of validators to the Ethereum 2.0 deposit contract.
 * @author Aspida engineer
 */
abstract contract StakingModel {
    uint256 internal constant DEPOSIT_SIZE = 32 ether;
    uint256 internal constant SIGNATURE_INDEX = 64;
    uint64 internal constant DEPOSIT_SIZE_IN_GWEI_LE64 = 0x0040597307000000;

    IDepositContract internal immutable DEPOSIT_CONTRACT; // Deposit contract is immutable

    bytes internal withdrawalCredentials_; // Withdrawal credentials are stored as bytes

    mapping(bytes => bool) internal pubKeyExpired_; // Mapping to check if a public key has expired

    /**
     * @dev Emitted when the withdrawal credentials are set.
     */
    event SetWithdrawalCredentials(bytes withdrawalCredential);

    /**
     * @dev Emitted when a validator is deposited.
     */
    event ValidatorDeposited(
        address operator,
        bytes pubKey,
        bytes signature,
        bytes withdrawalCredential,
        bytes32 depositDataRoot
    );

    /**
     * @dev Event emitted when a deposit is made.
     */
    event Deposit(uint256 depositValue, uint256 validatorCount);

    constructor(IDepositContract _depositContract) {
        DEPOSIT_CONTRACT = _depositContract;
    }

    /**
     * @dev Sets the withdrawal credentials.
     * @param _withdrawalCredentials The withdrawal credentials.
     */
    function _setWithdrawalCredentialsInternal(bytes memory _withdrawalCredentials) internal {
        require(
            _withdrawalCredentials.length == 32,
            "_setWithdrawalCredentialsInternal: Invalid withdrawalCredentials length"
        );

        withdrawalCredentials_ = _withdrawalCredentials;
        emit SetWithdrawalCredentials(_withdrawalCredentials);
    }

    struct Validator {
        address operator;
        bytes pubKey;
        bytes signature;
    }

    /**
     * @dev Deposits validators.
     * @param _validators The validators to deposit.
     */
    function _deposit(Validator[] calldata _validators) internal {
        require(_validators.length > 0, "_deposit: Deposit 0 is invalid");
        bytes memory _withdrawalCredentials = withdrawalCredentials_;
        for (uint256 i = 0; i < _validators.length; i++) {
            require(!pubKeyExpired_[_validators[i].pubKey], "_deposit: Invalid validator public key");

            bytes32 _depositDataRoot = _calculateDepositDataRoot(
                _validators[i].pubKey,
                _validators[i].signature,
                _withdrawalCredentials
            );
            DEPOSIT_CONTRACT.deposit{ value: DEPOSIT_SIZE }(
                _validators[i].pubKey,
                _withdrawalCredentials,
                _validators[i].signature,
                _depositDataRoot
            );

            pubKeyExpired_[_validators[i].pubKey] = true;
            emit ValidatorDeposited(
                _validators[i].operator,
                _validators[i].pubKey,
                _validators[i].signature,
                _withdrawalCredentials,
                _depositDataRoot
            );
        }
        emit Deposit(_validators.length * DEPOSIT_SIZE, _validators.length);
    }

    /**
     * @dev Checks the deposit root and deposits validators.
     * @param _validators The validators to deposit.
     * @param _depositRoot The expected deposit root.
     */
    function _depositCheck(Validator[] calldata _validators, bytes32 _depositRoot) internal {
        // Require that the deposit root has not changed
        require(
            _depositRoot == IDepositContract(DEPOSIT_CONTRACT).get_deposit_root(),
            "_depositCheck: Deposit root has changed"
        );
        _deposit(_validators);
    }

    /**
     * @dev Slices a portion of a bytes array.
     * @param _src The source bytes array.
     * @param _srcStart The starting index of the slice.
     * @param _length The length of the slice.
     * @return _dst The sliced bytes array.
     */
    function _bytesSlice(
        bytes memory _src,
        uint256 _srcStart,
        uint256 _length
    ) internal pure returns (bytes memory _dst) {
        require(_srcStart + _length <= _src.length, "_bytesSlice: Slice param error");
        _dst = new bytes(_length);
        for (uint256 i = 0; i < _length; i++) {
            _dst[i] = _src[i + _srcStart];
        }
    }

    /**
     * @dev Calculates the deposit data root.
     * @param _pubKey The public key.
     * @param _signature The signature.
     * @param _withdrawalCredentials The withdrawal credentials.
     * @return _depositDataRoot The deposit data root.
     */
    function _calculateDepositDataRoot(
        bytes memory _pubKey,
        bytes memory _signature,
        bytes memory _withdrawalCredentials
    ) internal pure returns (bytes32 _depositDataRoot) {
        bytes32 _pubkeyRoot = sha256(abi.encodePacked(_pubKey, bytes16(0)));
        bytes32 _signatureRoot = sha256(
            abi.encodePacked(
                sha256(abi.encodePacked(_bytesSlice(_signature, 0, SIGNATURE_INDEX))),
                sha256(abi.encodePacked(_bytesSlice(_signature, SIGNATURE_INDEX, 32), bytes32(0)))
            )
        );

        _depositDataRoot = sha256(
            abi.encodePacked(
                sha256(abi.encodePacked(_pubkeyRoot, _withdrawalCredentials)),
                sha256(abi.encodePacked(DEPOSIT_SIZE_IN_GWEI_LE64, bytes24(0), _signatureRoot))
            )
        );
    }

    /**
     * @dev Converts an address to withdrawal credentials.
     * @param _withdrawalAddress The withdrawal address.
     * @return The withdrawal credentials.
     */
    function _addressToWithdrawalCredentials(address _withdrawalAddress) internal pure returns (bytes memory) {
        return abi.encodePacked(uint256(uint160(_withdrawalAddress)) | (1 << 248));
    }

    /**
     * @dev Returns the deposit contract.
     * @return The deposit contract.
     */
    function depositContract() external view returns (IDepositContract) {
        return DEPOSIT_CONTRACT;
    }

    /**
     * @dev Returns the withdrawal credentials.
     * @return The withdrawal credentials.
     */
    function withdrawalCredentials() external view returns (bytes memory) {
        return withdrawalCredentials_;
    }

    /**
     * @dev Checks if a public key has expired.
     * @param _pubKey The public key.
     * @return True if the public key has expired, false otherwise.
     */
    function pubKeyExpired(bytes memory _pubKey) external view returns (bool) {
        return pubKeyExpired_[_pubKey];
    }
}

// ============================================================
// FILE: contracts/core/Submit.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interface/IaETH.sol";
import "../interface/IsaETH.sol";

/**
 * @title Aspida's Submit model
 * @dev This contract allows users to submit ETH and mint aETH tokens in return.
 * Users can also submit ETH and stake it to receive saETH tokens.
 * @author Aspida engineer
 */
abstract contract Submit {
    IaETH internal immutable AETH; // aETH token contract
    IsaETH internal immutable SAETH; // saETH token contract

    uint256 internal submitted_; // total amount of ETH submitted

    /**
     * @dev Emitted when the withdrawal credentials are set.
     */
    event Submitted(address sender, address recipient, uint256 ethValue);

    constructor(IaETH _aETH, IsaETH _saETH) {
        AETH = _aETH;
        SAETH = _saETH;
    }

    /**
     * @dev Internal function to submit ETH and mint aETH tokens
     * @param _receiver The address of the receiver of the aETH tokens
     */
    function _submit(address _receiver) internal virtual {
        uint256 _ethValue = msg.value;
        require(_ethValue != 0, "_submit: ETH cannot be 0");

        submitted_ += _ethValue;

        AETH.mint(_receiver, _ethValue);
        emit Submitted(msg.sender, _receiver, _ethValue);
    }

    /**
     * @dev External function to submit ETH and mint aETH tokens
     */
    function submit() external payable {
        _submit(msg.sender);
    }

    /**
     * @dev External function to submit ETH and mint aETH tokens for a specific receiver
     * @param _receiver The address of the receiver of the aETH tokens
     */
    function submit(address _receiver) external payable {
        _submit(_receiver);
    }

    /**
     * @dev External function to submit ETH, mint aETH tokens and stake them to receive saETH tokens
     * @param _receiver The address of the receiver of the saETH tokens
     */
    function submitAndStake(address _receiver) external payable {
        _submit(address(this));

        AETH.approve(address(SAETH), msg.value);
        require(SAETH.deposit(msg.value, _receiver) > 0, "No saETH was returned");
    }

    /**
     * @dev External function to return the aETH token contract
     * @return The aETH token contract
     */
    function aETH() external view returns (IaETH) {
        return AETH;
    }

    /**
     * @dev External function to return the saETH token contract
     * @return The saETH token contract
     */
    function saETH() external view returns (IsaETH) {
        return SAETH;
    }

    /**
     * @dev External function to return the total amount of ETH submitted
     * @return The total amount of ETH submitted
     */
    function submitted() external view returns (uint256) {
        return submitted_;
    }
}

// ============================================================
// FILE: contracts/core/WithdrawalQueue.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "../library/TransferHelper.sol";

/**
 * @title Aspida's WithdrawalQueue model
 * @dev This contract implements a withdrawal queue for users to withdraw their funds in a fair manner.
 * Users can withdraw their funds immediately if there are enough funds available, otherwise they will be added to the queue.
 * The queue is processed in a first-in-first-out (FIFO) manner.
 * Users can claim their funds from the queue at any time.
 * @author Aspida engineer
 */
abstract contract WithdrawalQueue {
    using EnumerableSet for EnumerableSet.UintSet;
    using TransferHelper for address;

    uint256 internal totalWithdrawn_; // Total amount of funds withdrawn
    uint256 internal totalClaimed_; // Total amount of funds claimed
    uint256 internal pendingClaimAmount_; // Total amount of funds in the queue

    uint256 internal lastQueueId_; // The last queue ID
    mapping(address => EnumerableSet.UintSet) internal userQueueIds_; // Mapping of user addresses to their queue IDs

    mapping(uint256 => uint256) internal claimAccumulated_; // Mapping of queue IDs to their accumulated claim amounts

    /**
     * @dev Emitted when the total amount of funds in the queue is updated.
     */
    event UpdatePendingClaim(uint256 pendingClaimAmount);

    /**
     * @dev Emitted when the total amount of funds claimed is updated.
     */
    event UpdateTotalClaimed(uint256 totalClaimed);

    /**
     * @dev Emitted when a user is added to the withdrawal queue.
     */
    event EnterWithdrawalQueue(
        address sender,
        address recipient,
        uint256 queueId,
        uint256 claimAmount,
        uint256 accumulated
    );

    /**
     * @dev Emitted when a user is removed from the withdrawal queue.
     */
    event ExitWithdrawalQueue(address sender, address recipient, uint256 queueId, uint256 claimAmount);

    /**
     * @dev Emitted when funds are withdrawn from the contract.
     */
    event Withdrawn(address sender, address recipient, uint256 amount);

    /**
     * @dev Emitted when funds are claimed from the queue.
     */
    event Claimed(address sender, address recipient, uint256 amount);

    /**
     * @dev Updates the total amount of funds in the queue.
     * @param _pendingClaimAmount The new total amount of funds in the queue.
     */
    function _updatePendingClaim(uint256 _pendingClaimAmount) internal {
        pendingClaimAmount_ = _pendingClaimAmount;
        emit UpdatePendingClaim(_pendingClaimAmount);
    }

    /**
     * @dev Updates the total amount of funds claimed.
     * @param _totalClaimed The new total amount of funds claimed.
     */
    function _updateTotalClaimed(uint256 _totalClaimed) internal {
        totalClaimed_ = _totalClaimed;
        emit UpdateTotalClaimed(_totalClaimed);
    }

    /**
     * @dev Adds the user to the withdrawal queue.
     * @param _receiver The address of the user to add to the queue.
     * @param _amount The amount of funds to add to the queue.
     */
    function _withdrawalQueue(address _receiver, uint256 _amount) internal {
        uint256 _queueId = lastQueueId_;
        uint256 _accumulated = claimAccumulated_[_queueId];

        _queueId += 1;
        userQueueIds_[_receiver].add(_queueId);

        uint256 _claimAccumulated = _accumulated + _amount;
        claimAccumulated_[_queueId] = _claimAccumulated;

        lastQueueId_ = _queueId;
        _updatePendingClaim(pendingClaimAmount_ + _amount);
        emit EnterWithdrawalQueue(msg.sender, _receiver, _queueId, _amount, _claimAccumulated);
    }

    /**
     * @dev Withdraws funds from the contract.
     * @param _sender The address of the user withdrawing the funds.
     * @param _receiver The address of the user receiving the funds.
     * @param _amount The amount of funds to withdraw.
     */
    function _withdraw(address _sender, address _receiver, uint256 _amount) internal virtual {
        require(_amount > 0, "_withdraw: withdraw amount cannot be 0");
        if (_withdrawableAmount() < _amount) {
            _withdrawalQueue(_receiver, _amount);
            return;
        }

        totalWithdrawn_ += _amount;
        _receiver.safeTransferETH(_amount);
        emit Withdrawn(_sender, _receiver, _amount);
    }

    /**
     * @dev Claims funds from the queue for a specific user.
     * @param _sender The address of the user claiming the funds.
     * @param _receiver The address of the user receiving the funds.
     */
    function _claimByAddress(address _sender, address _receiver) internal virtual {
        EnumerableSet.UintSet storage _userQueueIds = userQueueIds_[_sender];
        _claimByQueueId(_sender, _receiver, _userQueueIds.values(), _userQueueIds);
    }

    /**
     * @dev Claims funds from the queue for a specific user and queue IDs.
     * @param _sender The address of the user claiming the funds.
     * @param _receiver The address of the user receiving the funds.
     * @param _queueIds The list of queue IDs to claim from.
     * @param _userQueueIds The user's queue IDs.
     */
    function _claimByQueueId(
        address _sender,
        address _receiver,
        uint256[] memory _queueIds,
        EnumerableSet.UintSet storage _userQueueIds
    ) internal virtual {
        require(_queueIds.length > 0, "_claimByQueueId: Queue list cannot be empty");

        uint256 _availableBalance = _claimableAmount();
        uint256 _claimAmount;
        for (uint256 i = 0; i < _queueIds.length; i++) {
            uint256 _amount = _getClaimAmount(_queueIds[i], _availableBalance);
            if (_amount == 0) continue;

            require(_userQueueIds.remove(_queueIds[i]), "_claimByQueueId: Queue id does not exist");
            emit ExitWithdrawalQueue(_sender, _receiver, _queueIds[i], _amount);

            _claimAmount += _amount;
        }

        require(_claimAmount > 0, "_claimByQueueId: No claim amount");

        _updatePendingClaim(pendingClaimAmount_ - _claimAmount);
        _updateTotalClaimed(totalClaimed_ + _claimAmount);

        _receiver.safeTransferETH(_claimAmount);
        emit Claimed(_sender, _receiver, _claimAmount);
    }

    /**
     * @dev Returns the amount of funds that can be withdrawn.
     * @return _availableAmount The available amount of funds that can be withdrawn.
     */
    function _withdrawableAmount() internal view virtual returns (uint256 _availableAmount) {
        uint256 _balance = address(this).balance;
        uint256 _locked = pendingClaimAmount_;
        if (_balance > _locked) _availableAmount = _balance - _locked;
    }

    /**
     * @dev Returns the amount of funds that can be claimed.
     * @return _claimableAmount The claimable amount of funds.
     */
    function _claimableAmount() internal view virtual returns (uint256) {
        return address(this).balance + totalClaimed_;
    }

    /**
     * @dev Returns the claim amount and accumulated claim amount for a specific queue ID.
     * @param _queueId The queue ID.
     * @return _claimAmount The claim amount for the queue ID.
     * @return _claimAccumulated The accumulated claim amount for the queue ID.
     */
    function _claimDataByQueueId(
        uint256 _queueId
    ) internal view returns (uint256 _claimAmount, uint256 _claimAccumulated) {
        _claimAccumulated = claimAccumulated_[_queueId];
        if (_claimAccumulated > 0) _claimAmount = _claimAccumulated - claimAccumulated_[_queueId - 1];
    }

    /**
     * @dev Returns the claim amount for a specific queue ID.
     * @param _queueId The queue ID.
     * @param _claimable The claimable amount of funds.
     * @return _claimAmount The claim amount for the queue ID.
     */
    function _getClaimAmount(uint256 _queueId, uint256 _claimable) internal view returns (uint256 _claimAmount) {
        uint256 _accumulated;
        (_claimAmount, _accumulated) = _claimDataByQueueId(_queueId);
        if (_claimable < _accumulated) _claimAmount = 0;
    }

    /**
     * @dev Allows a user to withdraw funds.
     * @param _amount The amount of funds to withdraw.
     */
    function withdraw(uint256 _amount) external {
        _withdraw(msg.sender, msg.sender, _amount);
    }

    /**
     * @dev Allows a user to withdraw funds and specify a receiver address.
     * @param _amount The amount of funds to withdraw.
     * @param _receiver The address of the receiver.
     */
    function withdraw(uint256 _amount, address _receiver) external {
        _withdraw(msg.sender, _receiver, _amount);
    }

    /**
     * @dev Allows a user to claim their funds from the queue.
     */
    function claim() external {
        _claimByAddress(msg.sender, msg.sender);
    }

    /**
     * @dev Allows a user to claim their funds from the queue and specify a receiver address.
     * @param _receiver The address of the receiver.
     */
    function claim(address _receiver) external {
        _claimByAddress(msg.sender, _receiver);
    }

    /**
     * @dev Allows a user to claim their funds from the queue using specific queue IDs.
     * @param _queueIds The list of queue IDs to claim from.
     */
    function claim(uint256[] memory _queueIds) external {
        _claimByQueueId(msg.sender, msg.sender, _queueIds, userQueueIds_[msg.sender]);
    }

    /**
     * @dev Allows a user to claim their funds from the queue using specific queue IDs and specify a receiver address.
     * @param _receiver The address of the receiver.
     * @param _queueIds The list of queue IDs to claim from.
     */
    function claim(address _receiver, uint256[] memory _queueIds) external {
        _claimByQueueId(msg.sender, _receiver, _queueIds, userQueueIds_[msg.sender]);
    }

    /**
     * @dev Returns the total amount of funds withdrawn.
     * @return The total amount of funds withdrawn.
     */
    function totalWithdrawn() external view returns (uint256) {
        return totalWithdrawn_;
    }

    /**
     * @dev Returns the total amount of funds claimed.
     * @return The total amount of funds claimed.
     */
    function totalClaimed() external view returns (uint256) {
        return totalClaimed_;
    }

    /**
     * @dev Returns the total amount of funds in the queue.
     * @return The total amount of funds in the queue.
     */
    function pendingClaimAmount() external view returns (uint256) {
        return pendingClaimAmount_;
    }

    /**
     * @dev Returns the last queue ID.
     * @return The last queue ID.
     */
    function lastQueueId() external view returns (uint256) {
        return lastQueueId_;
    }

    /**
     * @dev Returns the accumulated amount of funds in the queue.
     * @return The accumulated amount of funds in the queue.
     */
    function accumulated() external view returns (uint256) {
        return claimAccumulated_[lastQueueId_];
    }

    /**
     * @dev Returns the amount of funds that can be withdrawn.
     * @return The amount of funds that can be withdrawn.
     */
    function withdrawableAmount() external view returns (uint256) {
        return _withdrawableAmount();
    }

    /**
     * @dev Returns the amount of funds that can be claimed.
     * @return The amount of funds that can be claimed.
     */
    function claimableAmount() external view returns (uint256) {
        return _claimableAmount();
    }

    /**
     * @dev Returns the claim amount and accumulated claim amount for a specific queue ID.
     * @param _queueId The queue ID to get claim data for.
     * @return _claimAmount The claim amount for the queue ID.
     * @return _claimAccumulated The accumulated claim amount for the queue ID.
     */
    function claimDataByQueueId(
        uint256 _queueId
    ) external view returns (uint256 _claimAmount, uint256 _claimAccumulated) {
        (_claimAmount, _claimAccumulated) = _claimDataByQueueId(_queueId);
    }

    /**
     * @dev Returns the claim data for a specific address.
     * @param _account The address to get claim data for.
     * @return _ids The IDs of the claims.
     * @return _claimAmounts The amounts of the claims.
     * @return _claimStatuses The statuses of the claims.
     */
    function claimDataByAddress(
        address _account
    ) external view returns (uint256[] memory _ids, uint256[] memory _claimAmounts, bool[] memory _claimStatuses) {
        _ids = userQueueIds_[_account].values();
        _claimAmounts = new uint256[](_ids.length);
        _claimStatuses = new bool[](_ids.length);

        uint256 _claimable = _claimableAmount();
        uint256 _accumulated;
        for (uint256 i = 0; i < _ids.length; i++) {
            (_claimAmounts[i], _accumulated) = _claimDataByQueueId(_ids[i]);
            _claimStatuses[i] = _claimable >= _accumulated;
        }
    }

    /**
     * @dev Returns the user's queue IDs, claim amounts, and accumulated claim amounts.
     * @param _account The address of the user.
     * @return _ids The IDs of the user's claims.
     * @return _claimAmounts The amounts of the user's claims.
     * @return _accumulations The accumulated amounts of the user's claims.
     */
    function userQueueIds(
        address _account
    ) external view returns (uint256[] memory _ids, uint256[] memory _claimAmounts, uint256[] memory _accumulations) {
        _ids = userQueueIds_[_account].values();
        _claimAmounts = new uint256[](_ids.length);
        _accumulations = new uint256[](_ids.length);

        for (uint256 i = 0; i < _accumulations.length; i++) {
            (_claimAmounts[i], _accumulations[i]) = _claimDataByQueueId(_ids[i]);
        }
    }
}

// ============================================================
// FILE: contracts/CorePrimary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import "./library/PauseGuardian.sol";
import "./library/Manable.sol";
import "./core/CoreTreasury.sol";
import "./core/CoreStrategy.sol";
import "./core/StakingModel.sol";
import "./core/Submit.sol";
import "./core/WithdrawalQueue.sol";

import "./interface/IRewardOracle.sol";

/**
 * @title Aspida's ETH 2.0 staking Core(primary)
 * @author Aspida engineer
 * @notice This contract is the primary contract for Aspida's ETH 2.0 staking Core.
 *         It inherits from several other contracts and contains various functions for managing the Core.
 * @dev This contract is implemented using the OpenZeppelin library.
 *      It is used for staking ETH 2.0 and managing the Core's treasury, strategies, and actions.
 *      It also contains functions for submitting and withdrawing ETH, as well as managing the withdrawal queue.
 */
contract CorePrimary is
    Ownable2StepUpgradeable,
    PauseGuardian,
    ReentrancyGuardUpgradeable,
    Manable,
    CoreTreasury,
    CoreStrategy,
    Submit,
    StakingModel,
    WithdrawalQueue
{
    address internal rewardOracle_;

    uint256 internal received_;

    event SetRewardOracle(address rewardOracle);
    event Received(uint256 _ethValue);

    /**
     * @dev Throws if called by any account other than the rewardOracle.
     */
    modifier onlyRewardOracle() {
        require(rewardOracle_ == msg.sender, "onlyRewardOracle: caller is not the rewardOracle");
        _;
    }

    /**
     * @dev Modifier to check if the contract has enough balance to deposit for the given validators.
     *      It throws if the contract's balance minus the strategy reserve and pending claim amount divided by the deposit size is less than the number of validators.
     * @param _validators The array of validators to check for.
     */
    modifier depositBalanceCheck(Validator[] calldata _validators) {
        require(
            (address(this).balance - strategyReserve_ - pendingClaimAmount_) / DEPOSIT_SIZE >= _validators.length,
            "depositBalanceCheck: Not enough ETH"
        );
        _;
    }

    /**
     * @notice Only for the implementation contract, as for the proxy pattern,
     *            should call `initialize()` separately.
     */
    constructor(
        IDepositContract _depositContract,
        IaETH _aETH,
        IsaETH _saETH
    ) StakingModel(_depositContract) Submit(_aETH, _saETH) {
        _disableInitializers();
    }

    /**
     * @notice Expects to call only once to initialize CorePrimary.
     */
    function initialize() public initializer {
        __Ownable2Step_init();
        _setTreasuryInternal(owner());
        _setWithdrawalCredentialsInternal(_addressToWithdrawalCredentials(address(this)));
    }

    /**
     * @notice Receives ETH sent to the contract.
     */
    receive() external payable {
        received_ += msg.value;
        emit Received(msg.value);
    }

    /**
     * @dev Unpause when Core is paused.
     */
    function _open() external onlyOwner {
        _unpause();
    }

    /**
     * @dev Pause Core.
     */
    function _close() external onlyPauseGuardian {
        _pause();
    }

    /**
     * @notice Adds a new pause guardian to the Core.
     * @param _pauseGuardian The address of the new pause guardian.
     */
    function _addPauseGuardian(address _pauseGuardian) external onlyOwner {
        _addPauseGuardianInternal(_pauseGuardian);
    }

    /**
     * @notice Removes a pause guardian from the Core.
     * @param _pauseGuardian The address of the pause guardian to remove.
     */
    function _removePauseGuardian(address _pauseGuardian) external onlyOwner {
        _removePauseGuardianInternal(_pauseGuardian);
    }

    /**
     * @notice Adds a new manager to the Core.
     * @param _manager The address of the new manager.
     */
    function _addManager(address _manager) external onlyOwner {
        _addManagerInternal(_manager);
    }

    /**
     * @notice Removes a manager from the Core.
     * @param _manager The address of the manager to remove.
     */
    function _removeManager(address _manager) external onlyOwner {
        _removeManagerInternal(_manager);
    }

    /**
     * @notice Sets the treasury address.
     * @param _treasury The address of the new treasury.
     */
    function _setTreasury(address _treasury) external onlyOwner {
        _setTreasuryInternal(_treasury);
    }

    /**
     * @notice Sets the treasury ratio.
     * @param _treasuryRatio The new treasury ratio.
     */
    function _setTreasuryRatio(uint256 _treasuryRatio) external onlyOwner {
        _setTreasuryRatioInternal(_treasuryRatio);
    }

    /**
     * @notice Sets the reserve ratio.
     * @param _reserveRatio The new reserve ratio.
     */
    function _setReserveRatio(uint256 _reserveRatio) external onlyOwner {
        _setReserveRatioInternal(_reserveRatio);
    }

    /**
     * @notice Adds a new strategy.
     * @param _strategy The address of the new strategy.
     */
    function _addStrategy(address _strategy) external onlyOwner {
        _addStrategyInternal(_strategy);
    }

    /**
     * @notice Removes a strategy.
     * @param _strategy The address of the strategy to remove.
     */
    function _removeStrategy(address _strategy) external onlyOwner {
        _removeStrategyInternal(_strategy);
    }

    /**
     * @notice Releases the strategy reserve.
     * @param _releaseAmount The amount to release.
     */
    function _releaseStrategyReserve(uint256 _releaseAmount) external onlyOwner {
        _decreaseStrategyReserve(_releaseAmount);
    }

    /**
     * @notice Sets the reward oracle address.
     * @param _rewardOracle The address of the new reward oracle.
     */
    function _setRewardOracle(address _rewardOracle) external onlyOwner {
        require(
            _rewardOracle != rewardOracle_ && IRewardOracle(_rewardOracle).core() == address(this),
            "_setRewardOracle: Invalid reward oracle address"
        );
        rewardOracle_ = _rewardOracle;
        emit SetRewardOracle(_rewardOracle);
    }

    /**
     * @notice Disables the reward oracle.
     */
    function _disableRewardOracle() external onlyOwner {
        rewardOracle_ = address(0);
        emit SetRewardOracle(address(0));
    }

    /**
     * @notice Deposits ETH into a strategy.
     * @param _strategy The address of the strategy.
     * @param _ethAmount The amount of ETH to deposit.
     */
    function _depositIntoStrategy(address _strategy, uint256 _ethAmount) external onlyOwner {
        _depositIntoStrategyInternal(_strategy, _ethAmount);
    }

    /**
     * @notice Recap the loss(Slashing and strategy losses).
     * @param _loss The amount of loss
     *
     * Requirements:
     * - the caller must be `owner`.
     */
    function _recapLoss(uint256 _loss) external onlyOwner {
        // Burn the loss from the treasury
        AETH.burnFrom(treasury_, _loss);
    }

    /**
     * @notice Deposits ETH into the contract for staking.
     * @param _validators The array of validators to deposit.
     */
    function deposit(
        Validator[] calldata _validators
    ) external whenNotPaused nonReentrant onlyManager depositBalanceCheck(_validators) {
        _deposit(_validators);
    }

    /**
     * @notice The whitelist operator deposits ETH into the contract for staking.
     * @param _validators The array of validators to deposit.
     * @param _depositRoot The expected deposit root.
     */
    function depositCheck(
        Validator[] calldata _validators,
        bytes32 _depositRoot
    ) external whenNotPaused nonReentrant onlyManager depositBalanceCheck(_validators) {
        _depositCheck(_validators, _depositRoot);
    }

    /**
     * @notice Supplies reward.
     * @param _amount The amount to supply.
     */
    function supplyReward(uint256 _amount) external whenNotPaused onlyRewardOracle {
        require(_amount != 0, "supplyReward: Amount cannot be 0");

        uint256 _treasuryAmount = _getTreasuryAmount(_amount);
        if (_treasuryAmount > 0) AETH.mint(treasury_, _treasuryAmount);

        uint256 _reward = _amount - _treasuryAmount;
        if (_reward > 0) AETH.mint(address(SAETH), _reward);
    }

    /**
     * @notice Receives earnings from a strategy.
     */
    function receiveStrategyEarning() external payable {
        _receiveStrategyEarning(msg.sender);
    }

    /**
     * @notice Submits a transaction to the CorePrimary contract.
     * @dev This function is called internally when a user submits a transaction.
     * @param _receiver The address of the receiver of the transaction.
     */
    function _submit(address _receiver) internal override whenNotPaused nonReentrant {
        _increaseReservesByRatio(msg.value);
        Submit._submit(_receiver);
    }

    /**
     * @dev Internal function to withdraw funds from the contract.
     * @param _sender The address of the sender.
     * @param _receiver The address of the receiver.
     * @param _amount The amount to withdraw.
     */
    function _withdraw(
        address _sender,
        address _receiver,
        uint256 _amount
    ) internal override whenNotPaused nonReentrant {
        AETH.burnFrom(_sender, _amount);
        WithdrawalQueue._withdraw(_sender, _receiver, _amount);
    }

    /**
     * @notice Claims the rewards by queue ID.
     * @param _sender The address of the sender.
     * @param _receiver The address of the receiver.
     * @param _queueIds The array of queue IDs.
     * @param _userQueueIds The set of user queue IDs.
     */
    function _claimByQueueId(
        address _sender,
        address _receiver,
        uint256[] memory _queueIds,
        EnumerableSet.UintSet storage _userQueueIds
    ) internal override whenNotPaused nonReentrant {
        WithdrawalQueue._claimByQueueId(_sender, _receiver, _queueIds, _userQueueIds);
    }

    /**
     * @dev Returns the amount of ETH that can be withdrawn from the contract.
     * @return _availableAmount The available amount of ETH that can be withdrawn.
     */
    function _withdrawableAmount() internal view override returns (uint256 _availableAmount) {
        uint256 _balance = address(this).balance;
        uint256 _locked = pendingClaimAmount_ + strategyReserve_;
        if (_balance > _locked) {
            _availableAmount = _balance - _locked;
        }
    }

    /**
     * @dev Returns the amount of ETH that can be claimed from the contract.
     * @return _claimableAmount The amount of ETH that can be claimed.
     */
    function _claimableAmount() internal view override returns (uint256) {
        return address(this).balance - strategyReserve_ + totalClaimed_;
    }

    /**
     * @notice Withdraws a specified amount of tokens with permit functionality.
     * @param _amount The amount of tokens to withdraw.
     * @param _receiver The address to receive the tokens.
     * @param _deadline The deadline for the permit.
     * @param _approveMax Boolean indicating whether to approve the maximum amount.
     * @param _v The recovery id of the permit signature.
     * @param _r The R value of the permit signature.
     * @param _s The S value of the permit signature.
     */
    function withdrawWithPermit(
        uint256 _amount,
        address _receiver,
        uint256 _deadline,
        bool _approveMax,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external {
        // Determine the value to be approved
        uint256 _value = _approveMax ? type(uint256).max : _amount;

        // Call the permit function of the token contract
        AETH.permit(msg.sender, address(this), _value, _deadline, _v, _r, _s);

        // Withdraw the specified amount of tokens
        _withdraw(msg.sender, _receiver, _amount);
    }

    /**
     * @notice Redeems a specified amount of saETH and withdraws the underlying ETH.
     * @param _saETHAmount The amount of saETH to redeem.
     */
    function redeemAndWithdraw(uint256 _saETHAmount) external {
        address _sender = msg.sender;
        uint256 _amount = SAETH.redeem(_saETHAmount, address(this), _sender);
        _withdraw(address(this), _sender, _amount);
    }

    /**
     * @notice Withdraws a specified amount of underlying ETH and saETH.
     * @param _amount The amount of underlying ETH to withdraw.
     */
    function redeemUnderlyingAndWithdraw(uint256 _amount) external {
        address _sender = msg.sender;
        SAETH.withdraw(_amount, address(this), _sender);
        _withdraw(address(this), _sender, _amount);
    }

    /**
     * @dev Returns the address of the reward oracle.
     * @return The address of the reward oracle.
     */
    function rewardOracle() external view returns (address) {
        return rewardOracle_;
    }

    /**
     * @dev Returns the amount of ETH received by the contract.
     * @return The amount of ETH received by the contract.
     */
    function received() external view returns (uint256) {
        return received_;
    }

    /**
     * @dev Returns whether the given address is a pause guardian.
     * @param _pauseGuardian The address to check.
     * @return Whether the given address is a pause guardian.
     */
    function isPauseGuardian(address _pauseGuardian) public view override returns (bool) {
        return PauseGuardian.isPauseGuardian(_pauseGuardian) || _pauseGuardian == owner();
    }

    /**
     * @dev Returns the staking reward.
     * @param _deposited The amount deposited.
     * @param _exited The amount exited.
     * @return _stakingReward The staking reward.
     */
    function stakingReward(uint256 _deposited, uint256 _exited) external view returns (uint256 _stakingReward) {
        uint256 _minuend = address(this).balance +
            totalWithdrawn_ +
            totalClaimed_ +
            depositStrategy_ +
            _deposited *
            DEPOSIT_SIZE;
        uint256 _subtrahend = submitted_ + received_ + receiveStrategy_ + _exited * DEPOSIT_SIZE;
        if (_minuend > _subtrahend) _stakingReward = _minuend - _subtrahend;
    }
}

// ============================================================
// FILE: contracts/interface/IaETH.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-IERC20PermitUpgradeable.sol";

interface IaETH is IERC20Upgradeable, IERC20PermitUpgradeable {
    function mint(address _receiver, uint256 _amount) external;

    function burn(uint256 _amount) external;

    function burnFrom(address _account, uint256 _amount) external;

    function minterMint(address _receiver, uint256 _amount) external;

    function minterBurn(uint256 _amount) external;

    function mintCap(address _minter) external view returns (uint256);

    function mintAmount(address _minter) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interface/IDepositContract.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

interface IDepositContract {
    function get_deposit_root() external view returns (bytes32 rootHash);

    function deposit(
        bytes calldata pubkey, // 48 bytes
        bytes calldata withdrawal_credentials, // 32 bytes
        bytes calldata signature, // 96 bytes
        bytes32 deposit_data_root
    ) external payable;
}

// ============================================================
// FILE: contracts/interface/IRewardOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

interface IRewardOracle {
    function core() external view returns (address);
}

// ============================================================
// FILE: contracts/interface/IsaETH.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

interface IsaETH {
    function deposit(uint256 _assets, address _receiver) external returns (uint256 _shares);

    function withdraw(uint256 _assets, address _receiver, address _owner) external returns (uint256 _shares);

    function redeem(uint256 _shares, address _receiver, address _owner) external returns (uint256 _assets);
}

// ============================================================
// FILE: contracts/interface/IStrategy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

interface IStrategy {
    function strategyReceive() external payable returns (uint256);

    function aETH() external view returns (address);

    function core() external view returns (address);
}

// ============================================================
// FILE: contracts/library/Manable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/**
 * @title Aspida's manager module
 * @author Aspida engineer
 */
abstract contract Manable {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @dev EnumerableSet of managers
    EnumerableSet.AddressSet internal managers_;

    /**
     * @dev Emitted when `manager` is added as `managers`.
     */
    event ManagerAdded(address manager);

    /**
     * @dev Emitted when `manager` is removed from `managers`.
     */
    event ManagerRemoved(address manager);

    /**
     * @dev Throws if called by any account other than the managers.
     */
    modifier onlyManager() {
        require(managers_.contains(msg.sender), "onlyManager: caller is not manager");
        _;
    }

    /**
     * @notice Add `manager` into managers.
     * If `manager` have not been a manager, emits a `ManagerAdded` event.
     *
     * @param _manager The manager to add
     */
    function _addManagerInternal(address _manager) internal virtual {
        require(_manager != address(0), "_addManagerInternal: _manager the zero address");
        require(managers_.add(_manager), "_addManagerInternal: _manager has been added");
        emit ManagerAdded(_manager);
    }

    /**
     * @notice Remove `manager` from managers.
     * If `manager` is a manager, emits a `ManagerRemoved` event.
     *
     * @param _manager The manager to remove
     */
    function _removeManagerInternal(address _manager) internal virtual {
        require(managers_.remove(_manager), "_removeManagerInternal: _manager has been removed");
        emit ManagerRemoved(_manager);
    }

    /**
     * @notice Return all managers
     * @return _managers The list of manager addresses
     */
    function managers() public view returns (address[] memory _managers) {
        _managers = managers_.values();
    }

    /**
     * @dev Check if address is manager
     * @param _manager The address to check
     * @return Is manager boolean, true: is the manager; false: not the manager
     */
    function isManager(address _manager) public view returns (bool) {
        return managers_.contains(_manager);
    }
}

// ============================================================
// FILE: contracts/library/PauseGuardian.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/**
 * @title Aspida's PauseGuardian module
 * @author Aspida engineer
 */
abstract contract PauseGuardian is PausableUpgradeable {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @dev EnumerableSet of pauseGuardians
    EnumerableSet.AddressSet internal pauseGuardians_;

    /**
     * @dev Emitted when `pauseGuardian` is added as `pauseGuardian`.
     */
    event PauseGuardianAdded(address pauseGuardian);

    /**
     * @dev Emitted when `pauseGuardian` is removed from `pauseGuardians`.
     */
    event PauseGuardianRemoved(address pauseGuardian);

    /**
     * @dev Throws if called by any account other than pauseGuardian.
     */
    modifier onlyPauseGuardian() {
        require(isPauseGuardian(msg.sender), "onlyPauseGuardian: caller is not pauseGuardian");
        _;
    }

    /**
     * @notice Add `pauseGuardian` into pauseGuardians.
     * If `pauseGuardian` have not been a pauseGuardian, emits a `PauseGuardianAdded` event.
     *
     * @param _pauseGuardian The pauseGuardian to add
     */
    function _addPauseGuardianInternal(address _pauseGuardian) internal virtual {
        require(_pauseGuardian != address(0), "_addPauseGuardianInternal: _pauseGuardian the zero address");
        require(pauseGuardians_.add(_pauseGuardian), "_addPauseGuardianInternal: _pauseGuardian has been added");
        emit PauseGuardianAdded(_pauseGuardian);
    }

    /**
     * @notice Remove `pauseGuardian` from pauseGuardians.
     * If `pauseGuardian` is a pauseGuardian, emits a `PauseGuardianRemoved` event.
     *
     * @param _pauseGuardian The pauseGuardian to remove
     */
    function _removePauseGuardianInternal(address _pauseGuardian) internal virtual {
        require(
            pauseGuardians_.remove(_pauseGuardian),
            "_removePauseGuardianInternal: _pauseGuardian has been removed"
        );
        emit PauseGuardianRemoved(_pauseGuardian);
    }

    /**
     * @notice Return all pauseGuardians
     * @return _pauseGuardians The list of pauseGuardian addresses
     */
    function pauseGuardians() public view returns (address[] memory _pauseGuardians) {
        _pauseGuardians = pauseGuardians_.values();
    }

    /**
     * @dev Check if address is pauseGuardian
     * @param _pauseGuardian The address to check
     * @return Is pauseGuardian boolean, true: is the pauseGuardian; false: not the pauseGuardian
     */
    function isPauseGuardian(address _pauseGuardian) public view virtual returns (bool) {
        return pauseGuardians_.contains(_pauseGuardian);
    }
}

// ============================================================
// FILE: contracts/library/TransferHelper.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @dev Library for safely executing transfers and approvals of ERC20 tokens and ETH.
 */
library TransferHelper {
    /**
     * @dev Safely approves `value` tokens for `to` by calling the `approve` function on `token`.
     * @param token The address of the ERC20 token.
     * @param to The address to approve tokens for.
     * @param value The number of tokens to approve.
     */
    function safeApprove(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "TransferHelper: APPROVE_FAILED");
    }

    /**
     * @dev Safely transfers `value` tokens to `to` by calling the `transfer` function on `token`.
     * @param token The address of the ERC20 token.
     * @param to The address to transfer tokens to.
     * @param value The number of tokens to transfer.
     */
    function safeTransfer(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "TransferHelper: TRANSFER_FAILED");
    }

    /**
     * @dev Safely transfers `value` tokens from `from` to `to` by calling the `transferFrom` function on `token`.
     * @param token The address of the ERC20 token.
     * @param from The address to transfer tokens from.
     * @param to The address to transfer tokens to.
     * @param value The number of tokens to transfer.
     */
    function safeTransferFrom(address token, address from, address to, uint value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "TransferHelper: TRANSFER_FROM_FAILED");
    }

    /**
     * @dev Safely transfers `value` ETH to `to`.
     * @param to The address to transfer ETH to.
     * @param value The amount of ETH to transfer.
     */
    function safeTransferETH(address to, uint value) internal {
        (bool success, ) = to.call{ value: value }(new bytes(0));
        require(success, "TransferHelper: ETH_TRANSFER_FAILED");
    }
}
