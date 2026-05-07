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
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20Upgradeable.sol";
import "../extensions/IERC20PermitUpgradeable.sol";
import "../../../utils/AddressUpgradeable.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20Upgradeable {
    using AddressUpgradeable for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20Upgradeable token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20Upgradeable token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20Upgradeable token, address spender, uint256 value) internal {
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
    function safeIncreaseAllowance(IERC20Upgradeable token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20Upgradeable token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20Upgradeable token, address spender, uint256 value) internal {
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
        IERC20PermitUpgradeable token,
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
    function _callOptionalReturn(IERC20Upgradeable token, bytes memory data) private {
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
    function _callOptionalReturnBool(IERC20Upgradeable token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && AddressUpgradeable.isContract(address(token));
    }
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
// FILE: @openzeppelin/contracts/token/ERC20/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./IERC20.sol";
import "./extensions/IERC20Metadata.sol";
import "../../utils/Context.sol";

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
contract ERC20 is Context, IERC20, IERC20Metadata {
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
    constructor(string memory name_, string memory symbol_) {
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
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
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
// FILE: @uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router01.sol
// ============================================================

pragma solidity >=0.6.2;

interface IUniswapV2Router01 {
    function factory() external pure returns (address);
    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB, uint liquidity);
    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);
    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB);
    function removeLiquidityETH(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external returns (uint amountToken, uint amountETH);
    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountA, uint amountB);
    function removeLiquidityETHWithPermit(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountToken, uint amountETH);
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    function swapTokensForExactTokens(
        uint amountOut,
        uint amountInMax,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
        payable
        returns (uint[] memory amounts);
    function swapTokensForExactETH(uint amountOut, uint amountInMax, address[] calldata path, address to, uint deadline)
        external
        returns (uint[] memory amounts);
    function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
        returns (uint[] memory amounts);
    function swapETHForExactTokens(uint amountOut, address[] calldata path, address to, uint deadline)
        external
        payable
        returns (uint[] memory amounts);

    function quote(uint amountA, uint reserveA, uint reserveB) external pure returns (uint amountB);
    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) external pure returns (uint amountOut);
    function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut) external pure returns (uint amountIn);
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);
    function getAmountsIn(uint amountOut, address[] calldata path) external view returns (uint[] memory amounts);
}

// ============================================================
// FILE: @uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol
// ============================================================

pragma solidity >=0.6.2;

import './IUniswapV2Router01.sol';

interface IUniswapV2Router02 is IUniswapV2Router01 {
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external returns (uint amountETH);
    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountETH);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;
    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
}

// ============================================================
// FILE: @uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Callback for IUniswapV3PoolActions#swap
/// @notice Any contract that calls IUniswapV3PoolActions#swap must implement this interface
interface IUniswapV3SwapCallback {
    /// @notice Called to `msg.sender` after executing a swap via IUniswapV3Pool#swap.
    /// @dev In the implementation you must pay the pool tokens owed for the swap.
    /// The caller of this method must be checked to be a UniswapV3Pool deployed by the canonical UniswapV3Factory.
    /// amount0Delta and amount1Delta can both be 0 if no tokens were swapped.
    /// @param amount0Delta The amount of token0 that was sent (negative) or must be received (positive) by the pool by
    /// the end of the swap. If positive, the callback must send that amount of token0 to the pool.
    /// @param amount1Delta The amount of token1 that was sent (negative) or must be received (positive) by the pool by
    /// the end of the swap. If positive, the callback must send that amount of token1 to the pool.
    /// @param data Any data passed through by the caller via the IUniswapV3PoolActions#swap call
    function uniswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: @uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;
pragma abicoder v2;

import '@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol';

/// @title Router token swapping functionality
/// @notice Functions for swapping tokens via Uniswap V3
interface ISwapRouter is IUniswapV3SwapCallback {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    /// @notice Swaps `amountIn` of one token for as much as possible of another token
    /// @param params The parameters necessary for the swap, encoded as `ExactInputSingleParams` in calldata
    /// @return amountOut The amount of the received token
    function exactInputSingle(ExactInputSingleParams calldata params) external payable returns (uint256 amountOut);

    struct ExactInputParams {
        bytes path;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
    }

    /// @notice Swaps `amountIn` of one token for as much as possible of another along the specified path
    /// @param params The parameters necessary for the multi-hop swap, encoded as `ExactInputParams` in calldata
    /// @return amountOut The amount of the received token
    function exactInput(ExactInputParams calldata params) external payable returns (uint256 amountOut);

    struct ExactOutputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 deadline;
        uint256 amountOut;
        uint256 amountInMaximum;
        uint160 sqrtPriceLimitX96;
    }

    /// @notice Swaps as little as possible of one token for `amountOut` of another token
    /// @param params The parameters necessary for the swap, encoded as `ExactOutputSingleParams` in calldata
    /// @return amountIn The amount of the input token
    function exactOutputSingle(ExactOutputSingleParams calldata params) external payable returns (uint256 amountIn);

    struct ExactOutputParams {
        bytes path;
        address recipient;
        uint256 deadline;
        uint256 amountOut;
        uint256 amountInMaximum;
    }

    /// @notice Swaps as little as possible of one token for `amountOut` of another along the specified path (reversed)
    /// @param params The parameters necessary for the multi-hop swap, encoded as `ExactOutputParams` in calldata
    /// @return amountIn The amount of the input token
    function exactOutput(ExactOutputParams calldata params) external payable returns (uint256 amountIn);
}

// ============================================================
// FILE: contracts/GuardedLaunchUpgradable.sol
// ============================================================

//SPDX-License-Identifier: Apache 2.0
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/// @notice This abstract contract is used to add an updatable limit on the total value locked
/// that the contract can have. It also have an emergency method that allows the owner to pull
/// funds into predefined recovery address
/// @dev Inherit this contract and add the _guarded method to the child contract
abstract contract GuardedLaunchUpgradable is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
  using SafeERC20Upgradeable for IERC20Upgradeable;

  // ERROR MESSAGES:
  // 0 = is 0
  // 1 = already initialized
  // 2 = Contract limit reached

  // TVL limit in underlying value
  uint256 public limit;
  // recovery address
  address public governanceRecoveryFund;

  /// @param _limit TVL limit. (0 means unlimited)
  /// @param _governanceRecoveryFund recovery address
  /// @param _owner owner address
  function __GuardedLaunch_init(uint256 _limit, address _governanceRecoveryFund, address _owner) internal {
    require(_governanceRecoveryFund != address(0), '0');
    require(_owner != address(0), '0');
    // Initialize inherited contracts
    OwnableUpgradeable.__Ownable_init();
    ReentrancyGuardUpgradeable.__ReentrancyGuard_init();
    // Initialize state variables
    limit = _limit;
    governanceRecoveryFund = _governanceRecoveryFund;
    // Transfer ownership
    transferOwnership(_owner);
  }

  /// @notice this check should be called inside the child contract on deposits to check that the
  /// TVL didn't exceed a threshold
  /// @param _amount new amount to deposit
  function _guarded(uint256 _amount) internal view {
    uint256 _limit = limit;
    if (_limit == 0) {
      return;
    }
    require(getContractValue() + _amount <= _limit, '2');
  }

  /// @dev Check that the second function is not called in the same tx from the same tx.origin
  function _checkOnlyOwner() internal view {
    require(owner() == msg.sender, '6');
  }

  /// @notice abstract method, should return the TVL in underlyings
  function getContractValue() public virtual view returns (uint256);

  /// @notice set contract TVL limit
  /// @param _limit limit in underlying value, 0 means no limit
  function _setLimit(uint256 _limit) external {
    _checkOnlyOwner();
    limit = _limit;
  }

  /// @notice Emergency method, tokens gets transferred to the governanceRecoveryFund address
  /// @param _token address of the token to transfer
  /// @param _value amount to transfer
  function transferToken(address _token, uint256 _value) external {
    _checkOnlyOwner();
    IERC20Upgradeable(_token).safeTransfer(governanceRecoveryFund, _value);
  }
}

// ============================================================
// FILE: contracts/IdleCDO.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import '@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol';
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import "./interfaces/IIdleCDOStrategy.sol";
import "./interfaces/IERC20Detailed.sol";

import "./GuardedLaunchUpgradable.sol";
import "./IdleCDOTranche.sol";
import "./IdleCDOStorage.sol";

/// @title A perpetual tranche implementation
/// @author Idle Labs Inc.
/// @notice More info and high level overview in the README
/// @dev The contract is upgradable, to add storage slots, create IdleCDOStorageVX and inherit from IdleCDOStorage, then update the definitaion below
contract IdleCDO is PausableUpgradeable, GuardedLaunchUpgradable, IdleCDOStorage {
  using SafeERC20Upgradeable for IERC20Detailed;

  // ERROR MESSAGES:
  // 0 = is 0
  // 1 = already initialized
  // 2 = Contract limit reached
  // 3 = Tranche withdraw not allowed (Paused or in shutdown)
  // 4 = Default, wait shutdown
  // 5 = Amount too low
  // 6 = Not authorized
  // 7 = Amount too high
  // 8 = Same block
  // 9 = Invalid

  // Used to prevent initialization of the implementation contract
  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    token = address(1);
  }

  // ###################
  // Initializer
  // ###################

  /// @notice can only be called once
  /// @dev Initialize the upgradable contract
  /// @param _limit contract value limit, can be 0
  /// @param _guardedToken underlying token
  /// @param _governanceFund address where funds will be sent in case of emergency
  /// @param _owner guardian address (can pause, unpause and call emergencyShutdown)
  /// @param _rebalancer rebalancer address
  /// @param _strategy strategy address
  /// @param _trancheAPRSplitRatio trancheAPRSplitRatio value
  /// @param // deprecated
  /// @param // deprecated _incentiveTokens array of addresses for incentive tokens
  function initialize(
    uint256 _limit, address _guardedToken, address _governanceFund, address _owner, // GuardedLaunch args
    address _rebalancer,
    address _strategy,
    uint256 _trancheAPRSplitRatio, // for AA tranches, so eg 10000 means 10% interest to AA and 90% BB
    uint256, // Deprecated
    address[] memory // Deprecated
  ) external initializer {
    require(token == address(0), '1');
    require(_rebalancer != address(0), '0');
    require(_strategy != address(0), '0');
    require(_guardedToken != address(0), '0');
    require( _trancheAPRSplitRatio <= FULL_ALLOC, '7');
    // Initialize contracts
    PausableUpgradeable.__Pausable_init();
    // check for _governanceFund and _owner != address(0) are inside GuardedLaunchUpgradable
    GuardedLaunchUpgradable.__GuardedLaunch_init(_limit, _governanceFund, _owner);
    // Deploy Tranches tokens
    address _strategyToken = IIdleCDOStrategy(_strategy).strategyToken();
    // get strategy token symbol (eg. idleDAI)
    string memory _symbol = IERC20Detailed(_strategyToken).symbol();
    // create tranche tokens (concat strategy token symbol in the name and symbol of the tranche tokens)
    AATranche = address(new IdleCDOTranche(_concat(string("IdleCDO AA Tranche - "), _symbol), _concat(string("AA_"), _symbol)));
    BBTranche = address(new IdleCDOTranche(_concat(string("IdleCDO BB Tranche - "), _symbol), _concat(string("BB_"), _symbol)));
    // Set CDO params
    token = _guardedToken;
    strategy = _strategy;
    strategyToken = _strategyToken;
    rebalancer = _rebalancer;
    trancheAPRSplitRatio = _trancheAPRSplitRatio;
    uint256 _oneToken = 10**(IERC20Detailed(_guardedToken).decimals());
    oneToken = _oneToken;
    uniswapRouterV2 = IUniswapV2Router02(0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D);
    weth = address(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    // incentiveTokens = _incentiveTokens; [DEPRECATED]
    priceAA = _oneToken;
    priceBB = _oneToken;
    unlentPerc = 2000; // 2%
    // # blocks, after an harvest, during which harvested rewards gets progressively unlocked
    releaseBlocksPeriod = 6400; // about 1 day
    // Set flags
    allowAAWithdraw = true;
    allowBBWithdraw = true;
    revertIfTooLow = true;
    // skipDefaultCheck = false is the default value
    // Set allowance for strategy
    _allowUnlimitedSpend(_guardedToken, _strategy);
    _allowUnlimitedSpend(strategyToken, _strategy);
    // Save current strategy price
    lastStrategyPrice = _strategyPrice();
    // Fee params
    fee = 15000; // 15% performance fee
    feeReceiver = address(0xFb3bD022D5DAcF95eE28a6B07825D4Ff9C5b3814); // treasury multisig
    guardian = _owner;
    // feeSplit = 0; // default all to feeReceiver
    isAYSActive = true; // adaptive yield split
    minAprSplitAYS = AA_RATIO_LIM_DOWN; // AA tranche will get min 50% of the yield

    maxDecreaseDefault = 5000; // 5% decrease for triggering a default
    _additionalInit();
  }

  /// @notice used by child contracts (cdo variants) if anything needs to be done on/after init
  function _additionalInit() internal virtual {}

  // ###############
  // Public methods
  // ###############

  /// @notice pausable
  /// @dev msg.sender should approve this contract first to spend `_amount` of `token`
  /// @param _amount amount of `token` to deposit
  /// @return AA tranche tokens minted
  function depositAA(uint256 _amount) external returns (uint256) {
    return _deposit(_amount, AATranche, address(0));
  }

  /// @notice pausable in _deposit
  /// @dev msg.sender should approve this contract first to spend `_amount` of `token`
  /// @param _amount amount of `token` to deposit
  /// @return BB tranche tokens minted
  function depositBB(uint256 _amount) external returns (uint256) {
    return _deposit(_amount, BBTranche, address(0));
  }

  /// @notice pausable
  /// @dev msg.sender should approve this contract first to spend `_amount` of `token`
  /// @param _amount amount of `token` to deposit
  /// @param _referral address of the referral
  /// @return AA tranche tokens minted
  function depositAARef(uint256 _amount, address _referral) external returns (uint256) {
    return _deposit(_amount, AATranche, _referral);
  }

  /// @notice pausable in _deposit
  /// @dev msg.sender should approve this contract first to spend `_amount` of `token`
  /// @param _amount amount of `token` to deposit
  /// @param _referral address of the referral
  /// @return BB tranche tokens minted
  function depositBBRef(uint256 _amount, address _referral) external returns (uint256) {
    return _deposit(_amount, BBTranche, _referral);
  }

  /// @notice pausable in _deposit
  /// @param _amount amount of AA tranche tokens to burn
  /// @return underlying tokens redeemed
  function withdrawAA(uint256 _amount) external returns (uint256) {
    require(!paused() || allowAAWithdraw, '3');
    return _withdraw(_amount, AATranche);
  }

  /// @notice pausable
  /// @param _amount amount of BB tranche tokens to burn
  /// @return underlying tokens redeemed
  function withdrawBB(uint256 _amount) external returns (uint256) {
    require(!paused() || allowBBWithdraw, '3');
    return _withdraw(_amount, BBTranche);
  }

  // ###############
  // Views
  // ###############

  /// @param _tranche tranche address
  /// @return tranche price, in underlyings, at the last interaction (not considering interest earned 
  /// since last interaction)
  function tranchePrice(address _tranche) external view returns (uint256) {
    return _tranchePrice(_tranche);
  }

  /// @notice calculates the current net TVL (in `token` terms)
  /// @dev unclaimed rewards (gov tokens) and `unclaimedFees` are not counted. 
  /// Harvested rewards are counted only if enough blocks have passed (`_lockedRewards`)
  function getContractValue() public override view returns (uint256) {
    address _strategyToken = strategyToken;
    uint256 strategyTokenDecimals = IERC20Detailed(_strategyToken).decimals();
    // TVL is the sum of unlent balance in the contract + the balance in lending - harvested but locked rewards - unclaimedFees
    // Balance in lending is the value of the interest bearing assets (strategyTokens) in this contract
    // TVL = (strategyTokens * strategy token price) + unlent balance - lockedRewards - unclaimedFees
    return (_contractTokenBalance(_strategyToken) * _strategyPrice() / (10**(strategyTokenDecimals))) +
            _contractTokenBalance(token) -
            _lockedRewards() -
            unclaimedFees;
  }

  /// @param _tranche tranche address
  /// @return actual apr given current ratio between AA and BB tranches
  function getApr(address _tranche) external view returns (uint256) {
    return _getApr(_tranche, _getAARatio(false));
  }

  /// @notice calculates the current AA tranches ratio
  /// @dev _virtualBalance is used to have a more accurate/recent value for the AA ratio
  /// because it calculates the balance after splitting the accrued interest since the
  /// last depositXX/withdrawXX/harvest
  /// @return AA tranches ratio (in underlying value) considering all interest
  function getCurrentAARatio() external view returns (uint256) {
    return _getAARatio(false);
  }

  /// @notice calculates the current tranches price considering the interest/loss that is yet to be splitted
  /// ie the interest/loss generated since the last update of priceAA and priceBB (done on depositXX/withdrawXX/harvest)
  /// @param _tranche address of the requested tranche
  /// @return _virtualPrice tranche price considering all interest/losses
  function virtualPrice(address _tranche) public virtual view returns (uint256 _virtualPrice) {
    // get both NAVs, because we need the total NAV anyway
    uint256 _lastNAVAA = lastNAVAA;
    uint256 _lastNAVBB = lastNAVBB;

    (_virtualPrice, ) = _virtualPriceAux(
      _tranche,
      getContractValue(), // nav
      _lastNAVAA + _lastNAVBB, // lastNAV
      _tranche == AATranche ? _lastNAVAA : _lastNAVBB, // lastTrancheNAV
      trancheAPRSplitRatio
    );
  }

  /// @notice [DEPRECATED]
  /// @return array with addresses of incentiveTokens (can be empty)
  function getIncentiveTokens() external view returns (address[] memory) {
    return incentiveTokens;
  }

  // ###############
  // Internal
  // ###############

  /// @notice method used to check if depositor has enough stkIDLE per unit of underlying to access the vault
  /// @param _amount amount of underlying to deposit
  function _checkStkIDLEBal(address _tranche, uint256 _amount) internal view {
    uint256 _stkIDLEPerUnderlying = stkIDLEPerUnderlying;
    // check if stkIDLE requirement is active for _tranche
    if (_stkIDLEPerUnderlying == 0 || 
      _tranche == BBTranche && BBStaking == address(0) || 
      _tranche == AATranche && AAStaking == address(0)) {
      return;
    }

    uint256 trancheBal = IERC20Detailed(_tranche).balanceOf(msg.sender);
    // We check if sender deposited in the same tranche previously and add the bal to _amount
    uint256 bal = _amount + (trancheBal > 0 ? (trancheBal * _tranchePrice(_tranche) / ONE_TRANCHE_TOKEN) : 0);
    require(
      IERC20(STK_IDLE).balanceOf(msg.sender) >= 
      bal * _stkIDLEPerUnderlying / oneToken, 
      '7'
    );
  }

  /// @notice method used to deposit `token` and mint tranche tokens
  /// Ideally users should deposit right after an `harvest` call to maximize profit
  /// @dev this contract must be approved to spend at least _amount of `token` before calling this method
  /// automatically reverts on lending provider default (_strategyPrice decreased)
  /// @param _amount amount of underlyings (`token`) to deposit
  /// @param _tranche tranche address
  /// @param _referral referral address
  /// @return _minted number of tranche tokens minted
  function _deposit(uint256 _amount, address _tranche, address _referral) internal virtual whenNotPaused returns (uint256 _minted) {
    if (_amount == 0) {
      return _minted;
    }
    // check that we are not depositing more than the contract available limit
    _guarded(_amount);
    // set _lastCallerBlock hash
    _updateCallerBlock();
    // check if _strategyPrice decreased
    _checkDefault();
    // interest accrued since last depositXX/withdrawXX/harvest is splitted between AA and BB
    // according to trancheAPRSplitRatio. NAVs of AA and BB are updated and tranche
    // prices adjusted accordingly
    _updateAccounting();
    // check if depositor has enough stkIDLE for the amount to be deposited
    _checkStkIDLEBal(_tranche, _amount);
    // get underlyings from sender
    address _token = token;
    uint256 _preBal = _contractTokenBalance(_token);
    IERC20Detailed(_token).safeTransferFrom(msg.sender, address(this), _amount);
    // mint tranche tokens according to the current tranche price
    _minted = _mintShares(_contractTokenBalance(_token) - _preBal, msg.sender, _tranche);
    // update trancheAPRSplitRatio
    _updateSplitRatio(_getAARatio(true));

    if (_referral != address(0)) {
      emit Referral(_amount, _referral);
    }
  }

  /// @notice this method is called on depositXX/withdrawXX/harvest and
  /// updates the accounting of the contract and effectively splits the yield/loss between the
  /// AA and BB tranches
  /// @dev this method:
  /// - update tranche prices (priceAA and priceBB)
  /// - update net asset value for both tranches (lastNAVAA and lastNAVBB)
  /// - update fee accounting (unclaimedFees)
  function _updateAccounting() internal virtual {
    uint256 _lastNAVAA = lastNAVAA;
    uint256 _lastNAVBB = lastNAVBB;
    uint256 _lastNAV = _lastNAVAA + _lastNAVBB;
    uint256 nav = getContractValue();
    uint256 _aprSplitRatio = trancheAPRSplitRatio;
    // If gain is > 0, then collect some fees in `unclaimedFees`
    if (nav > _lastNAV) {
      unclaimedFees += (nav - _lastNAV) * fee / FULL_ALLOC;
    }
    (uint256 _priceAA, int256 _totalAAGain) = _virtualPriceAux(AATranche, nav, _lastNAV, _lastNAVAA, _aprSplitRatio);
    (uint256 _priceBB, int256 _totalBBGain) = _virtualPriceAux(BBTranche, nav, _lastNAV, _lastNAVBB, _aprSplitRatio);
    lastNAVAA = uint256(int256(_lastNAVAA) + _totalAAGain);

    // if we have a loss and it's gte last junior NAV we trigger a default
    if (_totalBBGain < 0 && -_totalBBGain >= int256(_lastNAVBB)) {
      // revert with 'default' error (4) if skipDefaultCheck is false, as seniors will have a loss too not covered. 
      // `updateAccounting` should be manually called to distribute loss
      require(skipDefaultCheck, "4");
      // This path will be called when a default happens and guardian calls
      // `updateAccounting` after setting skipDefaultCheck
      lastNAVBB = 0;
      _emergencyShutdown();
    } else {
      // we add the gain to last saved NAV
      lastNAVBB = uint256(int256(_lastNAVBB) + _totalBBGain);
    }
    priceAA = _priceAA;
    priceBB = _priceBB;
  }

  /// @notice calculates the NAV for a tranche considering the interest that is yet to be splitted
  /// @param _tranche address of the requested tranche
  /// @return net asset value, in underlying tokens, for _tranche considering all nav
  function _virtualBalance(address _tranche) internal view returns (uint256) {
    // balance is: tranche supply * virtual tranche price
    return IdleCDOTranche(_tranche).totalSupply() * virtualPrice(_tranche) / ONE_TRANCHE_TOKEN;
  }

  /// @notice calculates the NAV for a tranche without considering the interest that is yet to be splitted
  /// @param _tranche address of the requested tranche
  /// @return net asset value, in underlying tokens, for _tranche
  function _instantBalance(address _tranche) internal view returns (uint256) {
    return IdleCDOTranche(_tranche).totalSupply() * _tranchePrice(_tranche) / ONE_TRANCHE_TOKEN;
  }

  /// @notice calculates the current tranches price considering the interest/loss that is yet to be splitted and the
  /// total gain/loss for a specific tranche
  /// @dev Main scenarios covered:
  /// - if there is a loss on the lending protocol (ie strategy price decrease) up to maxDecreaseDefault (_checkDefault method), the loss is
  ///     - totally absorbed by junior holders if they have enough TVL and deposits/redeems work as normal
  ///     - otherwise a 'default' error (4) is raised and deposits/redeems are blocked
  /// - if there is a loss on the lending protocol (ie strategy price decrease) more than maxDecreaseDefault all deposits and redeems
  ///   are blocked and a 'default' error (4) is raised
  /// - if there is a loss somewhere not in the lending protocol (ie in our contracts) and the TVL decreases then the same process as above
  ///   applies, the only difference is that maxDecreaseDefault is not considered
  /// In any case, once a loss happens, it only gets accounted when new deposits/redeems are made, but those are blocked.
  /// For this reason a protected updateAccounting method has been added which should be used to distributed the loss after a default event
  /// @param _tranche address of the requested tranche
  /// @param _nav current NAV
  /// @param _lastNAV last saved NAV
  /// @param _lastTrancheNAV last saved tranche NAV
  /// @param _trancheAPRSplitRatio APR split ratio for AA tranche
  /// @return _virtualPrice tranche price considering all interest
  /// @return _totalTrancheGain (int256) tranche gain/loss since last update
  function _virtualPriceAux(
    address _tranche,
    uint256 _nav,
    uint256 _lastNAV,
    uint256 _lastTrancheNAV,
    uint256 _trancheAPRSplitRatio
  ) internal virtual view returns (uint256 _virtualPrice, int256 _totalTrancheGain) {
    // Check if there are tranche holders
    uint256 trancheSupply = IdleCDOTranche(_tranche).totalSupply();
    if (_lastNAV == 0 || trancheSupply == 0) {
      return (oneToken, 0);
    }

    // In order to correctly split the interest generated between AA and BB tranche holders
    // (according to the trancheAPRSplitRatio) we need to know how much interest/loss we gained
    // since the last price update (during a depositXX/withdrawXX/harvest)
    // To do that we need to get the current value of the assets in this contract
    // and the last saved one (always during a depositXX/withdrawXX/harvest)
    // Calculate the total gain/loss
    int256 totalGain = int256(_nav) - int256(_lastNAV);
    // If there is no gain/loss return the current price
    if (totalGain == 0) {
      return (_tranchePrice(_tranche), 0);
    }

    // Remove performance fee for gains
    if (totalGain > 0) {
      totalGain -= totalGain * int256(fee) / int256(FULL_ALLOC);
    }

    address _AATranche = AATranche;
    address _BBTranche = BBTranche;
    bool _isAATranche = _tranche == _AATranche;
    // Get the supply of the other tranche and
    // if it's 0 then give all gain to the current `_tranche` holders
    if (IdleCDOTranche(_isAATranche ? _BBTranche : _AATranche).totalSupply() == 0) {
      _totalTrancheGain = totalGain;
    } else {
      // if we gained something or the loss is between 0 and lossToleranceBps then we socialize the gain/loss
      if (totalGain > 0) {
        // Split the net gain, according to _trancheAPRSplitRatio, with precision loss favoring the AA tranche.
        int256 totalBBGain = totalGain * int256(FULL_ALLOC - _trancheAPRSplitRatio) / int256(FULL_ALLOC);
        // The new NAV for the tranche is old NAV + total gain for the tranche
        _totalTrancheGain = _isAATranche ? (totalGain - totalBBGain) : totalBBGain;
      } else if (uint256(-totalGain) <= (lossToleranceBps * _lastNAV) / FULL_ALLOC) {
        // Split the loss, according to TVL ratio instead of _trancheAPRSplitRatio (loss socialized between all tranches)
        uint256 _lastNAVBB = lastNAVBB;
        int256 totalBBLoss = totalGain * int256(_lastNAVBB) / int256(lastNAVAA + _lastNAVBB);
        // The new NAV for the tranche is old NAV - loss for the tranche
        _totalTrancheGain = _isAATranche ? (totalGain - totalBBLoss) : totalBBLoss;
      } else { // totalGain is negative here
        // Redirect the whole loss (which should be < maxDecreaseDefault) to junior holders
        int256 _juniorTVL = int256(_isAATranche ? _lastNAV - _lastTrancheNAV : _lastTrancheNAV);
        int256 _newJuniorTVL = _juniorTVL + totalGain; 
        // if junior holders have enough TVL to cover
        if (_newJuniorTVL > 0) {
          // then juniors get all loss (totalGain) and senior gets 0 loss
          _totalTrancheGain = _isAATranche ? int256(0) : totalGain;
        } else {
          // otherwise all loss minus junior tvl to senior
          if (!_isAATranche) {
            // juniors have no more claims, price is set to 0, gain is set to -juniorTVL
            return (0, -_juniorTVL);
          }
          // seniors get the loss - old junior TVL
          _totalTrancheGain = _newJuniorTVL;
        }
      }
    }
    // Split the new NAV (_lastTrancheNAV + _totalTrancheGain) per tranche token
    _virtualPrice = uint256(int256(_lastTrancheNAV) + _totalTrancheGain) * ONE_TRANCHE_TOKEN / trancheSupply;
  }

  /// @notice mint tranche tokens and updates tranche last NAV
  /// @param _amount, in underlyings, to convert in tranche tokens
  /// @param _to receiver address of the newly minted tranche tokens
  /// @param _tranche tranche address
  /// @return _minted number of tranche tokens minted
  function _mintShares(uint256 _amount, address _to, address _tranche) internal virtual returns (uint256 _minted) {
    // calculate # of tranche token to mint based on current tranche price: _amount / tranchePrice
    _minted = _amount * ONE_TRANCHE_TOKEN / _tranchePrice(_tranche);
    IdleCDOTranche(_tranche).mint(_to, _minted);
    // update NAV with the _amount of underlyings added
    if (_tranche == AATranche) {
      lastNAVAA += _amount;
    } else {
      lastNAVBB += _amount;
    }
  }

  /// @notice convert fees (`unclaimedFees`) in AA tranche tokens
  /// @dev this will be called only during harvests
  function _depositFees() internal {
    uint256 _amount = unclaimedFees;
    if (_amount != 0) {
      // mint tranches tokens (always AA) to this contract
      _mintShares(_amount, feeReceiver, AATranche);
      // reset unclaimedFees counter
      unclaimedFees = 0;
    }
  }

  /// @notice It allows users to burn their tranche token and redeem their principal + interest back
  /// @dev automatically reverts on lending provider default (_strategyPrice decreased).
  /// @param _amount in tranche tokens
  /// @param _tranche tranche address
  /// @return toRedeem number of underlyings redeemed
  function _withdraw(uint256 _amount, address _tranche) virtual internal nonReentrant returns (uint256 toRedeem) {
    // check if a deposit is made in the same block from the same user
    _checkSameTx();
    // check if _strategyPrice decreased
    _checkDefault();
    // accrue interest to tranches and updates tranche prices
    _updateAccounting();
    // redeem all user balance if 0 is passed as _amount
    if (_amount == 0) {
      _amount = IERC20Detailed(_tranche).balanceOf(msg.sender);
    }
    require(_amount != 0, '0');
    address _token = token;
    // get current available unlent balance
    uint256 balanceUnderlying = _contractTokenBalance(_token);
    // Calculate the amount to redeem
    toRedeem = _amount * _tranchePrice(_tranche) / ONE_TRANCHE_TOKEN;
    uint256 _want = toRedeem;
    if (toRedeem > balanceUnderlying) {
      // if the unlent balance is not enough we try to redeem what's missing directly from the strategy
      // and then add it to the current unlent balance
      // NOTE: A difference of up to 100 wei due to rounding is tolerated
      toRedeem = _liquidate(toRedeem - balanceUnderlying, revertIfTooLow) + balanceUnderlying;
    }
    // burn tranche token
    IdleCDOTranche(_tranche).burn(msg.sender, _amount);

    // update NAV with the _amount of underlyings removed
    if (_tranche == AATranche) {
      lastNAVAA -= _want;
    } else {
      lastNAVBB -= _want;
    }

    // update trancheAPRSplitRatio
    _updateSplitRatio(_getAARatio(true));
  
    // send underlying to msg.sender. Keep this at the end of the function to avoid 
    // potential read only reentrancy on cdo variants that have hooks (eg with nfts)
    IERC20Detailed(_token).safeTransfer(msg.sender, toRedeem);
  }

  /// @notice updates trancheAPRSplitRatio based on the current tranches TVL ratio between AA and BB
  /// @dev the idea here is to limit the min and max APR that the senior tranche can get
  function _updateSplitRatio(uint256 tvlAARatio) internal virtual {
    uint256 _minSplit = minAprSplitAYS;
    _minSplit = _minSplit == 0 ? AA_RATIO_LIM_DOWN : _minSplit;

    if (isAYSActive) {
      uint256 aux;
      if (tvlAARatio >= AA_RATIO_LIM_UP) {
        aux = AA_RATIO_LIM_UP;
      } else if (tvlAARatio > _minSplit) {
        aux = tvlAARatio;
      } else {
        aux = _minSplit;
      }
      trancheAPRSplitRatio = aux * tvlAARatio / FULL_ALLOC;
    }
  }

  /// @notice calculates the current AA tranches ratio
  /// @dev it does count accrued interest not yet split since last
  /// depositXX/withdrawXX/harvest only if _instant flag is true
  /// @param _instant if true, it returns the current ratio without accrued interest
  /// @return AA tranches ratio (in underlying value) considering all interest
  function _getAARatio(bool _instant) internal view returns (uint256) {
    function(address) internal view returns (uint256) _getNAV =
      _instant ? _instantBalance : _virtualBalance;
    uint256 AABal = _getNAV(AATranche);
    uint256 contractVal = AABal + _getNAV(BBTranche);
    if (contractVal == 0) {
      return 0;
    }
    // Current AA tranche split ratio = AABal * FULL_ALLOC / (AABal + BBBal)
    return AABal * FULL_ALLOC / contractVal;
  }

  /// @dev check if _strategyPrice is decreased more than X% with X configurable since last update 
  /// and updates last saved strategy price
  function _checkDefault() virtual internal {
    uint256 currPrice = _strategyPrice();
    if (!skipDefaultCheck) {
      // calculate if % of decrease of strategyPrice is within maxDecreaseDefault
      require(lastStrategyPrice * (FULL_ALLOC - maxDecreaseDefault) / FULL_ALLOC <= currPrice, "4");
    }
    lastStrategyPrice = currPrice;
  }

  /// @return strategy price, in underlyings
  function _strategyPrice() internal view returns (uint256) {
    return IIdleCDOStrategy(strategy).price();
  }

  /// @dev this should liquidate at least _amount of `token` from the lending provider or revertIfNeeded
  /// @param _amount in underlying tokens
  /// @param _revertIfNeeded flag whether to revert or not if the redeemed amount is not enough
  /// @return _redeemedTokens number of underlyings redeemed
  function _liquidate(uint256 _amount, bool _revertIfNeeded) internal virtual returns (uint256 _redeemedTokens) {
    _redeemedTokens = IIdleCDOStrategy(strategy).redeemUnderlying(_amount);
    if (_revertIfNeeded) {
      uint256 _tolerance = liquidationTolerance;
      if (_tolerance == 0) {
        _tolerance = 100;
      }
      // keep `_tolerance` wei as margin for rounding errors
      require(_redeemedTokens + _tolerance >= _amount, '5');
    }

    if (_redeemedTokens > _amount) {
      _redeemedTokens = _amount;
    }
  }

  /// @notice method used to sell `_rewardToken` for `_token` on uniswap
  /// @param _rewardToken address of the token to sell
  /// @param _path to buy
  /// @param _amount of `_rewardToken` to sell
  /// @param _minAmount min amount of `_token` to buy
  /// @return _amount of _rewardToken sold
  /// @return _amount received for the sell
  function _sellReward(address _rewardToken, bytes memory _path, uint256 _amount, uint256 _minAmount)
    internal virtual
    returns (uint256, uint256) {
    // If 0 is passed as sell amount, we get the whole contract balance
    if (_amount == 0) {
      _amount = _contractTokenBalance(_rewardToken);
    }
    if (_amount == 0) {
      return (0, 0);
    }
  
    if (_path.length != 0) {
      // Uni v3 swap
      ISwapRouter _swapRouter = ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);
      IERC20Detailed(_rewardToken).safeIncreaseAllowance(address(_swapRouter), _amount);
      // multi hop swap params
      ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
        path: _path,
        recipient: address(this),
        deadline: block.timestamp + 100,
        amountIn: _amount,
        amountOutMinimum: _minAmount
      });
      // do the swap and return the amount swapped and the amount received
      return (_amount, _swapRouter.exactInput(params));
    } else {
      // Uni v2 swap
      IUniswapV2Router02 _uniRouter = uniswapRouterV2;
      // approve the uniswap router to spend our reward
      IERC20Detailed(_rewardToken).safeIncreaseAllowance(address(_uniRouter), _amount);
      // do the trade with all `_rewardToken` in this contract
      address[] memory _pathUniv2 = new address[](3);
      _pathUniv2[0] = _rewardToken;
      _pathUniv2[1] = weth;
      _pathUniv2[2] = token;
      uint256[] memory _amounts = _uniRouter.swapExactTokensForTokens(
        _amount,
        _minAmount,
        _pathUniv2,
        address(this),
        block.timestamp + 100
      );
      // return the amount swapped and the amount received
      return (_amounts[0], _amounts[_amounts.length - 1]);
    }
  }

  /// @notice method used to sell all sellable rewards for `_token` on uniswap
  /// @param _strategy IIdleCDOStrategy stategy instance
  /// @param _sellAmounts array with amounts of rewards to sell
  /// @param _minAmount array with amounts of _token buy for each reward sold. (should have the same length as _sellAmounts)
  /// @param _skipReward array of flags for skipping the market sell of specific rewards (should have the same length as _sellAmounts)
  /// @return _soldAmounts array with amounts of rewards actually sold
  /// @return _swappedAmounts array with amounts of _token actually bought
  /// @return _totSold total rewards sold in `_token`
  function _sellAllRewards(IIdleCDOStrategy _strategy, uint256[] memory _sellAmounts, uint256[] memory _minAmount, bool[] memory _skipReward, bytes memory _extraData)
    internal
    returns (uint256[] memory _soldAmounts, uint256[] memory _swappedAmounts, uint256 _totSold) {
    // Fetch state variables once to save gas
    // get all rewards addresses
    address[] memory _rewards = _strategy.getRewardTokens();
    address _rewardToken;
    bytes[] memory _paths = new bytes[](_rewards.length);
    if (_extraData.length > 0) {
      _paths = abi.decode(_extraData, (bytes[]));
    }
    uint256 rewardsLen = _rewards.length;
    // Initialize the return array, containing the amounts received after swapping reward tokens
    _soldAmounts = new uint256[](rewardsLen);
    _swappedAmounts = new uint256[](rewardsLen);
    // loop through all reward tokens
    for (uint256 i; i < rewardsLen; ++i) {
      _rewardToken = _rewards[i];
      // check if it should be sold or not
      if (_skipReward[i]) { continue; }
      // do not sell stkAAVE but only AAVE if present
      if (_rewardToken == stkAave) {
        _rewardToken = AAVE;
      }
      // Market sell _rewardToken in this contract for _token
      (_soldAmounts[i], _swappedAmounts[i]) = _sellReward(_rewardToken, _paths[i], _sellAmounts[i], _minAmount[i]);
      _totSold += _swappedAmounts[i];
    }
  }

  /// @param _tranche tranche address
  /// @return last saved tranche price, in underlyings
  function _tranchePrice(address _tranche) internal view returns (uint256) {
    if (IdleCDOTranche(_tranche).totalSupply() == 0) {
      return oneToken;
    }
    return _tranche == AATranche ? priceAA : priceBB;
  }

  /// @notice returns the current apr for a tranche based on trancheAPRSplitRatio and the provided AA ratio
  /// @dev the apr for a tranche can be higher than the strategy apr
  /// @param _tranche tranche token address
  /// @param _AATrancheSplitRatio AA split ratio used for calculations
  /// @return apr for the specific tranche
  function _getApr(address _tranche, uint256 _AATrancheSplitRatio) internal view returns (uint256) {
    uint256 stratApr = IIdleCDOStrategy(strategy).getApr();
    uint256 _trancheAPRSplitRatio = trancheAPRSplitRatio;
    bool isAATranche = _tranche == AATranche;
    if (_AATrancheSplitRatio == 0) {
      // if there are no AA tranches, apr for AA is 0 (all apr to BB and it will be equal to stratApr)
      return isAATranche ? 0 : stratApr;
    }
    return isAATranche ?
      // AA apr is: stratApr * AAaprSplitRatio / AASplitRatio
      stratApr * _trancheAPRSplitRatio / _AATrancheSplitRatio :
      // BB apr is: stratApr * BBaprSplitRatio / BBSplitRatio -> where
      // BBaprSplitRatio is: (FULL_ALLOC - _trancheAPRSplitRatio) and
      // BBSplitRatio is: (FULL_ALLOC - _AATrancheSplitRatio)
      stratApr * (FULL_ALLOC - _trancheAPRSplitRatio) / (FULL_ALLOC - _AATrancheSplitRatio);
  }

  /// @return _locked amount of harvested rewards that are still not available to be redeemed
  function _lockedRewards() internal view returns (uint256 _locked) {
    uint256 _releaseBlocksPeriod = releaseBlocksPeriod;
    uint256 _blocksSinceLastHarvest = block.number - latestHarvestBlock;
    uint256 _harvestedRewards = harvestedRewards;

    // NOTE: _harvestedRewards is never set to 0, but rather to 1 to save some gas
    if (_harvestedRewards > 1 && _blocksSinceLastHarvest < _releaseBlocksPeriod) {
      // progressively release harvested rewards
      _locked = _harvestedRewards * (_releaseBlocksPeriod - _blocksSinceLastHarvest) / _releaseBlocksPeriod;
    }
  }

  // ###################
  // Protected
  // ###################

  /// @notice This method is used to lend user funds in the lending provider through an IIdleCDOStrategy
  /// The method:
  /// - redeems rewards (if any) from the lending provider
  /// - converts the rewards in underlyings through uniswap v2 or v3
  /// - calls _updateAccounting to update the accounting of the system with the new underlyings received
  /// - it then convert fees in tranche tokens
  /// - finally it deposits the (initial unlent balance + the underlyings get from uniswap - fees) in the
  ///   lending provider through the IIdleCDOStrategy `deposit` call
  /// The method will be called by an external, whitelisted, keeper bot which will call the method sistematically (eg once a day)
  /// @dev can be called only by the rebalancer or the owner
  /// @param _skipFlags array of flags, [0] = skip reward redemption, [1] = skip incentives update, [2] = skip fee deposit, [3] = skip all
  /// @param _skipReward array of flags for skipping the market sell of specific rewards. Length should be equal to the `IIdleCDOStrategy(strategy).getRewardTokens()` array
  /// @param _minAmount array of min amounts for uniswap trades. Lenght should be equal to the _skipReward array
  /// @param _sellAmounts array of amounts (of reward tokens) to sell on uniswap. Lenght should be equal to the _minAmount array
  /// if a sellAmount is 0 the whole contract balance for that token is swapped
  /// @param _extraData bytes to be passed to the redeemRewards call
  /// @return _res array of arrays with the following elements:
  ///   [0] _soldAmounts array with amounts of rewards actually sold
  ///   [1] _swappedAmounts array with amounts of _token actually bought
  ///   [2] _redeemedRewards array with amounts of rewards redeemed
  function harvest(
    // _skipFlags[0] _skipRedeem,
    // _skipFlags[1] _skipIncentivesUpdate, [DEPRECATED]
    // _skipFlags[2] _skipFeeDeposit,
    // _skipFlags[3] _skipRedeem && _skipIncentivesUpdate && _skipFeeDeposit,
    bool[] calldata _skipFlags,
    bool[] calldata _skipReward,
    uint256[] calldata _minAmount,
    uint256[] calldata _sellAmounts,
    bytes[] calldata _extraData
  ) public
    virtual
    returns (uint256[][] memory _res) {
    _checkOnlyOwnerOrRebalancer();
    // initalize the returned array (elements will be [_soldAmounts, _swappedAmounts, _redeemedRewards])
    _res = new uint256[][](3);
    // Fetch state variable once to save gas
    IIdleCDOStrategy _strategy = IIdleCDOStrategy(strategy);
    // Check whether to redeem rewards from strategy or not
    if (!_skipFlags[3]) {
      uint256 _totSold;

      if (!_skipFlags[0]) {
        // Redeem all rewards associated with the strategy
        _res[2] = _strategy.redeemRewards(_extraData[0]);
        // Sell rewards
        (_res[0], _res[1], _totSold) = _sellAllRewards(_strategy, _sellAmounts, _minAmount, _skipReward, _extraData[1]);
      }
      // update last saved harvest block number
      latestHarvestBlock = block.number;
      // update harvested rewards value (avoid setting it to 0 to save some gas)
      harvestedRewards = _totSold == 0 ? 1 : _totSold;

      // split converted rewards if any and update tranche prices
      // NOTE: harvested rewards won't be counted directly but released over time
      _updateAccounting();

      if (!_skipFlags[2]) {
        // Get fees in the form of totalSupply diluition
        _depositFees();
      }
    }

    // Deposit the remaining balance in the lending provider and 
    // keep some unlent balance for cheap redeems and as reserve of last resort
    uint256 underlyingBal = _contractTokenBalance(token);
    uint256 idealUnlent = getContractValue() * unlentPerc / FULL_ALLOC;
    if (underlyingBal > idealUnlent) {
      // Put unlent balance at work in the lending provider
      _strategy.deposit(underlyingBal - idealUnlent);
    }
  }

  /// @notice method used to redeem underlyings from the lending provider
  /// @dev can be called only by the rebalancer or the owner
  /// @param _amount in underlyings to liquidate from lending provider
  /// @param _revertIfNeeded flag to revert if amount liquidated is too low
  /// @return liquidated amount in underlyings
  function liquidate(uint256 _amount, bool _revertIfNeeded) external returns (uint256) {
    _checkOnlyOwnerOrRebalancer();
    return _liquidate(_amount, _revertIfNeeded);
  }

  // ###################
  // onlyOwner
  // ###################

  /// @dev automatically reverts if strategyPrice decreased more than `_maxDecreaseDefault`
  /// @param _maxDecreaseDefault max value, in % where `100000` = 100%, of accettable price decrease for the strategy
  function setMaxDecreaseDefault(uint256 _maxDecreaseDefault) external {
    _checkOnlyOwner();
    require(_maxDecreaseDefault < FULL_ALLOC, '7');
    maxDecreaseDefault = _maxDecreaseDefault;
  }

  /// @param _active flag to allow Adaptive Yield Split
  function setIsAYSActive(bool _active) external {
    _checkOnlyOwner();
    isAYSActive = _active;
  }

  /// @param _allowed flag to allow AA withdraws
  function setAllowAAWithdraw(bool _allowed) external {
    _checkOnlyOwner();
    allowAAWithdraw = _allowed;
  }

  /// @param _allowed flag to allow BB withdraws
  function setAllowBBWithdraw(bool _allowed) external {
    _checkOnlyOwner();
    allowBBWithdraw = _allowed;
  }

  /// @param _allowed flag to enable the 'default' check (whether _strategyPrice decreased or not)
  function setSkipDefaultCheck(bool _allowed) external {
    _checkOnlyOwner();
    skipDefaultCheck = _allowed;
  }

  /// @param _allowed flag to enable the check if redeemed amount during liquidations is enough
  function setRevertIfTooLow(bool _allowed) external {
    _checkOnlyOwner();
    revertIfTooLow = _allowed;
  }

  /// @param _rebalancer new rebalancer address
  function setRebalancer(address _rebalancer) external {
    _checkOnlyOwner();
    require((rebalancer = _rebalancer) != address(0), '0');
  }

  /// @param _feeReceiver new fee receiver address
  function setFeeReceiver(address _feeReceiver) external {
    _checkOnlyOwner();
    require((feeReceiver = _feeReceiver) != address(0), '0');
  }

  /// @param _guardian new guardian (pauser) address
  function setGuardian(address _guardian) external {
    _checkOnlyOwner();
    require((guardian = _guardian) != address(0), '0');
  }

  /// @param _diff max liquidation diff tolerance in underlyings
  function setLiquidationTolerance(uint256 _diff) external {
    _checkOnlyOwner();
    liquidationTolerance = _diff;
  }

  /// @param _val stkIDLE per underlying required for deposits
  function setStkIDLEPerUnderlying(uint256 _val) external {
    _checkOnlyOwner();
    stkIDLEPerUnderlying = _val;
  }

  /// @param _aprSplit min apr split for AA, considering FULL_ALLOC = 100%
  function setMinAprSplitAYS(uint256 _aprSplit) external {
    _checkOnlyOwner();
    require((minAprSplitAYS = _aprSplit) <= FULL_ALLOC, '7');
    minAprSplitAYS = _aprSplit;
  }

  /// @param _fee new fee
  function setFee(uint256 _fee) external {
    _checkOnlyOwner();
    require((fee = _fee) <= MAX_FEE, '7');
  }

  /// @param _unlentPerc new unlent percentage
  function setUnlentPerc(uint256 _unlentPerc) external {
    _checkOnlyOwner();
    require((unlentPerc = _unlentPerc) <= FULL_ALLOC, '7');
  }

  /// @notice set new release block period. WARN: this should be called only when there 
  /// are no active rewards being unlocked
  /// @param _releaseBlocksPeriod new # of blocks after an harvest during which
  /// harvested rewards gets progressively redistriburted to users
  function setReleaseBlocksPeriod(uint256 _releaseBlocksPeriod) external {
    _checkOnlyOwner();
    releaseBlocksPeriod = _releaseBlocksPeriod;
  }

  /// @param _trancheAPRSplitRatio new apr split ratio
  function setTrancheAPRSplitRatio(uint256 _trancheAPRSplitRatio) external {
    _checkOnlyOwner();
    require((trancheAPRSplitRatio = _trancheAPRSplitRatio) <= FULL_ALLOC, '7');
  }

  /// @param _diffBps tolerance in % (FULL_ALLOC = 100%) for socializing small losses 
  function setLossToleranceBps(uint256 _diffBps) external {
      _checkOnlyOwner();
      lossToleranceBps = _diffBps;
  }

  /// @dev toggle stkIDLE requirement for tranche
  /// @param _tranche address
  function toggleStkIDLEForTranche(address _tranche) external {
    _checkOnlyOwner();
    address aa = AATranche;
    require(_tranche == BBTranche || _tranche == aa, '9');
    if (_tranche == aa) {
      AAStaking = AAStaking == address(0) ? address(1) : address(0);
      return;
    }

    BBStaking = BBStaking == address(0) ? address(1) : address(0);
  }

  /// @notice this method updates the accounting of the contract and effectively splits the yield/loss between the
  /// AA and BB tranches. This can be called at any time as is called automatically on each deposit/redeem. It's here
  /// just to be called when a default happened, as deposits/redeems are paused, but we need to update
  /// the loss for junior holders
  function updateAccounting() external {
    _checkOnlyOwnerOrGuardian();
    skipDefaultCheck = true;
    _updateAccounting();
    // _updateAccounting can set `skipDefaultCheck` to true in case of default
    // but this can be manually be reset to true if needed
    skipDefaultCheck = false;
  }

  /// @notice pause deposits and redeems for all classes of tranches
  /// @dev can be called by both the owner and the guardian
  function emergencyShutdown() external {
    _checkOnlyOwnerOrGuardian();
    _emergencyShutdown();
  }

  function _emergencyShutdown() internal {
    // prevent deposits
    _pause();
    // prevent withdraws
    allowAAWithdraw = false;
    allowBBWithdraw = false;
    // Allow deposits/withdraws (once selectively re-enabled, eg for AA holders)
    // without checking for lending protocol default
    skipDefaultCheck = true;
    revertIfTooLow = true;
  }

  /// @notice allow deposits and redeems for all classes of tranches
  /// @dev can be called by the owner only
  function restoreOperations() external {
    _checkOnlyOwner();
    // restore deposits
    _unpause();
    // restore withdraws
    allowAAWithdraw = true;
    allowBBWithdraw = true;
    // Allow deposits/withdraws but checks for lending protocol default
    skipDefaultCheck = false;
    revertIfTooLow = true;
  }

  /// @notice Pauses deposits
  /// @dev can be called by both the owner and the guardian
  function pause() external  {
    _checkOnlyOwnerOrGuardian();
    _pause();
  }

  /// @notice Unpauses deposits
  /// @dev can be called by both the owner and the guardian
  function unpause() external {
    _checkOnlyOwnerOrGuardian();
    _unpause();
  }

  // ###################
  // Helpers
  // ###################

  /// @dev Check that the msg.sender is the either the owner or the guardian
  function _checkOnlyOwnerOrGuardian() internal view {
    require(msg.sender == guardian || msg.sender == owner(), "6");
  }

  /// @dev Check that the msg.sender is the either the owner or the rebalancer
  function _checkOnlyOwnerOrRebalancer() internal view {
    require(msg.sender == rebalancer || msg.sender == owner(), "6");
  }

  /// @notice returns the current balance of this contract for a specific token
  /// @param _token token address
  /// @return balance of `_token` for this contract
  function _contractTokenBalance(address _token) internal view returns (uint256) {
    return IERC20Detailed(_token).balanceOf(address(this));
  }

  /// @dev Set allowance for _token to unlimited for _spender
  /// @param _token token address
  /// @param _spender spender address
  function _allowUnlimitedSpend(address _token, address _spender) internal {
    IERC20Detailed(_token).safeIncreaseAllowance(_spender, type(uint256).max);
  }

  /// @dev Set last caller and block.number hash. This should be called at the beginning of the first function to protect
  function _updateCallerBlock() internal {
    _lastCallerBlock = keccak256(abi.encodePacked(tx.origin, block.number));
  }

  /// @dev Check that the second function is not called in the same tx from the same tx.origin
  function _checkSameTx() internal view {
    require(keccak256(abi.encodePacked(tx.origin, block.number)) != _lastCallerBlock, "8");
  }

  /// @notice concat 2 strings in a single one
  /// @param a first string
  /// @param b second string
  /// @return new string with a and b concatenated
  function _concat(string memory a, string memory b) internal pure returns (string memory) {
    return string(abi.encodePacked(a, b));
  }
}

// ============================================================
// FILE: contracts/IdleCDOInstadappLiteVariant.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {IIdleCDOStrategy} from "./interfaces/IIdleCDOStrategy.sol";
import {IdleCDO} from "./IdleCDO.sol";
import {IERC20Detailed} from "./interfaces/IERC20Detailed.sol";
import {IdleCDOTranche} from "./IdleCDOTranche.sol";
import {SafeERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

interface IInstadappVaultV2 {
    function withdrawalFeePercentage() external view returns(uint256);
}

/// @title IdleCDO variant for instadapp iETHv2, which can handle a withdraw fee 
contract IdleCDOInstadappLiteVariant is IdleCDO {
    using SafeERC20Upgradeable for IERC20Detailed;

    /// @notice the tolerance for the liquidation in basis points. 100000 = 100%
    /// @dev relative to the amount to liquidate
    uint256 internal liquidationToleranceBps;
    address internal constant ETHV2Vault = 0xA0D3707c569ff8C87FA923d3823eC5D81c98Be78;

    function _additionalInit() internal override {
        liquidationToleranceBps = 500; // 0.5%
        lossToleranceBps = 500; // 0.5%
    }

    /// @notice a loss of up to liquidationToleranceBps % is allowed (slippage / withdraw fee)
    /// @dev this should liquidate at least _amount of `token` from the lending provider or revertIfNeeded
    /// @param _amount in underlying tokens
    /// @param _revertIfNeeded flag whether to revert or not if the redeemed amount is not enough
    /// @return _redeemedTokens number of underlyings redeemed
    /// @return _fee underlyings kept by the lending provider as fee
    function _liquidateWithFee(uint256 _amount, bool _revertIfNeeded) internal returns (
        uint256 _redeemedTokens,
        uint256 _fee
    ) {
        _redeemedTokens = IIdleCDOStrategy(strategy).redeemUnderlying(_amount);
        if (_revertIfNeeded) {
            uint256 _tolerance = (_amount * liquidationToleranceBps) / FULL_ALLOC;
            // keep `_tolerance` wei as margin for rounding errors
            require(_redeemedTokens + _tolerance >= _amount, "5");
        }

        if (_redeemedTokens > _amount) {
            _redeemedTokens = _amount;
        }
        _fee = _amount - _redeemedTokens;
    }

    /// @notice It calculates the expected fee for redeeming `_toRedeem` underlyings
    /// @param _toRedeem amount of underlyings to redeem
    /// @return _expectedFee amount of underlyings to be kept by the lending provider as fee
    function _calcUnderlyingProtocolFee(uint256 _toRedeem) virtual internal returns (uint256 _expectedFee) {
        // get exit fee from instadapp vault
        // from instadapp: withdraw fee is either amount in percentage or absolute minimum. This var defines the percentage in 1e6
        // this number is given in 1e4, i.e. 1% would equal 10,000; 10% would be 100,000 etc.
        _expectedFee = _toRedeem * IInstadappVaultV2(ETHV2Vault).withdrawalFeePercentage() / 1e6;
    }

    /// @notice It allows users to burn their tranche token and redeem their principal + interest back
    /// @dev automatically reverts on lending provider default (_strategyPrice decreased).
    /// @dev in this variant the fee is readded after the _liquidate call so the lastNAV is updated correctly
    /// @param _amount in tranche tokens
    /// @param _tranche tranche address
    /// @return toRedeem number of underlyings redeemed
    function _withdraw(uint256 _amount, address _tranche) override internal nonReentrant returns (uint256 toRedeem) {
        // check if a deposit is made in the same block from the same user
        _checkSameTx();
        // check if _strategyPrice decreased
        _checkDefault();
        // accrue interest to tranches and updates tranche prices
        _updateAccounting();
        // redeem all user balance if 0 is passed as _amount
        if (_amount == 0) {
            _amount = IERC20Detailed(_tranche).balanceOf(msg.sender);
        }
        require(_amount > 0, '0');
        address _token = token;
        // get current available unlent balance
        uint256 balanceUnderlying = _contractTokenBalance(_token);
        // Calculate the amount to redeem
        toRedeem = _amount * _tranchePrice(_tranche) / ONE_TRANCHE_TOKEN;
        // save full amount that user is redeeming (without counting fees)
        uint256 _want = toRedeem;
        // calculate expected fee
        uint256 _expectedFee = _calcUnderlyingProtocolFee(toRedeem);
        // actual fee paid, considering the unlent balance present in this contract
        // this value should be lte than _expectedFee as only a portion of the toRedeem
        // will be redeemed from the lending provider if there is some unlent balance
        uint256 _paidFee;
        if (toRedeem > balanceUnderlying) {
            // if the unlent balance is not enough we try to redeem what's missing directly from the strategy
            // and then add it to the current unlent balance
            (toRedeem, _paidFee) = _liquidateWithFee(toRedeem - balanceUnderlying, revertIfTooLow);
            // add the unlent balance to the redeemed amount
            toRedeem += balanceUnderlying;
            // be sure to remove the missing fee, even when using 
            // the unlent balance the user should pay the full fee
            if (_paidFee < _expectedFee) {
                toRedeem -= (_expectedFee - _paidFee);
            }
        } else {
            // user is redeeming all from the unlent balance but the fee is still applied,
            // the pool is 'gaining' the _expectedFee which will increase the lastNAV
            toRedeem -= _expectedFee;
        }

        // burn tranche token
        IdleCDOTranche(_tranche).burn(msg.sender, _amount);

        // update NAV with the _amount of underlyings removed (eventual fee gained is not
        // considered here so virtualPrice will be updated accordingly)
        if (_tranche == AATranche) {
            lastNAVAA -= _want;
        } else {
            lastNAVBB -= _want;
        }
        // update trancheAPRSplitRatio
        _updateSplitRatio(_getAARatio(true));

        // send underlying to msg.sender. Keep this at the end of the function to avoid 
        // potential read only reentrancy on cdo variants that have hooks (eg with nfts)
        IERC20Detailed(_token).safeTransfer(msg.sender, toRedeem);
    }

    /// @param _diffBps tolerance in % (FULL_ALLOC = 100%) for allowing loss on redeems for msg.sender 
    function setLiquidationToleranceBps(uint256 _diffBps) external {
        _checkOnlyOwner();
        liquidationToleranceBps = _diffBps;
    }
}

// ============================================================
// FILE: contracts/IdleCDOStorage.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.10;

import '@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol';

contract IdleCDOStorage {
  // constant to represent 100%
  uint256 public constant FULL_ALLOC = 100000;
  // max fee, relative to FULL_ALLOC
  uint256 public constant MAX_FEE = 20000;
  // one token
  uint256 public constant ONE_TRANCHE_TOKEN = 10**18;
  // variable used to save the last tx.origin and block.number
  bytes32 internal _lastCallerBlock;
  // variable used to save the block of the latest harvest
  uint256 internal latestHarvestBlock;
  // WETH address
  address public weth;
  // [DEPRECATED] tokens used to incentivize the idle tranche ideal ratio
  address[] public incentiveTokens;
  // underlying token (eg DAI)
  address public token;
  // address that can only pause/unpause the contract in case of emergency
  address public guardian;
  // one `token` (eg for DAI 10**18)
  uint256 public oneToken;
  // address that can call the 'harvest' method and lend pool assets
  address public rebalancer;
  // address of the uniswap v2 router
  IUniswapV2Router02 internal uniswapRouterV2;

  // Flag for allowing AA withdraws
  bool public allowAAWithdraw;
  // Flag for allowing BB withdraws
  bool public allowBBWithdraw;
  // Flag for allowing to enable reverting in case the strategy gives back less
  // amount than the requested one
  bool public revertIfTooLow;
  // Flag to enable the `Default Check` (related to the emergency shutdown)
  bool public skipDefaultCheck;

  // address of the strategy used to lend funds
  address public strategy;
  // address of the strategy token which represent the position in the lending provider
  address public strategyToken;
  // address of AA Tranche token contract
  address public AATranche;
  // address of BB Tranche token contract
  address public BBTranche;
  // address for stkIDLE gating for AA tranche. addr(0) -> inactive, addr(1) -> active
  address public AAStaking;
  // address for stkIDLE gating for BB tranche. addr(0) -> inactive, addr(1) -> active
  address public BBStaking;

  // Apr split ratio for AA tranches
  // (relative to FULL_ALLOC so 50% => 50000 => 50% of the interest to tranche AA)
  uint256 public trancheAPRSplitRatio; //
  // [DEPRECATED] Ideal tranche split ratio in `token` value
  // (relative to FULL_ALLOC so 50% => 50000 means 50% of tranches (in value) should be AA)
  uint256 public trancheIdealWeightRatio;
  // Price for minting AA tranche, in underlyings
  uint256 public priceAA;
  // Price for minting BB tranche, in underlyings
  uint256 public priceBB;
  // last saved net asset value (in `token`) for AA tranches
  uint256 public lastNAVAA;
  // last saved net asset value (in `token`) for BB tranches
  uint256 public lastNAVBB;
  // last saved lending provider price
  uint256 public lastStrategyPrice;
  // Keeps track of unclaimed fees for feeReceiver
  uint256 public unclaimedFees;
  // Keeps an unlent balance both for cheap redeem and as 'insurance of last resort'
  uint256 public unlentPerc;

  // Fee amount (relative to FULL_ALLOC)
  uint256 public fee;
  // address of the fee receiver
  address public feeReceiver;

  // [DEPRECATED] trancheIdealWeightRatio ± idealRanges, used in updateIncentives
  uint256 public idealRange;
  // period, in blocks, for progressively releasing harvested rewards to users
  uint256 public releaseBlocksPeriod;
  // amount of rewards sold in the last harvest (in `token`)
  uint256 internal harvestedRewards;
  // stkAave address
  address internal constant stkAave = address(0x4da27a545c0c5B758a6BA100e3a049001de870f5);
  // aave address
  address internal constant AAVE = address(0x7Fc66500c84A76Ad7e9c93437bFc5Ac33E2DDaE9);
  // [DEPRECATED] if the cdo receive stkAAVE
  bool internal isStkAAVEActive;
  // referral address of the strategy developer
  address public referral;
  // amount of fee for feeReceiver. Max is FULL_ALLOC
  uint256 public feeSplit;

  // if Adaptive Yield Split is active
  bool public isAYSActive;
  // constant to represent 99% (for ADS AA ratio upper limit)
  uint256 internal constant AA_RATIO_LIM_UP = 99000;
  // constant to represent 50% (for ADS AA ratio lower limit)
  uint256 internal constant AA_RATIO_LIM_DOWN = 50000;

  address internal constant STK_IDLE = address(0xaAC13a116eA7016689993193FcE4BadC8038136f);

  // Referral event
  event Referral(uint256 _amount, address _ref);
  // tolerance in underlyings when redeeming
  uint256 public liquidationTolerance;

  // Add new variables here. For each storage slot
  // used, reduce the __gap length by 1. 
  // ####################### 
  // Min apr ratio for AA tranches when using AYS
  uint256 public minAprSplitAYS;
  // Max strategy price decrease before triggering a default
  uint256 public maxDecreaseDefault;
  // The tolerance for the loss socialized so equally distributed between junior and senior tranches.
  uint256 public lossToleranceBps;
  // Amount of stkIDLE required to mint 1 underlying
  uint256 public stkIDLEPerUnderlying;
  // uint256 public test;



  // ####################### 
  // This is empty reserved space in storage that is put 
  // in place in Upgradeable contracts. It allows us to 
  // freely add new state variables in the future without 
  // compromising the storage compatibility with existing 
  // deployments.
  // The size of the __gap array is calculated so that the 
  // amount of storage used by a contract always adds up to 
  // always the same number, 50 in this case.
  uint256[46] private __gap;
  // uint256[45] private __gap; -> after adding `test`
  // #######################
  // IMPORTANT: Do not add any variables below `__gap`
}

// ============================================================
// FILE: contracts/IdleCDOTranche.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @dev ERC20 representing a tranche token
contract IdleCDOTranche is ERC20 {
  // allowed minter address
  address public minter;

  /// @param _name tranche name
  /// @param _symbol tranche symbol
  constructor(
    string memory _name, // eg. IdleDAI
    string memory _symbol // eg. IDLEDAI
  ) ERC20(_name, _symbol) {
    // minter is msg.sender which is IdleCDO (in initialize)
    minter = msg.sender;
  }

  /// @param account that should receive the tranche tokens
  /// @param amount of tranche tokens to mint
  function mint(address account, uint256 amount) external {
    require(msg.sender == minter, 'TRANCHE:!AUTH');
    _mint(account, amount);
  }

  /// @param account that should have the tranche tokens burned
  /// @param amount of tranche tokens to burn
  function burn(address account, uint256 amount) external {
    require(msg.sender == minter, 'TRANCHE:!AUTH');
    _burn(account, amount);
  }
}

// ============================================================
// FILE: contracts/interfaces/IERC20Detailed.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

interface IERC20Detailed is IERC20Upgradeable {
  function name() external view returns(string memory);
  function symbol() external view returns(string memory);
  function decimals() external view returns(uint256);
}

// ============================================================
// FILE: contracts/interfaces/IIdleCDOStrategy.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.10;

interface IIdleCDOStrategy {
  function strategyToken() external view returns(address);
  function token() external view returns(address);
  function tokenDecimals() external view returns(uint256);
  function oneToken() external view returns(uint256);
  function redeemRewards(bytes calldata _extraData) external returns(uint256[] memory);
  function pullStkAAVE() external returns(uint256);
  function price() external view returns(uint256);
  function getRewardTokens() external view returns(address[] memory);
  function deposit(uint256 _amount) external returns(uint256);
  // _amount in `strategyToken`
  function redeem(uint256 _amount) external returns(uint256);
  // _amount in `token`
  function redeemUnderlying(uint256 _amount) external returns(uint256);
  function getApr() external view returns(uint256);
}
