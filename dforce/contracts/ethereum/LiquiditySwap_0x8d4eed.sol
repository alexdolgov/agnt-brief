// ============================================================
// FILE: @openzeppelin/contracts/math/SafeMath.sol
// ============================================================

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

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT

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

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "./IERC20.sol";
import "../../math/SafeMath.sol";
import "../../utils/Address.sol";

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

    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

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
        // solhint-disable-next-line max-line-length
        require((value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
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
        if (returndata.length > 0) { // Return data is optional
            // solhint-disable-next-line max-line-length
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;

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
    function functionDelegateCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.delegatecall(data);
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

// ============================================================
// FILE: contracts/deposit/sDFStrategy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

import "../interface/IStakedDF.sol";

/**
 * @title dForce's Liquidity Swap Deposit Model
 * @author dForce
 */
contract sDFStrategy {
    using SafeERC20 for IERC20;

    /// @dev Address of StakedDF.
    IStakedDF internal immutable StakedDF_;

    /// @dev Emitted when deposit.
    event Deposit(address token, address target, uint256 amount);

    /// @dev Emitted when redeem.
    event Redeem(address token, address from, uint256 amount);

    /**
     * @notice Constructor for StakedDF deposit model contract.
     * @param _StakedDF StakedDF address.
     */
    constructor(IStakedDF _StakedDF) public {
        StakedDF_ = _StakedDF;
    }

    /**
     * @notice Initialize approval StakedDF.
     */
    function _initialize() internal virtual {
        IERC20(StakedDF_.DF()).safeApprove(address(StakedDF_), uint256(-1));
    }

    /**
     * @dev Deposit tokens to StakedDF.
     * @param _amount Deposit token amount.
     */
    function _deposit(uint256 _amount) internal virtual {
        emit Deposit(
            StakedDF_.DF(),
            address(StakedDF_),
            StakedDF_.stake(address(this), _amount)
        );
    }

    /**
     * @dev Redeem tokens from StakedDF.
     * @param _amount Redeem token(sDF) amount.
     */
    function _redeem(uint256 _amount) internal virtual {
        emit Redeem(
            StakedDF_.DF(),
            address(StakedDF_),
            StakedDF_.unstake(address(this), _amount)
        );
    }

    /**
     * @dev Redeem tokens from StakedDF.
     * @param _amount Redeem token(DF) amount.
     */
    function _redeemUnderlying(uint256 _amount) internal virtual {
        StakedDF_.unstakeUnderlying(address(this), _amount);
        emit Redeem(StakedDF_.DF(), address(StakedDF_), _amount);
    }

    /**
     * @dev Address of StakedDF.
     */
    function StakedDF() external view returns (IStakedDF) {
        return StakedDF_;
    }
}

// ============================================================
// FILE: contracts/interface/IChainlinkAggregator.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface IChainlinkAggregator {
    function latestAnswer() external view returns (int256);

    function latestRoundData()
        external
        view
        returns (uint80, int256, uint256, uint256, uint80);

    function latestTimestamp() external view returns (uint256);

    function latestRound() external view returns (uint256);

    function getAnswer(uint256 roundId) external view returns (int256);

    function getTimestamp(uint256 roundId) external view returns (uint256);

    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);
}

// ============================================================
// FILE: contracts/interface/ICurve.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface ICurveMeta {
    function get_dy_underlying(
        int128 _i,
        int128 _j,
        uint256 _dx
    ) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interface/IPulsar.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

interface ITWAMM {
    function obtainPairAddress(
        address token0,
        address token1
    ) external view returns (address);

    function longTermSwapTokenToToken(
        address token0,
        address token1,
        uint256 amountIn,
        uint256 numberOfBlockIntervals,
        uint256 deadline
    ) external returns (uint256 orderId);

    function withdrawProceedsFromTermSwapTokenToToken(
        address token0,
        address token1,
        uint256 orderId,
        uint256 deadline
    ) external returns (uint256 proceeds);

    function cancelTermSwapTokenToToken(
        address token0,
        address token1,
        uint256 orderId,
        uint256 deadline
    ) external returns (uint256 unsoldAmount, uint256 purchasedAmount);
}

interface IPair {
    function getPairOrdersAmount() external view returns (uint256);

    function getOrderDetails(
        uint256 orderId
    )
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            address,
            address,
            address
        );

    function userIdsCheck(
        address userAddress
    ) external view returns (uint256[] memory);

    function orderIdStatusCheck(uint256 orderId) external view returns (bool);
}

// ============================================================
// FILE: contracts/interface/IStakedDF.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface IStakedDF {
    function stake(
        address _recipient,
        uint256 _rawUnderlyingAmount
    ) external returns (uint256 _tokenAmount);

    function unstake(
        address _recipient,
        uint256 _rawTokenAmount
    ) external returns (uint256 _tokenAmount);

    function unstakeUnderlying(
        address _from,
        uint256 _underlyingAmount
    ) external;

    function getCurrentExchangeRate()
        external
        view
        returns (uint256 _exchangeRate);

    function DF() external view returns (address);

    function balanceOf(address _account) external view returns (uint256);
}

// ============================================================
// FILE: contracts/library/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

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
     * @dev Modifier to protect an initializer function from being invoked twice.
     */
    modifier initializer() {
        require(
            !_initialized,
            "Initializable: contract is already initialized"
        );

        _;

        _initialized = true;
    }
}

// ============================================================
// FILE: contracts/library/Ownable.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {_setPendingOwner} and {_acceptOwner}.
 */
contract Ownable {
    /**
     * @dev Returns the address of the current owner.
     */
    address payable public owner;

    /**
     * @dev Returns the address of the current pending owner.
     */
    address payable public pendingOwner;

    event NewOwner(address indexed previousOwner, address indexed newOwner);
    event NewPendingOwner(
        address indexed oldPendingOwner,
        address indexed newPendingOwner
    );

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner == msg.sender, "onlyOwner: caller is not the owner");
        _;
    }

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    function __Ownable_init() internal {
        owner = msg.sender;
        emit NewOwner(address(0), msg.sender);
    }

    /**
     * @notice Base on the inputing parameter `newPendingOwner` to check the exact error reason.
     * @dev Transfer contract control to a new owner. The newPendingOwner must call `_acceptOwner` to finish the transfer.
     * @param newPendingOwner New pending owner.
     */
    function _setPendingOwner(
        address payable newPendingOwner
    ) external onlyOwner {
        require(
            newPendingOwner != address(0) && newPendingOwner != pendingOwner,
            "_setPendingOwner: New owenr can not be zero address and owner has been set!"
        );

        // Gets current owner.
        address oldPendingOwner = pendingOwner;

        // Sets new pending owner.
        pendingOwner = newPendingOwner;

        emit NewPendingOwner(oldPendingOwner, newPendingOwner);
    }

    /**
     * @dev Accepts the admin rights, but only for pendingOwenr.
     */
    function _acceptOwner() external {
        require(
            msg.sender == pendingOwner,
            "_acceptOwner: Only for pending owner!"
        );

        // Gets current values for events.
        address oldOwner = owner;
        address oldPendingOwner = pendingOwner;

        // Set the new contract owner.
        owner = pendingOwner;

        // Clear the pendingOwner.
        pendingOwner = address(0);

        emit NewOwner(oldOwner, owner);
        emit NewPendingOwner(oldPendingOwner, pendingOwner);
    }

    uint256[50] private __gap;
}

// ============================================================
// FILE: contracts/LiquiditySwap.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/utils/Address.sol";

import "./library/Initializable.sol";
import "./library/Ownable.sol";
import "./price/CurvePrice.sol";
import "./order/PulsarLongTermOrders.sol";
import "./deposit/sDFStrategy.sol";

/**
 * @title dForce's Liquidity Swap
 * @author dForce
 */
contract LiquiditySwap is
    Initializable,
    Ownable,
    CurvePrice,
    PulsarLongTermOrders,
    sDFStrategy
{
    using Address for address;

    /// @dev Submit order maximum price.
    uint256 internal priceUpperLimit_;

    /// @dev Submit order minimum price.
    uint256 internal priceLowerLimit_;

    /**
     * @dev Submit Order Check Price.
     */
    modifier checkPrice() {
        require(
            _price() >= priceLowerLimit_ && _price() <= priceUpperLimit_,
            "checkPrice:price not available"
        );
        _;
    }

    /// @dev Emitted when `priceUpperLimit_` is changed.
    event SetPriceUpperLimit(
        uint256 oldPriceUpperLimit,
        uint256 newPriceUpperLimit
    );

    /// @dev Emitted when `priceLowerLimit_` is changed.
    event SetPriceLowerLimit(
        uint256 oldPriceLowerLimit,
        uint256 newPriceLowerLimit
    );

    /**
     * @notice Only for the implementation contract, as for the proxy pattern,
     *            should call `initialize()` separately.
     * @param _curvePool curve meta pool address.
     * @param _chainlinkAggregator chainlink aggregator(USDC) address.
     * @param _tokenOut tokenOut (USX) address.
     * @param _pulsarRouter pulsarRouter address.
     * @param _StakedDF StakedDF address.
     * @param _priceUpperLimit Submit order maximum price.
     * @param _priceLowerLimit Submit order minimum price.
     */
    constructor(
        ICurveMeta _curvePool,
        IChainlinkAggregator _chainlinkAggregator,
        address _tokenOut,
        ITWAMM _pulsarRouter,
        IStakedDF _StakedDF,
        uint256 _priceUpperLimit,
        uint256 _priceLowerLimit
    )
        public
        CurvePrice(_curvePool, _chainlinkAggregator)
        PulsarLongTermOrders(_tokenOut, _StakedDF.DF(), _pulsarRouter)
        sDFStrategy(_StakedDF)
        initializer
    {
        __Ownable_init();
        _setPriceUpperLimit(_priceUpperLimit);
        _setPriceLowerLimit(_priceLowerLimit);
    }

    /**
     * @notice Initialize Liquidity Swap data.
     */
    function initialize(
        uint256 _priceUpperLimit,
        uint256 _priceLowerLimit
    ) public initializer {
        __Ownable_init();
        _initialize();
        _setPriceUpperLimit(_priceUpperLimit);
        _setPriceLowerLimit(_priceLowerLimit);
    }

    /**
     * @notice Initialize approval StakedDF and pulsarRouter.
     */
    function _initialize()
        internal
        override(sDFStrategy, PulsarLongTermOrders)
    {
        PulsarLongTermOrders._initialize();
        sDFStrategy._initialize();
    }

    /**
     * @dev Set the maximum price for submit.
     * @param _priceUpperLimit maximum price.
     */
    function _setPriceUpperLimit(uint256 _priceUpperLimit) internal {
        uint256 _oldPriceUpperLimit = priceUpperLimit_;
        require(
            _priceUpperLimit != _oldPriceUpperLimit,
            "setPriceUpperLimit: Old and new priceUpperLimit cannot be the same."
        );
        priceUpperLimit_ = _priceUpperLimit;
        emit SetPriceUpperLimit(_oldPriceUpperLimit, _priceUpperLimit);
    }

    function setPriceUpperLimit(uint256 _priceUpperLimit) public onlyOwner {
        _setPriceUpperLimit(_priceUpperLimit);
    }

    /**
     * @dev Set the minimum price for submit.
     * @param _priceLowerLimit minimum price.
     */
    function _setPriceLowerLimit(uint256 _priceLowerLimit) internal {
        uint256 _oldPriceLowerLimit = priceLowerLimit_;
        require(
            _priceLowerLimit != _oldPriceLowerLimit,
            "setPriceUpperLimit: Old and new priceLowerLimit cannot be the same."
        );
        priceLowerLimit_ = _priceLowerLimit;
        emit SetPriceLowerLimit(_oldPriceLowerLimit, _priceLowerLimit);
    }

    function setPriceLowerLimit(uint256 _priceLowerLimit) public onlyOwner {
        _setPriceLowerLimit(_priceLowerLimit);
    }

    /**
     * @dev Submit an order.
     * @param _amount sell token(USX) amount.
     * @param _numberOfBlockIntervals determines when order expires.
     */
    function submit(
        uint256 _amount,
        uint256 _numberOfBlockIntervals
    ) public onlyOwner checkPrice {
        _submit(_amount, _numberOfBlockIntervals);
    }

    /**
     * @dev Cancel an order.
     * @param _orderId order id.
     */
    function cancel(uint256 _orderId) public onlyOwner {
        _cancel(_orderId);
    }

    /**
     * @dev withdraw proceeds from a long term swap.
     * @param _orderId order id.
     */
    function withdraw(uint256 _orderId) public onlyOwner {
        _withdraw(_orderId);
    }

    /**
     * @dev Deposit tokens to StakedDF.
     * @param _amount Deposit token amount.
     */
    function deposit(uint256 _amount) public onlyOwner {
        _deposit(_amount);
    }

    /**
     * @dev Redeem tokens from StakedDF.
     * @param _amount Redeem token(DF) amount.
     */
    function redeem(uint256 _amount) public onlyOwner {
        _redeemUnderlying(_amount);
    }

    /**
     * @dev Redeem all from StakedDF.
     */
    function redeemAll() public onlyOwner {
        _redeem(StakedDF_.balanceOf(address(this)));
    }

    /**
     * @notice Generic call contract function.
     * @dev Call the asset's priceModel function.
     * @param _target Target contract address.
     * @param _signature Function signature.
     * @param _data Param data.
     * @return The return value of calling the target contract function.
     */
    function _execute(
        address _target,
        string memory _signature,
        bytes memory _data
    ) internal returns (bytes memory) {
        require(
            bytes(_signature).length > 0,
            "_execute: Parameter signature can not be empty!"
        );
        bytes memory _callData = abi.encodePacked(
            bytes4(keccak256(bytes(_signature))),
            _data
        );
        return _target.functionCall(_callData);
    }

    function executeTransaction(
        address _target,
        string memory _signature,
        bytes memory _data
    ) external onlyOwner {
        _execute(_target, _signature, _data);
    }

    /**
     * @dev Submit order maximum price.
     */
    function priceUpperLimit() external view returns (uint256) {
        return priceUpperLimit_;
    }

    /**
     * @dev Submit order minimum price.
     */
    function priceLowerLimit() external view returns (uint256) {
        return priceLowerLimit_;
    }
}

// ============================================================
// FILE: contracts/order/PulsarLongTermOrders.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

import "../interface/IPulsar.sol";

/**
 * @title dForce's Liquidity Swap Order Model
 * @author dForce
 */
contract PulsarLongTermOrders {
    using SafeERC20 for IERC20;

    /// @dev Address of tokenOut (USX).
    address internal immutable tokenOut_;

    /// @dev Address of tokenIn (DF).
    address internal immutable tokenIn_;

    /// @dev Address of pulsarRouter.
    ITWAMM internal immutable pulsarRouter_;

    /// @dev Emitted when submit.
    event SubmitOrders(
        address target,
        address tokenOut,
        uint256 amount,
        uint256 numberOfBlockIntervals,
        uint256 orderId
    );

    /// @dev Emitted when cancel.
    event CancelOrders(
        uint256 orderId,
        address from,
        address tokenOut,
        uint256 tokenOutAmount,
        address tokenIn,
        uint256 tokenInAmount
    );

    /// @dev Emitted when withdraw.
    event WithdrawOrders(
        uint256 orderId,
        address from,
        address tokenBuy,
        uint256 tokenBuyAmount
    );

    /**
     * @notice Constructor for PulsarLongTermOrders order model contract.
     * @param _tokenOut tokenOut (USX) address.
     * @param _tokenIn tokenIn (DF) address.
     * @param _pulsarRouter pulsarRouter address.
     */
    constructor(
        address _tokenOut,
        address _tokenIn,
        ITWAMM _pulsarRouter
    ) public {
        tokenOut_ = _tokenOut;
        tokenIn_ = _tokenIn;
        pulsarRouter_ = _pulsarRouter;
    }

    /**
     * @notice Initialize approval pulsarRouter.
     */
    function _initialize() internal virtual {
        IERC20(tokenOut_).safeApprove(address(pulsarRouter_), uint256(-1));
        IERC20(tokenIn_).safeApprove(address(pulsarRouter_), uint256(-1));
    }

    /**
     * @dev Submit an order.
     * @param _amount sell token(USX) amount.
     * @param _numberOfBlockIntervals determines when order expires.
     */
    function _submit(
        uint256 _amount,
        uint256 _numberOfBlockIntervals
    ) internal virtual {
        emit SubmitOrders(
            address(pulsarRouter_),
            tokenOut_,
            _amount,
            _numberOfBlockIntervals,
            pulsarRouter_.longTermSwapTokenToToken(
                tokenOut_,
                tokenIn_,
                _amount,
                _numberOfBlockIntervals,
                block.timestamp
            )
        );
    }

    /**
     * @dev Address of pair.
     */
    function _pair() internal view returns (IPair) {
        return IPair(pulsarRouter_.obtainPairAddress(tokenOut_, tokenIn_));
    }

    /**
     * @dev order details.
     * @param _orderId order id.
     * @return order id.
     * @return submitBlock.
     * @return expirationBlock.
     * @return saleRate.
     * @return sellAmount.
     * @return buyAmount.
     * @return owner address.
     * @return tokenOut address.
     * @return tokenIn address.
     */
    function _orderInfo(
        uint256 _orderId
    )
        internal
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            address,
            address,
            address
        )
    {
        return _pair().getOrderDetails(_orderId);
    }

    /**
     * @dev Cancel an order.
     * @param _orderId order id.
     */
    function _cancel(uint256 _orderId) internal virtual {
        (uint256 _sellAmount, uint256 _buyAmount) = pulsarRouter_
            .cancelTermSwapTokenToToken(
                tokenOut_,
                tokenIn_,
                _orderId,
                block.timestamp
            );
        (, , , , , , , address _tokenOut, address _tokenIn) = _orderInfo(
            _orderId
        );
        emit CancelOrders(
            _orderId,
            address(pulsarRouter_),
            _tokenOut,
            _sellAmount,
            _tokenIn,
            _buyAmount
        );
    }

    /**
     * @dev withdraw proceeds from a long term swap.
     * @param _orderId order id.
     */
    function _withdraw(uint256 _orderId) internal virtual {
        emit WithdrawOrders(
            _orderId,
            address(pulsarRouter_),
            tokenIn_,
            pulsarRouter_.withdrawProceedsFromTermSwapTokenToToken(
                tokenOut_,
                tokenIn_,
                _orderId,
                block.timestamp
            )
        );
    }

    /**
     * @dev Address of tokenOut.
     */
    function tokenOut() external view returns (address) {
        return tokenOut_;
    }

    /**
     * @dev Address of tokenIn.
     */
    function tokenIn() external view returns (address) {
        return tokenIn_;
    }

    /**
     * @dev Address of pulsarRouter.
     */
    function pulsarRouter() external view returns (address) {
        return address(pulsarRouter_);
    }

    /**
     * @dev Address of pair.
     */
    function pair() external view returns (IPair) {
        return _pair();
    }

    /**
     * @dev Pair orders total amount.
     */
    function pairOrdersAmount() external view returns (uint256) {
        return _pair().getPairOrdersAmount();
    }

    /**
     * @dev Get contract order list.
     */
    function orderList() external view returns (uint256[] memory) {
        return _pair().userIdsCheck(address(this));
    }

    /**
     * @dev Order status based on Ids.
     * @param _orderId order id.
     * @return Order status true: enable, false: disabled.
     */
    function orderStatus(uint256 _orderId) external view returns (bool) {
        return _pair().orderIdStatusCheck(_orderId);
    }

    /**
     * @dev Order details.
     * @param _orderId order id.
     */
    function orderInfo(
        uint256 _orderId
    )
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            address,
            address,
            address
        )
    {
        return _orderInfo(_orderId);
    }
}

// ============================================================
// FILE: contracts/price/CurvePrice.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/math/SafeMath.sol";

import "../interface/IChainlinkAggregator.sol";
import "../interface/ICurve.sol";

/**
 * @title dForce's Liquidity Swap Price Model
 * @author dForce
 */
contract CurvePrice {
    using SafeMath for uint256;

    /// @dev Index value for the token(USX) to send in curve.
    int128 internal constant out_ = 0;

    /// @dev Index value for the token(USDC) to receive in curve.
    int128 internal constant in_ = 2;

    /// @dev Amount of the token(USX) being exchanged.
    uint256 internal constant ONE_ = 1 ether;

    /// @dev Decimals for send token(USX).
    uint256 internal constant outDecimal_ = 18;

    /// @dev Decimals for receive token(USDC).
    uint256 internal constant inDecimal_ = 6;

    /// @dev Decimal places for price padding.
    uint256 internal immutable paddingDecimalScaler_;

    /// @dev Address of curve pool (USX meta pool).
    ICurveMeta internal immutable curvePool_;

    /// @dev Aggregator address for receive token(USDC)
    IChainlinkAggregator internal immutable chainlinkAggregator_;

    /**
     * @notice Constructor for curve price model contract.
     * @param _curvePool curve meta pool address.
     * @param _chainlinkAggregator chainlink aggregator(USDC) address.
     */
    constructor(
        ICurveMeta _curvePool,
        IChainlinkAggregator _chainlinkAggregator
    ) public {
        curvePool_ = _curvePool;
        chainlinkAggregator_ = _chainlinkAggregator;
        paddingDecimalScaler_ =
            10 **
                (
                    outDecimal_.sub(
                        inDecimal_.add(uint256(_chainlinkAggregator.decimals()))
                    )
                );
    }

    /**
     * @dev Get the USD price of the token.
     * @return The USD price of the token, decimal = 18.
     */
    function _price() internal view returns (uint256) {
        (, int256 _answer, , , ) = chainlinkAggregator_.latestRoundData();
        if (_answer < 0) return 0;
        uint256 _receiveAmount = curvePool_.get_dy_underlying(out_, in_, ONE_);
        return uint256(_answer).mul(_receiveAmount).mul(paddingDecimalScaler_);
    }

    /**
     * @dev Get the USD price of the token.
     * @return The USD price of the token, decimal = 18.
     */
    function currentPrice() external view returns (uint256) {
        return _price();
    }

    /**
     * @dev Decimal places for price padding.
     */
    function paddingDecimalScaler() external view returns (uint256) {
        return paddingDecimalScaler_;
    }

    /**
     * @dev Address of curve pool (USX meta pool).
     */
    function curvePool() external view returns (ICurveMeta) {
        return curvePool_;
    }

    /**
     * @dev Aggregator address for receive token(USDC)
     */
    function chainlinkAggregator()
        external
        view
        returns (IChainlinkAggregator)
    {
        return chainlinkAggregator_;
    }
}
