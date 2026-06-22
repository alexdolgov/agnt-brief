// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

// OpenZeppelin Contracts v4.4.1 (security/ReentrancyGuard.sol)

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
abstract contract ReentrancyGuard {
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

    constructor() {
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
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}

// OpenZeppelin Contracts v4.4.1 (token/ERC20/utils/SafeERC20.sol)

// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/IERC20.sol)

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
    function transferFrom(
        address from,
        address to,
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

// OpenZeppelin Contracts (last updated v4.5.0) (utils/Address.sol)

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
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
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

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
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

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
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

        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
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
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

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
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            uint256 newAllowance = oldAllowance - value;
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        }
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
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// OpenZeppelin Contracts v4.4.1 (utils/math/SafeCast.sol)

/**
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 *
 * Can be combined with {SafeMath} and {SignedSafeMath} to extend it to smaller types, by performing
 * all math on `uint256` and `int256` and then downcasting.
 */
library SafeCast {
    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        require(value <= type(uint224).max, "SafeCast: value doesn't fit in 224 bits");
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        require(value <= type(uint128).max, "SafeCast: value doesn't fit in 128 bits");
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        require(value <= type(uint96).max, "SafeCast: value doesn't fit in 96 bits");
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        require(value <= type(uint64).max, "SafeCast: value doesn't fit in 64 bits");
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        require(value <= type(uint32).max, "SafeCast: value doesn't fit in 32 bits");
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        require(value <= type(uint16).max, "SafeCast: value doesn't fit in 16 bits");
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits.
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        require(value <= type(uint8).max, "SafeCast: value doesn't fit in 8 bits");
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        require(value >= 0, "SafeCast: value must be positive");
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     *
     * _Available since v3.1._
     */
    function toInt128(int256 value) internal pure returns (int128) {
        require(value >= type(int128).min && value <= type(int128).max, "SafeCast: value doesn't fit in 128 bits");
        return int128(value);
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     *
     * _Available since v3.1._
     */
    function toInt64(int256 value) internal pure returns (int64) {
        require(value >= type(int64).min && value <= type(int64).max, "SafeCast: value doesn't fit in 64 bits");
        return int64(value);
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     *
     * _Available since v3.1._
     */
    function toInt32(int256 value) internal pure returns (int32) {
        require(value >= type(int32).min && value <= type(int32).max, "SafeCast: value doesn't fit in 32 bits");
        return int32(value);
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     *
     * _Available since v3.1._
     */
    function toInt16(int256 value) internal pure returns (int16) {
        require(value >= type(int16).min && value <= type(int16).max, "SafeCast: value doesn't fit in 16 bits");
        return int16(value);
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits.
     *
     * _Available since v3.1._
     */
    function toInt8(int256 value) internal pure returns (int8) {
        require(value >= type(int8).min && value <= type(int8).max, "SafeCast: value doesn't fit in 8 bits");
        return int8(value);
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        require(value <= uint256(type(int256).max), "SafeCast: value doesn't fit in an int256");
        return int256(value);
    }
}

// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

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

interface PULPInterface is IERC20Metadata {
  function globalLock(uint256 _week) external view returns (uint256);

  function userLock(address _user, uint256 _week) external view returns (bool, uint224);

  function PLY() external view returns (address);

  function lockPly(address recipient, uint256 amount) external;

  function calcLockAmount(address account, uint256 amount)
    external
    view
    returns (uint256 lockAmount, uint256 claimAmount);

  function redeem(address recipient, uint256 amountToRedeem)
    external
    returns (uint256 amountRedeemed);

  function getMaxAmountRedeemable(address account) external view returns (uint256 res);

  event PlyLocked(address indexed locker, address indexed recipient, uint256 amount);

  event GlobalLockSet(uint256 indexed weekNumber, uint256 newPercentLock);

  event UserLockSet(address indexed account, uint256 indexed weekNumber, uint256 newPercentLock);

  event PulpRedeemed(address indexed redeemer, address indexed recipient, uint256 amount);

  event EarlyRedeemAdd(address indexed account, uint256 amountAdd);

  event EarlyRedeemReset(address indexed account, uint256 newAmount);
}

// Audit on 5-Jan-2021 by Keno and BoringCrypto
// Source: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol + Claimable.sol
// Edited by BoringCrypto

contract BoringOwnableData {
    address public owner;
    address public pendingOwner;
}

contract BoringOwnable is BoringOwnableData {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor(){
        owner = msg.sender;
    }

    /// @notice Transfers ownership to `newOwner`. Either directly or claimable by the new pending owner.
    /// Can only be invoked by the current `owner`.
    /// @param newOwner Address of the new owner.
    /// @param direct True if `newOwner` should be set immediately. False if `newOwner` needs to use `claimOwnership`.
    /// @param renounce Allows the `newOwner` to be `address(0)` if `direct` and `renounce` is True. Has no effect otherwise.
    function transferOwnership(
        address newOwner,
        bool direct,
        bool renounce
    ) public onlyOwner {
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
}

library Math {
  /**
   * @dev Returns the largest of two numbers.
   */
  function max(uint256 a, uint256 b) internal pure returns (uint256) {
    return a >= b ? a : b;
  }

  function max(
    uint256 a,
    uint256 b,
    uint256 c
  ) internal pure returns (uint256) {
    return max(a, max(b, c));
  }

  /**
   * @dev Returns the smallest of two numbers.
   */
  function min(uint256 a, uint256 b) internal pure returns (uint256) {
    return a < b ? a : b;
  }

  function min(
    uint256 a,
    uint256 b,
    uint256 c
  ) internal pure returns (uint256) {
    return min(min(a, b), c);
  }

  /**
   * @dev Returns the average of two numbers. The result is rounded towards
   * zero.
   */
  function average(uint256 a, uint256 b) internal pure returns (uint256) {
    // (a + b) / 2 can overflow.
    return (a & b) + (a ^ b) / 2;
  }

  /**
   * @dev Returns the ceiling of the division of two numbers.
   *
   * This differs from standard division with `/` in that it rounds up instead
   * of rounding down.
   */
  function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    // (a + b - 1) / b can overflow on addition, so we distribute.
    return a / b + (a % b == 0 ? 0 : 1);
  }

  /**
   * @dev Returns the abs of the difference of two numbers.
   */
  function absDiff(uint256 a, uint256 b) internal pure returns (uint256) {
    return (a > b) ? (a - b) : (b - a);
  }

  function safe216(uint256 n) internal pure returns (uint216) {
    require(n <= type(uint216).max, "safe216");
    return uint216(n);
  }

  function safe224(uint256 n) internal pure returns (uint224) {
    require(n <= type(uint224).max, "safe224");
    return uint224(n);
  }

  function safe32(uint256 n) internal pure returns (uint32) {
    require(n <= type(uint32).max, "safe32");
    return uint32(n);
  }
}

interface AuriFairLaunchInterface {
  event AddNewPool(
    address indexed stakeToken,
    uint32 indexed startTime,
    uint32 indexed endTime,
    uint256[] rewardPerSeconds
  );
  event RenewPool(
    uint256 indexed pid,
    uint32 indexed startTime,
    uint32 indexed endTime,
    uint256[] rewardPerSeconds
  );
  event UpdatePool(uint256 indexed pid, uint32 indexed endTime, uint256[] rewardPerSecond);
  event Deposit(
    address indexed user,
    uint256 indexed pid,
    uint256 indexed timestamp,
    uint256 amount
  );
  event Withdraw(
    address indexed user,
    uint256 indexed pid,
    uint256 indexed timestamp,
    uint256 amount
  );
  event Harvest(
    address indexed user,
    uint256 indexed pid,
    address indexed rewardToken,
    uint256 lockedAmount,
    uint256 timestamp
  );
  event EmergencyWithdraw(
    address indexed user,
    uint256 indexed pid,
    uint256 indexed timestamp,
    uint256 amount
  );
  event RewardTokenWithdrawn(address indexed owner, address indexed rewardToken, uint256 amount);

  function harvest(
    address account,
    uint256 _pid,
    uint256 _maxAmountToHarvest
  ) external;

  function pendingRewards(uint256 _pid, address _user) external view returns (uint256[] memory rewards);

  function getUserInfo(uint256 _pid, address _account)
    external
    view
    returns (
      uint256 amount,
      uint256[] memory unclaimedRewards,
      uint256[] memory lastRewardPerShares
    );

  function updateAndGetUserInfo(uint256 _pid, address _account)
    external
    returns (
      uint256 amount,
      uint256[] memory unclaimedRewards,
      uint256[] memory lastRewardPerShares
    );

  function updateMultiplePools(address account, uint256[] calldata _pids) external;
}

interface ComptrollerInterface {
  function isAllowedToClaimReward(address user, address claimer) external view returns (bool);
}

/// @author Kyber Network
/// Forked from KyberFairLaunch
/// Allow stakers to stake LP tokens and receive a reward token
/// Allow extend or renew a pool to continue/restart the LM program
/// When harvesting, rewards will be transferred according to schedule dictated by TokenLock
contract AuriFairLaunch is ReentrancyGuard, BoringOwnable, AuriFairLaunchInterface {
  using SafeCast for uint256;
  using SafeERC20 for IERC20;

  uint256 internal constant PRECISION = 1e12;

  struct UserRewardData {
    uint256 unclaimedReward;
    uint256 lastRewardPerShare;
  }
  // Info of each user.
  struct UserInfo {
    uint256 amount; // How many Staking tokens the user has provided.
    mapping(uint256 => UserRewardData) userRewardData;
    //
    // Basically, any point in time, the amount of reward token
    // entitled to a user but is pending to be distributed is:
    //
    //   pending reward = user.unclaimAmount + (user.amount * (pool.accRewardPerShare - user.lastRewardPerShare)
    //
    // Whenever a user deposits or withdraws Staking tokens to a pool. Here's what happens:
    //   1. The pool's `accRewardPerShare` (and `lastRewardTimestamp`) gets updated.
    //   2. User receives the pending reward sent to his/her address.
    //   3. User's `lastRewardPerShare` gets updated.
    //   4. User's `amount` gets updated.
  }

  struct PoolRewardData {
    uint256 rewardPerSecond;
    uint256 accRewardPerShare;
  }
  // Info of each pool
  // poolRewardData: reward data for each reward token
  //      rewardPerSecond: amount of reward token per second
  //      accRewardPerShare: accumulated reward per share of token
  // totalStake: total amount of stakeToken has been staked
  // stakeToken: token to stake, should be an ERC20 token
  // startTime: the timestamp that the reward starts
  // endTime: the timestamp that the reward ends
  // lastRewardTimestamp: last timestamp that rewards distribution occurs
  struct PoolInfo {
    uint256 totalStake;
    address stakeToken;
    uint32 startTime;
    uint32 endTime;
    uint32 lastRewardTimestamp;
    mapping(uint256 => PoolRewardData) poolRewardData;
  }

  // check if a pool exists for a stakeToken
  mapping(address => bool) public poolExists;
  // contract for locking reward
  PULPInterface public immutable pulp;
  IERC20 public immutable ply;
  address[] public rewardTokens;

  // comptroller to determine who can harvest
  ComptrollerInterface public immutable unitroller;

  // Info of each pool.
  uint256 public poolLength;
  mapping(uint256 => PoolInfo) internal poolInfo;
  // Info of each user that stakes Staking tokens.
  mapping(uint256 => mapping(address => UserInfo)) internal userInfo;

  constructor(
    PULPInterface _pulp,
    ComptrollerInterface _unitroller,
    address[] memory _rewardTokens
  ) BoringOwnable() {
    rewardTokens = _rewardTokens;
    pulp = _pulp;
    ply = IERC20(pulp.PLY());
    unitroller = _unitroller;

    ply.approve(address(pulp), type(uint256).max);
  }

  /**
   * @dev Allow owner to withdraw only reward token
   */
  function ownerWithdraw(uint256 rewardTokenIndex, uint256 amount) external onlyOwner {
    require(rewardTokenIndex < rewardTokens.length, "invalid index");
    address rewardToken = rewardTokens[rewardTokenIndex];
    IERC20(rewardToken).safeTransfer(msg.sender, amount);
    emit RewardTokenWithdrawn(msg.sender, rewardToken, amount);
  }

  /**
   * @dev Add a new lp to the pool. Can only be called by the owner.
   * @param _stakeToken: token to be staked to the pool
   * @param _startTime: timestamp where the reward starts
   * @param _endTime: timestamp where the reward ends
   * @param _rewardPerSeconds: amount of reward token per second for the pool for each reward token
   */
  function addPool(
    address _stakeToken,
    uint32 _startTime,
    uint32 _endTime,
    uint256[] calldata _rewardPerSeconds
  ) external nonReentrant onlyOwner {
    require(!poolExists[_stakeToken], "add: duplicated pool");
    require(_stakeToken != address(0), "add: invalid stake token");
    require(rewardTokens.length == _rewardPerSeconds.length, "add: invalid length");

    require(_startTime > block.timestamp && _endTime > _startTime, "add: invalid times");

    poolInfo[poolLength].stakeToken = _stakeToken;
    poolInfo[poolLength].startTime = _startTime;
    poolInfo[poolLength].endTime = _endTime;
    poolInfo[poolLength].lastRewardTimestamp = _startTime;

    for (uint256 i = 0; i < _rewardPerSeconds.length; i++) {
      poolInfo[poolLength].poolRewardData[i] = PoolRewardData({
        rewardPerSecond: _rewardPerSeconds[i],
        accRewardPerShare: 0
      });
    }

    poolLength++;

    poolExists[_stakeToken] = true;

    emit AddNewPool(_stakeToken, _startTime, _endTime, _rewardPerSeconds);
  }

  /**
   * @dev Renew a pool to start another liquidity mining program
   * @param _pid: id of the pool to renew, must be pool that has not started or already ended
   * @param _startTime: timestamp where the reward starts
   * @param _endTime: timestamp where the reward ends
   * @param _rewardPerSeconds: amount of reward token per second for the pool
   *   0 if we want to stop the pool from accumulating rewards
   */
  function renewPool(
    uint256 _pid,
    uint32 _startTime,
    uint32 _endTime,
    uint256[] calldata _rewardPerSeconds
  ) external nonReentrant onlyOwner {
    _updatePoolRewards(_pid);

    PoolInfo storage pool = poolInfo[_pid];
    // check if pool has not started or already ended
    require(
      pool.startTime > block.timestamp || pool.endTime < block.timestamp,
      "renew: invalid pool state to renew"
    );
    // checking data of new pool
    require(rewardTokens.length == _rewardPerSeconds.length, "renew: invalid length");
    require(_startTime > block.timestamp && _endTime > _startTime, "renew: invalid times");

    pool.startTime = _startTime;
    pool.endTime = _endTime;
    pool.lastRewardTimestamp = _startTime;

    for (uint256 i = 0; i < _rewardPerSeconds.length; i++) {
      pool.poolRewardData[i].rewardPerSecond = _rewardPerSeconds[i];
    }

    emit RenewPool(_pid, _startTime, _endTime, _rewardPerSeconds);
  }

  /**
   * @dev Update a pool, allow to change end timestamp, reward per second
   * @param _pid: pool id to be renew
   * @param _endTime: timestamp where the reward ends
   * @param _rewardPerSeconds: amount of reward token per second for the pool,
   *   0 if we want to stop the pool from accumulating rewards
   */
  function updatePool(
    uint256 _pid,
    uint32 _endTime,
    uint256[] calldata _rewardPerSeconds
  ) external nonReentrant onlyOwner {
    _updatePoolRewards(_pid);

    PoolInfo storage pool = poolInfo[_pid];

    // should call renew pool if the pool has ended
    require(pool.endTime > block.timestamp, "update: pool already ended");
    require(rewardTokens.length == _rewardPerSeconds.length, "update: invalid length");
    require(_endTime > block.timestamp && _endTime > pool.startTime, "update: invalid end time");

    pool.endTime = _endTime;
    for (uint256 i = 0; i < _rewardPerSeconds.length; i++) {
      pool.poolRewardData[i].rewardPerSecond = _rewardPerSeconds[i];
    }

    emit UpdatePool(_pid, _endTime, _rewardPerSeconds);
  }

  /**
   * @dev Deposit tokens to accumulate rewards without harvesting
   * @param _pid: id of the pool
   * @param _amount: amount of stakeToken to be deposited
   */
  function deposit(uint256 _pid, uint256 _amount) external nonReentrant {
    // update pool rewards, user's rewards
    _updatePoolRewards(_pid);
    _updateUserReward(msg.sender, _pid, false, 0);

    PoolInfo storage pool = poolInfo[_pid];
    UserInfo storage user = userInfo[_pid][msg.sender];

    // collect stakeToken
    IERC20(pool.stakeToken).safeTransferFrom(msg.sender, address(this), _amount);

    // update user staked amount, and total staked amount for the pool
    user.amount = user.amount + _amount;
    pool.totalStake = pool.totalStake + _amount;

    emit Deposit(msg.sender, _pid, block.timestamp, _amount);
  }

  /**
   * @dev Withdraw token (of the sender) from pool without harvesting
   * @param _pid: id of the pool
   * @param _amount: amount of stakeToken to withdraw
   */
  function withdraw(uint256 _pid, uint256 _amount) external nonReentrant {
    _withdraw(_pid, _amount);
  }

  /**
   * @dev Withdraw all tokens (of the sender) from pool without harvesting
   * @param _pid: id of the pool
   */
  function withdrawAll(uint256 _pid) external nonReentrant {
    _withdraw(_pid, userInfo[_pid][msg.sender].amount);
  }

  /**
   * @notice EMERGENCY USAGE ONLY, USER'S REWARDS WILL BE RESET
   * @dev Emergency withdrawal function to allow withdraw all deposited tokens (of the sender)
   *   and reset all rewards
   * @param _pid: id of the pool
   */
  function emergencyWithdraw(uint256 _pid) external nonReentrant {
    PoolInfo storage pool = poolInfo[_pid];
    UserInfo storage user = userInfo[_pid][msg.sender];
    uint256 amount = user.amount;

    user.amount = 0;
    uint256 rTokensLength = rewardTokens.length;
    for (uint256 i = 0; i < rTokensLength; i++) {
      UserRewardData storage rewardData = user.userRewardData[i];
      rewardData.lastRewardPerShare = 0;
      rewardData.unclaimedReward = 0;
    }

    pool.totalStake = pool.totalStake - amount;

    if (amount > 0) {
      IERC20(pool.stakeToken).safeTransfer(msg.sender, amount);
    }

    emit EmergencyWithdraw(msg.sender, _pid, block.timestamp, amount);
  }

  /**
   * @dev update rewards from multiple pools for the account
   */
  function updateMultiplePools(address account, uint256[] calldata _pids) external nonReentrant {
    uint256 pid;
    for (uint256 i = 0; i < _pids.length; i++) {
      pid = _pids[i];
      _updatePoolRewards(pid);
      // update user reward without harvesting
      _updateUserReward(account, pid, false, 0);
    }
  }

  /**
   * @dev Get pending rewards of a user from a pool, mostly for front-end
   * @param _pid: id of the pool
   * @param _user: user to check for pending rewards
   */
  function pendingRewards(uint256 _pid, address _user)
    external
    view
    returns (uint256[] memory rewards)
  {
    uint256 rTokensLength = rewardTokens.length;
    rewards = new uint256[](rTokensLength);
    PoolInfo storage pool = poolInfo[_pid];
    UserInfo storage user = userInfo[_pid][_user];
    uint256 _totalStake = pool.totalStake;
    uint256 _poolLastRewardTimestamp = pool.lastRewardTimestamp;
    uint32 lastAccountedTime = _lastAccountedRewardTime(_pid);

    for (uint256 i = 0; i < rTokensLength; i++) {
      uint256 _accRewardPerShare = pool.poolRewardData[i].accRewardPerShare;
      if (lastAccountedTime > _poolLastRewardTimestamp && _totalStake != 0) {
        uint256 reward = (lastAccountedTime - _poolLastRewardTimestamp) *
          pool.poolRewardData[i].rewardPerSecond;
        _accRewardPerShare = _accRewardPerShare + ((reward * PRECISION) / _totalStake);
      }
      rewards[i] =
        (user.amount * (_accRewardPerShare - user.userRewardData[i].lastRewardPerShare)) /
        PRECISION;
      rewards[i] += user.userRewardData[i].unclaimedReward;
    }
  }

  /**
   * @dev Return list reward tokens
   */
  function getRewardTokens() external view returns (address[] memory) {
    return rewardTokens;
  }

  /**
   * @dev Return full details of a pool
   */
  function getPoolInfo(uint256 _pid)
    external
    view
    returns (
      uint256 totalStake,
      address stakeToken,
      uint32 startTime,
      uint32 endTime,
      uint32 lastRewardTimestamp,
      uint256[] memory rewardPerSeconds,
      uint256[] memory accRewardPerShares
    )
  {
    PoolInfo storage pool = poolInfo[_pid];
    (totalStake, stakeToken, startTime, endTime, lastRewardTimestamp) = (
      pool.totalStake,
      pool.stakeToken,
      pool.startTime,
      pool.endTime,
      pool.lastRewardTimestamp
    );
    uint256 rTokensLength = rewardTokens.length;
    rewardPerSeconds = new uint256[](rTokensLength);
    accRewardPerShares = new uint256[](rTokensLength);
    for (uint256 i = 0; i < rTokensLength; i++) {
      rewardPerSeconds[i] = pool.poolRewardData[i].rewardPerSecond;
      accRewardPerShares[i] = pool.poolRewardData[i].accRewardPerShare;
    }
  }

  /**
   * @dev Return user's info including deposited amount and reward data
   */
  function getUserInfo(uint256 _pid, address _account)
    public
    view
    returns (
      uint256 amount,
      uint256[] memory unclaimedRewards,
      uint256[] memory lastRewardPerShares
    )
  {
    UserInfo storage user = userInfo[_pid][_account];
    amount = user.amount;
    uint256 rTokensLength = rewardTokens.length;
    unclaimedRewards = new uint256[](rTokensLength);
    lastRewardPerShares = new uint256[](rTokensLength);
    for (uint256 i = 0; i < rTokensLength; i++) {
      unclaimedRewards[i] = user.userRewardData[i].unclaimedReward;
      lastRewardPerShares[i] = user.userRewardData[i].lastRewardPerShare;
    }
  }

  /**
   * @dev Return user's info including deposited amount and reward data
   */
  function updateAndGetUserInfo(uint256 _pid, address _account)
    external
    nonReentrant
    returns (
      uint256 amount,
      uint256[] memory unclaimedRewards,
      uint256[] memory lastRewardPerShares
    )
  {
    _updatePoolRewards(_pid);
    _updateUserReward(_account, _pid, false, 0);
    (amount, unclaimedRewards, lastRewardPerShares) = getUserInfo(_pid, _account);
  }

  /**
   * @dev Harvest rewards from a pool for an account. For all rewards that are not PLY, the entire amount will be
   transferred out. For PLY, it will follow the weekly locking schedule specified in PULP
   * @param _pid: id of the pool
   * @param _maxAmountOfPlyToHarvest: the maximum amount of Ply to harvest from the pool
   * @dev Note that only approved claimer can harvest & lock the rewards (check _doTransferOutRewards function)
   */
  function harvest(
    address account,
    uint256 _pid,
    uint256 _maxAmountOfPlyToHarvest
  ) external nonReentrant {
    _updatePoolRewards(_pid);
    _updateUserReward(account, _pid, true, _maxAmountOfPlyToHarvest);
  }

  /**
   * @dev Update rewards for one pool
   */
  function updatePoolRewards(uint256 _pid) external nonReentrant {
    _updatePoolRewards(_pid);
  }

  /**
   * @dev Update rewards for one pool
   */
  function _updatePoolRewards(uint256 _pid) internal {
    require(_pid < poolLength, "invalid pool id");
    PoolInfo storage pool = poolInfo[_pid];
    uint32 lastAccountedTime = _lastAccountedRewardTime(_pid);
    if (lastAccountedTime <= pool.lastRewardTimestamp) return;
    uint256 _totalStake = pool.totalStake;
    if (_totalStake == 0) {
      pool.lastRewardTimestamp = lastAccountedTime;
      return;
    }

    uint256 secondsElapsed = lastAccountedTime - pool.lastRewardTimestamp;
    uint256 rTokensLength = rewardTokens.length;
    for (uint256 i = 0; i < rTokensLength; i++) {
      PoolRewardData storage rewardData = pool.poolRewardData[i];
      uint256 reward = secondsElapsed * rewardData.rewardPerSecond;
      rewardData.accRewardPerShare =
        rewardData.accRewardPerShare +
        (reward * PRECISION) /
        _totalStake;
    }
    pool.lastRewardTimestamp = lastAccountedTime;
  }

  /**
   * @dev Withdraw _amount of stakeToken from pool _pid
   */
  function _withdraw(uint256 _pid, uint256 _amount) internal {
    PoolInfo storage pool = poolInfo[_pid];
    UserInfo storage user = userInfo[_pid][msg.sender];
    require(user.amount >= _amount, "withdraw: insufficient amount");

    // update pool reward and harvest
    _updatePoolRewards(_pid);
    _updateUserReward(msg.sender, _pid, false, 0);

    user.amount = user.amount - _amount;
    pool.totalStake = pool.totalStake - _amount;

    IERC20(pool.stakeToken).safeTransfer(msg.sender, _amount);

    emit Withdraw(msg.sender, _pid, block.timestamp, _amount);
  }

  /**
   * @dev Update reward of _to address from pool _pid, harvest if needed
   */
  function _updateUserReward(
    address _to,
    uint256 _pid,
    bool doHarvest,
    uint256 _maxAmountOfPlyToHarvest
  ) internal {
    uint256 userAmount = userInfo[_pid][_to].amount;
    uint256 rTokensLength = rewardTokens.length;

    if (userAmount == 0) {
      // update user last reward per share to the latest pool reward per share
      // by right if user.amount is 0, user.unclaimedReward should be 0 as well,
      // except when user uses emergencyWithdraw function
      for (uint256 i = 0; i < rTokensLength; i++) {
        userInfo[_pid][_to].userRewardData[i].lastRewardPerShare = poolInfo[_pid]
          .poolRewardData[i]
          .accRewardPerShare;
      }
      return;
    }

    for (uint256 i = 0; i < rTokensLength; i++) {
      uint256 lastAccRewardPerShare = poolInfo[_pid].poolRewardData[i].accRewardPerShare;
      UserRewardData storage rewardData = userInfo[_pid][_to].userRewardData[i];
      // user's unclaim reward + user's amount * (pool's accRewardPerShare - user's lastRewardPerShare) / precision
      uint256 _pending = (userAmount * (lastAccRewardPerShare - rewardData.lastRewardPerShare)) /
        PRECISION;
      _pending = _pending + rewardData.unclaimedReward;

      rewardData.unclaimedReward = _pending;
      // update user last reward per share to the latest pool reward per share
      rewardData.lastRewardPerShare = lastAccRewardPerShare;

      if (doHarvest && _pending > 0) {
        uint256 harvestedAmount = _doTransferOutRewards(
          rewardData,
          IERC20(rewardTokens[i]),
          _to,
          _maxAmountOfPlyToHarvest
        );
        emit Harvest(_to, _pid, rewardTokens[i], harvestedAmount, block.timestamp);
      }
    }
  }

  /**
   * @dev Returns last accounted reward time, either the current timestamp or the endTime of the pool
   */
  function _lastAccountedRewardTime(uint256 _pid) internal view returns (uint32 _value) {
    _value = poolInfo[_pid].endTime;
    if (_value > block.timestamp) _value = block.timestamp.toUint32();
  }

  function _doTransferOutRewards(
    UserRewardData storage rewardData,
    IERC20 rewardToken,
    address _account,
    uint256 _maxAmountOfPlyToHarvest
  ) internal returns (uint256 harvestedAmount) {
    require(unitroller.isAllowedToClaimReward(_account, msg.sender), "not allowed to harvest");

    if (rewardToken == ply) {
      if (_maxAmountOfPlyToHarvest > 0) {
        harvestedAmount = Math.min(_maxAmountOfPlyToHarvest, rewardData.unclaimedReward);
        rewardData.unclaimedReward -= harvestedAmount;
        _lockPly(_account, harvestedAmount);
      }
    } else {
      harvestedAmount = rewardData.unclaimedReward;
      rewardData.unclaimedReward -= harvestedAmount;
      IERC20(rewardToken).safeTransfer(_account, harvestedAmount);
    }
  }

  function _lockPly(address _account, uint256 _amount) internal {
    (uint256 lockAmount, uint256 claimAmount) = pulp.calcLockAmount(_account, _amount);
    if (lockAmount != 0) {
      pulp.lockPly(_account, lockAmount);
    }
    if (claimAmount != 0) {
      ply.safeTransfer(_account, claimAmount);
    }
  }
}

