// File: @openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMathUpgradeable {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

// File: @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol



pragma solidity >=0.6.2 <0.8.0;

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
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        // solhint-disable-next-line no-inline-assembly
        assembly { size := extcodesize(account) }
        return size > 0;
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
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain`call` is an unsafe replacement for a function call: use this
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
      return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
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
    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{ value: value }(data);
        return _verifyCallResult(success, returndata, errorMessage);
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
    function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.staticcall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                // solhint-disable-next-line no-inline-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

// File: @openzeppelin/contracts-upgradeable/proxy/Initializable.sol



// solhint-disable-next-line compiler-version
pragma solidity >=0.4.24 <0.8.0;


/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since a proxied contract can't have a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {UpgradeableProxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 */
abstract contract Initializable {

    /**
     * @dev Indicates that the contract has been initialized.
     */
    bool private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Modifier to protect an initializer function from being invoked twice.
     */
    modifier initializer() {
        require(_initializing || _isConstructor() || !_initialized, "Initializable: contract is already initialized");

        bool isTopLevelCall = !_initializing;
        if (isTopLevelCall) {
            _initializing = true;
            _initialized = true;
        }

        _;

        if (isTopLevelCall) {
            _initializing = false;
        }
    }

    /// @dev Returns true if and only if the function is running in the constructor
    function _isConstructor() private view returns (bool) {
        return !AddressUpgradeable.isContract(address(this));
    }
}

// File: @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol



pragma solidity >=0.6.0 <0.8.0;


/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal initializer {
        __Context_init_unchained();
    }

    function __Context_init_unchained() internal initializer {
    }
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
    uint256[50] private __gap;
}

// File: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol



pragma solidity >=0.6.0 <0.8.0;


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
    function __Ownable_init() internal initializer {
        __Context_init_unchained();
        __Ownable_init_unchained();
    }

    function __Ownable_init_unchained() internal initializer {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
    uint256[49] private __gap;
}

// File: @openzeppelin/contracts-upgradeable/utils/EnumerableSetUpgradeable.sol



pragma solidity >=0.6.0 <0.8.0;

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
 * ```
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
 */
library EnumerableSetUpgradeable {
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
        mapping (bytes32 => uint256) _indexes;
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

        if (valueIndex != 0) { // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 toDeleteIndex = valueIndex - 1;
            uint256 lastIndex = set._values.length - 1;

            // When the value to delete is the last one, the swap operation is unnecessary. However, since this occurs
            // so rarely, we still do the swap anyway to avoid the gas cost of adding an 'if' statement.

            bytes32 lastvalue = set._values[lastIndex];

            // Move the last value to the index where the value to delete is
            set._values[toDeleteIndex] = lastvalue;
            // Update the index for the moved value
            set._indexes[lastvalue] = toDeleteIndex + 1; // All indexes are 1-based

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
        require(set._values.length > index, "EnumerableSet: index out of bounds");
        return set._values[index];
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
     * @dev Returns the number of values on the set. O(1).
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
}

// File: contracts/interfaces/IStrategy.sol

pragma solidity 0.6.12;

// do not inherit these interfaces 

interface IStrategy {
    function wantLockedTotal() external view returns (uint256);
    function wantLockedInHere() external view returns (uint256);
    function govAddress() external view returns (address);
    function lastEarnBlock() external view returns (uint256);
    function buyBackRate() external view returns (uint256);
    function buyBackRateMax() external view returns (uint256);
    function buyBackRateUL() external view returns (uint256);
    function buyBackAddress() external view returns (address);
    function withdrawFeeNumer() external view returns (uint256);
    function withdrawFeeDenom() external view returns (uint256);
    function paused() external view returns (bool);

    function deposit(uint256 _wantAmt) external returns (uint256);
    function withdraw(uint256 _wantAmt) external returns (uint256);
    function updateStrategy() external;
    function pause() external;
    function unpause() external;
    function setGov(address _govAddress) external;
}

interface ILeverageStrategy is IStrategy {
    function leverage(uint256 _amount) external;
    function deleverage(uint256 _amount) external;
    function deleverageAll(uint256 redeemFeeAmount) external;
    function updateBalance() external view returns (uint256 sup, uint256 brw, uint256 supMin);
    function borrowRate() external view returns (uint256);
}

// File: @openzeppelin/contracts/token/ERC20/IERC20.sol



pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

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
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

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
}

// File: contracts/interfaces/IStrategyToken.sol

pragma solidity 0.6.12;


// do not inherit these interfaces 

interface IStrategyToken is IERC20 {    
    function balance() external view returns (uint256);
    function balanceStrategy() external view returns (uint256);
    function calcPoolValueInToken() external view returns (uint256);
    function getPricePerFullShare() external view returns (uint256);
    function sharesToAmount(uint256 _shares) external view returns (uint256);
    function amountToShares(uint256 _amount) external view returns (uint256);
    function isWbnb() external view returns (bool);
    function token() external view returns (address);
    function govAddress() external view returns (address);
    function entranceFeeNumer() external view returns (uint256);
    function entranceFeeDenom() external view returns (uint256);
    function depositPaused() external view returns (bool);
    function withdrawPaused() external view returns (bool);

    
    function deposit(uint256 _amount, uint256 _minShares) external;
    function withdraw(uint256 _shares, uint256 _minAmount) external;

    function setGovAddress(address _govAddress) external;
    function pauseDeposit() external;
    function unpauseDeposit() external;
    function pauseWithdraw() external;
    function unpauseWithdraw() external;
}


interface ISingleStrategyToken is IStrategyToken {
    function strategy() external view returns (address);

    function supplyStrategy() external;
    function updateStrategy() external;
    function setEntranceFee(uint256 _entranceFeeNumer, uint256 _entranceFeeDenom) external;
}

interface ISingleStrategyToken2 is IStrategyToken {
    function strategy() external view returns (address);

    function updateStrategy() external;
}

interface IMultiStrategyToken is IStrategyToken {
    function strategies(uint256 idx) external view returns (address);
    function depositActiveCount() external view returns (uint256);
    function withdrawActiveCount() external view returns (uint256);
    function strategyCount() external view returns (uint256);
    function ratios(address _strategy) external view returns (uint256);
    function depositActive(address _strategy) external view returns (bool);
    function withdrawActive(address _strategy) external view returns (bool);
    function ratioTotal() external view returns (uint256);
    function findMostOverLockedStrategy(uint256 withdrawAmt) external view returns (address, uint256);
    function findMostLockedStrategy() external view returns (address, uint256);
    function findMostInsufficientStrategy() external view returns (address, uint256);
    function getBalanceOfOneStrategy(address strategyAddress) external view returns (uint256 bal);

    // doesn"t guarantee that withdrawing shares returned by this function will always be successful.
    function getMaxWithdrawableShares() external view returns (uint256);

    
    function setPolicyAdmin(address _policyAdmin) external;
    function rebalance() external;
    function changeRatio(uint256 index, uint256 value) external;
    function setStrategyActive(uint256 index, bool isDeposit, bool b) external;
    function setRebalanceThreshold(uint256 _rebalanceThresholdNumer, uint256 _rebalanceThresholdDenom) external;
    function inCaseTokensGetStuck(address _token, uint256 _amount, address _to) external;
    function updateAllStrategies() external;
}

// File: contracts/utils/BeltController.sol

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;






contract BeltControllerStorage {
    EnumerableSetUpgradeable.AddressSet internal singleStrategyTokens;
    EnumerableSetUpgradeable.AddressSet internal singleStrategyToken2s;
    EnumerableSetUpgradeable.AddressSet internal multiStrategyTokens;
    EnumerableSetUpgradeable.AddressSet internal strategies;

    EnumerableSetUpgradeable.AddressSet internal pauseControllers;
    EnumerableSetUpgradeable.AddressSet internal policyControllers;
}

contract BeltController is Initializable, OwnableUpgradeable, BeltControllerStorage {
    using SafeMathUpgradeable for uint256;

	using EnumerableSetUpgradeable for EnumerableSetUpgradeable.Bytes32Set;
	using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    
    event MultiStrategyAdded(address addr);
    event MultiStrategyRemoved(address addr);
    event SingleStrategyAdded(address addr);
    event SingleStrategyRemoved(address addr);
    event SingleStrategy2Added(address addr);
    event SingleStrategy2Removed(address addr);
    event StrategyAdded(address addr);
    event StrategyRemoved(address addr);
    event PolicyControllerAdded(address addr);
    event PolicyControllerRemoved(address addr);
    event PauseControllerAdded(address addr);
    event PauseControllerRemoved(address addr);

    event StrategyTokenWithdrawPause(address addr, address account, bool paused);
    event StrategyTokenDepositPause(address addr, address account, bool paused);
    event StrategyPause(address addr, address account, bool paused);

    event StrategyTokenGovAddressSet(address addr, address _govAddress);
    event PolicyAdminSet(address addr, address _policyAdmin);
    event Rebalanced(address addr);
    event RatioChanged(address addr, uint256 index, uint256 value);
    event StrategyActiveSet(address addr, uint256 index, bool isDeposit, bool b);
    event RebalanceThresholdSet(address addr, uint256 _rebalanceThresholdNumer, uint256 _rebalanceThresholdDenom);
    event InCaseTokensGetStuckCalled(address addr, address _token, uint256 _amount, address _to);
    event SingleStrategyEntranceFeeSet(address addr, uint256 _entranceFeeNumer, uint256 _entranceFeeDenom);
    event StrategyGovSet(address addr, address _govAddress);



    modifier onlyStrategyToken(address addr) {
        require(isStrategyToken(addr));
        _;
    }

    modifier onlyMultiStrategyToken(address addr) {
        require(isMultiStrategyToken(addr));
        _;
    }

    modifier onlySingleStrategyToken(address addr) {
        require(isSingleStrategyToken(addr));
        _;
    }

    modifier onlySingleStrategyToken1(address addr) {
        require(isSingleStrategyToken1(addr));
        _;
    }

    modifier onlyStrategy(address addr) {
        require(isStrategy(addr));
        _;
    }

    modifier onlyPolicyController() {
        require(isPolicyController(_msgSender()));
        _;
    }
    
    modifier onlyPauseController() {
        require(isPauseController(_msgSender()));
        _;
    }

    function isStrategyToken(address addr) public view returns (bool) {
        return isMultiStrategyToken(addr) || isSingleStrategyToken(addr);
    }

    function isMultiStrategyToken(address addr) public view returns (bool) {
        return multiStrategyTokens.contains(addr);
    }

    function isSingleStrategyToken(address addr) public view returns (bool) {
        return isSingleStrategyToken1(addr) || isSingleStrategyToken2(addr);
    }

    function isSingleStrategyToken1(address addr) public view returns (bool) {
        return singleStrategyTokens.contains(addr);
    }

    function isSingleStrategyToken2(address addr) public view returns (bool) {
        return singleStrategyToken2s.contains(addr);
    }

    function isStrategy(address addr) public view returns (bool) {
        return strategies.contains(addr);
    }

    function isPolicyController(address addr) public view returns (bool) {
        return policyControllers.contains(addr);
    }

    function isPauseController(address addr) public view returns (bool) {
        return pauseControllers.contains(addr);
    }
    
    function __BeltController_init() public initializer {
        __Ownable_init();
        __BeltController_init_unchained();
    }

    function __BeltController_init_unchained() internal initializer {
        pauseControllers.add(owner());
        policyControllers.add(owner());
    }

    function addMultiStrategy(address addr) external onlyOwner {
        require(addr != address(0));
        require(!isSingleStrategyToken(addr) && !isStrategy(addr));
        require(multiStrategyTokens.add(addr));
        emit MultiStrategyAdded(addr);
    }

    function removeMultiStrategy(address addr) external onlyOwner {
        require(addr != address(0));
        require(multiStrategyTokens.remove(addr));
        emit MultiStrategyRemoved(addr);
    }

    function addSingleStrategy(address addr) external onlyOwner {
        require(addr != address(0));
        require(!isStrategyToken(addr) && !isStrategy(addr));
        require(singleStrategyTokens.add(addr));
        emit SingleStrategyAdded(addr);
    }

    function removeSingleStrategy(address addr) external onlyOwner {
        require(addr != address(0));
        require(singleStrategyTokens.remove(addr));
        emit SingleStrategyRemoved(addr);
    }

    function addSingleStrategy2(address addr) external onlyOwner {
        require(addr != address(0));
        require(!isStrategyToken(addr) && !isStrategy(addr));
        require(singleStrategyToken2s.add(addr));
        emit SingleStrategy2Added(addr);
    }

    function removeSingleStrategy2(address addr) external onlyOwner {
        require(singleStrategyToken2s.remove(addr));
        emit SingleStrategy2Removed(addr);
    }

    function addStrategy(address addr) external onlyOwner {
        require(addr != address(0));
        require(!isStrategyToken(addr));
        require(strategies.add(addr));
        emit StrategyAdded(addr);
    }

    function removeStrategy(address addr) external onlyOwner {
        require(strategies.remove(addr));
        emit StrategyRemoved(addr);
    }

    function addPolicyController(address addr) external onlyOwner {
        require(addr != address(0));
        require(policyControllers.add(addr));
        emit PolicyControllerAdded(addr);
    }

    function removePolicyController(address addr) external onlyOwner {
        require(policyControllers.remove(addr));
        emit PolicyControllerRemoved(addr);
    }

    function addPauseController(address addr) external onlyOwner {
        require(addr != address(0));
        require(pauseControllers.add(addr));
        emit PauseControllerAdded(addr);
    }

    function removePauseController(address addr) external onlyOwner {
        require(pauseControllers.remove(addr));
        emit PauseControllerRemoved(addr);
    }

    // StrategyToken
    // function setGovAddress(address _govAddress) external;
    // function pauseDeposit() external;
    // function unpauseDeposit() external;
    // function pauseWithdraw() external;
    // function unpauseWithdraw() external;
    function setStrategyTokenGovAddress(address addr, address _govAddress) external onlyOwner onlyStrategyToken(addr) {
        require(_govAddress != address(0));
        IStrategyToken(addr).setGovAddress(_govAddress);
        StrategyTokenGovAddressSet(addr, _govAddress);
    }

    function pauseDepositStrategyToken(address addr) public onlyPauseController onlyStrategyToken(addr) {
        if (!IStrategyToken(addr).depositPaused()) {
            IStrategyToken(addr).pauseDeposit();
            emit StrategyTokenDepositPause(addr, msg.sender, true);
        }
    }

    function unpauseDepositStrategyToken(address addr) public onlyPauseController onlyStrategyToken(addr) {
        if (IStrategyToken(addr).depositPaused()) {
            IStrategyToken(addr).unpauseDeposit();
            emit StrategyTokenDepositPause(addr, msg.sender, false);
        }
    }

    function pauseWithdrawStrategyToken(address addr) public onlyPauseController onlyStrategyToken(addr) {
        if (!IStrategyToken(addr).withdrawPaused()) {
            IStrategyToken(addr).pauseWithdraw();
            emit StrategyTokenWithdrawPause(addr, msg.sender, true);
        }
    }

    function unpauseWithdrawStrategyToken(address addr) public onlyPauseController onlyStrategyToken(addr) {
        if (IStrategyToken(addr).withdrawPaused()) {
            IStrategyToken(addr).unpauseWithdraw();
            emit StrategyTokenWithdrawPause(addr, msg.sender, false);
        }
    }

    function pauseStrategyToken(address addr) public onlyPauseController {
        pauseDepositStrategyToken(addr);
        pauseWithdrawStrategyToken(addr);
    }

    function unpauseStrategyToken(address addr) public onlyPauseController {
        unpauseDepositStrategyToken(addr);
        unpauseWithdrawStrategyToken(addr);
    }

    function pauseStrategyTokens(address[] memory tokens) public onlyPauseController {
        uint256 i;
        for (i = 0; i < tokens.length; i += 1) {
            pauseStrategyToken(tokens[i]);
        }
    }

    function unpauseStrategyTokens(address[] memory tokens) public onlyPauseController {
        uint256 i;
        for (i = 0; i < tokens.length; i += 1) {
            unpauseStrategyToken(tokens[i]);
        }
    }

    // multiStrategyGovFunction
    // function setPolicyAdmin(address _policyAdmin) external;
    // function rebalance() external;
    // function changeRatio(uint256 index, uint256 value) external;
    // function setStrategyActive(uint256 index, bool isDeposit, bool b) external;
    // function setRebalanceThreshold(uint256 _rebalanceThresholdNumer, uint256 _rebalanceThresholdDenom) external;
    // function inCaseTokensGetStuck(address _token, uint256 _amount, address _to) external;
    // function updateAllStrategies() external;
    function setPolicyAdmin(address addr, address _policyAdmin) public onlyOwner onlyMultiStrategyToken(addr) {
        IMultiStrategyToken(addr).setPolicyAdmin(_policyAdmin);
        emit PolicyAdminSet(addr, _policyAdmin);
    }

    function rebalance(address addr) public onlyPolicyController onlyMultiStrategyToken(addr) {
        IMultiStrategyToken(addr).rebalance();
        emit Rebalanced(addr);
    }
    
    function changeRatio(address addr, uint256 index, uint256 value) public onlyPolicyController onlyMultiStrategyToken(addr) {
        IMultiStrategyToken(addr).changeRatio(index, value);
        emit RatioChanged(addr, index, value);
    }
    
    function setStrategyActive(address addr, uint256 index, bool isDeposit, bool b) public onlyPolicyController onlyMultiStrategyToken(addr) {
        IMultiStrategyToken(addr).setStrategyActive(index, isDeposit, b);
        emit StrategyActiveSet(addr, index, isDeposit, b);
    }
    
    function setRebalanceThreshold(address addr, uint256 _rebalanceThresholdNumer, uint256 _rebalanceThresholdDenom) public onlyPolicyController onlyMultiStrategyToken(addr) {
        IMultiStrategyToken(addr).setRebalanceThreshold(_rebalanceThresholdNumer, _rebalanceThresholdDenom);
        emit RebalanceThresholdSet(addr, _rebalanceThresholdNumer, _rebalanceThresholdDenom);
    }
    
    function inCaseTokensGetStuck(address addr, address _token, uint256 _amount, address _to) public onlyOwner onlyMultiStrategyToken(addr) {
        IMultiStrategyToken(addr).inCaseTokensGetStuck(_token, _amount, _to);
        emit InCaseTokensGetStuckCalled(addr, _token, _amount, _to);
    }
    
    function updateAllStrategies(address addr) public onlyMultiStrategyToken(addr) {
        IMultiStrategyToken(addr).updateAllStrategies();
    }


    // singleTokenGovFunctions
    // function supplyStrategy() external;
    // function updateStrategy() external;
    // function setEntranceFee(uint256 _entranceFeeNumer, uint256 _entranceFeeDenom) external;
    function singleStrategySupplyStrategy(address addr) public onlySingleStrategyToken1(addr) {
        ISingleStrategyToken(addr).supplyStrategy();
    }

    function singleStrategyUpdateStrategy(address addr) public onlySingleStrategyToken(addr) {
        ISingleStrategyToken(addr).updateStrategy();
    }

    function singleStrategySetEntranceFee(address addr, uint256 _entranceFeeNumer, uint256 _entranceFeeDenom) public onlyOwner onlySingleStrategyToken1(addr) {
        ISingleStrategyToken(addr).setEntranceFee(_entranceFeeNumer, _entranceFeeDenom);
        emit SingleStrategyEntranceFeeSet(addr, _entranceFeeNumer, _entranceFeeDenom);
    }


    // strategyGovFunctions
    // function updateStrategy() external;
    // function pause() external;
    // function unpause() external;
    // function setGov(address _govAddress) external;
    function strategyUpdateStrategy(address addr) public onlyStrategy(addr) {
        IStrategy(addr).updateStrategy();
    }

    function pauseStrategy(address addr) public onlyPauseController onlyStrategy(addr) {
        if (!IStrategy(addr).paused()) {
            IStrategy(addr).pause();
            emit StrategyPause(addr, msg.sender, true);
        }
    }

    function unpauseStrategy(address addr) public onlyPauseController onlyStrategy(addr) {
        if (IStrategy(addr).paused()) {
            IStrategy(addr).unpause();
            emit StrategyPause(addr, msg.sender, false);
        }
    }

    function pauseStrategies(address[] memory strats) public onlyPauseController {
        uint256 i;
        for (i = 0; i < strats.length; i += 1) {
            pauseStrategy(strats[i]);
        }
    }

    function unpauseStrategies(address[] memory strats) public onlyPauseController {
        uint256 i;
        for (i = 0; i < strats.length; i += 1) {
            unpauseStrategy(strats[i]);
        }
    }

    function setStrategyGov(address addr, address _govAddress) public onlyOwner onlyStrategy(addr) {
        require(_govAddress != address(0));
        IStrategy(addr).setGov(_govAddress);
        emit StrategyGovSet(addr, _govAddress);
    }
}