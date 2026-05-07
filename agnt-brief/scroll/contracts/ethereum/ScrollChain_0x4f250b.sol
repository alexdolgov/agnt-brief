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
// FILE: src/L1/rollup/IL1MessageQueue.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

interface IL1MessageQueue {
    /**********
     * Events *
     **********/

    /// @notice Emitted when a new L1 => L2 transaction is appended to the queue.
    /// @param sender The address of account who initiates the transaction.
    /// @param target The address of account who will receive the transaction.
    /// @param value The value passed with the transaction.
    /// @param queueIndex The index of this transaction in the queue.
    /// @param gasLimit Gas limit required to complete the message relay on L2.
    /// @param data The calldata of the transaction.
    event QueueTransaction(
        address indexed sender,
        address indexed target,
        uint256 value,
        uint64 queueIndex,
        uint256 gasLimit,
        bytes data
    );

    /// @notice Emitted when some L1 => L2 transactions are included in L1.
    /// @param startIndex The start index of messages popped.
    /// @param count The number of messages popped.
    /// @param skippedBitmap A bitmap indicates whether a message is skipped.
    event DequeueTransaction(uint256 startIndex, uint256 count, uint256 skippedBitmap);

    /// @notice Emitted when a message is dropped from L1.
    /// @param index The index of message dropped.
    event DropTransaction(uint256 index);

    /// @notice Emitted when owner updates gas oracle contract.
    /// @param _oldGasOracle The address of old gas oracle contract.
    /// @param _newGasOracle The address of new gas oracle contract.
    event UpdateGasOracle(address indexed _oldGasOracle, address indexed _newGasOracle);

    /// @notice Emitted when owner updates max gas limit.
    /// @param _oldMaxGasLimit The old max gas limit.
    /// @param _newMaxGasLimit The new max gas limit.
    event UpdateMaxGasLimit(uint256 _oldMaxGasLimit, uint256 _newMaxGasLimit);

    /**********
     * Errors *
     **********/

    /// @dev Thrown when the given address is `address(0)`.
    error ErrorZeroAddress();

    /*************************
     * Public View Functions *
     *************************/

    /// @notice The start index of all pending inclusion messages.
    function pendingQueueIndex() external view returns (uint256);

    /// @notice Return the index of next appended message.
    /// @dev Also the total number of appended messages.
    function nextCrossDomainMessageIndex() external view returns (uint256);

    /// @notice Return the message of in `queueIndex`.
    /// @param queueIndex The index to query.
    function getCrossDomainMessage(uint256 queueIndex) external view returns (bytes32);

    /// @notice Return the amount of ETH should pay for cross domain message.
    /// @param gasLimit Gas limit required to complete the message relay on L2.
    function estimateCrossDomainMessageFee(uint256 gasLimit) external view returns (uint256);

    /// @notice Return the amount of intrinsic gas fee should pay for cross domain message.
    /// @param _calldata The calldata of L1-initiated transaction.
    function calculateIntrinsicGasFee(bytes calldata _calldata) external view returns (uint256);

    /// @notice Return the hash of a L1 message.
    /// @param sender The address of sender.
    /// @param queueIndex The queue index of this message.
    /// @param value The amount of Ether transfer to target.
    /// @param target The address of target.
    /// @param gasLimit The gas limit provided.
    /// @param data The calldata passed to target address.
    function computeTransactionHash(
        address sender,
        uint256 queueIndex,
        uint256 value,
        address target,
        uint256 gasLimit,
        bytes calldata data
    ) external view returns (bytes32);

    /// @notice Return whether the message is skipped.
    /// @param queueIndex The queue index of the message to check.
    function isMessageSkipped(uint256 queueIndex) external view returns (bool);

    /// @notice Return whether the message is dropped.
    /// @param queueIndex The queue index of the message to check.
    function isMessageDropped(uint256 queueIndex) external view returns (bool);

    /*****************************
     * Public Mutating Functions *
     *****************************/

    /// @notice Append a L1 to L2 message into this contract.
    /// @param target The address of target contract to call in L2.
    /// @param gasLimit The maximum gas should be used for relay this message in L2.
    /// @param data The calldata passed to target contract.
    function appendCrossDomainMessage(
        address target,
        uint256 gasLimit,
        bytes calldata data
    ) external;

    /// @notice Append an enforced transaction to this contract.
    /// @dev The address of sender should be an EOA.
    /// @param sender The address of sender who will initiate this transaction in L2.
    /// @param target The address of target contract to call in L2.
    /// @param value The value passed
    /// @param gasLimit The maximum gas should be used for this transaction in L2.
    /// @param data The calldata passed to target contract.
    function appendEnforcedTransaction(
        address sender,
        address target,
        uint256 value,
        uint256 gasLimit,
        bytes calldata data
    ) external;

    /// @notice Pop finalized messages from queue.
    ///
    /// @dev We can pop at most 256 messages each time. And if the message is not skipped,
    ///      the corresponding entry will be cleared.
    ///
    /// @param startIndex The start index to pop.
    /// @param count The number of messages to pop.
    /// @param skippedBitmap A bitmap indicates whether a message is skipped.
    function popCrossDomainMessage(
        uint256 startIndex,
        uint256 count,
        uint256 skippedBitmap
    ) external;

    /// @notice Drop a skipped message from the queue.
    function dropCrossDomainMessage(uint256 index) external;
}

// ============================================================
// FILE: src/L1/rollup/IScrollChain.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

/// @title IScrollChain
/// @notice The interface for ScrollChain.
interface IScrollChain {
    /**********
     * Events *
     **********/

    /// @notice Emitted when a new batch is committed.
    /// @param batchIndex The index of the batch.
    /// @param batchHash The hash of the batch.
    event CommitBatch(uint256 indexed batchIndex, bytes32 indexed batchHash);

    /// @notice revert a pending batch.
    /// @param batchIndex The index of the batch.
    /// @param batchHash The hash of the batch
    event RevertBatch(uint256 indexed batchIndex, bytes32 indexed batchHash);

    /// @notice Emitted when a batch is finalized.
    /// @param batchIndex The index of the batch.
    /// @param batchHash The hash of the batch
    /// @param stateRoot The state root on layer 2 after this batch.
    /// @param withdrawRoot The merkle root on layer2 after this batch.
    event FinalizeBatch(uint256 indexed batchIndex, bytes32 indexed batchHash, bytes32 stateRoot, bytes32 withdrawRoot);

    /// @notice Emitted when owner updates the status of sequencer.
    /// @param account The address of account updated.
    /// @param status The status of the account updated.
    event UpdateSequencer(address indexed account, bool status);

    /// @notice Emitted when owner updates the status of prover.
    /// @param account The address of account updated.
    /// @param status The status of the account updated.
    event UpdateProver(address indexed account, bool status);

    /// @notice Emitted when the value of `maxNumTxInChunk` is updated.
    /// @param oldMaxNumTxInChunk The old value of `maxNumTxInChunk`.
    /// @param newMaxNumTxInChunk The new value of `maxNumTxInChunk`.
    event UpdateMaxNumTxInChunk(uint256 oldMaxNumTxInChunk, uint256 newMaxNumTxInChunk);

    /*************************
     * Public View Functions *
     *************************/

    /// @return The latest finalized batch index.
    function lastFinalizedBatchIndex() external view returns (uint256);

    /// @param batchIndex The index of the batch.
    /// @return The batch hash of a committed batch.
    function committedBatches(uint256 batchIndex) external view returns (bytes32);

    /// @param batchIndex The index of the batch.
    /// @return The state root of a committed batch.
    function finalizedStateRoots(uint256 batchIndex) external view returns (bytes32);

    /// @param batchIndex The index of the batch.
    /// @return The message root of a committed batch.
    function withdrawRoots(uint256 batchIndex) external view returns (bytes32);

    /// @param batchIndex The index of the batch.
    /// @return Whether the batch is finalized by batch index.
    function isBatchFinalized(uint256 batchIndex) external view returns (bool);

    /*****************************
     * Public Mutating Functions *
     *****************************/

    /// @notice Commit a batch of transactions on layer 1.
    ///
    /// @param version The version of current batch.
    /// @param parentBatchHeader The header of parent batch, see the comments of `BatchHeaderV0Codec`.
    /// @param chunks The list of encoded chunks, see the comments of `ChunkCodec`.
    /// @param skippedL1MessageBitmap The bitmap indicates whether each L1 message is skipped or not.
    function commitBatch(
        uint8 version,
        bytes calldata parentBatchHeader,
        bytes[] memory chunks,
        bytes calldata skippedL1MessageBitmap
    ) external;

    /// @notice Revert a pending batch.
    /// @dev one can only revert unfinalized batches.
    /// @param batchHeader The header of current batch, see the encoding in comments of `commitBatch`.
    /// @param count The number of subsequent batches to revert, including current batch.
    function revertBatch(bytes calldata batchHeader, uint256 count) external;

    /// @notice Finalize a committed batch on layer 1.
    /// @param batchHeader The header of current batch, see the encoding in comments of `commitBatch.
    /// @param prevStateRoot The state root of parent batch.
    /// @param postStateRoot The state root of current batch.
    /// @param withdrawRoot The withdraw trie root of current batch.
    /// @param aggrProof The aggregation proof for current batch.
    function finalizeBatchWithProof(
        bytes calldata batchHeader,
        bytes32 prevStateRoot,
        bytes32 postStateRoot,
        bytes32 withdrawRoot,
        bytes calldata aggrProof
    ) external;

    /// @notice Finalize a committed batch (with blob) on layer 1.
    ///
    /// @dev Memory layout of `blobDataProof`:
    /// |    z    |    y    | kzg_commitment | kzg_proof |
    /// |---------|---------|----------------|-----------|
    /// | bytes32 | bytes32 |    bytes48     |  bytes48  |
    ///
    /// @param batchHeader The header of current batch, see the encoding in comments of `commitBatch.
    /// @param prevStateRoot The state root of parent batch.
    /// @param postStateRoot The state root of current batch.
    /// @param withdrawRoot The withdraw trie root of current batch.
    /// @param blobDataProof The proof for blob data.
    /// @param aggrProof The aggregation proof for current batch.
    function finalizeBatchWithProof4844(
        bytes calldata batchHeader,
        bytes32 prevStateRoot,
        bytes32 postStateRoot,
        bytes32 withdrawRoot,
        bytes calldata blobDataProof,
        bytes calldata aggrProof
    ) external;
}

// ============================================================
// FILE: src/L1/rollup/ScrollChain.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity =0.8.24;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

import {IL1MessageQueue} from "./IL1MessageQueue.sol";
import {IScrollChain} from "./IScrollChain.sol";
import {BatchHeaderV0Codec} from "../../libraries/codec/BatchHeaderV0Codec.sol";
import {BatchHeaderV1Codec} from "../../libraries/codec/BatchHeaderV1Codec.sol";
import {ChunkCodecV0} from "../../libraries/codec/ChunkCodecV0.sol";
import {ChunkCodecV1} from "../../libraries/codec/ChunkCodecV1.sol";
import {IRollupVerifier} from "../../libraries/verifier/IRollupVerifier.sol";

// solhint-disable no-inline-assembly
// solhint-disable reason-string

/// @title ScrollChain
/// @notice This contract maintains data for the Scroll rollup.
contract ScrollChain is OwnableUpgradeable, PausableUpgradeable, IScrollChain {
    /**********
     * Errors *
     **********/

    /// @dev Thrown when the given account is not EOA account.
    error ErrorAccountIsNotEOA();

    /// @dev Thrown when committing a committed batch.
    error ErrorBatchIsAlreadyCommitted();

    /// @dev Thrown when finalizing a verified batch.
    error ErrorBatchIsAlreadyVerified();

    /// @dev Thrown when committing empty batch (batch without chunks)
    error ErrorBatchIsEmpty();

    /// @dev Thrown when call precompile failed.
    error ErrorCallPointEvaluationPrecompileFailed();

    /// @dev Thrown when the caller is not prover.
    error ErrorCallerIsNotProver();

    /// @dev Thrown when the caller is not sequencer.
    error ErrorCallerIsNotSequencer();

    /// @dev Thrown when the transaction has multiple blobs.
    error ErrorFoundMultipleBlob();

    /// @dev Thrown when some fields are not zero in genesis batch.
    error ErrorGenesisBatchHasNonZeroField();

    /// @dev Thrown when importing genesis batch twice.
    error ErrorGenesisBatchImported();

    /// @dev Thrown when data hash in genesis batch is zero.
    error ErrorGenesisDataHashIsZero();

    /// @dev Thrown when the parent batch hash in genesis batch is zero.
    error ErrorGenesisParentBatchHashIsNonZero();

    /// @dev Thrown when the l2 transaction is incomplete.
    error ErrorIncompleteL2TransactionData();

    /// @dev Thrown when the batch hash is incorrect.
    error ErrorIncorrectBatchHash();

    /// @dev Thrown when the batch index is incorrect.
    error ErrorIncorrectBatchIndex();

    /// @dev Thrown when the bitmap length is incorrect.
    error ErrorIncorrectBitmapLength();

    /// @dev Thrown when the previous state root doesn't match stored one.
    error ErrorIncorrectPreviousStateRoot();

    /// @dev Thrown when the last message is skipped.
    error ErrorLastL1MessageSkipped();

    /// @dev Thrown when no blob found in the transaction.
    error ErrorNoBlobFound();

    /// @dev Thrown when the number of transactions is less than number of L1 message in one block.
    error ErrorNumTxsLessThanNumL1Msgs();

    /// @dev Thrown when the given previous state is zero.
    error ErrorPreviousStateRootIsZero();

    /// @dev Thrown when the number of batches to revert is zero.
    error ErrorRevertZeroBatches();

    /// @dev Thrown when the reverted batches are not in the ending of commited batch chain.
    error ErrorRevertNotStartFromEnd();

    /// @dev Thrown when reverting a finialized batch.
    error ErrorRevertFinalizedBatch();

    /// @dev Thrown when the given state root is zero.
    error ErrorStateRootIsZero();

    /// @dev Thrown when a chunk contains too many transactions.
    error ErrorTooManyTxsInOneChunk();

    /// @dev Thrown when the precompile output is incorrect.
    error ErrorUnexpectedPointEvaluationPrecompileOutput();

    /// @dev Thrown when the given address is `address(0)`.
    error ErrorZeroAddress();

    /*************
     * Constants *
     *************/

    /// @dev Address of the point evaluation precompile used for EIP-4844 blob verification.
    address private constant POINT_EVALUATION_PRECOMPILE_ADDR = address(0x0A);

    /// @dev BLS Modulus value defined in EIP-4844 and the magic value returned from a successful call to the
    /// point evaluation precompile
    uint256 private constant BLS_MODULUS =
        52435875175126190479447740508185965837690552500527637822603658699938581184513;

    /// @notice The chain id of the corresponding layer 2 chain.
    uint64 public immutable layer2ChainId;

    /// @notice The address of L1MessageQueue contract.
    address public immutable messageQueue;

    /// @notice The address of RollupVerifier.
    address public immutable verifier;

    /*************
     * Variables *
     *************/

    /// @notice The maximum number of transactions allowed in each chunk.
    uint256 public maxNumTxInChunk;

    /// @dev The storage slot used as L1MessageQueue contract, which is deprecated now.
    address private __messageQueue;

    /// @dev The storage slot used as RollupVerifier contract, which is deprecated now.
    address private __verifier;

    /// @notice Whether an account is a sequencer.
    mapping(address => bool) public isSequencer;

    /// @notice Whether an account is a prover.
    mapping(address => bool) public isProver;

    /// @inheritdoc IScrollChain
    uint256 public override lastFinalizedBatchIndex;

    /// @inheritdoc IScrollChain
    mapping(uint256 => bytes32) public override committedBatches;

    /// @inheritdoc IScrollChain
    mapping(uint256 => bytes32) public override finalizedStateRoots;

    /// @inheritdoc IScrollChain
    mapping(uint256 => bytes32) public override withdrawRoots;

    /**********************
     * Function Modifiers *
     **********************/

    modifier OnlySequencer() {
        // @note In the decentralized mode, it should be only called by a list of validator.
        if (!isSequencer[_msgSender()]) revert ErrorCallerIsNotSequencer();
        _;
    }

    modifier OnlyProver() {
        if (!isProver[_msgSender()]) revert ErrorCallerIsNotProver();
        _;
    }

    /***************
     * Constructor *
     ***************/

    /// @notice Constructor for `ScrollChain` implementation contract.
    ///
    /// @param _chainId The chain id of L2.
    /// @param _messageQueue The address of `L1MessageQueue` contract.
    /// @param _verifier The address of zkevm verifier contract.
    constructor(
        uint64 _chainId,
        address _messageQueue,
        address _verifier
    ) {
        if (_messageQueue == address(0) || _verifier == address(0)) {
            revert ErrorZeroAddress();
        }

        _disableInitializers();

        layer2ChainId = _chainId;
        messageQueue = _messageQueue;
        verifier = _verifier;
    }

    /// @notice Initialize the storage of ScrollChain.
    ///
    /// @dev The parameters `_messageQueue` are no longer used.
    ///
    /// @param _messageQueue The address of `L1MessageQueue` contract.
    /// @param _verifier The address of zkevm verifier contract.
    /// @param _maxNumTxInChunk The maximum number of transactions allowed in each chunk.
    function initialize(
        address _messageQueue,
        address _verifier,
        uint256 _maxNumTxInChunk
    ) public initializer {
        OwnableUpgradeable.__Ownable_init();

        maxNumTxInChunk = _maxNumTxInChunk;
        __verifier = _verifier;
        __messageQueue = _messageQueue;

        emit UpdateMaxNumTxInChunk(0, _maxNumTxInChunk);
    }

    /*************************
     * Public View Functions *
     *************************/

    /// @inheritdoc IScrollChain
    function isBatchFinalized(uint256 _batchIndex) external view override returns (bool) {
        return _batchIndex <= lastFinalizedBatchIndex;
    }

    /*****************************
     * Public Mutating Functions *
     *****************************/

    /// @notice Import layer 2 genesis block
    /// @param _batchHeader The header of the genesis batch.
    /// @param _stateRoot The state root of the genesis block.
    function importGenesisBatch(bytes calldata _batchHeader, bytes32 _stateRoot) external {
        // check genesis batch header length
        if (_stateRoot == bytes32(0)) revert ErrorStateRootIsZero();

        // check whether the genesis batch is imported
        if (finalizedStateRoots[0] != bytes32(0)) revert ErrorGenesisBatchImported();

        (uint256 memPtr, bytes32 _batchHash, , ) = _loadBatchHeader(_batchHeader);

        // check all fields except `dataHash` and `lastBlockHash` are zero
        unchecked {
            uint256 sum = BatchHeaderV0Codec.getVersion(memPtr) +
                BatchHeaderV0Codec.getBatchIndex(memPtr) +
                BatchHeaderV0Codec.getL1MessagePopped(memPtr) +
                BatchHeaderV0Codec.getTotalL1MessagePopped(memPtr);
            if (sum != 0) revert ErrorGenesisBatchHasNonZeroField();
        }
        if (BatchHeaderV0Codec.getDataHash(memPtr) == bytes32(0)) revert ErrorGenesisDataHashIsZero();
        if (BatchHeaderV0Codec.getParentBatchHash(memPtr) != bytes32(0)) revert ErrorGenesisParentBatchHashIsNonZero();

        committedBatches[0] = _batchHash;
        finalizedStateRoots[0] = _stateRoot;

        emit CommitBatch(0, _batchHash);
        emit FinalizeBatch(0, _batchHash, _stateRoot, bytes32(0));
    }

    /// @inheritdoc IScrollChain
    function commitBatch(
        uint8 _version,
        bytes calldata _parentBatchHeader,
        bytes[] memory _chunks,
        bytes calldata _skippedL1MessageBitmap
    ) external override OnlySequencer whenNotPaused {
        // check whether the batch is empty
        if (_chunks.length == 0) revert ErrorBatchIsEmpty();

        (, bytes32 _parentBatchHash, uint256 _batchIndex, uint256 _totalL1MessagesPoppedOverall) = _loadBatchHeader(
            _parentBatchHeader
        );
        unchecked {
            _batchIndex += 1;
        }
        if (committedBatches[_batchIndex] != 0) revert ErrorBatchIsAlreadyCommitted();

        bytes32 _batchHash;
        uint256 batchPtr;
        bytes32 _dataHash;
        uint256 _totalL1MessagesPoppedInBatch;
        if (_version == 0) {
            (_dataHash, _totalL1MessagesPoppedInBatch) = _commitChunksV0(
                _totalL1MessagesPoppedOverall,
                _chunks,
                _skippedL1MessageBitmap
            );
            assembly {
                batchPtr := mload(0x40)
                _totalL1MessagesPoppedOverall := add(_totalL1MessagesPoppedOverall, _totalL1MessagesPoppedInBatch)
            }
            // store entries, the order matters
            BatchHeaderV0Codec.storeVersion(batchPtr, 0);
            BatchHeaderV0Codec.storeBatchIndex(batchPtr, _batchIndex);
            BatchHeaderV0Codec.storeL1MessagePopped(batchPtr, _totalL1MessagesPoppedInBatch);
            BatchHeaderV0Codec.storeTotalL1MessagePopped(batchPtr, _totalL1MessagesPoppedOverall);
            BatchHeaderV0Codec.storeDataHash(batchPtr, _dataHash);
            BatchHeaderV0Codec.storeParentBatchHash(batchPtr, _parentBatchHash);
            BatchHeaderV0Codec.storeSkippedBitmap(batchPtr, _skippedL1MessageBitmap);
            // compute batch hash
            _batchHash = BatchHeaderV0Codec.computeBatchHash(
                batchPtr,
                BatchHeaderV0Codec.BATCH_HEADER_FIXED_LENGTH + _skippedL1MessageBitmap.length
            );
        } else if (_version >= 1) {
            // versions 1 and 2 both use ChunkCodecV1 and BatchHeaderV1Codec,
            // but they use different blob encoding and different verifiers.

            bytes32 blobVersionedHash;
            (blobVersionedHash, _dataHash, _totalL1MessagesPoppedInBatch) = _commitChunksV1(
                _totalL1MessagesPoppedOverall,
                _chunks,
                _skippedL1MessageBitmap
            );
            assembly {
                batchPtr := mload(0x40)
                _totalL1MessagesPoppedOverall := add(_totalL1MessagesPoppedOverall, _totalL1MessagesPoppedInBatch)
            }
            // store entries, the order matters
            BatchHeaderV1Codec.storeVersion(batchPtr, _version);
            BatchHeaderV1Codec.storeBatchIndex(batchPtr, _batchIndex);
            BatchHeaderV1Codec.storeL1MessagePopped(batchPtr, _totalL1MessagesPoppedInBatch);
            BatchHeaderV1Codec.storeTotalL1MessagePopped(batchPtr, _totalL1MessagesPoppedOverall);
            BatchHeaderV1Codec.storeDataHash(batchPtr, _dataHash);
            BatchHeaderV1Codec.storeBlobVersionedHash(batchPtr, blobVersionedHash);
            BatchHeaderV1Codec.storeParentBatchHash(batchPtr, _parentBatchHash);
            BatchHeaderV1Codec.storeSkippedBitmap(batchPtr, _skippedL1MessageBitmap);
            // compute batch hash
            _batchHash = BatchHeaderV1Codec.computeBatchHash(
                batchPtr,
                BatchHeaderV1Codec.BATCH_HEADER_FIXED_LENGTH + _skippedL1MessageBitmap.length
            );
        }

        // check the length of bitmap
        unchecked {
            if (((_totalL1MessagesPoppedInBatch + 255) / 256) * 32 != _skippedL1MessageBitmap.length) {
                revert ErrorIncorrectBitmapLength();
            }
        }

        committedBatches[_batchIndex] = _batchHash;
        emit CommitBatch(_batchIndex, _batchHash);
    }

    /// @inheritdoc IScrollChain
    /// @dev If the owner want to revert a sequence of batches by sending multiple transactions,
    ///      make sure to revert recent batches first.
    function revertBatch(bytes calldata _batchHeader, uint256 _count) external onlyOwner {
        if (_count == 0) revert ErrorRevertZeroBatches();

        (, bytes32 _batchHash, uint256 _batchIndex, ) = _loadBatchHeader(_batchHeader);
        // make sure no gap is left when reverting from the ending to the beginning.
        if (committedBatches[_batchIndex + _count] != bytes32(0)) revert ErrorRevertNotStartFromEnd();

        // check finalization
        if (_batchIndex <= lastFinalizedBatchIndex) revert ErrorRevertFinalizedBatch();

        while (_count > 0) {
            committedBatches[_batchIndex] = bytes32(0);

            emit RevertBatch(_batchIndex, _batchHash);

            unchecked {
                _batchIndex += 1;
                _count -= 1;
            }

            _batchHash = committedBatches[_batchIndex];
            if (_batchHash == bytes32(0)) break;
        }
    }

    /// @inheritdoc IScrollChain
    /// @dev We keep this function to upgrade to 4844 more smoothly.
    function finalizeBatchWithProof(
        bytes calldata _batchHeader,
        bytes32 _prevStateRoot,
        bytes32 _postStateRoot,
        bytes32 _withdrawRoot,
        bytes calldata _aggrProof
    ) external override OnlyProver whenNotPaused {
        if (_prevStateRoot == bytes32(0)) revert ErrorPreviousStateRootIsZero();
        if (_postStateRoot == bytes32(0)) revert ErrorStateRootIsZero();

        // compute batch hash and verify
        (uint256 memPtr, bytes32 _batchHash, uint256 _batchIndex, ) = _loadBatchHeader(_batchHeader);
        bytes32 _dataHash = BatchHeaderV0Codec.getDataHash(memPtr);

        // verify previous state root.
        if (finalizedStateRoots[_batchIndex - 1] != _prevStateRoot) revert ErrorIncorrectPreviousStateRoot();

        // avoid duplicated verification
        if (finalizedStateRoots[_batchIndex] != bytes32(0)) revert ErrorBatchIsAlreadyVerified();

        // compute public input hash
        bytes32 _publicInputHash = keccak256(
            abi.encodePacked(layer2ChainId, _prevStateRoot, _postStateRoot, _withdrawRoot, _dataHash)
        );

        // verify batch
        IRollupVerifier(verifier).verifyAggregateProof(0, _batchIndex, _aggrProof, _publicInputHash);

        // check and update lastFinalizedBatchIndex
        unchecked {
            if (lastFinalizedBatchIndex + 1 != _batchIndex) revert ErrorIncorrectBatchIndex();
            lastFinalizedBatchIndex = _batchIndex;
        }

        // record state root and withdraw root
        finalizedStateRoots[_batchIndex] = _postStateRoot;
        withdrawRoots[_batchIndex] = _withdrawRoot;

        // Pop finalized and non-skipped message from L1MessageQueue.
        _popL1Messages(
            BatchHeaderV0Codec.getSkippedBitmapPtr(memPtr),
            BatchHeaderV0Codec.getTotalL1MessagePopped(memPtr),
            BatchHeaderV0Codec.getL1MessagePopped(memPtr)
        );

        emit FinalizeBatch(_batchIndex, _batchHash, _postStateRoot, _withdrawRoot);
    }

    /// @inheritdoc IScrollChain
    /// @dev Memory layout of `_blobDataProof`:
    /// ```text
    /// | z       | y       | kzg_commitment | kzg_proof |
    /// |---------|---------|----------------|-----------|
    /// | bytes32 | bytes32 | bytes48        | bytes48   |
    /// ```
    function finalizeBatchWithProof4844(
        bytes calldata _batchHeader,
        bytes32 _prevStateRoot,
        bytes32 _postStateRoot,
        bytes32 _withdrawRoot,
        bytes calldata _blobDataProof,
        bytes calldata _aggrProof
    ) external override OnlyProver whenNotPaused {
        if (_prevStateRoot == bytes32(0)) revert ErrorPreviousStateRootIsZero();
        if (_postStateRoot == bytes32(0)) revert ErrorStateRootIsZero();

        // compute batch hash and verify
        (uint256 memPtr, bytes32 _batchHash, uint256 _batchIndex, ) = _loadBatchHeader(_batchHeader);
        bytes32 _dataHash = BatchHeaderV1Codec.getDataHash(memPtr);
        bytes32 _blobVersionedHash = BatchHeaderV1Codec.getBlobVersionedHash(memPtr);

        // Calls the point evaluation precompile and verifies the output
        {
            (bool success, bytes memory data) = POINT_EVALUATION_PRECOMPILE_ADDR.staticcall(
                abi.encodePacked(_blobVersionedHash, _blobDataProof)
            );
            // We verify that the point evaluation precompile call was successful by testing the latter 32 bytes of the
            // response is equal to BLS_MODULUS as defined in https://eips.ethereum.org/EIPS/eip-4844#point-evaluation-precompile
            if (!success) revert ErrorCallPointEvaluationPrecompileFailed();
            (, uint256 result) = abi.decode(data, (uint256, uint256));
            if (result != BLS_MODULUS) revert ErrorUnexpectedPointEvaluationPrecompileOutput();
        }

        // verify previous state root.
        if (finalizedStateRoots[_batchIndex - 1] != _prevStateRoot) revert ErrorIncorrectPreviousStateRoot();

        // avoid duplicated verification
        if (finalizedStateRoots[_batchIndex] != bytes32(0)) revert ErrorBatchIsAlreadyVerified();

        // compute public input hash
        bytes32 _publicInputHash = keccak256(
            abi.encodePacked(
                layer2ChainId,
                _prevStateRoot,
                _postStateRoot,
                _withdrawRoot,
                _dataHash,
                _blobDataProof[0:64],
                _blobVersionedHash
            )
        );

        // load version from batch header, it is always the first byte.
        uint256 batchVersion;
        assembly {
            batchVersion := shr(248, calldataload(_batchHeader.offset))
        }
        // verify batch
        IRollupVerifier(verifier).verifyAggregateProof(batchVersion, _batchIndex, _aggrProof, _publicInputHash);

        // check and update lastFinalizedBatchIndex
        unchecked {
            if (lastFinalizedBatchIndex + 1 != _batchIndex) revert ErrorIncorrectBatchIndex();
            lastFinalizedBatchIndex = _batchIndex;
        }

        // record state root and withdraw root
        finalizedStateRoots[_batchIndex] = _postStateRoot;
        withdrawRoots[_batchIndex] = _withdrawRoot;

        // Pop finalized and non-skipped message from L1MessageQueue.
        _popL1Messages(
            BatchHeaderV1Codec.getSkippedBitmapPtr(memPtr),
            BatchHeaderV1Codec.getTotalL1MessagePopped(memPtr),
            BatchHeaderV1Codec.getL1MessagePopped(memPtr)
        );

        emit FinalizeBatch(_batchIndex, _batchHash, _postStateRoot, _withdrawRoot);
    }

    /************************
     * Restricted Functions *
     ************************/

    /// @notice Add an account to the sequencer list.
    /// @param _account The address of account to add.
    function addSequencer(address _account) external onlyOwner {
        // @note Currently many external services rely on EOA sequencer to decode metadata directly from tx.calldata.
        // So we explicitly make sure the account is EOA.
        if (_account.code.length > 0) revert ErrorAccountIsNotEOA();

        isSequencer[_account] = true;

        emit UpdateSequencer(_account, true);
    }

    /// @notice Remove an account from the sequencer list.
    /// @param _account The address of account to remove.
    function removeSequencer(address _account) external onlyOwner {
        isSequencer[_account] = false;

        emit UpdateSequencer(_account, false);
    }

    /// @notice Add an account to the prover list.
    /// @param _account The address of account to add.
    function addProver(address _account) external onlyOwner {
        // @note Currently many external services rely on EOA prover to decode metadata directly from tx.calldata.
        // So we explicitly make sure the account is EOA.
        if (_account.code.length > 0) revert ErrorAccountIsNotEOA();
        isProver[_account] = true;

        emit UpdateProver(_account, true);
    }

    /// @notice Add an account from the prover list.
    /// @param _account The address of account to remove.
    function removeProver(address _account) external onlyOwner {
        isProver[_account] = false;

        emit UpdateProver(_account, false);
    }

    /// @notice Update the value of `maxNumTxInChunk`.
    /// @param _maxNumTxInChunk The new value of `maxNumTxInChunk`.
    function updateMaxNumTxInChunk(uint256 _maxNumTxInChunk) external onlyOwner {
        uint256 _oldMaxNumTxInChunk = maxNumTxInChunk;
        maxNumTxInChunk = _maxNumTxInChunk;

        emit UpdateMaxNumTxInChunk(_oldMaxNumTxInChunk, _maxNumTxInChunk);
    }

    /// @notice Pause the contract
    /// @param _status The pause status to update.
    function setPause(bool _status) external onlyOwner {
        if (_status) {
            _pause();
        } else {
            _unpause();
        }
    }

    /**********************
     * Internal Functions *
     **********************/

    /// @dev Internal function to commit chunks with version 0
    /// @param _totalL1MessagesPoppedOverall The number of L1 messages popped before the list of chunks.
    /// @param _chunks The list of chunks to commit.
    /// @param _skippedL1MessageBitmap The bitmap indicates whether each L1 message is skipped or not.
    /// @return _batchDataHash The computed data hash for the list of chunks.
    /// @return _totalL1MessagesPoppedInBatch The total number of L1 messages poped in this batch, including skipped one.
    function _commitChunksV0(
        uint256 _totalL1MessagesPoppedOverall,
        bytes[] memory _chunks,
        bytes calldata _skippedL1MessageBitmap
    ) internal view returns (bytes32 _batchDataHash, uint256 _totalL1MessagesPoppedInBatch) {
        uint256 _chunksLength = _chunks.length;

        // load `batchDataHashPtr` and reserve the memory region for chunk data hashes
        uint256 batchDataHashPtr;
        assembly {
            batchDataHashPtr := mload(0x40)
            mstore(0x40, add(batchDataHashPtr, mul(_chunksLength, 32)))
        }

        // compute the data hash for each chunk
        for (uint256 i = 0; i < _chunksLength; i++) {
            uint256 _totalNumL1MessagesInChunk;
            bytes32 _chunkDataHash;
            (_chunkDataHash, _totalNumL1MessagesInChunk) = _commitChunkV0(
                _chunks[i],
                _totalL1MessagesPoppedInBatch,
                _totalL1MessagesPoppedOverall,
                _skippedL1MessageBitmap
            );
            unchecked {
                _totalL1MessagesPoppedInBatch += _totalNumL1MessagesInChunk;
                _totalL1MessagesPoppedOverall += _totalNumL1MessagesInChunk;
            }
            assembly {
                mstore(batchDataHashPtr, _chunkDataHash)
                batchDataHashPtr := add(batchDataHashPtr, 0x20)
            }
        }

        assembly {
            let dataLen := mul(_chunksLength, 0x20)
            _batchDataHash := keccak256(sub(batchDataHashPtr, dataLen), dataLen)
        }
    }

    /// @dev Internal function to commit chunks with version 1
    /// @param _totalL1MessagesPoppedOverall The number of L1 messages popped before the list of chunks.
    /// @param _chunks The list of chunks to commit.
    /// @param _skippedL1MessageBitmap The bitmap indicates whether each L1 message is skipped or not.
    /// @return _blobVersionedHash The blob versioned hash for the blob carried in this transaction.
    /// @return _batchDataHash The computed data hash for the list of chunks.
    /// @return _totalL1MessagesPoppedInBatch The total number of L1 messages poped in this batch, including skipped one.
    function _commitChunksV1(
        uint256 _totalL1MessagesPoppedOverall,
        bytes[] memory _chunks,
        bytes calldata _skippedL1MessageBitmap
    )
        internal
        view
        returns (
            bytes32 _blobVersionedHash,
            bytes32 _batchDataHash,
            uint256 _totalL1MessagesPoppedInBatch
        )
    {
        {
            bytes32 _secondBlob;
            // Get blob's versioned hash
            assembly {
                _blobVersionedHash := blobhash(0)
                _secondBlob := blobhash(1)
            }
            if (_blobVersionedHash == bytes32(0)) revert ErrorNoBlobFound();
            if (_secondBlob != bytes32(0)) revert ErrorFoundMultipleBlob();
        }

        uint256 _chunksLength = _chunks.length;

        // load `batchDataHashPtr` and reserve the memory region for chunk data hashes
        uint256 batchDataHashPtr;
        assembly {
            batchDataHashPtr := mload(0x40)
            mstore(0x40, add(batchDataHashPtr, mul(_chunksLength, 32)))
        }

        // compute the data hash for each chunk
        for (uint256 i = 0; i < _chunksLength; i++) {
            uint256 _totalNumL1MessagesInChunk;
            bytes32 _chunkDataHash;
            (_chunkDataHash, _totalNumL1MessagesInChunk) = _commitChunkV1(
                _chunks[i],
                _totalL1MessagesPoppedInBatch,
                _totalL1MessagesPoppedOverall,
                _skippedL1MessageBitmap
            );
            unchecked {
                _totalL1MessagesPoppedInBatch += _totalNumL1MessagesInChunk;
                _totalL1MessagesPoppedOverall += _totalNumL1MessagesInChunk;
            }
            assembly {
                mstore(batchDataHashPtr, _chunkDataHash)
                batchDataHashPtr := add(batchDataHashPtr, 0x20)
            }
        }

        // compute the data hash for current batch
        assembly {
            let dataLen := mul(_chunksLength, 0x20)
            _batchDataHash := keccak256(sub(batchDataHashPtr, dataLen), dataLen)
        }
    }

    /// @dev Internal function to load batch header from calldata to memory.
    /// @param _batchHeader The batch header in calldata.
    /// @return batchPtr The start memory offset of loaded batch header.
    /// @return _batchHash The hash of the loaded batch header.
    /// @return _batchIndex The index of this batch.
    /// @param _totalL1MessagesPoppedOverall The number of L1 messages popped after this batch.
    function _loadBatchHeader(bytes calldata _batchHeader)
        internal
        view
        returns (
            uint256 batchPtr,
            bytes32 _batchHash,
            uint256 _batchIndex,
            uint256 _totalL1MessagesPoppedOverall
        )
    {
        // load version from batch header, it is always the first byte.
        uint256 version;
        assembly {
            version := shr(248, calldataload(_batchHeader.offset))
        }

        uint256 _length;
        if (version == 0) {
            (batchPtr, _length) = BatchHeaderV0Codec.loadAndValidate(_batchHeader);
            _batchHash = BatchHeaderV0Codec.computeBatchHash(batchPtr, _length);
            _batchIndex = BatchHeaderV0Codec.getBatchIndex(batchPtr);
        } else if (version >= 1) {
            (batchPtr, _length) = BatchHeaderV1Codec.loadAndValidate(_batchHeader);
            _batchHash = BatchHeaderV1Codec.computeBatchHash(batchPtr, _length);
            _batchIndex = BatchHeaderV1Codec.getBatchIndex(batchPtr);
        }
        // only check when genesis is imported
        if (committedBatches[_batchIndex] != _batchHash && finalizedStateRoots[0] != bytes32(0)) {
            revert ErrorIncorrectBatchHash();
        }
        _totalL1MessagesPoppedOverall = BatchHeaderV0Codec.getTotalL1MessagePopped(batchPtr);
    }

    /// @dev Internal function to commit a chunk with version 0.
    /// @param _chunk The encoded chunk to commit.
    /// @param _totalL1MessagesPoppedInBatch The total number of L1 messages popped in the current batch before this chunk.
    /// @param _totalL1MessagesPoppedOverall The total number of L1 messages popped in all batches including the current batch, before this chunk.
    /// @param _skippedL1MessageBitmap The bitmap indicates whether each L1 message is skipped or not.
    /// @return _dataHash The computed data hash for this chunk.
    /// @return _totalNumL1MessagesInChunk The total number of L1 message popped in current chunk
    function _commitChunkV0(
        bytes memory _chunk,
        uint256 _totalL1MessagesPoppedInBatch,
        uint256 _totalL1MessagesPoppedOverall,
        bytes calldata _skippedL1MessageBitmap
    ) internal view returns (bytes32 _dataHash, uint256 _totalNumL1MessagesInChunk) {
        uint256 chunkPtr;
        uint256 startDataPtr;
        uint256 dataPtr;

        assembly {
            dataPtr := mload(0x40)
            startDataPtr := dataPtr
            chunkPtr := add(_chunk, 0x20) // skip chunkLength
        }

        uint256 _numBlocks = ChunkCodecV0.validateChunkLength(chunkPtr, _chunk.length);

        // concatenate block contexts, use scope to avoid stack too deep
        {
            uint256 _totalTransactionsInChunk;
            for (uint256 i = 0; i < _numBlocks; i++) {
                dataPtr = ChunkCodecV0.copyBlockContext(chunkPtr, dataPtr, i);
                uint256 blockPtr = chunkPtr + 1 + i * ChunkCodecV0.BLOCK_CONTEXT_LENGTH;
                uint256 _numTransactionsInBlock = ChunkCodecV0.getNumTransactions(blockPtr);
                unchecked {
                    _totalTransactionsInChunk += _numTransactionsInBlock;
                }
            }
            assembly {
                mstore(0x40, add(dataPtr, mul(_totalTransactionsInChunk, 0x20))) // reserve memory for tx hashes
            }
        }

        // It is used to compute the actual number of transactions in chunk.
        uint256 txHashStartDataPtr = dataPtr;
        // concatenate tx hashes
        uint256 l2TxPtr = ChunkCodecV0.getL2TxPtr(chunkPtr, _numBlocks);
        chunkPtr += 1;
        while (_numBlocks > 0) {
            // concatenate l1 message hashes
            uint256 _numL1MessagesInBlock = ChunkCodecV0.getNumL1Messages(chunkPtr);
            dataPtr = _loadL1MessageHashes(
                dataPtr,
                _numL1MessagesInBlock,
                _totalL1MessagesPoppedInBatch,
                _totalL1MessagesPoppedOverall,
                _skippedL1MessageBitmap
            );

            // concatenate l2 transaction hashes
            uint256 _numTransactionsInBlock = ChunkCodecV0.getNumTransactions(chunkPtr);
            if (_numTransactionsInBlock < _numL1MessagesInBlock) revert ErrorNumTxsLessThanNumL1Msgs();
            for (uint256 j = _numL1MessagesInBlock; j < _numTransactionsInBlock; j++) {
                bytes32 txHash;
                (txHash, l2TxPtr) = ChunkCodecV0.loadL2TxHash(l2TxPtr);
                assembly {
                    mstore(dataPtr, txHash)
                    dataPtr := add(dataPtr, 0x20)
                }
            }

            unchecked {
                _totalNumL1MessagesInChunk += _numL1MessagesInBlock;
                _totalL1MessagesPoppedInBatch += _numL1MessagesInBlock;
                _totalL1MessagesPoppedOverall += _numL1MessagesInBlock;

                _numBlocks -= 1;
                chunkPtr += ChunkCodecV0.BLOCK_CONTEXT_LENGTH;
            }
        }

        // check the actual number of transactions in the chunk
        if ((dataPtr - txHashStartDataPtr) / 32 > maxNumTxInChunk) revert ErrorTooManyTxsInOneChunk();

        assembly {
            chunkPtr := add(_chunk, 0x20)
        }
        // check chunk has correct length
        if (l2TxPtr - chunkPtr != _chunk.length) revert ErrorIncompleteL2TransactionData();

        // compute data hash and store to memory
        assembly {
            _dataHash := keccak256(startDataPtr, sub(dataPtr, startDataPtr))
        }
    }

    /// @dev Internal function to commit a chunk with version 1.
    /// @param _chunk The encoded chunk to commit.
    /// @param _totalL1MessagesPoppedInBatch The total number of L1 messages popped in current batch.
    /// @param _totalL1MessagesPoppedOverall The total number of L1 messages popped in all batches including current batch.
    /// @param _skippedL1MessageBitmap The bitmap indicates whether each L1 message is skipped or not.
    /// @return _dataHash The computed data hash for this chunk.
    /// @return _totalNumL1MessagesInChunk The total number of L1 message popped in current chunk
    function _commitChunkV1(
        bytes memory _chunk,
        uint256 _totalL1MessagesPoppedInBatch,
        uint256 _totalL1MessagesPoppedOverall,
        bytes calldata _skippedL1MessageBitmap
    ) internal view returns (bytes32 _dataHash, uint256 _totalNumL1MessagesInChunk) {
        uint256 chunkPtr;
        uint256 startDataPtr;
        uint256 dataPtr;

        assembly {
            dataPtr := mload(0x40)
            startDataPtr := dataPtr
            chunkPtr := add(_chunk, 0x20) // skip chunkLength
        }

        uint256 _numBlocks = ChunkCodecV1.validateChunkLength(chunkPtr, _chunk.length);
        // concatenate block contexts, use scope to avoid stack too deep
        for (uint256 i = 0; i < _numBlocks; i++) {
            dataPtr = ChunkCodecV1.copyBlockContext(chunkPtr, dataPtr, i);
            uint256 blockPtr = chunkPtr + 1 + i * ChunkCodecV1.BLOCK_CONTEXT_LENGTH;
            uint256 _numL1MessagesInBlock = ChunkCodecV1.getNumL1Messages(blockPtr);
            unchecked {
                _totalNumL1MessagesInChunk += _numL1MessagesInBlock;
            }
        }
        assembly {
            mstore(0x40, add(dataPtr, mul(_totalNumL1MessagesInChunk, 0x20))) // reserve memory for l1 message hashes
            chunkPtr := add(chunkPtr, 1)
        }

        // the number of actual transactions in one chunk: non-skipped l1 messages + l2 txs
        uint256 _totalTransactionsInChunk;
        // concatenate tx hashes
        while (_numBlocks > 0) {
            // concatenate l1 message hashes
            uint256 _numL1MessagesInBlock = ChunkCodecV1.getNumL1Messages(chunkPtr);
            uint256 startPtr = dataPtr;
            dataPtr = _loadL1MessageHashes(
                dataPtr,
                _numL1MessagesInBlock,
                _totalL1MessagesPoppedInBatch,
                _totalL1MessagesPoppedOverall,
                _skippedL1MessageBitmap
            );
            uint256 _numTransactionsInBlock = ChunkCodecV1.getNumTransactions(chunkPtr);
            if (_numTransactionsInBlock < _numL1MessagesInBlock) revert ErrorNumTxsLessThanNumL1Msgs();
            unchecked {
                _totalTransactionsInChunk += (dataPtr - startPtr) / 32; // number of non-skipped l1 messages
                _totalTransactionsInChunk += _numTransactionsInBlock - _numL1MessagesInBlock; // number of l2 txs
                _totalL1MessagesPoppedInBatch += _numL1MessagesInBlock;
                _totalL1MessagesPoppedOverall += _numL1MessagesInBlock;

                _numBlocks -= 1;
                chunkPtr += ChunkCodecV1.BLOCK_CONTEXT_LENGTH;
            }
        }

        // check the actual number of transactions in the chunk
        if (_totalTransactionsInChunk > maxNumTxInChunk) {
            revert ErrorTooManyTxsInOneChunk();
        }

        // compute data hash and store to memory
        assembly {
            _dataHash := keccak256(startDataPtr, sub(dataPtr, startDataPtr))
        }
    }

    /// @dev Internal function to load L1 message hashes from the message queue.
    /// @param _ptr The memory offset to store the transaction hash.
    /// @param _numL1Messages The number of L1 messages to load.
    /// @param _totalL1MessagesPoppedInBatch The total number of L1 messages popped in current batch.
    /// @param _totalL1MessagesPoppedOverall The total number of L1 messages popped in all batches including current batch.
    /// @param _skippedL1MessageBitmap The bitmap indicates whether each L1 message is skipped or not.
    /// @return uint256 The new memory offset after loading.
    function _loadL1MessageHashes(
        uint256 _ptr,
        uint256 _numL1Messages,
        uint256 _totalL1MessagesPoppedInBatch,
        uint256 _totalL1MessagesPoppedOverall,
        bytes calldata _skippedL1MessageBitmap
    ) internal view returns (uint256) {
        if (_numL1Messages == 0) return _ptr;
        IL1MessageQueue _messageQueue = IL1MessageQueue(messageQueue);

        unchecked {
            uint256 _bitmap;
            uint256 rem;
            for (uint256 i = 0; i < _numL1Messages; i++) {
                uint256 quo = _totalL1MessagesPoppedInBatch >> 8;
                rem = _totalL1MessagesPoppedInBatch & 0xff;

                // load bitmap every 256 bits
                if (i == 0 || rem == 0) {
                    assembly {
                        _bitmap := calldataload(add(_skippedL1MessageBitmap.offset, mul(0x20, quo)))
                    }
                }
                if (((_bitmap >> rem) & 1) == 0) {
                    // message not skipped
                    bytes32 _hash = _messageQueue.getCrossDomainMessage(_totalL1MessagesPoppedOverall);
                    assembly {
                        mstore(_ptr, _hash)
                        _ptr := add(_ptr, 0x20)
                    }
                }

                _totalL1MessagesPoppedInBatch += 1;
                _totalL1MessagesPoppedOverall += 1;
            }

            // check last L1 message is not skipped, _totalL1MessagesPoppedInBatch must > 0
            rem = (_totalL1MessagesPoppedInBatch - 1) & 0xff;
            if (((_bitmap >> rem) & 1) > 0) revert ErrorLastL1MessageSkipped();
        }

        return _ptr;
    }

    /// @dev Internal function to pop finalized l1 messages.
    /// @param bitmapPtr The memory offset of `skippedL1MessageBitmap`.
    /// @param totalL1MessagePopped The total number of L1 messages poped in all batches including current batch.
    /// @param l1MessagePopped The number of L1 messages popped in current batch.
    function _popL1Messages(
        uint256 bitmapPtr,
        uint256 totalL1MessagePopped,
        uint256 l1MessagePopped
    ) internal {
        if (l1MessagePopped == 0) return;

        unchecked {
            uint256 startIndex = totalL1MessagePopped - l1MessagePopped;
            uint256 bitmap;

            for (uint256 i = 0; i < l1MessagePopped; i += 256) {
                uint256 _count = 256;
                if (l1MessagePopped - i < _count) {
                    _count = l1MessagePopped - i;
                }
                assembly {
                    bitmap := mload(bitmapPtr)
                    bitmapPtr := add(bitmapPtr, 0x20)
                }
                IL1MessageQueue(messageQueue).popCrossDomainMessage(startIndex, _count, bitmap);
                startIndex += 256;
            }
        }
    }
}

// ============================================================
// FILE: src/libraries/codec/BatchHeaderV0Codec.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

// solhint-disable no-inline-assembly

/// @dev Below is the encoding for `BatchHeader` V0, total 89 + ceil(l1MessagePopped / 256) * 32 bytes.
/// ```text
///   * Field                   Bytes       Type        Index   Comments
///   * version                 1           uint8       0       The batch version
///   * batchIndex              8           uint64      1       The index of the batch
///   * l1MessagePopped         8           uint64      9       Number of L1 messages popped in the batch
///   * totalL1MessagePopped    8           uint64      17      Number of total L1 messages popped after the batch
///   * dataHash                32          bytes32     25      The data hash of the batch
///   * parentBatchHash         32          bytes32     57      The parent batch hash
///   * skippedL1MessageBitmap  dynamic     uint256[]   89      A bitmap to indicate which L1 messages are skipped in the batch
/// ```
library BatchHeaderV0Codec {
    /// @dev Thrown when the length of batch header is smaller than 89
    error ErrorBatchHeaderLengthTooSmall();

    /// @dev Thrown when the length of skippedL1MessageBitmap is incorrect.
    error ErrorIncorrectBitmapLength();

    /// @dev The length of fixed parts of the batch header.
    uint256 internal constant BATCH_HEADER_FIXED_LENGTH = 89;

    /// @notice Load batch header in calldata to memory.
    /// @param _batchHeader The encoded batch header bytes in calldata.
    /// @return batchPtr The start memory offset of the batch header in memory.
    /// @return length The length in bytes of the batch header.
    function loadAndValidate(bytes calldata _batchHeader) internal pure returns (uint256 batchPtr, uint256 length) {
        length = _batchHeader.length;
        if (length < BATCH_HEADER_FIXED_LENGTH) revert ErrorBatchHeaderLengthTooSmall();

        // copy batch header to memory.
        assembly {
            batchPtr := mload(0x40)
            calldatacopy(batchPtr, _batchHeader.offset, length)
            mstore(0x40, add(batchPtr, length))
        }

        // check batch header length
        uint256 _l1MessagePopped = getL1MessagePopped(batchPtr);

        unchecked {
            if (length != BATCH_HEADER_FIXED_LENGTH + ((_l1MessagePopped + 255) / 256) * 32) {
                revert ErrorIncorrectBitmapLength();
            }
        }
    }

    /// @notice Get the version of the batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _version The version of the batch header.
    function getVersion(uint256 batchPtr) internal pure returns (uint256 _version) {
        assembly {
            _version := shr(248, mload(batchPtr))
        }
    }

    /// @notice Get the batch index of the batch.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _batchIndex The batch index of the batch.
    function getBatchIndex(uint256 batchPtr) internal pure returns (uint256 _batchIndex) {
        assembly {
            _batchIndex := shr(192, mload(add(batchPtr, 1)))
        }
    }

    /// @notice Get the number of L1 messages of the batch.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _l1MessagePopped The number of L1 messages of the batch.
    function getL1MessagePopped(uint256 batchPtr) internal pure returns (uint256 _l1MessagePopped) {
        assembly {
            _l1MessagePopped := shr(192, mload(add(batchPtr, 9)))
        }
    }

    /// @notice Get the number of L1 messages popped before this batch.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _totalL1MessagePopped The number of L1 messages popped before this batch.
    function getTotalL1MessagePopped(uint256 batchPtr) internal pure returns (uint256 _totalL1MessagePopped) {
        assembly {
            _totalL1MessagePopped := shr(192, mload(add(batchPtr, 17)))
        }
    }

    /// @notice Get the data hash of the batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _dataHash The data hash of the batch header.
    function getDataHash(uint256 batchPtr) internal pure returns (bytes32 _dataHash) {
        assembly {
            _dataHash := mload(add(batchPtr, 25))
        }
    }

    /// @notice Get the parent batch hash of the batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _parentBatchHash The parent batch hash of the batch header.
    function getParentBatchHash(uint256 batchPtr) internal pure returns (bytes32 _parentBatchHash) {
        assembly {
            _parentBatchHash := mload(add(batchPtr, 57))
        }
    }

    /// @notice Get the start memory offset for skipped L1 messages bitmap.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _bitmapPtr the start memory offset for skipped L1 messages bitmap.
    function getSkippedBitmapPtr(uint256 batchPtr) internal pure returns (uint256 _bitmapPtr) {
        assembly {
            _bitmapPtr := add(batchPtr, BATCH_HEADER_FIXED_LENGTH)
        }
    }

    /// @notice Get the skipped L1 messages bitmap.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param index The index of bitmap to load.
    /// @return _bitmap The bitmap from bits `index * 256` to `index * 256 + 255`.
    function getSkippedBitmap(uint256 batchPtr, uint256 index) internal pure returns (uint256 _bitmap) {
        assembly {
            batchPtr := add(batchPtr, BATCH_HEADER_FIXED_LENGTH)
            _bitmap := mload(add(batchPtr, mul(index, 32)))
        }
    }

    /// @notice Store the version of batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _version The version of batch header.
    function storeVersion(uint256 batchPtr, uint256 _version) internal pure {
        assembly {
            mstore8(batchPtr, _version)
        }
    }

    /// @notice Store the batch index of batch header.
    /// @dev Because this function can overwrite the subsequent fields, it must be called before
    /// `storeL1MessagePopped`, `storeTotalL1MessagePopped`, and `storeDataHash`.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _batchIndex The batch index.
    function storeBatchIndex(uint256 batchPtr, uint256 _batchIndex) internal pure {
        assembly {
            mstore(add(batchPtr, 1), shl(192, _batchIndex))
        }
    }

    /// @notice Store the number of L1 messages popped in current batch to batch header.
    /// @dev Because this function can overwrite the subsequent fields, it must be called before
    /// `storeTotalL1MessagePopped` and `storeDataHash`.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _l1MessagePopped The number of L1 messages popped in current batch.
    function storeL1MessagePopped(uint256 batchPtr, uint256 _l1MessagePopped) internal pure {
        assembly {
            mstore(add(batchPtr, 9), shl(192, _l1MessagePopped))
        }
    }

    /// @notice Store the total number of L1 messages popped after current batch to batch header.
    /// @dev Because this function can overwrite the subsequent fields, it must be called before
    /// `storeDataHash`.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _totalL1MessagePopped The total number of L1 messages popped after current batch.
    function storeTotalL1MessagePopped(uint256 batchPtr, uint256 _totalL1MessagePopped) internal pure {
        assembly {
            mstore(add(batchPtr, 17), shl(192, _totalL1MessagePopped))
        }
    }

    /// @notice Store the data hash of batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _dataHash The data hash.
    function storeDataHash(uint256 batchPtr, bytes32 _dataHash) internal pure {
        assembly {
            mstore(add(batchPtr, 25), _dataHash)
        }
    }

    /// @notice Store the parent batch hash of batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _parentBatchHash The parent batch hash.
    function storeParentBatchHash(uint256 batchPtr, bytes32 _parentBatchHash) internal pure {
        assembly {
            mstore(add(batchPtr, 57), _parentBatchHash)
        }
    }

    /// @notice Store the skipped L1 message bitmap of batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _skippedL1MessageBitmap The skipped L1 message bitmap.
    function storeSkippedBitmap(uint256 batchPtr, bytes calldata _skippedL1MessageBitmap) internal pure {
        assembly {
            calldatacopy(
                add(batchPtr, BATCH_HEADER_FIXED_LENGTH),
                _skippedL1MessageBitmap.offset,
                _skippedL1MessageBitmap.length
            )
        }
    }

    /// @notice Compute the batch hash.
    /// @dev Caller should make sure that the encoded batch header is correct.
    ///
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param length The length of the batch.
    /// @return _batchHash The hash of the corresponding batch.
    function computeBatchHash(uint256 batchPtr, uint256 length) internal pure returns (bytes32 _batchHash) {
        // in the current version, the hash is: keccak(BatchHeader without timestamp)
        assembly {
            _batchHash := keccak256(batchPtr, length)
        }
    }
}

// ============================================================
// FILE: src/libraries/codec/BatchHeaderV1Codec.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

// solhint-disable no-inline-assembly

/// @dev Below is the encoding for `BatchHeader` V1, total 121 + ceil(l1MessagePopped / 256) * 32 bytes.
/// ```text
///   * Field                   Bytes       Type        Index   Comments
///   * version                 1           uint8       0       The batch version
///   * batchIndex              8           uint64      1       The index of the batch
///   * l1MessagePopped         8           uint64      9       Number of L1 messages popped in the batch
///   * totalL1MessagePopped    8           uint64      17      Number of total L1 messages popped after the batch
///   * dataHash                32          bytes32     25      The data hash of the batch
///   * blobVersionedHash       32          bytes32     57      The versioned hash of the blob with this batch’s data
///   * parentBatchHash         32          bytes32     89      The parent batch hash
///   * skippedL1MessageBitmap  dynamic     uint256[]   121     A bitmap to indicate which L1 messages are skipped in the batch
/// ```
library BatchHeaderV1Codec {
    /// @dev Thrown when the length of batch header is smaller than 121.
    error ErrorBatchHeaderLengthTooSmall();

    /// @dev Thrown when the length of skippedL1MessageBitmap is incorrect.
    error ErrorIncorrectBitmapLength();

    /// @dev The length of fixed parts of the batch header.
    uint256 internal constant BATCH_HEADER_FIXED_LENGTH = 121;

    /// @notice Load batch header in calldata to memory.
    /// @param _batchHeader The encoded batch header bytes in calldata.
    /// @return batchPtr The start memory offset of the batch header in memory.
    /// @return length The length in bytes of the batch header.
    function loadAndValidate(bytes calldata _batchHeader) internal pure returns (uint256 batchPtr, uint256 length) {
        length = _batchHeader.length;
        if (length < BATCH_HEADER_FIXED_LENGTH) revert ErrorBatchHeaderLengthTooSmall();

        // copy batch header to memory.
        assembly {
            batchPtr := mload(0x40)
            calldatacopy(batchPtr, _batchHeader.offset, length)
            mstore(0x40, add(batchPtr, length))
        }

        // check batch header length
        uint256 _l1MessagePopped = getL1MessagePopped(batchPtr);

        unchecked {
            if (length != BATCH_HEADER_FIXED_LENGTH + ((_l1MessagePopped + 255) / 256) * 32)
                revert ErrorIncorrectBitmapLength();
        }
    }

    /// @notice Get the version of the batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _version The version of the batch header.
    function getVersion(uint256 batchPtr) internal pure returns (uint256 _version) {
        assembly {
            _version := shr(248, mload(batchPtr))
        }
    }

    /// @notice Get the batch index of the batch.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _batchIndex The batch index of the batch.
    function getBatchIndex(uint256 batchPtr) internal pure returns (uint256 _batchIndex) {
        assembly {
            _batchIndex := shr(192, mload(add(batchPtr, 1)))
        }
    }

    /// @notice Get the number of L1 messages of the batch.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _l1MessagePopped The number of L1 messages of the batch.
    function getL1MessagePopped(uint256 batchPtr) internal pure returns (uint256 _l1MessagePopped) {
        assembly {
            _l1MessagePopped := shr(192, mload(add(batchPtr, 9)))
        }
    }

    /// @notice Get the number of L1 messages popped before this batch.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _totalL1MessagePopped The number of L1 messages popped before this batch.
    function getTotalL1MessagePopped(uint256 batchPtr) internal pure returns (uint256 _totalL1MessagePopped) {
        assembly {
            _totalL1MessagePopped := shr(192, mload(add(batchPtr, 17)))
        }
    }

    /// @notice Get the data hash of the batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _dataHash The data hash of the batch header.
    function getDataHash(uint256 batchPtr) internal pure returns (bytes32 _dataHash) {
        assembly {
            _dataHash := mload(add(batchPtr, 25))
        }
    }

    /// @notice Get the blob versioned hash of the batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _blobVersionedHash The blob versioned hash of the batch header.
    function getBlobVersionedHash(uint256 batchPtr) internal pure returns (bytes32 _blobVersionedHash) {
        assembly {
            _blobVersionedHash := mload(add(batchPtr, 57))
        }
    }

    /// @notice Get the parent batch hash of the batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _parentBatchHash The parent batch hash of the batch header.
    function getParentBatchHash(uint256 batchPtr) internal pure returns (bytes32 _parentBatchHash) {
        assembly {
            _parentBatchHash := mload(add(batchPtr, 89))
        }
    }

    /// @notice Get the start memory offset for skipped L1 messages bitmap.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @return _bitmapPtr the start memory offset for skipped L1 messages bitmap.
    function getSkippedBitmapPtr(uint256 batchPtr) internal pure returns (uint256 _bitmapPtr) {
        assembly {
            _bitmapPtr := add(batchPtr, BATCH_HEADER_FIXED_LENGTH)
        }
    }

    /// @notice Get the skipped L1 messages bitmap.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param index The index of bitmap to load.
    /// @return _bitmap The bitmap from bits `index * 256` to `index * 256 + 255`.
    function getSkippedBitmap(uint256 batchPtr, uint256 index) internal pure returns (uint256 _bitmap) {
        assembly {
            batchPtr := add(batchPtr, BATCH_HEADER_FIXED_LENGTH)
            _bitmap := mload(add(batchPtr, mul(index, 32)))
        }
    }

    /// @notice Store the version of batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _version The version of batch header.
    function storeVersion(uint256 batchPtr, uint256 _version) internal pure {
        assembly {
            mstore8(batchPtr, _version)
        }
    }

    /// @notice Store the batch index of batch header.
    /// @dev Because this function can overwrite the subsequent fields, it must be called before
    /// `storeL1MessagePopped`, `storeTotalL1MessagePopped`, and `storeDataHash`.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _batchIndex The batch index.
    function storeBatchIndex(uint256 batchPtr, uint256 _batchIndex) internal pure {
        assembly {
            mstore(add(batchPtr, 1), shl(192, _batchIndex))
        }
    }

    /// @notice Store the number of L1 messages popped in current batch to batch header.
    /// @dev Because this function can overwrite the subsequent fields, it must be called before
    /// `storeTotalL1MessagePopped` and `storeDataHash`.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _l1MessagePopped The number of L1 messages popped in current batch.
    function storeL1MessagePopped(uint256 batchPtr, uint256 _l1MessagePopped) internal pure {
        assembly {
            mstore(add(batchPtr, 9), shl(192, _l1MessagePopped))
        }
    }

    /// @notice Store the total number of L1 messages popped after current batch to batch header.
    /// @dev Because this function can overwrite the subsequent fields, it must be called before
    /// `storeDataHash`.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _totalL1MessagePopped The total number of L1 messages popped after current batch.
    function storeTotalL1MessagePopped(uint256 batchPtr, uint256 _totalL1MessagePopped) internal pure {
        assembly {
            mstore(add(batchPtr, 17), shl(192, _totalL1MessagePopped))
        }
    }

    /// @notice Store the data hash of batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _dataHash The data hash.
    function storeDataHash(uint256 batchPtr, bytes32 _dataHash) internal pure {
        assembly {
            mstore(add(batchPtr, 25), _dataHash)
        }
    }

    /// @notice Store the parent batch hash of batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _blobVersionedHash The versioned hash of the blob with this batch’s data.
    function storeBlobVersionedHash(uint256 batchPtr, bytes32 _blobVersionedHash) internal pure {
        assembly {
            mstore(add(batchPtr, 57), _blobVersionedHash)
        }
    }

    /// @notice Store the parent batch hash of batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _parentBatchHash The parent batch hash.
    function storeParentBatchHash(uint256 batchPtr, bytes32 _parentBatchHash) internal pure {
        assembly {
            mstore(add(batchPtr, 89), _parentBatchHash)
        }
    }

    /// @notice Store the skipped L1 message bitmap of batch header.
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param _skippedL1MessageBitmap The skipped L1 message bitmap.
    function storeSkippedBitmap(uint256 batchPtr, bytes calldata _skippedL1MessageBitmap) internal pure {
        assembly {
            calldatacopy(
                add(batchPtr, BATCH_HEADER_FIXED_LENGTH),
                _skippedL1MessageBitmap.offset,
                _skippedL1MessageBitmap.length
            )
        }
    }

    /// @notice Compute the batch hash.
    /// @dev Caller should make sure that the encoded batch header is correct.
    ///
    /// @param batchPtr The start memory offset of the batch header in memory.
    /// @param length The length of the batch.
    /// @return _batchHash The hash of the corresponding batch.
    function computeBatchHash(uint256 batchPtr, uint256 length) internal pure returns (bytes32 _batchHash) {
        // in the current version, the hash is: keccak(BatchHeader without timestamp)
        assembly {
            _batchHash := keccak256(batchPtr, length)
        }
    }
}

// ============================================================
// FILE: src/libraries/codec/ChunkCodecV0.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

/// @dev Below is the encoding for `Chunk`, total 60*n+1+m bytes.
/// ```text
///   * Field           Bytes       Type            Index       Comments
///   * numBlocks       1           uint8           0           The number of blocks in this chunk
///   * block[0]        60          BlockContext    1           The first block in this chunk
///   * ......
///   * block[i]        60          BlockContext    60*i+1      The (i+1)'th block in this chunk
///   * ......
///   * block[n-1]      60          BlockContext    60*n-59     The last block in this chunk
///   * l2Transactions  dynamic     bytes           60*n+1
/// ```
///
/// @dev Below is the encoding for `BlockContext`, total 60 bytes.
/// ```text
///   * Field                   Bytes      Type         Index  Comments
///   * blockNumber             8          uint64       0      The height of this block.
///   * timestamp               8          uint64       8      The timestamp of this block.
///   * baseFee                 32         uint256      16     The base fee of this block.
///   * gasLimit                8          uint64       48     The gas limit of this block.
///   * numTransactions         2          uint16       56     The number of transactions in this block, both L1 & L2 txs.
///   * numL1Messages           2          uint16       58     The number of l1 messages in this block.
/// ```
library ChunkCodecV0 {
    /// @dev Thrown when no blocks in chunk.
    error ErrorNoBlockInChunk();

    /// @dev Thrown when the length of chunk is incorrect.
    error ErrorIncorrectChunkLength();

    /// @dev The length of one block context.
    uint256 internal constant BLOCK_CONTEXT_LENGTH = 60;

    /// @notice Validate the length of chunk.
    /// @param chunkPtr The start memory offset of the chunk in memory.
    /// @param _length The length of the chunk.
    /// @return _numBlocks The number of blocks in current chunk.
    function validateChunkLength(uint256 chunkPtr, uint256 _length) internal pure returns (uint256 _numBlocks) {
        _numBlocks = getNumBlocks(chunkPtr);

        // should contain at least one block
        if (_numBlocks == 0) revert ErrorNoBlockInChunk();

        // should contain at least the number of the blocks and block contexts
        if (_length < 1 + _numBlocks * BLOCK_CONTEXT_LENGTH) revert ErrorIncorrectChunkLength();
    }

    /// @notice Return the start memory offset of `l2Transactions`.
    /// @dev The caller should make sure `_numBlocks` is correct.
    /// @param chunkPtr The start memory offset of the chunk in memory.
    /// @param _numBlocks The number of blocks in current chunk.
    /// @return _l2TxPtr the start memory offset of `l2Transactions`.
    function getL2TxPtr(uint256 chunkPtr, uint256 _numBlocks) internal pure returns (uint256 _l2TxPtr) {
        unchecked {
            _l2TxPtr = chunkPtr + 1 + _numBlocks * BLOCK_CONTEXT_LENGTH;
        }
    }

    /// @notice Return the number of blocks in current chunk.
    /// @param chunkPtr The start memory offset of the chunk in memory.
    /// @return _numBlocks The number of blocks in current chunk.
    function getNumBlocks(uint256 chunkPtr) internal pure returns (uint256 _numBlocks) {
        assembly {
            _numBlocks := shr(248, mload(chunkPtr))
        }
    }

    /// @notice Copy the block context to another memory.
    /// @param chunkPtr The start memory offset of the chunk in memory.
    /// @param dstPtr The destination memory offset to store the block context.
    /// @param index The index of block context to copy.
    /// @return uint256 The new destination memory offset after copy.
    function copyBlockContext(
        uint256 chunkPtr,
        uint256 dstPtr,
        uint256 index
    ) internal pure returns (uint256) {
        // only first 58 bytes is needed.
        assembly {
            chunkPtr := add(chunkPtr, add(1, mul(BLOCK_CONTEXT_LENGTH, index)))
            mstore(dstPtr, mload(chunkPtr)) // first 32 bytes
            mstore(
                add(dstPtr, 0x20),
                and(mload(add(chunkPtr, 0x20)), 0xffffffffffffffffffffffffffffffffffffffffffffffffffff000000000000)
            ) // next 26 bytes

            dstPtr := add(dstPtr, 58)
        }

        return dstPtr;
    }

    /// @notice Return the number of transactions in current block.
    /// @param blockPtr The start memory offset of the block context in memory.
    /// @return _numTransactions The number of transactions in current block.
    function getNumTransactions(uint256 blockPtr) internal pure returns (uint256 _numTransactions) {
        assembly {
            _numTransactions := shr(240, mload(add(blockPtr, 56)))
        }
    }

    /// @notice Return the number of L1 messages in current block.
    /// @param blockPtr The start memory offset of the block context in memory.
    /// @return _numL1Messages The number of L1 messages in current block.
    function getNumL1Messages(uint256 blockPtr) internal pure returns (uint256 _numL1Messages) {
        assembly {
            _numL1Messages := shr(240, mload(add(blockPtr, 58)))
        }
    }

    /// @notice Compute and load the transaction hash.
    /// @param _l2TxPtr The start memory offset of the transaction in memory.
    /// @return bytes32 The transaction hash of the transaction.
    /// @return uint256 The start memory offset of the next transaction in memory.
    function loadL2TxHash(uint256 _l2TxPtr) internal pure returns (bytes32, uint256) {
        bytes32 txHash;
        assembly {
            // first 4 bytes indicate the length
            let txPayloadLength := shr(224, mload(_l2TxPtr))
            _l2TxPtr := add(_l2TxPtr, 4)
            txHash := keccak256(_l2TxPtr, txPayloadLength)
            _l2TxPtr := add(_l2TxPtr, txPayloadLength)
        }

        return (txHash, _l2TxPtr);
    }
}

// ============================================================
// FILE: src/libraries/codec/ChunkCodecV1.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {ChunkCodecV0} from "./ChunkCodecV0.sol";

/// @dev Below is the encoding for `Chunk`, total 60*n+1 bytes.
/// The only difference between `ChunkCodecV0` is we remove `l2Transactions` from chunk encoding.
/// ```text
///   * Field           Bytes       Type            Index       Comments
///   * numBlocks       1           uint8           0           The number of blocks in this chunk
///   * block[0]        60          BlockContext    1           The first block in this chunk
///   * ......
///   * block[i]        60          BlockContext    60*i+1      The (i+1)'th block in this chunk
///   * ......
///   * block[n-1]      60          BlockContext    60*n-59     The last block in this chunk
/// ```
///
/// @dev Below is the encoding for `BlockContext`, total 60 bytes.
/// ```text
///   * Field                   Bytes      Type         Index  Comments
///   * blockNumber             8          uint64       0      The height of this block.
///   * timestamp               8          uint64       8      The timestamp of this block.
///   * baseFee                 32         uint256      16     The base fee of this block.
///   * gasLimit                8          uint64       48     The gas limit of this block.
///   * numTransactions         2          uint16       56     The number of transactions in this block, both L1 & L2 txs.
///   * numL1Messages           2          uint16       58     The number of l1 messages in this block.
/// ```
library ChunkCodecV1 {
    /// @dev Thrown when no blocks in chunk.
    error ErrorNoBlockInChunk();

    /// @dev Thrown when the length of chunk is incorrect.
    error ErrorIncorrectChunkLength();

    /// @dev The length of one block context.
    uint256 internal constant BLOCK_CONTEXT_LENGTH = 60;

    /// @notice Validate the length of chunk.
    /// @param chunkPtr The start memory offset of the chunk in memory.
    /// @param _length The length of the chunk.
    /// @return _numBlocks The number of blocks in current chunk.
    function validateChunkLength(uint256 chunkPtr, uint256 _length) internal pure returns (uint256 _numBlocks) {
        _numBlocks = getNumBlocks(chunkPtr);

        // should contain at least one block
        if (_numBlocks == 0) revert ErrorNoBlockInChunk();

        // should contain the number of the blocks and block contexts
        if (_length != 1 + _numBlocks * BLOCK_CONTEXT_LENGTH) revert ErrorIncorrectChunkLength();
    }

    /// @notice Return the number of blocks in current chunk.
    /// @param chunkPtr The start memory offset of the chunk in memory.
    /// @return _numBlocks The number of blocks in current chunk.
    function getNumBlocks(uint256 chunkPtr) internal pure returns (uint256 _numBlocks) {
        return ChunkCodecV0.getNumBlocks(chunkPtr);
    }

    /// @notice Copy the block context to another memory.
    /// @param chunkPtr The start memory offset of the chunk in memory.
    /// @param dstPtr The destination memory offset to store the block context.
    /// @param index The index of block context to copy.
    /// @return uint256 The new destination memory offset after copy.
    function copyBlockContext(
        uint256 chunkPtr,
        uint256 dstPtr,
        uint256 index
    ) internal pure returns (uint256) {
        return ChunkCodecV0.copyBlockContext(chunkPtr, dstPtr, index);
    }

    /// @notice Return the number of transactions in current block.
    /// @param blockPtr The start memory offset of the block context in memory.
    /// @return _numTransactions The number of transactions in current block.
    function getNumTransactions(uint256 blockPtr) internal pure returns (uint256 _numTransactions) {
        return ChunkCodecV0.getNumTransactions(blockPtr);
    }

    /// @notice Return the number of L1 messages in current block.
    /// @param blockPtr The start memory offset of the block context in memory.
    /// @return _numL1Messages The number of L1 messages in current block.
    function getNumL1Messages(uint256 blockPtr) internal pure returns (uint256 _numL1Messages) {
        return ChunkCodecV0.getNumL1Messages(blockPtr);
    }
}

// ============================================================
// FILE: src/libraries/verifier/IRollupVerifier.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

/// @title IRollupVerifier
/// @notice The interface for rollup verifier.
interface IRollupVerifier {
    /// @notice Verify aggregate zk proof.
    /// @param batchIndex The batch index to verify.
    /// @param aggrProof The aggregated proof.
    /// @param publicInputHash The public input hash.
    function verifyAggregateProof(
        uint256 batchIndex,
        bytes calldata aggrProof,
        bytes32 publicInputHash
    ) external view;

    /// @notice Verify aggregate zk proof.
    /// @param version The version of verifier to use.
    /// @param batchIndex The batch index to verify.
    /// @param aggrProof The aggregated proof.
    /// @param publicInputHash The public input hash.
    function verifyAggregateProof(
        uint256 version,
        uint256 batchIndex,
        bytes calldata aggrProof,
        bytes32 publicInputHash
    ) external view;
}
