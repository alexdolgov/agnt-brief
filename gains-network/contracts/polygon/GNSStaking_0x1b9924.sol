// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable2Step.sol)

pragma solidity ^0.8.0;

import "./OwnableUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

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
    address private _pendingOwner;

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    function __Ownable2Step_init() internal onlyInitializing {
        __Ownable_init_unchained();
    }

    function __Ownable2Step_init_unchained() internal onlyInitializing {
    }
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
import {Initializable} from "../proxy/utils/Initializable.sol";

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
// OpenZeppelin Contracts (last updated v4.9.4) (utils/Context.sol)

pragma solidity ^0.8.0;
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

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
// FILE: contracts/core/GNSStaking.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable, Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../interfaces/IGNSStaking.sol";
import "../interfaces/IERC20.sol";

import "../libraries/CollateralUtils.sol";

import "../misc/VotingDelegator.sol";

/**
 * @dev Staking contract for GNS token to earn in multiple reward tokens from fees generated on gTrade.
 */
contract GNSStaking is Initializable, Ownable2StepUpgradeable, IGNSStaking, VotingDelegator {
    using SafeERC20 for IERC20;

    uint48 private constant MAX_UNLOCK_DURATION = 730 days; // 2 years in seconds
    uint128 private constant MIN_UNLOCK_GNS_AMOUNT = 1e18;
    uint48 private constant UNSTAKING_COOLDOWN_SECONDS = 100;

    IERC20 public gns;
    IERC20 public dai;

    uint128 public accDaiPerToken; // deprecated (old rewards)
    uint128 public gnsBalance;

    mapping(address => Staker) public stakers; // stakers.debtDai is deprecated (old dai rewards)
    mapping(address => UnlockSchedule[]) private unlockSchedules; // unlockSchedules.debtDai is deprecated (old dai rewards)
    mapping(address => bool) public unlockManagers; // addresses allowed to create vests for others

    address[] public rewardTokens;
    mapping(address => RewardState) public rewardTokenState;

    mapping(address => mapping(address => RewardInfo)) public userTokenRewards; // user => token => info
    mapping(address => mapping(address => mapping(uint256 => RewardInfo))) public userTokenUnlockRewards; // user => token => unlock ID => info

    mapping(address => StakerInfo) public stakerInfos; // user => info

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Sets `owner` and initializes `dai` and `gns` state variables
     */
    function initialize(address _owner, IERC20 _gns, IERC20 _dai) external initializer {
        require(
            address(_owner) != address(0) && address(_gns) != address(0) && address(_dai) != address(0),
            "WRONG_PARAMS"
        );

        _transferOwnership(_owner);
        gns = _gns;
        dai = _dai;
    }

    /**
     * @dev Add `dai` as a reward token (old stakers.debtDai, unlockSchedules.debtDai and accDaiPerToken are deprecacted now)
     * Necessary to call right after contract is updated because otherwise distributeRewardDai() reverts.
     */
    function initializeV2() external reinitializer(2) {
        _addRewardToken(address(dai));
    }

    /**
     * @dev Modifier used for vest creation access control.
     * Users can create non-revocable vests for themselves only, `owner` and `unlockManagers` can create both types for anyone.
     */
    modifier onlyAuthorizedUnlockManager(address _staker, bool _revocable) {
        require(
            (_staker == msg.sender && !_revocable) || msg.sender == owner() || unlockManagers[msg.sender],
            "NO_AUTH"
        );
        _;
    }

    /**
     * @dev Modifier to reject any `_token` not configured as a reward token
     */
    modifier onlyRewardToken(address _token) {
        require(isRewardToken(_token), "INVALID_TOKEN");
        _;
    }

    /**
     * @dev Modifier to ensure operation is not performed before cooldown period has expired
     */
    modifier notInCooldown() {
        require(
            uint48(block.timestamp) > stakerInfos[msg.sender].lastDepositTs + UNSTAKING_COOLDOWN_SECONDS,
            "IN_COOLDOWN"
        );
        _;
    }

    /**
     * @dev Sets whether `_manager` is `_authorized` to create vests for other users.
     *
     * Emits {UnlockManagerUpdated}
     */
    function setUnlockManager(address _manager, bool _authorized) external onlyOwner {
        unlockManagers[_manager] = _authorized;

        emit UnlockManagerUpdated(_manager, _authorized);
    }

    /**
     * @dev Adds `_token` as a reward token, configures its precision delta.
     *
     * precisionDelta = 10^(18-decimals), eg. USDC 6 decimals => precisionDelta = 1e12
     * It is used to scale up from token amounts to 1e18 normalized accRewardPerGns/debtToken
     * and to scale down from accRewardPerGns/debtToken back to 'real' pending token amounts.
     *
     * Emits {RewardTokenAdded}
     */
    function _addRewardToken(address _token) private {
        require(_token != address(0), "ZERO_ADDRESS");
        require(!isRewardToken(_token), "DUPLICATE");

        rewardTokens.push(_token);

        uint128 precisionDelta = CollateralUtils.getCollateralConfig(_token).precisionDelta;
        rewardTokenState[_token].precisionDelta = precisionDelta;

        emit RewardTokenAdded(_token, rewardTokens.length - 1, precisionDelta);
    }

    /**
     * @dev Forwards call to {_addRewardToken}. Only callable by `owner`.
     */
    function addRewardToken(address _token) external onlyOwner {
        _addRewardToken(_token);
    }

    /**
     * @dev Attempts to set the delegatee of `_token` to `_delegatee`. `_token` must be a valid reward token.
     */
    function setDelegatee(address _token, address _delegatee) external onlyRewardToken(_token) onlyOwner {
        require(_delegatee != address(0), "ADDRESS_0");

        _tryDelegate(_token, _delegatee);
    }

    /**
     * @dev Returns the current debt (1e18 precision) for a token given `_stakedGns` and `_accRewardPerGns`
     */
    function _currentDebtToken(uint128 _stakedGns, uint128 _accRewardPerGns) private pure returns (uint128) {
        return uint128((uint256(_stakedGns) * _accRewardPerGns) / 1e18);
    }

    /**
     * @dev Returns the amount of pending token rewards (precision depends on token) given `_currDebtToken`, `_lastDebtToken` and `_precisionDelta`
     */
    function _pendingTokens(
        uint128 _currDebtToken,
        uint128 _lastDebtToken,
        uint128 _precisionDelta
    ) private pure returns (uint128) {
        return (_currDebtToken - _lastDebtToken) / _precisionDelta;
    }

    /**
     * @dev Returns the amount of pending token rewards (precision depends on token) given `_stakedGns`, `_lastDebtToken` and `_rewardState` for a token
     */
    function _pendingTokens(
        uint128 _stakedGns,
        uint128 _lastDebtToken,
        RewardState memory _rewardState
    ) private pure returns (uint128) {
        return
            _pendingTokens(
                _currentDebtToken(_stakedGns, _rewardState.accRewardPerGns),
                _lastDebtToken,
                _rewardState.precisionDelta
            );
    }

    /**
     * @dev returns pending old dai (1e18 precision) given `_currDebtDai` and `_lastDebtDai`
     * @custom:deprecated to be removed in version after v7
     */
    function _pendingDaiPure(uint128 _currDebtDai, uint128 _lastDebtDai) private pure returns (uint128) {
        return _pendingTokens(_currDebtDai, _lastDebtDai, 1);
    }

    /**
     * @dev returns pending old dai (1e18 precision) given `_stakedGns` amount and `_lastDebtDai`
     * @custom:deprecated to be removed in version after v7
     */
    function _pendingDai(uint128 _stakedGns, uint128 _lastDebtDai) private view returns (uint128) {
        return _pendingDaiPure(_currentDebtToken(_stakedGns, accDaiPerToken), _lastDebtDai);
    }

    /**
     * @dev returns pending old dai (1e18 precision) given `_schedule`
     * @custom:deprecated to be removed in version after v7
     */
    function _pendingDai(UnlockSchedule memory _schedule) private view returns (uint128) {
        return
            _pendingDaiPure(
                _currentDebtToken(_scheduleStakedGns(_schedule.totalGns, _schedule.claimedGns), accDaiPerToken),
                _schedule.debtDai
            );
    }

    /**
     * @dev returns staked gns (1e18 precision) given `_totalGns` and `_claimedGns`
     */
    function _scheduleStakedGns(uint128 _totalGns, uint128 _claimedGns) private pure returns (uint128) {
        return _totalGns - _claimedGns;
    }

    /**
     * @dev Returns the unlocked GNS tokens amount of `_schedule` at `_timestamp`.
     * Includes already claimed GNS tokens.
     */
    function unlockedGns(UnlockSchedule memory _schedule, uint48 _timestamp) public pure returns (uint128) {
        // if vest has ended return totalGns
        if (_timestamp >= _schedule.start + _schedule.duration) return _schedule.totalGns;

        // if unlock hasn't started or it's a cliff unlock return 0
        if (_timestamp < _schedule.start || _schedule.unlockType == UnlockType.CLIFF) return 0;

        return uint128((uint256(_schedule.totalGns) * (_timestamp - _schedule.start)) / _schedule.duration);
    }

    /**
     * @dev Returns the releasable GNS tokens amount (1e18 precision) of `_schedule` at `_timestamp`.
     * Doesn't include already claimed GNS tokens.
     */
    function releasableGns(UnlockSchedule memory _schedule, uint48 _timestamp) public pure returns (uint128) {
        return unlockedGns(_schedule, _timestamp) - _schedule.claimedGns;
    }

    /**
     * @dev Returns the owner of the contract.
     */
    function owner() public view override(IGNSStaking, OwnableUpgradeable) returns (address) {
        return super.owner();
    }

    /**
     * @dev Returns whether `_token` is a listed reward token.
     */
    function isRewardToken(address _token) public view returns (bool) {
        return rewardTokenState[_token].precisionDelta > 0;
    }

    /**
     * @dev Harvests `msg.sender`'s `_token` pending rewards for non-vested GNS.
     *
     * Handles updating `stake.debtToken` with new debt given `_stakedGns`.
     * Transfers pending `_token` rewards to `msg.sender`.
     *
     * Emits {RewardHarvested}
     */
    function _harvestToken(address _token, uint128 _stakedGns) private returns (uint128 pendingTokens) {
        RewardInfo storage userInfo = userTokenRewards[msg.sender][_token];
        RewardState memory rewardState = rewardTokenState[_token];

        uint128 newDebtToken = _currentDebtToken(_stakedGns, rewardState.accRewardPerGns);
        pendingTokens = _pendingTokens(newDebtToken, userInfo.debtToken, rewardState.precisionDelta);

        userInfo.debtToken = newDebtToken;

        IERC20(_token).safeTransfer(msg.sender, uint256(pendingTokens));

        emit RewardHarvested(msg.sender, _token, pendingTokens);
    }

    /**
     * @dev Harvest pending `_token` rewards of `_staker` for vests `_ids`.
     * `_isOldDai` allows to differentiate between the old dai rewards before v7 and the new ones.
     *
     * Emits {RewardHarvestedFromUnlock}
     */
    function _harvestFromUnlock(
        address _staker,
        address _token,
        uint256[] memory _ids,
        bool _isOldDai
    ) private returns (uint128 pendingTokens) {
        require(_staker != address(0), "USER_EMPTY");

        if (_ids.length == 0) return 0;

        uint128 precisionDelta; // only used when _isOldDai == false
        uint128 accRewardPerGns;

        /// @custom:deprecated to be removed in version after v7 (only keep else part)
        if (_isOldDai) {
            accRewardPerGns = accDaiPerToken;
        } else {
            RewardState memory rewardState = rewardTokenState[_token];
            precisionDelta = rewardState.precisionDelta;
            accRewardPerGns = rewardState.accRewardPerGns;
        }

        for (uint256 i; i < _ids.length; ) {
            uint256 unlockId = _ids[i];
            UnlockSchedule storage schedule = unlockSchedules[_staker][unlockId];

            uint128 newDebtToken = _currentDebtToken(
                _scheduleStakedGns(schedule.totalGns, schedule.claimedGns),
                accRewardPerGns
            );

            /// @custom:deprecated to be removed in version after v7 (only keep else part)
            if (_isOldDai) {
                pendingTokens += _pendingDaiPure(newDebtToken, schedule.debtDai);
                schedule.debtDai = newDebtToken;
            } else {
                RewardInfo storage unlockInfo = userTokenUnlockRewards[_staker][_token][unlockId];
                pendingTokens += _pendingTokens(newDebtToken, unlockInfo.debtToken, precisionDelta);
                unlockInfo.debtToken = newDebtToken;
            }

            unchecked {
                ++i;
            }
        }

        IERC20(_token).safeTransfer(_staker, uint256(pendingTokens));

        emit RewardHarvestedFromUnlock(_staker, _token, _isOldDai, _ids, pendingTokens);
    }

    /**
     * @dev Harvests the `_staker`'s vests `_ids` pending rewards for '_token'
     */
    function _harvestTokenFromUnlock(address _staker, address _token, uint256[] memory _ids) private returns (uint128) {
        return _harvestFromUnlock(_staker, _token, _ids, false);
    }

    /**
     * @dev Harvests the `_staker`'s vests `_ids` pending rewards for all supported reward tokens
     */
    function _harvestTokensFromUnlock(address _staker, address[] memory _rewardTokens, uint256[] memory _ids) private {
        for (uint256 i; i < _rewardTokens.length; ) {
            _harvestTokenFromUnlock(_staker, _rewardTokens[i], _ids);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev Harvests the `_staker`'s vests `_ids` old dai pending rewards
     */
    function _harvestDaiFromUnlock(address _staker, uint256[] memory _ids) private {
        _harvestFromUnlock(_staker, address(dai), _ids, true);
    }

    /**
     * @dev Loops through all `rewardTokens` and syncs `debtToken`.
     * Used when staking or unstaking gns and only after claiming pending rewards.
     * If called before harvesting, all pending rewards will be lost.
     */
    function _syncRewardTokensDebt(address _staker, uint128 _stakedGns) private {
        uint256 len = rewardTokens.length;
        for (uint256 i; i < len; ) {
            address rewardToken = rewardTokens[i];

            userTokenRewards[_staker][rewardToken].debtToken = _currentDebtToken(
                _stakedGns,
                rewardTokenState[rewardToken].accRewardPerGns
            );

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev Loops through all `_rewardTokens` and syncs `debtToken`.
     * Used when creating a vest or when claiming unlocked GNS from a vest, after claiming pending rewards.
     * If called before harvesting, all pending rewards will be lost.
     */
    function _syncUnlockRewardTokensDebt(
        address _staker,
        address[] memory _rewardTokens,
        uint256 _unlockId,
        uint128 _stakedGns
    ) private {
        for (uint256 i; i < _rewardTokens.length; ) {
            address rewardToken = _rewardTokens[i];

            userTokenUnlockRewards[_staker][rewardToken][_unlockId].debtToken = _currentDebtToken(
                _stakedGns,
                rewardTokenState[rewardToken].accRewardPerGns
            );

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev Harvests old dai and all supported tokens pending rewards for vests `_ids` of `_staker`.
     *
     * Then calculates each vest's releasable `amountGns` given `_timestamp`, increases their 'claimedGns' by this amount,
     * and syncs old `debtDai` and all supported tokens debts.
     *
     * Finally transfers the total claimable GNS of all vests to `_staker`.
     *
     * Emits {GnsClaimed}
     */
    function _claimUnlockedGns(address _staker, uint256[] memory _ids, uint48 _timestamp) private {
        uint128 claimedGns;
        address[] memory rewardTokensArray = rewardTokens;

        _harvestDaiFromUnlock(_staker, _ids);
        _harvestTokensFromUnlock(_staker, rewardTokensArray, _ids);

        for (uint256 i; i < _ids.length; ) {
            uint256 unlockId = _ids[i];
            UnlockSchedule storage schedule = unlockSchedules[_staker][unlockId];

            // get gns amount being claimed for current vest
            uint128 amountGns = releasableGns(schedule, _timestamp);

            // make sure new vest total claimed amount is not more than total gns for vest
            uint128 scheduleNewClaimedGns = schedule.claimedGns + amountGns;
            uint128 scheduleTotalGns = schedule.totalGns;
            assert(scheduleNewClaimedGns <= scheduleTotalGns);

            // update vest claimed gns
            schedule.claimedGns = scheduleNewClaimedGns;

            // sync debts for all tokens
            uint128 newStakedGns = _scheduleStakedGns(scheduleTotalGns, scheduleNewClaimedGns);
            schedule.debtDai = _currentDebtToken(newStakedGns, accDaiPerToken); /// @custom:deprecated to be removed in version after v7
            _syncUnlockRewardTokensDebt(_staker, rewardTokensArray, unlockId, newStakedGns);

            claimedGns += amountGns;

            unchecked {
                ++i;
            }
        }

        gnsBalance -= claimedGns;
        gns.safeTransfer(_staker, uint256(claimedGns));

        emit GnsClaimed(_staker, _ids, claimedGns);
    }

    /**
     * @dev Transfers `_amountToken` of `_token` (valid reward token) from caller to this contract and updates `accRewardPerGns`.
     *
     * @dev Note: `accRewardPerGns` is normalized to 1e18 for all reward tokens (even those with less than 18 decimals)
     *
     * Emits {RewardDistributed}
     */
    function distributeReward(address _token, uint256 _amountToken) external override onlyRewardToken(_token) {
        require(gnsBalance > 0, "NO_GNS_STAKED");

        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amountToken);

        RewardState storage rewardState = rewardTokenState[_token];
        rewardState.accRewardPerGns += uint128((_amountToken * rewardState.precisionDelta * 1e18) / gnsBalance);

        emit RewardDistributed(_token, _amountToken);
    }

    /**
     * @dev Harvests the caller's regular pending `_token` rewards. `_token` must be a valid reward token.
     */
    function harvestToken(address _token) public onlyRewardToken(_token) returns (uint128) {
        return _harvestToken(_token, stakers[msg.sender].stakedGns);
    }

    /**
     * @dev Harvests the caller's pending `_token` rewards for vests `_ids`. `_token` must be a valid reward token.
     */
    function harvestTokenFromUnlock(
        address _token,
        uint[] calldata _ids
    ) public onlyRewardToken(_token) returns (uint128) {
        return _harvestTokenFromUnlock(msg.sender, _token, _ids);
    }

    /**
     * @dev Harvests the caller's regular pending `_token` rewards and pending rewards for vests `_ids`.
     */
    function harvestTokenAll(address _token, uint[] calldata _ids) public returns (uint128) {
        return harvestToken(_token) + harvestTokenFromUnlock(_token, _ids);
    }

    /**
     * @dev Harvests the caller's regular pending rewards for all supported reward tokens.
     */
    function harvestTokens() public {
        uint128 stakedGns = stakers[msg.sender].stakedGns;

        uint256 len = rewardTokens.length;
        for (uint256 i; i < len; ) {
            _harvestToken(rewardTokens[i], stakedGns);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev Harvests the caller's pending rewards of vests `_ids` for all supported reward tokens.
     */
    function harvestTokensFromUnlock(uint[] calldata _ids) public {
        _harvestTokensFromUnlock(msg.sender, rewardTokens, _ids);
    }

    /**
     * @dev Harvests the caller's regular pending rewards and pending rewards of vests `_ids` for all supported reward tokens.
     */
    function harvestTokensAll(uint[] calldata _ids) public {
        harvestTokens();
        harvestTokensFromUnlock(_ids);
    }

    /**
     * @dev Harvests the caller's GNS pending rewards and then stakes them
     */
    function compoundGnsRewards(uint[] calldata _ids) external {
        stakeGns(harvestTokenAll(address(gns), _ids));
    }

    /**
     * @dev Harvests caller's old regular dai rewards.
     * @custom:deprecated to be removed in version after v7
     *
     * Emits {DaiHarvested}
     */
    function harvestDai() public {
        Staker storage staker = stakers[msg.sender];

        uint128 newDebtDai = _currentDebtToken(staker.stakedGns, accDaiPerToken);
        uint128 pendingDai = _pendingDaiPure(newDebtDai, staker.debtDai);

        staker.debtDai = newDebtDai;
        dai.safeTransfer(msg.sender, uint256(pendingDai));

        emit DaiHarvested(msg.sender, pendingDai);
    }

    /**
     * @dev Harvests caller's old dai rewards for vests `_ids`.
     * @custom:deprecated to be removed in version after v7
     */
    function harvestDaiFromUnlock(uint256[] calldata _ids) public {
        _harvestDaiFromUnlock(msg.sender, _ids);
    }

    /**
     * @dev Harvests caller's old regular dai rewards and old dai rewards of vests `_ids`.
     * @custom:deprecated to be removed in version after v7
     */
    function harvestDaiAll(uint256[] calldata _ids) public {
        harvestDai();
        harvestDaiFromUnlock(_ids);
    }

    /**
     * @dev Harvests the caller's regular pending rewards and pending rewards for vests `_ids` for all supported reward tokens (+ old DAI rewards).
     * @custom:deprecated to be removed in version after v7, can just use {harvestTokensAll}
     */
    function harvestAll(uint[] calldata _ids) external {
        harvestTokensAll(_ids);
        harvestDaiAll(_ids);
    }

    /**
     * @dev Stakes non-vested `_amountGns` from caller.
     *
     * Emits {GnsStaked}
     */
    function stakeGns(uint128 _amountGns) public {
        require(_amountGns > 0, "AMOUNT_ZERO");

        gns.safeTransferFrom(msg.sender, address(this), uint256(_amountGns));

        harvestDai();
        harvestTokens();

        Staker storage staker = stakers[msg.sender];
        uint128 newStakedGns = staker.stakedGns + _amountGns;

        staker.stakedGns = newStakedGns;

        /// @custom:deprecated to be removed in version after v7
        staker.debtDai = _currentDebtToken(newStakedGns, accDaiPerToken);

        // Update `.debtToken` for all reward tokens using newStakedGns
        _syncRewardTokensDebt(msg.sender, newStakedGns);

        gnsBalance += _amountGns;

        // Update lastDeposit
        stakerInfos[msg.sender].lastDepositTs = uint48(block.timestamp);

        emit GnsStaked(msg.sender, _amountGns);
    }

    /**
     * @dev Unstakes non-vested `_amountGns` from caller.
     *
     * Emits {GnsUnstaked}
     */
    function unstakeGns(uint128 _amountGns) external notInCooldown {
        require(_amountGns > 0, "AMOUNT_ZERO");

        harvestDai();
        harvestTokens();

        Staker storage staker = stakers[msg.sender];
        uint128 newStakedGns = staker.stakedGns - _amountGns; // reverts if _amountGns > staker.stakedGns (underflow)

        staker.stakedGns = newStakedGns;

        /// @custom:deprecated to be removed in version after v7
        staker.debtDai = _currentDebtToken(newStakedGns, accDaiPerToken);

        // Update `.debtToken` for all reward tokens with current newStakedGns
        _syncRewardTokensDebt(msg.sender, newStakedGns);

        gnsBalance -= _amountGns;
        gns.safeTransfer(msg.sender, uint256(_amountGns));

        emit GnsUnstaked(msg.sender, _amountGns);
    }

    /**
     * @dev Claims caller's unlocked GNS from vests `_ids`.
     */
    function claimUnlockedGns(uint256[] memory _ids) external {
        _claimUnlockedGns(msg.sender, _ids, uint48(block.timestamp));
    }

    /**
     * @dev Creates vest for `_staker` given `_schedule` input parameters.
     * Restricted with onlyAuthorizedUnlockManager access control.
     *
     * Emits {UnlockScheduled}
     */
    function createUnlockSchedule(
        UnlockScheduleInput calldata _schedule,
        address _staker
    ) external override onlyAuthorizedUnlockManager(_staker, _schedule.revocable) {
        uint48 timestamp = uint48(block.timestamp);

        require(_schedule.start < timestamp + MAX_UNLOCK_DURATION, "TOO_FAR_IN_FUTURE");
        require(
            _schedule.duration >= UNSTAKING_COOLDOWN_SECONDS && _schedule.duration <= MAX_UNLOCK_DURATION,
            "INCORRECT_DURATION"
        );
        require(_schedule.totalGns >= MIN_UNLOCK_GNS_AMOUNT, "INCORRECT_AMOUNT");
        require(_staker != address(0), "ADDRESS_0");

        uint128 totalGns = _schedule.totalGns;

        // Requester has to pay the gns amount
        gns.safeTransferFrom(msg.sender, address(this), uint256(totalGns));

        UnlockSchedule memory schedule = UnlockSchedule({
            totalGns: totalGns,
            claimedGns: 0,
            debtDai: _currentDebtToken(totalGns, accDaiPerToken), /// @custom:deprecated to be removed in version after v7
            start: _schedule.start >= timestamp ? _schedule.start : timestamp, // accept time in the future
            duration: _schedule.duration,
            unlockType: _schedule.unlockType,
            revocable: _schedule.revocable,
            __placeholder: 0
        });

        unlockSchedules[_staker].push(schedule);
        gnsBalance += totalGns;

        uint256 unlockId = unlockSchedules[_staker].length - 1;

        // Set `.debtToken` for all available rewardTokens
        _syncUnlockRewardTokensDebt(_staker, rewardTokens, unlockId, totalGns);

        emit UnlockScheduled(_staker, unlockId, schedule);
    }

    /**
     * @dev Revokes vest `_id` for `_staker`. Sends the unlocked GNS to `_staker` and sends the remaining locked GNS to `owner`.
     * Only callable by `owner`.
     *
     * Emits {UnlockScheduleRevoked}
     */
    function revokeUnlockSchedule(address _staker, uint256 _id) external onlyOwner {
        UnlockSchedule storage schedule = unlockSchedules[_staker][_id];
        require(schedule.revocable, "NOT_REVOCABLE");

        uint256[] memory ids = new uint256[](1);
        ids[0] = _id;

        // claims unlocked gns and harvests pending rewards
        _claimUnlockedGns(_staker, ids, uint48(block.timestamp));

        // store remaining gns staked before resetting schedule
        uint128 lockedAmountGns = _scheduleStakedGns(schedule.totalGns, schedule.claimedGns);

        // resets vest so no more claims or harvests are possible
        schedule.totalGns = schedule.claimedGns;
        schedule.duration = 0;
        schedule.start = 0;
        schedule.debtDai = 0; /// @custom:deprecated to be removed in version after v7

        // reset all other reward tokens `debtToken` to 0 (by passing _stakedGns = 0)
        _syncUnlockRewardTokensDebt(_staker, rewardTokens, _id, 0);

        gnsBalance -= lockedAmountGns;
        gns.safeTransfer(owner(), uint256(lockedAmountGns));

        emit UnlockScheduleRevoked(_staker, _id);
    }

    /**
     * @dev Returns the pending `_token` rewards (precision depends on token) for `_staker`.
     */
    function pendingRewardToken(address _staker, address _token) public view returns (uint128) {
        if (!isRewardToken(_token)) return 0;

        return
            _pendingTokens(
                stakers[_staker].stakedGns,
                userTokenRewards[_staker][_token].debtToken,
                rewardTokenState[_token]
            );
    }

    /**
     * @dev Returns an array of `_staker`'s pending rewards (precision depends on token) for all supported tokens.
     */
    function pendingRewardTokens(address _staker) external view returns (uint128[] memory pendingTokens) {
        uint256 len = rewardTokens.length;
        pendingTokens = new uint128[](len);

        for (uint256 i; i < len; ++i) {
            pendingTokens[i] = pendingRewardToken(_staker, rewardTokens[i]);
        }

        return pendingTokens;
    }

    /**
     * @dev Returns an array of `_staker`'s pending rewards (precision depends on token) from vests `_ids` for all supported tokens.
     */
    function pendingRewardTokensFromUnlocks(
        address _staker,
        uint256[] calldata _ids
    ) external view returns (uint128[] memory pendingTokens) {
        address[] memory rewardTokensArray = rewardTokens;
        pendingTokens = new uint128[](rewardTokensArray.length);

        for (uint256 i; i < _ids.length; ++i) {
            UnlockSchedule storage schedule = unlockSchedules[_staker][_ids[i]];
            uint128 stakedGns = _scheduleStakedGns(schedule.totalGns, schedule.claimedGns);

            for (uint256 j; j < rewardTokensArray.length; ++j) {
                address rewardToken = rewardTokensArray[j];

                pendingTokens[j] += _pendingTokens(
                    stakedGns,
                    userTokenUnlockRewards[_staker][rewardToken][_ids[i]].debtToken,
                    rewardTokenState[rewardToken]
                );
            }
        }
    }

    /**
     * @dev Returns `_staker`'s pending old dai rewards (1e18 precision).
     * @custom:deprecated to be removed in version after v7
     */
    function pendingRewardDai(address _staker) external view returns (uint128) {
        Staker memory staker = stakers[_staker];
        return _pendingDai(staker.stakedGns, staker.debtDai);
    }

    /**
     * @dev Returns `_staker`'s pending old dai rewards (1e18 precision) from vests `_ids`.
     * @custom:deprecated to be removed in version after v7
     */
    function pendingRewardDaiFromUnlocks(
        address _staker,
        uint256[] calldata _ids
    ) external view returns (uint128 pending) {
        for (uint256 i; i < _ids.length; ++i) {
            pending += _pendingDai(unlockSchedules[_staker][_ids[i]]);
        }
    }

    /**
     * @dev Returns `_staker's` total non-vested and vested GNS staked (1e18 precision)
     */
    function totalGnsStaked(address _staker) external view returns (uint128) {
        uint128 totalGns = stakers[_staker].stakedGns;
        UnlockSchedule[] memory stakerUnlocks = unlockSchedules[_staker];

        for (uint256 i; i < stakerUnlocks.length; ++i) {
            UnlockSchedule memory schedule = stakerUnlocks[i];
            totalGns += _scheduleStakedGns(schedule.totalGns, schedule.claimedGns);
        }

        return totalGns;
    }

    /**
     * @dev Returns all `_staker's` vests.
     */
    function getUnlockSchedules(address _staker) external view returns (UnlockSchedule[] memory) {
        return unlockSchedules[_staker];
    }

    /**
     * @dev Returns `_staker's` vest at `_index'`
     */
    function getUnlockSchedules(address _staker, uint256 _index) external view returns (UnlockSchedule memory) {
        return unlockSchedules[_staker][_index];
    }

    /**
     * @dev Returns the address of all supported reward tokens
     */
    function getRewardTokens() external view returns (address[] memory) {
        return rewardTokens;
    }
}

// ============================================================
// FILE: contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @dev Interface for ERC20 tokens
 */
interface IERC20 is IERC20Metadata {
    function burn(address, uint256) external;

    function mint(address, uint256) external;

    function hasRole(bytes32, address) external view returns (bool);

    function deposit() external payable;
}

// ============================================================
// FILE: contracts/interfaces/IGNSStaking.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @dev Interface for GNSStaking contract
 */
interface IGNSStaking {
    struct Staker {
        uint128 stakedGns; // 1e18
        uint128 debtDai; // 1e18
    }

    struct StakerInfo {
        uint48 lastDepositTs;
        uint208 __placeholder;
    }

    struct RewardState {
        uint128 accRewardPerGns; // 1e18
        uint128 precisionDelta;
    }

    struct RewardInfo {
        uint128 debtToken; // 1e18
        uint128 __placeholder;
    }

    struct UnlockSchedule {
        uint128 totalGns; // 1e18
        uint128 claimedGns; // 1e18
        uint128 debtDai; // 1e18
        uint48 start; // block.timestamp (seconds)
        uint48 duration; // in seconds
        bool revocable;
        UnlockType unlockType;
        uint16 __placeholder;
    }

    struct UnlockScheduleInput {
        uint128 totalGns; // 1e18
        uint48 start; // block.timestamp (seconds)
        uint48 duration; // in seconds
        bool revocable;
        UnlockType unlockType;
    }

    enum UnlockType {
        LINEAR,
        CLIFF
    }

    function owner() external view returns (address);

    function distributeReward(address _rewardToken, uint256 _amountToken) external;

    function createUnlockSchedule(UnlockScheduleInput calldata _schedule, address _staker) external;

    event UnlockManagerUpdated(address indexed manager, bool authorized);

    event DaiHarvested(address indexed staker, uint128 amountDai);

    event RewardHarvested(address indexed staker, address indexed token, uint128 amountToken);
    event RewardHarvestedFromUnlock(
        address indexed staker,
        address indexed token,
        bool isOldDai,
        uint256[] ids,
        uint128 amountToken
    );
    event RewardDistributed(address indexed token, uint256 amount);

    event GnsStaked(address indexed staker, uint128 amountGns);
    event GnsUnstaked(address indexed staker, uint128 amountGns);
    event GnsClaimed(address indexed staker, uint256[] ids, uint128 amountGns);

    event UnlockScheduled(address indexed staker, uint256 indexed index, UnlockSchedule schedule);
    event UnlockScheduleRevoked(address indexed staker, uint256 indexed index);

    event RewardTokenAdded(address token, uint256 index, uint128 precisionDelta);
}

// ============================================================
// FILE: contracts/libraries/CollateralUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "../interfaces/IERC20.sol";

/**
 * @dev Collaterals decimal precision internal library
 */
library CollateralUtils {
    struct CollateralConfig {
        uint128 precision;
        uint128 precisionDelta;
    }

    /**
     * @dev Calculates `precision` (10^decimals) and `precisionDelta` (precision difference
     * between 18 decimals and `token` decimals) of a given IERC20 `token`
     *
     * Notice: not compatible with tokens with more than 18 decimals
     *
     * @param   _token collateral token address
     */
    function getCollateralConfig(address _token) internal view returns (CollateralConfig memory _meta) {
        uint256 _decimals = uint256(IERC20(_token).decimals());

        _meta.precision = uint128(10 ** _decimals);
        _meta.precisionDelta = uint128(10 ** (18 - _decimals));
    }
}

// ============================================================
// FILE: contracts/misc/VotingDelegator.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 *
 * @dev Abstract contract that handles delegating governance votes of an asset when possible.
 * Compatible with any token that extends OpenZeppelin ERC20Votes/ERC20VotesUpgradeable or implements `delegate(address)`
 */
abstract contract VotingDelegator {
    event Delegated(address indexed asset, address indexed delegatee, bool success);

    /**
     * @dev Calls `delegate(address)` on `_asset`. Does not revert if function is not supported by `_asset`.
     *
     * Emits {Delegated} with `_asset`, `_delegatee` and `success` flag
     */
    function _tryDelegate(address _asset, address _delegatee) internal {
        (bool success, ) = _asset.call(abi.encodeWithSignature("delegate(address)", _delegatee));
        emit Delegated(_asset, _delegatee, success);
    }
}
