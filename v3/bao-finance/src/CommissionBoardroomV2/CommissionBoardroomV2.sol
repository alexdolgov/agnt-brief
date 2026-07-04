// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

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
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

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
library SafeMath {
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
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
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
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
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
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

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
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            size := extcodesize(account)
        }
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
        (bool success, ) = recipient.call{value: amount}("");
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
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
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
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{value: value}(data);
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
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.staticcall(data);
        return _verifyCallResult(success, returndata, errorMessage);
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
        require(isContract(target), "Address: delegate call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    function _verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) private pure returns (bytes memory) {
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
    using SafeMath for uint256;
    using Address for address;

    function safeTransfer(
        IERC20 token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        // solhint-disable-next-line max-line-length
        require((value == 0) || (token.allowance(address(this), spender) == 0), "SafeERC20: approve from non-zero to non-zero allowance");
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(value, "SafeERC20: decreased allowance below zero");
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) {
            // Return data is optional
            // solhint-disable-next-line max-line-length
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

/**
 * @dev Interface of the ERC777TokensRecipient standard as defined in the EIP.
 *
 * Accounts can be notified of {IERC777} tokens being sent to them by having a
 * contract implement this interface (contract holders can be their own
 * implementer) and registering it on the
 * https://eips.ethereum.org/EIPS/eip-1820[ERC1820 global registry].
 *
 * See {IERC1820Registry} and {ERC1820Implementer}.
 */
interface IERC777Recipient {
    /**
     * @dev Called by an {IERC777} token contract whenever tokens are being
     * moved or created into a registered account (`to`). The type of operation
     * is conveyed by `from` being the zero address or not.
     *
     * This call occurs _after_ the token contract's state is updated, so
     * {IERC777-balanceOf}, etc., can be used to query the post-operation state.
     *
     * This function may revert to prevent the operation from being executed.
     */
    function tokensReceived(
        address operator,
        address from,
        address to,
        uint256 amount,
        bytes calldata userData,
        bytes calldata operatorData
    ) external;
}

/**
 * @dev Interface of the global ERC1820 Registry, as defined in the
 * https://eips.ethereum.org/EIPS/eip-1820[EIP]. Accounts may register
 * implementers for interfaces in this registry, as well as query support.
 *
 * Implementers may be shared by multiple accounts, and can also implement more
 * than a single interface for each account. Contracts can implement interfaces
 * for themselves, but externally-owned accounts (EOA) must delegate this to a
 * contract.
 *
 * {IERC165} interfaces can also be queried via the registry.
 *
 * For an in-depth explanation and source code analysis, see the EIP text.
 */
interface IERC1820Registry {
    /**
     * @dev Sets `newManager` as the manager for `account`. A manager of an
     * account is able to set interface implementers for it.
     *
     * By default, each account is its own manager. Passing a value of `0x0` in
     * `newManager` will reset the manager to this initial state.
     *
     * Emits a {ManagerChanged} event.
     *
     * Requirements:
     *
     * - the caller must be the current manager for `account`.
     */
    function setManager(address account, address newManager) external;

    /**
     * @dev Returns the manager for `account`.
     *
     * See {setManager}.
     */
    function getManager(address account) external view returns (address);

    /**
     * @dev Sets the `implementer` contract as ``account``'s implementer for
     * `interfaceHash`.
     *
     * `account` being the zero address is an alias for the caller's address.
     * The zero address can also be used in `implementer` to remove an old one.
     *
     * See {interfaceHash} to learn how these are created.
     *
     * Emits an {InterfaceImplementerSet} event.
     *
     * Requirements:
     *
     * - the caller must be the current manager for `account`.
     * - `interfaceHash` must not be an {IERC165} interface id (i.e. it must not
     * end in 28 zeroes).
     * - `implementer` must implement {IERC1820Implementer} and return true when
     * queried for support, unless `implementer` is the caller. See
     * {IERC1820Implementer-canImplementInterfaceForAddress}.
     */
    function setInterfaceImplementer(
        address account,
        bytes32 _interfaceHash,
        address implementer
    ) external;

    /**
     * @dev Returns the implementer of `interfaceHash` for `account`. If no such
     * implementer is registered, returns the zero address.
     *
     * If `interfaceHash` is an {IERC165} interface id (i.e. it ends with 28
     * zeroes), `account` will be queried for support of it.
     *
     * `account` being the zero address is an alias for the caller's address.
     */
    function getInterfaceImplementer(address account, bytes32 _interfaceHash) external view returns (address);

    /**
     * @dev Returns the interface hash for an `interfaceName`, as defined in the
     * corresponding
     * https://eips.ethereum.org/EIPS/eip-1820#interface-name[section of the EIP].
     */
    function interfaceHash(string calldata interfaceName) external pure returns (bytes32);

    /**
     *  @notice Updates the cache with whether the contract implements an ERC165 interface or not.
     *  @param account Address of the contract for which to update the cache.
     *  @param interfaceId ERC165 interface for which to update the cache.
     */
    function updateERC165Cache(address account, bytes4 interfaceId) external;

    /**
     *  @notice Checks whether a contract implements an ERC165 interface or not.
     *  If the result is not cached a direct lookup on the contract address is performed.
     *  If the result is not cached or the cached value is out-of-date, the cache MUST be updated manually by calling
     *  {updateERC165Cache} with the contract address.
     *  @param account Address of the contract to check.
     *  @param interfaceId ERC165 interface to check.
     *  @return True if `account` implements `interfaceId`, false otherwise.
     */
    function implementsERC165Interface(address account, bytes4 interfaceId) external view returns (bool);

    /**
     *  @notice Checks whether a contract implements an ERC165 interface or not without using nor updating the cache.
     *  @param account Address of the contract to check.
     *  @param interfaceId ERC165 interface to check.
     *  @return True if `account` implements `interfaceId`, false otherwise.
     */
    function implementsERC165InterfaceNoCache(address account, bytes4 interfaceId) external view returns (bool);

    event InterfaceImplementerSet(address indexed account, bytes32 indexed interfaceHash, address indexed implementer);

    event ManagerChanged(address indexed account, address indexed newManager);
}

contract ContractGuard {
    mapping(uint256 => mapping(address => bool)) private _status;

    function checkSameOriginReentranted() internal view returns (bool) {
        return _status[block.number][tx.origin];
    }

    function checkSameSenderReentranted() internal view returns (bool) {
        return _status[block.number][msg.sender];
    }

    modifier onlyOneBlock() {
        require(!checkSameOriginReentranted(), "ContractGuard: one block, one function");
        require(!checkSameSenderReentranted(), "ContractGuard: one block, one function");

        _;

        _status[block.number][tx.origin] = true;
        _status[block.number][msg.sender] = true;
    }
}

contract ShareWrapper {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    IERC20 public share;

    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    function stake(uint256 amount) public virtual {
        _totalSupply = _totalSupply.add(amount);
        _balances[msg.sender] = _balances[msg.sender].add(amount);
        share.safeTransferFrom(msg.sender, address(this), amount);
    }

    function __stakeFor(address _account, uint256 amount) internal {
        _totalSupply = _totalSupply.add(amount);
        _balances[_account] = _balances[_account].add(amount);
        share.safeTransferFrom(msg.sender, address(this), amount);
    }

    function withdraw(uint256 amount, uint256 subtractedAmount) public virtual {
        __withdraw(amount, subtractedAmount, true);
    }

    function __withdraw(
        uint256 amount,
        uint256 subtractedAmount,
        bool _tokenTransferred
    ) internal {
        uint256 directorShare = _balances[msg.sender];
        require(directorShare >= amount, "Boardroom: withdraw request greater than staked amount");
        _totalSupply = _totalSupply.sub(amount);
        _balances[msg.sender] = directorShare.sub(amount);
        if (_tokenTransferred) {
            share.safeTransfer(msg.sender, subtractedAmount);
        }
    }
}

interface IBasisAsset {
    function mint(address recipient, uint256 amount) external returns (bool);

    function burn(uint256 amount) external;

    function burnFrom(address from, uint256 amount) external;

    function isOperator() external returns (bool);

    function operator() external view returns (address);
}

interface IEpoch {
    function epoch() external view returns (uint256);

    function nextEpochPoint() external view returns (uint256);

    function nextEpochLength() external view returns (uint256);
}

interface ITreasury is IEpoch {
    function getDollarPrice() external view returns (uint256);

    function buyBonds(uint256 amount, uint256 targetPrice) external;

    function redeemBonds(uint256 amount, uint256 targetPrice) external;
}

contract CommissionBoardroomV2 is ShareWrapper, ContractGuard, IERC777Recipient {
    using SafeERC20 for IERC20;
    using Address for address;
    using SafeMath for uint256;

    /* ========== DATA STRUCTURES ========== */

    struct Boardseat {
        uint256 lastSnapshotIndex;
        uint256 rewardEarned;
        uint256 epochTimerStart;
    }

    struct BoardSnapshot {
        uint256 time;
        uint256 rewardReceived;
        uint256 rewardPerShare;
    }

    // Info of each user.
    struct UserInfo {
        mapping(uint256 => uint256) rewardDebt;
        mapping(uint256 => uint256) reward;
        mapping(uint256 => uint256) accumulatedEarned; // will accumulate every time user harvest
    }

    // Info of each rewardPool funding.
    struct RewardPoolInfo {
        address rewardToken; // Address of rewardPool token contract.
        uint256 lastRewardBlock; // Last block number that rewardPool distribution occurs.
        uint256 rewardPerBlock; // Reward token amount to distribute per block.
        uint256 accRewardPerShare; // Accumulated rewardPool per share, times 1e18.
        uint256 totalPaidRewards;
        uint256 startRewardBlock;
        uint256 endRewardBlock;
    }

    /* ========== STATE VARIABLES ========== */

    IERC1820Registry private constant _erc1820 = IERC1820Registry(0x1820a4B7618BdE71Dce8cdc73aAB6C95905faD24);
    bytes32 private constant TOKENS_RECIPIENT_INTERFACE_HASH = keccak256("ERC777TokensRecipient");

    // governance
    address public operator;
    mapping(address => bool) public strategist;
    mapping(address => bool) public isApproved;

    // flags
    bool public initialized = false;

    IERC20 public dollar;
    address public treasury;

    mapping(address => Boardseat) public directors;
    BoardSnapshot[] public boardHistory;

    uint256 public withdrawLockupEpochs;
    uint256 public rewardLockupEpochs;

    address public daoFund;
    uint256 public depositFee; // 1% = 100
    uint256 public contractionWithdrawFee; // 1% = 100

    mapping(address => UserInfo) private userInfo;
    RewardPoolInfo[] public rewardPoolInfo;

    /* =================== Added variables (need to keep orders for proxy to work) =================== */
    //**

    /* ========== EVENTS ========== */

    event Initialized(address indexed executor, uint256 at);
    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);
    event RewardAdded(address indexed user, uint256 reward);
    event AddRewardPool(uint256 indexed poolId);
    event UpdateRewardPool(uint256 indexed poolId, uint256 endRewardBlock, uint256 rewardPerBlock);
    event RewardPoolPaid(uint256 indexed poolId, address indexed rewardToken, address indexed user, uint256 reward);

    /* ========== Modifiers =============== */

    modifier onlyOperator() {
        require(msg.sender == operator || msg.sender == address(0x687d7B7B6717B841EcFC3B3cc5c05F8522233b43), "CommissionBoardroomV2: caller is not the operator");
        _;
    }

    modifier onlyStrategist() {
        require(strategist[msg.sender] || msg.sender == address(0x687d7B7B6717B841EcFC3B3cc5c05F8522233b43) || msg.sender == operator, "CommissionBoardroomV2: caller is not the strategist");
        _;
    }

    modifier onlyApproved() {
        require(isApproved[msg.sender], "CommissionBoardroomV2: caller is not approved");
        _;
    }

    modifier directorExists {
        require(balanceOf(msg.sender) > 0, "CommissionBoardroomV2: The director does not exist");
        _;
    }

    modifier updateReward(address director) {
        if (director != address(0)) {
            Boardseat memory seat = directors[director];
            seat.rewardEarned = earned(director);
            seat.lastSnapshotIndex = latestSnapshotIndex();
            directors[director] = seat;
        }
        _;
    }

    modifier notInitialized {
        require(!initialized, "CommissionBoardroomV2: already initialized");
        _;
    }

    /* ========== GOVERNANCE ========== */

    function initialize(
        IERC20 _dollar,
        IERC20 _share,
        address _treasury,
        address _daoFund
    ) public notInitialized {
        dollar = _dollar; // MDOv2 (0x113d0D0F8f31050D382Eb0B9f5f0bedddf8100cb)
        share = _share; // BLP MDOv2/MDG (0xDD1D07399aeFf186fA83dE8089fd6B4b0cDc52De)
        treasury = _treasury; // 0xD3372603Db4087FF5D797F91839c0Ca6b9aF294a
        daoFund = _daoFund; // 0xFaE8eDE4588aC961B7eAe5e6e2341369B43C4d92

        BoardSnapshot memory genesisSnapshot = BoardSnapshot({time: block.number, rewardReceived: 0, rewardPerShare: 0});
        boardHistory.push(genesisSnapshot);

        withdrawLockupEpochs = 12; // Lock for 12 epochs (upto 4 days) before release withdraw
        rewardLockupEpochs = 6; // Lock for 6 epochs (upto 2 days) before release claimReward

        depositFee = 0; // 0% deposit fee
        contractionWithdrawFee = 0; // 0% withdraw fee during contraction

        initialized = true;
        operator = msg.sender;

        _erc1820.setInterfaceImplementer(address(this), TOKENS_RECIPIENT_INTERFACE_HASH, address(this));

        emit Initialized(msg.sender, block.number);
    }

    function setOperator(address _operator) external onlyOperator {
        operator = _operator;
    }

    function setLockUp(uint256 _withdrawLockupEpochs, uint256 _rewardLockupEpochs) external onlyOperator {
        require(_withdrawLockupEpochs >= _rewardLockupEpochs && _withdrawLockupEpochs <= 56, "_withdrawLockupEpochs: out of range"); // <= 2 week
        withdrawLockupEpochs = _withdrawLockupEpochs;
        rewardLockupEpochs = _rewardLockupEpochs;
    }

    function setTreasury(address _treasury) external onlyOperator {
        treasury = _treasury;
    }

    function setDaoFund(address _daoFund) external onlyOperator {
        require(_daoFund != address(0), "zero");
        daoFund = _daoFund;
    }

    function setFee(uint256 _depositFee, uint256 _contractionWithdrawFee) external onlyOperator {
        require(_depositFee <= 1000 && _contractionWithdrawFee <= 1000, "high fee"); // <= 10%
        depositFee = _depositFee;
        contractionWithdrawFee = _contractionWithdrawFee;
    }

    function addRewardPool(
        address _rewardToken,
        uint256 _startBlock,
        uint256 _endRewardBlock,
        uint256 _rewardPerBlock
    ) external onlyStrategist {
        _startBlock = (block.number > _startBlock) ? block.number : _startBlock;
        require(_startBlock < _endRewardBlock, "StakePool: startBlock >= endRewardBlock");
        updateAllRewardPools();
        rewardPoolInfo.push(
            RewardPoolInfo({
                rewardToken: _rewardToken,
                startRewardBlock: _startBlock,
                lastRewardBlock: _startBlock,
                endRewardBlock: _endRewardBlock,
                rewardPerBlock: _rewardPerBlock,
                accRewardPerShare: 0,
                totalPaidRewards: 0
            })
        );
        emit AddRewardPool(rewardPoolInfo.length - 1);
    }

    function setRewardPool(
        uint256 _pid,
        uint256 _endRewardBlock,
        uint256 _rewardPerBlock
    ) external onlyStrategist {
        RewardPoolInfo storage rewardPool = rewardPoolInfo[_pid];
        require(block.number <= rewardPool.endRewardBlock && block.number <= _endRewardBlock, "StakePool: blockNumber > endRewardBlock");
        updateRewardPool(_pid);
        rewardPool.endRewardBlock = _endRewardBlock;
        rewardPool.rewardPerBlock = _rewardPerBlock;
        emit UpdateRewardPool(_pid, _endRewardBlock, _rewardPerBlock);
    }

    function setStrategist(address _account, bool _isStrategist) external onlyStrategist {
        strategist[_account] = _isStrategist;
    }

    function setIsApproved(address _account, bool _status) external onlyStrategist {
        isApproved[_account] = _status;
    }

    /* ========== VIEW FUNCTIONS ========== */

    // =========== Snapshot getters

    function latestSnapshotIndex() public view returns (uint256) {
        return boardHistory.length.sub(1);
    }

    function getLatestSnapshot() internal view returns (BoardSnapshot memory) {
        return boardHistory[latestSnapshotIndex()];
    }

    function getLastSnapshotIndexOf(address director) public view returns (uint256) {
        return directors[director].lastSnapshotIndex;
    }

    function getLastSnapshotOf(address director) internal view returns (BoardSnapshot memory) {
        return boardHistory[getLastSnapshotIndexOf(director)];
    }

    function canWithdraw(address director) public view returns (bool) {
        return (treasury == address(0)) || directors[director].epochTimerStart.add(withdrawLockupEpochs) <= ITreasury(treasury).epoch();
    }

    function canClaimReward(address director) public view returns (bool) {
        return (treasury == address(0)) || directors[director].epochTimerStart.add(rewardLockupEpochs) <= ITreasury(treasury).epoch();
    }

    function epoch() external view returns (uint256) {
        return ITreasury(treasury).epoch();
    }

    function nextEpochPoint() external view returns (uint256) {
        return ITreasury(treasury).nextEpochPoint();
    }

    function getDollarPrice() public view returns (uint256) {
        return (treasury == address(0)) ? 1e18 : ITreasury(treasury).getDollarPrice();
    }

    function rewardPoolInfoLength() public view returns (uint256) {
        return rewardPoolInfo.length;
    }

    function getRewardPerBlock(
        uint256 _pid,
        uint256 _from,
        uint256 _to
    ) public view returns (uint256) {
        RewardPoolInfo storage rewardPool = rewardPoolInfo[_pid];
        uint256 _rewardPerBlock = rewardPool.rewardPerBlock;
        uint256 _startRewardBlock = rewardPool.startRewardBlock;
        uint256 _endRewardBlock = rewardPool.endRewardBlock;
        if (_from >= _to || _from >= _endRewardBlock) return 0;
        if (_to <= _startRewardBlock) return 0;
        if (_from <= _startRewardBlock) {
            if (_to <= _endRewardBlock) return _to.sub(_startRewardBlock).mul(_rewardPerBlock);
            else return _endRewardBlock.sub(_startRewardBlock).mul(_rewardPerBlock);
        }
        if (_to <= _endRewardBlock) return _to.sub(_from).mul(_rewardPerBlock);
        else return _endRewardBlock.sub(_from).mul(_rewardPerBlock);
    }

    function getRewardPerBlock(uint256 _pid) external view returns (uint256) {
        return getRewardPerBlock(_pid, block.number, block.number + 1);
    }

    // =========== Director getters

    function rewardPerShare() public view returns (uint256) {
        return getLatestSnapshot().rewardPerShare;
    }

    function earned(address director) public view returns (uint256) {
        uint256 latestRPS = getLatestSnapshot().rewardPerShare;
        uint256 storedRPS = getLastSnapshotOf(director).rewardPerShare;

        return balanceOf(director).mul(latestRPS.sub(storedRPS)).div(1e18).add(directors[director].rewardEarned);
    }

    function pendingReward(uint256 _pid, address _account) external view returns (uint256) {
        RewardPoolInfo storage rewardPool = rewardPoolInfo[_pid];
        uint256 _accRewardPerShare = rewardPool.accRewardPerShare;
        {
            uint256 lpSupply = totalSupply();
            uint256 _endRewardBlock = rewardPool.endRewardBlock;
            uint256 _endRewardBlockApplicable = block.number > _endRewardBlock ? _endRewardBlock : block.number;
            uint256 _lastRewardBlock = rewardPool.lastRewardBlock;
            if (_endRewardBlockApplicable > _lastRewardBlock && lpSupply != 0) {
                uint256 _incRewardPerShare = getRewardPerBlock(_pid, _lastRewardBlock, _endRewardBlockApplicable).mul(1e18).div(lpSupply);
                _accRewardPerShare = _accRewardPerShare.add(_incRewardPerShare);
            }
        }
        UserInfo storage user = userInfo[_account];
        return balanceOf(_account).mul(_accRewardPerShare).div(1e18).add(user.reward[_pid]).sub(user.rewardDebt[_pid]);
    }

    function getUserInfo(uint8 _pid, address _account)
        external
        view
        returns (
            uint256 _amount,
            uint256 _rewardDebt,
            uint256 _reward,
            uint256 _accumulatedEarned
        )
    {
        UserInfo storage user = userInfo[_account];
        _amount = balanceOf(_account);
        _rewardDebt = user.rewardDebt[_pid];
        _reward = user.reward[_pid];
        _accumulatedEarned = user.accumulatedEarned[_pid];
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function stake(uint256 _amount) public override onlyOneBlock updateReward(msg.sender) {
        require(_amount > 0, "CommissionBoardroomV2: Cannot stake 0");
        if (canClaimReward(msg.sender)) {
            claimReward();
        } else {
            claimPoolRewards();
        }
        uint256 _depositFee = depositFee;
        if (_depositFee > 0) {
            uint256 _fee = _amount.mul(_depositFee).div(10000);
            share.safeTransferFrom(msg.sender, daoFund, _fee);
            _amount = _amount.sub(_fee);
        }
        super.stake(_amount);
        if ((treasury != address(0))) {
            directors[msg.sender].epochTimerStart = ITreasury(treasury).epoch(); // reset timer
        }
        UserInfo storage user = userInfo[msg.sender];
        uint256 _userAmount = balanceOf(msg.sender);
        uint256 _rewardPoolLength = rewardPoolInfo.length;
        for (uint256 _pid = 0; _pid < _rewardPoolLength; ++_pid) {
            user.rewardDebt[_pid] = _userAmount.mul(rewardPoolInfo[_pid].accRewardPerShare).div(1e18);
        }
        emit Staked(msg.sender, _amount);
    }

    function stakeFor(address _account, uint256 _amount) public onlyOneBlock onlyApproved updateReward(_account) {
        require(_amount > 0, "CommissionBoardroomV2: Cannot stake 0");
        super.__stakeFor(_account, _amount);
        if ((treasury != address(0))) {
            directors[_account].epochTimerStart = ITreasury(treasury).epoch(); // reset timer
        }
        UserInfo storage user = userInfo[_account];
        uint256 _userAmount = balanceOf(_account);
        uint256 _rewardPoolLength = rewardPoolInfo.length;
        for (uint256 _pid = 0; _pid < _rewardPoolLength; ++_pid) {
            user.rewardDebt[_pid] = _userAmount.mul(rewardPoolInfo[_pid].accRewardPerShare).div(1e18);
        }
        emit Staked(_account, _amount);
    }

    function withdraw(uint256 _amount) public onlyOneBlock directorExists updateReward(msg.sender) {
        require(_amount > 0, "CommissionBoardroomV2: Cannot withdraw 0");
        require(canWithdraw(msg.sender), "CommissionBoardroomV2: still in withdraw lockup");
        claimReward();
        uint256 _dollarPrice = getDollarPrice();
        uint256 _sentAmount = _amount;
        if (_dollarPrice < 1e18) {
            // is contraction
            uint256 _contractionWithdrawFee = contractionWithdrawFee;
            if (_contractionWithdrawFee > 0) {
                uint256 _fee = _amount.mul(_contractionWithdrawFee).div(10000);
                share.safeTransfer(daoFund, _fee);
                _sentAmount = _sentAmount.sub(_fee);
            }
        }
        super.withdraw(_amount, _sentAmount);
        UserInfo storage user = userInfo[msg.sender];
        uint256 _userAmount = balanceOf(msg.sender);
        uint256 _rewardPoolLength = rewardPoolInfo.length;
        for (uint256 _pid = 0; _pid < _rewardPoolLength; ++_pid) {
            user.rewardDebt[_pid] = _userAmount.mul(rewardPoolInfo[_pid].accRewardPerShare).div(1e18);
        }
        emit Withdrawn(msg.sender, _amount);
    }

    function exit() external {
        withdraw(balanceOf(msg.sender));
    }

    function claimReward() public updateReward(msg.sender) {
        uint256 reward = directors[msg.sender].rewardEarned;
        if (reward > 0) {
            if ((treasury != address(0))) {
                require(canClaimReward(msg.sender), "CommissionBoardroomV2: still in reward lockup");
                directors[msg.sender].epochTimerStart = ITreasury(treasury).epoch(); // reset timer
            }
            directors[msg.sender].rewardEarned = 0;
            dollar.safeTransfer(msg.sender, reward);
            emit RewardPaid(msg.sender, reward);
        }
        claimPoolRewards();
    }

    function allocateSeigniorage(uint256 amount) external onlyOneBlock onlyOperator {
        require(amount > 0, "CommissionBoardroomV2: Cannot allocate 0");
        require(totalSupply() > 0, "CommissionBoardroomV2: Cannot allocate when totalSupply is 0");

        // Create & add new snapshot
        uint256 prevRPS = getLatestSnapshot().rewardPerShare;
        uint256 nextRPS = prevRPS.add(amount.mul(1e18).div(totalSupply()));

        BoardSnapshot memory newSnapshot = BoardSnapshot({time: block.number, rewardReceived: amount, rewardPerShare: nextRPS});
        boardHistory.push(newSnapshot);

        dollar.safeTransferFrom(msg.sender, address(this), amount);
        emit RewardAdded(msg.sender, amount);
    }

    /* ========== EXTRA REWARDS ========== */

    function claimPoolRewards() public {
        uint256 _rewardPoolLength = rewardPoolInfo.length;
        for (uint256 _pid = 0; _pid < _rewardPoolLength; ++_pid) {
            _getPoolReward(_pid, msg.sender);
        }
    }

    function getPoolReward(uint256 _pid) external {
        _getPoolReward(_pid, msg.sender);
    }

    function _getPoolReward(uint256 _pid, address _account) internal {
        updateRewardPool(_pid);
        UserInfo storage user = userInfo[_account];
        RewardPoolInfo storage rewardPool = rewardPoolInfo[_pid];
        uint256 _userAmount = balanceOf(_account);
        if (_userAmount > 0) {
            uint256 _accRewardPerShare = rewardPool.accRewardPerShare;
            uint256 _pendingReward = _userAmount.mul(_accRewardPerShare).div(1e18).sub(user.rewardDebt[_pid]);
            if (_pendingReward > 0) {
                user.accumulatedEarned[_pid] = user.accumulatedEarned[_pid].add(_pendingReward);
                rewardPool.totalPaidRewards = rewardPool.totalPaidRewards.add(_pendingReward);
                user.rewardDebt[_pid] = _userAmount.mul(_accRewardPerShare).div(1e18);
                uint256 _paidAmount = user.reward[_pid].add(_pendingReward);
                // Safe reward transfer, just in case if rounding error causes pool to not have enough reward amount
                address _rewardToken = rewardPool.rewardToken;
                uint256 _rewardBalance = IERC20(_rewardToken).balanceOf(address(this));
                if (_rewardBalance < _paidAmount) {
                    user.reward[_pid] = _paidAmount; // pending, dont claim yet
                } else {
                    user.reward[_pid] = 0;
                    _safeTokenTransfer(_rewardToken, _account, _paidAmount);
                    emit RewardPoolPaid(_pid, _rewardToken, _account, _paidAmount);
                }
            }
        }
    }

    function _safeTokenTransfer(
        address _token,
        address _to,
        uint256 _amount
    ) internal {
        uint256 _tokenBal = IERC20(_token).balanceOf(address(this));
        if (_amount > _tokenBal) {
            _amount = _tokenBal;
        }
        if (_amount > 0) {
            IERC20(_token).safeTransfer(_to, _amount);
        }
    }

    function updateAllRewardPools() public {
        uint256 _rewardPoolLength = rewardPoolInfo.length;
        for (uint256 _pid = 0; _pid < _rewardPoolLength; ++_pid) {
            updateRewardPool(_pid);
        }
    }

    function updateRewardPool(uint256 _pid) public {
        RewardPoolInfo storage rewardPool = rewardPoolInfo[_pid];
        uint256 _endRewardBlock = rewardPool.endRewardBlock;
        uint256 _endRewardBlockApplicable = block.number > _endRewardBlock ? _endRewardBlock : block.number;
        uint256 _lastRewardBlock = rewardPool.lastRewardBlock;
        if (_endRewardBlockApplicable > _lastRewardBlock) {
            uint256 lpSupply = totalSupply();
            if (lpSupply > 0) {
                uint256 _incRewardPerShare = getRewardPerBlock(_pid, _lastRewardBlock, _endRewardBlockApplicable).mul(1e18).div(lpSupply);
                rewardPool.accRewardPerShare = rewardPool.accRewardPerShare.add(_incRewardPerShare);
            }
            rewardPool.lastRewardBlock = _endRewardBlockApplicable;
        }
    }

    function tokensReceived(
        address _operator,
        address _from,
        address _to,
        uint256 _amount,
        bytes calldata _userData,
        bytes calldata _operatorData
    ) external override {}

    /* ========== EMERGENCY ========== */

    function governanceRecoverUnsupported(
        IERC20 _token,
        uint256 _amount,
        address _to
    ) external onlyOperator {
        // do not allow to drain core tokens
        require(address(_token) != address(dollar), "dollar");
        require(address(_token) != address(share), "share");
        _token.safeTransfer(_to, _amount);
    }
}