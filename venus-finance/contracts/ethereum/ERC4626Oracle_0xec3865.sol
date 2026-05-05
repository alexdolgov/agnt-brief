// ============================================================
// FILE: @chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(uint80 _roundId)
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
}

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
// FILE: @openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
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
// FILE: @openzeppelin/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
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
// OpenZeppelin Contracts (last updated v4.9.4) (utils/Context.sol)

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

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: @venusprotocol/governance-contracts/contracts/Governance/AccessControlledV8.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

import "./IAccessControlManagerV8.sol";

/**
 * @title AccessControlledV8
 * @author Venus
 * @notice This contract is helper between access control manager and actual contract. This contract further inherited by other contract (using solidity 0.8.13)
 * to integrate access controlled mechanism. It provides initialise methods and verifying access methods.
 */
abstract contract AccessControlledV8 is Initializable, Ownable2StepUpgradeable {
    /// @notice Access control manager contract
    IAccessControlManagerV8 private _accessControlManager;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;

    /// @notice Emitted when access control manager contract address is changed
    event NewAccessControlManager(address oldAccessControlManager, address newAccessControlManager);

    /// @notice Thrown when the action is prohibited by AccessControlManager
    error Unauthorized(address sender, address calledContract, string methodSignature);

    function __AccessControlled_init(address accessControlManager_) internal onlyInitializing {
        __Ownable2Step_init();
        __AccessControlled_init_unchained(accessControlManager_);
    }

    function __AccessControlled_init_unchained(address accessControlManager_) internal onlyInitializing {
        _setAccessControlManager(accessControlManager_);
    }

    /**
     * @notice Sets the address of AccessControlManager
     * @dev Admin function to set address of AccessControlManager
     * @param accessControlManager_ The new address of the AccessControlManager
     * @custom:event Emits NewAccessControlManager event
     * @custom:access Only Governance
     */
    function setAccessControlManager(address accessControlManager_) external onlyOwner {
        _setAccessControlManager(accessControlManager_);
    }

    /**
     * @notice Returns the address of the access control manager contract
     */
    function accessControlManager() external view returns (IAccessControlManagerV8) {
        return _accessControlManager;
    }

    /**
     * @dev Internal function to set address of AccessControlManager
     * @param accessControlManager_ The new address of the AccessControlManager
     */
    function _setAccessControlManager(address accessControlManager_) internal {
        require(address(accessControlManager_) != address(0), "invalid acess control manager address");
        address oldAccessControlManager = address(_accessControlManager);
        _accessControlManager = IAccessControlManagerV8(accessControlManager_);
        emit NewAccessControlManager(oldAccessControlManager, accessControlManager_);
    }

    /**
     * @notice Reverts if the call is not allowed by AccessControlManager
     * @param signature Method signature
     */
    function _checkAccessAllowed(string memory signature) internal view {
        bool isAllowedToCall = _accessControlManager.isAllowedToCall(msg.sender, signature);

        if (!isAllowedToCall) {
            revert Unauthorized(msg.sender, address(this), signature);
        }
    }
}

// ============================================================
// FILE: @venusprotocol/governance-contracts/contracts/Governance/IAccessControlManagerV8.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/access/IAccessControl.sol";

/**
 * @title IAccessControlManagerV8
 * @author Venus
 * @notice Interface implemented by the `AccessControlManagerV8` contract.
 */
interface IAccessControlManagerV8 is IAccessControl {
    function giveCallPermission(address contractAddress, string calldata functionSig, address accountToPermit) external;

    function revokeCallPermission(
        address contractAddress,
        string calldata functionSig,
        address accountToRevoke
    ) external;

    function isAllowedToCall(address account, string calldata functionSig) external view returns (bool);

    function hasPermission(
        address account,
        address contractAddress,
        string calldata functionSig
    ) external view returns (bool);
}

// ============================================================
// FILE: @venusprotocol/solidity-utilities/contracts/constants.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

/// @dev Base unit for computations, usually used in scaling (multiplications, divisions)
uint256 constant EXP_SCALE = 1e18;

/// @dev A unit (literal one) in EXP_SCALE, usually used in additions/subtractions
uint256 constant MANTISSA_ONE = EXP_SCALE;

/// @dev The approximate number of seconds per year
uint256 constant SECONDS_PER_YEAR = 31_536_000;

// ============================================================
// FILE: @venusprotocol/solidity-utilities/contracts/validators.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

/// @notice Thrown if the supplied address is a zero address where it is not allowed
error ZeroAddressNotAllowed();

/// @notice Thrown if the supplied value is 0 where it is not allowed
error ZeroValueNotAllowed();

/// @notice Checks if the provided address is nonzero, reverts otherwise
/// @param address_ Address to check
/// @custom:error ZeroAddressNotAllowed is thrown if the provided address is a zero address
function ensureNonzeroAddress(address address_) pure {
    if (address_ == address(0)) {
        revert ZeroAddressNotAllowed();
    }
}

/// @notice Checks if the provided value is nonzero, reverts otherwise
/// @param value_ Value to check
/// @custom:error ZeroValueNotAllowed is thrown if the provided value is 0
function ensureNonzeroValue(uint256 value_) pure {
    if (value_ == 0) {
        revert ZeroValueNotAllowed();
    }
}

// ============================================================
// FILE: contracts/interfaces/FeedRegistryInterface.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

interface FeedRegistryInterface {
    function latestRoundDataByName(
        string memory base,
        string memory quote
    )
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

    function decimalsByName(string memory base, string memory quote) external view returns (uint8);
}

// ============================================================
// FILE: contracts/interfaces/IAccountant.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IAccountant {
    function getRateSafe() external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IAnkrBNB.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IAnkrBNB {
    function sharesToBonds(uint256 amount) external view returns (uint256);
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: contracts/interfaces/IAsBNB.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IAsBNB {
    function minter() external view returns (address);
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: contracts/interfaces/IAsBNBMinter.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IAsBNBMinter {
    function convertToTokens(uint256 amount) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/ICappedOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface ICappedOracle {
    function updateSnapshot() external;
}

// ============================================================
// FILE: contracts/interfaces/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IERC4626 {
    function convertToAssets(uint256 shares) external view returns (uint256);
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: contracts/interfaces/IEtherFiLiquidityPool.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IEtherFiLiquidityPool {
    function amountForShare(uint256 _share) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IPendlePtOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IPendlePtOracle {
    function getPtToAssetRate(address market, uint32 duration) external view returns (uint256);

    function getPtToSyRate(address market, uint32 duration) external view returns (uint256);

    function getOracleState(
        address market,
        uint32 duration
    )
        external
        view
        returns (bool increaseCardinalityRequired, uint16 cardinalityRequired, bool oldestObservationSatisfied);
}

// ============================================================
// FILE: contracts/interfaces/IPStakePool.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IPStakePool {
    struct Data {
        uint256 totalWei;
        uint256 poolTokenSupply;
    }

    /**
     * @dev The current exchange rate for converting stkBNB to BNB.
     */
    function exchangeRate() external view returns (Data memory);
}

// ============================================================
// FILE: contracts/interfaces/ISFrax.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface ISFrax {
    function convertToAssets(uint256 shares) external view returns (uint256);
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: contracts/interfaces/ISfrxEthFraxOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface ISfrxEthFraxOracle {
    function getPrices() external view returns (bool _isbadData, uint256 _priceLow, uint256 _priceHigh);
}

// ============================================================
// FILE: contracts/interfaces/IStaderStakeManager.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IStaderStakeManager {
    function convertBnbXToBnb(uint256 _amount) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IStETH.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

interface IStETH {
    function getPooledEthByShares(uint256 _sharesAmount) external view returns (uint256);
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: contracts/interfaces/ISynclubStakeManager.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface ISynclubStakeManager {
    function convertSnBnbToBnb(uint256 _amount) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IWBETH.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IWBETH {
    function exchangeRate() external view returns (uint256);
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: contracts/interfaces/IZkETH.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

interface IZkETH {
    function LSTPerToken() external view returns (uint256);
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: contracts/interfaces/OracleInterface.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

interface OracleInterface {
    function getPrice(address asset) external view returns (uint256);
}

interface ResilientOracleInterface is OracleInterface {
    function updatePrice(address vToken) external;

    function updateAssetPrice(address asset) external;

    function getUnderlyingPrice(address vToken) external view returns (uint256);
}

interface BoundValidatorInterface {
    function validatePriceWithAnchorPrice(
        address asset,
        uint256 reporterPrice,
        uint256 anchorPrice
    ) external view returns (bool);
}

// ============================================================
// FILE: contracts/interfaces/PublicResolverInterface.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
// SPDX-FileCopyrightText: 2022 Venus
pragma solidity ^0.8.25;

interface PublicResolverInterface {
    function addr(bytes32 node) external view returns (address payable);
}

// ============================================================
// FILE: contracts/interfaces/SIDRegistryInterface.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
// SPDX-FileCopyrightText: 2022 Venus
pragma solidity ^0.8.25;

interface SIDRegistryInterface {
    function resolver(bytes32 node) external view returns (address);
}

// ============================================================
// FILE: contracts/interfaces/VBep20Interface.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface VBep20Interface is IERC20Metadata {
    /**
     * @notice Underlying asset for this VToken
     */
    function underlying() external view returns (address);
}

// ============================================================
// FILE: contracts/lib/Transient.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

library Transient {
    /**
     * @notice Cache the asset price into transient storage
     * @param key address of the asset
     * @param value asset price
     */
    function cachePrice(bytes32 cacheSlot, address key, uint256 value) internal {
        bytes32 slot = keccak256(abi.encode(cacheSlot, key));
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }

    /**
     * @notice Read cached price from transient storage
     * @param key address of the asset
     * @return value cached asset price
     */
    function readCachedPrice(bytes32 cacheSlot, address key) internal view returns (uint256 value) {
        bytes32 slot = keccak256(abi.encode(cacheSlot, key));
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }
}

// ============================================================
// FILE: contracts/oracles/AnkrBNBOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IAnkrBNB } from "../interfaces/IAnkrBNB.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";

/**
 * @title AnkrBNBOracle
 * @author Venus
 * @notice This oracle fetches the price of ankrBNB asset
 */
contract AnkrBNBOracle is CorrelatedTokenOracle {
    /// @notice This is used as token address of BNB on BSC
    address public constant NATIVE_TOKEN_ADDR = 0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB;

    /// @notice Constructor for the implementation contract.
    constructor(
        address ankrBNB,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            ankrBNB,
            NATIVE_TOKEN_ADDR,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {}

    /**
     * @notice Fetches the amount of BNB for 1 ankrBNB
     * @return amount The amount of BNB for ankrBNB
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return IAnkrBNB(CORRELATED_TOKEN).sharesToBonds(EXP_SCALE);
    }
}

// ============================================================
// FILE: contracts/oracles/AsBNBOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IAsBNB } from "../interfaces/IAsBNB.sol";
import { IAsBNBMinter } from "../interfaces/IAsBNBMinter.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";

/**
 * @title asBNBOracle
 * @author Venus
 * @notice This oracle fetches the price of asBNB asset
 */
contract AsBNBOracle is CorrelatedTokenOracle {
    /// @notice Constructor for the implementation contract.
    constructor(
        address asBNB,
        address slisBNB,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            asBNB,
            slisBNB,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {}

    /**
     * @notice Fetches the amount of slisBNB for 1 asBNB
     * @return price The amount of slisBNB for asBNB
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        IAsBNBMinter minter = IAsBNBMinter(IAsBNB(CORRELATED_TOKEN).minter());
        return minter.convertToTokens(EXP_SCALE);
    }
}

// ============================================================
// FILE: contracts/oracles/BinanceOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../interfaces/VBep20Interface.sol";
import "../interfaces/SIDRegistryInterface.sol";
import "../interfaces/FeedRegistryInterface.sol";
import "../interfaces/PublicResolverInterface.sol";
import "../interfaces/OracleInterface.sol";
import "@venusprotocol/governance-contracts/contracts/Governance/AccessControlledV8.sol";
import "../interfaces/OracleInterface.sol";

/**
 * @title BinanceOracle
 * @author Venus
 * @notice This oracle fetches price of assets from Binance.
 */
contract BinanceOracle is AccessControlledV8, OracleInterface {
    /// @notice Used to fetch feed registry address.
    address public sidRegistryAddress;

    /// @notice Set this as asset address for BNB. This is the underlying address for vBNB
    address public constant BNB_ADDR = 0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB;

    /// @notice Max stale period configuration for assets
    mapping(string => uint256) public maxStalePeriod;

    /// @notice Override symbols to be compatible with Binance feed registry
    mapping(string => string) public symbols;

    /// @notice Used to fetch price of assets used directly when space ID is not supported by current chain.
    address public feedRegistryAddress;

    /// @notice Emits when asset stale period is updated.
    event MaxStalePeriodAdded(string indexed asset, uint256 maxStalePeriod);

    /// @notice Emits when symbol of the asset is updated.
    event SymbolOverridden(string indexed symbol, string overriddenSymbol);

    /// @notice Emits when address of feed registry is updated.
    event FeedRegistryUpdated(address indexed oldFeedRegistry, address indexed newFeedRegistry);

    /**
     * @notice Checks whether an address is null or not
     */
    modifier notNullAddress(address someone) {
        if (someone == address(0)) revert("can't be zero address");
        _;
    }

    /// @notice Constructor for the implementation contract.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Sets the contracts required to fetch prices
     * @param _sidRegistryAddress Address of SID registry
     * @param _acm Address of the access control manager contract
     */
    function initialize(address _sidRegistryAddress, address _acm) external initializer {
        sidRegistryAddress = _sidRegistryAddress;
        __AccessControlled_init(_acm);
    }

    /**
     * @notice Used to set the max stale period of an asset
     * @param symbol The symbol of the asset
     * @param _maxStalePeriod The max stake period
     */
    function setMaxStalePeriod(string memory symbol, uint256 _maxStalePeriod) external {
        _checkAccessAllowed("setMaxStalePeriod(string,uint256)");
        if (_maxStalePeriod == 0) revert("stale period can't be zero");
        if (bytes(symbol).length == 0) revert("symbol cannot be empty");

        maxStalePeriod[symbol] = _maxStalePeriod;
        emit MaxStalePeriodAdded(symbol, _maxStalePeriod);
    }

    /**
     * @notice Used to override a symbol when fetching price
     * @param symbol The symbol to override
     * @param overrideSymbol The symbol after override
     */
    function setSymbolOverride(string calldata symbol, string calldata overrideSymbol) external {
        _checkAccessAllowed("setSymbolOverride(string,string)");
        if (bytes(symbol).length == 0) revert("symbol cannot be empty");

        symbols[symbol] = overrideSymbol;
        emit SymbolOverridden(symbol, overrideSymbol);
    }

    /**
     * @notice Used to set feed registry address when current chain does not support space ID.
     * @param newfeedRegistryAddress Address of new feed registry.
     */
    function setFeedRegistryAddress(
        address newfeedRegistryAddress
    ) external notNullAddress(newfeedRegistryAddress) onlyOwner {
        if (sidRegistryAddress != address(0)) revert("sidRegistryAddress must be zero");
        emit FeedRegistryUpdated(feedRegistryAddress, newfeedRegistryAddress);
        feedRegistryAddress = newfeedRegistryAddress;
    }

    /**
     * @notice Uses Space ID to fetch the feed registry address
     * @return feedRegistryAddress Address of binance oracle feed registry.
     */
    function getFeedRegistryAddress() public view returns (address) {
        bytes32 nodeHash = 0x94fe3821e0768eb35012484db4df61890f9a6ca5bfa984ef8ff717e73139faff;

        SIDRegistryInterface sidRegistry = SIDRegistryInterface(sidRegistryAddress);
        address publicResolverAddress = sidRegistry.resolver(nodeHash);
        PublicResolverInterface publicResolver = PublicResolverInterface(publicResolverAddress);

        return publicResolver.addr(nodeHash);
    }

    /**
     * @notice Gets the price of a asset from the binance oracle
     * @param asset Address of the asset
     * @return Price in USD
     */
    function getPrice(address asset) public view returns (uint256) {
        string memory symbol;
        uint256 decimals;

        if (asset == BNB_ADDR) {
            symbol = "BNB";
            decimals = 18;
        } else {
            IERC20Metadata token = IERC20Metadata(asset);
            symbol = token.symbol();
            decimals = token.decimals();
        }

        string memory overrideSymbol = symbols[symbol];

        if (bytes(overrideSymbol).length != 0) {
            symbol = overrideSymbol;
        }

        return _getPrice(symbol, decimals);
    }

    function _getPrice(string memory symbol, uint256 decimals) internal view returns (uint256) {
        FeedRegistryInterface feedRegistry;

        if (sidRegistryAddress != address(0)) {
            // If sidRegistryAddress is available, fetch feedRegistryAddress from sidRegistry
            feedRegistry = FeedRegistryInterface(getFeedRegistryAddress());
        } else {
            // Use feedRegistry directly if sidRegistryAddress is not available
            feedRegistry = FeedRegistryInterface(feedRegistryAddress);
        }

        (, int256 answer, , uint256 updatedAt, ) = feedRegistry.latestRoundDataByName(symbol, "USD");
        if (answer <= 0) revert("invalid binance oracle price");
        if (block.timestamp < updatedAt) revert("updatedAt exceeds block time");

        uint256 deltaTime;
        unchecked {
            deltaTime = block.timestamp - updatedAt;
        }
        if (deltaTime > maxStalePeriod[symbol]) revert("binance oracle price expired");

        uint256 decimalDelta = feedRegistry.decimalsByName(symbol, "USD");
        return (uint256(answer) * (10 ** (18 - decimalDelta))) * (10 ** (18 - decimals));
    }
}

// ============================================================
// FILE: contracts/oracles/BNBxOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IStaderStakeManager } from "../interfaces/IStaderStakeManager.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";

/**
 * @title BNBxOracle
 * @author Venus
 * @notice This oracle fetches the price of BNBx asset
 */
contract BNBxOracle is CorrelatedTokenOracle {
    /// @notice This is used as token address of BNB on BSC
    address public constant NATIVE_TOKEN_ADDR = 0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB;

    /// @notice Address of StakeManager
    IStaderStakeManager public immutable STAKE_MANAGER;

    /// @notice Constructor for the implementation contract.
    constructor(
        address stakeManager,
        address bnbx,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            bnbx,
            NATIVE_TOKEN_ADDR,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {
        ensureNonzeroAddress(stakeManager);
        STAKE_MANAGER = IStaderStakeManager(stakeManager);
    }

    /**
     * @notice Fetches the amount of BNB for 1 BNBx
     * @return price The amount of BNB for BNBx
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return STAKE_MANAGER.convertBnbXToBnb(EXP_SCALE);
    }
}

// ============================================================
// FILE: contracts/oracles/BoundValidator.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import "../interfaces/VBep20Interface.sol";
import "../interfaces/OracleInterface.sol";
import "@venusprotocol/governance-contracts/contracts/Governance/AccessControlledV8.sol";

/**
 * @title BoundValidator
 * @author Venus
 * @notice The BoundValidator contract is used to validate prices fetched from two different sources.
 * Each asset has an upper and lower bound ratio set in the config. In order for a price to be valid
 * it must fall within this range of the validator price.
 */
contract BoundValidator is AccessControlledV8, BoundValidatorInterface {
    struct ValidateConfig {
        /// @notice asset address
        address asset;
        /// @notice Upper bound of deviation between reported price and anchor price,
        /// beyond which the reported price will be invalidated
        uint256 upperBoundRatio;
        /// @notice Lower bound of deviation between reported price and anchor price,
        /// below which the reported price will be invalidated
        uint256 lowerBoundRatio;
    }

    /// @notice validation configs by asset
    mapping(address => ValidateConfig) public validateConfigs;

    /// @notice Emit this event when new validation configs are added
    event ValidateConfigAdded(address indexed asset, uint256 indexed upperBound, uint256 indexed lowerBound);

    /// @notice Constructor for the implementation contract. Sets immutable variables.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the owner of the contract
     * @param accessControlManager_ Address of the access control manager contract
     */
    function initialize(address accessControlManager_) external initializer {
        __AccessControlled_init(accessControlManager_);
    }

    /**
     * @notice Add multiple validation configs at the same time
     * @param configs Array of validation configs
     * @custom:access Only Governance
     * @custom:error Zero length error is thrown if length of the config array is 0
     * @custom:event Emits ValidateConfigAdded for each validation config that is successfully set
     */
    function setValidateConfigs(ValidateConfig[] memory configs) external {
        uint256 length = configs.length;
        if (length == 0) revert("invalid validate config length");
        for (uint256 i; i < length; ++i) {
            setValidateConfig(configs[i]);
        }
    }

    /**
     * @notice Add a single validation config
     * @param config Validation config struct
     * @custom:access Only Governance
     * @custom:error Null address error is thrown if asset address is null
     * @custom:error Range error thrown if bound ratio is not positive
     * @custom:error Range error thrown if lower bound is greater than or equal to upper bound
     * @custom:event Emits ValidateConfigAdded when a validation config is successfully set
     */
    function setValidateConfig(ValidateConfig memory config) public {
        _checkAccessAllowed("setValidateConfig(ValidateConfig)");

        if (config.asset == address(0)) revert("asset can't be zero address");
        if (config.upperBoundRatio == 0 || config.lowerBoundRatio == 0) revert("bound must be positive");
        if (config.upperBoundRatio <= config.lowerBoundRatio) revert("upper bound must be higher than lowner bound");
        validateConfigs[config.asset] = config;
        emit ValidateConfigAdded(config.asset, config.upperBoundRatio, config.lowerBoundRatio);
    }

    /**
     * @notice Test reported asset price against anchor price
     * @param asset asset address
     * @param reportedPrice The price to be tested
     * @custom:error Missing error thrown if asset config is not set
     * @custom:error Price error thrown if anchor price is not valid
     */
    function validatePriceWithAnchorPrice(
        address asset,
        uint256 reportedPrice,
        uint256 anchorPrice
    ) public view virtual override returns (bool) {
        if (validateConfigs[asset].upperBoundRatio == 0) revert("validation config not exist");
        if (anchorPrice == 0) revert("anchor price is not valid");
        return _isWithinAnchor(asset, reportedPrice, anchorPrice);
    }

    /**
     * @notice Test whether the reported price is within the valid bounds
     * @param asset Asset address
     * @param reportedPrice The price to be tested
     * @param anchorPrice The reported price must be within the the valid bounds of this price
     */
    function _isWithinAnchor(address asset, uint256 reportedPrice, uint256 anchorPrice) private view returns (bool) {
        if (reportedPrice != 0) {
            // we need to multiply anchorPrice by 1e18 to make the ratio 18 decimals
            uint256 anchorRatio = (anchorPrice * 1e18) / reportedPrice;
            uint256 upperBoundAnchorRatio = validateConfigs[asset].upperBoundRatio;
            uint256 lowerBoundAnchorRatio = validateConfigs[asset].lowerBoundRatio;
            return anchorRatio <= upperBoundAnchorRatio && anchorRatio >= lowerBoundAnchorRatio;
        }
        return false;
    }

    // BoundValidator is to get inherited, so it's a good practice to add some storage gaps like
    // OpenZepplin proposed in their contracts: https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    // solhint-disable-next-line
    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/oracles/ChainlinkOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import "../interfaces/VBep20Interface.sol";
import "../interfaces/OracleInterface.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@venusprotocol/governance-contracts/contracts/Governance/AccessControlledV8.sol";

/**
 * @title ChainlinkOracle
 * @author Venus
 * @notice This oracle fetches prices of assets from the Chainlink oracle.
 */
contract ChainlinkOracle is AccessControlledV8, OracleInterface {
    struct TokenConfig {
        /// @notice Underlying token address, which can't be a null address
        /// @notice Used to check if a token is supported
        /// @notice 0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB address for native tokens
        ///         (e.g BNB for BNB chain, ETH for Ethereum network)
        address asset;
        /// @notice Chainlink feed address
        address feed;
        /// @notice Price expiration period of this asset
        uint256 maxStalePeriod;
    }

    /// @notice Set this as asset address for native token on each chain.
    /// This is the underlying address for vBNB on BNB chain or an underlying asset for a native market on any chain.
    address public constant NATIVE_TOKEN_ADDR = 0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB;

    /// @notice Manually set an override price, useful under extenuating conditions such as price feed failure
    mapping(address => uint256) public prices;

    /// @notice Token config by assets
    mapping(address => TokenConfig) public tokenConfigs;

    /// @notice Emit when a price is manually set
    event PricePosted(address indexed asset, uint256 previousPriceMantissa, uint256 newPriceMantissa);

    /// @notice Emit when a token config is added
    event TokenConfigAdded(address indexed asset, address feed, uint256 maxStalePeriod);

    modifier notNullAddress(address someone) {
        if (someone == address(0)) revert("can't be zero address");
        _;
    }

    /// @notice Constructor for the implementation contract.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the owner of the contract
     * @param accessControlManager_ Address of the access control manager contract
     */
    function initialize(address accessControlManager_) external initializer {
        __AccessControlled_init(accessControlManager_);
    }

    /**
     * @notice Manually set the price of a given asset
     * @param asset Asset address
     * @param price Asset price in 18 decimals
     * @custom:access Only Governance
     * @custom:event Emits PricePosted event on successfully setup of asset price
     */
    function setDirectPrice(address asset, uint256 price) external notNullAddress(asset) {
        _checkAccessAllowed("setDirectPrice(address,uint256)");

        uint256 previousPriceMantissa = prices[asset];
        prices[asset] = price;
        emit PricePosted(asset, previousPriceMantissa, price);
    }

    /**
     * @notice Add multiple token configs at the same time
     * @param tokenConfigs_ config array
     * @custom:access Only Governance
     * @custom:error Zero length error thrown, if length of the array in parameter is 0
     */
    function setTokenConfigs(TokenConfig[] memory tokenConfigs_) external {
        if (tokenConfigs_.length == 0) revert("length can't be 0");
        uint256 numTokenConfigs = tokenConfigs_.length;
        for (uint256 i; i < numTokenConfigs; ++i) {
            setTokenConfig(tokenConfigs_[i]);
        }
    }

    /**
     * @notice Add single token config. asset & feed cannot be null addresses and maxStalePeriod must be positive
     * @param tokenConfig Token config struct
     * @custom:access Only Governance
     * @custom:error NotNullAddress error is thrown if asset address is null
     * @custom:error NotNullAddress error is thrown if token feed address is null
     * @custom:error Range error is thrown if maxStale period of token is not greater than zero
     * @custom:event Emits TokenConfigAdded event on successfully setting of the token config
     */
    function setTokenConfig(
        TokenConfig memory tokenConfig
    ) public notNullAddress(tokenConfig.asset) notNullAddress(tokenConfig.feed) {
        _checkAccessAllowed("setTokenConfig(TokenConfig)");

        if (tokenConfig.maxStalePeriod == 0) revert("stale period can't be zero");
        tokenConfigs[tokenConfig.asset] = tokenConfig;
        emit TokenConfigAdded(tokenConfig.asset, tokenConfig.feed, tokenConfig.maxStalePeriod);
    }

    /**
     * @notice Gets the price of a asset from the chainlink oracle
     * @param asset Address of the asset
     * @return Price in USD from Chainlink or a manually set price for the asset
     */
    function getPrice(address asset) public view virtual returns (uint256) {
        uint256 decimals;

        if (asset == NATIVE_TOKEN_ADDR) {
            decimals = 18;
        } else {
            IERC20Metadata token = IERC20Metadata(asset);
            decimals = token.decimals();
        }

        return _getPriceInternal(asset, decimals);
    }

    /**
     * @notice Gets the Chainlink price for a given asset
     * @param asset address of the asset
     * @param decimals decimals of the asset
     * @return price Asset price in USD or a manually set price of the asset
     */
    function _getPriceInternal(address asset, uint256 decimals) internal view returns (uint256 price) {
        uint256 tokenPrice = prices[asset];
        if (tokenPrice != 0) {
            price = tokenPrice;
        } else {
            price = _getChainlinkPrice(asset);
        }

        uint256 decimalDelta = 18 - decimals;
        return price * (10 ** decimalDelta);
    }

    /**
     * @notice Get the Chainlink price for an asset, revert if token config doesn't exist
     * @dev The precision of the price feed is used to ensure the returned price has 18 decimals of precision
     * @param asset Address of the asset
     * @return price Price in USD, with 18 decimals of precision
     * @custom:error NotNullAddress error is thrown if the asset address is null
     * @custom:error Price error is thrown if the Chainlink price of asset is not greater than zero
     * @custom:error Timing error is thrown if current timestamp is less than the last updatedAt timestamp
     * @custom:error Timing error is thrown if time difference between current time and last updated time
     * is greater than maxStalePeriod
     */
    function _getChainlinkPrice(
        address asset
    ) private view notNullAddress(tokenConfigs[asset].asset) returns (uint256) {
        TokenConfig memory tokenConfig = tokenConfigs[asset];
        AggregatorV3Interface feed = AggregatorV3Interface(tokenConfig.feed);

        // note: maxStalePeriod cannot be 0
        uint256 maxStalePeriod = tokenConfig.maxStalePeriod;

        // Chainlink USD-denominated feeds store answers at 8 decimals, mostly
        uint256 decimalDelta = 18 - feed.decimals();

        (, int256 answer, , uint256 updatedAt, ) = feed.latestRoundData();
        if (answer <= 0) revert("chainlink price must be positive");
        if (block.timestamp < updatedAt) revert("updatedAt exceeds block time");

        uint256 deltaTime;
        unchecked {
            deltaTime = block.timestamp - updatedAt;
        }

        if (deltaTime > maxStalePeriod) revert("chainlink price expired");

        return uint256(answer) * (10 ** decimalDelta);
    }
}

// ============================================================
// FILE: contracts/oracles/common/CorrelatedTokenOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { OracleInterface, ResilientOracleInterface } from "../../interfaces/OracleInterface.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { SECONDS_PER_YEAR } from "@venusprotocol/solidity-utilities/contracts/constants.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { ICappedOracle } from "../../interfaces/ICappedOracle.sol";
import { IAccessControlManagerV8 } from "@venusprotocol/governance-contracts/contracts/Governance/IAccessControlManagerV8.sol";

/**
 * @title CorrelatedTokenOracle
 * @notice This oracle fetches the price of a token that is correlated to another token.
 */
abstract contract CorrelatedTokenOracle is OracleInterface, ICappedOracle {
    /// @notice Address of the correlated token
    address public immutable CORRELATED_TOKEN;

    /// @notice Address of the underlying token
    address public immutable UNDERLYING_TOKEN;

    /// @notice Address of Resilient Oracle
    ResilientOracleInterface public immutable RESILIENT_ORACLE;

    /// @notice Address of the AccessControlManager contract
    IAccessControlManagerV8 public immutable ACCESS_CONTROL_MANAGER;

    //// @notice Growth rate percentage in seconds. Ex: 1e18 is 100%
    uint256 public growthRatePerSecond;

    /// @notice Snapshot update interval
    uint256 public snapshotInterval;

    /// @notice Last stored snapshot maximum exchange rate
    uint256 public snapshotMaxExchangeRate;

    /// @notice Last stored snapshot timestamp
    uint256 public snapshotTimestamp;

    /// @notice Gap to add when updating the snapshot
    uint256 public snapshotGap;

    /// @notice Emitted when the snapshot is updated
    event SnapshotUpdated(uint256 indexed maxExchangeRate, uint256 indexed timestamp);

    /// @notice Emitted when the growth rate is updated
    event GrowthRateUpdated(
        uint256 indexed oldGrowthRatePerSecond,
        uint256 indexed newGrowthRatePerSecond,
        uint256 indexed oldSnapshotInterval,
        uint256 newSnapshotInterval
    );

    /// @notice Emitted when the snapshot gap is updated
    event SnapshotGapUpdated(uint256 indexed oldSnapshotGap, uint256 indexed newSnapshotGap);

    /// @notice Thrown if the token address is invalid
    error InvalidTokenAddress();

    /// @notice Thrown if the growth rate is invalid
    error InvalidGrowthRate();

    /// @notice Thrown if the initial snapshot is invalid
    error InvalidInitialSnapshot();

    /// @notice Thrown if the max snapshot exchange rate is invalid
    error InvalidSnapshotMaxExchangeRate();

    /// @notice @notice Thrown when the action is prohibited by AccessControlManager
    error Unauthorized(address sender, address calledContract, string methodSignature);

    /**
     * @notice Constructor for the implementation contract.
     * @custom:error InvalidGrowthRate error is thrown if the growth rate is invalid
     * @custom:error InvalidInitialSnapshot error is thrown if the initial snapshot values are invalid
     */
    constructor(
        address _correlatedToken,
        address _underlyingToken,
        address _resilientOracle,
        uint256 _annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 _initialSnapshotMaxExchangeRate,
        uint256 _initialSnapshotTimestamp,
        address _accessControlManager,
        uint256 _snapshotGap
    ) {
        growthRatePerSecond = _annualGrowthRate / SECONDS_PER_YEAR;

        if ((growthRatePerSecond == 0 && _snapshotInterval > 0) || (growthRatePerSecond > 0 && _snapshotInterval == 0))
            revert InvalidGrowthRate();

        if ((_initialSnapshotMaxExchangeRate == 0 || _initialSnapshotTimestamp == 0) && _snapshotInterval > 0) {
            revert InvalidInitialSnapshot();
        }

        ensureNonzeroAddress(_correlatedToken);
        ensureNonzeroAddress(_underlyingToken);
        ensureNonzeroAddress(_resilientOracle);
        ensureNonzeroAddress(_accessControlManager);

        CORRELATED_TOKEN = _correlatedToken;
        UNDERLYING_TOKEN = _underlyingToken;
        RESILIENT_ORACLE = ResilientOracleInterface(_resilientOracle);
        snapshotInterval = _snapshotInterval;

        snapshotMaxExchangeRate = _initialSnapshotMaxExchangeRate;
        snapshotTimestamp = _initialSnapshotTimestamp;
        snapshotGap = _snapshotGap;

        ACCESS_CONTROL_MANAGER = IAccessControlManagerV8(_accessControlManager);
    }

    /**
     * @notice Directly sets the snapshot exchange rate and timestamp
     * @param _snapshotMaxExchangeRate The exchange rate to set
     * @param _snapshotTimestamp The timestamp to set
     * @custom:event Emits SnapshotUpdated event on successful update of the snapshot
     */
    function setSnapshot(uint256 _snapshotMaxExchangeRate, uint256 _snapshotTimestamp) external {
        _checkAccessAllowed("setSnapshot(uint256,uint256)");

        snapshotMaxExchangeRate = _snapshotMaxExchangeRate;
        snapshotTimestamp = _snapshotTimestamp;

        emit SnapshotUpdated(snapshotMaxExchangeRate, snapshotTimestamp);
    }

    /**
     * @notice Sets the growth rate and snapshot interval
     * @param _annualGrowthRate The annual growth rate to set
     * @param _snapshotInterval The snapshot interval to set
     * @custom:error InvalidGrowthRate error is thrown if the growth rate is invalid
     * @custom:event Emits GrowthRateUpdated event on successful update of the growth rate
     */
    function setGrowthRate(uint256 _annualGrowthRate, uint256 _snapshotInterval) external {
        _checkAccessAllowed("setGrowthRate(uint256,uint256)");
        uint256 oldGrowthRatePerSecond = growthRatePerSecond;

        growthRatePerSecond = _annualGrowthRate / SECONDS_PER_YEAR;

        if ((growthRatePerSecond == 0 && _snapshotInterval > 0) || (growthRatePerSecond > 0 && _snapshotInterval == 0))
            revert InvalidGrowthRate();

        emit GrowthRateUpdated(oldGrowthRatePerSecond, growthRatePerSecond, snapshotInterval, _snapshotInterval);

        snapshotInterval = _snapshotInterval;
    }

    /**
     * @notice Sets the snapshot gap
     * @param _snapshotGap The snapshot gap to set
     * @custom:event Emits SnapshotGapUpdated event on successful update of the snapshot gap
     */
    function setSnapshotGap(uint256 _snapshotGap) external {
        _checkAccessAllowed("setSnapshotGap(uint256)");

        emit SnapshotGapUpdated(snapshotGap, _snapshotGap);

        snapshotGap = _snapshotGap;
    }

    /**
     * @notice Returns if the price is capped
     * @return isCapped Boolean indicating if the price is capped
     */
    function isCapped() external view virtual returns (bool) {
        if (snapshotInterval == 0) {
            return false;
        }

        uint256 maxAllowedExchangeRate = getMaxAllowedExchangeRate();
        if (maxAllowedExchangeRate == 0) {
            return false;
        }

        uint256 exchangeRate = getUnderlyingAmount();

        return exchangeRate > maxAllowedExchangeRate;
    }

    /**
     * @notice Updates the snapshot price and timestamp
     * @custom:event Emits SnapshotUpdated event on successful update of the snapshot
     * @custom:error InvalidSnapshotMaxExchangeRate error is thrown if the max snapshot exchange rate is zero
     */
    function updateSnapshot() public override {
        if (block.timestamp - snapshotTimestamp < snapshotInterval || snapshotInterval == 0) return;

        uint256 exchangeRate = getUnderlyingAmount();
        uint256 maxAllowedExchangeRate = getMaxAllowedExchangeRate();

        snapshotMaxExchangeRate =
            (exchangeRate > maxAllowedExchangeRate ? maxAllowedExchangeRate : exchangeRate) +
            snapshotGap;
        snapshotTimestamp = block.timestamp;

        if (snapshotMaxExchangeRate == 0) revert InvalidSnapshotMaxExchangeRate();

        RESILIENT_ORACLE.updateAssetPrice(UNDERLYING_TOKEN);
        emit SnapshotUpdated(snapshotMaxExchangeRate, snapshotTimestamp);
    }

    /**
     * @notice Fetches the price of the token
     * @param asset Address of the token
     * @return price The price of the token in scaled decimal places. It can be capped
     * to a maximum value taking into account the growth rate
     * @custom:error InvalidTokenAddress error is thrown if the token address is invalid
     */
    function getPrice(address asset) public view override returns (uint256) {
        if (asset != CORRELATED_TOKEN) revert InvalidTokenAddress();

        uint256 exchangeRate = getUnderlyingAmount();

        if (snapshotInterval == 0) {
            return _calculatePrice(exchangeRate);
        }

        uint256 maxAllowedExchangeRate = getMaxAllowedExchangeRate();

        uint256 finalExchangeRate = (exchangeRate > maxAllowedExchangeRate && maxAllowedExchangeRate != 0)
            ? maxAllowedExchangeRate
            : exchangeRate;

        return _calculatePrice(finalExchangeRate);
    }

    /**
     * @notice Gets the maximum allowed exchange rate for token
     * @return maxExchangeRate Maximum allowed exchange rate
     */
    function getMaxAllowedExchangeRate() public view returns (uint256) {
        uint256 timeElapsed = block.timestamp - snapshotTimestamp;
        uint256 maxExchangeRate = snapshotMaxExchangeRate +
            (snapshotMaxExchangeRate * growthRatePerSecond * timeElapsed) /
            1e18;
        return maxExchangeRate;
    }

    /**
     * @notice Gets the underlying amount for correlated token
     * @return underlyingAmount Amount of underlying token
     */
    function getUnderlyingAmount() public view virtual returns (uint256);

    /**
     * @notice Fetches price of the token based on an underlying exchange rate
     * @param exchangeRate The underlying exchange rate to use
     * @return price The price of the token in scaled decimal places
     */
    function _calculatePrice(uint256 exchangeRate) internal view returns (uint256) {
        uint256 underlyingUSDPrice = RESILIENT_ORACLE.getPrice(UNDERLYING_TOKEN);

        IERC20Metadata token = IERC20Metadata(CORRELATED_TOKEN);
        uint256 decimals = token.decimals();

        return (exchangeRate * underlyingUSDPrice) / (10 ** decimals);
    }

    /**
     * @notice Reverts if the call is not allowed by AccessControlManager
     * @param signature Method signature
     * @custom:error Unauthorized error is thrown if the call is not allowed
     */
    function _checkAccessAllowed(string memory signature) internal view {
        bool isAllowedToCall = ACCESS_CONTROL_MANAGER.isAllowedToCall(msg.sender, signature);

        if (!isAllowedToCall) {
            revert Unauthorized(msg.sender, address(this), signature);
        }
    }
}

// ============================================================
// FILE: contracts/oracles/ERC4626Oracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IERC4626 } from "../interfaces/IERC4626.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";

/**
 * @title ERC4626Oracle
 * @author Venus
 * @notice This oracle fetches the price of ERC4626 tokens
 */
contract ERC4626Oracle is CorrelatedTokenOracle {
    uint256 public immutable ONE_CORRELATED_TOKEN;

    /// @notice Constructor for the implementation contract.
    constructor(
        address correlatedToken,
        address underlyingToken,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            correlatedToken,
            underlyingToken,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {
        ONE_CORRELATED_TOKEN = 10 ** IERC4626(correlatedToken).decimals();
    }

    /**
     * @notice Fetches the amount of underlying token for 1 correlated token
     * @return amount The amount of underlying token for correlated token
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return IERC4626(CORRELATED_TOKEN).convertToAssets(ONE_CORRELATED_TOKEN);
    }
}

// ============================================================
// FILE: contracts/oracles/EtherfiAccountantOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { IAccountant } from "../interfaces/IAccountant.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";

/**
 * @title EtherfiAccountantOracle
 * @author Venus
 * @notice This oracle fetches the price of any Ether.fi asset that uses
 * Accountant contracts to derive the underlying price
 */
contract EtherfiAccountantOracle is CorrelatedTokenOracle {
    /// @notice Address of Accountant
    IAccountant public immutable ACCOUNTANT;

    /// @notice Constructor for the implementation contract.
    constructor(
        address accountant,
        address correlatedToken,
        address underlyingToken,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            correlatedToken,
            underlyingToken,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {
        ensureNonzeroAddress(accountant);
        ACCOUNTANT = IAccountant(accountant);
    }

    /**
     * @notice Fetches the conversion rate from the ACCOUNTANT contract
     * @return amount Amount of WBTC
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return ACCOUNTANT.getRateSafe();
    }
}

// ============================================================
// FILE: contracts/oracles/mocks/MockBinanceOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { OracleInterface } from "../../interfaces/OracleInterface.sol";

contract MockBinanceOracle is OwnableUpgradeable, OracleInterface {
    mapping(address => uint256) public assetPrices;

    constructor() {}

    function initialize() public initializer {}

    function setPrice(address asset, uint256 price) external {
        assetPrices[asset] = price;
    }

    function getPrice(address token) public view returns (uint256) {
        return assetPrices[token];
    }
}

// ============================================================
// FILE: contracts/oracles/mocks/MockChainlinkOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { OracleInterface } from "../../interfaces/OracleInterface.sol";

contract MockChainlinkOracle is OwnableUpgradeable, OracleInterface {
    mapping(address => uint256) public assetPrices;

    //set price in 6 decimal precision
    constructor() {}

    function initialize() public initializer {
        __Ownable_init();
    }

    function setPrice(address asset, uint256 price) external {
        assetPrices[asset] = price;
    }

    //https://compound.finance/docs/prices
    function getPrice(address token) public view returns (uint256) {
        return assetPrices[token];
    }
}

// ============================================================
// FILE: contracts/oracles/OneJumpOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { OracleInterface } from "../interfaces/OracleInterface.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @title OneJumpOracle
 * @author Venus
 * @notice This oracle fetches the price of an asset in through an intermediate asset
 */
contract OneJumpOracle is CorrelatedTokenOracle {
    /// @notice Address of the intermediate oracle
    OracleInterface public immutable INTERMEDIATE_ORACLE;

    /// @notice Constructor for the implementation contract.
    constructor(
        address correlatedToken,
        address underlyingToken,
        address resilientOracle,
        address intermediateOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            correlatedToken,
            underlyingToken,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {
        ensureNonzeroAddress(intermediateOracle);
        INTERMEDIATE_ORACLE = OracleInterface(intermediateOracle);
    }

    /**
     * @notice Fetches the amount of the underlying token for 1 correlated token, using the intermediate oracle
     * @return amount The amount of the underlying token for 1 correlated token scaled by the underlying token decimals
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        uint256 underlyingDecimals = IERC20Metadata(UNDERLYING_TOKEN).decimals();
        uint256 correlatedDecimals = IERC20Metadata(CORRELATED_TOKEN).decimals();

        uint256 underlyingAmount = INTERMEDIATE_ORACLE.getPrice(CORRELATED_TOKEN);

        return (underlyingAmount * (10 ** correlatedDecimals)) / (10 ** (36 - underlyingDecimals));
    }
}

// ============================================================
// FILE: contracts/oracles/PendleOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IPendlePtOracle } from "../interfaces/IPendlePtOracle.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { ensureNonzeroAddress, ensureNonzeroValue } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @title PendleOracle
 * @author Venus
 * @notice This oracle fetches the price of a pendle token
 * @dev As a base price the oracle uses either the price of the Pendle
 * market's asset (in this case PT_TO_ASSET rate should be used) or
 * the price of the Pendle market's interest bearing token (e.g. wstETH
 * for stETH; in this case PT_TO_SY rate should be used). Technically,
 * interest bearing token is different from standardized yield (SY) token,
 * but since SY is a wrapper around an interest bearing token, we can safely
 * assume the prices of the two are equal. This is not always true for asset
 * price though: using PT_TO_ASSET rate assumes that the yield token can
 * be seamlessly redeemed for the underlying asset. In reality, this might
 * not always be the case. For more details, see
 * https://docs.pendle.finance/Developers/Contracts/StandardizedYield
 */
contract PendleOracle is CorrelatedTokenOracle {
    struct ConstructorParams {
        /// @notice Pendle market
        address market;
        /// @notice Pendle oracle
        address ptOracle;
        /// @notice Either PT_TO_ASSET or PT_TO_SY
        RateKind rateKind;
        /// @notice Pendle PT token
        address ptToken;
        /// @notice Underlying token, can be either the market's asset or the interest bearing token
        address underlyingToken;
        /// @notice Resilient oracle to get the underlying token price from
        address resilientOracle;
        /// @notice TWAP duration to call Pendle oracle with
        uint32 twapDuration;
        /// @notice Annual growth rate of the underlying token
        uint256 annualGrowthRate;
        /// @notice Snapshot interval for the oracle
        uint256 snapshotInterval;
        /// @notice Initial exchange rate of the underlying token
        uint256 initialSnapshotMaxExchangeRate;
        /// @notice Initial timestamp of the underlying token
        uint256 initialSnapshotTimestamp;
        /// @notice Access control manager
        address accessControlManager;
        /// @notice Gap to add when updating the snapshot
        uint256 snapshotGap;
    }

    /// @notice Which asset to use as a base for the returned PT
    /// price. Can be either a standardized yield token (SY), in
    /// this case PT/SY price is returned, or the Pendle
    /// market's asset directly.
    enum RateKind {
        PT_TO_ASSET,
        PT_TO_SY
    }

    /// @notice Address of the PT oracle
    IPendlePtOracle public immutable PT_ORACLE;

    /// @notice Whether to use PT/SY (standardized yield token) rate
    /// or PT/market asset rate
    RateKind public immutable RATE_KIND;

    /// @notice Address of the market
    address public immutable MARKET;

    /// @notice Twap duration for the oracle
    uint32 public immutable TWAP_DURATION;

    /// @notice Decimals of the underlying token
    /// @dev We make an assumption that the underlying decimals will
    /// not change throughout the lifetime of the Pendle market
    uint8 public immutable UNDERLYING_DECIMALS;

    /// @notice Thrown if the duration is invalid
    error InvalidDuration();

    /**
     * @notice Constructor for the implementation contract.
     * @custom:error InvalidDuration Thrown if the duration is invalid
     */
    constructor(
        ConstructorParams memory params
    )
        CorrelatedTokenOracle(
            params.ptToken,
            params.underlyingToken,
            params.resilientOracle,
            params.annualGrowthRate,
            params.snapshotInterval,
            params.initialSnapshotMaxExchangeRate,
            params.initialSnapshotTimestamp,
            params.accessControlManager,
            params.snapshotGap
        )
    {
        ensureNonzeroAddress(params.market);
        ensureNonzeroAddress(params.ptOracle);
        ensureNonzeroValue(params.twapDuration);

        MARKET = params.market;
        PT_ORACLE = IPendlePtOracle(params.ptOracle);
        RATE_KIND = params.rateKind;
        TWAP_DURATION = params.twapDuration;
        UNDERLYING_DECIMALS = IERC20Metadata(UNDERLYING_TOKEN).decimals();

        (bool increaseCardinalityRequired, , bool oldestObservationSatisfied) = PT_ORACLE.getOracleState(
            MARKET,
            TWAP_DURATION
        );
        if (increaseCardinalityRequired || !oldestObservationSatisfied) {
            revert InvalidDuration();
        }
    }

    /// @notice Fetches the amount of underlying token for 1 PT
    /// @return amount The amount of underlying token (either the market's asset
    /// or the yield token) for 1 PT, adjusted for decimals such that the result
    /// has the same precision as the underlying token
    function getUnderlyingAmount() public view override returns (uint256) {
        uint256 rate;
        if (RATE_KIND == RateKind.PT_TO_SY) {
            rate = PT_ORACLE.getPtToSyRate(MARKET, TWAP_DURATION);
        } else {
            rate = PT_ORACLE.getPtToAssetRate(MARKET, TWAP_DURATION);
        }
        return ((10 ** UNDERLYING_DECIMALS) * rate) / 1e18;
    }
}

// ============================================================
// FILE: contracts/oracles/SequencerChainlinkOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import { ChainlinkOracle } from "./ChainlinkOracle.sol";
import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

/**
    @title Sequencer Chain Link Oracle
    @notice Oracle to fetch price using chainlink oracles on L2s with sequencer
*/
contract SequencerChainlinkOracle is ChainlinkOracle {
    /// @notice L2 Sequencer feed
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    AggregatorV3Interface public immutable sequencer;

    /// @notice L2 Sequencer grace period
    uint256 public constant GRACE_PERIOD_TIME = 3600;

    /**
        @notice Contract constructor
        @param _sequencer L2 sequencer
        @custom:oz-upgrades-unsafe-allow constructor
    */
    constructor(AggregatorV3Interface _sequencer) ChainlinkOracle() {
        require(address(_sequencer) != address(0), "zero address");

        sequencer = _sequencer;
    }

    /// @inheritdoc ChainlinkOracle
    function getPrice(address asset) public view override returns (uint) {
        if (!isSequencerActive()) revert("L2 sequencer unavailable");
        return super.getPrice(asset);
    }

    function isSequencerActive() internal view returns (bool) {
        // answer from oracle is a variable with a value of either 1 or 0
        //  0: The sequencer is up
        //  1: The sequencer is down
        // startedAt: This timestamp indicates when the sequencer changed status
        (, int256 answer, uint256 startedAt, , ) = sequencer.latestRoundData();
        if (block.timestamp - startedAt <= GRACE_PERIOD_TIME || answer == 1) return false;
        return true;
    }
}

// ============================================================
// FILE: contracts/oracles/SFraxOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { ISFrax } from "../interfaces/ISFrax.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";

/**
 * @title SFraxOracle
 * @author Venus
 * @notice This oracle fetches the price of sFrax
 */
contract SFraxOracle is CorrelatedTokenOracle {
    /// @notice Constructor for the implementation contract.
    constructor(
        address sFrax,
        address frax,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            sFrax,
            frax,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {}

    /**
     * @notice Fetches the amount of FRAX for 1 sFrax
     * @return amount The amount of FRAX for sFrax
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return ISFrax(CORRELATED_TOKEN).convertToAssets(EXP_SCALE);
    }
}

// ============================================================
// FILE: contracts/oracles/SFrxETHOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { ISfrxEthFraxOracle } from "../interfaces/ISfrxEthFraxOracle.sol";
import { ensureNonzeroAddress, ensureNonzeroValue } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";
import { AccessControlledV8 } from "@venusprotocol/governance-contracts/contracts/Governance/AccessControlledV8.sol";
import { OracleInterface } from "../interfaces/OracleInterface.sol";

/**
 * @title SFrxETHOracle
 * @author Venus
 * @notice This oracle fetches the price of sfrxETH
 */
contract SFrxETHOracle is AccessControlledV8, OracleInterface {
    /// @notice Address of SfrxEthFraxOracle
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    ISfrxEthFraxOracle public immutable SFRXETH_FRAX_ORACLE;

    /// @notice Address of sfrxETH
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable SFRXETH;

    /// @notice Maximum allowed price difference
    uint256 public maxAllowedPriceDifference;

    /// @notice Emits when the maximum allowed price difference is updated
    event MaxAllowedPriceDifferenceUpdated(uint256 oldMaxAllowedPriceDifference, uint256 newMaxAllowedPriceDifference);

    /// @notice Thrown if the price data is invalid
    error BadPriceData();

    /// @notice Thrown if the price difference exceeds the allowed limit
    error PriceDifferenceExceeded();

    /// @notice Thrown if the token address is invalid
    error InvalidTokenAddress();

    /// @notice Constructor for the implementation contract.
    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @custom:error ZeroAddressNotAllowed is thrown when `_sfrxEthFraxOracle` or `_sfrxETH` are the zero address
    constructor(address _sfrxEthFraxOracle, address _sfrxETH) {
        ensureNonzeroAddress(_sfrxEthFraxOracle);
        ensureNonzeroAddress(_sfrxETH);

        SFRXETH_FRAX_ORACLE = ISfrxEthFraxOracle(_sfrxEthFraxOracle);
        SFRXETH = _sfrxETH;

        _disableInitializers();
    }

    /**
     * @notice Sets the contracts required to fetch prices
     * @param _acm Address of the access control manager contract
     * @param _maxAllowedPriceDifference Maximum allowed price difference
     * @custom:error ZeroValueNotAllowed is thrown if `_maxAllowedPriceDifference` is zero
     */
    function initialize(address _acm, uint256 _maxAllowedPriceDifference) external initializer {
        ensureNonzeroValue(_maxAllowedPriceDifference);

        __AccessControlled_init(_acm);
        maxAllowedPriceDifference = _maxAllowedPriceDifference;
    }

    /**
     * @notice Sets the maximum allowed price difference
     * @param _maxAllowedPriceDifference Maximum allowed price difference
     * @custom:error ZeroValueNotAllowed is thrown if `_maxAllowedPriceDifference` is zero
     */
    function setMaxAllowedPriceDifference(uint256 _maxAllowedPriceDifference) external {
        _checkAccessAllowed("setMaxAllowedPriceDifference(uint256)");
        ensureNonzeroValue(_maxAllowedPriceDifference);

        emit MaxAllowedPriceDifferenceUpdated(maxAllowedPriceDifference, _maxAllowedPriceDifference);
        maxAllowedPriceDifference = _maxAllowedPriceDifference;
    }

    /**
     * @notice Fetches the USD price of sfrxETH
     * @param asset Address of the sfrxETH token
     * @return price The price scaled by 1e18
     * @custom:error InvalidTokenAddress is thrown when the `asset` is not the sfrxETH token (`SFRXETH`)
     * @custom:error BadPriceData is thrown if the `SFRXETH_FRAX_ORACLE` oracle informs it has bad data
     * @custom:error ZeroValueNotAllowed is thrown if the prices (low or high, in USD) are zero
     * @custom:error PriceDifferenceExceeded is thrown if priceHigh/priceLow is greater than `maxAllowedPriceDifference`
     */
    function getPrice(address asset) external view returns (uint256) {
        if (asset != SFRXETH) revert InvalidTokenAddress();

        (bool isBadData, uint256 priceLow, uint256 priceHigh) = SFRXETH_FRAX_ORACLE.getPrices();

        if (isBadData) revert BadPriceData();

        // calculate price in USD
        uint256 priceHighInUSD = (EXP_SCALE ** 2) / priceLow;
        uint256 priceLowInUSD = (EXP_SCALE ** 2) / priceHigh;

        ensureNonzeroValue(priceHighInUSD);
        ensureNonzeroValue(priceLowInUSD);

        // validate price difference
        uint256 difference = (priceHighInUSD * EXP_SCALE) / priceLowInUSD;
        if (difference > maxAllowedPriceDifference) revert PriceDifferenceExceeded();

        // calculate and return average price
        return (priceHighInUSD + priceLowInUSD) / 2;
    }
}

// ============================================================
// FILE: contracts/oracles/SlisBNBOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { ISynclubStakeManager } from "../interfaces/ISynclubStakeManager.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";

/**
 * @title SlisBNBOracle
 * @author Venus
 * @notice This oracle fetches the price of slisBNB asset
 */
contract SlisBNBOracle is CorrelatedTokenOracle {
    /// @notice This is used as token address of BNB on BSC
    address public constant NATIVE_TOKEN_ADDR = 0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB;

    /// @notice Address of StakeManager
    ISynclubStakeManager public immutable STAKE_MANAGER;

    /// @notice Constructor for the implementation contract.
    constructor(
        address stakeManager,
        address slisBNB,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            slisBNB,
            NATIVE_TOKEN_ADDR,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {
        ensureNonzeroAddress(stakeManager);
        STAKE_MANAGER = ISynclubStakeManager(stakeManager);
    }

    /**
     * @notice Fetches the amount of BNB for 1 slisBNB
     * @return amount The amount of BNB for slisBNB
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return STAKE_MANAGER.convertSnBnbToBnb(EXP_SCALE);
    }
}

// ============================================================
// FILE: contracts/oracles/StkBNBOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IPStakePool } from "../interfaces/IPStakePool.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";

/**
 * @title StkBNBOracle
 * @author Venus
 * @notice This oracle fetches the price of stkBNB asset
 */
contract StkBNBOracle is CorrelatedTokenOracle {
    /// @notice This is used as token address of BNB on BSC
    address public constant NATIVE_TOKEN_ADDR = 0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB;

    /// @notice Address of StakePool
    IPStakePool public immutable STAKE_POOL;

    /// @notice Thrown if the pool token supply is zero
    error PoolTokenSupplyIsZero();

    /// @notice Constructor for the implementation contract.
    constructor(
        address stakePool,
        address stkBNB,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            stkBNB,
            NATIVE_TOKEN_ADDR,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {
        ensureNonzeroAddress(stakePool);
        STAKE_POOL = IPStakePool(stakePool);
    }

    /**
     * @notice Fetches the amount of BNB for 1 stkBNB
     * @return price The amount of BNB for stkBNB
     * @custom:error PoolTokenSupplyIsZero error is thrown if the pool token supply is zero
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        IPStakePool.Data memory exchangeRateData = STAKE_POOL.exchangeRate();

        if (exchangeRateData.poolTokenSupply == 0) {
            revert PoolTokenSupplyIsZero();
        }

        return (exchangeRateData.totalWei * EXP_SCALE) / exchangeRateData.poolTokenSupply;
    }
}

// ============================================================
// FILE: contracts/oracles/WBETHOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IWBETH } from "../interfaces/IWBETH.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";

/**
 * @title WBETHOracle
 * @author Venus
 * @notice This oracle fetches the price of wBETH asset
 */
contract WBETHOracle is CorrelatedTokenOracle {
    /// @notice Constructor for the implementation contract.
    constructor(
        address wbeth,
        address eth,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            wbeth,
            eth,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {}

    /**
     * @notice Fetches the amount of ETH for 1 wBETH
     * @return amount The amount of ETH for wBETH
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return IWBETH(CORRELATED_TOKEN).exchangeRate();
    }
}

// ============================================================
// FILE: contracts/oracles/WeETHAccountantOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { IAccountant } from "../interfaces/IAccountant.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";

/**
 * @title WeETHAccountantOracle
 * @author Venus
 * @notice This oracle fetches the price of Ether.fi tokens based on an `Accountant` contract (i.e. weETHs and weETHk)
 */
contract WeETHAccountantOracle is CorrelatedTokenOracle {
    /// @notice Address of Accountant
    IAccountant public immutable ACCOUNTANT;

    /// @notice Constructor for the implementation contract.
    constructor(
        address accountant,
        address weethLRT,
        address weth,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            weethLRT,
            weth,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {
        ensureNonzeroAddress(accountant);
        ACCOUNTANT = IAccountant(accountant);
    }

    /**
     * @notice Gets the WETH for 1 weETH LRT
     * @return amount Amount of WETH
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return ACCOUNTANT.getRateSafe();
    }
}

// ============================================================
// FILE: contracts/oracles/WeETHOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { IEtherFiLiquidityPool } from "../interfaces/IEtherFiLiquidityPool.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";

/**
 * @title WeETHOracle
 * @author Venus
 * @notice This oracle fetches the price of weETH
 */
contract WeETHOracle is CorrelatedTokenOracle {
    /// @notice Address of Liqiudity pool
    IEtherFiLiquidityPool public immutable LIQUIDITY_POOL;

    /// @notice Constructor for the implementation contract.
    constructor(
        address liquidityPool,
        address weETH,
        address eETH,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            weETH,
            eETH,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {
        ensureNonzeroAddress(liquidityPool);
        LIQUIDITY_POOL = IEtherFiLiquidityPool(liquidityPool);
    }

    /**
     * @notice Gets the eETH for 1 weETH
     * @return amount Amount of eETH
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return LIQUIDITY_POOL.amountForShare(EXP_SCALE);
    }
}

// ============================================================
// FILE: contracts/oracles/WstETHOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { OracleInterface } from "../interfaces/OracleInterface.sol";
import { IStETH } from "../interfaces/IStETH.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";

/**
 * @title WstETHOracle
 * @author Venus
 * @notice Depending on the equivalence flag price is either based on assumption that 1 stETH = 1 ETH
 *         or the price of stETH/USD (secondary market price) is obtained from the oracle.
 */
contract WstETHOracle is OracleInterface {
    /// @notice A flag assuming 1:1 price equivalence between stETH/ETH
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    bool public immutable ASSUME_STETH_ETH_EQUIVALENCE;

    /// @notice Address of stETH
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IStETH public immutable STETH;

    /// @notice Address of wstETH
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable WSTETH_ADDRESS;

    /// @notice Address of WETH
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable WETH_ADDRESS;

    /// @notice Address of Resilient Oracle
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    OracleInterface public immutable RESILIENT_ORACLE;

    /// @notice Constructor for the implementation contract.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        address wstETHAddress,
        address wETHAddress,
        address stETHAddress,
        address resilientOracleAddress,
        bool assumeEquivalence
    ) {
        ensureNonzeroAddress(wstETHAddress);
        ensureNonzeroAddress(wETHAddress);
        ensureNonzeroAddress(stETHAddress);
        ensureNonzeroAddress(resilientOracleAddress);
        WSTETH_ADDRESS = wstETHAddress;
        WETH_ADDRESS = wETHAddress;
        STETH = IStETH(stETHAddress);
        RESILIENT_ORACLE = OracleInterface(resilientOracleAddress);
        ASSUME_STETH_ETH_EQUIVALENCE = assumeEquivalence;
    }

    /**
     * @notice Gets the USD price of wstETH asset
     * @dev Depending on the equivalence flag price is either based on assumption that 1 stETH = 1 ETH
     *      or the price of stETH/USD (secondary market price) is obtained from the oracle
     * @param asset Address of wstETH
     * @return wstETH Price in USD scaled by 1e18
     */
    function getPrice(address asset) public view returns (uint256) {
        if (asset != WSTETH_ADDRESS) revert("wrong wstETH address");

        // get stETH amount for 1 wstETH scaled by 1e18
        uint256 stETHAmount = STETH.getPooledEthByShares(1 ether);

        // price is scaled 1e18 (oracle returns 36 - asset decimal scale)
        uint256 stETHUSDPrice = RESILIENT_ORACLE.getPrice(ASSUME_STETH_ETH_EQUIVALENCE ? WETH_ADDRESS : address(STETH));

        // stETHAmount (for 1 wstETH) * stETHUSDPrice / 1e18
        return (stETHAmount * stETHUSDPrice) / EXP_SCALE;
    }
}

// ============================================================
// FILE: contracts/oracles/WstETHOracleV2.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IStETH } from "../interfaces/IStETH.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";

/**
 * @title WstETHOracleV2
 * @author Venus
 * @notice This oracle fetches the price of wstETH
 */
contract WstETHOracleV2 is CorrelatedTokenOracle {
    /// @notice Constructor for the implementation contract.
    constructor(
        address wstETH,
        address stETH,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            wstETH,
            stETH,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {}

    /**
     * @notice Gets the stETH for 1 wstETH
     * @return amount Amount of stETH
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return IStETH(UNDERLYING_TOKEN).getPooledEthByShares(EXP_SCALE);
    }
}

// ============================================================
// FILE: contracts/oracles/ZkETHOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IZkETH } from "../interfaces/IZkETH.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";

/**
 * @title ZkETHOracle
 * @author Venus
 * @notice This oracle fetches the price of zkETH
 */
contract ZkETHOracle is CorrelatedTokenOracle {
    /// @notice Constructor for the implementation contract.
    constructor(
        address zkETH,
        address rzkETH,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            zkETH,
            rzkETH,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {}

    /**
     * @notice Gets the amount of rzkETH for 1 zkETH
     * @return amount Amount of rzkETH
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return IZkETH(CORRELATED_TOKEN).LSTPerToken();
    }
}

// ============================================================
// FILE: contracts/ReferenceOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
// SPDX-FileCopyrightText: 2025 Venus
pragma solidity 0.8.25;

import { Ownable2StepUpgradeable } from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { ResilientOracleInterface, OracleInterface } from "./interfaces/OracleInterface.sol";

/**
 * @title ReferenceOracle
 * @author Venus
 * @notice Reference oracle is the oracle that is not used for production but required for
 * price monitoring. This oracle contains some extra configurations for assets required to
 * compute reference prices of their derivative assets (OneJump, ERC4626, Pendle, etc.)
 */
contract ReferenceOracle is Ownable2StepUpgradeable, OracleInterface {
    struct ExternalPrice {
        /// @notice asset address
        address asset;
        /// @notice price of the asset from an external source
        uint256 price;
    }

    /// @notice Slot to temporarily store price information from external sources
    /// like CMC/Coingecko, useful to compute prices of derivative assets based on
    /// prices of the base assets with no on chain price information
    bytes32 public constant PRICES_SLOT = keccak256(abi.encode("venus-protocol/oracle/ReferenceOracle/prices"));

    /// @notice Resilient oracle address
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    ResilientOracleInterface public immutable RESILIENT_ORACLE;

    /// @notice Oracle configuration for assets
    mapping(address => OracleInterface) public oracles;

    /// @notice Event emitted when an oracle is set
    event OracleConfigured(address indexed asset, address indexed oracle);

    /**
     * @notice Constructor for the implementation contract. Sets immutable variables.
     * @param resilientOracle Resilient oracle address
     * @custom:error ZeroAddressNotAllowed is thrown if resilient oracle address is null
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor(ResilientOracleInterface resilientOracle) {
        ensureNonzeroAddress(address(resilientOracle));
        RESILIENT_ORACLE = resilientOracle;
        _disableInitializers();
    }

    /**
     * @notice Initializes the contract admin
     */
    function initialize() external initializer {
        __Ownable2Step_init();
    }

    /**
     * @notice Sets an oracle to use for a specific asset
     * @dev The production resilientOracle will be used if zero address is passed
     * @param asset Asset address
     * @param oracle Oracle address
     * @custom:access Only owner
     * @custom:error ZeroAddressNotAllowed is thrown if asset address is null
     * @custom:event Emits OracleConfigured event
     */
    function setOracle(address asset, OracleInterface oracle) external onlyOwner {
        ensureNonzeroAddress(asset);
        oracles[asset] = OracleInterface(oracle);
        emit OracleConfigured(asset, address(oracle));
    }

    /**
     * @notice Gets price of the asset assuming other assets have the defined price
     * @param asset asset address
     * @param externalPrices an array of prices for other assets
     * @return USD price in scaled decimal places
     */
    function getPriceAssuming(address asset, ExternalPrice[] memory externalPrices) external returns (uint256) {
        uint256 externalPricesCount = externalPrices.length;
        for (uint256 i = 0; i < externalPricesCount; ++i) {
            _storeExternalPrice(externalPrices[i].asset, externalPrices[i].price);
        }
        return _getPrice(asset);
    }

    /**
     * @notice Gets price of the asset
     * @param asset asset address
     * @return USD price in scaled decimal places
     */
    function getPrice(address asset) external view override returns (uint256) {
        return _getPrice(asset);
    }

    function _storeExternalPrice(address asset, uint256 price) internal {
        bytes32 slot = keccak256(abi.encode(PRICES_SLOT, asset));
        // solhint-disable-next-line no-inline-assembly
        assembly ("memory-safe") {
            tstore(slot, price)
        }
    }

    function _getPrice(address asset) internal view returns (uint256) {
        uint256 externalPrice = _loadExternalPrice(asset);
        if (externalPrice != 0) {
            return externalPrice;
        }
        OracleInterface oracle = oracles[asset];
        if (oracle != OracleInterface(address(0))) {
            return oracle.getPrice(asset);
        }
        return RESILIENT_ORACLE.getPrice(asset);
    }

    function _loadExternalPrice(address asset) internal view returns (uint256 value) {
        bytes32 slot = keccak256(abi.encode(PRICES_SLOT, asset));
        // solhint-disable-next-line no-inline-assembly
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }
}

// ============================================================
// FILE: contracts/ResilientOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
// SPDX-FileCopyrightText: 2022 Venus
pragma solidity 0.8.25;

import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import { VBep20Interface } from "./interfaces/VBep20Interface.sol";
import { OracleInterface, ResilientOracleInterface, BoundValidatorInterface } from "./interfaces/OracleInterface.sol";
import { AccessControlledV8 } from "@venusprotocol/governance-contracts/contracts/Governance/AccessControlledV8.sol";
import { ICappedOracle } from "./interfaces/ICappedOracle.sol";
import { Transient } from "./lib/Transient.sol";

/**
 * @title ResilientOracle
 * @author Venus
 * @notice The Resilient Oracle is the main contract that the protocol uses to fetch prices of assets.
 *
 * DeFi protocols are vulnerable to price oracle failures including oracle manipulation and incorrectly
 * reported prices. If only one oracle is used, this creates a single point of failure and opens a vector
 * for attacking the protocol.
 *
 * The Resilient Oracle uses multiple sources and fallback mechanisms to provide accurate prices and protect
 * the protocol from oracle attacks.
 *
 * For every market (vToken) we configure the main, pivot and fallback oracles. The oracles are configured per
 * vToken's underlying asset address. The main oracle oracle is the most trustworthy price source, the pivot
 * oracle is used as a loose sanity checker and the fallback oracle is used as a backup price source.
 *
 * To validate prices returned from two oracles, we use an upper and lower bound ratio that is set for every
 * market. The upper bound ratio represents the deviation between reported price (the price that’s being
 * validated) and the anchor price (the price we are validating against) above which the reported price will
 * be invalidated. The lower bound ratio presents the deviation between reported price and anchor price below
 * which the reported price will be invalidated. So for oracle price to be considered valid the below statement
 * should be true:

```
anchorRatio = anchorPrice/reporterPrice
isValid = anchorRatio <= upperBoundAnchorRatio && anchorRatio >= lowerBoundAnchorRatio
```

 * In most cases, Chainlink is used as the main oracle, other oracles are used as the pivot oracle depending
 * on which supports the given market and Binance oracle is used as the fallback oracle.
 *
 * For a fetched price to be valid it must be positive and not stagnant. If the price is invalid then we consider the
 * oracle to be stagnant and treat it like it's disabled.
 */
contract ResilientOracle is PausableUpgradeable, AccessControlledV8, ResilientOracleInterface {
    /**
     * @dev Oracle roles:
     * **main**: The most trustworthy price source
     * **pivot**: Price oracle used as a loose sanity checker
     * **fallback**: The backup source when main oracle price is invalidated
     */
    enum OracleRole {
        MAIN,
        PIVOT,
        FALLBACK
    }

    struct TokenConfig {
        /// @notice asset address
        address asset;
        /// @notice `oracles` stores the oracles based on their role in the following order:
        /// [main, pivot, fallback],
        /// It can be indexed with the corresponding enum OracleRole value
        address[3] oracles;
        /// @notice `enableFlagsForOracles` stores the enabled state
        /// for each oracle in the same order as `oracles`
        bool[3] enableFlagsForOracles;
        /// @notice `cachingEnabled` is a flag that indicates whether the asset price should be cached
        bool cachingEnabled;
    }

    uint256 public constant INVALID_PRICE = 0;

    /// @notice Native market address
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable nativeMarket;

    /// @notice VAI address
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable vai;

    /// @notice Set this as asset address for Native token on each chain.This is the underlying for vBNB (on bsc)
    /// and can serve as any underlying asset of a market that supports native tokens
    address public constant NATIVE_TOKEN_ADDR = 0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB;

    /// @notice Slot to cache the asset's price, used for transient storage
    /// custom:storage-location erc7201:venus-protocol/oracle/ResilientOracle/cache
    /// keccak256(abi.encode(uint256(keccak256("venus-protocol/oracle/ResilientOracle/cache")) - 1))
    ///   & ~bytes32(uint256(0xff))
    bytes32 public constant CACHE_SLOT = 0x4e99ec55972332f5e0ef9c6623192c0401b609161bffae64d9ccdd7ad6cc7800;

    /// @notice Bound validator contract address
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    BoundValidatorInterface public immutable boundValidator;

    mapping(address => TokenConfig) private tokenConfigs;

    event TokenConfigAdded(
        address indexed asset,
        address indexed mainOracle,
        address indexed pivotOracle,
        address fallbackOracle
    );

    /// Event emitted when an oracle is set
    event OracleSet(address indexed asset, address indexed oracle, uint256 indexed role);

    /// Event emitted when an oracle is enabled or disabled
    event OracleEnabled(address indexed asset, uint256 indexed role, bool indexed enable);

    /// Event emitted when an asset cachingEnabled flag is set
    event CachedEnabled(address indexed asset, bool indexed enabled);

    /**
     * @notice Checks whether an address is null or not
     */
    modifier notNullAddress(address someone) {
        if (someone == address(0)) revert("can't be zero address");
        _;
    }

    /**
     * @notice Checks whether token config exists by checking whether asset is null address
     * @dev address can't be null, so it's suitable to be used to check the validity of the config
     * @param asset asset address
     */
    modifier checkTokenConfigExistence(address asset) {
        if (tokenConfigs[asset].asset == address(0)) revert("token config must exist");
        _;
    }

    /// @notice Constructor for the implementation contract. Sets immutable variables.
    /// @dev nativeMarketAddress can be address(0) if on the chain we do not support native market
    ///      (e.g vETH on ethereum would not be supported, only vWETH)
    /// @param nativeMarketAddress The address of a native market (for bsc it would be vBNB address)
    /// @param vaiAddress The address of the VAI token (if there is VAI on the deployed chain).
    ///          Set to address(0) of VAI is not existent.
    /// @param _boundValidator Address of the bound validator contract
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        address nativeMarketAddress,
        address vaiAddress,
        BoundValidatorInterface _boundValidator
    ) notNullAddress(address(_boundValidator)) {
        nativeMarket = nativeMarketAddress;
        vai = vaiAddress;
        boundValidator = _boundValidator;

        _disableInitializers();
    }

    /**
     * @notice Initializes the contract admin and sets the BoundValidator contract address
     * @param accessControlManager_ Address of the access control manager contract
     */
    function initialize(address accessControlManager_) external initializer {
        __AccessControlled_init(accessControlManager_);
        __Pausable_init();
    }

    /**
     * @notice Pauses oracle
     * @custom:access Only Governance
     */
    function pause() external {
        _checkAccessAllowed("pause()");
        _pause();
    }

    /**
     * @notice Unpauses oracle
     * @custom:access Only Governance
     */
    function unpause() external {
        _checkAccessAllowed("unpause()");
        _unpause();
    }

    /**
     * @notice Batch sets token configs
     * @param tokenConfigs_ Token config array
     * @custom:access Only Governance
     * @custom:error Throws a length error if the length of the token configs array is 0
     */
    function setTokenConfigs(TokenConfig[] memory tokenConfigs_) external {
        if (tokenConfigs_.length == 0) revert("length can't be 0");
        uint256 numTokenConfigs = tokenConfigs_.length;
        for (uint256 i; i < numTokenConfigs; ++i) {
            setTokenConfig(tokenConfigs_[i]);
        }
    }

    /**
     * @notice Sets oracle for a given asset and role.
     * @dev Supplied asset **must** exist and main oracle may not be null
     * @param asset Asset address
     * @param oracle Oracle address
     * @param role Oracle role
     * @custom:access Only Governance
     * @custom:error Null address error if main-role oracle address is null
     * @custom:error NotNullAddress error is thrown if asset address is null
     * @custom:error TokenConfigExistance error is thrown if token config is not set
     * @custom:event Emits OracleSet event with asset address, oracle address and role of the oracle for the asset
     */
    function setOracle(
        address asset,
        address oracle,
        OracleRole role
    ) external notNullAddress(asset) checkTokenConfigExistence(asset) {
        _checkAccessAllowed("setOracle(address,address,uint8)");
        if (oracle == address(0) && role == OracleRole.MAIN) revert("can't set zero address to main oracle");
        tokenConfigs[asset].oracles[uint256(role)] = oracle;
        emit OracleSet(asset, oracle, uint256(role));
    }

    /**
     * @notice Enables/ disables oracle for the input asset. Token config for the input asset **must** exist
     * @dev Configuration for the asset **must** already exist and the asset cannot be 0 address
     * @param asset Asset address
     * @param role Oracle role
     * @param enable Enabled boolean of the oracle
     * @custom:access Only Governance
     * @custom:error NotNullAddress error is thrown if asset address is null
     * @custom:error TokenConfigExistance error is thrown if token config is not set
     * @custom:event Emits OracleEnabled event with asset address, role of the oracle and enabled flag
     */
    function enableOracle(
        address asset,
        OracleRole role,
        bool enable
    ) external notNullAddress(asset) checkTokenConfigExistence(asset) {
        _checkAccessAllowed("enableOracle(address,uint8,bool)");
        tokenConfigs[asset].enableFlagsForOracles[uint256(role)] = enable;
        emit OracleEnabled(asset, uint256(role), enable);
    }

    /**
     * @notice Updates the capped main oracle snapshot.
     * @dev This function should always be called before calling getUnderlyingPrice
     * @param vToken vToken address
     */
    function updatePrice(address vToken) external override {
        address asset = _getUnderlyingAsset(vToken);
        _updateAssetPrice(asset);
    }

    /**
     * @notice Updates the capped main oracle snapshot.
     * @dev This function should always be called before calling getPrice
     * @param asset asset address
     */
    function updateAssetPrice(address asset) external {
        _updateAssetPrice(asset);
    }

    /**
     * @dev Gets token config by asset address
     * @param asset asset address
     * @return tokenConfig Config for the asset
     */
    function getTokenConfig(address asset) external view returns (TokenConfig memory) {
        return tokenConfigs[asset];
    }

    /**
     * @notice Gets price of the underlying asset for a given vToken. Validation flow:
     * - Check if the oracle is paused globally
     * - Validate price from main oracle against pivot oracle
     * - Validate price from fallback oracle against pivot oracle if the first validation failed
     * - Validate price from main oracle against fallback oracle if the second validation failed
     * In the case that the pivot oracle is not available but main price is available and validation is successful,
     * main oracle price is returned.
     * @param vToken vToken address
     * @return price USD price in scaled decimal places.
     * @custom:error Paused error is thrown when resilent oracle is paused
     * @custom:error Invalid resilient oracle price error is thrown if fetched prices from oracle is invalid
     */
    function getUnderlyingPrice(address vToken) external view override returns (uint256) {
        if (paused()) revert("resilient oracle is paused");

        address asset = _getUnderlyingAsset(vToken);
        return _getPrice(asset);
    }

    /**
     * @notice Gets price of the asset
     * @param asset asset address
     * @return price USD price in scaled decimal places.
     * @custom:error Paused error is thrown when resilent oracle is paused
     * @custom:error Invalid resilient oracle price error is thrown if fetched prices from oracle is invalid
     */
    function getPrice(address asset) external view override returns (uint256) {
        if (paused()) revert("resilient oracle is paused");
        return _getPrice(asset);
    }

    /**
     * @notice Sets/resets single token configs.
     * @dev main oracle **must not** be a null address
     * @param tokenConfig Token config struct
     * @custom:access Only Governance
     * @custom:error NotNullAddress is thrown if asset address is null
     * @custom:error NotNullAddress is thrown if main-role oracle address for asset is null
     * @custom:event Emits TokenConfigAdded event when the asset config is set successfully by the authorized account
     * @custom:event Emits CachedEnabled event when the asset cachingEnabled flag is set successfully
     */
    function setTokenConfig(
        TokenConfig memory tokenConfig
    ) public notNullAddress(tokenConfig.asset) notNullAddress(tokenConfig.oracles[uint256(OracleRole.MAIN)]) {
        _checkAccessAllowed("setTokenConfig(TokenConfig)");

        tokenConfigs[tokenConfig.asset] = tokenConfig;
        emit TokenConfigAdded(
            tokenConfig.asset,
            tokenConfig.oracles[uint256(OracleRole.MAIN)],
            tokenConfig.oracles[uint256(OracleRole.PIVOT)],
            tokenConfig.oracles[uint256(OracleRole.FALLBACK)]
        );
        emit CachedEnabled(tokenConfig.asset, tokenConfig.cachingEnabled);
    }

    /**
     * @notice Gets oracle and enabled status by asset address
     * @param asset asset address
     * @param role Oracle role
     * @return oracle Oracle address based on role
     * @return enabled Enabled flag of the oracle based on token config
     */
    function getOracle(address asset, OracleRole role) public view returns (address oracle, bool enabled) {
        oracle = tokenConfigs[asset].oracles[uint256(role)];
        enabled = tokenConfigs[asset].enableFlagsForOracles[uint256(role)];
    }

    /**
     * @notice Updates the capped oracle snapshot.
     * @dev Cache the asset price and return if already cached
     * @param asset asset address
     */
    function _updateAssetPrice(address asset) internal {
        if (Transient.readCachedPrice(CACHE_SLOT, asset) != 0) {
            return;
        }

        (address mainOracle, bool mainOracleEnabled) = getOracle(asset, OracleRole.MAIN);
        if (mainOracle != address(0) && mainOracleEnabled) {
            // if main oracle is not CorrelatedTokenOracle it will revert so we need to catch the revert
            try ICappedOracle(mainOracle).updateSnapshot() {} catch {}
        }

        if (_isCacheEnabled(asset)) {
            uint256 price = _getPrice(asset);
            Transient.cachePrice(CACHE_SLOT, asset, price);
        }
    }

    /**
     * @notice Gets price for the provided asset
     * @param asset asset address
     * @return price USD price in scaled decimal places.
     * @custom:error Invalid resilient oracle price error is thrown if fetched prices from oracle is invalid
     */
    function _getPrice(address asset) internal view returns (uint256) {
        uint256 pivotPrice = INVALID_PRICE;
        uint256 price;

        price = Transient.readCachedPrice(CACHE_SLOT, asset);
        if (price != 0) {
            return price;
        }

        // Get pivot oracle price, Invalid price if not available or error
        (address pivotOracle, bool pivotOracleEnabled) = getOracle(asset, OracleRole.PIVOT);
        if (pivotOracleEnabled && pivotOracle != address(0)) {
            try OracleInterface(pivotOracle).getPrice(asset) returns (uint256 pricePivot) {
                pivotPrice = pricePivot;
            } catch {}
        }

        // Compare main price and pivot price, return main price and if validation was successful
        // note: In case pivot oracle is not available but main price is available and
        // validation is successful, the main oracle price is returned.
        (uint256 mainPrice, bool validatedPivotMain) = _getMainOraclePrice(
            asset,
            pivotPrice,
            pivotOracleEnabled && pivotOracle != address(0)
        );
        if (mainPrice != INVALID_PRICE && validatedPivotMain) return mainPrice;

        // Compare fallback and pivot if main oracle comparision fails with pivot
        // Return fallback price when fallback price is validated successfully with pivot oracle
        (uint256 fallbackPrice, bool validatedPivotFallback) = _getFallbackOraclePrice(asset, pivotPrice);
        if (fallbackPrice != INVALID_PRICE && validatedPivotFallback) return fallbackPrice;

        // Lastly compare main price and fallback price
        if (
            mainPrice != INVALID_PRICE &&
            fallbackPrice != INVALID_PRICE &&
            boundValidator.validatePriceWithAnchorPrice(asset, mainPrice, fallbackPrice)
        ) {
            return mainPrice;
        }

        revert("invalid resilient oracle price");
    }

    /**
     * @notice Gets a price for the provided asset
     * @dev This function won't revert when price is 0, because the fallback oracle may still be
     * able to fetch a correct price
     * @param asset asset address
     * @param pivotPrice Pivot oracle price
     * @param pivotEnabled If pivot oracle is not empty and enabled
     * @return price USD price in scaled decimals
     * e.g. asset decimals is 8 then price is returned as 10**18 * 10**(18-8) = 10**28 decimals
     * @return pivotValidated Boolean representing if the validation of main oracle price
     * and pivot oracle price were successful
     * @custom:error Invalid price error is thrown if main oracle fails to fetch price of the asset
     * @custom:error Invalid price error is thrown if main oracle is not enabled or main oracle
     * address is null
     */
    function _getMainOraclePrice(
        address asset,
        uint256 pivotPrice,
        bool pivotEnabled
    ) internal view returns (uint256, bool) {
        (address mainOracle, bool mainOracleEnabled) = getOracle(asset, OracleRole.MAIN);
        if (mainOracleEnabled && mainOracle != address(0)) {
            try OracleInterface(mainOracle).getPrice(asset) returns (uint256 mainOraclePrice) {
                if (!pivotEnabled) {
                    return (mainOraclePrice, true);
                }
                if (pivotPrice == INVALID_PRICE) {
                    return (mainOraclePrice, false);
                }
                return (
                    mainOraclePrice,
                    boundValidator.validatePriceWithAnchorPrice(asset, mainOraclePrice, pivotPrice)
                );
            } catch {
                return (INVALID_PRICE, false);
            }
        }

        return (INVALID_PRICE, false);
    }

    /**
     * @dev This function won't revert when the price is 0 because getPrice checks if price is > 0
     * @param asset asset address
     * @return price USD price in 18 decimals
     * @return pivotValidated Boolean representing if the validation of fallback oracle price
     * and pivot oracle price were successfully
     * @custom:error Invalid price error is thrown if fallback oracle fails to fetch price of the asset
     * @custom:error Invalid price error is thrown if fallback oracle is not enabled or fallback oracle
     * address is null
     */
    function _getFallbackOraclePrice(address asset, uint256 pivotPrice) private view returns (uint256, bool) {
        (address fallbackOracle, bool fallbackEnabled) = getOracle(asset, OracleRole.FALLBACK);
        if (fallbackEnabled && fallbackOracle != address(0)) {
            try OracleInterface(fallbackOracle).getPrice(asset) returns (uint256 fallbackOraclePrice) {
                if (pivotPrice == INVALID_PRICE) {
                    return (fallbackOraclePrice, false);
                }
                return (
                    fallbackOraclePrice,
                    boundValidator.validatePriceWithAnchorPrice(asset, fallbackOraclePrice, pivotPrice)
                );
            } catch {
                return (INVALID_PRICE, false);
            }
        }

        return (INVALID_PRICE, false);
    }

    /**
     * @dev This function returns the underlying asset of a vToken
     * @param vToken vToken address
     * @return asset underlying asset address
     */
    function _getUnderlyingAsset(address vToken) private view notNullAddress(vToken) returns (address asset) {
        if (vToken == nativeMarket) {
            asset = NATIVE_TOKEN_ADDR;
        } else if (vToken == vai) {
            asset = vai;
        } else {
            asset = VBep20Interface(vToken).underlying();
        }
    }

    /**
     * @dev This function checks if the asset price should be cached
     * @param asset asset address
     * @return bool true if caching is enabled, false otherwise
     */
    function _isCacheEnabled(address asset) private view returns (bool) {
        return tokenConfigs[asset].cachingEnabled;
    }
}

// ============================================================
// FILE: contracts/test/MockCallPrice.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import { OracleInterface, ResilientOracleInterface } from "../interfaces/OracleInterface.sol";

interface CorrelatedTokenOracleInterface {
    function updateSnapshot() external;
    function getPrice(address asset) external view returns (uint256);
}

contract MockCallPrice {
    function getMultiPrice(CorrelatedTokenOracleInterface oracle, address asset) public returns (uint256, uint256) {
        oracle.updateSnapshot();
        return (oracle.getPrice(asset), oracle.getPrice(asset));
    }

    function getUnderlyingPriceResilientOracle(
        ResilientOracleInterface oracle,
        address vToken
    ) public returns (uint256, uint256) {
        oracle.updatePrice(vToken);
        oracle.updatePrice(vToken);
        return (oracle.getUnderlyingPrice(vToken), oracle.getUnderlyingPrice(vToken));
    }

    function getAssetPriceResilientOracle(
        ResilientOracleInterface oracle,
        address asset
    ) public returns (uint256, uint256) {
        oracle.updateAssetPrice(asset);
        oracle.updateAssetPrice(asset);
        return (oracle.getPrice(asset), oracle.getPrice(asset));
    }
}

// ============================================================
// FILE: contracts/test/MockSimpleOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import "../interfaces/OracleInterface.sol";

contract MockSimpleOracle is OracleInterface {
    mapping(address => uint256) public prices;

    constructor() {
        //
    }

    function getUnderlyingPrice(address vToken) external view returns (uint256) {
        return prices[vToken];
    }

    function getPrice(address asset) external view returns (uint256) {
        return prices[asset];
    }

    function setPrice(address vToken, uint256 price) public {
        prices[vToken] = price;
    }
}

contract MockBoundValidator is BoundValidatorInterface {
    mapping(address => bool) public validateResults;
    bool public twapUpdated;

    constructor() {
        //
    }

    function validatePriceWithAnchorPrice(
        address vToken,
        uint256 reporterPrice,
        uint256 anchorPrice
    ) external view returns (bool) {
        return validateResults[vToken];
    }

    function validateAssetPriceWithAnchorPrice(
        address asset,
        uint256 reporterPrice,
        uint256 anchorPrice
    ) external view returns (bool) {
        return validateResults[asset];
    }

    function setValidateResult(address token, bool pass) public {
        validateResults[token] = pass;
    }
}

// ============================================================
// FILE: contracts/test/oracles/MockCorrelatedTokenOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { CorrelatedTokenOracle } from "../../oracles/common/CorrelatedTokenOracle.sol";

contract MockCorrelatedTokenOracle is CorrelatedTokenOracle {
    uint256 public mockUnderlyingAmount;

    constructor(
        address correlatedToken,
        address underlyingToken,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 snapshotGap
    )
        CorrelatedTokenOracle(
            correlatedToken,
            underlyingToken,
            resilientOracle,
            annualGrowthRate,
            snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            snapshotGap
        )
    {}

    function setMockUnderlyingAmount(uint256 amount) external {
        mockUnderlyingAmount = amount;
    }

    function getUnderlyingAmount() public view override returns (uint256) {
        return mockUnderlyingAmount;
    }
}

// ============================================================
// FILE: contracts/test/oracles/MockERC20.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
    constructor(string memory name, string memory symbol, uint8 decimals) ERC20(name, symbol) {
        _mint(msg.sender, 100000 * 10 ** uint256(decimals));
    }
}

// ============================================================
// FILE: contracts/test/oracles/MockResilientOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import "../../interfaces/OracleInterface.sol";

contract MockOracle is OracleInterface {
    mapping(address => uint256) public prices;

    function getPrice(address asset) external view returns (uint256) {
        return prices[asset];
    }

    function setPrice(address vToken, uint256 price) public {
        prices[vToken] = price;
    }
}
