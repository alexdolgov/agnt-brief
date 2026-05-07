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
// FILE: @openzeppelin/contracts-upgradeable/utils/structs/BitMapsUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/structs/BitMaps.sol)
pragma solidity ^0.8.0;

/**
 * @dev Library for managing uint256 to bool mapping in a compact and efficient way, providing the keys are sequential.
 * Largely inspired by Uniswap's https://github.com/Uniswap/merkle-distributor/blob/master/contracts/MerkleDistributor.sol[merkle-distributor].
 */
library BitMapsUpgradeable {
    struct BitMap {
        mapping(uint256 => uint256) _data;
    }

    /**
     * @dev Returns whether the bit at `index` is set.
     */
    function get(BitMap storage bitmap, uint256 index) internal view returns (bool) {
        uint256 bucket = index >> 8;
        uint256 mask = 1 << (index & 0xff);
        return bitmap._data[bucket] & mask != 0;
    }

    /**
     * @dev Sets the bit at `index` to the boolean `value`.
     */
    function setTo(BitMap storage bitmap, uint256 index, bool value) internal {
        if (value) {
            set(bitmap, index);
        } else {
            unset(bitmap, index);
        }
    }

    /**
     * @dev Sets the bit at `index`.
     */
    function set(BitMap storage bitmap, uint256 index) internal {
        uint256 bucket = index >> 8;
        uint256 mask = 1 << (index & 0xff);
        bitmap._data[bucket] |= mask;
    }

    /**
     * @dev Unsets the bit at `index`.
     */
    function unset(BitMap storage bitmap, uint256 index) internal {
        uint256 bucket = index >> 8;
        uint256 mask = 1 << (index & 0xff);
        bitmap._data[bucket] &= ~mask;
    }
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

    /// @notice Emitted when dequeued transactions are reset.
    /// @param startIndex The start index of messages.
    event ResetDequeuedTransaction(uint256 startIndex);

    /// @notice Emitted when some L1 => L2 transactions are finalized in L1.
    /// @param finalizedIndex The last index of messages finalized.
    event FinalizedDequeuedTransaction(uint256 finalizedIndex);

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

    /// @notice The start index of all unfinalized messages.
    /// @dev All messages from `nextUnfinalizedQueueIndex` to `pendingQueueIndex-1` are committed but not finalized.
    function nextUnfinalizedQueueIndex() external view returns (uint256);

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

    /// @notice Pop messages from queue.
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

    /// @notice Reset status of popped messages.
    ///
    /// @dev We can only reset unfinalized popped messages.
    ///
    /// @param startIndex The start index to reset.
    function resetPoppedCrossDomainMessage(uint256 startIndex) external;

    /// @notice Finalize status of popped messages.
    /// @param newFinalizedQueueIndexPlusOne The index of message to finalize plus one.
    function finalizePoppedCrossDomainMessage(uint256 newFinalizedQueueIndexPlusOne) external;

    /// @notice Drop a skipped message from the queue.
    function dropCrossDomainMessage(uint256 index) external;
}

// ============================================================
// FILE: src/L1/rollup/IL1MessageQueueWithGasPriceOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {IL1MessageQueue} from "./IL1MessageQueue.sol";

interface IL1MessageQueueWithGasPriceOracle is IL1MessageQueue {
    /**********
     * Events *
     **********/

    /// @notice Emitted when owner updates whitelist checker contract.
    /// @param _oldWhitelistChecker The address of old whitelist checker contract.
    /// @param _newWhitelistChecker The address of new whitelist checker contract.
    event UpdateWhitelistChecker(address indexed _oldWhitelistChecker, address indexed _newWhitelistChecker);

    /// @notice Emitted when current l2 base fee is updated.
    /// @param oldL2BaseFee The original l2 base fee before update.
    /// @param newL2BaseFee The current l2 base fee updated.
    event UpdateL2BaseFee(uint256 oldL2BaseFee, uint256 newL2BaseFee);

    /**********
     * Errors *
     **********/

    /// @dev Thrown when the caller is not whitelisted.
    error ErrorNotWhitelistedSender();

    /*************************
     * Public View Functions *
     *************************/

    /// @notice Return the latest known l2 base fee.
    function l2BaseFee() external view returns (uint256);

    /// @notice Return the address of whitelist checker contract.
    function whitelistChecker() external view returns (address);
}

// ============================================================
// FILE: src/L1/rollup/IL2GasPriceOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

interface IL2GasPriceOracle {
    /// @notice Return the latest known l2 base fee.
    function l2BaseFee() external view returns (uint256);

    /// @notice Return the address of whitelist contract.
    function whitelist() external view returns (address);

    /// @notice Estimate fee for cross chain message call.
    /// @param _gasLimit Gas limit required to complete the message relay on L2.
    function estimateCrossDomainMessageFee(uint256 _gasLimit) external view returns (uint256);

    /// @notice Estimate intrinsic gas fee for cross chain message call.
    /// @param _message The message to be relayed on L2.
    function calculateIntrinsicGasFee(bytes memory _message) external view returns (uint256);
}

// ============================================================
// FILE: src/L1/rollup/L1MessageQueue.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity =0.8.24;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {BitMapsUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/BitMapsUpgradeable.sol";

import {IL2GasPriceOracle} from "./IL2GasPriceOracle.sol";
import {IL1MessageQueue} from "./IL1MessageQueue.sol";

import {AddressAliasHelper} from "../../libraries/common/AddressAliasHelper.sol";

// solhint-disable no-empty-blocks
// solhint-disable no-inline-assembly
// solhint-disable reason-string

/// @title L1MessageQueue
/// @notice This contract will hold all L1 to L2 messages.
/// Each appended message is assigned with a unique and increasing `uint256` index.
contract L1MessageQueue is OwnableUpgradeable, IL1MessageQueue {
    using BitMapsUpgradeable for BitMapsUpgradeable.BitMap;

    /*************
     * Constants *
     *************/

    /// @notice The address of L1ScrollMessenger contract.
    address public immutable messenger;

    /// @notice The address of ScrollChain contract.
    address public immutable scrollChain;

    /// @notice The address EnforcedTxGateway contract.
    address public immutable enforcedTxGateway;

    /*************
     * Variables *
     *************/

    /// @dev The storage slot used as L1ScrollMessenger contract, which is deprecated now.
    address private __messenger;

    /// @dev The storage slot used as ScrollChain contract, which is deprecated now.
    address private __scrollChain;

    /// @dev The storage slot used as EnforcedTxGateway contract, which is deprecated now.
    address private __enforcedTxGateway;

    /// @notice The address of GasOracle contract.
    address public gasOracle;

    /// @notice The list of queued cross domain messages.
    bytes32[] public messageQueue;

    /// @inheritdoc IL1MessageQueue
    uint256 public pendingQueueIndex;

    /// @notice The max gas limit of L1 transactions.
    uint256 public maxGasLimit;

    /// @dev The bitmap for dropped messages, where `droppedMessageBitmap[i]` keeps the bits from `[i*256, (i+1)*256)`.
    BitMapsUpgradeable.BitMap private droppedMessageBitmap;

    /// @dev The bitmap for skipped messages, where `skippedMessageBitmap[i]` keeps the bits from `[i*256, (i+1)*256)`.
    mapping(uint256 => uint256) private skippedMessageBitmap;

    /// @inheritdoc IL1MessageQueue
    uint256 public nextUnfinalizedQueueIndex;

    /// @dev The storage slots for future usage.
    uint256[40] private __gap;

    /**********************
     * Function Modifiers *
     **********************/

    modifier onlyMessenger() {
        require(_msgSender() == messenger, "Only callable by the L1ScrollMessenger");
        _;
    }

    modifier onlyScrollChain() {
        require(_msgSender() == scrollChain, "Only callable by the ScrollChain");
        _;
    }

    /***************
     * Constructor *
     ***************/

    /// @notice Constructor for `L1MessageQueue` implementation contract.
    ///
    /// @param _messenger The address of `L1ScrollMessenger` contract.
    /// @param _scrollChain The address of `ScrollChain` contract.
    /// @param _enforcedTxGateway The address of `EnforcedTxGateway` contract.
    constructor(
        address _messenger,
        address _scrollChain,
        address _enforcedTxGateway
    ) {
        if (_messenger == address(0) || _scrollChain == address(0) || _enforcedTxGateway == address(0)) {
            revert ErrorZeroAddress();
        }

        _disableInitializers();

        messenger = _messenger;
        scrollChain = _scrollChain;
        enforcedTxGateway = _enforcedTxGateway;
    }

    /// @notice Initialize the storage of L1MessageQueue.
    ///
    /// @dev The parameters `_messenger`, `_scrollChain` and `_enforcedTxGateway` are no longer used.
    ///
    /// @param _messenger The address of `L1ScrollMessenger` contract.
    /// @param _scrollChain The address of `ScrollChain` contract.
    /// @param _enforcedTxGateway The address of `EnforcedTxGateway` contract.
    /// @param _gasOracle The address of `GasOracle` contract.
    /// @param _maxGasLimit The maximum gas limit allowed in single transaction.
    function initialize(
        address _messenger,
        address _scrollChain,
        address _enforcedTxGateway,
        address _gasOracle,
        uint256 _maxGasLimit
    ) external initializer {
        OwnableUpgradeable.__Ownable_init();
        gasOracle = _gasOracle;
        maxGasLimit = _maxGasLimit;

        __messenger = _messenger;
        __scrollChain = _scrollChain;
        __enforcedTxGateway = _enforcedTxGateway;
    }

    /*************************
     * Public View Functions *
     *************************/

    /// @inheritdoc IL1MessageQueue
    function nextCrossDomainMessageIndex() external view returns (uint256) {
        return messageQueue.length;
    }

    /// @inheritdoc IL1MessageQueue
    function getCrossDomainMessage(uint256 _queueIndex) external view returns (bytes32) {
        return messageQueue[_queueIndex];
    }

    /// @inheritdoc IL1MessageQueue
    function estimateCrossDomainMessageFee(uint256 _gasLimit) external view virtual override returns (uint256) {
        address _oracle = gasOracle;
        if (_oracle == address(0)) return 0;
        return IL2GasPriceOracle(_oracle).estimateCrossDomainMessageFee(_gasLimit);
    }

    /// @inheritdoc IL1MessageQueue
    function calculateIntrinsicGasFee(bytes calldata _calldata) public view virtual override returns (uint256) {
        address _oracle = gasOracle;
        if (_oracle == address(0)) return 0;
        return IL2GasPriceOracle(_oracle).calculateIntrinsicGasFee(_calldata);
    }

    /// @inheritdoc IL1MessageQueue
    function computeTransactionHash(
        address _sender,
        uint256 _queueIndex,
        uint256 _value,
        address _target,
        uint256 _gasLimit,
        bytes calldata _data
    ) public pure override returns (bytes32) {
        // We use EIP-2718 to encode the L1 message, and the encoding of the message is
        //      `TransactionType || TransactionPayload`
        // where
        //  1. `TransactionType` is 0x7E
        //  2. `TransactionPayload` is `rlp([queueIndex, gasLimit, to, value, data, sender])`
        //
        // The spec of rlp: https://ethereum.org/en/developers/docs/data-structures-and-encoding/rlp/
        uint256 transactionType = 0x7E;
        bytes32 hash;
        assembly {
            function get_uint_bytes(v) -> len {
                if eq(v, 0) {
                    len := 1
                    leave
                }
                for {

                } gt(v, 0) {

                } {
                    len := add(len, 1)
                    v := shr(8, v)
                }
            }

            // This is used for both store uint and single byte.
            // Integer zero is special handled by geth to encode as `0x80`
            function store_uint_or_byte(_ptr, v, is_uint) -> ptr {
                ptr := _ptr
                switch lt(v, 128)
                case 1 {
                    switch and(iszero(v), is_uint)
                    case 1 {
                        // integer 0
                        mstore8(ptr, 0x80)
                    }
                    default {
                        // single byte in the [0x00, 0x7f]
                        mstore8(ptr, v)
                    }
                    ptr := add(ptr, 1)
                }
                default {
                    // 1-32 bytes long
                    let len := get_uint_bytes(v)
                    mstore8(ptr, add(len, 0x80))
                    ptr := add(ptr, 1)
                    mstore(ptr, shl(mul(8, sub(32, len)), v))
                    ptr := add(ptr, len)
                }
            }

            function store_address(_ptr, v) -> ptr {
                ptr := _ptr
                // 20 bytes long
                mstore8(ptr, 0x94) // 0x80 + 0x14
                ptr := add(ptr, 1)
                mstore(ptr, shl(96, v))
                ptr := add(ptr, 0x14)
            }

            // 1 byte for TransactionType
            // 4 byte for list payload length
            let start_ptr := add(mload(0x40), 5)
            let ptr := start_ptr
            ptr := store_uint_or_byte(ptr, _queueIndex, 1)
            ptr := store_uint_or_byte(ptr, _gasLimit, 1)
            ptr := store_address(ptr, _target)
            ptr := store_uint_or_byte(ptr, _value, 1)

            switch eq(_data.length, 1)
            case 1 {
                // single byte
                ptr := store_uint_or_byte(ptr, byte(0, calldataload(_data.offset)), 0)
            }
            default {
                switch lt(_data.length, 56)
                case 1 {
                    // a string is 0-55 bytes long
                    mstore8(ptr, add(0x80, _data.length))
                    ptr := add(ptr, 1)
                    calldatacopy(ptr, _data.offset, _data.length)
                    ptr := add(ptr, _data.length)
                }
                default {
                    // a string is more than 55 bytes long
                    let len_bytes := get_uint_bytes(_data.length)
                    mstore8(ptr, add(0xb7, len_bytes))
                    ptr := add(ptr, 1)
                    mstore(ptr, shl(mul(8, sub(32, len_bytes)), _data.length))
                    ptr := add(ptr, len_bytes)
                    calldatacopy(ptr, _data.offset, _data.length)
                    ptr := add(ptr, _data.length)
                }
            }
            ptr := store_address(ptr, _sender)

            let payload_len := sub(ptr, start_ptr)
            let value
            let value_bytes
            switch lt(payload_len, 56)
            case 1 {
                // the total payload of a list is 0-55 bytes long
                value := add(0xc0, payload_len)
                value_bytes := 1
            }
            default {
                // If the total payload of a list is more than 55 bytes long
                let len_bytes := get_uint_bytes(payload_len)
                value_bytes := add(len_bytes, 1)
                value := add(0xf7, len_bytes)
                value := shl(mul(len_bytes, 8), value)
                value := or(value, payload_len)
            }
            value := or(value, shl(mul(8, value_bytes), transactionType))
            value_bytes := add(value_bytes, 1)
            let value_bits := mul(8, value_bytes)
            value := or(shl(sub(256, value_bits), value), shr(value_bits, mload(start_ptr)))
            start_ptr := sub(start_ptr, value_bytes)
            mstore(start_ptr, value)
            hash := keccak256(start_ptr, sub(ptr, start_ptr))
        }
        return hash;
    }

    /// @inheritdoc IL1MessageQueue
    function isMessageSkipped(uint256 _queueIndex) external view returns (bool) {
        if (_queueIndex >= pendingQueueIndex) return false;

        return _isMessageSkipped(_queueIndex);
    }

    /// @inheritdoc IL1MessageQueue
    function isMessageDropped(uint256 _queueIndex) external view returns (bool) {
        // it should be a skipped message first.
        return _isMessageSkipped(_queueIndex) && droppedMessageBitmap.get(_queueIndex);
    }

    /*****************************
     * Public Mutating Functions *
     *****************************/

    /// @inheritdoc IL1MessageQueue
    function appendCrossDomainMessage(
        address _target,
        uint256 _gasLimit,
        bytes calldata _data
    ) external override onlyMessenger {
        // validate gas limit
        _validateGasLimit(_gasLimit, _data);

        // do address alias to avoid replay attack in L2.
        address _sender = AddressAliasHelper.applyL1ToL2Alias(_msgSender());

        _queueTransaction(_sender, _target, 0, _gasLimit, _data);
    }

    /// @inheritdoc IL1MessageQueue
    function appendEnforcedTransaction(
        address _sender,
        address _target,
        uint256 _value,
        uint256 _gasLimit,
        bytes calldata _data
    ) external override {
        require(_msgSender() == enforcedTxGateway, "Only callable by the EnforcedTxGateway");
        // We will check it in EnforcedTxGateway, just in case.
        require(_sender.code.length == 0, "only EOA");

        // validate gas limit
        _validateGasLimit(_gasLimit, _data);

        _queueTransaction(_sender, _target, _value, _gasLimit, _data);
    }

    /// @inheritdoc IL1MessageQueue
    function popCrossDomainMessage(
        uint256 _startIndex,
        uint256 _count,
        uint256 _skippedBitmap
    ) external override onlyScrollChain {
        require(_count <= 256, "pop too many messages");
        require(pendingQueueIndex == _startIndex, "start index mismatch");

        unchecked {
            // clear extra bits in `_skippedBitmap`, and if _count = 256, it's designed to overflow.
            uint256 mask = (1 << _count) - 1;
            _skippedBitmap &= mask;

            uint256 bucket = _startIndex >> 8;
            uint256 offset = _startIndex & 0xff;
            skippedMessageBitmap[bucket] |= _skippedBitmap << offset;
            if (offset + _count > 256) {
                skippedMessageBitmap[bucket + 1] = _skippedBitmap >> (256 - offset);
            }

            pendingQueueIndex = _startIndex + _count;
        }

        emit DequeueTransaction(_startIndex, _count, _skippedBitmap);
    }

    /// @inheritdoc IL1MessageQueue
    /// @dev Caller should make sure `_startIndex < pendingQueueIndex` to reduce unnecessary contract call.
    function resetPoppedCrossDomainMessage(uint256 _startIndex) external override onlyScrollChain {
        uint256 cachedPendingQueueIndex = pendingQueueIndex;
        if (_startIndex == cachedPendingQueueIndex) return;

        require(_startIndex >= nextUnfinalizedQueueIndex, "reset finalized messages");
        require(_startIndex < cachedPendingQueueIndex, "reset pending messages");

        unchecked {
            uint256 count = cachedPendingQueueIndex - _startIndex;
            uint256 bucket = _startIndex >> 8;
            uint256 offset = _startIndex & 0xff;
            skippedMessageBitmap[bucket] &= (1 << offset) - 1;
            uint256 numResetMessages = 256 - offset;
            while (numResetMessages < count) {
                bucket += 1;
                uint256 bitmap = skippedMessageBitmap[bucket];
                if (bitmap > 0) skippedMessageBitmap[bucket] = 0;
                numResetMessages += 256;
            }
        }

        pendingQueueIndex = _startIndex;
        emit ResetDequeuedTransaction(_startIndex);
    }

    /// @inheritdoc IL1MessageQueue
    function finalizePoppedCrossDomainMessage(uint256 _newFinalizedQueueIndexPlusOne)
        external
        override
        onlyScrollChain
    {
        uint256 cachedFinalizedQueueIndexPlusOne = nextUnfinalizedQueueIndex;
        if (_newFinalizedQueueIndexPlusOne == cachedFinalizedQueueIndexPlusOne) return;
        require(_newFinalizedQueueIndexPlusOne > cachedFinalizedQueueIndexPlusOne, "finalized index too small");
        require(_newFinalizedQueueIndexPlusOne <= pendingQueueIndex, "finalized index too large");

        nextUnfinalizedQueueIndex = _newFinalizedQueueIndexPlusOne;
        unchecked {
            emit FinalizedDequeuedTransaction(_newFinalizedQueueIndexPlusOne - 1);
        }
    }

    /// @inheritdoc IL1MessageQueue
    function dropCrossDomainMessage(uint256 _index) external onlyMessenger {
        require(_index < nextUnfinalizedQueueIndex, "cannot drop pending message");

        require(_isMessageSkipped(_index), "drop non-skipped message");
        require(!droppedMessageBitmap.get(_index), "message already dropped");
        droppedMessageBitmap.set(_index);

        emit DropTransaction(_index);
    }

    /************************
     * Restricted Functions *
     ************************/

    /// @notice Update the address of gas oracle.
    /// @dev This function can only called by contract owner.
    /// @param _newGasOracle The address to update.
    function updateGasOracle(address _newGasOracle) external onlyOwner {
        address _oldGasOracle = gasOracle;
        gasOracle = _newGasOracle;

        emit UpdateGasOracle(_oldGasOracle, _newGasOracle);
    }

    /// @notice Update the max gas limit.
    /// @dev This function can only called by contract owner.
    /// @param _newMaxGasLimit The new max gas limit.
    function updateMaxGasLimit(uint256 _newMaxGasLimit) external onlyOwner {
        uint256 _oldMaxGasLimit = maxGasLimit;
        maxGasLimit = _newMaxGasLimit;

        emit UpdateMaxGasLimit(_oldMaxGasLimit, _newMaxGasLimit);
    }

    /**********************
     * Internal Functions *
     **********************/

    /// @dev Internal function to queue a L1 transaction.
    /// @param _sender The address of sender who will initiate this transaction in L2.
    /// @param _target The address of target contract to call in L2.
    /// @param _value The value passed
    /// @param _gasLimit The maximum gas should be used for this transaction in L2.
    /// @param _data The calldata passed to target contract.
    function _queueTransaction(
        address _sender,
        address _target,
        uint256 _value,
        uint256 _gasLimit,
        bytes calldata _data
    ) internal {
        // compute transaction hash
        uint256 _queueIndex = messageQueue.length;
        bytes32 _hash = computeTransactionHash(_sender, _queueIndex, _value, _target, _gasLimit, _data);
        messageQueue.push(_hash);

        // emit event
        emit QueueTransaction(_sender, _target, _value, uint64(_queueIndex), _gasLimit, _data);
    }

    function _validateGasLimit(uint256 _gasLimit, bytes calldata _calldata) internal view {
        require(_gasLimit <= maxGasLimit, "Gas limit must not exceed maxGasLimit");
        // check if the gas limit is above intrinsic gas
        uint256 intrinsicGas = calculateIntrinsicGasFee(_calldata);
        require(_gasLimit >= intrinsicGas, "Insufficient gas limit, must be above intrinsic gas");
    }

    /// @dev Returns whether the bit at `index` is set.
    function _isMessageSkipped(uint256 index) internal view returns (bool) {
        uint256 bucket = index >> 8;
        uint256 mask = 1 << (index & 0xff);
        return skippedMessageBitmap[bucket] & mask != 0;
    }
}

// ============================================================
// FILE: src/L1/rollup/L1MessageQueueWithGasPriceOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity =0.8.24;

import {IWhitelist} from "../../libraries/common/IWhitelist.sol";
import {IL1MessageQueue} from "./IL1MessageQueue.sol";
import {IL1MessageQueueWithGasPriceOracle} from "./IL1MessageQueueWithGasPriceOracle.sol";
import {IL2GasPriceOracle} from "./IL2GasPriceOracle.sol";

import {L1MessageQueue} from "./L1MessageQueue.sol";

contract L1MessageQueueWithGasPriceOracle is L1MessageQueue, IL1MessageQueueWithGasPriceOracle {
    /*************
     * Constants *
     *************/

    /// @notice The intrinsic gas for transaction.
    uint256 private constant INTRINSIC_GAS_TX = 21000;

    /// @notice The appropriate intrinsic gas for each byte.
    uint256 private constant APPROPRIATE_INTRINSIC_GAS_PER_BYTE = 16;

    /*************
     * Variables *
     *************/

    /// @inheritdoc IL1MessageQueueWithGasPriceOracle
    uint256 public override l2BaseFee;

    /// @inheritdoc IL1MessageQueueWithGasPriceOracle
    address public override whitelistChecker;

    /***************
     * Constructor *
     ***************/

    /// @notice Constructor for `L1MessageQueueWithGasPriceOracle` implementation contract.
    ///
    /// @param _messenger The address of `L1ScrollMessenger` contract.
    /// @param _scrollChain The address of `ScrollChain` contract.
    /// @param _enforcedTxGateway The address of `EnforcedTxGateway` contract.
    constructor(
        address _messenger,
        address _scrollChain,
        address _enforcedTxGateway
    ) L1MessageQueue(_messenger, _scrollChain, _enforcedTxGateway) {}

    /// @notice Initialize the storage of L1MessageQueueWithGasPriceOracle.
    function initializeV2() external reinitializer(2) {
        l2BaseFee = IL2GasPriceOracle(gasOracle).l2BaseFee();
        whitelistChecker = IL2GasPriceOracle(gasOracle).whitelist();
    }

    function initializeV3() external reinitializer(3) {
        nextUnfinalizedQueueIndex = pendingQueueIndex;
    }

    /*************************
     * Public View Functions *
     *************************/

    /// @inheritdoc IL1MessageQueue
    function estimateCrossDomainMessageFee(uint256 _gasLimit)
        external
        view
        override(IL1MessageQueue, L1MessageQueue)
        returns (uint256)
    {
        return _gasLimit * l2BaseFee;
    }

    /// @inheritdoc IL1MessageQueue
    function calculateIntrinsicGasFee(bytes calldata _calldata)
        public
        pure
        override(IL1MessageQueue, L1MessageQueue)
        returns (uint256)
    {
        // no way this can overflow `uint256`
        unchecked {
            return INTRINSIC_GAS_TX + _calldata.length * APPROPRIATE_INTRINSIC_GAS_PER_BYTE;
        }
    }

    /*****************************
     * Public Mutating Functions *
     *****************************/

    /// @notice Allows whitelistCheckered caller to modify the l2 base fee.
    /// @param _newL2BaseFee The new l2 base fee.
    function setL2BaseFee(uint256 _newL2BaseFee) external {
        if (!IWhitelist(whitelistChecker).isSenderAllowed(_msgSender())) {
            revert ErrorNotWhitelistedSender();
        }

        uint256 _oldL2BaseFee = l2BaseFee;
        l2BaseFee = _newL2BaseFee;

        emit UpdateL2BaseFee(_oldL2BaseFee, _newL2BaseFee);
    }

    /************************
     * Restricted Functions *
     ************************/

    /// @notice Update whitelist checker contract.
    /// @dev This function can only called by contract owner.
    /// @param _newWhitelistChecker The address of new whitelist checker contract.
    function updateWhitelistChecker(address _newWhitelistChecker) external onlyOwner {
        address _oldWhitelistChecker = whitelistChecker;
        whitelistChecker = _newWhitelistChecker;
        emit UpdateWhitelistChecker(_oldWhitelistChecker, _newWhitelistChecker);
    }
}

// ============================================================
// FILE: src/libraries/common/AddressAliasHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

library AddressAliasHelper {
    /// @dev The offset added to the address in L1.
    uint160 internal constant OFFSET = uint160(0x1111000000000000000000000000000000001111);

    /// @notice Utility function that converts the address in the L1 that submitted a tx to
    /// the inbox to the msg.sender viewed in the L2
    /// @param l1Address the address in the L1 that triggered the tx to L2
    /// @return l2Address L2 address as viewed in msg.sender
    function applyL1ToL2Alias(address l1Address) internal pure returns (address l2Address) {
        unchecked {
            l2Address = address(uint160(l1Address) + OFFSET);
        }
    }

    /// @notice Utility function that converts the msg.sender viewed in the L2 to the
    /// address in the L1 that submitted a tx to the inbox
    /// @param l2Address L2 address as viewed in msg.sender
    /// @return l1Address the address in the L1 that triggered the tx to L2
    function undoL1ToL2Alias(address l2Address) internal pure returns (address l1Address) {
        unchecked {
            l1Address = address(uint160(l2Address) - OFFSET);
        }
    }
}

// ============================================================
// FILE: src/libraries/common/IWhitelist.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

interface IWhitelist {
    /// @notice Check whether the sender is allowed to do something.
    /// @param _sender The address of sender.
    function isSenderAllowed(address _sender) external view returns (bool);
}
