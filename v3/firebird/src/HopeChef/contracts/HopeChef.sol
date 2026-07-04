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
 * @title Initializable
 *
 * @dev Helper contract to support initializer functions. To use it, replace
 * the constructor with a function that has the `initializer` modifier.
 * WARNING: Unlike constructors, initializer functions must be manually
 * invoked. This applies both to deploying an Initializable contract, as well
 * as extending an Initializable contract via inheritance.
 * WARNING: When used with inheritance, manual care must be taken to not invoke
 * a parent initializer twice, or ensure that all initializers are idempotent,
 * because this is not dealt with automatically as with constructors.
 */
contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     */
    bool private initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private initializing;

    /**
     * @dev Modifier to use in the initializer function of a contract.
     */
    modifier initializer() {
        require(initializing || isConstructor() || !initialized, "Contract instance has already been initialized");

        bool isTopLevelCall = !initializing;
        if (isTopLevelCall) {
            initializing = true;
            initialized = true;
        }

        _;

        if (isTopLevelCall) {
            initializing = false;
        }
    }

    /// @dev Returns true if and only if the function is running in the constructor
    function isConstructor() private view returns (bool) {
        // extcodesize checks the size of the code stored in an address, and
        // address returns the current address. Since the code is still not
        // deployed when running a constructor, any checks on its code size will
        // yield zero, making it an effective way to detect if a contract is
        // under construction or not.
        address self = address(this);
        uint256 cs;
        assembly {
            cs := extcodesize(self)
        }
        return cs == 0;
    }

    // Reserved storage space to allow for layout changes in the future.
    uint256[50] private ______gap;
}

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
contract ContextUpgradeSafe is Initializable {
    // Empty internal constructor, to prevent people from mistakenly deploying
    // an instance of this contract, which should be used via inheritance.

    function __Context_init() internal initializer {
        __Context_init_unchained();
    }

    function __Context_init_unchained() internal initializer {}

    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }

    uint256[50] private __gap;
}

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
contract OwnableUpgradeSafe is Initializable, ContextUpgradeSafe {
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
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
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

interface ICappedMintableBurnableERC20 {
    function cap() external view returns (uint256);

    function minterCap(address) external view returns (uint256);

    function mint(address, uint256) external;

    function burn(uint256) external;
}

interface IReferral {
    function set(address _from, address _to) external;

    function onHopeCommission(
        address _from,
        address _to,
        uint256 _hopeAmount
    ) external;

    function refOf(address _to) external view returns (address);
}

interface IRewarder {
    function onHopeReward(
        uint256 pid,
        address user,
        address recipient,
        uint256 hopeAmount,
        uint256 newLpAmount
    ) external;

    function pendingTokens(
        uint256 pid,
        address user,
        uint256 hopeAmount
    ) external view returns (address[] memory, uint256[] memory);
}

contract HopeChef is OwnableUpgradeSafe {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // flags
    uint256 private _locked = 0;

    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
        //
        // We do some fancy math here. Basically, any point in time, the amount of HOPEs
        // entitled to a user but is pending to be distributed is:
        //
        //   pending reward = (user.amount * pool.accHopePerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws LP tokens to a pool. Here's what happens:
        //   1. The pool's `accHopePerShare` (and `lastRewardTime`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 lpToken; // Address of LP token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool. HOPEs to distribute per block.
        uint256 lastRewardTime; // Last timestamp that HOPEs distribution occurs.
        uint256 accHopePerShare; // Accumulated HOPEs per share, times 1e18. See below.
        bool isStarted; // if lastRewardTime has passed
        uint256 startTime;
    }

    address public hope = address(0x7A5dc8A09c831251026302C93A778748dd48b4DF);

    // HOPE tokens created per second.
    uint256 public totalRewardPerSecond;
    uint256 public rewardPerSecond;

    uint256 public reservePercent;
    address public reserveFund;

    uint256 public devPercent;
    address public devFund;

    // Info of each pool.
    PoolInfo[] public poolInfo;

    IRewarder[] public rewarder;

    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint = 0;

    // The timestamp when HOPE mining starts.
    uint256 public startTime;

    address public rewardReferral;
    uint256 public commissionPercent;

    uint256 public nextHalvingTime;
    uint256 public rewardHalvingRate;
    bool public halvingChecked;

    mapping(uint256 => mapping(address => uint256)) public userLastDepositTime;
    mapping(uint256 => uint256) public poolLockedTime;
    mapping(uint256 => uint256) public poolEarlyWithdrawFee;

    /* =================== Added variables (need to keep orders for proxy to work) =================== */
    // ...

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event WithdrawFee(address indexed user, uint256 indexed pid, uint256 amount, uint256 fee);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event Harvest(address indexed user, uint256 indexed pid, uint256 amount);
    event Commission(address indexed user, address indexed referrer, uint256 amount);

    event LogPoolAddition(uint256 indexed pid, uint256 allocPoint, IERC20 indexed lpToken, IRewarder indexed rewarder);
    event LogSetPool(uint256 indexed pid, uint256 allocPoint, IRewarder indexed rewarder);
    event LogUpdatePool(uint256 indexed pid, uint256 lastRewardTime, uint256 lpSupply, uint256 accHopePerShare);
    event LogRewardPerSecond(uint256 rewardPerSecond);

    modifier lock() {
        require(_locked == 0, "LOCKED");
        _locked = 1;
        _;
        _locked = 0;
    }

    modifier onlyDev() {
        require(devFund == msg.sender || owner() == msg.sender, "!dev");
        _;
    }

    modifier checkHalving() {
        if (halvingChecked) {
            halvingChecked = false;
            if (now >= nextHalvingTime) {
                massUpdatePools();
                uint256 _totalRewardPerSecond = totalRewardPerSecond.mul(rewardHalvingRate).div(10000); // x96% (4% decreased every 4-weeks)
                totalRewardPerSecond = _totalRewardPerSecond;
                rewardPerSecond = _totalRewardPerSecond.sub(_totalRewardPerSecond.mul(reservePercent.add(devPercent)).div(10000));
                nextHalvingTime = nextHalvingTime.add(4 weeks);
                emit LogRewardPerSecond(rewardPerSecond);
            }
            halvingChecked = true;
        }
        _;
    }

    function initialize(
        address _hope,
        uint256 _totalRewardPerSecond,
        uint256 _startTime
    ) public initializer {
        OwnableUpgradeSafe.__Ownable_init();

        hope = _hope;

        reservePercent = 1500; // 15%
        devPercent = 1500; // 15%
        reserveFund = _msgSender();
        devFund = _msgSender();

        totalRewardPerSecond = _totalRewardPerSecond;
        rewardPerSecond = _totalRewardPerSecond.sub(_totalRewardPerSecond.mul(reservePercent.add(devPercent)).div(10000));
        startTime = _startTime;
        nextHalvingTime = _startTime.add(4 weeks);

        commissionPercent = 100; // 1%
        rewardHalvingRate = 9600; // 96%
        halvingChecked = true;

        // staking pool
        poolInfo.push(PoolInfo({lpToken: IERC20(_hope), allocPoint: 0, lastRewardTime: _startTime, accHopePerShare: 0, isStarted: false, startTime: _startTime}));

        rewarder.push(IRewarder(address(0x0)));

        emit LogRewardPerSecond(rewardPerSecond);
    }

    function resetStartTime(uint256 _startTime) external onlyOwner {
        require(startTime > now && _startTime > now, "late");
        startTime = _startTime;
        nextHalvingTime = _startTime.add(4 weeks);
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    function setTotalRewardPerSecond(uint256 _totalRewardPerSecond) external onlyOwner {
        require(_totalRewardPerSecond <= 10 ether, "insane high rate");
        massUpdatePools();
        totalRewardPerSecond = _totalRewardPerSecond;
        rewardPerSecond = _totalRewardPerSecond.sub(_totalRewardPerSecond.mul(reservePercent.add(devPercent)).div(10000));
        emit LogRewardPerSecond(rewardPerSecond);
    }

    function setHalvingChecked(bool _halvingChecked) external onlyOwner {
        halvingChecked = _halvingChecked;
    }

    function setRewardReferral(address _rewardReferral) external onlyOwner {
        rewardReferral = _rewardReferral;
    }

    function setRewardHalvingRate(uint256 _rewardHalvingRate) external onlyOwner {
        require(_rewardHalvingRate >= 9000, "below 90%");
        massUpdatePools();
        rewardHalvingRate = _rewardHalvingRate;
    }

    function setCommissionPercent(uint256 _commissionPercent) external onlyOwner {
        require(_commissionPercent <= 500, "exceed 5%");
        commissionPercent = _commissionPercent;
    }

    function checkPoolDuplicate(IERC20 _lpToken) internal view {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            require(poolInfo[pid].lpToken != _lpToken, "add: existing pool?");
        }
    }

    // Add a new lp to the pool. Can only be called by the owner.
    function add(
        uint256 _allocPoint,
        IERC20 _lpToken,
        IRewarder _rewarder,
        uint256 _lastRewardTime
    ) public onlyOwner {
        checkPoolDuplicate(_lpToken);
        massUpdatePools();
        if (now < startTime) {
            // chef is sleeping
            if (_lastRewardTime == 0) {
                _lastRewardTime = startTime;
            } else {
                if (_lastRewardTime < startTime) {
                    _lastRewardTime = startTime;
                }
            }
        } else {
            // chef is cooking
            if (_lastRewardTime == 0 || _lastRewardTime < now) {
                _lastRewardTime = now;
            }
        }
        bool _isStarted = (_lastRewardTime <= startTime) || (_lastRewardTime <= now);
        poolInfo.push(PoolInfo({lpToken: _lpToken, allocPoint: _allocPoint, lastRewardTime: _lastRewardTime, accHopePerShare: 0, isStarted: _isStarted, startTime: _lastRewardTime}));
        rewarder.push(_rewarder);
        if (_isStarted) {
            totalAllocPoint = totalAllocPoint.add(_allocPoint);
        }
        emit LogPoolAddition(poolInfo.length.sub(1), _allocPoint, _lpToken, _rewarder);
    }

    // Update the given pool's HOPE allocation point. Can only be called by the owner.
    function set(
        uint256 _pid,
        uint256 _allocPoint,
        IRewarder _rewarder
    ) public onlyOwner {
        massUpdatePools();
        PoolInfo storage pool = poolInfo[_pid];
        if (pool.isStarted) {
            totalAllocPoint = totalAllocPoint.sub(pool.allocPoint).add(_allocPoint);
        }
        pool.allocPoint = _allocPoint;
        if (address(_rewarder) != address(0)) {
            rewarder[_pid] = _rewarder;
        }
        emit LogSetPool(_pid, _allocPoint, _rewarder);
    }

    function setReservePercent(uint256 _reservePercent) public onlyOwner {
        require(_reservePercent <= 2500, "_reservePercent is too high"); // <= 25%
        massUpdatePools();
        reservePercent = _reservePercent;
        rewardPerSecond = totalRewardPerSecond.sub(totalRewardPerSecond.mul(_reservePercent.add(devPercent)).div(10000));
    }

    function setReserveFund(address _reserveFund) public onlyOwner {
        require(_reserveFund != address(0), "zero");
        reserveFund = _reserveFund;
    }

    function setDevPercent(uint256 _devPercent) public onlyOwner {
        require(_devPercent <= 2500, "_devPercent is too high"); // <= 25%
        massUpdatePools();
        devPercent = _devPercent;
        rewardPerSecond = totalRewardPerSecond.sub(totalRewardPerSecond.mul(reservePercent.add(_devPercent)).div(10000));
    }

    function setDevFund(address _devFund) public onlyDev {
        require(_devFund != address(0), "zero");
        devFund = _devFund;
    }

    function setPoolLockedTimeAndFee(
        uint256 _pid,
        uint256 _lockedTime,
        uint256 _earlyWithdrawFee
    ) public onlyOwner {
        require(_lockedTime <= 30 days, "locked time is too long");
        require(_earlyWithdrawFee <= 1000, "early withdraw fee is too high"); // <=10%
        poolLockedTime[_pid] = _lockedTime;
        poolEarlyWithdrawFee[_pid] = _earlyWithdrawFee;
    }

    // View function to see pending HOPEs on frontend.
    function pendingReward(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accHopePerShare = pool.accHopePerShare;
        uint256 lpSupply = pool.lpToken.balanceOf(address(this));
        if (now > pool.lastRewardTime && lpSupply != 0) {
            uint256 _time = now.sub(pool.lastRewardTime);
            if (totalAllocPoint > 0) {
                uint256 _hopeReward = _time.mul(rewardPerSecond).mul(pool.allocPoint).div(totalAllocPoint);
                accHopePerShare = accHopePerShare.add(_hopeReward.mul(1e18).div(lpSupply));
            }
        }
        return user.amount.mul(accHopePerShare).div(1e18).sub(user.rewardDebt);
    }

    // Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) public {
        PoolInfo storage pool = poolInfo[_pid];
        if (now <= pool.lastRewardTime) {
            return;
        }
        uint256 lpSupply = pool.lpToken.balanceOf(address(this));
        if (lpSupply == 0) {
            pool.lastRewardTime = now;
            return;
        }
        if (!pool.isStarted) {
            pool.isStarted = true;
            totalAllocPoint = totalAllocPoint.add(pool.allocPoint);
        }
        if (totalAllocPoint > 0) {
            uint256 _time = now.sub(pool.lastRewardTime);
            uint256 _hopeReward = _time.mul(rewardPerSecond).mul(pool.allocPoint).div(totalAllocPoint);
            pool.accHopePerShare = pool.accHopePerShare.add(_hopeReward.mul(1e18).div(lpSupply));
        }
        pool.lastRewardTime = now;
        emit LogUpdatePool(_pid, pool.lastRewardTime, lpSupply, pool.accHopePerShare);
    }

    function _harvestReward(uint256 _pid, address _account) internal {
        UserInfo storage user = userInfo[_pid][_account];
        uint256 _claimableAmount = 0;
        if (user.amount > 0) {
            PoolInfo storage pool = poolInfo[_pid];
            _claimableAmount = user.amount.mul(pool.accHopePerShare).div(1e18).sub(user.rewardDebt);
            if (_claimableAmount > 0) {
                _topupReserveAndDevFund(_claimableAmount);

                _safeHopeMint(address(this), _claimableAmount);
                emit Harvest(_account, _pid, _claimableAmount);

                uint256 _commission = _claimableAmount.mul(commissionPercent).div(10000); // 1%
                _sendCommission(msg.sender, _commission);
                _claimableAmount = _claimableAmount.sub(_commission);

                _safeHopeTransfer(_account, _claimableAmount);
            }
        }
        IRewarder _rewarder = rewarder[_pid];
        if (address(_rewarder) != address(0)) {
            _rewarder.onHopeReward(_pid, msg.sender, _account, _claimableAmount, user.amount);
        }
    }

    function _sendCommission(address _account, uint256 _commission) internal {
        address _referrer = address(0);
        if (rewardReferral != address(0)) {
            _referrer = IReferral(rewardReferral).refOf(_account);
        }
        if (_referrer != address(0)) {
            // send commission to referrer
            _safeHopeTransfer(_referrer, _commission);
            emit Commission(_account, _referrer, _commission);
        } else {
            // or burn
            _safeHopeBurn(_commission);
            emit Commission(_account, address(0), _commission);
        }
        IReferral(rewardReferral).onHopeCommission(_referrer, _account, _commission);
    }

    function deposit(uint256 _pid, uint256 _amount) public {
        depositWithRef(_pid, _amount, address(0));
    }

    function depositWithRef(
        uint256 _pid,
        uint256 _amount,
        address _referrer
    ) public lock checkHalving {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        if (rewardReferral != address(0) && _referrer != address(0)) {
            IReferral(rewardReferral).set(_referrer, msg.sender);
        }
        _harvestReward(_pid, msg.sender);
        if (_amount > 0) {
            pool.lpToken.safeTransferFrom(msg.sender, address(this), _amount);
            user.amount = user.amount.add(_amount);
            userLastDepositTime[_pid][msg.sender] = now;
        }
        user.rewardDebt = user.amount.mul(pool.accHopePerShare).div(1e18);
        emit Deposit(msg.sender, _pid, _amount);
    }

    function unfrozenDepositTime(uint256 _pid, address _account) public view returns (uint256) {
        return userLastDepositTime[_pid][_account].add(poolLockedTime[_pid]);
    }

    // Withdraw LP tokens from BearnChef.
    function withdraw(uint256 _pid, uint256 _amount) public lock checkHalving {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        _harvestReward(_pid, msg.sender);
        if (_amount > 0) {
            uint256 _sentAmount = _amount;
            if (reserveFund != address(0) && now < unfrozenDepositTime(_pid, msg.sender)) {
                uint256 _earlyWithdrawFee = poolEarlyWithdrawFee[_pid];
                if (_earlyWithdrawFee > 0) {
                    _earlyWithdrawFee = _amount.mul(_earlyWithdrawFee).div(10000);
                    _sentAmount = _sentAmount.sub(_earlyWithdrawFee);
                    pool.lpToken.safeTransfer(reserveFund, _earlyWithdrawFee);
                    emit WithdrawFee(msg.sender, _pid, _amount, _earlyWithdrawFee);
                }
            }

            user.amount = user.amount.sub(_amount);
            pool.lpToken.safeTransfer(msg.sender, _sentAmount);
        }
        user.rewardDebt = user.amount.mul(pool.accHopePerShare).div(1e18);
        emit Withdraw(msg.sender, _pid, _amount);
    }

    function withdrawAll(uint256 _pid) external {
        withdraw(_pid, userInfo[_pid][msg.sender].amount);
    }

    function harvestAllRewards() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            if (userInfo[pid][msg.sender].amount > 0) {
                withdraw(pid, 0);
            }
        }
    }

    function harvestAndRestake() external {
        harvestAllRewards();
        uint256 _hopeBal = IERC20(hope).balanceOf(msg.sender);
        if (_hopeBal > 0) {
            enterStaking(_hopeBal);
        }
    }

    function enterStaking(uint256 _amount) public {
        deposit(0, _amount);
    }

    function enterStakingWithRef(uint256 _amount, address _referrer) external {
        depositWithRef(0, _amount, _referrer);
    }

    function leaveStaking(uint256 _amount) external {
        withdraw(0, _amount);
    }

    function _safeHopeTransfer(address _to, uint256 _amount) internal {
        uint256 _hopeBal = IERC20(hope).balanceOf(address(this));
        if (_hopeBal > 0) {
            if (_amount > _hopeBal) {
                IERC20(hope).safeTransfer(_to, _hopeBal);
            } else {
                IERC20(hope).safeTransfer(_to, _amount);
            }
        }
    }

    function _safeHopeMint(address _to, uint256 _amount) internal {
        address _hope = hope;
        if (ICappedMintableBurnableERC20(_hope).minterCap(address(this)) >= _amount && _to != address(0)) {
            uint256 _totalSupply = IERC20(_hope).totalSupply();
            uint256 _cap = ICappedMintableBurnableERC20(_hope).cap();
            uint256 _mintAmount = (_totalSupply.add(_amount) <= _cap) ? _amount : _cap.sub(_totalSupply);
            if (_mintAmount > 0) {
                ICappedMintableBurnableERC20(_hope).mint(_to, _mintAmount);
            }
        }
    }

    function _safeHopeBurn(uint256 _amount) internal {
        uint256 _hopeBal = IERC20(hope).balanceOf(address(this));
        if (_hopeBal > 0) {
            if (_amount > _hopeBal) {
                ICappedMintableBurnableERC20(hope).burn(_hopeBal);
            } else {
                ICappedMintableBurnableERC20(hope).burn(_amount);
            }
        }
    }

    function _topupReserveAndDevFund(uint256 _claimableAmount) internal {
        address _hope = hope;
        uint256 _totalAmount = _claimableAmount.mul(totalRewardPerSecond).div(rewardPerSecond);
        uint256 _reserveFundAmount = _totalAmount.mul(reservePercent).div(10000);
        uint256 _devFundAmount = _totalAmount.mul(devPercent).div(10000);
        uint256 _totalMintAmount = _reserveFundAmount.add(_devFundAmount);
        if (IERC20(_hope).totalSupply().add(_totalMintAmount) <= ICappedMintableBurnableERC20(_hope).cap() && ICappedMintableBurnableERC20(_hope).minterCap(address(this)) >= _totalMintAmount) {
            ICappedMintableBurnableERC20(_hope).mint(reserveFund, _reserveFundAmount);
            ICappedMintableBurnableERC20(_hope).mint(devFund, _devFundAmount);
        }
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) external lock checkHalving {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 _amount = user.amount;
        uint256 _sentAmount = _amount;
        user.amount = 0;
        user.rewardDebt = 0;
        IRewarder _rewarder = rewarder[_pid];
        if (address(_rewarder) != address(0)) {
            _rewarder.onHopeReward(_pid, msg.sender, msg.sender, 0, 0);
        }
        if (reserveFund != address(0) && now < unfrozenDepositTime(_pid, msg.sender)) {
            uint256 _earlyWithdrawFee = poolEarlyWithdrawFee[_pid];
            if (_earlyWithdrawFee > 0) {
                _earlyWithdrawFee = _amount.mul(_earlyWithdrawFee).div(10000);
                _sentAmount = _sentAmount.sub(_earlyWithdrawFee);
                pool.lpToken.safeTransfer(reserveFund, _earlyWithdrawFee);
                emit WithdrawFee(msg.sender, _pid, _amount, _earlyWithdrawFee);
            }
        }
        pool.lpToken.safeTransfer(address(msg.sender), _sentAmount);
        emit EmergencyWithdraw(msg.sender, _pid, _amount);
    }

    // This function allows governance to take unsupported tokens out of the contract. This is in an effort to make someone whole, should they seriously mess up.
    // There is no guarantee governance will vote to return these. It also allows for removal of airdropped tokens.
    function governanceRecoverUnsupported(
        IERC20 _token,
        uint256 _amount,
        address _to
    ) external onlyOwner {
        // do not allow to drain lpToken
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            PoolInfo storage pool = poolInfo[pid];
            require(_token != pool.lpToken, "pool.lpToken");
        }
        _token.safeTransfer(_to, _amount);
    }
}
