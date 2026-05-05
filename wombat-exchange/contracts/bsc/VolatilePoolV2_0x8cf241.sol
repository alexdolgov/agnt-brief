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
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

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
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
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
// FILE: contracts/wombat-core/interfaces/IAsset.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface IAsset is IERC20 {
    function underlyingToken() external view returns (address);

    function pool() external view returns (address);

    function cash() external view returns (uint120);

    function liability() external view returns (uint120);

    function decimals() external view returns (uint8);

    function underlyingTokenDecimals() external view returns (uint8);

    function setPool(address pool_) external;

    function underlyingTokenBalance() external view returns (uint256);

    function transferUnderlyingToken(address to, uint256 amount) external;

    function mint(address to, uint256 amount) external;

    function burn(address to, uint256 amount) external;

    function addCash(uint256 amount) external;

    function removeCash(uint256 amount) external;

    function addLiability(uint256 amount) external;

    function removeLiability(uint256 amount) external;
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IPoolV4.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

import '../interfaces/IAsset.sol';

interface IPoolV4 {
    function getTokens() external view returns (IERC20[] memory);

    function addressOfAsset(IERC20 token) external view returns (IAsset);

    function deposit(
        IERC20 token,
        uint256 amount,
        uint256 minimumLiquidity,
        address to,
        uint256 deadline,
        bool shouldStake
    ) external returns (uint256 liquidity);

    function withdraw(
        IERC20 token,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 amount);

    function withdrawFromOtherAsset(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 amount);

    function swap(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 actualToAmount, uint256 haircut);

    function quotePotentialDeposit(IERC20 token, uint256 amount) external view returns (uint256 liquidity);

    function quotePotentialSwap(
        IERC20 fromToken,
        IERC20 toToken,
        int256 fromAmount
    ) external view returns (uint256 potentialOutcome, uint256 haircut);

    function quotePotentialWithdraw(IERC20 token, uint256 liquidity) external view returns (uint256 amount);

    function quotePotentialWithdrawFromOtherAsset(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity
    ) external view returns (uint256 finalAmount, uint256 withdrewAmount);

    function quoteAmountIn(
        IERC20 fromToken,
        IERC20 toToken,
        int256 toAmount
    ) external view returns (uint256 amountIn, uint256 haircut);
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IRelativePriceProvider.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

interface IRelativePriceProvider {
    /**
     * @notice get the relative price in WAD
     */
    function getRelativePrice() external view returns (uint256);
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IVolatileAsset.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

import './IAsset.sol';

interface IVolatileAsset is IAsset {
    function priceScale() external view returns (uint128);

    function oraclePrice() external view returns (uint128);

    function setOraclePrice(uint256 oraclePrice_) external;

    function setPriceScale(uint256 priceScale_) external;
}

// ============================================================
// FILE: contracts/wombat-core/libraries/AssetLibrary.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../interfaces/IAsset.sol';

/**
 * @notice An internal library for assets management and utilities
 */
library AssetLibrary {
    using AssetLibrary for AssetMap;

    /// @notice Asset Map struct holds assets
    struct AssetMap {
        IERC20[] keys;
        mapping(IERC20 => IAsset) values;
        mapping(IERC20 => uint256) indexOf;
    }

    //#region Error

    error WOMBAT_ASSET_NOT_EXISTS();
    error WOMBAT_ASSET_ALREADY_EXIST();

    //#endregion Error

    /**
     * @notice Adds asset to pool, reverts if asset already exists in pool
     * @param token The address of token
     * @param asset The address of the Wombat Asset contract
     */
    function addAsset(AssetLibrary.AssetMap storage assets, IERC20 token, IAsset asset) internal {
        if (assets.containsAsset(token)) revert AssetLibrary.WOMBAT_ASSET_ALREADY_EXIST();
        assets.values[token] = IAsset(asset);
        assets.indexOf[token] = assets.keys.length;
        assets.keys.push(token);
    }

    /**
     * @notice Removes asset from asset struct
     * @dev Can only be called by owner
     * @param token The address of token to remove
     */
    function removeAsset(AssetLibrary.AssetMap storage assets, IERC20 token) internal {
        assets.checkAssetExistFor(token);

        delete assets.values[token];

        uint256 index = assets.indexOf[token];
        uint256 lastIndex = assets.keys.length - 1;
        IERC20 lastKey = assets.keys[lastIndex];

        assets.indexOf[lastKey] = index;
        delete assets.indexOf[token];

        assets.keys[index] = lastKey;
        assets.keys.pop();
    }

    /**
     * @notice get length of asset list
     * @return the size of the asset list
     */
    function count(AssetMap storage assets) internal view returns (uint256) {
        return assets.keys.length;
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @param token The address of ERC20 token
     */
    function assetOf(AssetMap storage assets, IERC20 token) internal view returns (IAsset) {
        if (!assets.containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();
        return assets.values[token];
    }

    function getAssetAtIndex(AssetMap storage assets, uint256 index) internal view returns (IAsset) {
        return assets.values[assets.keys[index]];
    }

    function checkAssetExistFor(AssetMap storage assets, IERC20 token) internal view {
        if (!assets.containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();
    }

    /**
     * @notice Looks if the asset is contained by the list
     * @param token The address of token to look for
     * @return bool true if the asset is in asset list, false otherwise
     */
    function containsAsset(AssetMap storage assets, IERC20 token) internal view returns (bool) {
        return assets.values[token] != IAsset(address(0));
    }
}

// ============================================================
// FILE: contracts/wombat-core/libraries/DSMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

/// math.sol -- mixin for inline numerical wizardry

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

pragma solidity ^0.8.5;

library DSMath {
    uint256 public constant WAD = 10 ** 18;

    // Babylonian Method
    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    //rounds to zero if x*y < WAD / 2
    function wmul(uint256 x, uint256 y) internal pure returns (uint256) {
        return ((x * y) + (WAD / 2)) / WAD;
    }

    function wdiv(uint256 x, uint256 y) internal pure returns (uint256) {
        return ((x * WAD) + (y / 2)) / y;
    }

    // Convert x to WAD (18 decimals) from d decimals.
    function toWad(uint256 x, uint8 d) internal pure returns (uint256) {
        if (d < 18) {
            return x * 10 ** (18 - d);
        } else if (d > 18) {
            return (x / (10 ** (d - 18)));
        }
        return x;
    }

    // Convert x from WAD (18 decimals) to d decimals.
    function fromWad(uint256 x, uint8 d) internal pure returns (uint256) {
        if (d < 18) {
            return (x / (10 ** (18 - d)));
        } else if (d > 18) {
            return x * 10 ** (d - 18);
        }
        return x;
    }

    function to128(uint256 value) internal pure returns (uint128) {
        require(value <= type(uint128).max, 'uint128 overflow');
        return uint128(value);
    }
}

// ============================================================
// FILE: contracts/wombat-core/libraries/DynamicFeeHelper.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/SignedSafeMath.sol';
import '../libraries/DSMath.sol';
import '../../wombat-governance/libraries/LogExpMath.sol';

struct PointHistory {
    uint40 pointTimestamp; // the block timestamp of the point history
    //
    int32 value; // value at this point history in log scale in; ln(x) * 2^28; true range is (0.00034, 2980)
    // the value accumulator, i.e. Integral of (tick * time) since the pool was first initialized
    // overflow after 136 year
    int64 valueCumulative;
    int32 meanValueInWindow; // average value at this point history (in the past WINDOW)
    // the volatility accumulator;
    // overflow after 136 year
    uint64 volatilityCumulative;
    //
    uint24 windowStartIndex;
}

struct DynamicFeeData {
    // The circular struct for each recorded time point
    // TIME_POINT_LENGTH = 1 days
    uint256 lastIndex;
    PointHistory[1 days] pointHistories;
}

struct DynamicFeeConfig {
    uint128 haircutVolatilityMax;
    uint128 haircutImbalanceMax;
    int128 haircutVolatilityKV1;
    int128 haircutVolatilityBetaV1;
    int128 haircutVolatilityKV2;
    int128 haircutVolatilityBetaV2;
    int128 haircutImbalanceSmallTheta;
    // not used
    // int128 haircutImbalanceBigTheta;
}

/**
 * @notice An embedded libraries that handles dynamic fee storage and calculation
 * @dev Data flow:
 *        1. input value (write)
 *        2. calculate `valueCumulative` (_createNewPointHistory)
 *        3. calculate `meanValueInWindow` using `valueCumulative` (_getMeanValueInWindow)
 *        4. calculate volatility using `value` and `meanValueInWindow`, update `volatilityCumulative` (_volatilityOnRange)
 *        5. lastly, mean volatility is calculated by `volatilityCumulative` (getMeanVolatilityInWindow)
 */
library DynamicFeeHelper {
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;
    using DSMath for uint256;

    uint32 public constant WINDOW = 1 days;
    uint256 public constant TIME_POINT_LENGTH = WINDOW; // Constraint: use a timepoint length greater than or equal to `WINDOW`
    int256 private constant BASE = 1 << 28;

    int256 constant MAX_NATURAL_EXPONENT = 130e18; // copied from LogExpMath.sol
    int256 constant MIN_NATURAL_EXPONENT = -41e18; // copied from LogExpMath.sol
    int256 public constant WAD_I = 10 ** 18;

    event DynamicFeeHelper__UPPER_BOUND_REACHED();
    event DynamicFeeHelper__LOWER_BOUND_REACHED();

    error DynamicFeeHelper__INVALID_TIMEPOINT_LENGTH();
    error DynamicFeeHelper__meanValueInWindow_OVERFLOW();
    error DynamicFeeHelper__windowStartIndex_OVERFLOW();
    error DynamicFeeHelper__VOLATILITY_TOO_LARGE();

    function initialize(DynamicFeeData storage dynamicFeeData, uint40 blockTimestamp, int32 value) internal {
        if (TIME_POINT_LENGTH < WINDOW) revert DynamicFeeHelper__INVALID_TIMEPOINT_LENGTH();

        // In case the same storage is reused, which happens when an assest is re-added, re-initialize storage
        dynamicFeeData.lastIndex = 0;

        PointHistory[TIME_POINT_LENGTH] storage pointHistories = dynamicFeeData.pointHistories;
        pointHistories[0].pointTimestamp = blockTimestamp;
        pointHistories[0].value = value;
        pointHistories[0].valueCumulative = 0;
        pointHistories[0].meanValueInWindow = value;
        pointHistories[0].volatilityCumulative = 0;
        pointHistories[0].windowStartIndex = 0;
    }

    //#region External APIs

    /**
     * @notice Find the closest timepoint which its timestamp is greater than or equal to the `timestamp`
     */
    function getTimePointAt(
        DynamicFeeData storage dynamicFeeData,
        uint40 timestamp
    ) external view returns (PointHistory memory targetPointHistory) {
        uint256 lastIndex = dynamicFeeData.lastIndex;
        uint256 oldestIndex = _getOldestIndex(dynamicFeeData.pointHistories, lastIndex);

        uint256 index = _findTimepointIndex(dynamicFeeData.pointHistories, timestamp, lastIndex, oldestIndex);
        return dynamicFeeData.pointHistories[index];
    }

    /**
     * @notice Write data after a swap
     * @dev Assume `marketPricesLast` is updated by the caller
     */
    function write(
        DynamicFeeData storage dynamicFeeData,
        uint40 blockTimestamp,
        int32 value
    ) external returns (uint256 indexUpdated) {
        PointHistory[TIME_POINT_LENGTH] storage pointHistories = dynamicFeeData.pointHistories;
        uint256 lastIndex = dynamicFeeData.lastIndex;
        PointHistory memory lastPoint = pointHistories[lastIndex];
        if (lastPoint.pointTimestamp == blockTimestamp) {
            // Early return if we've already written a timepoint this block
            pointHistories[lastIndex].value = value;
            return lastIndex;
        }

        uint256 oldestIndex = _getOldestIndex(pointHistories, lastIndex);

        int256 meanValueInWindow = _getMeanValueInWindow(
            pointHistories,
            blockTimestamp,
            lastIndex,
            oldestIndex,
            value,
            lastPoint.pointTimestamp,
            lastPoint.valueCumulative
        );
        uint256 windowStartIndex = _findTimepointIndex(pointHistories, blockTimestamp - WINDOW, lastIndex, oldestIndex);

        if (meanValueInWindow > type(int32).max) revert DynamicFeeHelper__meanValueInWindow_OVERFLOW();
        if (windowStartIndex > type(uint24).max) revert DynamicFeeHelper__windowStartIndex_OVERFLOW();

        uint256 indexToUpdate = (lastIndex + 1) % TIME_POINT_LENGTH; // advance index
        // We don't need this since there are more `TIME_POINT_LENGTH` than `WINDOW`
        // and we only write one timepoint for a timestamp.
        // if (windowStartIndex == indexToUpdate) {
        //     windowStartIndex = (windowStartIndex + 1) % TIME_POINT_LENGTH;
        // }

        pointHistories[indexToUpdate] = _createNewPointHistory(
            lastPoint,
            blockTimestamp,
            value,
            int32(meanValueInWindow),
            uint24(windowStartIndex)
        );
        dynamicFeeData.lastIndex = (lastIndex + 1) % TIME_POINT_LENGTH;

        return indexToUpdate;
    }

    //#endregion External APIs

    //#region External View Functions

    /// @notice return the mean volatility in log scale in WAD
    function getMeanVolatilityInWindow(
        DynamicFeeData storage dynamicFeeData,
        uint256 blockTimestamp
    ) external view returns (uint256) {
        // return the root mean square in WAD
        return
            ((_getMeanVolatilityInWindow(dynamicFeeData.pointHistories, dynamicFeeData.lastIndex, blockTimestamp) *
                1e36) / uint256(BASE)).sqrt();
    }

    /// @notice `toLogScale` and emit event if upper / lower bound is reached
    function safeToLogScale(uint256 ratioInWad, uint256 dt) external returns (int32 valueInLogScale) {
        valueInLogScale = toLogScale(ratioInWad, dt);

        // bound the result
        if (valueInLogScale == type(int32).max) {
            emit DynamicFeeHelper__UPPER_BOUND_REACHED();
        } else if (valueInLogScale == type(int32).min) {
            emit DynamicFeeHelper__LOWER_BOUND_REACHED();
        }

        return valueInLogScale;
    }

    /// @dev User should consider using `safetoLogScale` unless a view/pure function is required
    function toLogScale(uint256 ratioInWad, uint256 dt) public pure returns (int32 valueInLogScale) {
        int256 result = (LogExpMath.ln(ratioInWad.toInt256()) * BASE) / WAD_I / dt.toInt256();

        // bound the result
        if (result > type(int32).max) {
            return type(int32).max;
        } else if (result < type(int32).min) {
            return type(int32).min;
        } else {
            return int32(result);
        }
    }

    function fromLogScale(int32 valueInLogScale, int256 dt) external pure returns (uint256 valueInWad) {
        return LogExpMath.exp((int256(valueInLogScale) * dt * WAD_I) / BASE).toUint256();
    }

    /// @dev return a value between 0 and config.haircutVolatilityMax * 2
    function getVolatilityHaircutRate(
        DynamicFeeConfig storage config,
        int256 volatility
    ) external view returns (uint256) {
        int256 exponent1 = int256(config.haircutVolatilityKV1).wmul(config.haircutVolatilityBetaV1 - volatility);
        int256 value1;
        if (exponent1 <= MIN_NATURAL_EXPONENT) {
            value1 = 1e18;
        } else if (exponent1 >= MAX_NATURAL_EXPONENT) {
            // value1 = 0;
        } else {
            value1 = LogExpMath.fakeSigmoid(exponent1);
        }

        int256 exponent2 = int256(config.haircutVolatilityKV2).wmul(config.haircutVolatilityBetaV2 - volatility);
        int256 value2;
        if (exponent2 <= MIN_NATURAL_EXPONENT) {
            value2 = 1e18;
        } else if (exponent2 >= MAX_NATURAL_EXPONENT) {
            // value2 = 0;
        } else {
            value2 = LogExpMath.fakeSigmoid(exponent2);
        }

        return (value1.toUint256() + value2.toUint256()).wmul(config.haircutVolatilityMax);
    }

    function getImbalanceHaircutRate(
        DynamicFeeConfig storage config,
        int256 rFromAsset,
        int256 rToAsset
    ) external view returns (uint256) {
        int256 exponent1 = (-int256(config.haircutImbalanceSmallTheta).wmul(rFromAsset));
        int256 imbalanceInFromAsset;
        if (exponent1 > 0) {
            revert('getImbalanceHaircutRate: invalid exponent1');
        } else if (exponent1 <= MIN_NATURAL_EXPONENT) {
            // imbalanceInFromAsset = 0;
        } else {
            imbalanceInFromAsset = LogExpMath.exp(exponent1);
        }

        int256 exponent2 = (-int256(config.haircutImbalanceSmallTheta).wmul(rToAsset));
        int256 imbalanceInToAsset;
        if (exponent2 > 0) {
            revert('getImbalanceHaircutRate: invalid exponent2');
        } else if (exponent2 <= MIN_NATURAL_EXPONENT) {
            // imbalanceInToAsset = 0;
        } else {
            imbalanceInToAsset = LogExpMath.exp(exponent2);
        }

        return ((imbalanceInFromAsset + imbalanceInToAsset).toUint256() / 2).wmul(config.haircutImbalanceMax);
    }

    //#endregion External View Functions

    //#region Private View Functions

    function _createNewPointHistory(
        PointHistory memory lastPoint,
        uint40 blockTimestamp,
        int32 value,
        int32 meanValueInWindow,
        uint24 windowStartIndex
    ) private pure returns (PointHistory memory) {
        uint256 delta = blockTimestamp - lastPoint.pointTimestamp;

        lastPoint.pointTimestamp = blockTimestamp;
        lastPoint.valueCumulative += int64(lastPoint.value * int256(uint256(delta)));
        lastPoint.volatilityCumulative += uint64(
            _volatilityOnRange(int256(delta), lastPoint.value, value, lastPoint.meanValueInWindow)
        );
        lastPoint.value = value;
        lastPoint.meanValueInWindow = meanValueInWindow;
        lastPoint.windowStartIndex = windowStartIndex;
        return lastPoint;
    }

    /**
     * @notice Get the TWMA of `value` in the last WINDOW
     * @dev Use `valueCumulative` to calculage average tick in the past `WINDOW` seconds
     */
    function _getMeanValueInWindow(
        PointHistory[TIME_POINT_LENGTH] storage pointHistories,
        uint256 blockTimestamp,
        uint256 lastIndex,
        uint256 oldestIndex,
        int32 value, // is this the last value or current value?
        uint40 lastPointTimestamp,
        int64 lastValueCumulative
    ) private view returns (int256) {
        PointHistory storage lastPoint = pointHistories[lastIndex];
        PointHistory storage oldestPoint = pointHistories[oldestIndex];

        int256 currentValueCumulative = lastValueCumulative +
            (lastPoint.value * int256(blockTimestamp - lastPointTimestamp));

        // Case 1: `oldestBlockTimestamp` > `blockTimestamp - WINDOW`, we just use the oldest time point
        // This should happen only when point history is bootstrapping, since `TIME_POINT_LENGTH >= WINDOW`
        uint256 oldestTimestamp = oldestPoint.pointTimestamp;
        if (oldestTimestamp > blockTimestamp - WINDOW) {
            // calculate the mean value between `oldestPoint` and `blockTimestamp` (NOT `lastPoint`)
            if (blockTimestamp == oldestTimestamp) {
                return value;
            }

            return (currentValueCumulative - oldestPoint.valueCumulative) / int256(blockTimestamp - oldestTimestamp);
        }

        // Case 2: `oldestBlockTimestamp` <= `blockTimestamp - WINDOW`

        // calculate the mean value between `windowStartIndex` and `blockTimestamp`
        // note that this may be slightly longer than `WINDOW`
        uint256 windowStartIndex = lastPoint.windowStartIndex;
        PointHistory storage windowStartPoint = pointHistories[windowStartIndex];

        return
            (currentValueCumulative - windowStartPoint.valueCumulative) /
            int256(blockTimestamp - windowStartPoint.pointTimestamp);
    }

    /// @dev the return value is (average volatility in window)^2 in BASE scale
    function _getMeanVolatilityInWindow(
        PointHistory[TIME_POINT_LENGTH] storage pointHistories,
        uint256 lastIndex,
        uint256 blockTimestamp
    ) private view returns (uint256) {
        PointHistory storage lastPoint = pointHistories[lastIndex];
        uint256 oldestIndex = _getOldestIndex(pointHistories, lastIndex);
        PointHistory storage oldestPoint = pointHistories[oldestIndex];

        uint256 lastVolatilityCumulative = lastPoint.volatilityCumulative;
        uint256 currentVolatilityCumulative = lastVolatilityCumulative +
            _volatilityOnRange(
                int256(uint256(blockTimestamp - lastPoint.pointTimestamp)),
                lastPoint.value,
                lastPoint.value,
                lastPoint.meanValueInWindow
            );
        uint256 lastPointTimestamp = lastPoint.pointTimestamp;

        // Case 1: `oldestBlockTimestamp` > `blockTimestamp - WINDOW`, we just use the oldest time point
        // This should happen only when point history is bootstrapping, since `TIME_POINT_LENGTH >= WINDOW`
        uint256 oldestTimestamp = oldestPoint.pointTimestamp;
        if (oldestTimestamp > blockTimestamp - WINDOW) {
            // calculate the mean volatility between `oldestPoint` and `lastPoint`
            if (lastPointTimestamp == oldestTimestamp) {
                return 0;
            }

            return
                (currentVolatilityCumulative - oldestPoint.volatilityCumulative) / ((blockTimestamp - oldestTimestamp));
        }

        // calculate the mean volatility between `windowStartIndex` and `lastPoint`
        uint256 windowStartIndex = lastPoint.windowStartIndex;
        PointHistory storage windowStartPoint = pointHistories[windowStartIndex];

        // Case 2: `oldestBlockTimestamp` <= `blockTimestamp - WINDOW`

        return
            (currentVolatilityCumulative - windowStartPoint.volatilityCumulative) /
            ((blockTimestamp - windowStartPoint.pointTimestamp));
    }

    /**
     * @notice Find the closest timepoint which its timestamp is greater than or equal to the `targetTimestamp`
     * @dev this is used to calculate `windowStartIndex`
     */
    function _findTimepointIndex(
        PointHistory[TIME_POINT_LENGTH] storage pointHistories,
        uint40 targetTimestamp,
        uint256 lastIndex,
        uint256 oldestIndex
    ) private view returns (uint256 windowStartIndex) {
        PointHistory storage lastPoint = pointHistories[lastIndex];
        PointHistory storage oldestPoint = pointHistories[oldestIndex];
        if (targetTimestamp >= lastPoint.pointTimestamp) {
            return lastIndex;
        } else if (targetTimestamp <= oldestPoint.pointTimestamp) {
            return oldestIndex;
        }

        // binary search
        uint256 left = oldestIndex;
        uint256 right = lastIndex;

        while (left != right) {
            uint256 mid = left < right
                ? (left + right) / 2
                : ((left + right + TIME_POINT_LENGTH) / 2) % TIME_POINT_LENGTH;
            PointHistory storage midPoint = pointHistories[mid];
            if (midPoint.pointTimestamp == targetTimestamp) {
                return mid;
            } else if (midPoint.pointTimestamp > targetTimestamp) {
                right = mid;
            } else {
                left = (mid + 1) % TIME_POINT_LENGTH;
            }
        }

        return left;
    }

    function _getOldestIndex(
        PointHistory[TIME_POINT_LENGTH] storage pointHistories,
        uint256 lastIndex
    ) private view returns (uint256) {
        uint256 nextIndex = (lastIndex + 1) % TIME_POINT_LENGTH;

        if (pointHistories[nextIndex].pointTimestamp > 0) {
            // If the next time point is initialized, use that to be the oldest one
            return nextIndex;
        } else {
            return 0;
        }
    }

    /**
     * @dev integrate (value_t - meanValueInWindow)^2 over t in range (0, dt)
     * express value_t in value0 + (value1 - value0) / dt * t =  value0 + k*t
     *
     * (value_t - meanValueInWindow)^2 = value_t^2 - 2 * value_t * meanValueInWindow - meanValueInWindow^2
     * (k*t + value0 - meanValueInWindow)^2 = k^2 * t^2 + 2k(value0 - meanValueInWindow)t + (value0 - meanValueInWindow)^2
     */
    function _volatilityOnRange(
        int256 dt,
        int256 value0,
        int256 value1,
        int256 meanValueInWindow
    ) internal pure returns (uint256 volatility) {
        if (dt == 0) {
            return 0;
        }
        int256 linearIntegral = (dt ** 2) / 2;
        int256 squareIntegral = (dt ** 3) / 3;
        int256 k = (value1 - value0) / dt;

        int256 a = (k ** 2) * squareIntegral;
        int256 b = (2 * k * (value0 - meanValueInWindow)) * linearIntegral;
        int256 c = ((value0 - meanValueInWindow) ** 2) * dt; // dt is constant integral

        uint256 result = ((a + b + c) / BASE).toUint256();
        // This return value always fits in `2^32 * dt`
        if (result / uint256(dt) > type(uint32).max) revert DynamicFeeHelper__VOLATILITY_TOO_LARGE();

        return result;
    }

    //#endregion Private View Functions
}

// ============================================================
// FILE: contracts/wombat-core/libraries/RepegHelper.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';
import '../libraries/SignedSafeMath.sol';
import '../pool/CoreV4.sol';
import '../../wombat-governance/libraries/LogExpMath.sol';

struct RepegData {
    // for oracle
    uint128 oracleEmaHalfTime;
    uint128 lastOracleTimestamp;
    // for repegging condition
    /// @notice The base asset that always has `priceScale` = 1
    /// @dev It is used to calculate the relative price of other assets
    IVolatileAsset priceAnchor;
    uint64 minAdjustmentStep; // Unit: WAD
    uint32 psi; // Unit: 1
}

/**
 * @title Core
 * @notice Handles math operations of Wombat protocol. Assume all params are signed integer with 18 decimals
 * @dev Uses OpenZeppelin's SignedSafeMath and DSMath's WAD for calculations.
 * Note: Internal functions are for testing purpose
 * Change log:
 * - Move view functinos (quotes, high cov ratio fee) from the Pool contract to this contract
 * - Add quote functions for cross chain swaps
 */
library RepegHelper {
    using AssetLibrary for AssetLibrary.AssetMap;
    using DSMath for uint256;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    uint256 private constant WAD = 10 ** 18;

    //#region Events

    /// @notice Event emitted when the internal price oracle is updated
    event UpdateOracle(IERC20 token, uint256 newValue);

    /// @notice Event emitted when the price scale of an asset is updated
    event UpdatePriceScale(IERC20 token, uint256 newValue);

    // @notice Event emitted when repeg happens
    event Repeg(uint256 newGlobalEquilCovRatio);

    //#endregion Events

    //#region private Oracle

    /**
     * @notice Update internal oracle prices after coverage ratio of assets are changed, or price scales are updated
     */
    function updateOracle(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        uint256 ampFactor
    ) external {
        if (myStruct.lastOracleTimestamp == block.timestamp) {
            // Update oracle only once per block in case of oracle manipulation
            return;
        }
        uint256[] memory proposedOracles = _getProposedOraclePrices(myStruct, _assets, ampFactor);
        uint256 assetCount = _assets.count();
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            asset.setOraclePrice(proposedOracles[i]);
            emit UpdateOracle(IERC20(asset.underlyingToken()), proposedOracles[i]);
        }
        myStruct.lastOracleTimestamp = uint128(block.timestamp);
    }

    // Queries

    /**
     * @notice get the market price of an asset in terms of the priceAnchor (stablecoin in most case)
     * @dev aka `priceLast`
     */
    function getMarketPrice(
        RepegData storage myStruct,
        IVolatileAsset asset,
        uint256 ampFactor
    ) public view returns (uint256) {
        return (quoteIdealSwapRate(asset, myStruct.priceAnchor, ampFactor) * myStruct.priceAnchor.priceScale()) / WAD;
    }

    /**
     * @notice get the marginal swap rate for asset x to asset y
     * @dev The return value is in 18 decimals regardless of decimals of assets
     */
    function quoteIdealSwapRate(
        IVolatileAsset fromAsset,
        IVolatileAsset toAsset,
        uint256 ampFactor
    ) public view returns (uint256) {
        uint256 r_x = uint256(fromAsset.cash()).wdiv(fromAsset.liability());
        uint256 r_y = uint256(toAsset.cash()).wdiv(toAsset.liability());
        uint256 tmp1 = fromAsset.priceScale() * (WAD + (((ampFactor * WAD) / r_x) * WAD) / r_x);
        uint256 tmp2 = toAsset.priceScale() * (WAD + (((ampFactor * WAD) / r_y) * WAD) / r_y);

        return tmp1.wdiv(tmp2);
    }

    function _getProposedOraclePrices(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        uint256 ampFactor
    ) internal view returns (uint256[] memory proposedOracles) {
        uint256 assetCount = _assets.count();
        proposedOracles = new uint256[](assetCount);
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            proposedOracles[i] = _getProposedOraclePrice(myStruct, asset, ampFactor);
        }

        return proposedOracles;
    }

    function _getProposedOraclePrice(
        RepegData storage myStruct,
        IVolatileAsset asset,
        uint256 ampFactor
    ) private view returns (uint256 newOracle) {
        if (asset == myStruct.priceAnchor) {
            // oracle prices of anchor asset never changes
            return asset.oraclePrice();
        }

        uint256 priceLast = getMarketPrice(myStruct, asset, ampFactor);
        uint256 exponent = (block.timestamp - myStruct.lastOracleTimestamp).wdiv(myStruct.oracleEmaHalfTime);
        uint256 decayFactor = exponent <= 59e18 ? LogExpMath.pow(0.5e18, exponent) : 0; // 59 = -41/Math.log(0.5)

        uint256 priceScale = asset.priceScale();
        uint256 boundedPriceLast;
        if (priceLast >= 2 * priceScale) {
            boundedPriceLast = 2 * priceScale;
        } else if (priceLast <= priceScale / 2) {
            boundedPriceLast = priceScale / 2;
        } else {
            boundedPriceLast = priceLast;
        }

        // Assumption: decayFactor <= WAD
        newOracle = (decayFactor * asset.oraclePrice() + (WAD - decayFactor) * boundedPriceLast) / WAD;
        return newOracle;
    }

    //#endregion private Oracle

    //#region Repegging

    function attemptRepeg(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve,
        uint256 ampFactor
    ) external returns (bool success) {
        (bool canRepeg, uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales) = checkRepegCondition(
            myStruct,
            _assets,
            _feeAndReserve,
            ampFactor
        );

        if (canRepeg) {
            _doRepeg(myStruct, _assets, _feeAndReserve, proposedGlobalEquilCovRatio, proposedScales);
            return true;
        }
        return false;
    }

    function _doRepeg(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve,
        uint256 newGlobalEquilCovRatio,
        uint256[] memory newPriceScales
    ) private {
        uint256 assetCount = _assets.count();
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            asset.addCash(_feeAndReserve[asset].reserveForRepegging);
            _feeAndReserve[asset].reserveForRepegging = 0;
        }
        _updatePriceScale(myStruct, _assets, newPriceScales);

        emit Repeg(newGlobalEquilCovRatio);
    }

    function checkRepegCondition(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve,
        uint256 ampFactor
    ) public view returns (bool canRepeg, uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales) {
        // Condition 1: norm, which value is `root-mean-square of relative price deviation * number of assets`,
        // is greater than adjustment step
        uint256 norm = _getNorm(_assets);
        if (norm < myStruct.minAdjustmentStep) {
            return (false, proposedGlobalEquilCovRatio, proposedScales);
        }

        // Condition 2: r* >= 1 after repeg

        (proposedGlobalEquilCovRatio, proposedScales) = estimateNewGlobalEquilCovRatio(
            myStruct,
            _assets,
            _feeAndReserve,
            ampFactor
        );

        if (proposedGlobalEquilCovRatio >= WAD) {
            return (true, proposedGlobalEquilCovRatio, proposedScales);
        } else {
            return (false, proposedGlobalEquilCovRatio, proposedScales);
        }
    }

    function estimateNewGlobalEquilCovRatio(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve,
        uint256 ampFactor
    ) public view returns (uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales) {
        uint256 norm = _getNorm(_assets);
        uint256[] memory newCashValues = _getCashValuesWithReserve(_assets, _feeAndReserve);
        uint256 assetCount = newCashValues.length;
        uint256[] memory liabilities = new uint256[](assetCount);
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            liabilities[i] = asset.liability();
        }
        uint256 normalizedAdjustmentStep = _getNormalizedAdjustmentStep(myStruct, norm);
        proposedScales = _getProposedPriceScales(myStruct, _assets, normalizedAdjustmentStep);

        proposedGlobalEquilCovRatio = CoreV4.calculateProposedGlobalEquilCovRatio(
            newCashValues,
            liabilities,
            proposedScales,
            ampFactor
        );

        return (proposedGlobalEquilCovRatio, proposedScales);
    }

    /**
     * @notice Update price scale during re-pegging, under the condition that r* >= 1
     */
    function _updatePriceScale(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        uint256[] memory newPriceScales
    ) private {
        for (uint256 i; i < newPriceScales.length; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            if (asset != myStruct.priceAnchor) {
                asset.setPriceScale(newPriceScales[i]);
                emit UpdatePriceScale(IERC20(asset.underlyingToken()), newPriceScales[i]);
            }
        }
    }

    /// @dev Assumption: normalizedAdjustmentStep <= WAD
    function _getProposedPriceScales(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        uint256 normalizedAdjustmentStep
    ) internal view returns (uint256[] memory proposedScales) {
        uint256 assetCount = _assets.count();
        proposedScales = new uint256[](assetCount);
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            proposedScales[i] = _getProposedPriceScale(myStruct, asset, normalizedAdjustmentStep);
        }

        return proposedScales;
    }

    /** @notice root-mean-square of relative price deviation * number of assets
     * @dev We re-peg only if the value is greater than `adjustmentStep`
     */
    function _getNorm(AssetLibrary.AssetMap storage _assets) internal view returns (uint256) {
        uint256 sum;
        uint256 assetCount = _assets.count();
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            uint256 oraclePrice = asset.oraclePrice();
            uint256 priceScale = asset.priceScale();
            uint256 x;
            if (oraclePrice >= priceScale) {
                x = oraclePrice.wdiv(priceScale) - WAD;
            } else {
                x = WAD - oraclePrice.wdiv(priceScale);
            }
            sum += x * x; // Note: 36 decimals
        }
        return sum.sqrt();
    }

    /// @notice The relative distance of change of `priceScale` towards `oraclePrice` after repegging
    function _getNormalizedAdjustmentStep(RepegData storage myStruct, uint256 norm) internal view returns (uint256) {
        uint256 value = norm / myStruct.psi;
        uint256 lowerBound = myStruct.minAdjustmentStep;
        if (value < lowerBound) {
            // the result is lower bounded by WAD / psi, which is 0.2 WAD by default
            return lowerBound;
        } else {
            return value;
        }
    }

    function _getCashValuesWithReserve(
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve
    ) internal view returns (uint256[] memory cashValuesWithReserve) {
        uint256 assetCount = _assets.count();
        cashValuesWithReserve = new uint256[](assetCount);
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            cashValuesWithReserve[i] = asset.cash() + _feeAndReserve[asset].reserveForRepegging;
        }

        return cashValuesWithReserve;
    }

    function _getProposedPriceScale(
        RepegData storage myStruct,
        IVolatileAsset asset,
        uint256 normalizedAdjustmentStep
    ) private view returns (uint256 newPriceScale) {
        if (asset == myStruct.priceAnchor) {
            // price scale of anchor asset never changes
            return asset.priceScale();
        }

        // Assumption: normalizedAdjustmentStep <= WAD, ensured in `_getProposedPriceScales`
        uint256 oracle = asset.oraclePrice();
        uint256 scale = asset.priceScale();
        newPriceScale = ((oracle * normalizedAdjustmentStep + scale * (WAD - normalizedAdjustmentStep)) / WAD);
        return newPriceScale;
    }

    //#endregion Repegging
}

// ============================================================
// FILE: contracts/wombat-core/libraries/SignedSafeMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.3.2 (utils/math/SignedSafeMath.sol)

pragma solidity ^0.8.5;

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SignedSafeMath` is no longer needed starting with Solidity 0.8. The compiler
 * now has built in overflow checking.
 */
library SignedSafeMath {
    int256 public constant WAD = 10 ** 18;

    //rounds to zero if x*y < WAD / 2
    function wdiv(int256 x, int256 y) internal pure returns (int256) {
        return ((x * WAD) + (y / 2)) / y;
    }

    //rounds to zero if x*y < WAD / 2
    function wmul(int256 x, int256 y) internal pure returns (int256) {
        return ((x * y) + (WAD / 2)) / WAD;
    }

    // Babylonian Method (typecast as int)
    function sqrt(int256 y) internal pure returns (int256 z) {
        if (y > 3) {
            z = y;
            int256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    // Babylonian Method with initial guess (typecast as int)
    function sqrt(int256 y, int256 guess) internal pure returns (int256 z) {
        if (y > 3) {
            if (guess > 0 && guess <= y) {
                z = guess;
            } else if (guess < 0 && -guess <= y) {
                z = -guess;
            } else {
                z = y;
            }
            int256 x = (y / z + z) / 2;
            while (x != z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    // Convert x to WAD (18 decimals) from d decimals.
    function toWad(int256 x, uint8 d) internal pure returns (int256) {
        if (d < 18) {
            return x * int256(10 ** (18 - d));
        } else if (d > 18) {
            return (x / int256(10 ** (d - 18)));
        }
        return x;
    }

    // Convert x from WAD (18 decimals) to d decimals.
    function fromWad(int256 x, uint8 d) internal pure returns (int256) {
        if (d < 18) {
            return (x / int256(10 ** (18 - d)));
        } else if (d > 18) {
            return x * int256(10 ** (d - 18));
        }
        return x;
    }

    function toUint256(int256 value) internal pure returns (uint256) {
        require(value >= 0, 'value must be positive');
        return uint256(value);
    }

    function toInt256(uint256 value) internal pure returns (int256) {
        require(value <= uint256(type(int256).max), 'value must be positive');
        return int256(value);
    }

    function abs(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            return uint256(-value);
        } else {
            return uint256(value);
        }
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/CoreV4.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import './PoolV4Data.sol';
import '../interfaces/IRelativePriceProvider.sol';
import '../libraries/DSMath.sol';
import '../libraries/SignedSafeMath.sol';
import '../../wombat-governance/libraries/LogExpMath.sol';

/**
 * @title Core
 * @notice Handles math operations of Wombat protocol. Assume all params are signed integer with 18 decimals
 * @dev Uses OpenZeppelin's SignedSafeMath and DSMath's WAD for calculations.
 * Note: Internal functions are for testing purpose
 * Change log:
 * - Move view functinos (quotes, high cov ratio fee) from the Pool contract to this contract
 * - Add quote functions for cross chain swaps
 */
library CoreV4 {
    using AssetLibrary for AssetLibrary.AssetMap;
    using DSMath for uint256;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    int256 private constant WAD_I = 10 ** 18;
    uint256 private constant WAD = 10 ** 18;

    //#region Error

    error CORE_UNDERFLOW();
    error CORE_INVALID_VALUE();
    error CORE_INVALID_HIGH_COV_RATIO_FEE();
    error CORE_ZERO_LIQUIDITY();
    error CORE_CASH_NOT_ENOUGH();
    error CORE_COV_RATIO_LIMIT_EXCEEDED();

    error WOMBAT_FORBIDDEN();

    error WOMBAT_ZERO_ADDRESS();
    error WOMBAT_AMOUNT_TOO_LOW();
    error WOMBAT_ZERO_LIQUIDITY();
    error WOMBAT_SAME_ADDRESS();

    //#endregion Error

    //#region Modifier

    function _checkLiquidity(uint256 liquidity) private pure {
        if (liquidity == 0) revert WOMBAT_ZERO_LIQUIDITY();
    }

    function _checkAddress(address to) private pure {
        if (to == address(0)) revert WOMBAT_ZERO_ADDRESS();
    }

    function _checkSameAddress(address from, address to) private pure {
        if (from == to) revert WOMBAT_SAME_ADDRESS();
    }

    function _checkAmount(uint256 minAmt, uint256 amt) private pure {
        if (minAmt > amt) revert WOMBAT_AMOUNT_TOO_LOW();
    }

    //#endregion Modifier

    //#region Swap Logic

    /**
     * expect fromAmount and minimumToAmount to be in WAD
     */
    function performSwap(
        PoolV4Data storage poolData,
        IAsset fromAsset,
        IAsset toAsset,
        uint256 fromAmount,
        uint256 minimumToAmount,
        uint256 actualToAmount,
        uint256 toTokenFee
    ) external {
        _checkAmount(minimumToAmount, actualToAmount);

        _accumulateFee(poolData, toAsset, toTokenFee);

        fromAsset.addCash(fromAmount);

        // haircut is removed from cash to maintain r* = 1. It is distributed during _mintFee()

        toAsset.removeCash(actualToAmount + toTokenFee);

        // mint fee is skipped for swap to save gas,

        // revert if cov ratio < 1% to avoid precision error
        if (uint256(toAsset.cash()).wdiv(toAsset.liability()) < WAD / 100) revert WOMBAT_FORBIDDEN();
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and haircut
     * @param fromAsset The initial asset
     * @param toAsset The asset wanted by user
     * @param fromAmount The amount to quote
     * @param scaleFactor the relative price that should applied on from-amounts in a swap
     * @return actualToAmount The actual amount user would receive
     * @return haircut The haircut that will be applied
     */
    function quoteSwap(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate
    ) public view returns (uint256 actualToAmount, uint256 haircut) {
        // exact output swap quote should count haircut before swap
        if (fromAmount < 0) {
            fromAmount = fromAmount.wdiv(WAD_I - int256(haircutRate));
            haircut = uint256(-fromAmount).wmul(haircutRate);
        }

        uint256 fromCash = uint256(fromAsset.cash());
        uint256 fromLiability = uint256(fromAsset.liability());
        uint256 toCash = uint256(toAsset.cash());

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            fromAmount = (fromAmount * scaleFactor.toInt256()) / 1e18;
        }

        uint256 idealToAmount = _swapQuoteFunc(
            fromCash.toInt256(),
            toCash.toInt256(),
            fromLiability.toInt256(),
            int256(uint256(toAsset.liability())),
            fromAmount,
            ampFactor.toInt256()
        );
        if ((fromAmount > 0 && toCash < idealToAmount) || (fromAmount < 0 && fromCash < uint256(-fromAmount))) {
            revert CORE_CASH_NOT_ENOUGH();
        }

        if (fromAmount > 0) {
            // normal quote
            haircut = idealToAmount.wmul(haircutRate);
            actualToAmount = idealToAmount - haircut;
        } else {
            // exact output swap quote count haircut in the fromAmount
            actualToAmount = idealToAmount;
        }
    }

    /**
     * @dev Exact output swap (fromAmount < 0) should be only used by off-chain quoting function as it is a gas monster
     */
    function quoteSwapForHighCovRatioPool(
        PoolV4Data storage poolData,
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount,
        uint256 scaleFactor,
        uint256 haircutRate
    ) public view returns (uint256 actualToAmount, uint256 toTokenFee) {
        (actualToAmount, toTokenFee) = quoteSwap(
            fromAsset,
            toAsset,
            fromAmount,
            poolData.ampFactor,
            scaleFactor,
            haircutRate
        );

        if (poolData.endCovRatio == 0) {
            // early return without taking high cov ratio fee into account
            return (actualToAmount, toTokenFee);
        }

        if (fromAmount >= 0) {
            uint256 highCovRatioFee = _highCovRatioFee(
                fromAsset.cash(),
                fromAsset.liability(),
                uint256(fromAmount),
                actualToAmount,
                poolData.startCovRatio,
                poolData.endCovRatio
            );

            actualToAmount -= highCovRatioFee;
            toTokenFee += highCovRatioFee;
        } else {
            // reverse quote
            uint256 toAssetCash = toAsset.cash();
            uint256 toAssetLiability = toAsset.liability();
            uint256 finalToAssetCovRatio = (toAssetCash + actualToAmount).wdiv(toAssetLiability);
            if (finalToAssetCovRatio <= poolData.startCovRatio) {
                // happy path: no high cov ratio fee is charged
                return (actualToAmount, toTokenFee);
            } else if (toAssetCash.wdiv(toAssetLiability) >= poolData.endCovRatio) {
                // the to-asset exceeds it's cov ratio limit, further swap to increase cov ratio is impossible
                revert CORE_COV_RATIO_LIMIT_EXCEEDED();
            }

            // reverse quote: cov ratio of the to-asset exceed endCovRatio. direct reverse quote is not supported
            // we binary search for a upper bound
            actualToAmount = _findUpperBound(
                poolData,
                toAsset,
                fromAsset,
                uint256(-fromAmount),
                WAD.wdiv(scaleFactor),
                haircutRate
            );
            (, toTokenFee) = quoteSwapForHighCovRatioPool(
                poolData,
                toAsset,
                fromAsset,
                actualToAmount.toInt256(),
                WAD.wdiv(scaleFactor),
                haircutRate
            );
        }
    }

    /**
     * @notice Binary search to find the upper bound of `fromAmount` required to swap `fromAsset` to `toAmount` of `toAsset`
     * @dev This function should only used as off-chain view function as it is a gas monster
     */
    function _findUpperBound(
        PoolV4Data storage poolData,
        IAsset fromAsset,
        IAsset toAsset,
        uint256 toAmount,
        uint256 scaleFactor,
        uint256 haircutRate
    ) private view returns (uint256 upperBound) {
        uint8 decimals = fromAsset.underlyingTokenDecimals();
        // the search value uses the same number of digits as the token
        uint256 high = (uint256(fromAsset.liability()).wmul(poolData.endCovRatio) - fromAsset.cash()).fromWad(decimals);
        uint256 low = 1;

        // verify `high` is a valid upper bound
        uint256 quote;
        (quote, ) = quoteSwapForHighCovRatioPool(
            poolData,
            fromAsset,
            toAsset,
            (high.toWad(decimals)).toInt256(),
            scaleFactor,
            haircutRate
        );
        if (quote < toAmount) revert CORE_COV_RATIO_LIMIT_EXCEEDED();

        // Note: we might limit the maximum number of rounds if the request is always rejected by the RPC server
        while (low < high) {
            uint256 mid = (low + high) / 2;
            (quote, ) = quoteSwapForHighCovRatioPool(
                poolData,
                fromAsset,
                toAsset,
                (mid.toWad(decimals)).toInt256(),
                scaleFactor,
                haircutRate
            );
            if (quote >= toAmount) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }
        return high.toWad(decimals);
    }

    /// @dev reverse quote is not supported
    /// haircut is calculated in the fromToken when swapping tokens for credit
    function quoteSwapTokensForCredit(
        IAsset fromAsset,
        uint256 fromAmount,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate,
        uint256 startCovRatio,
        uint256 endCovRatio
    ) external view returns (uint256 creditAmount, uint256 fromTokenFee) {
        if (fromAmount == 0) return (0, 0);
        // haircut
        fromTokenFee = fromAmount.wmul(haircutRate);

        // high coverage ratio fee

        uint256 fromCash = fromAsset.cash();
        uint256 fromLiability = fromAsset.liability();
        fromTokenFee += _highCovRatioFee(
            fromCash,
            fromLiability,
            fromAmount,
            fromAmount - fromTokenFee, // calculate haircut in the fromAmount (exclude haircut)
            startCovRatio,
            endCovRatio
        );

        fromAmount -= fromTokenFee;

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            fromAmount = (fromAmount * scaleFactor) / 1e18;
        }

        creditAmount = _swapToCreditQuote(
            fromCash.toInt256(),
            fromLiability.toInt256(),
            fromAmount.toInt256(),
            ampFactor.toInt256()
        );
    }

    /// @dev reverse quote is not supported
    function quoteSwapCreditForTokens(
        uint256 fromAmount,
        IAsset toAsset,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate
    ) external view returns (uint256 actualToAmount, uint256 toTokenFee) {
        if (fromAmount == 0) return (0, 0);
        uint256 toCash = toAsset.cash();
        uint256 toLiability = toAsset.liability();

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromAmount = (fromAmount * scaleFactor) / 1e18;
        }

        uint256 idealToAmount = _swapFromCreditQuote(
            toCash.toInt256(),
            toLiability.toInt256(),
            fromAmount.toInt256(),
            ampFactor.toInt256()
        );
        if (fromAmount > 0 && toCash < idealToAmount) {
            revert CORE_CASH_NOT_ENOUGH();
        }

        // normal quote
        toTokenFee = idealToAmount.wmul(haircutRate);
        actualToAmount = idealToAmount - toTokenFee;
    }

    //#endregion Swap Logic

    //#region Deposit Logic

    /**
     * @notice Deposits asset in Pool
     * @param asset The asset to be deposited
     * @param amount The amount to be deposited
     * @param minimumLiquidity The minimum amount of liquidity to receive
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @return liquidity Total asset liquidity minted
     */
    function deposit(
        PoolV4Data storage poolData,
        int256 globalEquilCovRatioForDepositWithdrawal,
        IAsset asset,
        uint256 amount,
        uint256 minimumLiquidity,
        address to
    ) external returns (uint256 liquidity) {
        // collect fee before deposit
        _mintFeeIfNeeded(poolData, asset, globalEquilCovRatioForDepositWithdrawal);

        uint256 liabilityToMint;
        (liquidity, liabilityToMint) = _quoteDepositLiquidity(
            asset,
            amount,
            poolData.ampFactor,
            globalEquilCovRatioForDepositWithdrawal
        );

        _checkLiquidity(liquidity);
        _checkAmount(minimumLiquidity, liquidity);

        asset.addCash(amount);
        asset.addLiability(liabilityToMint);
        asset.mint(to, liquidity);
    }

    function quotePotentialDeposit(
        PoolV4Data storage poolData,
        IERC20 token,
        uint256 amount,
        int256 globalEquilCovRatioForDepositWithdrawal
    ) external view returns (uint256 liquidity) {
        IAsset asset = poolData.assets.assetOf(token);
        uint8 decimals = asset.underlyingTokenDecimals();
        (liquidity, ) = _quoteDepositLiquidity(
            asset,
            amount.toWad(decimals),
            poolData.ampFactor,
            globalEquilCovRatioForDepositWithdrawal
        );
    }

    /**
     * This function calculate the exactly amount of liquidity of the deposit. Assumes r* = 1
     */
    function _quoteDepositLiquidity(
        IAsset asset,
        uint256 amount,
        uint256 ampFactor,
        int256 _equilCovRatio
    ) private view returns (uint256 lpTokenToMint, uint256 liabilityToMint) {
        liabilityToMint = _equilCovRatio == WAD_I
            ? _exactDepositLiquidityInEquilImpl(
                amount.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256()
            ).toUint256()
            : _exactDepositLiquidityImpl(
                amount.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256(),
                _equilCovRatio
            ).toUint256();

        // Calculate amount of LP to mint : ( deposit + reward ) * TotalAssetSupply / Liability
        uint256 liability = asset.liability();
        lpTokenToMint = (liability == 0 ? liabilityToMint : (liabilityToMint * asset.totalSupply()) / liability);
    }

    //#endregion Deposit Logic

    //#region Withdrawal Logic

    function withdraw(
        PoolV4Data storage poolData,
        int256 globalEquilCovRatioForDepositWithdrawal,
        IAsset asset,
        uint256 liquidity,
        uint256 minimumAmount
    ) external returns (uint256 amount, uint256 withdrawalHaircut) {
        // collect fee before withdraw
        _mintFeeIfNeeded(poolData, asset, globalEquilCovRatioForDepositWithdrawal);

        // calculate liabilityToBurn and Fee
        uint256 liabilityToBurn;
        (amount, liabilityToBurn, withdrawalHaircut) = _quoteWithdrawAmount(
            asset,
            liquidity,
            poolData.ampFactor,
            globalEquilCovRatioForDepositWithdrawal,
            poolData.withdrawalHaircutRate
        );
        _checkAmount(minimumAmount, amount);

        asset.burn(address(asset), liquidity);
        asset.removeCash(amount + withdrawalHaircut);
        asset.removeLiability(liabilityToBurn);

        // revert if cov ratio < 1% to avoid precision error
        if (asset.liability() > 0 && uint256(asset.cash()).wdiv(asset.liability()) < WAD / 100)
            revert WOMBAT_FORBIDDEN();

        if (withdrawalHaircut > 0) {
            _accumulateFee(poolData, asset, withdrawalHaircut);
        }
    }

    function quotePotentialWithdraw(
        PoolV4Data storage poolData,
        int256 globalEquilCovRatioForDepositWithdrawal,
        IERC20 token,
        uint256 liquidity
    ) external view returns (uint256 amount) {
        _checkLiquidity(liquidity);
        IAsset asset = poolData.assets.assetOf(token);
        (amount, , ) = _quoteWithdrawAmount(
            asset,
            liquidity,
            poolData.ampFactor,
            globalEquilCovRatioForDepositWithdrawal,
            poolData.withdrawalHaircutRate
        );

        uint8 decimals = asset.underlyingTokenDecimals();
        amount = amount.fromWad(decimals);
    }

    function quotePotentialWithdrawFromOtherAsset(
        PoolV4Data storage poolData,
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity,
        uint256 scaleFactor,
        uint256 haircutRate,
        int256 globalEquilCovRatioForDepositWithdrawal
    ) external view returns (uint256 finalAmount, uint256 withdrewAmount) {
        _checkLiquidity(liquidity);
        _checkSameAddress(address(fromToken), address(toToken));

        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);
        (finalAmount, withdrewAmount) = _quoteWithdrawAmountFromOtherAsset(
            fromAsset,
            toAsset,
            liquidity,
            poolData.ampFactor,
            scaleFactor,
            haircutRate,
            poolData.startCovRatio, // this value is 0 for base pool
            poolData.endCovRatio, // this value is 0 for base pool
            globalEquilCovRatioForDepositWithdrawal,
            poolData.withdrawalHaircutRate
        );

        withdrewAmount = withdrewAmount.fromWad(fromAsset.underlyingTokenDecimals());
        finalAmount = finalAmount.fromWad(toAsset.underlyingTokenDecimals());
    }

    function _quoteWithdrawAmountFromOtherAsset(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 liquidity,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate,
        uint256 startCovRatio,
        uint256 endCovRatio,
        int256 _equilCovRatio,
        uint256 withdrawalHaircutRate
    ) private view returns (uint256 finalAmount, uint256 withdrewAmount) {
        // quote withdraw
        uint256 withdrawalHaircut;
        uint256 liabilityToBurn;
        (withdrewAmount, liabilityToBurn, withdrawalHaircut) = _quoteWithdrawAmount(
            fromAsset,
            liquidity,
            ampFactor,
            _equilCovRatio,
            withdrawalHaircutRate
        );

        // quote swap
        uint256 fromCash = fromAsset.cash() - withdrewAmount - withdrawalHaircut;
        uint256 fromLiability = fromAsset.liability() - liabilityToBurn;

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            withdrewAmount = (withdrewAmount * scaleFactor) / 1e18;
        }

        uint256 idealToAmount = _swapQuoteFunc(
            fromCash.toInt256(),
            int256(uint256(toAsset.cash())),
            fromLiability.toInt256(),
            int256(uint256(toAsset.liability())),
            withdrewAmount.toInt256(),
            ampFactor.toInt256()
        );

        // remove haircut
        finalAmount = idealToAmount - idealToAmount.wmul(haircutRate);

        // `endCovRatio` will be 0 for base pool
        if (endCovRatio > 0) {
            // charge high cov ratio fee
            uint256 fee = _highCovRatioFee(
                fromCash,
                fromLiability,
                withdrewAmount,
                finalAmount,
                startCovRatio,
                endCovRatio
            );

            finalAmount -= fee;
        }
    }

    /**
     * @notice Calculates fee and liability to burn in case of withdrawal
     * @param asset The asset willing to be withdrawn
     * @param liquidity The liquidity willing to be withdrawn
     * @param _equilCovRatio global equilibrium coverage ratio
     * @param withdrawalHaircutRate withdraw haircut rate
     * @return amount Total amount to be withdrawn from Pool
     * @return liabilityToBurn Total liability to be burned by Pool
     * @return withdrawalHaircut Total withdrawal haircut
     */
    function _quoteWithdrawAmount(
        IAsset asset,
        uint256 liquidity,
        uint256 ampFactor,
        int256 _equilCovRatio,
        uint256 withdrawalHaircutRate
    ) private view returns (uint256 amount, uint256 liabilityToBurn, uint256 withdrawalHaircut) {
        liabilityToBurn = (asset.liability() * liquidity) / asset.totalSupply();
        if (liabilityToBurn == 0) revert CORE_ZERO_LIQUIDITY();

        amount = _equilCovRatio == WAD_I
            ? _withdrawalAmountInEquilImpl(
                -liabilityToBurn.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256()
            ).toUint256()
            : _withdrawalAmountImpl(
                -liabilityToBurn.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256(),
                _equilCovRatio
            ).toUint256();

        // charge withdrawal haircut
        if (withdrawalHaircutRate > 0) {
            withdrawalHaircut = amount.wmul(withdrawalHaircutRate);
            amount -= withdrawalHaircut;
        }
    }

    //#endregion Withdrawal Logic

    //#region Fee Logic

    function _accumulateFee(PoolV4Data storage poolData, IAsset asset, uint256 amount) private {
        uint256 amountForRepegging = (amount * poolData.reserveRateForRepegging) / 1e18;

        poolData.feeAndReserve[asset].feeCollected += (amount - amountForRepegging).to128();
        if (amountForRepegging > 0) {
            poolData.feeAndReserve[asset].reserveForRepegging += amountForRepegging.to128();
        }
    }

    function mintAllFees(PoolV4Data storage poolData, int256 globalEquilCovRatioForDepositWithdrawal) external {
        for (uint256 i; i < poolData.assets.count(); ++i) {
            IAsset asset = poolData.assets.getAssetAtIndex(i);
            mintFee(poolData, asset, globalEquilCovRatioForDepositWithdrawal);
        }
    }

    function _mintFeeIfNeeded(
        PoolV4Data storage poolData,
        IAsset asset,
        int256 globalEquilCovRatioForDepositWithdrawal
    ) private {
        uint256 feeCollected = poolData.feeAndReserve[asset].feeCollected;
        if (feeCollected == 0 || feeCollected < poolData.mintFeeThreshold) {
            return;
        } else {
            mintFee(poolData, asset, globalEquilCovRatioForDepositWithdrawal);
        }
    }

    /**
     * @dev return balance in WAD
     */
    function tipBucketBalance(PoolV4Data storage poolData, IERC20 token) external view returns (uint256 balance) {
        IAsset asset = poolData.assets.assetOf(token);
        return
            asset.underlyingTokenBalance().toWad(asset.underlyingTokenDecimals()) -
            asset.cash() -
            poolData.feeAndReserve[asset].feeCollected -
            poolData.feeAndReserve[asset].reserveForRepegging;
    }

    /**
     * @notice Private function to send fee collected to the fee beneficiary
     * @param asset The address of the asset to collect fee
     */
    function mintFee(
        PoolV4Data storage poolData,
        IAsset asset,
        int256 globalEquilCovRatioForDepositWithdrawal
    ) public returns (uint256 feeCollected) {
        feeCollected = poolData.feeAndReserve[asset].feeCollected;
        if (feeCollected == 0) {
            // early return
            return 0;
        }
        {
            // dividend to veWOM
            uint256 dividend = feeCollected.wmul(WAD - poolData.lpDividendRatio - poolData.retentionRatio);

            if (dividend > 0) {
                asset.transferUnderlyingToken(poolData.feeTo, dividend.fromWad(asset.underlyingTokenDecimals()));
            }
        }
        {
            // dividend to LP
            uint256 lpDividend = feeCollected.wmul(poolData.lpDividendRatio);
            if (lpDividend > 0) {
                // exact deposit to maintain r* = 1
                // increase the value of the LP token, i.e. assetsPerShare
                (, uint256 liabilityToMint) = _quoteDepositLiquidity(
                    asset,
                    lpDividend,
                    poolData.ampFactor,
                    globalEquilCovRatioForDepositWithdrawal
                );
                asset.addLiability(liabilityToMint);
                asset.addCash(lpDividend);
            }
        }
        // remainings are sent to the tipbucket

        poolData.feeAndReserve[asset].feeCollected = 0;
    }

    function _highCovRatioFee(
        uint256 fromAssetCash,
        uint256 fromAssetLiability,
        uint256 fromAmount,
        uint256 quotedToAmount,
        uint256 startCovRatio,
        uint256 endCovRatio
    ) private pure returns (uint256 fee) {
        uint256 finalFromAssetCovRatio = (fromAssetCash + fromAmount).wdiv(fromAssetLiability);

        if (finalFromAssetCovRatio > startCovRatio) {
            // charge high cov ratio fee
            uint256 feeRatio = _highCovRatioFee(
                fromAssetCash.wdiv(fromAssetLiability),
                finalFromAssetCovRatio,
                startCovRatio,
                endCovRatio
            );

            if (feeRatio > WAD) revert CORE_INVALID_HIGH_COV_RATIO_FEE();
            fee = feeRatio.wmul(quotedToAmount);
        }
    }

    //#endregion Fee Logic

    //#region Pure calculating functions

    /**
     * @notice Core Wombat stableswap equation
     * @dev This function always returns >= 0
     * @param Ax asset of token x
     * @param Ay asset of token y
     * @param Lx liability of token x
     * @param Ly liability of token y
     * @param Dx delta x, i.e. token x amount inputted
     * @param A amplification factor
     * @return quote The quote for amount of token y swapped for token x amount inputted
     */
    function _swapQuoteFunc(
        int256 Ax,
        int256 Ay,
        int256 Lx,
        int256 Ly,
        int256 Dx,
        int256 A
    ) private pure returns (uint256 quote) {
        if (Lx == 0 || Ly == 0) {
            // in case div of 0
            revert CORE_UNDERFLOW();
        }
        int256 D = Ax + Ay - A.wmul((Lx * Lx) / Ax + (Ly * Ly) / Ay); // flattened _invariantFunc
        int256 rx_ = (Ax + Dx).wdiv(Lx);
        int256 b = (Lx * (rx_ - A.wdiv(rx_))) / Ly - D.wdiv(Ly); // flattened _coefficientFunc
        int256 ry_ = _solveQuad(b, A);
        int256 Dy = Ly.wmul(ry_) - Ay;
        return Dy.abs();
    }

    /**
     * @dev Calculate the withdrawal amount for any r*
     */
    function _withdrawalAmountImpl(
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A,
        int256 _equilCovRatio
    ) private pure returns (int256 amount) {
        int256 L_i_ = L_i + delta_i;
        int256 r_i = A_i.wdiv(L_i);
        int256 delta_D = delta_i.wmul(_equilCovRatio) - (delta_i * A) / _equilCovRatio; // The only line that is different
        int256 b = -(L_i.wmul(r_i - A.wdiv(r_i)) + delta_D);
        int256 c = A.wmul(L_i_.wmul(L_i_));
        int256 A_i_ = _solveQuad(b, c);
        amount = A_i - A_i_;
    }

    /**
     * @dev should be used only when r* = 1
     */
    function _withdrawalAmountInEquilImpl(
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) private pure returns (int256 amount) {
        int256 L_i_ = L_i + delta_i;
        int256 r_i = A_i.wdiv(L_i);

        int256 rho = L_i.wmul(r_i - A.wdiv(r_i));
        int256 beta = (rho + delta_i.wmul(WAD_I - A)) / 2;
        int256 A_i_ = beta + (beta * beta + A.wmul(L_i_ * L_i_)).sqrt(beta);
        // equilvalent to:
        // int256 delta_D = delta_i.wmul(WAD_I - A);
        // int256 b = -(L_i.wmul(r_i - A.wdiv(r_i)) + delta_D);
        // int256 c = A.wmul(L_i_.wmul(L_i_));
        // int256 A_i_ = _solveQuad(b, c);

        amount = A_i - A_i_;
    }

    /**
     * @notice return the deposit reward in token amount when target liquidity (LP amount) is known
     */
    function _exactDepositLiquidityImpl(
        int256 D_i,
        int256 A_i,
        int256 L_i,
        int256 A,
        int256 _equilCovRatio
    ) private pure returns (int256 liquidity) {
        if (L_i == 0) {
            // if this is a deposit, there is no reward/fee
            // if this is a withdrawal, it should have been reverted
            return D_i;
        }
        if (A_i + D_i < 0) {
            // impossible
            revert CORE_UNDERFLOW();
        }

        int256 r_i = A_i.wdiv(L_i);
        int256 k = D_i + A_i;
        int256 b = k.wmul(_equilCovRatio) - (k * A) / _equilCovRatio + 2 * A.wmul(L_i); // The only line that is different
        int256 c = k.wmul(A_i - (A * L_i) / r_i) - k.wmul(k) + A.wmul(L_i).wmul(L_i);
        int256 l = b * b - 4 * A * c;
        return (-b + l.sqrt(b)).wdiv(A) / 2;
    }

    /**
     * @notice return the deposit reward in token amount when target liquidity (LP amount) is known
     */
    function _exactDepositLiquidityInEquilImpl(
        int256 D_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) private pure returns (int256 liquidity) {
        if (L_i == 0) {
            // if this is a deposit, there is no reward/fee
            // if this is a withdrawal, it should have been reverted
            return D_i;
        }
        if (A_i + D_i < 0) {
            // impossible
            revert CORE_UNDERFLOW();
        }

        int256 r_i = A_i.wdiv(L_i);
        int256 k = D_i + A_i;
        int256 b = k.wmul(WAD_I - A) + 2 * A.wmul(L_i);
        int256 c = k.wmul(A_i - (A * L_i) / r_i) - k.wmul(k) + A.wmul(L_i).wmul(L_i);
        int256 l = b * b - 4 * A * c;
        return (-b + l.sqrt(b)).wdiv(A) / 2;
    }

    /**
     * @notice quote swapping from tokens for credit
     * @dev This function always returns >= 0
     */
    function _swapToCreditQuote(int256 Ax, int256 Lx, int256 Dx, int256 A) private pure returns (uint256 quote) {
        int256 rx = Ax.wdiv(Lx);
        int256 rx_ = (Ax + Dx).wdiv(Lx);
        int256 x = rx_ - A.wdiv(rx_);
        int256 y = rx - A.wdiv(rx);

        // adjsut credit by 1 / (1 + A)
        return ((Lx * (x - y)) / (WAD_I + A)).abs();
    }

    /**
     * @notice quote swapping from credit for tokens
     * @dev This function always returns >= 0
     */
    function _swapFromCreditQuote(
        int256 Ax,
        int256 Lx,
        int256 delta_credit,
        int256 A
    ) private pure returns (uint256 quote) {
        int256 rx = Ax.wdiv(Lx);
        // adjsut credit by 1 + A
        int256 b = (delta_credit * (WAD_I + A)) / Lx - rx + A.wdiv(rx); // flattened _coefficientFunc
        int256 rx_ = _solveQuad(b, A);
        int256 Dx = Ax - Lx.wmul(rx_);

        return Dx.abs();
    }

    //#endregion Pure calculating functions

    //#region Math functions

    /**
     * @notice Solve quadratic equation
     * @dev This function always returns >= 0
     * @param b quadratic equation b coefficient
     * @param c quadratic equation c coefficient
     * @return x
     */
    function _solveQuad(int256 b, int256 c) private pure returns (int256) {
        return (((b * b) + (c * 4 * WAD_I)).sqrt(b) - b) / 2;
    }

    /**
     * @notice Equation to get invariant constant between token x and token y
     * @dev This function always returns >= 0
     * @param Lx liability of token x
     * @param rx cov ratio of token x
     * @param Ly liability of token x
     * @param ry cov ratio of token y
     * @param A amplification factor
     * @return The invariant constant between token x and token y ("D")
     */
    function _invariantFunc(int256 Lx, int256 rx, int256 Ly, int256 ry, int256 A) private pure returns (int256) {
        int256 a = Lx.wmul(rx) + Ly.wmul(ry);
        int256 b = A.wmul(Lx.wdiv(rx) + Ly.wdiv(ry));
        return a - b;
    }

    /**
     * @notice Equation to get quadratic equation b coefficient
     * @dev This function can return >= 0 or <= 0
     * @param Lx liability of token x
     * @param Ly liability of token y
     * @param rx_ new asset coverage ratio of token x
     * @param D invariant constant
     * @param A amplification factor
     * @return The quadratic equation b coefficient ("b")
     */
    function _coefficientFunc(int256 Lx, int256 Ly, int256 rx_, int256 D, int256 A) private pure returns (int256) {
        return (Lx * (rx_ - A.wdiv(rx_))) / Ly - D.wdiv(Ly);
    }

    function _targetedCovRatio(
        int256 SL,
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 D,
        int256 A
    ) private pure returns (int256 r_i_) {
        int256 r_i = A_i.wdiv(L_i);
        int256 er = _equilCovRatio(D, SL, A);
        int256 er_ = _newEquilCovRatio(er, SL, delta_i);
        int256 D_ = _newInvariantFunc(er_, A, SL, delta_i);

        // Summation of k∈T\{i} is D - L_i.wmul(r_i - A.wdiv(r_i))
        int256 b_ = (D - A_i + (L_i * A) / r_i - D_).wdiv(L_i + delta_i);
        r_i_ = _solveQuad(b_, A);
    }

    function _newEquilCovRatio(int256 er, int256 SL, int256 delta_i) private pure returns (int256 er_) {
        er_ = (delta_i + SL.wmul(er)).wdiv(delta_i + SL);
    }

    function _newInvariantFunc(int256 er_, int256 A, int256 SL, int256 delta_i) private pure returns (int256 D_) {
        D_ = (SL + delta_i).wmul(er_ - A.wdiv(er_));
    }

    /**
     * @notice Calculate the high cov ratio fee in the to-asset in a swap.
     * @dev When cov ratio is in the range [startCovRatio, endCovRatio], the marginal cov ratio is
     * (r - startCovRatio) / (endCovRatio - startCovRatio). Here we approximate the high cov ratio cut
     * by calculating the "average" fee.
     * Note: `finalCovRatio` should be greater than `initCovRatio`
     */
    function _highCovRatioFee(
        uint256 initCovRatio,
        uint256 finalCovRatio,
        uint256 startCovRatio,
        uint256 endCovRatio
    ) private pure returns (uint256 fee) {
        if (finalCovRatio > endCovRatio) {
            // invalid swap
            revert CORE_COV_RATIO_LIMIT_EXCEEDED();
        } else if (finalCovRatio <= startCovRatio || finalCovRatio <= initCovRatio) {
            return 0;
        }

        // 1. Calculate the area of fee(r) = (r - startCovRatio) / (endCovRatio - startCovRatio)
        // when r increase from initCovRatio to finalCovRatio
        // 2. Then multiply it by (endCovRatio - startCovRatio) / (finalCovRatio - initCovRatio)
        // to get the average fee over the range
        uint256 a = initCovRatio <= startCovRatio ? 0 : (initCovRatio - startCovRatio) * (initCovRatio - startCovRatio);
        uint256 b = (finalCovRatio - startCovRatio) * (finalCovRatio - startCovRatio);
        fee = ((b - a) / (finalCovRatio - initCovRatio) / 2).wdiv(endCovRatio - startCovRatio);
    }

    function calculateProposedGlobalEquilCovRatio(
        uint256[] memory newCashValues,
        uint256[] memory liabilities,
        uint256[] memory proposedScales,
        uint256 ampFactor
    ) internal pure returns (uint256 proposedGlobalEquilCovRatio) {
        (int256 invariant, int256 SL) = _globalInvariantFunc(newCashValues, liabilities, proposedScales, ampFactor);
        proposedGlobalEquilCovRatio = _equilCovRatio(invariant, SL, ampFactor.toInt256()).toUint256();
    }

    function _equilCovRatio(int256 D, int256 SL, int256 A) private pure returns (int256 er) {
        int256 b = -(D.wdiv(SL));
        er = _solveQuad(b, A);
    }

    //#endregion Math functions

    //#region r*
    function globalEquilCovRatioForStablePool(
        PoolV4Data storage poolData
    ) external view returns (int256 equilCovRatio_, int256 invariant) {
        uint256 assetCount = poolData.assets.count();

        uint256[] memory cashes = new uint256[](assetCount);
        uint256[] memory liabilities = new uint256[](assetCount);
        uint256[] memory priceScales = new uint256[](assetCount);

        for (uint256 i; i < assetCount; ++i) {
            IAsset asset = poolData.assets.getAssetAtIndex(i);

            cashes[i] = asset.cash();
            liabilities[i] = asset.liability();
            priceScales[i] = WAD;
        }

        int256 SL;
        uint256 A = poolData.ampFactor;
        (invariant, SL) = _globalInvariantFunc(cashes, liabilities, priceScales, poolData.ampFactor);
        equilCovRatio_ = _equilCovRatio(invariant, SL, A.toInt256());
    }

    function globalEquilCovRatioForDynamicPool(
        PoolV4Data storage poolData
    ) external view returns (int256 equilCovRatio_, int256 invariant) {
        uint256 assetCount = poolData.assets.count();

        uint256[] memory cashes = new uint256[](assetCount);
        uint256[] memory liabilities = new uint256[](assetCount);
        uint256[] memory priceScales = new uint256[](assetCount);

        for (uint256 i; i < assetCount; ++i) {
            IAsset asset = poolData.assets.getAssetAtIndex(i);

            cashes[i] = asset.cash();
            liabilities[i] = asset.liability();
            priceScales[i] = IRelativePriceProvider(address(asset)).getRelativePrice();
        }

        int256 SL;
        uint256 A = poolData.ampFactor;
        (invariant, SL) = _globalInvariantFunc(cashes, liabilities, priceScales, poolData.ampFactor);
        equilCovRatio_ = _equilCovRatio(invariant, SL, A.toInt256());
    }

    function _globalInvariantFunc(
        uint256[] memory cashes,
        uint256[] memory liabilities,
        uint256[] memory priceScales,
        uint256 ampFactor
    ) private pure returns (int256 D, int256 SL) {
        int256 A = ampFactor.toInt256();
        uint256 assetCount = cashes.length;

        for (uint256 i; i < assetCount; ++i) {
            // overflow is unrealistic
            int256 A_i = int256(cashes[i]);
            int256 L_i = int256(liabilities[i]);
            int256 P_i = priceScales[i].toInt256();

            // Assume when L_i == 0, A_i always == 0
            if (L_i == 0) {
                // avoid division of 0
                continue;
            }

            int256 r_i = A_i.wdiv(L_i);
            SL += P_i.wmul(L_i);
            D += P_i.wmul(L_i).wmul(r_i - A.wdiv(r_i));
        }
    }

    //#endregion r*
}

// ============================================================
// FILE: contracts/wombat-core/pool/DynamicPoolV4.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';
import '../interfaces/IRelativePriceProvider.sol';
import './HighCovRatioFeePoolV4.sol';

/**
 * @title Dynamic Pool
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev Supports dynamic assets. Assume r* to be close to 1.
 * Be aware that r* changes when the relative price of the asset updates
 * Change log:
 * - V2: add `gap` to prevent storage collision for future upgrades
 * - V2: Inherite from `HighCovRatioFeePoolV2` instead of `Pool`
 */
contract DynamicPoolV4 is HighCovRatioFeePoolV4 {
    /**
     * @notice multiply / divide the cash, liability and amount of a swap by relative price
     * Invariant: D = Sum of P_i * L_i * (r_i - A / r_i)
     */
    function _quoteFactor(IAsset fromAsset, IAsset toAsset) internal view override returns (uint256) {
        uint256 fromAssetRelativePrice = IRelativePriceProvider(address(fromAsset)).getRelativePrice();
        // theoretically we should multiply toCash, toLiability and idealToAmount by toAssetRelativePrice
        // however we simplify the calculation by dividing "from amounts" by toAssetRelativePrice
        uint256 toAssetRelativePrice = IRelativePriceProvider(address(toAsset)).getRelativePrice();

        return (1e18 * fromAssetRelativePrice) / toAssetRelativePrice;
    }

    function globalEquilCovRatio() public view override returns (int256 equilCovRatio, int256 invariant) {
        return CoreV4.globalEquilCovRatioForDynamicPool(poolData);
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/HighCovRatioFeePoolV4.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';
import './PoolV4.sol';

/**
 * @title High Coverage Ratio Fee Pool
 * @dev Pool with high cov ratio fee protection
 * Change log:
 * - V2: Add `gap` to prevent storage collision for future upgrades
 * - V3: Contract size compression
 */
contract HighCovRatioFeePoolV4 is PoolV4 {
    function initialize(uint256 ampFactor_, uint256 haircutRate_) public virtual override {
        super.initialize(ampFactor_, haircutRate_);
        poolData.startCovRatio = 15e17;
        poolData.endCovRatio = 18e17;
    }

    function setCovRatioFeeParam(uint128 startCovRatio_, uint128 endCovRatio_) external onlyOwner {
        if (startCovRatio_ < 1e18 || startCovRatio_ > endCovRatio_) revert WOMBAT_INVALID_VALUE();

        poolData.startCovRatio = startCovRatio_;
        poolData.endCovRatio = endCovRatio_;
    }

    /**
     * @dev Exact output swap (fromAmount < 0) should be only used by off-chain quoting function as it is a gas monster
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view override returns (uint256 actualToAmount, uint256 toTokenFee) {
        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        return
            CoreV4.quoteSwapForHighCovRatioPool(
                poolData,
                fromAsset,
                toAsset,
                fromAmount,
                scaleFactor,
                _getHaircutRate(fromAsset, toAsset)
            );
    }

    /* Getters */

    function startCovRatio() external view returns (uint128) {
        return poolData.startCovRatio;
    }

    function endCovRatio() external view returns (uint128) {
        return poolData.endCovRatio;
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/PausableAssets.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

/**
 * @title PausableAssets
 * @notice Handles assets pause and unpause of Wombat protocol.
 * @dev Allows pausing and unpausing of deposit and swap operations
 */
contract PausableAssets {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event PausedAsset(address token, address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event UnpausedAsset(address token, address account);

    // We use the asset's underlying token as the key to check whether an asset is paused.
    // A pool will never have two assets with the same underlying token.
    mapping(address => bool) private _pausedAssets;

    error WOMBAT_ASSET_ALREADY_PAUSED();
    error WOMBAT_ASSET_NOT_PAUSED();

    /**
     * @dev Function to return if the asset is paused.
     * The return value is only useful when true.
     * When the return value is false, the asset can be either not paused or not exist.
     */
    function isPaused(address token) public view returns (bool) {
        return _pausedAssets[token];
    }

    /**
     * @dev Function to make a function callable only when the asset is not paused.
     *
     * Requirements:
     *
     * - The asset must not be paused.
     */
    function requireAssetNotPaused(address token) internal view {
        if (_pausedAssets[token]) revert WOMBAT_ASSET_ALREADY_PAUSED();
    }

    /**
     * @dev Function to make a function callable only when the asset is paused.
     *
     * Requirements:
     *
     * - The asset must be paused.
     */
    function requireAssetPaused(address token) internal view {
        if (!_pausedAssets[token]) revert WOMBAT_ASSET_NOT_PAUSED();
    }

    /**
     * @dev Triggers paused state.
     *
     * Requirements:
     *
     * - The asset must not be paused.
     */
    function _pauseAsset(address token) internal {
        requireAssetNotPaused(token);
        _pausedAssets[token] = true;
        emit PausedAsset(token, msg.sender);
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The asset must be paused.
     */
    function _unpauseAsset(address token) internal {
        requireAssetPaused(token);
        _pausedAssets[token] = false;
        emit UnpausedAsset(token, msg.sender);
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/PoolV4.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

import './CoreV4.sol';
import './PausableAssets.sol';
import '../../wombat-governance/interfaces/IMasterWombat.sol';
import '../libraries/AssetLibrary.sol';
import '../interfaces/IPoolV4.sol';

/**
 * @title Pool V4
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev The main entry-point of Wombat protocol
 * Note: All variables are 18 decimals, except from that of underlying tokens
 * Change log:
 * - V2: Add `gap` to prevent storage collision for future upgrades
 * - V3:
 *   - *Breaking change*: interface change for quotePotentialDeposit, quotePotentialWithdraw
 *     and quotePotentialWithdrawFromOtherAsset, the reward/fee parameter is removed as it is
 *     ambiguous in the context of volatile pools.
 *   - Contract size compression
 *   - `mintFee` ignores `mintFeeThreshold`
 *   - `globalEquilCovRatio` returns int256 `instead` of `uint256`
 *   - Emit event `SwapV2` with `toTokenFee` instead of `Swap`
 * - TODOs for V4:
 *   - Consider renaming returned value `uint256 haircut` to `toTokenFee / haircutInToToken`
 * - V4:
 *   - Delegate pool logic to external contract
 *   - Support `reserveRateForRepegging`
 */
contract PoolV4 is
    Initializable,
    IPoolV4,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    PausableAssets
{
    using AssetLibrary for AssetLibrary.AssetMap;
    using DSMath for uint256;
    using SafeERC20 for IERC20;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    int256 internal constant WAD_I = 10 ** 18;
    uint256 internal constant WAD = 10 ** 18;

    /* Storage */

    PoolV4Data poolData;

    /* Events */

    /// @notice An event thats emitted when a deposit is made to Pool
    event Deposit(address indexed sender, IERC20 token, uint256 amount, uint256 liquidity, address indexed to);

    /// @notice An event thats emitted when a withdrawal is made from Pool
    event Withdraw(address indexed sender, IERC20 token, uint256 amount, uint256 liquidity, address indexed to);

    event SwapV2(
        address indexed sender,
        IERC20 fromToken,
        IERC20 toToken,
        uint256 fromAmount,
        uint256 toAmount,
        uint256 toTokenFee,
        address indexed to
    );

    event SetDev(address addr);
    event SetMasterWombat(address addr);
    event SetFeeTo(address addr);

    event AssetAdded(IERC20 indexed token, IAsset indexed asset);
    event AssetRemoved(IERC20 indexed token, IAsset indexed asset);

    event SetMintFeeThreshold(uint256 value);
    event SetFee(uint256 lpDividendRatio, uint256 retentionRatio);
    event SetAmpFactor(uint256 value);
    event SetHaircutRate(uint256 value);
    event SetWithdrawalHaircutRate(uint256 value);

    event FillPool(IERC20 token, uint256 amount);
    event TransferTipBucket(IERC20 token, uint256 amount, address to);

    /* Errors */

    error WOMBAT_FORBIDDEN();
    error WOMBAT_EXPIRED();

    error WOMBAT_ZERO_ADDRESS();
    error WOMBAT_ZERO_AMOUNT();
    error WOMBAT_ZERO_LIQUIDITY();
    error WOMBAT_INVALID_VALUE();
    error WOMBAT_SAME_ADDRESS();
    error WOMBAT_AMOUNT_TOO_LOW();

    /* Pesudo modifiers to save gas */

    function _checkLiquidity(uint256 liquidity) internal pure {
        if (liquidity == 0) revert WOMBAT_ZERO_LIQUIDITY();
    }

    function _checkAddress(address to) internal pure {
        if (to == address(0)) revert WOMBAT_ZERO_ADDRESS();
    }

    function _checkSameAddress(address from, address to) internal pure {
        if (from == to) revert WOMBAT_SAME_ADDRESS();
    }

    function _checkAmount(uint256 minAmt, uint256 amt) internal pure {
        if (minAmt > amt) revert WOMBAT_AMOUNT_TOO_LOW();
    }

    function _ensure(uint256 deadline) internal view {
        if (deadline < block.timestamp) revert WOMBAT_EXPIRED();
    }

    function _onlyDev() internal view {
        if (poolData.dev != msg.sender) revert WOMBAT_FORBIDDEN();
    }

    /* Construtor and setters */

    /**
     * @notice Initializes pool. dev is set to be the account calling this function.
     */
    function initialize(uint256 ampFactor_, uint256 haircutRate_) public virtual initializer {
        __Ownable_init();
        __ReentrancyGuard_init_unchained();
        __Pausable_init_unchained();

        if (ampFactor_ > WAD || haircutRate_ > WAD) revert WOMBAT_INVALID_VALUE();
        poolData.ampFactor = ampFactor_;
        poolData.haircutRate = haircutRate_;

        poolData.lpDividendRatio = WAD;

        poolData.dev = msg.sender;
    }

    /**
     * Permisioneed functions
     */

    /**
     * @notice Adds asset to pool, reverts if asset already exists in pool
     * @param token The address of token
     * @param asset The address of the Wombat Asset contract
     */
    function addAsset(IERC20 token, IAsset asset) public virtual onlyOwner {
        _checkAddress(address(asset));
        _checkAddress(address(token));
        _checkSameAddress(address(token), address(asset));

        AssetLibrary.addAsset(poolData.assets, token, asset);

        emit AssetAdded(token, asset);
    }

    /**
     * @notice Removes asset from asset struct
     * @dev Can only be called by owner
     * @param token The address of token to remove
     */
    function removeAsset(IERC20 token) external onlyOwner {
        IAsset asset = poolData.assets.assetOf(token);

        AssetLibrary.removeAsset(poolData.assets, token);

        emit AssetRemoved(token, asset);
    }

    /**
     * @notice Changes the contract dev. Can only be set by the contract owner.
     * @param dev_ new contract dev address
     */
    function setDev(address dev_) external onlyOwner {
        _checkAddress(dev_);
        poolData.dev = dev_;
        emit SetDev(dev_);
    }

    function setMasterWombat(address masterWombat_) external onlyOwner {
        _checkAddress(masterWombat_);
        poolData.masterWombat = masterWombat_;
        emit SetMasterWombat(masterWombat_);
    }

    /**
     * @notice Changes the pools amplification factor. Can only be set by the contract owner.
     * @param ampFactor_ new pool's amplification factor
     */
    function setAmpFactor(uint256 ampFactor_) external onlyOwner {
        if (ampFactor_ > WAD) revert WOMBAT_INVALID_VALUE(); // ampFactor_ should not be set bigger than 1
        poolData.ampFactor = ampFactor_;
        emit SetAmpFactor(ampFactor_);
    }

    /**
     * @notice Changes the pools poolData.haircutRate. Can only be set by the contract owner.
     * @param haircutRate_ new pool's haircutRate_
     */
    function setHaircutRate(uint256 haircutRate_) external onlyOwner {
        if (haircutRate_ > WAD) revert WOMBAT_INVALID_VALUE(); // haircutRate_ should not be set bigger than 1
        poolData.haircutRate = haircutRate_;
        emit SetHaircutRate(haircutRate_);
    }

    function setWithdrawalHaircutRate(uint256 withdrawalHaircutRate_) external onlyOwner {
        if (withdrawalHaircutRate_ > WAD) revert WOMBAT_INVALID_VALUE();
        poolData.withdrawalHaircutRate = withdrawalHaircutRate_;
        emit SetWithdrawalHaircutRate(withdrawalHaircutRate_);
    }

    function setFee(uint256 lpDividendRatio_, uint256 retentionRatio_) external onlyOwner {
        if (retentionRatio_ + lpDividendRatio_ > WAD) revert WOMBAT_INVALID_VALUE();

        CoreV4.mintAllFees(poolData, _getGlobalEquilCovRatioForDepositWithdrawal());
        poolData.retentionRatio = retentionRatio_;
        poolData.lpDividendRatio = lpDividendRatio_;
        emit SetFee(lpDividendRatio_, retentionRatio_);
    }

    /**
     * @dev unit of amount should be in WAD
     */
    function transferTipBucket(IERC20 token, uint256 amount, address to) external onlyOwner {
        IAsset asset = poolData.assets.assetOf(token);
        uint256 tipBucketBal = tipBucketBalance(token);

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.transferUnderlyingToken(to, amount.fromWad(asset.underlyingTokenDecimals()));
        emit TransferTipBucket(token, amount, to);
    }

    /**
     * @notice Changes the fee beneficiary. Can only be set by the contract owner.
     * This value cannot be set to 0 to avoid unsettled fee.
     * @param feeTo_ new fee beneficiary
     */
    function setFeeTo(address feeTo_) external onlyOwner {
        _checkAddress(feeTo_);
        poolData.feeTo = feeTo_;
        emit SetFeeTo(feeTo_);
    }

    /**
     * @notice Set min fee to mint
     */
    function setMintFeeThreshold(uint256 mintFeeThreshold_) external onlyOwner {
        poolData.mintFeeThreshold = mintFeeThreshold_;
        emit SetMintFeeThreshold(mintFeeThreshold_);
    }

    /**
     * @dev pause pool, restricting certain operations
     */
    function pause() external {
        _onlyDev();
        _pause();
    }

    /**
     * @dev unpause pool, enabling certain operations
     */
    function unpause() external {
        _onlyDev();
        _unpause();
    }

    /**
     * @dev pause asset, restricting deposit and swap operations
     */
    function pauseAsset(IERC20 token) external {
        _onlyDev();
        poolData.assets.checkAssetExistFor(token);
        _pauseAsset(address(token));
    }

    /**
     * @dev unpause asset, enabling deposit and swap operations
     */
    function unpauseAsset(IERC20 token) external {
        _onlyDev();
        _unpauseAsset(address(token));
    }

    /**
     * @notice Move fund from tip bucket to the pool to keep r* = 1 as error accumulates
     * unit of amount should be in WAD
     */
    function fillPool(IERC20 token, uint256 amount) external {
        _onlyDev();
        IAsset asset = poolData.assets.assetOf(token);
        uint256 tipBucketBal = tipBucketBalance(token);

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.addCash(amount);
        emit FillPool(token, amount);
    }

    /* Assets */

    /**
     * @notice Return list of tokens in the pool
     */
    function getTokens() external view returns (IERC20[] memory) {
        return poolData.assets.keys;
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @dev to be used externally
     * @param token The address of ERC20 token
     */
    function addressOfAsset(IERC20 token) external view override returns (IAsset) {
        return poolData.assets.assetOf(token);
    }

    /* Deposit */

    /**
     * @notice Deposits amount of tokens into pool ensuring deadline
     * @dev Asset needs to be created and added to pool before any operation. This function assumes tax free token.
     * @param token The token address to be deposited
     * @param amount The amount to be deposited
     * @param minimumLiquidity The minimum amount of liquidity to receive
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @param deadline The deadline to be respected
     * @param shouldStake Whether to stake LP tokens automatically after deposit
     * @return liquidity Total asset liquidity minted
     */
    function deposit(
        IERC20 token,
        uint256 amount,
        uint256 minimumLiquidity,
        address to,
        uint256 deadline,
        bool shouldStake
    ) external override nonReentrant whenNotPaused returns (uint256 liquidity) {
        if (amount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(address(token));

        IAsset asset = poolData.assets.assetOf(token);
        IERC20(token).safeTransferFrom(address(msg.sender), address(asset), amount);
        address targetAddr = shouldStake ? address(this) : to;

        liquidity = CoreV4.deposit(
            poolData,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            asset,
            amount.toWad(asset.underlyingTokenDecimals()),
            minimumLiquidity,
            targetAddr
        );

        if (shouldStake) {
            // stake on behalf of the user
            _checkAddress(poolData.masterWombat);

            asset.approve(poolData.masterWombat, liquidity);

            uint256 pid = IMasterWombat(poolData.masterWombat).getAssetPid(address(asset));
            IMasterWombat(poolData.masterWombat).depositFor(pid, liquidity, to);
        }

        emit Deposit(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Quotes potential deposit from pool
     * @dev To be used by frontend
     * @param token The token to deposit by user
     * @param amount The amount to deposit
     * @return liquidity The potential liquidity user would receive
     */
    function quotePotentialDeposit(IERC20 token, uint256 amount) external view override returns (uint256 liquidity) {
        return CoreV4.quotePotentialDeposit(poolData, token, amount, _getGlobalEquilCovRatioForDepositWithdrawal());
    }

    /* Withdraw */

    /**
     * @notice Withdraws liquidity amount of asset to `to` address ensuring minimum amount required
     * @param token The token to be withdrawn
     * @param liquidity The liquidity to be withdrawn
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return amount The total amount withdrawn
     */
    function withdraw(
        IERC20 token,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 amount) {
        _checkLiquidity(liquidity);
        _checkAddress(to);
        _ensure(deadline);

        IAsset asset = poolData.assets.assetOf(token);
        // request lp token from user
        IERC20(asset).safeTransferFrom(address(msg.sender), address(asset), liquidity);
        uint8 decimals = asset.underlyingTokenDecimals();
        (amount, ) = CoreV4.withdraw(
            poolData,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            asset,
            liquidity,
            minimumAmount.toWad(decimals)
        );
        amount = amount.fromWad(decimals);
        asset.transferUnderlyingToken(to, amount);

        emit Withdraw(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Enables withdrawing liquidity from an asset using LP from a different asset
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity to be withdrawn (in fromToken decimal)
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return toAmount The total amount withdrawn
     */
    function withdrawFromOtherAsset(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 toAmount) {
        _checkAddress(to);
        _checkLiquidity(liquidity);
        _checkSameAddress(address(fromToken), address(toToken));
        _ensure(deadline);
        requireAssetNotPaused(address(fromToken));

        // Withdraw and swap
        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);

        IERC20(fromAsset).safeTransferFrom(address(msg.sender), address(fromAsset), liquidity);
        (uint256 fromAmountInWad, ) = CoreV4.withdraw(
            poolData,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            fromAsset,
            liquidity,
            0
        );
        uint8 toDecimal = toAsset.underlyingTokenDecimals();

        uint256 toTokenFee;
        (toAmount, toTokenFee) = _swap(fromAsset, toAsset, fromAmountInWad, minimumAmount.toWad(toDecimal));

        toAmount = toAmount.fromWad(toDecimal);
        toTokenFee = toTokenFee.fromWad(toDecimal);
        toAsset.transferUnderlyingToken(to, toAmount);

        uint256 fromAmount = fromAmountInWad.fromWad(fromAsset.underlyingTokenDecimals());
        emit Withdraw(msg.sender, fromToken, fromAmount, liquidity, to);
        emit SwapV2(msg.sender, fromToken, toToken, fromAmount, toAmount, toTokenFee, to);
    }

    /**
     * @notice Quotes potential withdrawal from pool
     * @dev To be used by frontend
     * @param token The token to be withdrawn by user
     * @param liquidity The liquidity (amount of lp assets) to be withdrawn
     * @return amount The potential amount user would receive
     */
    function quotePotentialWithdraw(IERC20 token, uint256 liquidity) external view override returns (uint256 amount) {
        return CoreV4.quotePotentialWithdraw(poolData, _getGlobalEquilCovRatioForDepositWithdrawal(), token, liquidity);
    }

    /**
     * @notice Quotes potential withdrawal from other asset from the pool
     * @dev To be used by frontend
     * The startCovRatio and endCovRatio is set to 0, so no high cov ratio fee is charged
     * This is to be overriden by the HighCovRatioFeePool
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity (amount of the lp assets) to be withdrawn
     * @return finalAmount The potential amount user would receive
     * @return withdrewAmount The amount of the from-token that is withdrew
     */
    function quotePotentialWithdrawFromOtherAsset(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity
    ) external view virtual override returns (uint256 finalAmount, uint256 withdrewAmount) {
        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);
        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);

        return
            CoreV4.quotePotentialWithdrawFromOtherAsset(
                poolData,
                fromToken,
                toToken,
                liquidity,
                scaleFactor,
                _getHaircutRate(fromAsset, toAsset),
                _getGlobalEquilCovRatioForDepositWithdrawal()
            );
    }

    /* Swap */

    /**
     * @notice Return the scale factor that should applied on from-amounts in a swap given
     * the from-asset and the to-asset.
     * @dev not applicable to a plain pool
     * All tokens are assumed to have the same intrinsic value
     * To be overriden by DynamicPool
     */
    function _quoteFactor(
        IAsset, // fromAsset
        IAsset // toAsset
    ) internal view virtual returns (uint256) {
        return 1e18;
    }

    function _getHaircutRate(IAsset fromAsset, IAsset toAsset) internal view virtual returns (uint256) {
        return poolData.haircutRate;
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and haircut
     * @param fromAsset The initial asset
     * @param toAsset The asset wanted by user
     * @param fromAmount The amount to quote
     * @return actualToAmount The actual amount user would receive
     * @return toTokenFee The haircut that will be applied
     * To be overriden by HighCovRatioFeePool for reverse-quote
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view virtual returns (uint256 actualToAmount, uint256 toTokenFee) {
        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        return CoreV4.quoteSwap(fromAsset, toAsset, fromAmount, poolData.ampFactor, scaleFactor, poolData.haircutRate);
    }

    /**
     * expect fromAmount and minimumToAmount to be in WAD
     */
    function _swap(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 fromAmount,
        uint256 minimumToAmount
    ) internal returns (uint256 actualToAmount, uint256 toTokenFee) {
        (actualToAmount, toTokenFee) = _quoteFrom(fromAsset, toAsset, fromAmount.toInt256());
        CoreV4.performSwap(poolData, fromAsset, toAsset, fromAmount, minimumToAmount, actualToAmount, toTokenFee);
        _postSwapHook();
    }

    /**
     * @notice This function is called after a swap, to be overridden
     */
    function _postSwapHook() internal virtual {}

    /**
     * @notice Swap fromToken for toToken, ensures deadline and minimumToAmount and sends quoted amount to `to` address
     * @dev This function assumes tax free token.
     * @param fromToken The token being inserted into Pool by user for swap
     * @param toToken The token wanted by user, leaving the Pool
     * @param fromAmount The amount of from token inserted
     * @param minimumToAmount The minimum amount that will be accepted by user as result
     * @param to The user receiving the result of swap
     * @param deadline The deadline to be respected
     */
    function swap(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external virtual override nonReentrant whenNotPaused returns (uint256 actualToAmount, uint256 haircut) {
        _checkSameAddress(address(fromToken), address(toToken));
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(address(fromToken));

        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);

        uint8 toDecimal = toAsset.underlyingTokenDecimals();

        (actualToAmount, haircut) = _swap(
            fromAsset,
            toAsset,
            fromAmount.toWad(fromAsset.underlyingTokenDecimals()),
            minimumToAmount.toWad(toDecimal)
        );

        actualToAmount = actualToAmount.fromWad(toDecimal);
        haircut = haircut.fromWad(toDecimal);

        IERC20(fromToken).safeTransferFrom(msg.sender, address(fromAsset), fromAmount);
        toAsset.transferUnderlyingToken(to, actualToAmount);

        emit SwapV2(msg.sender, fromToken, toToken, fromAmount, actualToAmount, haircut, to);
    }

    /**
     * @notice Given an input asset amount and token addresses, calculates the
     * maximum output token amount (accounting for fees and slippage).
     * @dev In reverse quote, the haircut is in the `fromAsset`
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param fromAmount The given input amount
     * @return potentialOutcome The potential amount user would receive
     * @return haircut The haircut that would be applied
     */
    function quotePotentialSwap(
        IERC20 fromToken,
        IERC20 toToken,
        int256 fromAmount
    ) public view override returns (uint256 potentialOutcome, uint256 haircut) {
        _checkSameAddress(address(fromToken), address(toToken));
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();

        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);

        fromAmount = fromAmount.toWad(fromAsset.underlyingTokenDecimals());
        (potentialOutcome, haircut) = _quoteFrom(fromAsset, toAsset, fromAmount);
        potentialOutcome = potentialOutcome.fromWad(toAsset.underlyingTokenDecimals());
        if (fromAmount >= 0) {
            haircut = haircut.fromWad(toAsset.underlyingTokenDecimals());
        } else {
            haircut = haircut.fromWad(fromAsset.underlyingTokenDecimals());
        }
    }

    /**
     * @notice Returns the minimum input asset amount required to buy the given output asset amount
     * (accounting for fees and slippage)
     * @dev To be used by frontend
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param toAmount The given output amount
     * @return amountIn The input amount required
     * @return haircut The haircut that would be applied
     */
    function quoteAmountIn(
        IERC20 fromToken,
        IERC20 toToken,
        int256 toAmount
    ) external view override returns (uint256 amountIn, uint256 haircut) {
        return quotePotentialSwap(toToken, fromToken, -toAmount);
    }

    /* Queries */

    /**
     * @notice Returns the exchange rate of the LP token
     * @param token The address of the token
     * @return xr The exchange rate of LP token
     */
    function exchangeRate(IERC20 token) external view returns (uint256 xr) {
        IAsset asset = poolData.assets.assetOf(token);
        if (asset.totalSupply() == 0) return WAD;
        return xr = uint256(asset.liability()).wdiv(uint256(asset.totalSupply()));
    }

    function globalEquilCovRatio() public view virtual returns (int256 equilCovRatio, int256 invariant) {
        return CoreV4.globalEquilCovRatioForStablePool(poolData);
    }

    /**
     * @dev return balance in WAD
     */
    function tipBucketBalance(IERC20 token) public view returns (uint256 balance) {
        return CoreV4.tipBucketBalance(poolData, token);
    }

    /* Utils */

    /**
     * For stable pools and rather-stable pools, r* is assumed to be 1 to simplify calculation
     */
    function _getGlobalEquilCovRatioForDepositWithdrawal() internal view virtual returns (int256 equilCovRatio) {
        return WAD_I;
    }

    /**
     * @notice Send fee collected to the fee beneficiary
     * @param token The address of the token to collect fee
     */
    function mintFee(IERC20 token) external returns (uint256 feeCollected) {
        return CoreV4.mintFee(poolData, poolData.assets.assetOf(token), _getGlobalEquilCovRatioForDepositWithdrawal());
    }

    /* Getters */

    function ampFactor() external view returns (uint256) {
        return poolData.ampFactor;
    }

    function haircutRate() external view returns (uint256) {
        return poolData.haircutRate;
    }

    function retentionRatio() external view returns (uint256) {
        return poolData.retentionRatio;
    }

    function lpDividendRatio() external view returns (uint256) {
        return poolData.lpDividendRatio;
    }

    function mintFeeThreshold() external view returns (uint256) {
        return poolData.mintFeeThreshold;
    }

    function dev() external view returns (address) {
        return poolData.dev;
    }

    function feeTo() external view returns (address) {
        return poolData.feeTo;
    }

    function masterWombat() external view returns (address) {
        return poolData.masterWombat;
    }

    function withdrawalHaircutRate() external view returns (uint256) {
        return poolData.withdrawalHaircutRate;
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/PoolV4Data.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../interfaces/IAsset.sol';
import '../interfaces/IVolatileAsset.sol';
import '../libraries/AssetLibrary.sol';

struct PoolV4Data {
    // For Pool
    /// @notice Amplification factor
    uint256 ampFactor;
    /// @notice Haircut rate
    uint256 haircutRate;
    /// @notice Retention ratio: the ratio of haircut that should stay in the pool
    uint256 retentionRatio;
    /// @notice LP dividend ratio : the ratio of haircut that should distribute to LP
    uint256 lpDividendRatio;
    /// @notice The threshold to mint fee (unit: WAD)
    uint256 mintFeeThreshold;
    /// @notice dev address
    address dev;
    address feeTo;
    address masterWombat;
    /// @notice Dividend collected by each asset (unit: WAD)
    mapping(IAsset => FeeAndReserve) feeAndReserve;
    /// @notice A record of assets inside Pool
    AssetLibrary.AssetMap assets;
    // Slots reserved for future use
    uint128 _used1; // Remember to initialize before use.
    uint128 _used2; // Remember to initialize before use.
    /// @notice Withdrawal haircut rate charged at the time of withdrawal
    uint256 withdrawalHaircutRate;
    /// @notice how much haircut collected is reversed for repegging
    uint256 reserveRateForRepegging;
    uint256[47] __gap1;
    // For HighCovRatioFeePool
    uint128 startCovRatio; // 1.5
    uint128 endCovRatio; // 1.8
    uint256[50] __gap2;
    // For DynamicPool
    uint256[50] __gap3;
}

struct FeeAndReserve {
    uint128 feeCollected; // 18 decimals
    uint128 reserveForRepegging; // 18 decimals
}

// ============================================================
// FILE: contracts/wombat-core/pool/VolatilePool.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import './DynamicPoolV4.sol';
import '../libraries/DynamicFeeHelper.sol';
import '../libraries/RepegHelper.sol';
import '../interfaces/IVolatileAsset.sol';

/**
 * @title Volatile Pool with internal oracle
 * @notice Manages deposits, withdrawals and swaps for volatile pool with internal oracle
 * @dev Fully unveil the power of wombat by enabling oracle and attempt repeg after a swap if repeg condition is met
 */
contract VolatilePool is DynamicPoolV4 {
    using AssetLibrary for AssetLibrary.AssetMap;
    using DSMath for uint256;
    using SignedSafeMath for uint256;
    using SignedSafeMath for int256;

    //#region Storage

    /// @notice Data struct used in repegging
    RepegData public repegData;

    // Dynamic Fee storage
    mapping(IAsset => DynamicFeeData) internal dynamicFeeData;
    DynamicFeeConfig public dynamicFeeConfig;
    /// @notice The market prices in the last trade for assets with respect to the price anchor
    mapping(IAsset => uint256) public marketPricesLast;
    /// @notice The timestamp of last swap, used to calculate time passed since last trade
    uint256 public lastSwapTimestamp;

    uint256[50] private __gap;

    //#endregion Storage

    //#region Error

    error POOL__INVALID_PARAMETER();
    error POOL__INVALID_PRICE_ANCHOR();

    //#endregion Error

    //#region Events

    event SetPriceAnchorAsset(IVolatileAsset priceAnchor);
    event SetMinAdjustmentStep(uint256 minAdjustmentStep);
    event SetOracleEmaHalfTime(uint256 oracleEmaHalfTime);
    event SetPsi(uint256 psi);
    event SetReserveRateForRepegging(uint256 reserveRate);
    event SetDynamicFeeParam(
        uint128 haircutVolatilityMax,
        uint128 haircutImbalanceMax,
        int128 haircutVolatilityKV1,
        int128 haircutVolatilityBetaV1,
        int128 haircutVolatilityKV2,
        int128 haircutVolatilityBetaV2,
        int128 haircutImbalanceSmallTheta
    );

    //#endregion Events

    //#region overrides

    /// @dev One must call respective setters to initialize the contract after calling this function, includes
    /// - setPriceAnchorAsset
    /// - setDynamicFeeParam
    function initialize(uint256 ampFactor_, uint256 haircutRate_) public override {
        super.initialize(ampFactor_, haircutRate_);

        repegData.minAdjustmentStep = 0.0005e18;
        repegData.oracleEmaHalfTime = 600;
        repegData.psi = 5;
        repegData.lastOracleTimestamp = uint128(block.timestamp);

        poolData.reserveRateForRepegging = 0.5e18;

        lastSwapTimestamp = block.timestamp;
    }

    function _getHaircutRate(IAsset fromAsset, IAsset toAsset) internal view virtual override returns (uint256) {
        if (address(repegData.priceAnchor) == address(0)) {
            revert POOL__INVALID_PRICE_ANCHOR();
        }

        uint256 volatility1;
        uint256 volatility2;
        if (fromAsset != repegData.priceAnchor) {
            volatility1 = DynamicFeeHelper.getMeanVolatilityInWindow(dynamicFeeData[fromAsset], block.timestamp);
        }
        if (toAsset != repegData.priceAnchor) {
            volatility2 = DynamicFeeHelper.getMeanVolatilityInWindow(dynamicFeeData[toAsset], block.timestamp);
        }
        uint256 volatility;
        if (volatility1 == 0) {
            volatility = volatility2;
        } else if (volatility2 == 0) {
            volatility = volatility1;
        } else {
            volatility = (volatility1 + volatility2) / 2;
        }

        uint256 fromLiability = fromAsset.liability();
        uint256 toLiability = toAsset.liability();
        uint256 rFromAsset = fromLiability > 0 ? uint256(fromAsset.cash()).wdiv(fromLiability) : WAD;
        uint256 rToAsset = toLiability > 0 ? uint256(toAsset.cash()).wdiv(toLiability) : WAD;

        return
            poolData.haircutRate +
            DynamicFeeHelper.getVolatilityHaircutRate(dynamicFeeConfig, volatility.toInt256()) +
            DynamicFeeHelper.getImbalanceHaircutRate(dynamicFeeConfig, rFromAsset.toInt256(), rToAsset.toInt256());
    }

    /**
     * @notice This hook is called after each swap. This is the most important function in this contract
     */
    function _postSwapHook() internal virtual override {
        uint256 dt = block.timestamp - lastSwapTimestamp;
        if (dt == 0) {
            // Skip for the same block
            // Note that `marketPricesLast` and `pointHistories[lastIndex].value` are not updated
            // more than once in the same block
            return;
        }
        uint256 assetCount = poolData.assets.count();

        for (uint256 i; i < assetCount; ++i) {
            IAsset asset = poolData.assets.getAssetAtIndex(i);
            if (address(asset) == address(repegData.priceAnchor)) {
                continue;
            }

            // calculate the change of market price in log scale
            uint256 priceLast = marketPricesLast[asset];
            uint256 marketPrice = RepegHelper.getMarketPrice(
                repegData,
                IVolatileAsset(address(asset)),
                poolData.ampFactor
            );
            int32 value = DynamicFeeHelper.safeToLogScale((marketPrice * 1e18) / priceLast, dt);

            DynamicFeeHelper.write(dynamicFeeData[asset], uint40(block.timestamp), value);

            marketPricesLast[asset] = marketPrice;
        }

        lastSwapTimestamp = block.timestamp;

        // Note: Ideally we should update oracle also after deposit / withdrawal since it changes the coverage ratio
        // However, since deposit/withdrawal doesn't change coverage ratio much, it is skipped to save gas.
        RepegHelper.updateOracle(repegData, poolData.assets, poolData.ampFactor);
        attemptRepeg();
    }

    /// @dev It is crucial to ensure a correct price scale is set before adding asset.
    /// Assuming the asset added and the anchor asset has cov ratio of 100%, so that
    /// marketPricesLast equals priceScale
    function addAsset(IERC20 token, IAsset asset) public override onlyOwner {
        super.addAsset(token, asset);

        // initialize dynamic fee
        DynamicFeeHelper.initialize(dynamicFeeData[asset], uint40(block.timestamp), 0);
        marketPricesLast[asset] = IVolatileAsset(address(asset)).priceScale();
    }

    //#endregion overrides

    /// @dev This function looks safe from re-entrancy attack, since it doesn't interact with non-trusted contracts
    function attemptRepeg() public returns (bool success) {
        return RepegHelper.attemptRepeg(repegData, poolData.assets, poolData.feeAndReserve, poolData.ampFactor);
    }

    //#region queries

    function checkRepegCondition()
        external
        view
        returns (bool canRepeg, uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales)
    {
        return RepegHelper.checkRepegCondition(repegData, poolData.assets, poolData.feeAndReserve, poolData.ampFactor);
    }

    function estimateNewGlobalEquilCovRatio()
        external
        view
        returns (uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales)
    {
        return
            RepegHelper.estimateNewGlobalEquilCovRatio(
                repegData,
                poolData.assets,
                poolData.feeAndReserve,
                poolData.ampFactor
            );
    }

    function getMarketPrice(IERC20 token) external view returns (uint256) {
        IVolatileAsset asset = IVolatileAsset(address(poolData.assets.assetOf(token)));
        return RepegHelper.getMarketPrice(repegData, asset, poolData.ampFactor);
    }

    function quoteIdealSwapRate(IVolatileAsset assetX, IVolatileAsset assetY) external view returns (uint256) {
        return RepegHelper.quoteIdealSwapRate(assetX, assetY, poolData.ampFactor);
    }

    /// @notice Get the current volatility for a token
    function getVolatility(IERC20 token) external view returns (uint256) {
        return
            DynamicFeeHelper.getMeanVolatilityInWindow(dynamicFeeData[poolData.assets.assetOf(token)], block.timestamp);
    }

    function getTimePointAt(
        IERC20 token,
        uint40 timestamp
    ) external view returns (PointHistory memory targetPointHistory) {
        return DynamicFeeHelper.getTimePointAt(dynamicFeeData[poolData.assets.assetOf(token)], timestamp);
    }

    //#endregion queries

    //#region setters

    /// @dev This function can only be called once
    /// Note that the parameter is an asset, not token
    function setPriceAnchorAsset(IVolatileAsset priceAnchor_) external onlyOwner {
        RepegData storage myStruct = repegData;
        if (address(priceAnchor_) == address(0)) revert POOL__INVALID_PARAMETER();
        if (address(myStruct.priceAnchor) != address(0)) revert POOL__INVALID_PARAMETER();

        myStruct.priceAnchor = priceAnchor_;
        emit SetPriceAnchorAsset(priceAnchor_);
    }

    function setMinAdjustmentStep(uint64 minAdjustmentStep_) external onlyOwner {
        if (minAdjustmentStep_ > WAD) revert POOL__INVALID_PARAMETER();
        RepegData storage myStruct = repegData;
        myStruct.minAdjustmentStep = minAdjustmentStep_;
        emit SetMinAdjustmentStep(minAdjustmentStep_);
    }

    function setOracleEmaHalfTime(uint128 oracleEmaHalfTime_) external onlyOwner {
        if (oracleEmaHalfTime_ < 60) revert POOL__INVALID_PARAMETER();
        RepegData storage myStruct = repegData;
        myStruct.oracleEmaHalfTime = oracleEmaHalfTime_;
        emit SetOracleEmaHalfTime(oracleEmaHalfTime_);
    }

    function setPsi(uint32 psi_) external onlyOwner {
        if (psi_ == 0) revert POOL__INVALID_PARAMETER();
        repegData.psi = psi_;
        emit SetPsi(psi_);
    }

    function setReserveRateForRepegging(uint256 reserveRate_) external onlyOwner {
        if (reserveRate_ > 1e18) revert POOL__INVALID_PARAMETER();
        poolData.reserveRateForRepegging = reserveRate_;
        emit SetReserveRateForRepegging(reserveRate_);
    }

    function setDynamicFeeParam(
        uint128 haircutVolatilityMax_,
        uint128 haircutImbalanceMax_,
        int128 haircutVolatilityKV1_,
        int128 haircutVolatilityBetaV1_,
        int128 haircutVolatilityKV2_,
        int128 haircutVolatilityBetaV2_,
        int128 haircutImbalanceSmallTheta_
    ) external onlyOwner {
        dynamicFeeConfig.haircutVolatilityMax = haircutVolatilityMax_;
        dynamicFeeConfig.haircutImbalanceMax = haircutImbalanceMax_;

        dynamicFeeConfig.haircutVolatilityKV1 = haircutVolatilityKV1_;
        dynamicFeeConfig.haircutVolatilityBetaV1 = haircutVolatilityBetaV1_;
        dynamicFeeConfig.haircutVolatilityKV2 = haircutVolatilityKV2_;
        dynamicFeeConfig.haircutVolatilityBetaV2 = haircutVolatilityBetaV2_;
        dynamicFeeConfig.haircutImbalanceSmallTheta = haircutImbalanceSmallTheta_;
        // Not implemented
        // dynamicFeeConfig.haircutImbalanceBigTheta = haircutImbalanceBigTheta_;

        emit SetDynamicFeeParam(
            haircutVolatilityMax_,
            haircutImbalanceMax_,
            haircutVolatilityKV1_,
            haircutVolatilityBetaV1_,
            haircutVolatilityKV2_,
            haircutVolatilityBetaV2_,
            haircutImbalanceSmallTheta_
        );
    }

    //#endregion setters
}

// ============================================================
// FILE: contracts/wombat-core/pool/VolatilePoolV2.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import './VolatilePool.sol';

/**
 * @title Volatile Pool with internal oracle
 * @notice Manages deposits, withdrawals and swaps for volatile pool with internal oracle
 * @dev Fully unveil the power of wombat by enabling oracle and attempt repeg after a swap if repeg condition is met
 * V2:
 * - Disabled volatility calculation to save gas
 */
contract VolatilePoolV2 is VolatilePool {
    using AssetLibrary for AssetLibrary.AssetMap;
    using DSMath for uint256;
    using SignedSafeMath for uint256;
    using SignedSafeMath for int256;

    function _getHaircutRate(IAsset fromAsset, IAsset toAsset) internal view override returns (uint256) {
        if (address(repegData.priceAnchor) == address(0)) {
            revert POOL__INVALID_PRICE_ANCHOR();
        }

        uint256 fromLiability = fromAsset.liability();
        uint256 toLiability = toAsset.liability();
        uint256 rFromAsset = fromLiability > 0 ? uint256(fromAsset.cash()).wdiv(fromLiability) : WAD;
        uint256 rToAsset = toLiability > 0 ? uint256(toAsset.cash()).wdiv(toLiability) : WAD;

        return
            poolData.haircutRate +
            DynamicFeeHelper.getImbalanceHaircutRate(dynamicFeeConfig, rFromAsset.toInt256(), rToAsset.toInt256());
    }

    /**
     * @notice This hook is called after each swap. This is the most important function in this contract
     */
    function _postSwapHook() internal override {
        uint256 dt = block.timestamp - lastSwapTimestamp;
        if (dt == 0) {
            // Skip for the same block
            // Note that `marketPricesLast` and `pointHistories[lastIndex].value` are not updated
            // more than once in the same block
            return;
        }

        lastSwapTimestamp = block.timestamp;

        // Note: Ideally we should update oracle also after deposit / withdrawal since it changes the coverage ratio
        // However, since deposit/withdrawal doesn't change coverage ratio much, it is skipped to save gas.
        RepegHelper.updateOracle(repegData, poolData.assets, poolData.ampFactor);
        attemptRepeg();
    }
}

// ============================================================
// FILE: contracts/wombat-governance/interfaces/IMasterWombat.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

/**
 * @dev Interface of the MasterWombat
 */
interface IMasterWombat {
    function getAssetPid(address asset) external view returns (uint256 pid);

    function poolLength() external view returns (uint256);

    function pendingTokens(
        uint256 _pid,
        address _user
    )
        external
        view
        returns (
            uint256 pendingRewards,
            address bonusTokenAddress,
            string memory bonusTokenSymbol,
            uint256 pendingBonusToken
        );

    function rewarderBonusTokenInfo(
        uint256 _pid
    ) external view returns (address bonusTokenAddress, string memory bonusTokenSymbol);

    function massUpdatePools() external;

    function updatePool(uint256 _pid) external;

    function deposit(uint256 _pid, uint256 _amount) external returns (uint256, uint256);

    function multiClaim(
        uint256[] memory _pids
    ) external returns (uint256 transfered, uint256[] memory rewards, uint256[] memory additionalRewards);

    function withdraw(uint256 _pid, uint256 _amount) external returns (uint256, uint256);

    function emergencyWithdraw(uint256 _pid) external;

    function migrate(uint256[] calldata _pids) external;

    function depositFor(uint256 _pid, uint256 _amount, address _user) external;

    function updateFactor(address _user, uint256 _newVeWomBalance) external;
}

// ============================================================
// FILE: contracts/wombat-governance/libraries/LogExpMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
// documentation files (the “Software”), to deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
// Software.

// THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

pragma solidity ^0.8.5;

/* solhint-disable */

/**
 * @dev Reverts if `condition` is false, with a revert reason containing `errorCode`. Only codes up to 999 are
 * supported.
 */
function _require(bool condition, uint256 errorCode) pure {
    if (!condition) _revert(errorCode);
}

/**
 * @dev Reverts with a revert reason containing `errorCode`. Only codes up to 999 are supported.
 */
function _revert(uint256 errorCode) pure {
    // We're going to dynamically create a revert string based on the error code, with the following format:
    // 'BAL#{errorCode}'
    // where the code is left-padded with zeroes to three digits (so they range from 000 to 999).
    //
    // We don't have revert strings embedded in the contract to save bytecode size: it takes much less space to store a
    // number (8 to 16 bits) than the individual string characters.
    //
    // The dynamic string creation algorithm that follows could be implemented in Solidity, but assembly allows for a
    // much denser implementation, again saving bytecode size. Given this function unconditionally reverts, this is a
    // safe place to rely on it without worrying about how its usage might affect e.g. memory contents.
    assembly {
        // First, we need to compute the ASCII representation of the error code. We assume that it is in the 0-999
        // range, so we only need to convert three digits. To convert the digits to ASCII, we add 0x30, the value for
        // the '0' character.

        let units := add(mod(errorCode, 10), 0x30)

        errorCode := div(errorCode, 10)
        let tenths := add(mod(errorCode, 10), 0x30)

        errorCode := div(errorCode, 10)
        let hundreds := add(mod(errorCode, 10), 0x30)

        // With the individual characters, we can now construct the full string. The "BAL#" part is a known constant
        // (0x42414c23): we simply shift this by 24 (to provide space for the 3 bytes of the error code), and add the
        // characters to it, each shifted by a multiple of 8.
        // The revert reason is then shifted left by 200 bits (256 minus the length of the string, 7 characters * 8 bits
        // per character = 56) to locate it in the most significant part of the 256 slot (the beginning of a byte
        // array).

        let revertReason := shl(200, add(0x42414c23000000, add(add(units, shl(8, tenths)), shl(16, hundreds))))

        // We can now encode the reason in memory, which can be safely overwritten as we're about to revert. The encoded
        // message will have the following layout:
        // [ revert reason identifier ] [ string location offset ] [ string length ] [ string contents ]

        // The Solidity revert reason identifier is 0x08c739a0, the function selector of the Error(string) function. We
        // also write zeroes to the next 28 bytes of memory, but those are about to be overwritten.
        mstore(0x0, 0x08c379a000000000000000000000000000000000000000000000000000000000)
        // Next is the offset to the location of the string, which will be placed immediately after (20 bytes away).
        mstore(0x04, 0x0000000000000000000000000000000000000000000000000000000000000020)
        // The string length is fixed: 7 characters.
        mstore(0x24, 7)
        // Finally, the string itself is stored.
        mstore(0x44, revertReason)

        // Even if the string is only 7 bytes long, we need to return a full 32 byte slot containing it. The length of
        // the encoded message is therefore 4 + 32 + 32 + 32 = 100.
        revert(0, 100)
    }
}

library Errors {
    // Math
    uint256 internal constant ADD_OVERFLOW = 0;
    uint256 internal constant SUB_OVERFLOW = 1;
    uint256 internal constant SUB_UNDERFLOW = 2;
    uint256 internal constant MUL_OVERFLOW = 3;
    uint256 internal constant ZERO_DIVISION = 4;
    uint256 internal constant DIV_INTERNAL = 5;
    uint256 internal constant X_OUT_OF_BOUNDS = 6;
    uint256 internal constant Y_OUT_OF_BOUNDS = 7;
    uint256 internal constant PRODUCT_OUT_OF_BOUNDS = 8;
    uint256 internal constant INVALID_EXPONENT = 9;

    // Input
    uint256 internal constant OUT_OF_BOUNDS = 100;
    uint256 internal constant UNSORTED_ARRAY = 101;
    uint256 internal constant UNSORTED_TOKENS = 102;
    uint256 internal constant INPUT_LENGTH_MISMATCH = 103;
    uint256 internal constant ZERO_TOKEN = 104;

    // Shared pools
    uint256 internal constant MIN_TOKENS = 200;
    uint256 internal constant MAX_TOKENS = 201;
    uint256 internal constant MAX_SWAP_FEE_PERCENTAGE = 202;
    uint256 internal constant MIN_SWAP_FEE_PERCENTAGE = 203;
    uint256 internal constant MINIMUM_BPT = 204;
    uint256 internal constant CALLER_NOT_VAULT = 205;
    uint256 internal constant UNINITIALIZED = 206;
    uint256 internal constant BPT_IN_MAX_AMOUNT = 207;
    uint256 internal constant BPT_OUT_MIN_AMOUNT = 208;
    uint256 internal constant EXPIRED_PERMIT = 209;
    uint256 internal constant NOT_TWO_TOKENS = 210;
    uint256 internal constant DISABLED = 211;

    // Pools
    uint256 internal constant MIN_AMP = 300;
    uint256 internal constant MAX_AMP = 301;
    uint256 internal constant MIN_WEIGHT = 302;
    uint256 internal constant MAX_STABLE_TOKENS = 303;
    uint256 internal constant MAX_IN_RATIO = 304;
    uint256 internal constant MAX_OUT_RATIO = 305;
    uint256 internal constant MIN_BPT_IN_FOR_TOKEN_OUT = 306;
    uint256 internal constant MAX_OUT_BPT_FOR_TOKEN_IN = 307;
    uint256 internal constant NORMALIZED_WEIGHT_INVARIANT = 308;
    uint256 internal constant INVALID_TOKEN = 309;
    uint256 internal constant UNHANDLED_JOIN_KIND = 310;
    uint256 internal constant ZERO_INVARIANT = 311;
    uint256 internal constant ORACLE_INVALID_SECONDS_QUERY = 312;
    uint256 internal constant ORACLE_NOT_INITIALIZED = 313;
    uint256 internal constant ORACLE_QUERY_TOO_OLD = 314;
    uint256 internal constant ORACLE_INVALID_INDEX = 315;
    uint256 internal constant ORACLE_BAD_SECS = 316;
    uint256 internal constant AMP_END_TIME_TOO_CLOSE = 317;
    uint256 internal constant AMP_ONGOING_UPDATE = 318;
    uint256 internal constant AMP_RATE_TOO_HIGH = 319;
    uint256 internal constant AMP_NO_ONGOING_UPDATE = 320;
    uint256 internal constant STABLE_INVARIANT_DIDNT_CONVERGE = 321;
    uint256 internal constant STABLE_GET_BALANCE_DIDNT_CONVERGE = 322;
    uint256 internal constant RELAYER_NOT_CONTRACT = 323;
    uint256 internal constant BASE_POOL_RELAYER_NOT_CALLED = 324;
    uint256 internal constant REBALANCING_RELAYER_REENTERED = 325;
    uint256 internal constant GRADUAL_UPDATE_TIME_TRAVEL = 326;
    uint256 internal constant SWAPS_DISABLED = 327;
    uint256 internal constant CALLER_IS_NOT_LBP_OWNER = 328;
    uint256 internal constant PRICE_RATE_OVERFLOW = 329;
    uint256 internal constant INVALID_JOIN_EXIT_KIND_WHILE_SWAPS_DISABLED = 330;
    uint256 internal constant WEIGHT_CHANGE_TOO_FAST = 331;
    uint256 internal constant LOWER_GREATER_THAN_UPPER_TARGET = 332;
    uint256 internal constant UPPER_TARGET_TOO_HIGH = 333;
    uint256 internal constant UNHANDLED_BY_LINEAR_POOL = 334;
    uint256 internal constant OUT_OF_TARGET_RANGE = 335;
    uint256 internal constant UNHANDLED_EXIT_KIND = 336;
    uint256 internal constant UNAUTHORIZED_EXIT = 337;
    uint256 internal constant MAX_MANAGEMENT_SWAP_FEE_PERCENTAGE = 338;
    uint256 internal constant UNHANDLED_BY_MANAGED_POOL = 339;
    uint256 internal constant UNHANDLED_BY_PHANTOM_POOL = 340;
    uint256 internal constant TOKEN_DOES_NOT_HAVE_RATE_PROVIDER = 341;
    uint256 internal constant INVALID_INITIALIZATION = 342;
    uint256 internal constant OUT_OF_NEW_TARGET_RANGE = 343;
    uint256 internal constant UNAUTHORIZED_OPERATION = 344;
    uint256 internal constant UNINITIALIZED_POOL_CONTROLLER = 345;

    // Lib
    uint256 internal constant REENTRANCY = 400;
    uint256 internal constant SENDER_NOT_ALLOWED = 401;
    uint256 internal constant PAUSED = 402;
    uint256 internal constant PAUSE_WINDOW_EXPIRED = 403;
    uint256 internal constant MAX_PAUSE_WINDOW_DURATION = 404;
    uint256 internal constant MAX_BUFFER_PERIOD_DURATION = 405;
    uint256 internal constant INSUFFICIENT_BALANCE = 406;
    uint256 internal constant INSUFFICIENT_ALLOWANCE = 407;
    uint256 internal constant ERC20_TRANSFER_FROM_ZERO_ADDRESS = 408;
    uint256 internal constant ERC20_TRANSFER_TO_ZERO_ADDRESS = 409;
    uint256 internal constant ERC20_MINT_TO_ZERO_ADDRESS = 410;
    uint256 internal constant ERC20_BURN_FROM_ZERO_ADDRESS = 411;
    uint256 internal constant ERC20_APPROVE_FROM_ZERO_ADDRESS = 412;
    uint256 internal constant ERC20_APPROVE_TO_ZERO_ADDRESS = 413;
    uint256 internal constant ERC20_TRANSFER_EXCEEDS_ALLOWANCE = 414;
    uint256 internal constant ERC20_DECREASED_ALLOWANCE_BELOW_ZERO = 415;
    uint256 internal constant ERC20_TRANSFER_EXCEEDS_BALANCE = 416;
    uint256 internal constant ERC20_BURN_EXCEEDS_ALLOWANCE = 417;
    uint256 internal constant SAFE_ERC20_CALL_FAILED = 418;
    uint256 internal constant ADDRESS_INSUFFICIENT_BALANCE = 419;
    uint256 internal constant ADDRESS_CANNOT_SEND_VALUE = 420;
    uint256 internal constant SAFE_CAST_VALUE_CANT_FIT_INT256 = 421;
    uint256 internal constant GRANT_SENDER_NOT_ADMIN = 422;
    uint256 internal constant REVOKE_SENDER_NOT_ADMIN = 423;
    uint256 internal constant RENOUNCE_SENDER_NOT_ALLOWED = 424;
    uint256 internal constant BUFFER_PERIOD_EXPIRED = 425;
    uint256 internal constant CALLER_IS_NOT_OWNER = 426;
    uint256 internal constant NEW_OWNER_IS_ZERO = 427;
    uint256 internal constant CODE_DEPLOYMENT_FAILED = 428;
    uint256 internal constant CALL_TO_NON_CONTRACT = 429;
    uint256 internal constant LOW_LEVEL_CALL_FAILED = 430;
    uint256 internal constant NOT_PAUSED = 431;
    uint256 internal constant ADDRESS_ALREADY_ALLOWLISTED = 432;
    uint256 internal constant ADDRESS_NOT_ALLOWLISTED = 433;
    uint256 internal constant ERC20_BURN_EXCEEDS_BALANCE = 434;

    // Vault
    uint256 internal constant INVALID_POOL_ID = 500;
    uint256 internal constant CALLER_NOT_POOL = 501;
    uint256 internal constant SENDER_NOT_ASSET_MANAGER = 502;
    uint256 internal constant USER_DOESNT_ALLOW_RELAYER = 503;
    uint256 internal constant INVALID_SIGNATURE = 504;
    uint256 internal constant EXIT_BELOW_MIN = 505;
    uint256 internal constant JOIN_ABOVE_MAX = 506;
    uint256 internal constant SWAP_LIMIT = 507;
    uint256 internal constant SWAP_DEADLINE = 508;
    uint256 internal constant CANNOT_SWAP_SAME_TOKEN = 509;
    uint256 internal constant UNKNOWN_AMOUNT_IN_FIRST_SWAP = 510;
    uint256 internal constant MALCONSTRUCTED_MULTIHOP_SWAP = 511;
    uint256 internal constant INTERNAL_BALANCE_OVERFLOW = 512;
    uint256 internal constant INSUFFICIENT_INTERNAL_BALANCE = 513;
    uint256 internal constant INVALID_ETH_INTERNAL_BALANCE = 514;
    uint256 internal constant INVALID_POST_LOAN_BALANCE = 515;
    uint256 internal constant INSUFFICIENT_ETH = 516;
    uint256 internal constant UNALLOCATED_ETH = 517;
    uint256 internal constant ETH_TRANSFER = 518;
    uint256 internal constant CANNOT_USE_ETH_SENTINEL = 519;
    uint256 internal constant TOKENS_MISMATCH = 520;
    uint256 internal constant TOKEN_NOT_REGISTERED = 521;
    uint256 internal constant TOKEN_ALREADY_REGISTERED = 522;
    uint256 internal constant TOKENS_ALREADY_SET = 523;
    uint256 internal constant TOKENS_LENGTH_MUST_BE_2 = 524;
    uint256 internal constant NONZERO_TOKEN_BALANCE = 525;
    uint256 internal constant BALANCE_TOTAL_OVERFLOW = 526;
    uint256 internal constant POOL_NO_TOKENS = 527;
    uint256 internal constant INSUFFICIENT_FLASH_LOAN_BALANCE = 528;

    // Fees
    uint256 internal constant SWAP_FEE_PERCENTAGE_TOO_HIGH = 600;
    uint256 internal constant FLASH_LOAN_FEE_PERCENTAGE_TOO_HIGH = 601;
    uint256 internal constant INSUFFICIENT_FLASH_LOAN_FEE_AMOUNT = 602;
}

/**
 * @dev Exponentiation and logarithm functions for 18 decimal fixed point numbers (both base and exponent/argument).
 *
 * Exponentiation and logarithm with arbitrary bases (x^y and log_x(y)) are implemented by conversion to natural
 * exponentiation and logarithm (where the base is Euler's number).
 *
 * @author Fernando Martinelli - @fernandomartinelli
 * @author Sergio Yuhjtman - @sergioyuhjtman
 * @author Daniel Fernandez - @dmf7z
 */
library LogExpMath {
    // All fixed point multiplications and divisions are inlined. This means we need to divide by ONE when multiplying
    // two numbers, and multiply by ONE when dividing them.

    // All arguments and return values are 18 decimal fixed point numbers.
    int256 constant ONE_18 = 1e18;

    // Internally, intermediate values are computed with higher precision as 20 decimal fixed point numbers, and in the
    // case of ln36, 36 decimals.
    int256 constant ONE_20 = 1e20;
    int256 constant ONE_36 = 1e36;

    // The domain of natural exponentiation is bound by the word size and number of decimals used.
    //
    // Because internally the result will be stored using 20 decimals, the largest possible result is
    // (2^255 - 1) / 10^20, which makes the largest exponent ln((2^255 - 1) / 10^20) = 130.700829182905140221.
    // The smallest possible result is 10^(-18), which makes largest negative argument
    // ln(10^(-18)) = -41.446531673892822312.
    // We use 130.0 and -41.0 to have some safety margin.
    int256 constant MAX_NATURAL_EXPONENT = 130e18;
    int256 constant MIN_NATURAL_EXPONENT = -41e18;

    // Bounds for ln_36's argument. Both ln(0.9) and ln(1.1) can be represented with 36 decimal places in a fixed point
    // 256 bit integer.
    int256 constant LN_36_LOWER_BOUND = ONE_18 - 1e17;
    int256 constant LN_36_UPPER_BOUND = ONE_18 + 1e17;

    uint256 constant MILD_EXPONENT_BOUND = 2 ** 254 / uint256(ONE_20);

    // 18 decimal constants
    int256 constant x0 = 128000000000000000000; // 2ˆ7
    int256 constant a0 = 38877084059945950922200000000000000000000000000000000000; // eˆ(x0) (no decimals)
    int256 constant x1 = 64000000000000000000; // 2ˆ6
    int256 constant a1 = 6235149080811616882910000000; // eˆ(x1) (no decimals)

    // 20 decimal constants
    int256 constant x2 = 3200000000000000000000; // 2ˆ5
    int256 constant a2 = 7896296018268069516100000000000000; // eˆ(x2)
    int256 constant x3 = 1600000000000000000000; // 2ˆ4
    int256 constant a3 = 888611052050787263676000000; // eˆ(x3)
    int256 constant x4 = 800000000000000000000; // 2ˆ3
    int256 constant a4 = 298095798704172827474000; // eˆ(x4)
    int256 constant x5 = 400000000000000000000; // 2ˆ2
    int256 constant a5 = 5459815003314423907810; // eˆ(x5)
    int256 constant x6 = 200000000000000000000; // 2ˆ1
    int256 constant a6 = 738905609893065022723; // eˆ(x6)
    int256 constant x7 = 100000000000000000000; // 2ˆ0
    int256 constant a7 = 271828182845904523536; // eˆ(x7)
    int256 constant x8 = 50000000000000000000; // 2ˆ-1
    int256 constant a8 = 164872127070012814685; // eˆ(x8)
    int256 constant x9 = 25000000000000000000; // 2ˆ-2
    int256 constant a9 = 128402541668774148407; // eˆ(x9)
    int256 constant x10 = 12500000000000000000; // 2ˆ-3
    int256 constant a10 = 113314845306682631683; // eˆ(x10)
    int256 constant x11 = 6250000000000000000; // 2ˆ-4
    int256 constant a11 = 106449445891785942956; // eˆ(x11)

    /// @dev The input is negated when compared to sigmoid function
    function fakeSigmoid(int256 x) internal pure returns (int256) {
        return 1e36 / (1e18 + exp(x));
    }

    /**
     * @dev Exponentiation (x^y) with unsigned 18 decimal fixed point base and exponent.
     *
     * Reverts if ln(x) * y is smaller than `MIN_NATURAL_EXPONENT`, or larger than `MAX_NATURAL_EXPONENT`.
     */
    function pow(uint256 x, uint256 y) internal pure returns (uint256) {
        if (y == 0) {
            // We solve the 0^0 indetermination by making it equal one.
            return uint256(ONE_18);
        }

        if (x == 0) {
            return 0;
        }

        // Instead of computing x^y directly, we instead rely on the properties of logarithms and exponentiation to
        // arrive at that result. In particular, exp(ln(x)) = x, and ln(x^y) = y * ln(x). This means
        // x^y = exp(y * ln(x)).

        // The ln function takes a signed value, so we need to make sure x fits in the signed 256 bit range.
        _require(x < 2 ** 255, Errors.X_OUT_OF_BOUNDS);
        int256 x_int256 = int256(x);

        // We will compute y * ln(x) in a single step. Depending on the value of x, we can either use ln or ln_36. In
        // both cases, we leave the division by ONE_18 (due to fixed point multiplication) to the end.

        // This prevents y * ln(x) from overflowing, and at the same time guarantees y fits in the signed 256 bit range.
        _require(y < MILD_EXPONENT_BOUND, Errors.Y_OUT_OF_BOUNDS);
        int256 y_int256 = int256(y);

        int256 logx_times_y;
        if (LN_36_LOWER_BOUND < x_int256 && x_int256 < LN_36_UPPER_BOUND) {
            int256 ln_36_x = _ln_36(x_int256);

            // ln_36_x has 36 decimal places, so multiplying by y_int256 isn't as straightforward, since we can't just
            // bring y_int256 to 36 decimal places, as it might overflow. Instead, we perform two 18 decimal
            // multiplications and add the results: one with the first 18 decimals of ln_36_x, and one with the
            // (downscaled) last 18 decimals.
            logx_times_y = ((ln_36_x / ONE_18) * y_int256 + ((ln_36_x % ONE_18) * y_int256) / ONE_18);
        } else {
            logx_times_y = _ln(x_int256) * y_int256;
        }
        logx_times_y /= ONE_18;

        // Finally, we compute exp(y * ln(x)) to arrive at x^y
        _require(
            MIN_NATURAL_EXPONENT <= logx_times_y && logx_times_y <= MAX_NATURAL_EXPONENT,
            Errors.PRODUCT_OUT_OF_BOUNDS
        );

        return uint256(exp(logx_times_y));
    }

    /**
     * @dev Natural exponentiation (e^x) with signed 18 decimal fixed point exponent.
     *
     * Reverts if `x` is smaller than MIN_NATURAL_EXPONENT, or larger than `MAX_NATURAL_EXPONENT`.
     */
    function exp(int256 x) internal pure returns (int256) {
        _require(x >= MIN_NATURAL_EXPONENT && x <= MAX_NATURAL_EXPONENT, Errors.INVALID_EXPONENT);

        if (x < 0) {
            // We only handle positive exponents: e^(-x) is computed as 1 / e^x. We can safely make x positive since it
            // fits in the signed 256 bit range (as it is larger than MIN_NATURAL_EXPONENT).
            // Fixed point division requires multiplying by ONE_18.
            return ((ONE_18 * ONE_18) / exp(-x));
        }

        // First, we use the fact that e^(x+y) = e^x * e^y to decompose x into a sum of powers of two, which we call x_n,
        // where x_n == 2^(7 - n), and e^x_n = a_n has been precomputed. We choose the first x_n, x0, to equal 2^7
        // because all larger powers are larger than MAX_NATURAL_EXPONENT, and therefore not present in the
        // decomposition.
        // At the end of this process we will have the product of all e^x_n = a_n that apply, and the remainder of this
        // decomposition, which will be lower than the smallest x_n.
        // exp(x) = k_0 * a_0 * k_1 * a_1 * ... + k_n * a_n * exp(remainder), where each k_n equals either 0 or 1.
        // We mutate x by subtracting x_n, making it the remainder of the decomposition.

        // The first two a_n (e^(2^7) and e^(2^6)) are too large if stored as 18 decimal numbers, and could cause
        // intermediate overflows. Instead we store them as plain integers, with 0 decimals.
        // Additionally, x0 + x1 is larger than MAX_NATURAL_EXPONENT, which means they will not both be present in the
        // decomposition.

        // For each x_n, we test if that term is present in the decomposition (if x is larger than it), and if so deduct
        // it and compute the accumulated product.

        int256 firstAN;
        if (x >= x0) {
            x -= x0;
            firstAN = a0;
        } else if (x >= x1) {
            x -= x1;
            firstAN = a1;
        } else {
            firstAN = 1; // One with no decimal places
        }

        // We now transform x into a 20 decimal fixed point number, to have enhanced precision when computing the
        // smaller terms.
        x *= 100;

        // `product` is the accumulated product of all a_n (except a0 and a1), which starts at 20 decimal fixed point
        // one. Recall that fixed point multiplication requires dividing by ONE_20.
        int256 product = ONE_20;

        if (x >= x2) {
            x -= x2;
            product = (product * a2) / ONE_20;
        }
        if (x >= x3) {
            x -= x3;
            product = (product * a3) / ONE_20;
        }
        if (x >= x4) {
            x -= x4;
            product = (product * a4) / ONE_20;
        }
        if (x >= x5) {
            x -= x5;
            product = (product * a5) / ONE_20;
        }
        if (x >= x6) {
            x -= x6;
            product = (product * a6) / ONE_20;
        }
        if (x >= x7) {
            x -= x7;
            product = (product * a7) / ONE_20;
        }
        if (x >= x8) {
            x -= x8;
            product = (product * a8) / ONE_20;
        }
        if (x >= x9) {
            x -= x9;
            product = (product * a9) / ONE_20;
        }

        // x10 and x11 are unnecessary here since we have high enough precision already.

        // Now we need to compute e^x, where x is small (in particular, it is smaller than x9). We use the Taylor series
        // expansion for e^x: 1 + x + (x^2 / 2!) + (x^3 / 3!) + ... + (x^n / n!).

        int256 seriesSum = ONE_20; // The initial one in the sum, with 20 decimal places.
        int256 term; // Each term in the sum, where the nth term is (x^n / n!).

        // The first term is simply x.
        term = x;
        seriesSum += term;

        // Each term (x^n / n!) equals the previous one times x, divided by n. Since x is a fixed point number,
        // multiplying by it requires dividing by ONE_20, but dividing by the non-fixed point n values does not.

        term = ((term * x) / ONE_20) / 2;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 3;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 4;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 5;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 6;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 7;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 8;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 9;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 10;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 11;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 12;
        seriesSum += term;

        // 12 Taylor terms are sufficient for 18 decimal precision.

        // We now have the first a_n (with no decimals), and the product of all other a_n present, and the Taylor
        // approximation of the exponentiation of the remainder (both with 20 decimals). All that remains is to multiply
        // all three (one 20 decimal fixed point multiplication, dividing by ONE_20, and one integer multiplication),
        // and then drop two digits to return an 18 decimal value.

        return (((product * seriesSum) / ONE_20) * firstAN) / 100;
    }

    /**
     * @dev Logarithm (log(arg, base), with signed 18 decimal fixed point base and argument.
     */
    function log(int256 arg, int256 base) internal pure returns (int256) {
        // This performs a simple base change: log(arg, base) = ln(arg) / ln(base).

        // Both logBase and logArg are computed as 36 decimal fixed point numbers, either by using ln_36, or by
        // upscaling.

        int256 logBase;
        if (LN_36_LOWER_BOUND < base && base < LN_36_UPPER_BOUND) {
            logBase = _ln_36(base);
        } else {
            logBase = _ln(base) * ONE_18;
        }

        int256 logArg;
        if (LN_36_LOWER_BOUND < arg && arg < LN_36_UPPER_BOUND) {
            logArg = _ln_36(arg);
        } else {
            logArg = _ln(arg) * ONE_18;
        }

        // When dividing, we multiply by ONE_18 to arrive at a result with 18 decimal places
        return (logArg * ONE_18) / logBase;
    }

    /**
     * @dev Natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function ln(int256 a) internal pure returns (int256) {
        // The real natural logarithm is not defined for negative numbers or zero.
        _require(a > 0, Errors.OUT_OF_BOUNDS);
        if (LN_36_LOWER_BOUND < a && a < LN_36_UPPER_BOUND) {
            return _ln_36(a) / ONE_18;
        } else {
            return _ln(a);
        }
    }

    /**
     * @dev Internal natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function _ln(int256 a) private pure returns (int256) {
        if (a < ONE_18) {
            // Since ln(a^k) = k * ln(a), we can compute ln(a) as ln(a) = ln((1/a)^(-1)) = - ln((1/a)). If a is less
            // than one, 1/a will be greater than one, and this if statement will not be entered in the recursive call.
            // Fixed point division requires multiplying by ONE_18.
            return (-_ln((ONE_18 * ONE_18) / a));
        }

        // First, we use the fact that ln^(a * b) = ln(a) + ln(b) to decompose ln(a) into a sum of powers of two, which
        // we call x_n, where x_n == 2^(7 - n), which are the natural logarithm of precomputed quantities a_n (that is,
        // ln(a_n) = x_n). We choose the first x_n, x0, to equal 2^7 because the exponential of all larger powers cannot
        // be represented as 18 fixed point decimal numbers in 256 bits, and are therefore larger than a.
        // At the end of this process we will have the sum of all x_n = ln(a_n) that apply, and the remainder of this
        // decomposition, which will be lower than the smallest a_n.
        // ln(a) = k_0 * x_0 + k_1 * x_1 + ... + k_n * x_n + ln(remainder), where each k_n equals either 0 or 1.
        // We mutate a by subtracting a_n, making it the remainder of the decomposition.

        // For reasons related to how `exp` works, the first two a_n (e^(2^7) and e^(2^6)) are not stored as fixed point
        // numbers with 18 decimals, but instead as plain integers with 0 decimals, so we need to multiply them by
        // ONE_18 to convert them to fixed point.
        // For each a_n, we test if that term is present in the decomposition (if a is larger than it), and if so divide
        // by it and compute the accumulated sum.

        int256 sum = 0;
        if (a >= a0 * ONE_18) {
            a /= a0; // Integer, not fixed point division
            sum += x0;
        }

        if (a >= a1 * ONE_18) {
            a /= a1; // Integer, not fixed point division
            sum += x1;
        }

        // All other a_n and x_n are stored as 20 digit fixed point numbers, so we convert the sum and a to this format.
        sum *= 100;
        a *= 100;

        // Because further a_n are  20 digit fixed point numbers, we multiply by ONE_20 when dividing by them.

        if (a >= a2) {
            a = (a * ONE_20) / a2;
            sum += x2;
        }

        if (a >= a3) {
            a = (a * ONE_20) / a3;
            sum += x3;
        }

        if (a >= a4) {
            a = (a * ONE_20) / a4;
            sum += x4;
        }

        if (a >= a5) {
            a = (a * ONE_20) / a5;
            sum += x5;
        }

        if (a >= a6) {
            a = (a * ONE_20) / a6;
            sum += x6;
        }

        if (a >= a7) {
            a = (a * ONE_20) / a7;
            sum += x7;
        }

        if (a >= a8) {
            a = (a * ONE_20) / a8;
            sum += x8;
        }

        if (a >= a9) {
            a = (a * ONE_20) / a9;
            sum += x9;
        }

        if (a >= a10) {
            a = (a * ONE_20) / a10;
            sum += x10;
        }

        if (a >= a11) {
            a = (a * ONE_20) / a11;
            sum += x11;
        }

        // a is now a small number (smaller than a_11, which roughly equals 1.06). This means we can use a Taylor series
        // that converges rapidly for values of `a` close to one - the same one used in ln_36.
        // Let z = (a - 1) / (a + 1).
        // ln(a) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

        // Recall that 20 digit fixed point division requires multiplying by ONE_20, and multiplication requires
        // division by ONE_20.
        int256 z = ((a - ONE_20) * ONE_20) / (a + ONE_20);
        int256 z_squared = (z * z) / ONE_20;

        // num is the numerator of the series: the z^(2 * n + 1) term
        int256 num = z;

        // seriesSum holds the accumulated sum of each term in the series, starting with the initial z
        int256 seriesSum = num;

        // In each step, the numerator is multiplied by z^2
        num = (num * z_squared) / ONE_20;
        seriesSum += num / 3;

        num = (num * z_squared) / ONE_20;
        seriesSum += num / 5;

        num = (num * z_squared) / ONE_20;
        seriesSum += num / 7;

        num = (num * z_squared) / ONE_20;
        seriesSum += num / 9;

        num = (num * z_squared) / ONE_20;
        seriesSum += num / 11;

        // 6 Taylor terms are sufficient for 36 decimal precision.

        // Finally, we multiply by 2 (non fixed point) to compute ln(remainder)
        seriesSum *= 2;

        // We now have the sum of all x_n present, and the Taylor approximation of the logarithm of the remainder (both
        // with 20 decimals). All that remains is to sum these two, and then drop two digits to return a 18 decimal
        // value.

        return (sum + seriesSum) / 100;
    }

    /**
     * @dev Intrnal high precision (36 decimal places) natural logarithm (ln(x)) with signed 18 decimal fixed point argument,
     * for x close to one.
     *
     * Should only be used if x is between LN_36_LOWER_BOUND and LN_36_UPPER_BOUND.
     */
    function _ln_36(int256 x) private pure returns (int256) {
        // Since ln(1) = 0, a value of x close to one will yield a very small result, which makes using 36 digits
        // worthwhile.

        // First, we transform x to a 36 digit fixed point value.
        x *= ONE_18;

        // We will use the following Taylor expansion, which converges very rapidly. Let z = (x - 1) / (x + 1).
        // ln(x) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

        // Recall that 36 digit fixed point division requires multiplying by ONE_36, and multiplication requires
        // division by ONE_36.
        int256 z = ((x - ONE_36) * ONE_36) / (x + ONE_36);
        int256 z_squared = (z * z) / ONE_36;

        // num is the numerator of the series: the z^(2 * n + 1) term
        int256 num = z;

        // seriesSum holds the accumulated sum of each term in the series, starting with the initial z
        int256 seriesSum = num;

        // In each step, the numerator is multiplied by z^2
        num = (num * z_squared) / ONE_36;
        seriesSum += num / 3;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 5;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 7;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 9;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 11;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 13;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 15;

        // 8 Taylor terms are sufficient for 36 decimal precision.

        // All that remains is multiplying by 2 (non fixed point).
        return seriesSum * 2;
    }
}
