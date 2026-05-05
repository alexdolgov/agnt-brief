// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/IERC20Metadata.sol)

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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

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
// FILE: lib/openzeppelin-contracts/contracts/utils/Create2.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Create2.sol)

pragma solidity ^0.8.20;

import {Errors} from "./Errors.sol";

/**
 * @dev Helper to make usage of the `CREATE2` EVM opcode easier and safer.
 * `CREATE2` can be used to compute in advance the address where a smart
 * contract will be deployed, which allows for interesting new mechanisms known
 * as 'counterfactual interactions'.
 *
 * See the https://eips.ethereum.org/EIPS/eip-1014#motivation[EIP] for more
 * information.
 */
library Create2 {
    /**
     * @dev There's no code to deploy.
     */
    error Create2EmptyBytecode();

    /**
     * @dev Deploys a contract using `CREATE2`. The address where the contract
     * will be deployed can be known in advance via {computeAddress}.
     *
     * The bytecode for a contract can be obtained from Solidity with
     * `type(contractName).creationCode`.
     *
     * Requirements:
     *
     * - `bytecode` must not be empty.
     * - `salt` must have not been used for `bytecode` already.
     * - the factory must have a balance of at least `amount`.
     * - if `amount` is non-zero, `bytecode` must have a `payable` constructor.
     */
    function deploy(uint256 amount, bytes32 salt, bytes memory bytecode) internal returns (address addr) {
        if (address(this).balance < amount) {
            revert Errors.InsufficientBalance(address(this).balance, amount);
        }
        if (bytecode.length == 0) {
            revert Create2EmptyBytecode();
        }
        assembly ("memory-safe") {
            addr := create2(amount, add(bytecode, 0x20), mload(bytecode), salt)
            // if no address was created, and returndata is not empty, bubble revert
            if and(iszero(addr), not(iszero(returndatasize()))) {
                let p := mload(0x40)
                returndatacopy(p, 0, returndatasize())
                revert(p, returndatasize())
            }
        }
        if (addr == address(0)) {
            revert Errors.FailedDeployment();
        }
    }

    /**
     * @dev Returns the address where a contract will be stored if deployed via {deploy}. Any change in the
     * `bytecodeHash` or `salt` will result in a new destination address.
     */
    function computeAddress(bytes32 salt, bytes32 bytecodeHash) internal view returns (address) {
        return computeAddress(salt, bytecodeHash, address(this));
    }

    /**
     * @dev Returns the address where a contract will be stored if deployed via {deploy} from a contract located at
     * `deployer`. If `deployer` is this contract's address, returns the same value as {computeAddress}.
     */
    function computeAddress(bytes32 salt, bytes32 bytecodeHash, address deployer) internal pure returns (address addr) {
        assembly ("memory-safe") {
            let ptr := mload(0x40) // Get free memory pointer

            // |                   | ↓ ptr ...  ↓ ptr + 0x0B (start) ...  ↓ ptr + 0x20 ...  ↓ ptr + 0x40 ...   |
            // |-------------------|---------------------------------------------------------------------------|
            // | bytecodeHash      |                                                        CCCCCCCCCCCCC...CC |
            // | salt              |                                      BBBBBBBBBBBBB...BB                   |
            // | deployer          | 000000...0000AAAAAAAAAAAAAAAAAAA...AA                                     |
            // | 0xFF              |            FF                                                             |
            // |-------------------|---------------------------------------------------------------------------|
            // | memory            | 000000...00FFAAAAAAAAAAAAAAAAAAA...AABBBBBBBBBBBBB...BBCCCCCCCCCCCCC...CC |
            // | keccak(start, 85) |            ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ |

            mstore(add(ptr, 0x40), bytecodeHash)
            mstore(add(ptr, 0x20), salt)
            mstore(ptr, deployer) // Right-aligned with 12 preceding garbage bytes
            let start := add(ptr, 0x0b) // The hashed data starts at the final garbage byte which we will set to 0xff
            mstore8(start, 0xff)
            addr := and(keccak256(start, 85), 0xffffffffffffffffffffffffffffffffffffffff)
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/Errors.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Errors.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of common custom errors used in multiple contracts
 *
 * IMPORTANT: Backwards compatibility is not guaranteed in future versions of the library.
 * It is recommended to avoid relying on the error API for critical functionality.
 *
 * _Available since v5.1._
 */
library Errors {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error InsufficientBalance(uint256 balance, uint256 needed);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedCall();

    /**
     * @dev The deployment failed.
     */
    error FailedDeployment();

    /**
     * @dev A necessary precompile is missing.
     */
    error MissingPrecompile(address);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/structs/EnumerableSet.sol)
// This file was procedurally generated from scripts/generate/templates/EnumerableSet.js.

pragma solidity ^0.8.20;

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
        // Position is the index of the value in the `values` array plus 1.
        // Position 0 is used to mean a value is not in the set.
        mapping(bytes32 value => uint256) _positions;
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
            set._positions[value] = set._values.length;
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
        // We cache the value's position to prevent multiple reads from the same storage slot
        uint256 position = set._positions[value];

        if (position != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 valueIndex = position - 1;
            uint256 lastIndex = set._values.length - 1;

            if (valueIndex != lastIndex) {
                bytes32 lastValue = set._values[lastIndex];

                // Move the lastValue to the index where the value to delete is
                set._values[valueIndex] = lastValue;
                // Update the tracked position of the lastValue (that was just moved)
                set._positions[lastValue] = position;
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the tracked position for the deleted slot
            delete set._positions[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._positions[value] != 0;
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

        assembly ("memory-safe") {
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

        assembly ("memory-safe") {
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

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }
}

// ============================================================
// FILE: src/fira_bonding/core/Market/MarketMathCore.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../libraries/math/LogExpMath.sol";
import "../../libraries/math/PMath.sol";

import "../../StandardizedYield/BCIndex.sol";

import "../../libraries/Errors.sol";
import "../../libraries/MiniHelpers.sol";

/**
 * @notice Complete state of a FiraMarket, loaded into memory for gas-efficient operations
 * @param totalBt Total Bond Token reserves
 * @param totalFw Total Fira Wrapped token reserves
 * @param totalLp Total LP token supply
 * @param treasury Address receiving fees
 * @param scalarRoot Scaling parameter for the pricing curve
 * @param expiry Unix timestamp when the market expires
 * @param lnFeeRateRoot Natural log of fee rate root
 * @param reserveFeePercent Percentage of fees sent to reserve (base 100)
 * @param lastLnImpliedRate Last recorded ln(impliedRate) after a trade
 */
struct MarketState {
    int256 totalBt;
    int256 totalFw;
    int256 totalLp;
    address treasury;
    /// immutable variables ///
    int256 scalarRoot;
    uint256 expiry;
    /// fee data ///
    uint256 lnFeeRateRoot;
    uint256 reserveFeePercent; // base 100
    uint256 lastLnImpliedRate;
}

/**
 * @notice Pre-computed parameters for trade calculations
 * @dev These values are expensive to compute, so we calculate them once per trade
 * @param rateScalar Time-adjusted scalar for the pricing curve
 * @param totalAsset Total FW reserves converted to underlying asset units
 * @param rateAnchor Current anchor point for the exchange rate calculation
 * @param feeRate Time-adjusted fee multiplier
 */
struct MarketPreCompute {
    int256 rateScalar;
    int256 totalAsset;
    int256 rateAnchor;
    int256 feeRate;
}

/**
 * @title MarketMathCore
 * @notice Core mathematical library for FiraMarket AMM operations
 * @dev Implements an AMM with time-decaying implied interest rates.
 *      The pricing model uses logit functions to maintain exchange rates above 1.0,
 *      ensuring BT always trades at a discount to FW (reflecting the time value of money).
 */
library MarketMathCore {
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;
    using BCIndexLib for BCIndex;

    /// @dev Minimum LP tokens locked forever to prevent rounding exploits
    int256 internal constant MINIMUM_LIQUIDITY = 10 ** 3;

    /// @dev Base for percentage calculations (100 = 100%)
    int256 internal constant PERCENTAGE_DECIMALS = 100;

    /// @dev Seconds in a day
    uint256 internal constant DAY = 86400;

    /// @dev Annualized time period for implied rate calculations (365 days)
    uint256 internal constant IMPLIED_RATE_TIME = 365 * DAY;

    /// @dev Maximum proportion of BT in the pool (96%) to prevent extreme prices
    int256 internal constant MAX_MARKET_PROPORTION = (1e18 * 96) / 100;

    /* ///////////////////////////////////////////////////////////////
                UINT FUNCTIONS TO PROXY TO CORE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Adds liquidity to the market, receiving LP tokens in return
     * @dev Wrapper around addLiquidityCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param fwDesired Maximum FW tokens to deposit
     * @param btDesired Maximum BT tokens to deposit
     * @param blockTime Current block timestamp
     * @return lpToReserve LP tokens locked as minimum liquidity (only on first deposit)
     * @return lpToAccount LP tokens minted to the depositor
     * @return fwUsed Actual FW tokens used
     * @return btUsed Actual BT tokens used
     */
    function addLiquidity(MarketState memory market, uint256 fwDesired, uint256 btDesired, uint256 blockTime)
        internal
        pure
        returns (uint256 lpToReserve, uint256 lpToAccount, uint256 fwUsed, uint256 btUsed)
    {
        (int256 _lpToReserve, int256 _lpToAccount, int256 _fwUsed, int256 _btUsed) =
            addLiquidityCore(market, fwDesired.Int(), btDesired.Int(), blockTime);

        lpToReserve = _lpToReserve.Uint();
        lpToAccount = _lpToAccount.Uint();
        fwUsed = _fwUsed.Uint();
        btUsed = _btUsed.Uint();
    }

    /**
     * @notice Removes liquidity from the market by burning LP tokens
     * @dev Wrapper around removeLiquidityCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param lpToRemove Amount of LP tokens to burn
     * @return netFwToAccount FW tokens returned to the withdrawer
     * @return netBtToAccount BT tokens returned to the withdrawer
     */
    function removeLiquidity(MarketState memory market, uint256 lpToRemove)
        internal
        pure
        returns (uint256 netFwToAccount, uint256 netBtToAccount)
    {
        (int256 _fwToAccount, int256 _btToAccount) = removeLiquidityCore(market, lpToRemove.Int());

        netFwToAccount = _fwToAccount.Uint();
        netBtToAccount = _btToAccount.Uint();
    }

    /**
     * @notice Swaps an exact amount of BT for FW
     * @dev Wrapper around executeTradeCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param exactBtToMarket Exact amount of BT to sell
     * @param blockTime Current block timestamp
     * @return netFwToAccount FW tokens received by the swapper
     * @return netFwFee Total fee charged in FW
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function swapExactBtForFw(MarketState memory market, BCIndex index, uint256 exactBtToMarket, uint256 blockTime)
        internal
        pure
        returns (uint256 netFwToAccount, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwToAccount, int256 _netFwFee, int256 _netFwToReserve) =
            executeTradeCore(market, index, exactBtToMarket.neg(), blockTime);

        netFwToAccount = _netFwToAccount.Uint();
        netFwFee = _netFwFee.Uint();
        netFwToReserve = _netFwToReserve.Uint();
    }

    /**
     * @notice Swaps FW for an exact amount of BT
     * @dev Wrapper around executeTradeCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param exactbtToAccount Exact amount of BT to receive
     * @param blockTime Current block timestamp
     * @return netFwToMarket FW tokens paid by the swapper
     * @return netFwFee Total fee charged in FW
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function swapFwForExactBt(MarketState memory market, BCIndex index, uint256 exactbtToAccount, uint256 blockTime)
        internal
        pure
        returns (uint256 netFwToMarket, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwToAccount, int256 _netFwFee, int256 _netFwToReserve) =
            executeTradeCore(market, index, exactbtToAccount.Int(), blockTime);

        netFwToMarket = _netFwToAccount.neg().Uint();
        netFwFee = _netFwFee.Uint();
        netFwToReserve = _netFwToReserve.Uint();
    }

    /* ///////////////////////////////////////////////////////////////
                    CORE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Core logic for adding liquidity to the market
     * @dev On first deposit, mints sqrt(fw * bt) LP tokens and locks MINIMUM_LIQUIDITY.
     *      On subsequent deposits, mints LP proportional to the limiting token.
     * @param market The current market state (will be modified)
     * @param FwDesired Maximum FW tokens to deposit
     * @param btDesired Maximum BT tokens to deposit
     * @param blockTime Current block timestamp
     * @return lpToReserve LP tokens to lock as minimum liquidity
     * @return lpToAccount LP tokens to mint to depositor
     * @return FwUsed Actual FW tokens used
     * @return btUsed Actual BT tokens used
     */
    function addLiquidityCore(MarketState memory market, int256 FwDesired, int256 btDesired, uint256 blockTime)
        internal
        pure
        returns (int256 lpToReserve, int256 lpToAccount, int256 FwUsed, int256 btUsed)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (FwDesired == 0 || btDesired == 0) revert Errors.MarketZeroAmountsInput();
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        if (market.totalLp == 0) {
            lpToAccount = PMath.sqrt((FwDesired * btDesired).Uint()).Int() - MINIMUM_LIQUIDITY;
            lpToReserve = MINIMUM_LIQUIDITY;
            FwUsed = FwDesired;
            btUsed = btDesired;
        } else {
            int256 netLpBybt = (btDesired * market.totalLp) / market.totalBt;
            int256 netLpByFw = (FwDesired * market.totalLp) / market.totalFw;
            if (netLpBybt < netLpByFw) {
                lpToAccount = netLpBybt;
                btUsed = btDesired;
                FwUsed = (market.totalFw * lpToAccount).rawDivUp(market.totalLp);
            } else {
                lpToAccount = netLpByFw;
                FwUsed = FwDesired;
                btUsed = (market.totalBt * lpToAccount).rawDivUp(market.totalLp);
            }
        }

        if (lpToAccount <= 0 || FwUsed <= 0 || btUsed <= 0) revert Errors.MarketZeroAmountsOutput();

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.totalFw += FwUsed;
        market.totalBt += btUsed;
        market.totalLp += lpToAccount + lpToReserve;
    }

    /**
     * @notice Core logic for removing liquidity from the market
     * @dev Returns proportional share of both BT and FW reserves
     * @param market The current market state (will be modified)
     * @param lpToRemove Amount of LP tokens to burn
     * @return netFwToAccount FW tokens to return
     * @return netbtToAccount BT tokens to return
     */
    function removeLiquidityCore(MarketState memory market, int256 lpToRemove)
        internal
        pure
        returns (int256 netFwToAccount, int256 netbtToAccount)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (lpToRemove == 0) revert Errors.MarketZeroAmountsInput();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        netFwToAccount = (lpToRemove * market.totalFw) / market.totalLp;
        netbtToAccount = (lpToRemove * market.totalBt) / market.totalLp;

        if (netFwToAccount == 0 && netbtToAccount == 0) revert Errors.MarketZeroAmountsOutput();

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.totalLp = market.totalLp.subNoNeg(lpToRemove);
        market.totalBt = market.totalBt.subNoNeg(netbtToAccount);
        market.totalFw = market.totalFw.subNoNeg(netFwToAccount);
    }

    /**
     * @notice Core logic for executing a BT/FW swap
     * @dev Positive netbtToAccount = buying BT (selling FW), negative = selling BT (buying FW)
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param netbtToAccount Net BT flow to swapper (positive = receiving, negative = paying)
     * @param blockTime Current block timestamp
     * @return netFwToAccount Net FW flow to swapper (positive = receiving, negative = paying)
     * @return netFwFee Total fee in FW terms
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function executeTradeCore(MarketState memory market, BCIndex index, int256 netbtToAccount, uint256 blockTime)
        internal
        pure
        returns (int256 netFwToAccount, int256 netFwFee, int256 netFwToReserve)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();
        if (market.totalBt <= netbtToAccount) {
            revert Errors.MarketInsufficientBtForTrade(market.totalBt, netbtToAccount);
        }

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        MarketPreCompute memory comp = getMarketPreCompute(market, index, blockTime);

        (netFwToAccount, netFwFee, netFwToReserve) = calcTrade(market, comp, index, netbtToAccount);

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        _setNewMarketStateTrade(market, comp, index, netbtToAccount, netFwToAccount, netFwToReserve, blockTime);
    }

    /**
     * @notice Pre-computes expensive parameters needed for trade calculations
     * @dev Calculates rate scalar, total asset value, rate anchor, and fee rate
     * @param market The current market state
     * @param index Current BC index for FW/asset conversion
     * @param blockTime Current block timestamp
     * @return res Pre-computed values for trade math
     */
    function getMarketPreCompute(MarketState memory market, BCIndex index, uint256 blockTime)
        internal
        pure
        returns (MarketPreCompute memory res)
    {
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        uint256 timeToExpiry = market.expiry - blockTime;

        res.rateScalar = _getRateScalar(market, timeToExpiry);
        res.totalAsset = index.fwToAsset(market.totalFw);

        if (market.totalBt == 0 || res.totalAsset == 0) {
            revert Errors.MarketZeroTotalBtOrTotalAsset(market.totalBt, res.totalAsset);
        }

        res.rateAnchor =
            _getRateAnchor(market.totalBt, market.lastLnImpliedRate, res.totalAsset, res.rateScalar, timeToExpiry);
        res.feeRate = _getExchangeRateFromImpliedRate(market.lnFeeRateRoot, timeToExpiry);
    }

    /**
     * @notice Calculates the FW amounts for a given BT trade
     * @dev Applies the exchange rate formula and fee calculations
     * @param market The current market state
     * @param comp Pre-computed market parameters
     * @param index Current BC index for FW/asset conversion
     * @param netBtToAccount Net BT flow to swapper
     * @return netFwToAccount Net FW flow to swapper
     * @return netFwFee Total fee in FW
     * @return netFwToReserve Fee portion for reserve
     */
    function calcTrade(MarketState memory market, MarketPreCompute memory comp, BCIndex index, int256 netBtToAccount)
        internal
        pure
        returns (int256 netFwToAccount, int256 netFwFee, int256 netFwToReserve)
    {
        int256 preFeeExchangeRate =
            _getExchangeRate(market.totalBt, comp.totalAsset, comp.rateScalar, comp.rateAnchor, netBtToAccount);

        int256 preFeeAssetToAccount = netBtToAccount.divDown(preFeeExchangeRate).neg();
        int256 fee = comp.feeRate;

        if (netBtToAccount > 0) {
            int256 postFeeExchangeRate = preFeeExchangeRate.divDown(fee);
            if (postFeeExchangeRate < PMath.IONE) {
                revert Errors.MarketExchangeRateBelowOne(postFeeExchangeRate);
            }

            fee = preFeeAssetToAccount.mulDown(PMath.IONE - fee);
        } else {
            fee = ((preFeeAssetToAccount * (PMath.IONE - fee)) / fee).neg();
        }

        int256 netAssetToReserve = (fee * market.reserveFeePercent.Int()) / PERCENTAGE_DECIMALS;
        int256 netAssetToAccount = preFeeAssetToAccount - fee;

        netFwToAccount =
            netAssetToAccount < 0 ? index.assetToFwUp(netAssetToAccount) : index.assetToFw(netAssetToAccount);
        netFwFee = index.assetToFw(fee);
        netFwToReserve = index.assetToFw(netAssetToReserve);
    }

    /**
     * @notice Updates market state after a trade
     * @dev Adjusts reserves and recalculates the implied rate
     * @param market The current market state (will be modified)
     * @param comp Pre-computed market parameters
     * @param index Current BC index for FW/asset conversion
     * @param netbtToAccount Net BT flow to swapper
     * @param netFwToAccount Net FW flow to swapper
     * @param netFwToReserve FW fee portion sent to reserve
     * @param blockTime Current block timestamp
     */
    function _setNewMarketStateTrade(
        MarketState memory market,
        MarketPreCompute memory comp,
        BCIndex index,
        int256 netbtToAccount,
        int256 netFwToAccount,
        int256 netFwToReserve,
        uint256 blockTime
    ) internal pure {
        uint256 timeToExpiry = market.expiry - blockTime;

        market.totalBt = market.totalBt.subNoNeg(netbtToAccount);
        market.totalFw = market.totalFw.subNoNeg(netFwToAccount + netFwToReserve);

        market.lastLnImpliedRate = _getLnImpliedRate(
            market.totalBt, index.fwToAsset(market.totalFw), comp.rateScalar, comp.rateAnchor, timeToExpiry
        );

        if (market.lastLnImpliedRate == 0) revert Errors.MarketZeroLnImpliedRate();
    }

    /**
     * @notice Calculates the rate anchor from the last implied rate
     * @dev The anchor is adjusted so that the current proportion yields the last implied rate
     * @param totalbt Total BT reserves
     * @param lastLnImpliedRate Last recorded natural log of the implied rate
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param timeToExpiry Seconds until expiry
     * @return rateAnchor The calculated rate anchor
     */
    function _getRateAnchor(
        int256 totalbt,
        uint256 lastLnImpliedRate,
        int256 totalAsset,
        int256 rateScalar,
        uint256 timeToExpiry
    ) internal pure returns (int256 rateAnchor) {
        int256 newExchangeRate = _getExchangeRateFromImpliedRate(lastLnImpliedRate, timeToExpiry);

        if (newExchangeRate < PMath.IONE) revert Errors.MarketExchangeRateBelowOne(newExchangeRate);

        {
            int256 proportion = totalbt.divDown(totalbt + totalAsset);

            int256 lnProportion = _logProportion(proportion);

            rateAnchor = newExchangeRate - lnProportion.divDown(rateScalar);
        }
    }

    /**
     * @notice Calculates the natural log of the implied interest rate
     * @dev Derived from the current exchange rate and time to expiry
     * @param totalbt Total BT reserves
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param rateAnchor Current rate anchor
     * @param timeToExpiry Seconds until expiry
     * @return lnImpliedRate The natural log of the annualized implied rate
     */
    function _getLnImpliedRate(
        int256 totalbt,
        int256 totalAsset,
        int256 rateScalar,
        int256 rateAnchor,
        uint256 timeToExpiry
    ) internal pure returns (uint256 lnImpliedRate) {
        // This will check for exchange rates < PMath.IONE
        int256 exchangeRate = _getExchangeRate(totalbt, totalAsset, rateScalar, rateAnchor, 0);

        // exchangeRate >= 1 so its ln >= 0
        uint256 lnRate = exchangeRate.ln().Uint();

        lnImpliedRate = (lnRate * IMPLIED_RATE_TIME) / timeToExpiry;
    }

    /**
     * @notice Converts an implied rate to an exchange rate given time to expiry
     * @dev Uses the formula E = e^(rt) where r is the implied rate and t is time
     * @param lnImpliedRate Natural log of the annualized implied rate
     * @param timeToExpiry Seconds until expiry
     * @return exchangeRate The exchange rate (BT per FW, scaled by 1e18)
     */
    function _getExchangeRateFromImpliedRate(uint256 lnImpliedRate, uint256 timeToExpiry)
        internal
        pure
        returns (int256 exchangeRate)
    {
        uint256 rt = (lnImpliedRate * timeToExpiry) / IMPLIED_RATE_TIME;

        exchangeRate = LogExpMath.exp(rt.Int());
    }

    /**
     * @notice Calculates the exchange rate for a given trade
     * @dev Uses logit function: exchangeRate = ln(proportion / (1 - proportion)) / rateScalar + rateAnchor
     * @param totalbt Total BT reserves
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param rateAnchor Current rate anchor
     * @param netbtToAccount Net BT being traded (for post-trade rate calculation)
     * @return exchangeRate The exchange rate (always >= 1e18)
     */
    function _getExchangeRate(
        int256 totalbt,
        int256 totalAsset,
        int256 rateScalar,
        int256 rateAnchor,
        int256 netbtToAccount
    ) internal pure returns (int256 exchangeRate) {
        int256 numerator = totalbt.subNoNeg(netbtToAccount);

        int256 proportion = (numerator.divDown(totalbt + totalAsset));

        if (proportion > MAX_MARKET_PROPORTION) {
            revert Errors.MarketProportionTooHigh(proportion, MAX_MARKET_PROPORTION);
        }

        int256 lnProportion = _logProportion(proportion);

        exchangeRate = lnProportion.divDown(rateScalar) + rateAnchor;

        if (exchangeRate < PMath.IONE) revert Errors.MarketExchangeRateBelowOne(exchangeRate);
    }

    /**
     * @notice Calculates the logit of a proportion: ln(p / (1-p))
     * @dev Used in the pricing curve formula
     * @param proportion The proportion value (must be < 1e18)
     * @return res The logit value
     */
    function _logProportion(int256 proportion) internal pure returns (int256 res) {
        if (proportion == PMath.IONE) revert Errors.MarketProportionMustNotEqualOne();

        int256 logitP = proportion.divDown(PMath.IONE - proportion);

        res = logitP.ln();
    }

    /**
     * @notice Calculates the time-adjusted rate scalar
     * @dev Scales inversely with time to expiry, making prices more sensitive near expiry
     * @param market The market state containing scalarRoot
     * @param timeToExpiry Seconds until expiry
     * @return rateScalar The adjusted rate scalar
     */
    function _getRateScalar(MarketState memory market, uint256 timeToExpiry) internal pure returns (int256 rateScalar) {
        rateScalar = (market.scalarRoot * IMPLIED_RATE_TIME.Int()) / timeToExpiry.Int();
        if (rateScalar <= 0) revert Errors.MarketRateScalarBelowZero(rateScalar);
    }

    /**
     * @notice Sets the initial implied rate when the market is first initialized
     * @dev Called only once when the first LP deposits liquidity
     * @param market The market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param initialAnchor The configured initial anchor value
     * @param blockTime Current block timestamp
     */
    function setInitialLnImpliedRate(MarketState memory market, BCIndex index, int256 initialAnchor, uint256 blockTime)
        internal
        pure
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        int256 totalAsset = index.fwToAsset(market.totalFw);
        uint256 timeToExpiry = market.expiry - blockTime;
        int256 rateScalar = _getRateScalar(market, timeToExpiry);

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.lastLnImpliedRate =
            _getLnImpliedRate(market.totalBt, totalAsset, rateScalar, initialAnchor, timeToExpiry);
    }
}

// ============================================================
// FILE: src/fira_bonding/core/Market/v3/FiraMarketFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "../../../../interfaces/IBCContractFactory.sol";
import "../../../../interfaces/IPMarketFactoryV3.sol";
import "../../../../interfaces/IPMarketV3.sol";

import "../../../libraries/BaseSplitCodeFactory.sol";

import "../../../libraries/BoringOwnableUpgradeable.sol";
import "../../../libraries/Errors.sol";

/**
 * @title FiraMarketFactory
 * @notice Factory contract for deploying FiraMarket AMM instances
 * @dev Each market trades a specific Bond Token (BT) against its corresponding Fira Wrapped (FW) token.
 *      Markets are uniquely identified by BT address + pricing parameters (scalarRoot, initialAnchor, lnFeeRateRoot).
 */
contract FiraMarketFactory is BoringOwnableUpgradeable, IPMarketFactoryV3 {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice Contract A holding part of the FiraMarket creation bytecode (split deployment)
    address public immutable marketCreationCodeContractA;

    /// @notice Size of creation code stored in contract A
    uint256 public immutable marketCreationCodeSizeA;

    /// @notice Contract B holding part of the FiraMarket creation bytecode (split deployment)
    address public immutable marketCreationCodeContractB;

    /// @notice Size of creation code stored in contract B
    uint256 public immutable marketCreationCodeSizeB;

    /// @notice The YieldContractFactory used to validate Bond Tokens
    address public immutable yieldContractFactory;

    /// @notice Maximum allowed ln(feeRateRoot), equivalent to ln(1.05) for ~5% max fee
    uint256 public immutable maxLnFeeRateRoot;

    /// @notice Maximum reserve fee percent (100 = 100% of fees go to reserve)
    uint8 public constant maxReserveFeePercent = 100;

    /// @notice Minimum initial anchor value (must be at least 1e18)
    int256 public constant minInitialAnchor = PMath.IONE;

    /// @notice Address receiving trading fees
    address public treasury;

    /// @notice Percentage of trading fees sent to reserve (0-100)
    uint8 public reserveFeePercent;

    /// @notice Router-specific fee overrides: router => market => lnFeeRateRoot (0 means no override)
    mapping(address => mapping(address => uint80)) internal overriddenFee;

    /// @notice Market registry: BT => scalarRoot => initialAnchor => lnFeeRateRoot => market address
    mapping(address => mapping(int256 => mapping(int256 => mapping(uint80 => address)))) internal markets;

    /// @notice Set of all markets created by this factory
    EnumerableSet.AddressSet internal allMarkets;

    /**
     * @notice Constructs the factory with split creation code for FiraMarket
     * @dev Uses split code deployment pattern due to contract size limits. Also initializes the owner.
     * @param _yieldContractFactory Address of the YieldContractFactory for BT validation
     * @param _marketCreationCodeContractA Address of contract holding market creation code part A
     * @param _marketCreationCodeSizeA Size of creation code in contract A
     * @param _marketCreationCodeContractB Address of contract holding market creation code part B
     * @param _marketCreationCodeSizeB Size of creation code in contract B
     * @param _treasury Initial treasury address
     * @param _reserveFeePercent Initial reserve fee percentage
     */
    constructor(
        address _yieldContractFactory,
        address _marketCreationCodeContractA,
        uint256 _marketCreationCodeSizeA,
        address _marketCreationCodeContractB,
        uint256 _marketCreationCodeSizeB,
        address _treasury,
        uint8 _reserveFeePercent
    ) initializer {
        yieldContractFactory = _yieldContractFactory;
        maxLnFeeRateRoot = uint256(LogExpMath.ln(int256((105 * PMath.IONE) / 100))); // ln(1.05)

        marketCreationCodeContractA = _marketCreationCodeContractA;
        marketCreationCodeSizeA = _marketCreationCodeSizeA;
        marketCreationCodeContractB = _marketCreationCodeContractB;
        marketCreationCodeSizeB = _marketCreationCodeSizeB;

        __BoringOwnable_init();
        setTreasuryAndFeeReserve(_treasury, _reserveFeePercent);
    }

    /**
     * @notice Create a market between BT and its corresponding FW with scalar & anchor config.
     * Anyone is allowed to create a market on their own.
     * @param BT Address of the Bond Token to trade
     * @param scalarRoot Scalar root for pricing curve
     * @param initialAnchor Initial anchor point for pricing curve
     * @param lnFeeRateRoot Natural logarithm of the fee rate root
     * @return market Address of the newly created market
     */
    function createNewMarket(address BT, int256 scalarRoot, int256 initialAnchor, uint80 lnFeeRateRoot)
        external
        returns (address market)
    {
        if (!IBCContractFactory(yieldContractFactory).isBT(BT)) {
            revert Errors.MarketFactoryInvalidBt();
        }
        if (IBondToken(BT).isExpired()) revert Errors.MarketFactoryExpiredBt();
        if (lnFeeRateRoot > maxLnFeeRateRoot) {
            revert Errors.MarketFactoryLnFeeRateRootTooHigh(lnFeeRateRoot, maxLnFeeRateRoot);
        }

        if (markets[BT][scalarRoot][initialAnchor][lnFeeRateRoot] != address(0)) {
            revert Errors.MarketFactoryMarketExists();
        }

        if (initialAnchor < minInitialAnchor) {
            revert Errors.MarketFactoryInitialAnchorTooLow(initialAnchor, minInitialAnchor);
        }

        market = BaseSplitCodeFactory._create2(
            0,
            bytes32(block.chainid),
            abi.encode(BT, scalarRoot, initialAnchor, lnFeeRateRoot),
            marketCreationCodeContractA,
            marketCreationCodeSizeA,
            marketCreationCodeContractB,
            marketCreationCodeSizeB
        );

        markets[BT][scalarRoot][initialAnchor][lnFeeRateRoot] = market;

        if (!allMarkets.add(market)) assert(false);

        emit CreateNewMarket(market, BT, scalarRoot, initialAnchor, lnFeeRateRoot);
    }

    /**
     * @notice Returns the configuration for a specific market and router combination
     * @dev Used by markets to fetch treasury address and fee settings
     * @param market Address of the market
     * @param router Address of the router (for fee override lookup)
     * @return _treasury Address receiving fees
     * @return _overriddenFee Router-specific fee override (0 if none)
     * @return _reserveFeePercent Percentage of fees sent to reserve
     */
    function getMarketConfig(address market, address router)
        external
        view
        returns (address _treasury, uint80 _overriddenFee, uint8 _reserveFeePercent)
    {
        (_treasury, _reserveFeePercent) = (treasury, reserveFeePercent);
        _overriddenFee = overriddenFee[router][market];
    }

    /**
     * @notice Checks if an address is a valid market created by this factory
     * @dev Used for gas-efficient verification of market authenticity
     * @param market Address to check
     * @return True if the address is a market created by this factory
     */
    function isValidMarket(address market) external view returns (bool) {
        return allMarkets.contains(market);
    }

    /**
     * @notice Sets the treasury address and reserve fee percentage
     * @param newTreasury Address to receive trading fees (must be non-zero)
     * @param newReserveFeePercent Percentage of fees for reserve (0-100)
     */
    function setTreasuryAndFeeReserve(address newTreasury, uint8 newReserveFeePercent) public onlyOwner {
        if (newTreasury == address(0)) revert Errors.MarketFactoryZeroTreasury();
        if (newReserveFeePercent > maxReserveFeePercent) {
            revert Errors.MarketFactoryReserveFeePercentTooHigh(newReserveFeePercent, maxReserveFeePercent);
        }

        treasury = newTreasury;
        reserveFeePercent = newReserveFeePercent;

        emit NewTreasuryAndFeeReserve(newTreasury, newReserveFeePercent);
    }

    /**
     * @notice Sets a router-specific fee override for a market
     * @dev Allows certain routers to have lower fees than the market default.
     *      Set newFee to 0 to remove the override.
     * @param router Address of the router to set override for
     * @param market Address of the market (must be a valid market)
     * @param newFee The overridden fee rate (must be less than market's default)
     */
    function setOverriddenFee(address router, address market, uint80 newFee) public onlyOwner {
        if (!allMarkets.contains(market)) revert Errors.MFNotFiraMarket(market);

        uint80 marketFee = IPMarketV3(market).getNonOverrideLnFeeRateRoot();
        if (newFee >= marketFee) revert Errors.MarketFactoryOverriddenFeeTooHigh(newFee, marketFee);

        // NOTE: newFee = 0 allowed !!
        overriddenFee[router][market] = newFee;
        emit SetOverriddenFee(router, market, newFee);
    }
}

// ============================================================
// FILE: src/fira_bonding/libraries/BaseSplitCodeFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.

pragma solidity 0.8.30;

import {Create2} from "@openzeppelin/contracts/utils/Create2.sol";

/// @title CodeDeployer
/// @notice Library for deploying arbitrary bytecode as a contract
/// @dev Uses a minimal deployer pattern that stores any appended bytecode as contract code.
///      The deployer creation code is exactly 32 bytes and simply returns whatever is appended to it.
library CodeDeployer {
    // During contract construction, the full code supplied exists as code, and can be accessed via
    // `codesize` and
    // `codecopy`. This is not the contract's final code however: whatever the constructor returns
    // is what will be
    // stored as its code.
    //
    // We use this mechanism to have a simple constructor that stores whatever is appended to it. The
    // following opcode
    // sequence corresponds to the creation code of the following equivalent Solidity contract, plus
    // padding to make the
    // full code 32 bytes long:
    //
    // contract CodeDeployer {
    // constructor() payable {
    // uint256 size;
    // assembly {
    // size := sub(codesize(), 32) // size of appended data, as constructor is 32 bytes
    // long
    // codecopy(0, 32, size) // copy all appended data to memory at position 0
    // return(0, size) // return appended data for it to be stored as code
    //}
    //}
    //}
    //
    // More specifically, it is composed of the following opcodes (plus padding):
    //
    // [1] PUSH1 0x20
    // [2] CODESIZE
    // [3] SUB
    // [4] DUP1
    // [6] PUSH1 0x20
    // [8] PUSH1 0x00
    // [9] CODECOPY
    // [11] PUSH1 0x00
    // [12] RETURN
    //
    // The padding is just the 0xfe sequence (invalid opcode). It is important as it lets us work
    // in-place, avoiding
    // memory allocation and copying.
    bytes32 private constant _DEPLOYER_CREATION_CODE =
        0x602038038060206000396000f3fefefefefefefefefefefefefefefefefefefe;

    /**
     * @dev Deploys a contract with `code` as its code, returning the destination address.
     *
     * Reverts if deployment fails.
     */
    function deploy(bytes memory code) internal returns (address destination) {
        bytes32 deployerCreationCode = _DEPLOYER_CREATION_CODE;

        // We need to concatenate the deployer creation code and `code` in memory, but want to avoid
        // copying all of
        // `code` (which could be quite long) into a new memory location. Therefore, we operate
        // in-place using
        // assembly.

        // solhint-disable-next-line no-inline-assembly
        assembly {
            let codeLength := mload(code)

            // `code` is composed of length and data. We've already stored its length in
            // `codeLength`, so we simply
            // replace it with the deployer creation code (which is exactly 32 bytes long).
            mstore(code, deployerCreationCode)

            // At this point, `code` now points to the deployer creation code immediately followed
            // by `code`'s data
            // contents. This is exactly what the deployer expects to receive when created.
            destination := create(0, code, add(codeLength, 32))

            // Finally, we restore the original length in order to not mutate `code`.
            mstore(code, codeLength)
        }

        // The create opcode returns the zero address when contract creation fails, so we revert if
        // this happens.
        require(destination != address(0), "DEPLOYMENT_FAILED_BALANCER");
    }
}

/// @title BaseSplitCodeFactory
/// @notice Library for deploying contracts with creation code that exceeds the contract size limit
/// @dev Splits large creation code across two contracts (A and B) to work around the 24KB limit.
///      The creation code is reassembled at deployment time using CREATE2 for deterministic addresses.
library BaseSplitCodeFactory {
    /// @notice Splits and deploys creation code into two storage contracts
    /// @param creationCode The full creation code to split and store
    /// @return creationCodeContractA Address of contract storing first half
    /// @return creationCodeSizeA Size of first half
    /// @return creationCodeContractB Address of contract storing second half
    /// @return creationCodeSizeB Size of second half
    function setCreationCode(bytes memory creationCode)
        internal
        returns (
            address creationCodeContractA,
            uint256 creationCodeSizeA,
            address creationCodeContractB,
            uint256 creationCodeSizeB
        )
    {
        unchecked {
            require(creationCode.length > 0, "zero length");
            uint256 creationCodeSize = creationCode.length;

            // We are going to deploy two contracts: one with approximately the first half of
            // `creationCode`'s contents
            // (A), and another with the remaining half (B).
            // We store the lengths in both immutable and stack variables, since immutable variables
            // cannot be read
            // during
            // construction.
            creationCodeSizeA = creationCodeSize / 2;

            creationCodeSizeB = creationCodeSize - creationCodeSizeA;

            // To deploy the contracts, we're going to use `CodeDeployer.deploy()`, which expects a
            // memory array with
            // the code to deploy. Note that we cannot simply create arrays for A and B's code by
            // copying or moving
            // `creationCode`'s contents as they are expected to be very large (> 24kB), so we must
            // operate in-place.

            // Memory: [ code length ] [ A.data ] [ B.data ]

            // Creating A's array is simple: we simply replace `creationCode`'s length with A's
            // length. We'll later
            // restore
            // the original length.

            bytes memory creationCodeA;
            assembly {
                creationCodeA := creationCode
                mstore(creationCodeA, creationCodeSizeA)
            }

            // Memory: [ A.length ] [ A.data ] [ B.data ]
            // ^ creationCodeA

            creationCodeContractA = CodeDeployer.deploy(creationCodeA);

            // Creating B's array is a bit more involved: since we cannot move B's contents, we are
            // going to create a
            // 'new'
            // memory array starting at A's last 32 bytes, which will be replaced with B's length.
            // We'll back-up this
            // last
            // byte to later restore it.

            bytes memory creationCodeB;
            bytes32 lastByteA;

            assembly {
                // `creationCode` points to the array's length, not data, so by adding A's length to
                // it we arrive at A's
                // last 32 bytes.
                creationCodeB := add(creationCode, creationCodeSizeA)
                lastByteA := mload(creationCodeB)
                mstore(creationCodeB, creationCodeSizeB)
            }

            // Memory: [ A.length ] [ A.data[ : -1] ] [ B.length ][ B.data ]
            // ^ creationCodeA ^ creationCodeB

            creationCodeContractB = CodeDeployer.deploy(creationCodeB);

            // We now restore the original contents of `creationCode` by writing back the original
            // length and A's last
            // byte.
            assembly {
                mstore(creationCodeA, creationCodeSize)
                mstore(creationCodeB, lastByteA)
            }
        }
    }

    /**
     * @dev Returns the creation code of the contract this factory creates.
     */
    function getCreationCode(
        address creationCodeContractA,
        uint256 creationCodeSizeA,
        address creationCodeContractB,
        uint256 creationCodeSizeB
    ) internal view returns (bytes memory) {
        return _getCreationCodeWithArgs(
            "", creationCodeContractA, creationCodeSizeA, creationCodeContractB, creationCodeSizeB
        );
    }

    /**
     * @dev Returns the creation code that will result in a contract being deployed with
     * `constructorArgs`.
     */
    function _getCreationCodeWithArgs(
        bytes memory constructorArgs,
        address creationCodeContractA,
        uint256 creationCodeSizeA,
        address creationCodeContractB,
        uint256 creationCodeSizeB
    ) private view returns (bytes memory code) {
        unchecked {
            // This function exists because `abi.encode()` cannot be instructed to place its result
            // at a specific
            // address.
            // We need for the ABI-encoded constructor arguments to be located immediately after the
            // creation code, but
            // cannot rely on `abi.encodePacked()` to perform concatenation as that would involve
            // copying the creation
            // code,
            // which would be prohibitively expensive.
            // Instead, we compute the creation code in a pre-allocated array that is large enough
            // to hold *both* the
            // creation code and the constructor arguments, and then copy the ABI-encoded arguments
            // (which should not be
            // overly long) right after the end of the creation code.

            // Immutable variables cannot be used in assembly, so we store them in the stack first.

            uint256 creationCodeSize = creationCodeSizeA + creationCodeSizeB;
            uint256 constructorArgsSize = constructorArgs.length;

            uint256 codeSize = creationCodeSize + constructorArgsSize;

            assembly {
                // First, we allocate memory for `code` by retrieving the free memory pointer and
                // then moving it ahead
                //of
                // `code` by the size of the creation code plus constructor arguments, and 32 bytes
                // for the array
                // length.
                code := mload(0x40)
                mstore(0x40, add(code, add(codeSize, 32)))

                // We now store the length of the code plus constructor arguments.
                mstore(code, codeSize)

                // Next, we concatenate the creation code stored in A and B.
                let dataStart := add(code, 32)
                extcodecopy(creationCodeContractA, dataStart, 0, creationCodeSizeA)
                extcodecopy(creationCodeContractB, add(dataStart, creationCodeSizeA), 0, creationCodeSizeB)
            }

            // Finally, we copy the constructorArgs to the end of the array. Unfortunately there is
            // no way to avoid this
            // copy, as it is not possible to tell Solidity where to store the result of
            // `abi.encode()`.
            uint256 constructorArgsDataPtr;
            uint256 constructorArgsCodeDataPtr;
            assembly {
                constructorArgsDataPtr := add(constructorArgs, 32)
                constructorArgsCodeDataPtr := add(add(code, 32), creationCodeSize)
            }

            _memcpy(constructorArgsCodeDataPtr, constructorArgsDataPtr, constructorArgsSize);
        }
    }

    /**
     * @dev Deploys a contract with constructor arguments. To create `constructorArgs`, call
     * `abi.encode()` with the
     * contract's constructor arguments, in order.
     */
    function _create2(
        uint256 amount,
        bytes32 salt,
        bytes memory constructorArgs,
        address creationCodeContractA,
        uint256 creationCodeSizeA,
        address creationCodeContractB,
        uint256 creationCodeSizeB
    ) internal returns (address) {
        unchecked {
            bytes memory creationCode = _getCreationCodeWithArgs(
                constructorArgs, creationCodeContractA, creationCodeSizeA, creationCodeContractB, creationCodeSizeB
            );
            return Create2.deploy(amount, salt, creationCode);
        }
    }

    // From
    // https://github.com/Arachnid/solidity-stringutils/blob/b9a6f6615cf18a87a823cbc461ce9e140a61c305/src/strings.sol
    function _memcpy(uint256 dest, uint256 src, uint256 len) private pure {
        unchecked {
            // Copy word-length chunks while possible
            for (; len >= 32; len -= 32) {
                assembly {
                    mstore(dest, mload(src))
                }
                dest += 32;
                src += 32;
            }

            // Copy remaining bytes
            uint256 mask = 256 ** (32 - len) - 1;
            assembly {
                let srcpart := and(mload(src), not(mask))
                let destpart := and(mload(dest), mask)
                mstore(dest, or(destpart, srcpart))
            }
        }
    }
}

// ============================================================
// FILE: src/fira_bonding/libraries/BoringOwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/// @title BoringOwnableUpgradeableData
/// @notice Storage contract for BoringOwnableUpgradeable ownership state
/// @dev Separated to maintain clean storage layout for upgradeable contracts
contract BoringOwnableUpgradeableData {
    /// @notice Current owner of the contract
    address public owner;
    /// @notice Address that can claim ownership (two-step transfer)
    address public pendingOwner;
}

/// @title BoringOwnableUpgradeable
/// @notice Upgradeable ownership contract with two-step transfer and renounce capability
/// @dev Implements a safer ownership transfer pattern where new owner must explicitly claim
abstract contract BoringOwnableUpgradeable is BoringOwnableUpgradeableData, Initializable {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    function __BoringOwnable_init() internal onlyInitializing {
        owner = msg.sender;
    }

    /// @notice Transfers ownership to `newOwner`. Either directly or claimable by the new pending
    /// owner.
    /// Can only be invoked by the current `owner`.
    /// @param newOwner Address of the new owner.
    /// @param direct True if `newOwner` should be set immediately. False if `newOwner` needs to use
    /// `claimOwnership`.
    /// @param renounce Allows the `newOwner` to be `address(0)` if `direct` and `renounce` is True.
    /// Has no effect
    /// otherwise.
    function transferOwnership(address newOwner, bool direct, bool renounce) public onlyOwner {
        if (direct) {
            // Checks
            require(newOwner != address(0) || renounce, "Ownable: zero address");

            // Effects
            emit OwnershipTransferred(owner, newOwner);
            owner = newOwner;
            pendingOwner = address(0);
        } else {
            // Effects
            pendingOwner = newOwner;
        }
    }

    /// @notice Needs to be called by `pendingOwner` to claim ownership.
    function claimOwnership() public {
        address _pendingOwner = pendingOwner;

        // Checks
        require(msg.sender == _pendingOwner, "Ownable: caller != pending owner");

        // Effects
        emit OwnershipTransferred(owner, _pendingOwner);
        owner = _pendingOwner;
        pendingOwner = address(0);
    }

    /// @notice Only allows the `owner` to execute the function.
    modifier onlyOwner() {
        require(msg.sender == owner, "Ownable: caller is not the owner");
        _;
    }

    uint256[48] private __gap;
}

// ============================================================
// FILE: src/fira_bonding/libraries/Errors.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title Errors
/// @notice Centralized error definitions for the Fira protocol
/// @dev All custom errors are defined here to maintain consistency and reduce bytecode size
///      through error code reuse across contracts.
library Errors {
    // BulkSeller
    error BulkInsufficientFwForTrade(uint256 currentAmount, uint256 requiredAmount);
    error BulkInsufficientTokenForTrade(uint256 currentAmount, uint256 requiredAmount);
    error BulkInSufficientFwOut(uint256 actualFwOut, uint256 requiredFwOut);
    error BulkInSufficientTokenOut(uint256 actualTokenOut, uint256 requiredTokenOut);
    error BulkInsufficientFwReceived(uint256 actualBalance, uint256 requiredBalance);
    error BulkNotMaintainer();
    error BulkNotAdmin();
    error BulkSellerAlreadyExisted(address token, address FW, address bulk);
    error BulkSellerInvalidToken(address token, address FW);
    error BulkBadRateTokenToFw(uint256 actualRate, uint256 currentRate, uint256 eps);
    error BulkBadRateFwToToken(uint256 actualRate, uint256 currentRate, uint256 eps);

    // APPROX
    error ApproxFail();
    error ApproxParamsInvalid(uint256 guessMin, uint256 guessMax, uint256 eps);
    error ApproxBinarySearchInputInvalid(
        uint256 approxGuessMin, uint256 approxGuessMax, uint256 minGuessMin, uint256 maxGuessMax
    );

    // MARKET + MARKET MATH CORE
    error MarketExpired();
    error MarketZeroAmountsInput();
    error MarketZeroAmountsOutput();
    error MarketZeroLnImpliedRate();
    error MarketInsufficientBtForTrade(int256 currentAmount, int256 requiredAmount);
    error MarketInsufficientBtReceived(uint256 actualBalance, uint256 requiredBalance);
    error MarketInsufficientFwReceived(uint256 actualBalance, uint256 requiredBalance);
    error MarketZeroTotalBtOrTotalAsset(int256 totalBw, int256 totalAsset);
    error MarketExchangeRateBelowOne(int256 exchangeRate);
    error MarketProportionMustNotEqualOne();
    error MarketRateScalarBelowZero(int256 rateScalar);
    error MarketScalarRootBelowZero(int256 scalarRoot);
    error MarketProportionTooHigh(int256 proportion, int256 maxProportion);

    error OracleUninitialized();
    error OracleTargetTooOld(uint32 target, uint32 oldest);
    error OracleZeroCardinality();

    error MarketFactoryExpiredBt();
    error MarketFactoryInvalidBt();
    error MarketFactoryMarketExists();

    error MarketFactoryLnFeeRateRootTooHigh(uint80 lnFeeRateRoot, uint256 maxLnFeeRateRoot);
    error MarketFactoryOverriddenFeeTooHigh(uint80 overriddenFee, uint256 marketLnFeeRateRoot);
    error MarketFactoryReserveFeePercentTooHigh(uint8 reserveFeePercent, uint8 maxReserveFeePercent);
    error MarketFactoryZeroTreasury();
    error MarketFactoryInitialAnchorTooLow(int256 initialAnchor, int256 minInitialAnchor);
    error MFNotFiraMarket(address addr);

    // ROUTER
    error RouterInsufficientLpOut(uint256 actualLpOut, uint256 requiredLpOut);
    error RouterInsufficientFwOut(uint256 actualFwOut, uint256 requiredFwOut);
    error RouterInsufficientBtOut(uint256 actualBwOut, uint256 requiredBwOut);
    error RouterInsufficientCtOut(uint256 actualCtOut, uint256 requiredCtOut);
    error RouterInsufficientPYOut(uint256 actualPYOut, uint256 requiredPYOut);
    error RouterInsufficientTokenOut(uint256 actualTokenOut, uint256 requiredTokenOut);
    error RouterInsufficientFwRepay(uint256 actualFwRepay, uint256 requiredFwRepay);
    error RouterInsufficientBtRepay(uint256 actualBwRepay, uint256 requiredBwRepay);
    error RouterNotAllFWUsed(uint256 netFwDesired, uint256 netFwUsed);

    error RouterTimeRangeZero();
    error RouterCallbackNotFiraMarket(address caller);
    error RouterInvalidAction(bytes4 selector);
    error RouterInvalidFacet(address facet);

    error RouterKyberSwapDataZero();

    error SimulationResults(bool success, bytes res);

    // YIELD CONTRACT
    error YCExpired();
    error YCNotExpired();
    error YieldContractInsufficientFw(uint256 actualFw, uint256 requiredFw);
    error YCNothingToRedeem();
    error YCPostExpiryDataNotSet();
    error YCNoFloatingFw();

    // YieldFactory
    error YCFactoryInvalidExpiry();
    error YCFactoryYieldContractExisted();
    error YCFactoryZeroExpiryDivisor();
    error YCFactoryZeroTreasury();
    error YCFactoryInterestFeeRateTooHigh(uint256 interestFeeRate, uint256 maxInterestFeeRate);
    error YCFactoryRewardFeeRateTooHigh(uint256 newRewardFeeRate, uint256 maxRewardFeeRate);

    //FW
    error FWInvalidTokenIn(address token);
    error FWInvalidTokenOut(address token);
    error FWZeroDeposit();
    error FWZeroRedeem();
    error FWInsufficientSharesOut(uint256 actualSharesOut, uint256 requiredSharesOut);
    error FWInsufficientTokenOut(uint256 actualTokenOut, uint256 requiredTokenOut);

    // FW-specific
    error FWQiTokenMintFailed(uint256 errCode);
    error FWQiTokenRedeemFailed(uint256 errCode);
    error FWQiTokenRedeemRewardsFailed(uint256 rewardAccruedType0, uint256 rewardAccruedType1);
    error FWQiTokenBorrowRateTooHigh(uint256 borrowRate, uint256 borrowRateMax);

    error FWCurveInvalidPid();
    error FWCurve3crvPoolNotFound();

    error FWApeDepositAmountTooSmall(uint256 amountDeposited);
    error FWBalancerInvalidPid();
    error FWInvalidRewardToken(address token);

    error FWStargateRedeemCapExceeded(uint256 amountLpDesired, uint256 amountLpRedeemable);

    error FWBalancerReentrancy();

    /// @dev Reverts when FW exchangeRate is 0 but totalSupply > 0 (total vault wipeout)
    error FWFullWipeout();

    error NotFromTrustedRemote(uint16 srcChainId, bytes path);

    error ApxETHNotEnoughBuffer();

    /// @dev Error for when caller is not the pauser
    error FWOnlyPauser();

    /// @dev Error for when deposits are paused
    error FWDepositsPaused();

    /// @dev Error for when redemptions are paused
    error FWRedemptionsPaused();

    // Cross-Chain
    error MsgNotFromSendEndpoint(uint16 srcChainId, bytes path);
    error MsgNotFromReceiveEndpoint(address sender);
    error InsufficientFeeToSendMsg(uint256 currentFee, uint256 requiredFee);
    error ApproxDstExecutionGasNotSet();
    error InvalidRetryData();

    // GENERIC MSG
    error ArrayLengthMismatch();
    error ArrayEmpty();
    error ArrayOutOfBounds();
    error ZeroAddress();
    error FailedToSendEther();
    error InvalidMerkleProof();

    error OnlyLayerZeroEndpoint();
    error OnlyCT();
    error OnlyYCFactory();
    error OnlyWhitelisted();
    error OnlyLI();

    // Swap Aggregator
    error SAInsufficientTokenIn(address tokenIn, uint256 amountExpected, uint256 amountActual);
    error UnsupportedSelector(uint256 aggregatorType, bytes4 selector);
}

// ============================================================
// FILE: src/fira_bonding/libraries/math/LogExpMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
// associated
// documentation files (the “Software”), to deal in the Software without restriction, including
// without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
// Software, and to
// permit persons to whom the Software is furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the
// Software.

// THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
// BUT NOT LIMITED TO THE
// WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT
// SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
// CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

pragma solidity ^0.8.0;

/* solhint-disable */

/// @title LogExpMath
/// @notice Exponentiation and logarithm functions for 18-decimal fixed-point numbers
/// @dev Implements exp(x), ln(x), and pow(x,y) for 1e18-scaled fixed-point numbers.
///      Exponentiation and logarithm with arbitrary bases are computed via conversion
///      to natural exponentiation and logarithm (base e).
/// @author Fernando Martinelli - @fernandomartinelli
/// @author Sergio Yuhjtman - @sergioyuhjtman
/// @author Daniel Fernandez - @dmf7z
library LogExpMath {
    // All fixed point multiplications and divisions are inlined. This means we need to divide by
    // ONE when multiplying
    // two numbers, and multiply by ONE when dividing them.

    // All arguments and return values are 18 decimal fixed point numbers.
    int256 constant ONE_18 = 1e18;

    // Internally, intermediate values are computed with higher precision as 20 decimal fixed point
    // numbers, and in the
    // case of ln36, 36 decimals.
    int256 constant ONE_20 = 1e20;
    int256 constant ONE_36 = 1e36;

    // The domain of natural exponentiation is bound by the word size and number of decimals used.
    //
    // Because internally the result will be stored using 20 decimals, the largest possible result
    //is
    // (2^255 - 1) / 10^20, which makes the largest exponent ln((2^255 - 1) / 10^20) =
    // 130.700829182905140221.
    // The smallest possible result is 10^(-18), which makes largest negative argument
    // ln(10^(-18)) = -41.446531673892822312.
    // We use 130.0 and -41.0 to have some safety margin.
    int256 constant MAX_NATURAL_EXPONENT = 130e18;
    int256 constant MIN_NATURAL_EXPONENT = -41e18;

    // Bounds for ln_36's argument. Both ln(0.9) and ln(1.1) can be represented with 36 decimal
    // places in a fixed point
    // 256 bit integer.
    int256 constant LN_36_LOWER_BOUND = ONE_18 - 1e17;
    int256 constant LN_36_UPPER_BOUND = ONE_18 + 1e17;

    uint256 constant MILD_EXPONENT_BOUND = 2 ** 254 / uint256(ONE_20);

    // 18 decimal constants
    int256 constant x0 = 128000000000000000000; // 2ˆ7
    int256 constant a0 = 38877084059945950922200000000000000000000000000000000000; // eˆ(x0)
        // (no decimals)
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

    /**
     * @dev Natural exponentiation (e^x) with signed 18 decimal fixed point exponent.
     *
     * Reverts if `x` is smaller than MIN_NATURAL_EXPONENT, or larger than `MAX_NATURAL_EXPONENT`.
     */
    function exp(int256 x) internal pure returns (int256) {
        unchecked {
            require(x >= MIN_NATURAL_EXPONENT && x <= MAX_NATURAL_EXPONENT, "Invalid exponent");

            if (x < 0) {
                // We only handle positive exponents: e^(-x) is computed as 1 / e^x. We can safely
                // make x positive since
                //it
                // fits in the signed 256 bit range (as it is larger than MIN_NATURAL_EXPONENT).
                // Fixed point division requires multiplying by ONE_18.
                return ((ONE_18 * ONE_18) / exp(-x));
            }

            // First, we use the fact that e^(x+y) = e^x * e^y to decompose x into a sum of powers
            // of two, which we call
            // x_n,
            // where x_n == 2^(7 - n), and e^x_n = a_n has been precomputed. We choose the first
            // x_n, x0, to equal 2^7
            // because all larger powers are larger than MAX_NATURAL_EXPONENT, and therefore not
            // present in the
            // decomposition.
            // At the end of this process we will have the product of all e^x_n = a_n that apply,
            // and the remainder of
            // this
            // decomposition, which will be lower than the smallest x_n.
            // exp(x) = k_0 * a_0 * k_1 * a_1 * ... + k_n * a_n * exp(remainder), where each k_n
            // equals either 0 or 1.
            // We mutate x by subtracting x_n, making it the remainder of the decomposition.

            // The first two a_n (e^(2^7) and e^(2^6)) are too large if stored as 18 decimal
            // numbers, and could cause
            // intermediate overflows. Instead we store them as plain integers, with 0 decimals.
            // Additionally, x0 + x1 is larger than MAX_NATURAL_EXPONENT, which means they will not
            // both be present in
            // the
            // decomposition.

            // For each x_n, we test if that term is present in the decomposition (if x is larger
            // than it), and if so
            // deduct
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

            // We now transform x into a 20 decimal fixed point number, to have enhanced precision
            // when computing the
            // smaller terms.
            x *= 100;

            // `product` is the accumulated product of all a_n (except a0 and a1), which starts at
            // 20 decimal fixed
            // point
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

            // Now we need to compute e^x, where x is small (in particular, it is smaller than x9).
            // We use the Taylor
            // series
            // expansion for e^x: 1 + x + (x^2 / 2!) + (x^3 / 3!) + ... + (x^n / n!).

            int256 seriesSum = ONE_20; // The initial one in the sum, with 20 decimal places.
            int256 term; // Each term in the sum, where the nth term is (x^n / n!).

            // The first term is simply x.
            term = x;
            seriesSum += term;

            // Each term (x^n / n!) equals the previous one times x, divided by n. Since x is a
            // fixed point number,
            // multiplying by it requires dividing by ONE_20, but dividing by the non-fixed point n
            // values does not.

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

            // We now have the first a_n (with no decimals), and the product of all other a_n
            // present, and the Taylor
            // approximation of the exponentiation of the remainder (both with 20 decimals). All
            // that remains is to
            // multiply
            // all three (one 20 decimal fixed point multiplication, dividing by ONE_20, and one
            // integer
            // multiplication),
            // and then drop two digits to return an 18 decimal value.

            return (((product * seriesSum) / ONE_20) * firstAN) / 100;
        }
    }

    /**
     * @dev Natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function ln(int256 a) internal pure returns (int256) {
        unchecked {
            // The real natural logarithm is not defined for negative numbers or zero.
            require(a > 0, "out of bounds");
            if (LN_36_LOWER_BOUND < a && a < LN_36_UPPER_BOUND) {
                return _ln_36(a) / ONE_18;
            } else {
                return _ln(a);
            }
        }
    }

    /**
     * @dev Exponentiation (x^y) with unsigned 18 decimal fixed point base and exponent.
     *
     * Reverts if ln(x) * y is smaller than `MIN_NATURAL_EXPONENT`, or larger than
     * `MAX_NATURAL_EXPONENT`.
     */
    function pow(uint256 x, uint256 y) internal pure returns (uint256) {
        unchecked {
            if (y == 0) {
                // We solve the 0^0 indetermination by making it equal one.
                return uint256(ONE_18);
            }

            if (x == 0) {
                return 0;
            }

            // Instead of computing x^y directly, we instead rely on the properties of logarithms
            // and exponentiation to
            // arrive at that r`esult. In particular, exp(ln(x)) = x, and ln(x^y) = y * ln(x). This
            // means
            // x^y = exp(y * ln(x)).

            // The ln function takes a signed value, so we need to make sure x fits in the signed
            // 256 bit range.
            require(x < 2 ** 255, "x out of bounds");
            int256 x_int256 = int256(x);

            // We will compute y * ln(x) in a single step. Depending on the value of x, we can
            // either use ln or ln_36. In
            // both cases, we leave the division by ONE_18 (due to fixed point multiplication) to
            // the end.

            // This prevents y * ln(x) from overflowing, and at the same time guarantees y fits in
            // the signed 256 bit
            // range.
            require(y < MILD_EXPONENT_BOUND, "y out of bounds");
            int256 y_int256 = int256(y);

            int256 logx_times_y;
            if (LN_36_LOWER_BOUND < x_int256 && x_int256 < LN_36_UPPER_BOUND) {
                int256 ln_36_x = _ln_36(x_int256);

                // ln_36_x has 36 decimal places, so multiplying by y_int256 isn't as
                // straightforward, since we can't
                // just
                // bring y_int256 to 36 decimal places, as it might overflow. Instead, we perform
                // two 18 decimal
                // multiplications and add the results: one with the first 18 decimals of ln_36_x,
                // and one with the
                // (downscaled) last 18 decimals.
                logx_times_y = ((ln_36_x / ONE_18) * y_int256 + ((ln_36_x % ONE_18) * y_int256) / ONE_18);
            } else {
                logx_times_y = _ln(x_int256) * y_int256;
            }
            logx_times_y /= ONE_18;

            // Finally, we compute exp(y * ln(x)) to arrive at x^y
            require(
                MIN_NATURAL_EXPONENT <= logx_times_y && logx_times_y <= MAX_NATURAL_EXPONENT, "product out of bounds"
            );

            return uint256(exp(logx_times_y));
        }
    }

    /**
     * @dev Internal natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function _ln(int256 a) private pure returns (int256) {
        unchecked {
            if (a < ONE_18) {
                // Since ln(a^k) = k * ln(a), we can compute ln(a) as ln(a) = ln((1/a)^(-1)) = -
                // ln((1/a)). If a is less
                // than one, 1/a will be greater than one, and this if statement will not be entered
                // in the recursive
                // call.
                // Fixed point division requires multiplying by ONE_18.
                return (-_ln((ONE_18 * ONE_18) / a));
            }

            // First, we use the fact that ln^(a * b) = ln(a) + ln(b) to decompose ln(a) into a sum
            // of powers of two,
            // which
            // we call x_n, where x_n == 2^(7 - n), which are the natural logarithm of precomputed
            // quantities a_n (that
            // is,
            // ln(a_n) = x_n). We choose the first x_n, x0, to equal 2^7 because the exponential of
            // all larger powers
            // cannot
            // be represented as 18 fixed point decimal numbers in 256 bits, and are therefore
            // larger than a.
            // At the end of this process we will have the sum of all x_n = ln(a_n) that apply, and
            // the remainder of
            // this
            // decomposition, which will be lower than the smallest a_n.
            // ln(a) = k_0 * x_0 + k_1 * x_1 + ... + k_n * x_n + ln(remainder), where each k_n
            // equals either 0 or 1.
            // We mutate a by subtracting a_n, making it the remainder of the decomposition.

            // For reasons related to how `exp` works, the first two a_n (e^(2^7) and e^(2^6)) are
            // not stored as fixed
            // point
            // numbers with 18 decimals, but instead as plain integers with 0 decimals, so we need
            // to multiply them by
            // ONE_18 to convert them to fixed point.
            // For each a_n, we test if that term is present in the decomposition (if a is larger
            // than it), and if so
            // divide
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

            // All other a_n and x_n are stored as 20 digit fixed point numbers, so we convert the
            // sum and a to this
            // format.
            sum *= 100;
            a *= 100;

            // Because further a_n are 20 digit fixed point numbers, we multiply by ONE_20 when
            // dividing by them.

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

            // a is now a small number (smaller than a_11, which roughly equals 1.06). This means we
            // can use a Taylor
            // series
            // that converges rapidly for values of `a` close to one - the same one used in ln_36.
            // Let z = (a - 1) / (a + 1).
            // ln(a) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

            // Recall that 20 digit fixed point division requires multiplying by ONE_20, and
            // multiplication requires
            // division by ONE_20.
            int256 z = ((a - ONE_20) * ONE_20) / (a + ONE_20);
            int256 z_squared = (z * z) / ONE_20;

            // num is the numerator of the series: the z^(2 * n + 1) term
            int256 num = z;

            // seriesSum holds the accumulated sum of each term in the series, starting with the
            // initial z
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

            // We now have the sum of all x_n present, and the Taylor approximation of the logarithm
            // of the remainder
            // (both
            // with 20 decimals). All that remains is to sum these two, and then drop two digits to
            // return a 18 decimal
            // value.

            return (sum + seriesSum) / 100;
        }
    }

    /**
     * @dev Intrnal high precision (36 decimal places) natural logarithm (ln(x)) with signed 18
     * decimal fixed point
     * argument,
     * for x close to one.
     *
     * Should only be used if x is between LN_36_LOWER_BOUND and LN_36_UPPER_BOUND.
     */
    function _ln_36(int256 x) private pure returns (int256) {
        unchecked {
            // Since ln(1) = 0, a value of x close to one will yield a very small result, which
            // makes using 36 digits
            // worthwhile.

            // First, we transform x to a 36 digit fixed point value.
            x *= ONE_18;

            // We will use the following Taylor expansion, which converges very rapidly. Let z = (x
            // - 1) / (x + 1).
            // ln(x) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

            // Recall that 36 digit fixed point division requires multiplying by ONE_36, and
            // multiplication requires
            // division by ONE_36.
            int256 z = ((x - ONE_36) * ONE_36) / (x + ONE_36);
            int256 z_squared = (z * z) / ONE_36;

            // num is the numerator of the series: the z^(2 * n + 1) term
            int256 num = z;

            // seriesSum holds the accumulated sum of each term in the series, starting with the
            // initial z
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
}

// ============================================================
// FILE: src/fira_bonding/libraries/math/PMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.

pragma solidity ^0.8.0;

/* solhint-disable private-vars-leading-underscore, reason-string */

/// @title PMath
/// @notice Fixed-point math library for 18-decimal precision arithmetic
/// @dev Provides multiplication, division, and utility functions for 1e18-scaled fixed-point numbers.
///      Includes safe casting functions between signed and unsigned types of various sizes.
library PMath {
    uint256 internal constant ONE = 1e18; // 18 decimal places
    int256 internal constant IONE = 1e18; // 18 decimal places

    function subMax0(uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            return (a >= b ? a - b : 0);
        }
    }

    function subNoNeg(int256 a, int256 b) internal pure returns (int256) {
        require(a >= b, "negative");
        return a - b; // no unchecked since if b is very negative, a - b might overflow
    }

    function mulDown(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 product = a * b;
        unchecked {
            return product / ONE;
        }
    }

    function mulDown(int256 a, int256 b) internal pure returns (int256) {
        int256 product = a * b;
        unchecked {
            return product / IONE;
        }
    }

    function divDown(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 aInflated = a * ONE;
        unchecked {
            return aInflated / b;
        }
    }

    function divDown(int256 a, int256 b) internal pure returns (int256) {
        int256 aInflated = a * IONE;
        unchecked {
            return aInflated / b;
        }
    }

    function rawDivUp(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a + b - 1) / b;
    }

    function rawDivUp(int256 a, int256 b) internal pure returns (int256) {
        return (a + b - 1) / b;
    }

    function tweakUp(uint256 a, uint256 factor) internal pure returns (uint256) {
        return mulDown(a, ONE + factor);
    }

    function tweakDown(uint256 a, uint256 factor) internal pure returns (uint256) {
        return mulDown(a, ONE - factor);
    }

    /// @return res = min(a + b, bound)
    /// @dev This function should handle arithmetic operation and bound check without
    /// overflow/underflow
    function addWithUpperBound(uint256 a, uint256 b, uint256 bound) internal pure returns (uint256 res) {
        unchecked {
            if (type(uint256).max - b < a) res = bound;
            else res = min(bound, a + b);
        }
    }

    /// @return res = max(a - b, bound)
    /// @dev This function should handle arithmetic operation and bound check without
    /// overflow/underflow
    function subWithLowerBound(uint256 a, uint256 b, uint256 bound) internal pure returns (uint256 res) {
        unchecked {
            if (b > a) res = bound;
            else res = max(a - b, bound);
        }
    }

    function clamp(uint256 x, uint256 lower, uint256 upper) internal pure returns (uint256 res) {
        res = x;
        if (x < lower) res = lower;
        else if (x > upper) res = upper;
    }

    // @author Uniswap
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

    function square(uint256 x) internal pure returns (uint256) {
        return x * x;
    }

    function squareDown(uint256 x) internal pure returns (uint256) {
        return mulDown(x, x);
    }

    function abs(int256 x) internal pure returns (uint256) {
        return uint256(x > 0 ? x : -x);
    }

    function neg(int256 x) internal pure returns (int256) {
        return x * (-1);
    }

    function neg(uint256 x) internal pure returns (int256) {
        return Int(x) * (-1);
    }

    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x > y ? x : y);
    }

    function max(int256 x, int256 y) internal pure returns (int256) {
        return (x > y ? x : y);
    }

    function min(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x < y ? x : y);
    }

    function min(int256 x, int256 y) internal pure returns (int256) {
        return (x < y ? x : y);
    }

    /* ///////////////////////////////////////////////////////////////
                               SIGNED CASTS
    //////////////////////////////////////////////////////////////*/

    function Int(uint256 x) internal pure returns (int256) {
        require(x <= uint256(type(int256).max));
        return int256(x);
    }

    function Int128(int256 x) internal pure returns (int128) {
        require(type(int128).min <= x && x <= type(int128).max);
        return int128(x);
    }

    function Int128(uint256 x) internal pure returns (int128) {
        return Int128(Int(x));
    }

    /* ///////////////////////////////////////////////////////////////
                               UNSIGNED CASTS
    //////////////////////////////////////////////////////////////*/

    function Uint(int256 x) internal pure returns (uint256) {
        require(x >= 0);
        return uint256(x);
    }

    function Uint32(uint256 x) internal pure returns (uint32) {
        require(x <= type(uint32).max);
        return uint32(x);
    }

    function Uint64(uint256 x) internal pure returns (uint64) {
        require(x <= type(uint64).max);
        return uint64(x);
    }

    function Uint112(uint256 x) internal pure returns (uint112) {
        require(x <= type(uint112).max);
        return uint112(x);
    }

    function Uint96(uint256 x) internal pure returns (uint96) {
        require(x <= type(uint96).max);
        return uint96(x);
    }

    function Uint128(uint256 x) internal pure returns (uint128) {
        require(x <= type(uint128).max);
        return uint128(x);
    }

    function Uint192(uint256 x) internal pure returns (uint192) {
        require(x <= type(uint192).max);
        return uint192(x);
    }

    function isAApproxB(uint256 a, uint256 b, uint256 eps) internal pure returns (bool) {
        return mulDown(b, ONE - eps) <= a && a <= mulDown(b, ONE + eps);
    }

    function isAGreaterApproxB(uint256 a, uint256 b, uint256 eps) internal pure returns (bool) {
        return a >= b && a <= mulDown(b, ONE + eps);
    }

    function isASmallerApproxB(uint256 a, uint256 b, uint256 eps) internal pure returns (bool) {
        return a <= b && a >= mulDown(b, ONE - eps);
    }
}

// ============================================================
// FILE: src/fira_bonding/libraries/MiniHelpers.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title MiniHelpers
/// @notice Small utility functions for time-based checks
/// @dev Provides expiry and timestamp validation helpers used throughout the protocol
library MiniHelpers {
    function isCurrentlyExpired(uint256 expiry) internal view returns (bool) {
        return (expiry <= block.timestamp);
    }

    function isExpired(uint256 expiry, uint256 blockTime) internal pure returns (bool) {
        return (expiry <= blockTime);
    }

    function isTimeInThePast(uint256 timestamp) internal view returns (bool) {
        return (timestamp <= block.timestamp); // same definition as isCurrentlyExpired
    }
}

// ============================================================
// FILE: src/fira_bonding/StandardizedYield/BCIndex.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "../../interfaces/IBCToken.sol";
import "../../interfaces/IBondToken.sol";

import "../libraries/math/PMath.sol";
import "./FWUtils.sol";

/// @notice Custom type representing the BC (Bond+Coupon) exchange rate index
/// @dev Wraps a uint256 representing the exchange rate between FW and BC assets
type BCIndex is uint256;

/// @title BCIndexLib
/// @notice Library for converting between FW amounts and BC asset amounts using the BC index
/// @dev The BC index represents how much underlying asset 1 FW token is worth.
///      Used for minting/redeeming Bond+Coupon token pairs.
library BCIndexLib {
    using PMath for uint256;
    using PMath for int256;

    /// @notice Creates a new BCIndex from a Coupon Token's current index
    /// @param CT The Coupon Token contract to get the index from
    /// @return The current BC index wrapped as BCIndex type
    function newIndex(IBCToken CT) internal returns (BCIndex) {
        return BCIndex.wrap(CT.bcIndexCurrent());
    }

    /// @notice Converts FW amount to underlying asset amount (rounds down)
    /// @param index The BC exchange rate index
    /// @param fwAmount Amount of FW tokens
    /// @return Equivalent amount of underlying assets
    function fwToAsset(BCIndex index, uint256 fwAmount) internal pure returns (uint256) {
        return FWUtils.fwToAsset(BCIndex.unwrap(index), fwAmount);
    }

    /// @notice Converts underlying asset amount to FW amount (rounds down)
    /// @param index The BC exchange rate index
    /// @param assetAmount Amount of underlying assets
    /// @return Equivalent amount of FW tokens
    function assetToFw(BCIndex index, uint256 assetAmount) internal pure returns (uint256) {
        return FWUtils.assetToFw(BCIndex.unwrap(index), assetAmount);
    }

    /// @notice Converts underlying asset amount to FW amount (rounds up)
    /// @param index The BC exchange rate index
    /// @param assetAmount Amount of underlying assets
    /// @return Equivalent amount of FW tokens, rounded up
    function assetToFwUp(BCIndex index, uint256 assetAmount) internal pure returns (uint256) {
        return FWUtils.assetToFwUp(BCIndex.unwrap(index), assetAmount);
    }

    /// @notice Converts FW amount to underlying asset amount (rounds up)
    /// @param index The BC exchange rate index
    /// @param fwAmount Amount of FW tokens
    /// @return Equivalent amount of underlying assets, rounded up
    function fwToAssetUp(BCIndex index, uint256 fwAmount) internal pure returns (uint256) {
        uint256 _index = BCIndex.unwrap(index);
        return FWUtils.fwToAssetUp(_index, fwAmount);
    }

    /// @notice Converts signed FW amount to signed asset amount (preserves sign, rounds down magnitude)
    /// @param index The BC exchange rate index
    /// @param fwAmount Signed amount of FW tokens
    /// @return Equivalent signed amount of underlying assets
    function fwToAsset(BCIndex index, int256 fwAmount) internal pure returns (int256) {
        int256 sign = fwAmount < 0 ? int256(-1) : int256(1);
        return sign * (FWUtils.fwToAsset(BCIndex.unwrap(index), fwAmount.abs())).Int();
    }

    /// @notice Converts signed asset amount to signed FW amount (preserves sign, rounds down magnitude)
    /// @param index The BC exchange rate index
    /// @param assetAmount Signed amount of underlying assets
    /// @return Equivalent signed amount of FW tokens
    function assetToFw(BCIndex index, int256 assetAmount) internal pure returns (int256) {
        int256 sign = assetAmount < 0 ? int256(-1) : int256(1);
        return sign * (FWUtils.assetToFw(BCIndex.unwrap(index), assetAmount.abs())).Int();
    }

    /// @notice Converts signed asset amount to signed FW amount (preserves sign, rounds up magnitude)
    /// @param index The BC exchange rate index
    /// @param assetAmount Signed amount of underlying assets
    /// @return Equivalent signed amount of FW tokens, magnitude rounded up
    function assetToFwUp(BCIndex index, int256 assetAmount) internal pure returns (int256) {
        int256 sign = assetAmount < 0 ? int256(-1) : int256(1);
        return sign * (FWUtils.assetToFwUp(BCIndex.unwrap(index), assetAmount.abs())).Int();
    }
}

// ============================================================
// FILE: src/fira_bonding/StandardizedYield/FWUtils.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title FWUtils
/// @notice Utility library for converting between FW token amounts and underlying asset amounts
/// @dev All conversions use 18-decimal fixed-point math with the exchange rate scaled by 1e18.
///      The exchange rate represents how much underlying asset 1 FW token is worth.
library FWUtils {
    /// @notice Scaling factor for fixed-point math (1e18)
    uint256 internal constant ONE = 1e18;

    /// @notice Converts FW token amount to underlying asset amount (rounds down)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param fwAmount Amount of FW tokens to convert
    /// @return Equivalent amount of underlying assets, rounded down
    function fwToAsset(uint256 exchangeRate, uint256 fwAmount) internal pure returns (uint256) {
        return (fwAmount * exchangeRate) / ONE;
    }

    /// @notice Converts FW token amount to underlying asset amount (rounds up)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param fwAmount Amount of FW tokens to convert
    /// @return Equivalent amount of underlying assets, rounded up
    function fwToAssetUp(uint256 exchangeRate, uint256 fwAmount) internal pure returns (uint256) {
        return (fwAmount * exchangeRate + ONE - 1) / ONE;
    }

    /// @notice Converts underlying asset amount to FW token amount (rounds down)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param assetAmount Amount of underlying assets to convert
    /// @return Equivalent amount of FW tokens, rounded down
    function assetToFw(uint256 exchangeRate, uint256 assetAmount) internal pure returns (uint256) {
        return (assetAmount * ONE) / exchangeRate;
    }

    /// @notice Converts underlying asset amount to FW token amount (rounds up)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param assetAmount Amount of underlying assets to convert
    /// @return Equivalent amount of FW tokens, rounded up
    function assetToFwUp(uint256 exchangeRate, uint256 assetAmount) internal pure returns (uint256) {
        return (assetAmount * ONE + exchangeRate - 1) / exchangeRate;
    }
}

// ============================================================
// FILE: src/interfaces/IBCContractFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
/*
 * MIT License
 * ===========
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 */

pragma solidity 0.8.30;

interface IBCContractFactory {
    event CreateYieldContract(address indexed FW, uint256 indexed expiry, address BT, address CT);

    event SetExpiryDivisor(uint256 newExpiryDivisor);

    event SetInterestFeeRate(uint256 newInterestFeeRate);

    event SetRewardFeeRate(uint256 newRewardFeeRate);

    event SetTreasury(address indexed treasury);

    event SetLiquidityInjector(address indexed liquidityInjector);

    function getBT(address FW, uint256 expiry) external view returns (address);

    function getCT(address FW, uint256 expiry) external view returns (address);

    function expiryDivisor() external view returns (uint96);

    function interestFeeRate() external view returns (uint128);

    function rewardFeeRate() external view returns (uint128);

    function treasury() external view returns (address);

    function isBT(address) external view returns (bool);

    function isCT(address) external view returns (bool);

    function createYieldContract(address FW, uint32 expiry, bool doCacheIndexSameBlock)
        external
        returns (address BT, address CT);
}

// ============================================================
// FILE: src/interfaces/IBCToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "./IPInterestManagerCT.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IBCToken is IERC20Metadata, IPInterestManagerCT {
    event NewInterestIndex(uint256 indexed newIndex);

    event Mint(
        address indexed caller,
        address indexed receiverBT,
        address indexed receiverCT,
        uint256 amountFwToMint,
        uint256 amountPYOut
    );

    event Burn(address indexed caller, address indexed receiver, uint256 amountBcToRedeem, uint256 amountFwOut);

    event RedeemRewards(address indexed user, uint256[] amountRewardsOut);

    event RedeemInterest(address indexed user, uint256 interestOut);

    event CollectRewardFee(address indexed rewardToken, uint256 amountRewardFee);

    function mintBC(address receiverBT, address receiverCT) external returns (uint256 amountBCOut);

    function redeemBC(address receiver) external returns (uint256 amountFwOut);

    function redeemBCMulti(address[] calldata receivers, uint256[] calldata amountBcToRedeems)
        external
        returns (uint256[] memory amountFwOuts);

    function redeemDueInterestAndRewards(address user, bool redeemInterest, bool redeemRewards)
        external
        returns (uint256 interestOut, uint256[] memory rewardsOut);

    function rewardIndexesCurrent() external returns (uint256[] memory);

    function bcIndexCurrent() external returns (uint256);

    function bcIndexStored() external view returns (uint256);

    function getRewardTokens() external view returns (address[] memory);

    function FW() external view returns (address);

    function BT() external view returns (address);

    function factory() external view returns (address);

    function expiry() external view returns (uint256);

    function isExpired() external view returns (bool);

    function doCacheIndexSameBlock() external view returns (bool);

    function bcIndexLastUpdatedBlock() external view returns (uint128);

    function postExpiry() external view returns (uint128 firstBCIndex, uint128 totalFwInterestForTreasury);
}

// ============================================================
// FILE: src/interfaces/IBondToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IBondToken is IERC20Metadata {
    function burnByCT(address user, uint256 amount) external;

    function mintByCT(address user, uint256 amount) external;

    function mintByLI(address user, uint256 amount) external;

    function burnByLI(address user, uint256 amount) external;

    function initialize(address CT) external;

    function FW() external view returns (address);

    function CT() external view returns (address);

    function factory() external view returns (address);

    function expiry() external view returns (uint256);

    function isExpired() external view returns (bool);
}

// ============================================================
// FILE: src/interfaces/IFiraWrappedStandardized.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
/*
 * MIT License
 * ===========
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 */

pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IFiraWrappedStandardized is IERC20Metadata {
    /// @dev Emitted when any base tokens is deposited to mint shares
    event Deposit(
        address indexed caller,
        address indexed receiver,
        address indexed tokenIn,
        uint256 amountDeposited,
        uint256 amountFwOut
    );

    /// @dev Emitted when any shares are redeemed for base tokens
    event Redeem(
        address indexed caller,
        address indexed receiver,
        address indexed tokenOut,
        uint256 amountFwToRedeem,
        uint256 amountTokenOut
    );

    /// @dev Emitted when deposits are paused or unpaused
    event DepositsPaused(bool paused);
    /// @dev Emitted when redemptions are paused or unpaused
    event RedemptionsPaused(bool paused);
    /// @dev Emitted when pauser is changed
    event PauserChanged(address indexed newPauser);

    /// @dev check `assetInfo()` for more information
    enum AssetType {
        TOKEN,
        LIQUIDITY
    }

    /// @dev Emitted when (`user`) claims their rewards
    event ClaimRewards(address indexed user, address[] rewardTokens, uint256[] rewardAmounts);

    /**
     * @notice mints an amount of shares by depositing a base token.
     * @param receiver shares recipient address
     * @param tokenIn address of the base tokens to mint shares
     * @param amountTokenToDeposit amount of base tokens to be transferred from (`msg.sender`)
     * @param minSharesOut reverts if amount of shares minted is lower than this
     * @return amountSharesOut amount of shares minted
     * @dev Emits a {Deposit} event
     *
     * Requirements:
     * - (`tokenIn`) must be a valid base token.
     */
    function deposit(address receiver, address tokenIn, uint256 amountTokenToDeposit, uint256 minSharesOut)
        external
        payable
        returns (uint256 amountSharesOut);

    /**
     * @notice redeems an amount of base tokens by burning some shares
     * @param receiver recipient address
     * @param amountSharesToRedeem amount of shares to be burned
     * @param tokenOut address of the base token to be redeemed
     * @param minTokenOut reverts if amount of base token redeemed is lower than this
     * @param burnFromInternalBalance if true, burns from balance of `address(this)`, otherwise
     * burns from `msg.sender`
     * @return amountTokenOut amount of base tokens redeemed
     * @dev Emits a {Redeem} event
     *
     * Requirements:
     * - (`tokenOut`) must be a valid base token.
     */
    function redeem(
        address receiver,
        uint256 amountSharesToRedeem,
        address tokenOut,
        uint256 minTokenOut,
        bool burnFromInternalBalance
    ) external returns (uint256 amountTokenOut);

    /**
     * @notice exchangeRate * fwBalance / 1e18 must return the asset balance of the account
     * @notice vice-versa, if a user uses some amount of tokens equivalent to X asset, the amount of
     * fw
     *  he can mint must be X * exchangeRate / 1e18
     * @dev FWUtils's assetToFw & fwToAsset should be used instead of raw multiplication
     *  & division
     */
    function exchangeRate() external view returns (uint256 res);

    /**
     * @notice claims reward for (`user`)
     * @param user the user receiving their rewards
     * @return rewardAmounts an array of reward amounts in the same order as `getRewardTokens`
     * @dev
     * Emits a `ClaimRewards` event
     * See {getRewardTokens} for list of reward tokens
     */
    function claimRewards(address user) external returns (uint256[] memory rewardAmounts);

    /**
     * @notice get the amount of unclaimed rewards for (`user`)
     * @param user the user to check for
     * @return rewardAmounts an array of reward amounts in the same order as `getRewardTokens`
     */
    function accruedRewards(address user) external view returns (uint256[] memory rewardAmounts);

    function rewardIndexesCurrent() external returns (uint256[] memory indexes);

    function rewardIndexesStored() external view returns (uint256[] memory indexes);

    /**
     * @notice returns the list of reward token addresses
     */
    function getRewardTokens() external view returns (address[] memory);

    /**
     * @notice returns the address of the underlying yield token
     */
    function yieldToken() external view returns (address);

    /**
     * @notice returns all tokens that can mint this FW
     */
    function getTokensIn() external view returns (address[] memory res);

    /**
     * @notice returns all tokens that can be redeemed by this FW
     */
    function getTokensOut() external view returns (address[] memory res);

    function isValidTokenIn(address token) external view returns (bool);

    function isValidTokenOut(address token) external view returns (bool);

    function previewDeposit(address tokenIn, uint256 amountTokenToDeposit)
        external
        view
        returns (uint256 amountSharesOut);

    function previewRedeem(address tokenOut, uint256 amountSharesToRedeem)
        external
        view
        returns (uint256 amountTokenOut);

    /**
     * @notice This function contains information to interpret what the asset is
     * @return assetType the type of the asset (0 for ERC20 tokens, 1 for AMM liquidity tokens,
     *     2 for bridged yield bearing tokens like wstETH, rETH on Arbi whose the underlying asset
     * doesn't exist on the
     * chain)
     * @return assetAddress the address of the asset
     * @return assetDecimals the decimals of the asset
     */
    function assetInfo() external view returns (AssetType assetType, address assetAddress, uint8 assetDecimals);
}

// ============================================================
// FILE: src/interfaces/IPInterestManagerCT.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IPInterestManagerCT {
    event CollectInterestFee(uint256 amountInterestFee);

    function userInterest(address user) external view returns (uint128 lastBCIndex, uint128 accruedInterest);
}

// ============================================================
// FILE: src/interfaces/IPMarket.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/core/Market/MarketMathCore.sol";

import "./IBondToken.sol";

import "./IBCToken.sol";
import "./IFiraWrappedStandardized.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IPMarket is IERC20Metadata {
    event Mint(address indexed receiver, uint256 netLpMinted, uint256 netFwUsed, uint256 netBtUsed);

    event Burn(
        address indexed receiverFw, address indexed receiverBt, uint256 netLpBurned, uint256 netFwOut, uint256 netBtOut
    );

    event Swap(
        address indexed caller,
        address indexed receiver,
        int256 netBtOut,
        int256 netFwOut,
        uint256 netFwFee,
        uint256 netFwToReserve
    );

    event UpdateImpliedRate(uint256 indexed timestamp, uint256 lnLastImpliedRate);

    event IncreaseObservationCardinalityNext(
        uint16 observationCardinalityNextOld, uint16 observationCardinalityNextNew
    );

    function mint(address receiver, uint256 netFwDesired, uint256 netBtDesired)
        external
        returns (uint256 netLpOut, uint256 netFwUsed, uint256 netBtUsed);

    function burn(address receiverFw, address receiverBt, uint256 netLpToBurn)
        external
        returns (uint256 netFwOut, uint256 netBtOut);

    function swapExactBtForFw(address receiver, uint256 exactBtIn, bytes calldata data)
        external
        returns (uint256 netFwOut, uint256 netFwFee);

    function swapFwForExactBt(address receiver, uint256 exactBtOut, bytes calldata data)
        external
        returns (uint256 netFwIn, uint256 netFwFee);

    function redeemRewards(address user) external returns (uint256[] memory);

    function readState(address router) external view returns (MarketState memory market);

    function observe(uint32[] memory secondsAgos) external view returns (uint216[] memory lnImpliedRateCumulative);

    function increaseObservationsCardinalityNext(uint16 cardinalityNext) external;

    function readTokens() external view returns (IFiraWrappedStandardized _FW, IBondToken _BT, IBCToken _CT);

    function getRewardTokens() external view returns (address[] memory);

    function isExpired() external view returns (bool);

    function expiry() external view returns (uint256);

    function observations(uint256 index)
        external
        view
        returns (uint32 blockTimestamp, uint216 lnImpliedRateCumulative, bool initialized);

    function _storage()
        external
        view
        returns (
            int128 totalBt,
            int128 totalFw,
            uint96 lastLnImpliedRate,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext
        );
}

// ============================================================
// FILE: src/interfaces/IPMarketFactoryV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IPMarketFactoryV3 {
    event SetOverriddenFee(address indexed router, address indexed market, uint80 lnFeeRateRoot);

    event CreateNewMarket(
        address indexed market, address indexed BT, int256 scalarRoot, int256 initialAnchor, uint256 lnFeeRateRoot
    );

    event NewTreasuryAndFeeReserve(address indexed treasury, uint8 reserveFeePercent);

    function isValidMarket(address market) external view returns (bool);

    // If this is changed, change the readState function in market as well
    function getMarketConfig(address market, address router)
        external
        view
        returns (address treasury, uint80 overriddenFee, uint8 reserveFeePercent);

    function createNewMarket(address BT, int256 scalarRoot, int256 initialAnchor, uint80 lnFeeRateRoot)
        external
        returns (address market);

    function setOverriddenFee(address router, address market, uint80 newFee) external;
}

// ============================================================
// FILE: src/interfaces/IPMarketV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "./IPMarket.sol";

interface IPMarketV3 is IPMarket {
    function getNonOverrideLnFeeRateRoot() external view returns (uint80);
}
