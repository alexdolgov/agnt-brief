// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.21;


// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)
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
}

abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
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
}

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

// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/IERC20Permit.sol)
/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
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

// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)
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

library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
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
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

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
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }
}

interface IBaseLeverageWihtoutFlashloanLinea {

  enum SwapType {
    NONE,
    DEPOSIT,
    WITHDRAW,
    NILESWAP
  }

  struct LeverageParams {
    uint256 principal;
    uint256 slippage;
    uint256 iterations;
    address borrowAsset;
    address collateralAsset;
    address silo;
    BiDirectSwapInfo borrowAssetAndCollateral;
  }

  struct MultipSwapPath {
    address[9] routes;
    uint256[3][4] routeParams;
    // supswap
    SwapType swapType;
    uint256 poolCount;
    address swapFrom;
    address swapTo;
    uint256 inAmount;
    uint256 outAmount;
  }

  struct BiDirectSwapInfo {
    MultipSwapPath[3] paths;
    MultipSwapPath[3] reversePaths;
    uint256 pathLength;
  }

  struct UniDirectSwapInfo {
    MultipSwapPath[3] paths;
    uint256 pathLength;
  }
}

struct VaultAccount {
    uint128 amount; // Total amount, analogous to market cap
    uint128 shares; // Total shares, analogous to shares outstanding
}

interface ISturdyPair {
    struct CurrentRateInfo {
        uint32 lastBlock;
        uint32 feeToProtocolRate; // Fee amount 1e5 precision
        uint64 lastTimestamp;
        uint64 ratePerSec;
        uint64 fullUtilizationRate;
    }

    function CIRCUIT_BREAKER_ADDRESS() external view returns (address);

    function COMPTROLLER_ADDRESS() external view returns (address);

    function DEPLOYER_ADDRESS() external view returns (address);

    function FRAXLEND_WHITELIST_ADDRESS() external view returns (address);

    function timelockAddress() external view returns (address);

    function addCollateral(uint256 _collateralAmount, address _borrower) external;
    
    function addInterest(
        bool _returnAccounting
    )
        external
        returns (
            uint256 _interestEarned,
            uint256 _feesAmount,
            uint256 _feesShare,
            CurrentRateInfo memory _currentRateInfo,
            VaultAccount memory _totalAsset,
            VaultAccount memory _totalBorrow
        );

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function approvedBorrowers(address) external view returns (bool);

    function approvedLenders(address) external view returns (bool);

    function approveBorrowDelegation(address _delegatee, uint256 _amount) external;

    function asset() external view returns (address);

    function balanceOf(address account) external view returns (uint256);

    function borrowAsset(
        uint256 _borrowAmount,
        uint256 _collateralAmount,
        address _receiver
    ) external returns (uint256 _shares);

    function borrowAssetOnBehalfOf(
        uint256 _borrowAmount,
        address _onBehalfOf
    ) external returns (uint256 _shares);

    function borrowerWhitelistActive() external view returns (bool);

    function changeFee(uint32 _newFee) external;

    function cleanLiquidationFee() external view returns (uint256);

    function collateralContract() external view returns (address);

    function currentRateInfo()
        external
        view
        returns (
            uint32 lastBlock,
            uint32 feeToProtocolRate,
            uint64 lastTimestamp,
            uint64 ratePerSec,
            uint64 fullUtilizationRate
        );

    function decimals() external view returns (uint8);

    function decreaseAllowance(address spender, uint256 subtractedValue) external returns (bool);

    function deposit(uint256 _amount, address _receiver) external returns (uint256 _sharesReceived);

    function dirtyLiquidationFee() external view returns (uint256);

    function exchangeRateInfo() external view returns (address oracle, uint32 maxOracleDeviation, uint184 lastTimestamp, uint256 lowExchangeRate, uint256 highExchangeRate);

    function getConstants()
        external
        pure
        returns (
            uint256 _LTV_PRECISION,
            uint256 _LIQ_PRECISION,
            uint256 _UTIL_PREC,
            uint256 _FEE_PRECISION,
            uint256 _EXCHANGE_PRECISION,
            uint256 _DEVIATION_PRECISION,
            uint256 _RATE_PRECISION,
            uint256 _MAX_PROTOCOL_FEE
        );

    function getImmutableAddressBool()
        external
        view
        returns (
            address _assetContract,
            address _collateralContract,
            address _oracleMultiply,
            address _oracleDivide,
            address _rateContract,
            address _DEPLOYER_CONTRACT,
            address _COMPTROLLER_ADDRESS,
            address _FRAXLEND_WHITELIST,
            bool _borrowerWhitelistActive,
            bool _lenderWhitelistActive
        );

    function getImmutableUint256()
        external
        view
        returns (
            uint256 _oracleNormalization,
            uint256 _maxLTV,
            uint256 _cleanLiquidationFee,
            uint256 _maturityDate,
            uint256 _penaltyRate
        );

    function getPairAccounting()
        external
        view
        returns (
            uint128 _totalAssetAmount,
            uint128 _totalAssetShares,
            uint128 _totalBorrowAmount,
            uint128 _totalBorrowShares,
            uint256 _totalCollateral
        );

    function getUserSnapshot(
        address _address
    ) external view returns (uint256 _userAssetShares, uint256 _userBorrowShares, uint256 _userCollateralBalance);

    function increaseAllowance(address spender, uint256 addedValue) external returns (bool);

    function lenderWhitelistActive() external view returns (bool);

    function leveragedPosition(
        address _swapperAddress,
        uint256 _borrowAmount,
        uint256 _initialCollateralAmount,
        uint256 _amountCollateralOutMin,
        address[] memory _path
    ) external returns (uint256 _totalCollateralBalance);

    function liquidate(
        uint128 _sharesToLiquidate,
        uint256 _deadline,
        address _borrower
    ) external returns (uint256 _collateralForLiquidator);

    function maturityDate() external view returns (uint256);

    function maxLTV() external view returns (uint256);

    function maxOracleDelay() external view returns (uint256);

    function name() external view returns (string memory);

    function oracleDivide() external view returns (address);

    function oracleMultiply() external view returns (address);

    function oracleNormalization() external view returns (uint256);

    function owner() external view returns (address);

    function pause() external;

    function paused() external view returns (bool);

    function penaltyRate() external view returns (uint256);

    function rateContract() external view returns (address);

    function redeem(uint256 _shares, address _receiver, address _owner) external returns (uint256 _amountToReturn);

    function removeCollateral(uint256 _collateralAmount, address _receiver) external;

    function removeCollateralFrom(
        uint256 _collateralAmount,
        address _receiver,
        address _borrower
    ) external;

    function setWhitelistedDelegators(address _delegator, bool _enabled) external;

    function renounceOwnership() external;

    function repayAsset(uint256 _shares, address _borrower) external returns (uint256 _amountToRepay);

    function repayAssetWithCollateral(
        address _swapperAddress,
        uint256 _collateralToSwap,
        uint256 _amountAssetOutMin,
        address[] memory _path
    ) external returns (uint256 _amountAssetOut);

    function setApprovedBorrowers(address[] memory _borrowers, bool _approval) external;

    function setApprovedLenders(address[] memory _lenders, bool _approval) external;

    function setMaxOracleDelay(uint256 _newDelay) external;

    function setSwapper(address _swapper, bool _approval) external;

    function setTimelock(address _newAddress) external;

    function swappers(address) external view returns (bool);

    function symbol() external view returns (string memory);

    function toAssetAmount(
        uint256 _shares,
        bool _roundUp,
        bool _previewInterest
    ) external view returns (uint256);

    function toAssetShares(
        uint256 _amount,
        bool _roundUp,
        bool _previewInterest
    ) external view returns (uint256);

    function toBorrowAmount(
        uint256 _shares,
        bool _roundUp,
        bool _previewInterest
    ) external view returns (uint256 _amount);

    function toBorrowShares(
        uint256 _amount,
        bool _roundUp,
        bool _previewInterest
    ) external view returns (uint256 _shares);

    function totalAsset() external view returns (uint128 amount, uint128 shares);

    function totalBorrow() external view returns (uint128 amount, uint128 shares);

    function totalCollateral() external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function transfer(address to, uint256 amount) external returns (bool);

    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    function transferOwnership(address newOwner) external;

    function unpause() external;

    function updateExchangeRate()
        external
        returns (bool _isBorrowAllowed, uint256 _lowExchangeRate, uint256 _highExchangeRate);

    function userBorrowShares(address) external view returns (uint256);

    function userCollateralBalance(address) external view returns (uint256);

    function version() external pure returns (uint256 _major, uint256 _minor, uint256 _patch);

    function withdrawFees(uint128 _shares, address _recipient) external returns (uint256 _amountToTransfer);

    function isInterestPaused() external view returns (bool);
}

/// @title Callback for IClPoolActions#swap
/// @notice Any contract that calls IClPoolActions#swap must implement this interface
interface IRamsesV2SwapCallback {
    /// @notice Called to `msg.sender` after executing a swap via IClPool#swap.
    /// @dev In the implementation you must pay the pool tokens owed for the swap.
    /// The caller of this method must be checked to be a ClPool deployed by the canonical ClPoolFactory.
    /// amount0Delta and amount1Delta can both be 0 if no tokens were swapped.
    /// @param amount0Delta The amount of token0 that was sent (negative) or must be received (positive) by the pool by
    /// the end of the swap. If positive, the callback must send that amount of token0 to the pool.
    /// @param amount1Delta The amount of token1 that was sent (negative) or must be received (positive) by the pool by
    /// the end of the swap. If positive, the callback must send that amount of token1 to the pool.
    /// @param data Any data passed through by the caller via the IClPoolActions#swap call
    function ramsesV2SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external;
}

interface ISwapRouter is IRamsesV2SwapCallback {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    /// @notice Swaps `amountIn` of one token for as much as possible of another token
    /// @param params The parameters necessary for the swap, encoded as `ExactInputSingleParams` in calldata
    /// @return amountOut The amount of the received token
    function exactInputSingle(ExactInputSingleParams calldata params) external payable returns (uint256 amountOut);

    struct ExactInputParams {
        bytes path;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
    }

    /// @notice Swaps `amountIn` of one token for as much as possible of another along the specified path
    /// @param params The parameters necessary for the multi-hop swap, encoded as `ExactInputParams` in calldata
    /// @return amountOut The amount of the received token
    function exactInput(ExactInputParams calldata params) external payable returns (uint256 amountOut);

    struct ExactOutputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 deadline;
        uint256 amountOut;
        uint256 amountInMaximum;
        uint160 sqrtPriceLimitX96;
    }

    /// @notice Swaps as little as possible of one token for `amountOut` of another token
    /// @param params The parameters necessary for the swap, encoded as `ExactOutputSingleParams` in calldata
    /// @return amountIn The amount of the input token
    function exactOutputSingle(ExactOutputSingleParams calldata params) external payable returns (uint256 amountIn);

    struct ExactOutputParams {
        bytes path;
        address recipient;
        uint256 deadline;
        uint256 amountOut;
        uint256 amountInMaximum;
    }

    /// @notice Swaps as little as possible of one token for `amountOut` of another along the specified path (reversed)
    /// @param params The parameters necessary for the multi-hop swap, encoded as `ExactOutputParams` in calldata
    /// @return amountIn The amount of the input token
    function exactOutput(ExactOutputParams calldata params) external payable returns (uint256 amountIn);
}

library NileswapAdapter {
  using SafeERC20 for IERC20;

  error SW_PATH_LENGTH_INVALID();
  error SW_PATH_TOKEN_INVALID();
  error SW_MISMATCH_RETURNED_AMOUNT();

  address private constant NILE_ROUTER = 0xAAAE99091Fbb28D400029052821653C1C752483B;

  struct Path {
    address[] tokens;
    uint256[] fees;
  }

  function swapExactTokensForTokens(
    address assetToSwapFrom,
    address assetToSwapTo,
    uint256 amountToSwap,
    Path calldata path,
    uint256 minAmountOut
  ) external returns (uint256) {
    // Check path is valid
    uint256 length = path.tokens.length;
    if (length <= 1 || length - 1 != path.fees.length) revert SW_PATH_LENGTH_INVALID();
    if (path.tokens[0] != assetToSwapFrom || path.tokens[length - 1] != assetToSwapTo) revert SW_PATH_TOKEN_INVALID();

    // Approves the transfer for the swap. Approves for 0 first to comply with tokens that implement the anti frontrunning approval fix.
    IERC20(assetToSwapFrom).safeApprove(address(NILE_ROUTER), 0);
    IERC20(assetToSwapFrom).safeApprove(address(NILE_ROUTER), amountToSwap);

    uint256 receivedAmount;
    if (length > 2) {
      bytes memory _path;

      for (uint256 i; i < length - 1; ++i) {
        _path = abi.encodePacked(_path, path.tokens[i], uint24(path.fees[i]));
      }
      _path = abi.encodePacked(_path, assetToSwapTo);

      ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
        path: _path,
        recipient: address(this),
        deadline: block.timestamp,
        amountIn: amountToSwap,
        amountOutMinimum: minAmountOut
      });

      // Executes the swap.
      receivedAmount = ISwapRouter(NILE_ROUTER).exactInput(params);
    } else {
      ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
        tokenIn: assetToSwapFrom,
        tokenOut: assetToSwapTo,
        fee: uint24(path.fees[0]),
        recipient: address(this),
        deadline: block.timestamp,
        amountIn: amountToSwap,
        amountOutMinimum: minAmountOut,
        sqrtPriceLimitX96: 0
      });

      // Executes the swap.
      receivedAmount = ISwapRouter(NILE_ROUTER).exactInputSingle(params);
    }

    if (receivedAmount == 0) revert SW_MISMATCH_RETURNED_AMOUNT();
    if (IERC20(assetToSwapTo).balanceOf(address(this)) < receivedAmount) revert SW_MISMATCH_RETURNED_AMOUNT();

    return receivedAmount;
  }
}

abstract contract BaseLeverageWihtoutFlashloanLinea is ReentrancyGuard {
  using SafeERC20 for IERC20;

  uint256 private constant HEALTH_FACTOR = 1e18;
  uint256 private constant PERCENTAGE_FACTOR = 100_00;

  error LV_INVALID_CONFIGURATION();
  error LV_AMOUNT_NOT_GT_0();
  error LV_SUPPLY_NOT_ALLOWED();
  error LV_SUPPLY_FAILED();
  error LV_REMOVE_ITERATION_OVER();
  error LV_SLIPPAGE_SMALL();

  /**
   * @param _principal - The amount of collateral
   * @param _slippage - The total slippage of the position. 1% = 100
   * @param _iterations - Loop count
   * @param _silo - The silo address
   * @param _borrowAssetAndCollateral - The supswap swap paths between borrowing asset and collateral asset
   */
  function enterPosition(
    uint256 _principal,
    uint256 _slippage,
    uint256 _iterations,
    address _silo,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) external {
    address collateralAsset = ISturdyPair(_silo).collateralContract();
    if (collateralAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (_principal == 0) revert LV_AMOUNT_NOT_GT_0();
    if (IERC20(collateralAsset).balanceOf(msg.sender) < _principal) revert LV_SUPPLY_NOT_ALLOWED();
    if (_slippage > PERCENTAGE_FACTOR) revert LV_INVALID_CONFIGURATION();

    IERC20(collateralAsset).safeTransferFrom(msg.sender, address(this), _principal);

    _leverage(
      IBaseLeverageWihtoutFlashloanLinea.LeverageParams(
        _principal,
        _slippage,
        _iterations,
        ISturdyPair(_silo).asset(),
        collateralAsset,
        _silo,
        _borrowAssetAndCollateral
      )
    );
  }

  /**
   * @param _principal - The amount of collateral, uint256 max value should withdraw all collateral
   * @param _slippage - The total slippage of the leave position. 1% = 100
   * @param _iterations - Loop count
   * @param _healthFactor - The heathFactor value to keep after leave position, 1 = 1e18
   * @param _silo - The silo address
   * @param _borrowAssetAndCollateral - The supswap swap paths between borrowing asset and collateral asset
   */
  function leavePosition(
    uint256 _principal,
    uint256 _slippage,
    uint256 _iterations,
    uint256 _healthFactor,
    address _silo,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) external {
    address collateralAsset = ISturdyPair(_silo).collateralContract();
    if (collateralAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (ISturdyPair(_silo).asset() == address(0)) revert LV_INVALID_CONFIGURATION();
    if (_principal == 0) revert LV_AMOUNT_NOT_GT_0();
    if (_healthFactor < 1e18) revert LV_INVALID_CONFIGURATION();
    if (_slippage > PERCENTAGE_FACTOR) revert LV_INVALID_CONFIGURATION();

    //get before state
    uint256 collateralBalance = ISturdyPair(_silo).userCollateralBalance(msg.sender);
    uint256 userDebt =  ISturdyPair(_silo).toBorrowAmount(ISturdyPair(_silo).userBorrowShares(msg.sender), true, true);

    // reduce leverage to increase healthFactor
    _reduceLeverageWithAmount(
      _silo, 
      0, 
      _borrowAssetAndCollateral
    );

    uint256 lastRemovedCollateralAmount = _reduceLeverageWithLoop(
      _silo,
      collateralAsset,
      ISturdyPair(_silo).asset(),
      _iterations,
      _healthFactor,
      _principal,
      _borrowAssetAndCollateral
    );

    // check the slippage: L = Cb - Ca - (Db - Da), Slippage = L / (Cb - Ca)
    (,, uint256 exchangeRate) = ISturdyPair(_silo).updateExchangeRate();
    ( ,,,, uint256 EXCHANGE_PRECISION,,,) = ISturdyPair(_silo).getConstants();

    collateralBalance = collateralBalance - ISturdyPair(_silo).userCollateralBalance(msg.sender) - lastRemovedCollateralAmount;
    userDebt =  userDebt - ISturdyPair(_silo).toBorrowAmount(ISturdyPair(_silo).userBorrowShares(msg.sender), true, true);
    userDebt = userDebt * exchangeRate / EXCHANGE_PRECISION;

    if (userDebt <= collateralBalance) {
      if (_slippage < ((collateralBalance - userDebt) * PERCENTAGE_FACTOR / collateralBalance)) {
        revert LV_SLIPPAGE_SMALL();
      }
    }

    // finally deliver the collateral to user
    IERC20(collateralAsset).safeTransfer(msg.sender, IERC20(collateralAsset).balanceOf(address(this)));
  }

  /**
   * @param _principal - The amount of zapping asset
   * @param _borrowAmount - The amount of borrowing asset
   * @param _zappingAsset - The address which will zap into collateral asset
   * @param _silo - The silo address
   * @param _zapAssetToCollateral - The supswap swap paths from zapping asset to collateral asset
   */
  function zapDeposit(
    uint256 _principal,
    uint256 _borrowAmount,
    address _zappingAsset,
    address _silo,
    IBaseLeverageWihtoutFlashloanLinea.UniDirectSwapInfo calldata _zapAssetToCollateral
  ) external nonReentrant {
    address collateralAsset = ISturdyPair(_silo).collateralContract();
    if (_principal == 0) revert LV_AMOUNT_NOT_GT_0();
    if (_zappingAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (collateralAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (IERC20(_zappingAsset).balanceOf(msg.sender) < _principal) revert LV_SUPPLY_FAILED();

    IERC20(_zappingAsset).safeTransferFrom(msg.sender, address(this), _principal);

    uint256 collateralAmount = _swapAsset(
      _zappingAsset, 
      collateralAsset, 
      _principal,
      _zapAssetToCollateral.paths,
      _zapAssetToCollateral.pathLength,
      true
    );
    
    // deposit collateral
    _supply(collateralAsset, _silo, collateralAmount, msg.sender);

    //borrow
    if (_borrowAmount != 0) {
      _borrow(_silo, _borrowAmount, msg.sender, msg.sender);
    }
  }

  /**
   * @param _principal - The amount of the zapping asset
   * @param _slippage - The total slippage of the position. 1% = 100
   * @param _iterations - Loop count
   * @param _zappingAsset - The address which will zap into collateral asset
   * @param _silo - The silo address
   * @param _zapAssetToCollateral - The supswap swap paths from zapping asset to collateral asset
   * @param _borrowAssetAndCollateral - The supswap swap paths between borrowing asset and collateral asset
   */
  function zapLeverage(
    uint256 _principal,
    uint256 _slippage,
    uint256 _iterations,
    address _zappingAsset,
    address _silo,
    IBaseLeverageWihtoutFlashloanLinea.UniDirectSwapInfo calldata _zapAssetToCollateral,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) external nonReentrant {
    address collateralAsset = ISturdyPair(_silo).collateralContract();
    if (_principal == 0) revert LV_AMOUNT_NOT_GT_0();
    if (_zappingAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (collateralAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (IERC20(_zappingAsset).balanceOf(msg.sender) < _principal) revert LV_SUPPLY_FAILED();
    if (_slippage > PERCENTAGE_FACTOR) revert LV_INVALID_CONFIGURATION();

    IERC20(_zappingAsset).safeTransferFrom(msg.sender, address(this), _principal);

    uint256 collateralAmount = _swapAsset(
      _zappingAsset, 
      collateralAsset, 
      _principal,
      _zapAssetToCollateral.paths,
      _zapAssetToCollateral.pathLength,
      true
    );

    _leverage(
      IBaseLeverageWihtoutFlashloanLinea.LeverageParams(
        collateralAmount,
        _slippage,
        _iterations,
        ISturdyPair(_silo).asset(),
        collateralAsset,
        _silo,
        _borrowAssetAndCollateral
      )
    );
  }

  function _leverage(IBaseLeverageWihtoutFlashloanLinea.LeverageParams memory _params) internal {
    ISturdyPair pair = ISturdyPair(_params.silo);
    uint256 suppliedAmount = _params.principal;
    uint256 borrowAmount;

    //get before state
    uint256 collateralBalance = pair.userCollateralBalance(msg.sender);
    uint256 debtShares = pair.userBorrowShares(msg.sender);
    uint256 userDebt =  pair.toBorrowAmount(debtShares, true, true);

    _supply(_params.collateralAsset, _params.silo, suppliedAmount, msg.sender);
    
    for (uint256 i; i < _params.iterations; ++i) {
      borrowAmount = _calcBorrowableAmount(
        _params.silo,
        suppliedAmount
      );

      if (borrowAmount != 0) {
        // borrow
        _borrow(_params.silo, borrowAmount, msg.sender, address(this));
        // swap borrowing asset to collateral
        suppliedAmount = _swapAsset(
          _params.borrowAsset, 
          _params.collateralAsset, 
          borrowAmount, 
          _params.borrowAssetAndCollateral.paths,
          _params.borrowAssetAndCollateral.pathLength,
          false
        );
        // supply to LP
        _supply(_params.collateralAsset, _params.silo, suppliedAmount, msg.sender);
      }
    }

    //get increased amount after leverage
    collateralBalance = pair.userCollateralBalance(msg.sender) - collateralBalance;
    debtShares = pair.userBorrowShares(msg.sender);
    userDebt =  pair.toBorrowAmount(debtShares, true, true) - userDebt;
    
    // check the slippage: L = principal + D - C, slippage = L / D
    (,, uint256 exchangeRate) = pair.updateExchangeRate();
    ( ,,,, uint256 EXCHANGE_PRECISION,,,) = pair.getConstants();
    uint256 D = userDebt * exchangeRate / EXCHANGE_PRECISION;
    if (_params.principal + D >= collateralBalance) {
      if (_params.slippage < ((_params.principal + D - collateralBalance) * PERCENTAGE_FACTOR / D)) {
        revert LV_SLIPPAGE_SMALL();
      }
    }
  }

  function _reduceLeverageWithAmount(
    address _silo,
    uint256 _amount,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) internal {
    // withdraw available collateral
    ISturdyPair pair = ISturdyPair(_silo);
    uint256 requireAmount = _amount;

    do {
      uint256 debtAmount =  pair.toBorrowAmount(pair.userBorrowShares(msg.sender), true, true);
      if (debtAmount == 0) break;

      uint256 availableAmount = _calcWithdrawalAmount(
        _silo,
        HEALTH_FACTOR
      );
      uint256 removeAmount = _amount != 0
        ? Math.min(availableAmount, requireAmount)
        : availableAmount;
      _remove(removeAmount, _silo, 0, msg.sender);

      // swap collateral to borrowing asset
      // in this case, some collateral asset maybe remained because of convex (ex: sUSD)
      uint256 borrowingAssetAmount = _swapAsset(
        pair.collateralContract(), 
        pair.asset(), 
        IERC20(pair.collateralContract()).balanceOf(address(this)),
        _borrowAssetAndCollateral.reversePaths,
        _borrowAssetAndCollateral.pathLength,
        false
      );

      uint256 repayAmount = Math.min(debtAmount, borrowingAssetAmount);
      // repay
      _repay(_silo, repayAmount, msg.sender);
      if (borrowingAssetAmount > repayAmount) {
        // swap borrowing asset to collateral in case of extra ramined borrowing asset after repay
        uint256 collateralAmount = _swapAsset(
          pair.asset(),
          pair.collateralContract(),
          IERC20(pair.asset()).balanceOf(address(this)),
          _borrowAssetAndCollateral.paths,
          _borrowAssetAndCollateral.pathLength,
          false
        );
        _supply(pair.collateralContract(), _silo, collateralAmount, msg.sender);
        removeAmount -= collateralAmount;
      }
      // one time reduce leverage
      if (_amount == 0) break;

      requireAmount -= removeAmount;
      // completed the required amount to reduce leverage
      if (requireAmount == 0) break;
    } while (true);
  }

  function _reduceLeverageWithLoop(
    address _silo,
    address _collateralAsset,
    address _borrowAsset,
    uint256 _iterations,
    uint256 _healthFactor,
    uint256 _principal,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) internal returns (uint256) {
    uint256 count;
    do {
      // limit loop count
      if (count >= _iterations) revert LV_REMOVE_ITERATION_OVER();

      // withdraw collateral keeping the healthFactor
      uint256 availableAmount = _calcWithdrawalAmount(
        _silo,
        _healthFactor
      );
      if (availableAmount == 0) return 0;

      uint256 requiredAmount = _principal - IERC20(_collateralAsset).balanceOf(address(this));
      uint256 removeAmount = Math.min(availableAmount, requiredAmount);
      _remove(removeAmount, _silo, 0, msg.sender);

      if (removeAmount == requiredAmount) {
        return removeAmount + IERC20(_collateralAsset).balanceOf(address(this));
      }

      uint256 debtAmount =  ISturdyPair(_silo).toBorrowAmount(ISturdyPair(_silo).userBorrowShares(msg.sender), true, true);
      if (debtAmount != 0) {
        // swap collateral to borrowing asset
        // in this case, some collateral asset maybe remained because of convex (ex: sUSD)
        uint256 borrowingAssetAmount = _swapAsset(
          _collateralAsset, 
          _borrowAsset, 
          IERC20(_collateralAsset).balanceOf(address(this)), 
          _borrowAssetAndCollateral.reversePaths,
          _borrowAssetAndCollateral.pathLength,
          false
        );
        uint256 repayAmount = Math.min(debtAmount, borrowingAssetAmount);
        // repay
        _repay(_silo, repayAmount, msg.sender);
        if (borrowingAssetAmount > repayAmount) {
          // swap borrowing asset to collateral in case of extra ramined borrowing asset after repay
          _swapAsset(
            _borrowAsset, 
            _collateralAsset, 
            IERC20(_borrowAsset).balanceOf(address(this)),
            _borrowAssetAndCollateral.paths,
            _borrowAssetAndCollateral.pathLength,
            false
          );
        }
      } else {
        return removeAmount + IERC20(_collateralAsset).balanceOf(address(this));
      }

      count++;
    } while (true);
  }

  function _swapAsset(
    address _fromAsset,
    address _toAsset,
    uint256 _amount,
    IBaseLeverageWihtoutFlashloanLinea.MultipSwapPath[3] memory _paths,
    uint256 _pathLength,
    bool _checkOutAmount
  ) internal returns (uint256) {
    if (_pathLength == 0) revert LV_INVALID_CONFIGURATION();
    if (_paths[0].swapFrom != _fromAsset) revert LV_INVALID_CONFIGURATION();
    if (_paths[_pathLength - 1].swapTo != _toAsset) revert LV_INVALID_CONFIGURATION();

    uint256 amount = _amount;
    if (amount == 0) return 0;

    for (uint256 i; i < _pathLength; ++i) {
      if (_paths[i].swapType == IBaseLeverageWihtoutFlashloanLinea.SwapType.NONE) continue;

      amount = _processSwap(amount, _paths[i], _checkOutAmount);
    }

    return amount;
  }

  function _swapByPath(
    uint256 _fromAmount,
    IBaseLeverageWihtoutFlashloanLinea.MultipSwapPath memory _path,
    bool _checkOutAmount
  ) internal returns (uint256) {
    uint256 poolCount = _path.poolCount;
    uint256 outAmount = _checkOutAmount ? _path.outAmount : 0;
    if (poolCount == 0) revert LV_INVALID_CONFIGURATION();

    // Supswap
    NileswapAdapter.Path memory path;
    path.tokens = new address[](poolCount + 1);
    path.fees = new uint256[](poolCount);

    for (uint256 i; i < poolCount; ++i) {
      path.tokens[i] = _path.routes[i * 2];
      path.fees[i] = _path.routeParams[i][0];
    }
    path.tokens[poolCount] = _path.routes[poolCount * 2];

    return
      NileswapAdapter.swapExactTokensForTokens(
        _path.swapFrom,
        _path.swapTo,
        _fromAmount,
        path,
        outAmount
      );
  }

  function _calcBorrowableAmount(
    address _silo,
    uint256 _collateralAmount
  ) internal virtual returns (uint256);

  function _calcWithdrawalAmount(
    address _silo,
    uint256 _healthFactor
  ) internal virtual returns (uint256);

  function _supply(
    address _collateralAsset, 
    address _silo, 
    uint256 _amount, 
    address _user
  ) internal virtual;

  function _remove(
    uint256 _amount, 
    address _silo, 
    uint256 _slippage, 
    address _user
  ) internal virtual;

  function _borrow(
    address _silo, 
    uint256 _amount, 
    address _borrower,
    address _receiver
  ) internal virtual;

  function _repay(
    address _silo, 
    uint256 _amount, 
    address _borrower
  ) internal virtual;

  function _processSwap(
    uint256 _amount,
    IBaseLeverageWihtoutFlashloanLinea.MultipSwapPath memory _path,
    bool _checkOutAmount
  ) internal virtual returns (uint256);
}

interface ISiloGateway {
    function borrowAsset(
        address _silo,
        uint256 _borrowAmount,
        uint256 _collateralAmount,
        address _collateralAsset,
        address _borrower,
        address _receiver
    ) external;
}

contract SturdyLeverageWihtoutFlashloanLinea is Ownable, BaseLeverageWihtoutFlashloanLinea {
  using SafeERC20 for IERC20;

  uint256 private constant SAFE_BUFFER = 5000;

  // silo -> silo gateway
  mapping (address => address) private _siloToGateway;

  error LV_REPAY_FAILED();
  error LV_SWAP_FAILED();

  /**
   * @dev Set the mapping between silos and gateways. 
   *      Gateways will be used to borrow asset for the Just-In-Time liquidity features.
   * @param _silos - The silo addresses
   * @param _gateways - The gateway addresses
   */
  function setGateways(
    address[] calldata _silos, 
    address[] calldata _gateways
  ) external payable onlyOwner {
    uint256 length = _silos.length;
    if (length != _gateways.length) revert LV_INVALID_CONFIGURATION();

    for (uint256 i; i < length; ++i) {
      _siloToGateway[_silos[i]] = _gateways[i];
    }
  }

  /**
   * @dev Get the gateway address for the silo
   * @param _silo - The silo address
   * @return The gateway address
   */
  function getGateway(
    address _silo
  ) external view returns (address) {
    return _siloToGateway[_silo];
  }

  function _calcBorrowableAmount(
    address _silo,
    uint256 _collateralAmount
  ) internal override returns (uint256) {
    ISturdyPair pair = ISturdyPair(_silo);

    (,, uint256 exchangeRate) = pair.updateExchangeRate();
    ( uint256 LTV_PRECISION,,,, uint256 EXCHANGE_PRECISION,,,) = pair.getConstants();
    uint256 availableBorrowAmount = _collateralAmount * EXCHANGE_PRECISION * pair.maxLTV() / exchangeRate / LTV_PRECISION;
    
    return availableBorrowAmount > SAFE_BUFFER ? availableBorrowAmount - SAFE_BUFFER : 0;
  }

  function _calcWithdrawalAmount(
    address _silo,
    uint256 _healthFactor
  ) internal override returns (uint256) {
    ISturdyPair pair = ISturdyPair(_silo);

    (,, uint256 exchangeRate) = pair.updateExchangeRate();
    ( uint256 LTV_PRECISION,,,, uint256 EXCHANGE_PRECISION,,,) = pair.getConstants();
    uint256 debtShares = pair.userBorrowShares(msg.sender);
    uint256 debtAmount =  pair.toBorrowAmount(debtShares, true, true);
    uint256 collateralAmount = pair.userCollateralBalance(msg.sender);
    uint256 withdrawalAmount = collateralAmount - debtAmount * _healthFactor * exchangeRate * LTV_PRECISION / pair.maxLTV() / EXCHANGE_PRECISION / 1e18;

    return withdrawalAmount;
  }

  function _supply(
    address _collateralAsset, 
    address _silo, 
    uint256 _amount, 
    address _user
  ) internal override {
    IERC20(_collateralAsset).safeApprove(_silo, 0);
    IERC20(_collateralAsset).safeApprove(_silo, _amount);
    ISturdyPair(_silo).addCollateral(_amount, _user);
  }

  function _remove(
    uint256 _amount, 
    address _silo, 
    uint256 _slippage, 
    address _user
  ) internal override {
    ISturdyPair(_silo).removeCollateralFrom(_amount, address(this), _user);
  }

  function _borrow(
    address _silo, 
    uint256 _amount, 
    address _borrower,
    address _receiver
  ) internal override {
    if (_siloToGateway[_silo] == address(0)) {
      ISturdyPair(_silo).borrowAssetOnBehalfOf(_amount, _borrower);
      
      if (_receiver != address(this)) {
        IERC20(ISturdyPair(_silo).asset()).safeTransfer(_receiver, _amount);
      }
    } else {
      ISiloGateway(_siloToGateway[_silo]).borrowAsset(
        _silo,
        _amount,
        0,
        ISturdyPair(_silo).collateralContract(),
        _borrower,
        _receiver
      );
    }
  }

  function _repay(
    address _silo, 
    uint256 _amount, 
    address _borrower
  ) internal override {
    IERC20 borrowAsset = IERC20(ISturdyPair(_silo).asset());

    ISturdyPair(_silo).addInterest(false);

    uint256 borrowShares =  ISturdyPair(_silo).toBorrowShares(_amount, false, false);

    borrowAsset.safeApprove(_silo, 0);
    borrowAsset.safeApprove(_silo, _amount);

    uint256 paybackAmount = ISturdyPair(_silo).repayAsset(borrowShares, _borrower);
    if (paybackAmount == 0) revert LV_REPAY_FAILED();
  }

  function _processSwap(
    uint256 _amount,
    IBaseLeverageWihtoutFlashloanLinea.MultipSwapPath memory _path,
    bool _checkOutAmount
  ) internal virtual override returns (uint256) {
    return _swapByPath(_amount, _path, _checkOutAmount);
  }
}