// ============================================================
// FILE: node_modules/@openzeppelin/contracts/interfaces/IERC1363.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (interfaces/IERC1363.sol)

pragma solidity ^0.8.20;

import {IERC20} from "./IERC20.sol";
import {IERC165} from "./IERC165.sol";

/**
 * @title IERC1363
 * @dev Interface of the ERC-1363 standard as defined in the https://eips.ethereum.org/EIPS/eip-1363[ERC-1363].
 *
 * Defines an extension interface for ERC-20 tokens that supports executing code on a recipient contract
 * after `transfer` or `transferFrom`, or code on a spender contract after `approve`, in a single transaction.
 */
interface IERC1363 is IERC20, IERC165 {
    /*
     * Note: the ERC-165 identifier for this interface is 0xb0202a11.
     * 0xb0202a11 ===
     *   bytes4(keccak256('transferAndCall(address,uint256)')) ^
     *   bytes4(keccak256('transferAndCall(address,uint256,bytes)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256,bytes)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256,bytes)'))
     */

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @param data Additional data with no specified format, sent in call to `spender`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value, bytes calldata data) external returns (bool);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/interfaces/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "../utils/introspection/IERC165.sol";

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol
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
// FILE: node_modules/@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC1363} from "../../../interfaces/IERC1363.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    /**
     * @dev An operation with an ERC-20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Variant of {safeTransfer} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransfer(IERC20 token, address to, uint256 value) internal returns (bool) {
        return _callOptionalReturnBool(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Variant of {safeTransferFrom} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransferFrom(IERC20 token, address from, address to, uint256 value) internal returns (bool) {
        return _callOptionalReturnBool(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     *
     * NOTE: If the token implements ERC-7674, this function will not modify any temporary allowance. This function
     * only sets the "standard" allowance. Any temporary allowance will remain active, in addition to the value being
     * set here.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Performs an {ERC1363} transferAndCall, with a fallback to the simple {ERC20} transfer if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            safeTransfer(token, to, value);
        } else if (!token.transferAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferFromAndCall, with a fallback to the simple {ERC20} transferFrom if the target
     * has no code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferFromAndCallRelaxed(
        IERC1363 token,
        address from,
        address to,
        uint256 value,
        bytes memory data
    ) internal {
        if (to.code.length == 0) {
            safeTransferFrom(token, from, to, value);
        } else if (!token.transferFromAndCall(from, to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} approveAndCall, with a fallback to the simple {ERC20} approve if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * NOTE: When the recipient address (`to`) has no code (i.e. is an EOA), this function behaves as {forceApprove}.
     * Opposedly, when the recipient address (`to`) has code, this function only attempts to call {ERC1363-approveAndCall}
     * once without retrying, and relies on the returned value to be true.
     *
     * Reverts if the returned value is other than `true`.
     */
    function approveAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            forceApprove(token, to, value);
        } else if (!token.approveAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturnBool} that reverts if call fails to meet the requirements.
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            let success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            // bubble errors
            if iszero(success) {
                let ptr := mload(0x40)
                returndatacopy(ptr, 0, returndatasize())
                revert(ptr, returndatasize())
            }
            returnSize := returndatasize()
            returnValue := mload(0)
        }

        if (returnSize == 0 ? address(token).code.length == 0 : returnValue != 1) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silently catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        bool success;
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            returnSize := returndatasize()
            returnValue := mload(0)
        }
        return success && (returnSize == 0 ? address(token).code.length > 0 : returnValue == 1);
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/introspection/IERC165.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

import {Panic} from "../Panic.sol";
import {SafeCast} from "./SafeCast.sol";

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Return the 512-bit addition of two uint256.
     *
     * The result is stored in two 256 variables such that sum = high * 2²⁵⁶ + low.
     */
    function add512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        assembly ("memory-safe") {
            low := add(a, b)
            high := lt(low, a)
        }
    }

    /**
     * @dev Return the 512-bit multiplication of two uint256.
     *
     * The result is stored in two 256 variables such that product = high * 2²⁵⁶ + low.
     */
    function mul512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        // 512-bit multiply [high low] = x * y. Compute the product mod 2²⁵⁶ and mod 2²⁵⁶ - 1, then use
        // the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
        // variables such that product = high * 2²⁵⁶ + low.
        assembly ("memory-safe") {
            let mm := mulmod(a, b, not(0))
            low := mul(a, b)
            high := sub(sub(mm, low), lt(mm, low))
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, with a success flag (no overflow).
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a + b;
            success = c >= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with a success flag (no overflow).
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a - b;
            success = c <= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with a success flag (no overflow).
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a * b;
            assembly ("memory-safe") {
                // Only true when the multiplication doesn't overflow
                // (c / a == b) || (a == 0)
                success := or(eq(div(c, a), b), iszero(a))
            }
            // equivalent to: success ? c : 0
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a success flag (no division by zero).
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `DIV` opcode returns zero when the denominator is 0.
                result := div(a, b)
            }
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a success flag (no division by zero).
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `MOD` opcode returns zero when the denominator is 0.
                result := mod(a, b)
            }
        }
    }

    /**
     * @dev Unsigned saturating addition, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryAdd(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Unsigned saturating subtraction, bounds to zero instead of overflowing.
     */
    function saturatingSub(uint256 a, uint256 b) internal pure returns (uint256) {
        (, uint256 result) = trySub(a, b);
        return result;
    }

    /**
     * @dev Unsigned saturating multiplication, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingMul(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryMul(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Branchless ternary evaluation for `a ? b : c`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `a ? b : c`) to only compute
     * one branch when needed, making this function more expensive.
     */
    function ternary(bool condition, uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            // branchless ternary works because:
            // b ^ (a ^ b) == a
            // b ^ 0 == b
            return b ^ ((a ^ b) * SafeCast.toUint(condition));
        }
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a > b, a, b);
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a < b, a, b);
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
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }

        // The following calculation ensures accurate ceiling division without overflow.
        // Since a is non-zero, (a - 1) / b will not overflow.
        // The largest possible result occurs when (a - 1) / b is type(uint256).max,
        // but the largest value we can obtain is type(uint256).max - 1, which happens
        // when a = type(uint256).max and b = 1.
        unchecked {
            return SafeCast.toUint(a > 0) * ((a - 1) / b + 1);
        }
    }

    /**
     * @dev Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     *
     * Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);

            // Handle non-overflow cases, 256 by 256 division.
            if (high == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return low / denominator;
            }

            // Make sure the result is less than 2²⁵⁶. Also prevents denominator == 0.
            if (denominator <= high) {
                Panic.panic(ternary(denominator == 0, Panic.DIVISION_BY_ZERO, Panic.UNDER_OVERFLOW));
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [high low].
            uint256 remainder;
            assembly ("memory-safe") {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                high := sub(high, gt(remainder, low))
                low := sub(low, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly ("memory-safe") {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [high low] by twos.
                low := div(low, twos)

                // Flip twos such that it is 2²⁵⁶ / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from high into low.
            low |= high * twos;

            // Invert denominator mod 2²⁵⁶. Now that denominator is an odd number, it has an inverse modulo 2²⁵⁶ such
            // that denominator * inv ≡ 1 mod 2²⁵⁶. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv ≡ 1 mod 2⁴.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2¹⁶
            inverse *= 2 - denominator * inverse; // inverse mod 2³²
            inverse *= 2 - denominator * inverse; // inverse mod 2⁶⁴
            inverse *= 2 - denominator * inverse; // inverse mod 2¹²⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2²⁵⁶

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2²⁵⁶. Since the preconditions guarantee that the outcome is
            // less than 2²⁵⁶, this is the final result. We don't need to compute the high bits of the result and high
            // is no longer required.
            result = low * inverse;
            return result;
        }
    }

    /**
     * @dev Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        return mulDiv(x, y, denominator) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0);
    }

    /**
     * @dev Calculates floor(x * y >> n) with full precision. Throws if result overflows a uint256.
     */
    function mulShr(uint256 x, uint256 y, uint8 n) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);
            if (high >= 1 << n) {
                Panic.panic(Panic.UNDER_OVERFLOW);
            }
            return (high << (256 - n)) | (low >> n);
        }
    }

    /**
     * @dev Calculates x * y >> n with full precision, following the selected rounding direction.
     */
    function mulShr(uint256 x, uint256 y, uint8 n, Rounding rounding) internal pure returns (uint256) {
        return mulShr(x, y, n) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, 1 << n) > 0);
    }

    /**
     * @dev Calculate the modular multiplicative inverse of a number in Z/nZ.
     *
     * If n is a prime, then Z/nZ is a field. In that case all elements are inversible, except 0.
     * If n is not a prime, then Z/nZ is not a field, and some elements might not be inversible.
     *
     * If the input value is not inversible, 0 is returned.
     *
     * NOTE: If you know for sure that n is (big) a prime, it may be cheaper to use Fermat's little theorem and get the
     * inverse using `Math.modExp(a, n - 2, n)`. See {invModPrime}.
     */
    function invMod(uint256 a, uint256 n) internal pure returns (uint256) {
        unchecked {
            if (n == 0) return 0;

            // The inverse modulo is calculated using the Extended Euclidean Algorithm (iterative version)
            // Used to compute integers x and y such that: ax + ny = gcd(a, n).
            // When the gcd is 1, then the inverse of a modulo n exists and it's x.
            // ax + ny = 1
            // ax = 1 + (-y)n
            // ax ≡ 1 (mod n) # x is the inverse of a modulo n

            // If the remainder is 0 the gcd is n right away.
            uint256 remainder = a % n;
            uint256 gcd = n;

            // Therefore the initial coefficients are:
            // ax + ny = gcd(a, n) = n
            // 0a + 1n = n
            int256 x = 0;
            int256 y = 1;

            while (remainder != 0) {
                uint256 quotient = gcd / remainder;

                (gcd, remainder) = (
                    // The old remainder is the next gcd to try.
                    remainder,
                    // Compute the next remainder.
                    // Can't overflow given that (a % gcd) * (gcd // (a % gcd)) <= gcd
                    // where gcd is at most n (capped to type(uint256).max)
                    gcd - remainder * quotient
                );

                (x, y) = (
                    // Increment the coefficient of a.
                    y,
                    // Decrement the coefficient of n.
                    // Can overflow, but the result is casted to uint256 so that the
                    // next value of y is "wrapped around" to a value between 0 and n - 1.
                    x - y * int256(quotient)
                );
            }

            if (gcd != 1) return 0; // No inverse exists.
            return ternary(x < 0, n - uint256(-x), uint256(x)); // Wrap the result if it's negative.
        }
    }

    /**
     * @dev Variant of {invMod}. More efficient, but only works if `p` is known to be a prime greater than `2`.
     *
     * From https://en.wikipedia.org/wiki/Fermat%27s_little_theorem[Fermat's little theorem], we know that if p is
     * prime, then `a**(p-1) ≡ 1 mod p`. As a consequence, we have `a * a**(p-2) ≡ 1 mod p`, which means that
     * `a**(p-2)` is the modular multiplicative inverse of a in Fp.
     *
     * NOTE: this function does NOT check that `p` is a prime greater than `2`.
     */
    function invModPrime(uint256 a, uint256 p) internal view returns (uint256) {
        unchecked {
            return Math.modExp(a, p - 2, p);
        }
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m)
     *
     * Requirements:
     * - modulus can't be zero
     * - underlying staticcall to precompile must succeed
     *
     * IMPORTANT: The result is only valid if the underlying call succeeds. When using this function, make
     * sure the chain you're using it on supports the precompiled contract for modular exponentiation
     * at address 0x05 as specified in https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise,
     * the underlying function will succeed given the lack of a revert, but the result may be incorrectly
     * interpreted as 0.
     */
    function modExp(uint256 b, uint256 e, uint256 m) internal view returns (uint256) {
        (bool success, uint256 result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m).
     * It includes a success flag indicating if the operation succeeded. Operation will be marked as failed if trying
     * to operate modulo 0 or if the underlying precompile reverted.
     *
     * IMPORTANT: The result is only valid if the success flag is true. When using this function, make sure the chain
     * you're using it on supports the precompiled contract for modular exponentiation at address 0x05 as specified in
     * https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise, the underlying function will succeed given the lack
     * of a revert, but the result may be incorrectly interpreted as 0.
     */
    function tryModExp(uint256 b, uint256 e, uint256 m) internal view returns (bool success, uint256 result) {
        if (m == 0) return (false, 0);
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            // | Offset    | Content    | Content (Hex)                                                      |
            // |-----------|------------|--------------------------------------------------------------------|
            // | 0x00:0x1f | size of b  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x20:0x3f | size of e  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x40:0x5f | size of m  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x60:0x7f | value of b | 0x<.............................................................b> |
            // | 0x80:0x9f | value of e | 0x<.............................................................e> |
            // | 0xa0:0xbf | value of m | 0x<.............................................................m> |
            mstore(ptr, 0x20)
            mstore(add(ptr, 0x20), 0x20)
            mstore(add(ptr, 0x40), 0x20)
            mstore(add(ptr, 0x60), b)
            mstore(add(ptr, 0x80), e)
            mstore(add(ptr, 0xa0), m)

            // Given the result < m, it's guaranteed to fit in 32 bytes,
            // so we can use the memory scratch space located at offset 0.
            success := staticcall(gas(), 0x05, ptr, 0xc0, 0x00, 0x20)
            result := mload(0x00)
        }
    }

    /**
     * @dev Variant of {modExp} that supports inputs of arbitrary length.
     */
    function modExp(bytes memory b, bytes memory e, bytes memory m) internal view returns (bytes memory) {
        (bool success, bytes memory result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Variant of {tryModExp} that supports inputs of arbitrary length.
     */
    function tryModExp(
        bytes memory b,
        bytes memory e,
        bytes memory m
    ) internal view returns (bool success, bytes memory result) {
        if (_zeroBytes(m)) return (false, new bytes(0));

        uint256 mLen = m.length;

        // Encode call args in result and move the free memory pointer
        result = abi.encodePacked(b.length, e.length, mLen, b, e, m);

        assembly ("memory-safe") {
            let dataPtr := add(result, 0x20)
            // Write result on top of args to avoid allocating extra memory.
            success := staticcall(gas(), 0x05, dataPtr, mload(result), dataPtr, mLen)
            // Overwrite the length.
            // result.length > returndatasize() is guaranteed because returndatasize() == m.length
            mstore(result, mLen)
            // Set the memory pointer after the returned data.
            mstore(0x40, add(dataPtr, mLen))
        }
    }

    /**
     * @dev Returns whether the provided byte array is zero.
     */
    function _zeroBytes(bytes memory byteArray) private pure returns (bool) {
        for (uint256 i = 0; i < byteArray.length; ++i) {
            if (byteArray[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * This method is based on Newton's method for computing square roots; the algorithm is restricted to only
     * using integer operations.
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        unchecked {
            // Take care of easy edge cases when a == 0 or a == 1
            if (a <= 1) {
                return a;
            }

            // In this function, we use Newton's method to get a root of `f(x) := x² - a`. It involves building a
            // sequence x_n that converges toward sqrt(a). For each iteration x_n, we also define the error between
            // the current value as `ε_n = | x_n - sqrt(a) |`.
            //
            // For our first estimation, we consider `e` the smallest power of 2 which is bigger than the square root
            // of the target. (i.e. `2**(e-1) ≤ sqrt(a) < 2**e`). We know that `e ≤ 128` because `(2¹²⁸)² = 2²⁵⁶` is
            // bigger than any uint256.
            //
            // By noticing that
            // `2**(e-1) ≤ sqrt(a) < 2**e → (2**(e-1))² ≤ a < (2**e)² → 2**(2*e-2) ≤ a < 2**(2*e)`
            // we can deduce that `e - 1` is `log2(a) / 2`. We can thus compute `x_n = 2**(e-1)` using a method similar
            // to the msb function.
            uint256 aa = a;
            uint256 xn = 1;

            if (aa >= (1 << 128)) {
                aa >>= 128;
                xn <<= 64;
            }
            if (aa >= (1 << 64)) {
                aa >>= 64;
                xn <<= 32;
            }
            if (aa >= (1 << 32)) {
                aa >>= 32;
                xn <<= 16;
            }
            if (aa >= (1 << 16)) {
                aa >>= 16;
                xn <<= 8;
            }
            if (aa >= (1 << 8)) {
                aa >>= 8;
                xn <<= 4;
            }
            if (aa >= (1 << 4)) {
                aa >>= 4;
                xn <<= 2;
            }
            if (aa >= (1 << 2)) {
                xn <<= 1;
            }

            // We now have x_n such that `x_n = 2**(e-1) ≤ sqrt(a) < 2**e = 2 * x_n`. This implies ε_n ≤ 2**(e-1).
            //
            // We can refine our estimation by noticing that the middle of that interval minimizes the error.
            // If we move x_n to equal 2**(e-1) + 2**(e-2), then we reduce the error to ε_n ≤ 2**(e-2).
            // This is going to be our x_0 (and ε_0)
            xn = (3 * xn) >> 1; // ε_0 := | x_0 - sqrt(a) | ≤ 2**(e-2)

            // From here, Newton's method give us:
            // x_{n+1} = (x_n + a / x_n) / 2
            //
            // One should note that:
            // x_{n+1}² - a = ((x_n + a / x_n) / 2)² - a
            //              = ((x_n² + a) / (2 * x_n))² - a
            //              = (x_n⁴ + 2 * a * x_n² + a²) / (4 * x_n²) - a
            //              = (x_n⁴ + 2 * a * x_n² + a² - 4 * a * x_n²) / (4 * x_n²)
            //              = (x_n⁴ - 2 * a * x_n² + a²) / (4 * x_n²)
            //              = (x_n² - a)² / (2 * x_n)²
            //              = ((x_n² - a) / (2 * x_n))²
            //              ≥ 0
            // Which proves that for all n ≥ 1, sqrt(a) ≤ x_n
            //
            // This gives us the proof of quadratic convergence of the sequence:
            // ε_{n+1} = | x_{n+1} - sqrt(a) |
            //         = | (x_n + a / x_n) / 2 - sqrt(a) |
            //         = | (x_n² + a - 2*x_n*sqrt(a)) / (2 * x_n) |
            //         = | (x_n - sqrt(a))² / (2 * x_n) |
            //         = | ε_n² / (2 * x_n) |
            //         = ε_n² / | (2 * x_n) |
            //
            // For the first iteration, we have a special case where x_0 is known:
            // ε_1 = ε_0² / | (2 * x_0) |
            //     ≤ (2**(e-2))² / (2 * (2**(e-1) + 2**(e-2)))
            //     ≤ 2**(2*e-4) / (3 * 2**(e-1))
            //     ≤ 2**(e-3) / 3
            //     ≤ 2**(e-3-log2(3))
            //     ≤ 2**(e-4.5)
            //
            // For the following iterations, we use the fact that, 2**(e-1) ≤ sqrt(a) ≤ x_n:
            // ε_{n+1} = ε_n² / | (2 * x_n) |
            //         ≤ (2**(e-k))² / (2 * 2**(e-1))
            //         ≤ 2**(2*e-2*k) / 2**e
            //         ≤ 2**(e-2*k)
            xn = (xn + a / xn) >> 1; // ε_1 := | x_1 - sqrt(a) | ≤ 2**(e-4.5)  -- special case, see above
            xn = (xn + a / xn) >> 1; // ε_2 := | x_2 - sqrt(a) | ≤ 2**(e-9)    -- general case with k = 4.5
            xn = (xn + a / xn) >> 1; // ε_3 := | x_3 - sqrt(a) | ≤ 2**(e-18)   -- general case with k = 9
            xn = (xn + a / xn) >> 1; // ε_4 := | x_4 - sqrt(a) | ≤ 2**(e-36)   -- general case with k = 18
            xn = (xn + a / xn) >> 1; // ε_5 := | x_5 - sqrt(a) | ≤ 2**(e-72)   -- general case with k = 36
            xn = (xn + a / xn) >> 1; // ε_6 := | x_6 - sqrt(a) | ≤ 2**(e-144)  -- general case with k = 72

            // Because e ≤ 128 (as discussed during the first estimation phase), we know have reached a precision
            // ε_6 ≤ 2**(e-144) < 1. Given we're operating on integers, then we can ensure that xn is now either
            // sqrt(a) or sqrt(a) + 1.
            return xn - SafeCast.toUint(xn > a / xn);
        }
    }

    /**
     * @dev Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && result * result < a);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // If upper 8 bits of 16-bit half set, add 8 to result
        r |= SafeCast.toUint((x >> r) > 0xff) << 3;
        // If upper 4 bits of 8-bit half set, add 4 to result
        r |= SafeCast.toUint((x >> r) > 0xf) << 2;

        // Shifts value right by the current result and use it as an index into this lookup table:
        //
        // | x (4 bits) |  index  | table[index] = MSB position |
        // |------------|---------|-----------------------------|
        // |    0000    |    0    |        table[0] = 0         |
        // |    0001    |    1    |        table[1] = 0         |
        // |    0010    |    2    |        table[2] = 1         |
        // |    0011    |    3    |        table[3] = 1         |
        // |    0100    |    4    |        table[4] = 2         |
        // |    0101    |    5    |        table[5] = 2         |
        // |    0110    |    6    |        table[6] = 2         |
        // |    0111    |    7    |        table[7] = 2         |
        // |    1000    |    8    |        table[8] = 3         |
        // |    1001    |    9    |        table[9] = 3         |
        // |    1010    |   10    |        table[10] = 3        |
        // |    1011    |   11    |        table[11] = 3        |
        // |    1100    |   12    |        table[12] = 3        |
        // |    1101    |   13    |        table[13] = 3        |
        // |    1110    |   14    |        table[14] = 3        |
        // |    1111    |   15    |        table[15] = 3        |
        //
        // The lookup table is represented as a 32-byte value with the MSB positions for 0-15 in the last 16 bytes.
        assembly ("memory-safe") {
            r := or(r, byte(shr(r, x), 0x0000010102020202030303030303030300000000000000000000000000000000))
        }
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << result < value);
        }
    }

    /**
     * @dev Return the log in base 10 of a positive value rounded towards zero.
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
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 10 ** result < value);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // Add 1 if upper 8 bits of 16-bit half set, and divide accumulated result by 8
        return (r >> 3) | SafeCast.toUint((x >> r) > 0xff);
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << (result << 3) < value);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX/bool casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

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
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
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
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
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
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
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
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
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
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
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
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
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
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
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
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
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
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
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
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
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
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
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
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
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
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
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
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }

    /**
     * @dev Cast a boolean (false or true) to a uint256 (0 or 1) with no jump.
     */
    function toUint(bool b) internal pure returns (uint256 u) {
        assembly ("memory-safe") {
            u := iszero(iszero(b))
        }
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/utils/Panic.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Panic.sol)

pragma solidity ^0.8.20;

/**
 * @dev Helper library for emitting standardized panic codes.
 *
 * ```solidity
 * contract Example {
 *      using Panic for uint256;
 *
 *      // Use any of the declared internal constants
 *      function foo() { Panic.GENERIC.panic(); }
 *
 *      // Alternatively
 *      function foo() { Panic.panic(Panic.GENERIC); }
 * }
 * ```
 *
 * Follows the list from https://github.com/ethereum/solidity/blob/v0.8.24/libsolutil/ErrorCodes.h[libsolutil].
 *
 * _Available since v5.1._
 */
// slither-disable-next-line unused-state
library Panic {
    /// @dev generic / unspecified error
    uint256 internal constant GENERIC = 0x00;
    /// @dev used by the assert() builtin
    uint256 internal constant ASSERT = 0x01;
    /// @dev arithmetic underflow or overflow
    uint256 internal constant UNDER_OVERFLOW = 0x11;
    /// @dev division or modulo by zero
    uint256 internal constant DIVISION_BY_ZERO = 0x12;
    /// @dev enum conversion error
    uint256 internal constant ENUM_CONVERSION_ERROR = 0x21;
    /// @dev invalid encoding in storage
    uint256 internal constant STORAGE_ENCODING_ERROR = 0x22;
    /// @dev empty array pop
    uint256 internal constant EMPTY_ARRAY_POP = 0x31;
    /// @dev array out of bounds access
    uint256 internal constant ARRAY_OUT_OF_BOUNDS = 0x32;
    /// @dev resource error (too large allocation or too large array)
    uint256 internal constant RESOURCE_ERROR = 0x41;
    /// @dev calling invalid internal function
    uint256 internal constant INVALID_INTERNAL_FUNCTION = 0x51;

    /// @dev Reverts with a panic code. Recommended to use with
    /// the internal constants with predefined codes.
    function panic(uint256 code) internal pure {
        assembly ("memory-safe") {
            mstore(0x00, 0x4e487b71)
            mstore(0x20, code)
            revert(0x1c, 0x24)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/ERC6909.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC6909Claims} from "./interfaces/external/IERC6909Claims.sol";

/// @notice Minimalist and gas efficient standard ERC6909 implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC6909.sol)
/// @dev Copied from the commit at 4b47a19038b798b4a33d9749d25e570443520647
/// @dev This contract has been modified from the implementation at the above link.
abstract contract ERC6909 is IERC6909Claims {
    /*//////////////////////////////////////////////////////////////
                             ERC6909 STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(address owner => mapping(address operator => bool isOperator)) public isOperator;

    mapping(address owner => mapping(uint256 id => uint256 balance)) public balanceOf;

    mapping(address owner => mapping(address spender => mapping(uint256 id => uint256 amount))) public allowance;

    /*//////////////////////////////////////////////////////////////
                              ERC6909 LOGIC
    //////////////////////////////////////////////////////////////*/

    function transfer(address receiver, uint256 id, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender][id] -= amount;

        balanceOf[receiver][id] += amount;

        emit Transfer(msg.sender, msg.sender, receiver, id, amount);

        return true;
    }

    function transferFrom(address sender, address receiver, uint256 id, uint256 amount) public virtual returns (bool) {
        if (msg.sender != sender && !isOperator[sender][msg.sender]) {
            uint256 allowed = allowance[sender][msg.sender][id];
            if (allowed != type(uint256).max) allowance[sender][msg.sender][id] = allowed - amount;
        }

        balanceOf[sender][id] -= amount;

        balanceOf[receiver][id] += amount;

        emit Transfer(msg.sender, sender, receiver, id, amount);

        return true;
    }

    function approve(address spender, uint256 id, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender][id] = amount;

        emit Approval(msg.sender, spender, id, amount);

        return true;
    }

    function setOperator(address operator, bool approved) public virtual returns (bool) {
        isOperator[msg.sender][operator] = approved;

        emit OperatorSet(msg.sender, operator, approved);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                              ERC165 LOGIC
    //////////////////////////////////////////////////////////////*/

    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == 0x01ffc9a7 // ERC165 Interface ID for ERC165
            || interfaceId == 0x0f632fb3; // ERC165 Interface ID for ERC6909
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address receiver, uint256 id, uint256 amount) internal virtual {
        balanceOf[receiver][id] += amount;

        emit Transfer(msg.sender, address(0), receiver, id, amount);
    }

    function _burn(address sender, uint256 id, uint256 amount) internal virtual {
        balanceOf[sender][id] -= amount;

        emit Transfer(msg.sender, sender, address(0), id, amount);
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/ERC6909Claims.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC6909} from "./ERC6909.sol";

/// @notice ERC6909Claims inherits ERC6909 and implements an internal burnFrom function
abstract contract ERC6909Claims is ERC6909 {
    /// @notice Burn `amount` tokens of token type `id` from `from`.
    /// @dev if sender is not `from` they must be an operator or have sufficient allowance.
    /// @param from The address to burn tokens from.
    /// @param id The currency to burn.
    /// @param amount The amount to burn.
    function _burnFrom(address from, uint256 id, uint256 amount) internal {
        address sender = msg.sender;
        if (from != sender && !isOperator[from][sender]) {
            uint256 senderAllowance = allowance[from][sender][id];
            if (senderAllowance != type(uint256).max) {
                allowance[from][sender][id] = senderAllowance - amount;
            }
        }
        _burn(from, id, amount);
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/callback/IUnlockCallback.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for the callback executed when an address unlocks the pool manager
interface IUnlockCallback {
    /// @notice Called by the pool manager on `msg.sender` when the manager is unlocked
    /// @param data The data that was passed to the call to unlock
    /// @return Any data that you want to be returned from the unlock call
    function unlockCallback(bytes calldata data) external returns (bytes memory);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/external/IERC20Minimal.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Minimal ERC20 interface for Uniswap
/// @notice Contains a subset of the full ERC20 interface that is used in Uniswap V3
interface IERC20Minimal {
    /// @notice Returns an account's balance in the token
    /// @param account The account for which to look up the number of tokens it has, i.e. its balance
    /// @return The number of tokens held by the account
    function balanceOf(address account) external view returns (uint256);

    /// @notice Transfers the amount of token from the `msg.sender` to the recipient
    /// @param recipient The account that will receive the amount transferred
    /// @param amount The number of tokens to send from the sender to the recipient
    /// @return Returns true for a successful transfer, false for an unsuccessful transfer
    function transfer(address recipient, uint256 amount) external returns (bool);

    /// @notice Returns the current allowance given to a spender by an owner
    /// @param owner The account of the token owner
    /// @param spender The account of the token spender
    /// @return The current allowance granted by `owner` to `spender`
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Sets the allowance of a spender from the `msg.sender` to the value `amount`
    /// @param spender The account which will be allowed to spend a given amount of the owners tokens
    /// @param amount The amount of tokens allowed to be used by `spender`
    /// @return Returns true for a successful approval, false for unsuccessful
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Transfers `amount` tokens from `sender` to `recipient` up to the allowance given to the `msg.sender`
    /// @param sender The account from which the transfer will be initiated
    /// @param recipient The recipient of the transfer
    /// @param amount The amount of the transfer
    /// @return Returns true for a successful transfer, false for unsuccessful
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /// @notice Event emitted when tokens are transferred from one address to another, either via `#transfer` or `#transferFrom`.
    /// @param from The account from which the tokens were sent, i.e. the balance decreased
    /// @param to The account to which the tokens were sent, i.e. the balance increased
    /// @param value The amount of tokens that were transferred
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @notice Event emitted when the approval amount for the spender of a given owner's tokens changes.
    /// @param owner The account that approved spending of its tokens
    /// @param spender The account for which the spending allowance was modified
    /// @param value The new allowance from the owner to the spender
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/external/IERC6909Claims.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for claims over a contract balance, wrapped as a ERC6909
interface IERC6909Claims {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OperatorSet(address indexed owner, address indexed operator, bool approved);

    event Approval(address indexed owner, address indexed spender, uint256 indexed id, uint256 amount);

    event Transfer(address caller, address indexed from, address indexed to, uint256 indexed id, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                                 FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Owner balance of an id.
    /// @param owner The address of the owner.
    /// @param id The id of the token.
    /// @return amount The balance of the token.
    function balanceOf(address owner, uint256 id) external view returns (uint256 amount);

    /// @notice Spender allowance of an id.
    /// @param owner The address of the owner.
    /// @param spender The address of the spender.
    /// @param id The id of the token.
    /// @return amount The allowance of the token.
    function allowance(address owner, address spender, uint256 id) external view returns (uint256 amount);

    /// @notice Checks if a spender is approved by an owner as an operator
    /// @param owner The address of the owner.
    /// @param spender The address of the spender.
    /// @return approved The approval status.
    function isOperator(address owner, address spender) external view returns (bool approved);

    /// @notice Transfers an amount of an id from the caller to a receiver.
    /// @param receiver The address of the receiver.
    /// @param id The id of the token.
    /// @param amount The amount of the token.
    /// @return bool True, always, unless the function reverts
    function transfer(address receiver, uint256 id, uint256 amount) external returns (bool);

    /// @notice Transfers an amount of an id from a sender to a receiver.
    /// @param sender The address of the sender.
    /// @param receiver The address of the receiver.
    /// @param id The id of the token.
    /// @param amount The amount of the token.
    /// @return bool True, always, unless the function reverts
    function transferFrom(address sender, address receiver, uint256 id, uint256 amount) external returns (bool);

    /// @notice Approves an amount of an id to a spender.
    /// @param spender The address of the spender.
    /// @param id The id of the token.
    /// @param amount The amount of the token.
    /// @return bool True, always
    function approve(address spender, uint256 id, uint256 amount) external returns (bool);

    /// @notice Sets or removes an operator for the caller.
    /// @param operator The address of the operator.
    /// @param approved The approval status.
    /// @return bool True, always
    function setOperator(address operator, bool approved) external returns (bool);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/IExtsload.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for functions to access any storage slot in a contract
interface IExtsload {
    /// @notice Called by external contracts to access granular pool state
    /// @param slot Key of slot to sload
    /// @return value The value of the slot as bytes32
    function extsload(bytes32 slot) external view returns (bytes32 value);

    /// @notice Called by external contracts to access granular pool state
    /// @param startSlot Key of slot to start sloading from
    /// @param nSlots Number of slots to load into return value
    /// @return values List of loaded values.
    function extsload(bytes32 startSlot, uint256 nSlots) external view returns (bytes32[] memory values);

    /// @notice Called by external contracts to access sparse pool state
    /// @param slots List of slots to SLOAD from.
    /// @return values List of loaded values.
    function extsload(bytes32[] calldata slots) external view returns (bytes32[] memory values);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/IExttload.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Interface for functions to access any transient storage slot in a contract
interface IExttload {
    /// @notice Called by external contracts to access transient storage of the contract
    /// @param slot Key of slot to tload
    /// @return value The value of the slot as bytes32
    function exttload(bytes32 slot) external view returns (bytes32 value);

    /// @notice Called by external contracts to access sparse transient pool state
    /// @param slots List of slots to tload
    /// @return values List of loaded values
    function exttload(bytes32[] calldata slots) external view returns (bytes32[] memory values);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/IHooks.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "../types/PoolKey.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";
import {ModifyLiquidityParams, SwapParams} from "../types/PoolOperation.sol";
import {BeforeSwapDelta} from "../types/BeforeSwapDelta.sol";

/// @notice V4 decides whether to invoke specific hooks by inspecting the least significant bits
/// of the address that the hooks contract is deployed to.
/// For example, a hooks contract deployed to address: 0x0000000000000000000000000000000000002400
/// has the lowest bits '10 0100 0000 0000' which would cause the 'before initialize' and 'after add liquidity' hooks to be used.
/// See the Hooks library for the full spec.
/// @dev Should only be callable by the v4 PoolManager.
interface IHooks {
    /// @notice The hook called before the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @return bytes4 The function selector for the hook
    function beforeInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96) external returns (bytes4);

    /// @notice The hook called after the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @param tick The current tick after the state of a pool is initialized
    /// @return bytes4 The function selector for the hook
    function afterInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96, int24 tick)
        external
        returns (bytes4);

    /// @notice The hook called before liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeAddLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param delta The caller's balance delta after adding liquidity; the sum of principal delta, fees accrued, and hook delta
    /// @param feesAccrued The fees accrued since the last time fees were collected from this position
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterAddLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);

    /// @notice The hook called before liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param delta The caller's balance delta after removing liquidity; the sum of principal delta, fees accrued, and hook delta
    /// @param feesAccrued The fees accrued since the last time fees were collected from this position
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);

    /// @notice The hook called before a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BeforeSwapDelta The hook's delta in specified and unspecified currencies. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    /// @return uint24 Optionally override the lp fee, only used if three conditions are met: 1. the Pool has a dynamic fee, 2. the value's 2nd highest bit is set (23rd bit, 0x400000), and 3. the value is less than or equal to the maximum fee (1 million)
    function beforeSwap(address sender, PoolKey calldata key, SwapParams calldata params, bytes calldata hookData)
        external
        returns (bytes4, BeforeSwapDelta, uint24);

    /// @notice The hook called after a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param delta The amount owed to the caller (positive) or owed to the pool (negative)
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return int128 The hook's delta in unspecified currency. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterSwap(
        address sender,
        PoolKey calldata key,
        SwapParams calldata params,
        BalanceDelta delta,
        bytes calldata hookData
    ) external returns (bytes4, int128);

    /// @notice The hook called before donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function afterDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/IPoolManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Currency} from "../types/Currency.sol";
import {PoolKey} from "../types/PoolKey.sol";
import {IHooks} from "./IHooks.sol";
import {IERC6909Claims} from "./external/IERC6909Claims.sol";
import {IProtocolFees} from "./IProtocolFees.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";
import {PoolId} from "../types/PoolId.sol";
import {IExtsload} from "./IExtsload.sol";
import {IExttload} from "./IExttload.sol";
import {ModifyLiquidityParams, SwapParams} from "../types/PoolOperation.sol";

/// @notice Interface for the PoolManager
interface IPoolManager is IProtocolFees, IERC6909Claims, IExtsload, IExttload {
    /// @notice Thrown when a currency is not netted out after the contract is unlocked
    error CurrencyNotSettled();

    /// @notice Thrown when trying to interact with a non-initialized pool
    error PoolNotInitialized();

    /// @notice Thrown when unlock is called, but the contract is already unlocked
    error AlreadyUnlocked();

    /// @notice Thrown when a function is called that requires the contract to be unlocked, but it is not
    error ManagerLocked();

    /// @notice Pools are limited to type(int16).max tickSpacing in #initialize, to prevent overflow
    error TickSpacingTooLarge(int24 tickSpacing);

    /// @notice Pools must have a positive non-zero tickSpacing passed to #initialize
    error TickSpacingTooSmall(int24 tickSpacing);

    /// @notice PoolKey must have currencies where address(currency0) < address(currency1)
    error CurrenciesOutOfOrderOrEqual(address currency0, address currency1);

    /// @notice Thrown when a call to updateDynamicLPFee is made by an address that is not the hook,
    /// or on a pool that does not have a dynamic swap fee.
    error UnauthorizedDynamicLPFeeUpdate();

    /// @notice Thrown when trying to swap amount of 0
    error SwapAmountCannotBeZero();

    ///@notice Thrown when native currency is passed to a non native settlement
    error NonzeroNativeValue();

    /// @notice Thrown when `clear` is called with an amount that is not exactly equal to the open currency delta.
    error MustClearExactPositiveDelta();

    /// @notice Emitted when a new pool is initialized
    /// @param id The abi encoded hash of the pool key struct for the new pool
    /// @param currency0 The first currency of the pool by address sort order
    /// @param currency1 The second currency of the pool by address sort order
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @param tickSpacing The minimum number of ticks between initialized ticks
    /// @param hooks The hooks contract address for the pool, or address(0) if none
    /// @param sqrtPriceX96 The price of the pool on initialization
    /// @param tick The initial tick of the pool corresponding to the initialized price
    event Initialize(
        PoolId indexed id,
        Currency indexed currency0,
        Currency indexed currency1,
        uint24 fee,
        int24 tickSpacing,
        IHooks hooks,
        uint160 sqrtPriceX96,
        int24 tick
    );

    /// @notice Emitted when a liquidity position is modified
    /// @param id The abi encoded hash of the pool key struct for the pool that was modified
    /// @param sender The address that modified the pool
    /// @param tickLower The lower tick of the position
    /// @param tickUpper The upper tick of the position
    /// @param liquidityDelta The amount of liquidity that was added or removed
    /// @param salt The extra data to make positions unique
    event ModifyLiquidity(
        PoolId indexed id, address indexed sender, int24 tickLower, int24 tickUpper, int256 liquidityDelta, bytes32 salt
    );

    /// @notice Emitted for swaps between currency0 and currency1
    /// @param id The abi encoded hash of the pool key struct for the pool that was modified
    /// @param sender The address that initiated the swap call, and that received the callback
    /// @param amount0 The delta of the currency0 balance of the pool
    /// @param amount1 The delta of the currency1 balance of the pool
    /// @param sqrtPriceX96 The sqrt(price) of the pool after the swap, as a Q64.96
    /// @param liquidity The liquidity of the pool after the swap
    /// @param tick The log base 1.0001 of the price of the pool after the swap
    /// @param fee The swap fee in hundredths of a bip
    event Swap(
        PoolId indexed id,
        address indexed sender,
        int128 amount0,
        int128 amount1,
        uint160 sqrtPriceX96,
        uint128 liquidity,
        int24 tick,
        uint24 fee
    );

    /// @notice Emitted for donations
    /// @param id The abi encoded hash of the pool key struct for the pool that was donated to
    /// @param sender The address that initiated the donate call
    /// @param amount0 The amount donated in currency0
    /// @param amount1 The amount donated in currency1
    event Donate(PoolId indexed id, address indexed sender, uint256 amount0, uint256 amount1);

    /// @notice All interactions on the contract that account deltas require unlocking. A caller that calls `unlock` must implement
    /// `IUnlockCallback(msg.sender).unlockCallback(data)`, where they interact with the remaining functions on this contract.
    /// @dev The only functions callable without an unlocking are `initialize` and `updateDynamicLPFee`
    /// @param data Any data to pass to the callback, via `IUnlockCallback(msg.sender).unlockCallback(data)`
    /// @return The data returned by the call to `IUnlockCallback(msg.sender).unlockCallback(data)`
    function unlock(bytes calldata data) external returns (bytes memory);

    /// @notice Initialize the state for a given pool ID
    /// @dev A swap fee totaling MAX_SWAP_FEE (100%) makes exact output swaps impossible since the input is entirely consumed by the fee
    /// @param key The pool key for the pool to initialize
    /// @param sqrtPriceX96 The initial square root price
    /// @return tick The initial tick of the pool
    function initialize(PoolKey memory key, uint160 sqrtPriceX96) external returns (int24 tick);

    /// @notice Modify the liquidity for the given pool
    /// @dev Poke by calling with a zero liquidityDelta
    /// @param key The pool to modify liquidity in
    /// @param params The parameters for modifying the liquidity
    /// @param hookData The data to pass through to the add/removeLiquidity hooks
    /// @return callerDelta The balance delta of the caller of modifyLiquidity. This is the total of both principal, fee deltas, and hook deltas if applicable
    /// @return feesAccrued The balance delta of the fees generated in the liquidity range. Returned for informational purposes
    /// @dev Note that feesAccrued can be artificially inflated by a malicious actor and integrators should be careful using the value
    /// For pools with a single liquidity position, actors can donate to themselves to inflate feeGrowthGlobal (and consequently feesAccrued)
    /// atomically donating and collecting fees in the same unlockCallback may make the inflated value more extreme
    function modifyLiquidity(PoolKey memory key, ModifyLiquidityParams memory params, bytes calldata hookData)
        external
        returns (BalanceDelta callerDelta, BalanceDelta feesAccrued);

    /// @notice Swap against the given pool
    /// @param key The pool to swap in
    /// @param params The parameters for swapping
    /// @param hookData The data to pass through to the swap hooks
    /// @return swapDelta The balance delta of the address swapping
    /// @dev Swapping on low liquidity pools may cause unexpected swap amounts when liquidity available is less than amountSpecified.
    /// Additionally note that if interacting with hooks that have the BEFORE_SWAP_RETURNS_DELTA_FLAG or AFTER_SWAP_RETURNS_DELTA_FLAG
    /// the hook may alter the swap input/output. Integrators should perform checks on the returned swapDelta.
    function swap(PoolKey memory key, SwapParams memory params, bytes calldata hookData)
        external
        returns (BalanceDelta swapDelta);

    /// @notice Donate the given currency amounts to the in-range liquidity providers of a pool
    /// @dev Calls to donate can be frontrun adding just-in-time liquidity, with the aim of receiving a portion donated funds.
    /// Donors should keep this in mind when designing donation mechanisms.
    /// @dev This function donates to in-range LPs at slot0.tick. In certain edge-cases of the swap algorithm, the `sqrtPrice` of
    /// a pool can be at the lower boundary of tick `n`, but the `slot0.tick` of the pool is already `n - 1`. In this case a call to
    /// `donate` would donate to tick `n - 1` (slot0.tick) not tick `n` (getTickAtSqrtPrice(slot0.sqrtPriceX96)).
    /// Read the comments in `Pool.swap()` for more information about this.
    /// @param key The key of the pool to donate to
    /// @param amount0 The amount of currency0 to donate
    /// @param amount1 The amount of currency1 to donate
    /// @param hookData The data to pass through to the donate hooks
    /// @return BalanceDelta The delta of the caller after the donate
    function donate(PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
        external
        returns (BalanceDelta);

    /// @notice Writes the current ERC20 balance of the specified currency to transient storage
    /// This is used to checkpoint balances for the manager and derive deltas for the caller.
    /// @dev This MUST be called before any ERC20 tokens are sent into the contract, but can be skipped
    /// for native tokens because the amount to settle is determined by the sent value.
    /// However, if an ERC20 token has been synced and not settled, and the caller instead wants to settle
    /// native funds, this function can be called with the native currency to then be able to settle the native currency
    function sync(Currency currency) external;

    /// @notice Called by the user to net out some value owed to the user
    /// @dev Will revert if the requested amount is not available, consider using `mint` instead
    /// @dev Can also be used as a mechanism for free flash loans
    /// @param currency The currency to withdraw from the pool manager
    /// @param to The address to withdraw to
    /// @param amount The amount of currency to withdraw
    function take(Currency currency, address to, uint256 amount) external;

    /// @notice Called by the user to pay what is owed
    /// @return paid The amount of currency settled
    function settle() external payable returns (uint256 paid);

    /// @notice Called by the user to pay on behalf of another address
    /// @param recipient The address to credit for the payment
    /// @return paid The amount of currency settled
    function settleFor(address recipient) external payable returns (uint256 paid);

    /// @notice WARNING - Any currency that is cleared, will be non-retrievable, and locked in the contract permanently.
    /// A call to clear will zero out a positive balance WITHOUT a corresponding transfer.
    /// @dev This could be used to clear a balance that is considered dust.
    /// Additionally, the amount must be the exact positive balance. This is to enforce that the caller is aware of the amount being cleared.
    function clear(Currency currency, uint256 amount) external;

    /// @notice Called by the user to move value into ERC6909 balance
    /// @param to The address to mint the tokens to
    /// @param id The currency address to mint to ERC6909s, as a uint256
    /// @param amount The amount of currency to mint
    /// @dev The id is converted to a uint160 to correspond to a currency address
    /// If the upper 12 bytes are not 0, they will be 0-ed out
    function mint(address to, uint256 id, uint256 amount) external;

    /// @notice Called by the user to move value from ERC6909 balance
    /// @param from The address to burn the tokens from
    /// @param id The currency address to burn from ERC6909s, as a uint256
    /// @param amount The amount of currency to burn
    /// @dev The id is converted to a uint160 to correspond to a currency address
    /// If the upper 12 bytes are not 0, they will be 0-ed out
    function burn(address from, uint256 id, uint256 amount) external;

    /// @notice Updates the pools lp fees for the a pool that has enabled dynamic lp fees.
    /// @dev A swap fee totaling MAX_SWAP_FEE (100%) makes exact output swaps impossible since the input is entirely consumed by the fee
    /// @param key The key of the pool to update dynamic LP fees for
    /// @param newDynamicLPFee The new dynamic pool LP fee
    function updateDynamicLPFee(PoolKey memory key, uint24 newDynamicLPFee) external;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/IProtocolFees.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "../types/Currency.sol";
import {PoolId} from "../types/PoolId.sol";
import {PoolKey} from "../types/PoolKey.sol";

/// @notice Interface for all protocol-fee related functions in the pool manager
interface IProtocolFees {
    /// @notice Thrown when protocol fee is set too high
    error ProtocolFeeTooLarge(uint24 fee);

    /// @notice Thrown when collectProtocolFees or setProtocolFee is not called by the controller.
    error InvalidCaller();

    /// @notice Thrown when collectProtocolFees is attempted on a token that is synced.
    error ProtocolFeeCurrencySynced();

    /// @notice Emitted when the protocol fee controller address is updated in setProtocolFeeController.
    event ProtocolFeeControllerUpdated(address indexed protocolFeeController);

    /// @notice Emitted when the protocol fee is updated for a pool.
    event ProtocolFeeUpdated(PoolId indexed id, uint24 protocolFee);

    /// @notice Given a currency address, returns the protocol fees accrued in that currency
    /// @param currency The currency to check
    /// @return amount The amount of protocol fees accrued in the currency
    function protocolFeesAccrued(Currency currency) external view returns (uint256 amount);

    /// @notice Sets the protocol fee for the given pool
    /// @param key The key of the pool to set a protocol fee for
    /// @param newProtocolFee The fee to set
    function setProtocolFee(PoolKey memory key, uint24 newProtocolFee) external;

    /// @notice Sets the protocol fee controller
    /// @param controller The new protocol fee controller
    function setProtocolFeeController(address controller) external;

    /// @notice Collects the protocol fees for a given recipient and currency, returning the amount collected
    /// @dev This will revert if the contract is unlocked
    /// @param recipient The address to receive the protocol fees
    /// @param currency The currency to withdraw
    /// @param amount The amount of currency to withdraw
    /// @return amountCollected The amount of currency successfully withdrawn
    function collectProtocolFees(address recipient, Currency currency, uint256 amount)
        external
        returns (uint256 amountCollected);

    /// @notice Returns the current protocol fee controller address
    /// @return address The current protocol fee controller address
    function protocolFeeController() external view returns (address);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/BitMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title BitMath
/// @dev This library provides functionality for computing bit properties of an unsigned integer
/// @author Solady (https://github.com/Vectorized/solady/blob/8200a70e8dc2a77ecb074fc2e99a2a0d36547522/src/utils/LibBit.sol)
library BitMath {
    /// @notice Returns the index of the most significant bit of the number,
    ///     where the least significant bit is at index 0 and the most significant bit is at index 255
    /// @param x the value for which to compute the most significant bit, must be greater than 0
    /// @return r the index of the most significant bit
    function mostSignificantBit(uint256 x) internal pure returns (uint8 r) {
        require(x > 0);

        assembly ("memory-safe") {
            r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            // forgefmt: disable-next-item
            r := or(r, byte(and(0x1f, shr(shr(r, x), 0x8421084210842108cc6318c6db6d54be)),
                0x0706060506020500060203020504000106050205030304010505030400000000))
        }
    }

    /// @notice Returns the index of the least significant bit of the number,
    ///     where the least significant bit is at index 0 and the most significant bit is at index 255
    /// @param x the value for which to compute the least significant bit, must be greater than 0
    /// @return r the index of the least significant bit
    function leastSignificantBit(uint256 x) internal pure returns (uint8 r) {
        require(x > 0);

        assembly ("memory-safe") {
            // Isolate the least significant bit.
            x := and(x, sub(0, x))
            // For the upper 3 bits of the result, use a De Bruijn-like lookup.
            // Credit to adhusson: https://blog.adhusson.com/cheap-find-first-set-evm/
            // forgefmt: disable-next-item
            r := shl(5, shr(252, shl(shl(2, shr(250, mul(x,
                0xb6db6db6ddddddddd34d34d349249249210842108c6318c639ce739cffffffff))),
                0x8040405543005266443200005020610674053026020000107506200176117077)))
            // For the lower 5 bits of the result, use a De Bruijn lookup.
            // forgefmt: disable-next-item
            r := or(r, byte(and(div(0xd76453e0, shr(r, x)), 0x1f),
                0x001f0d1e100c1d070f090b19131c1706010e11080a1a141802121b1503160405))
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/CurrencyDelta.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {Currency} from "../types/Currency.sol";

/// @title a library to store callers' currency deltas in transient storage
/// @dev this library implements the equivalent of a mapping, as transient storage can only be accessed in assembly
library CurrencyDelta {
    /// @notice calculates which storage slot a delta should be stored in for a given account and currency
    function _computeSlot(address target, Currency currency) internal pure returns (bytes32 hashSlot) {
        assembly ("memory-safe") {
            mstore(0, and(target, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(32, and(currency, 0xffffffffffffffffffffffffffffffffffffffff))
            hashSlot := keccak256(0, 64)
        }
    }

    function getDelta(Currency currency, address target) internal view returns (int256 delta) {
        bytes32 hashSlot = _computeSlot(target, currency);
        assembly ("memory-safe") {
            delta := tload(hashSlot)
        }
    }

    /// @notice applies a new currency delta for a given account and currency
    /// @return previous The prior value
    /// @return next The modified result
    function applyDelta(Currency currency, address target, int128 delta)
        internal
        returns (int256 previous, int256 next)
    {
        bytes32 hashSlot = _computeSlot(target, currency);

        assembly ("memory-safe") {
            previous := tload(hashSlot)
        }
        next = previous + delta;
        assembly ("memory-safe") {
            tstore(hashSlot, next)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/CurrencyReserves.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {Currency} from "../types/Currency.sol";
import {CustomRevert} from "./CustomRevert.sol";

library CurrencyReserves {
    using CustomRevert for bytes4;

    /// bytes32(uint256(keccak256("ReservesOf")) - 1)
    bytes32 constant RESERVES_OF_SLOT = 0x1e0745a7db1623981f0b2a5d4232364c00787266eb75ad546f190e6cebe9bd95;
    /// bytes32(uint256(keccak256("Currency")) - 1)
    bytes32 constant CURRENCY_SLOT = 0x27e098c505d44ec3574004bca052aabf76bd35004c182099d8c575fb238593b9;

    function getSyncedCurrency() internal view returns (Currency currency) {
        assembly ("memory-safe") {
            currency := tload(CURRENCY_SLOT)
        }
    }

    function resetCurrency() internal {
        assembly ("memory-safe") {
            tstore(CURRENCY_SLOT, 0)
        }
    }

    function syncCurrencyAndReserves(Currency currency, uint256 value) internal {
        assembly ("memory-safe") {
            tstore(CURRENCY_SLOT, and(currency, 0xffffffffffffffffffffffffffffffffffffffff))
            tstore(RESERVES_OF_SLOT, value)
        }
    }

    function getSyncedReserves() internal view returns (uint256 value) {
        assembly ("memory-safe") {
            value := tload(RESERVES_OF_SLOT)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/CustomRevert.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for reverting with custom errors efficiently
/// @notice Contains functions for reverting with custom errors with different argument types efficiently
/// @dev To use this library, declare `using CustomRevert for bytes4;` and replace `revert CustomError()` with
/// `CustomError.selector.revertWith()`
/// @dev The functions may tamper with the free memory pointer but it is fine since the call context is exited immediately
library CustomRevert {
    /// @dev ERC-7751 error for wrapping bubbled up reverts
    error WrappedError(address target, bytes4 selector, bytes reason, bytes details);

    /// @dev Reverts with the selector of a custom error in the scratch space
    function revertWith(bytes4 selector) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            revert(0, 0x04)
        }
    }

    /// @dev Reverts with a custom error with an address argument in the scratch space
    function revertWith(bytes4 selector, address addr) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(addr, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with an int24 argument in the scratch space
    function revertWith(bytes4 selector, int24 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, signextend(2, value))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with a uint160 argument in the scratch space
    function revertWith(bytes4 selector, uint160 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(value, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with two int24 arguments
    function revertWith(bytes4 selector, int24 value1, int24 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), signextend(2, value1))
            mstore(add(fmp, 0x24), signextend(2, value2))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two uint160 arguments
    function revertWith(bytes4 selector, uint160 value1, uint160 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two address arguments
    function revertWith(bytes4 selector, address value1, address value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @notice bubble up the revert message returned by a call and revert with a wrapped ERC-7751 error
    /// @dev this method can be vulnerable to revert data bombs
    function bubbleUpAndRevertWith(
        address revertingContract,
        bytes4 revertingFunctionSelector,
        bytes4 additionalContext
    ) internal pure {
        bytes4 wrappedErrorSelector = WrappedError.selector;
        assembly ("memory-safe") {
            // Ensure the size of the revert data is a multiple of 32 bytes
            let encodedDataSize := mul(div(add(returndatasize(), 31), 32), 32)

            let fmp := mload(0x40)

            // Encode wrapped error selector, address, function selector, offset, additional context, size, revert reason
            mstore(fmp, wrappedErrorSelector)
            mstore(add(fmp, 0x04), and(revertingContract, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(
                add(fmp, 0x24),
                and(revertingFunctionSelector, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            // offset revert reason
            mstore(add(fmp, 0x44), 0x80)
            // offset additional context
            mstore(add(fmp, 0x64), add(0xa0, encodedDataSize))
            // size revert reason
            mstore(add(fmp, 0x84), returndatasize())
            // revert reason
            returndatacopy(add(fmp, 0xa4), 0, returndatasize())
            // size additional context
            mstore(add(fmp, add(0xa4, encodedDataSize)), 0x04)
            // additional context
            mstore(
                add(fmp, add(0xc4, encodedDataSize)),
                and(additionalContext, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            revert(fmp, add(0xe4, encodedDataSize))
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/FixedPoint128.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title FixedPoint128
/// @notice A library for handling binary fixed point numbers, see https://en.wikipedia.org/wiki/Q_(number_format)
library FixedPoint128 {
    uint256 internal constant Q128 = 0x100000000000000000000000000000000;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/FixedPoint96.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title FixedPoint96
/// @notice A library for handling binary fixed point numbers, see https://en.wikipedia.org/wiki/Q_(number_format)
/// @dev Used in SqrtPriceMath.sol
library FixedPoint96 {
    uint8 internal constant RESOLUTION = 96;
    uint256 internal constant Q96 = 0x1000000000000000000000000;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/FullMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Contains 512-bit math functions
/// @notice Facilitates multiplication and division that can have overflow of an intermediate value without any loss of precision
/// @dev Handles "phantom overflow" i.e., allows multiplication and division where an intermediate value overflows 256 bits
library FullMath {
    /// @notice Calculates floor(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv
    function mulDiv(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = a * b
            // Compute the product mod 2**256 and mod 2**256 - 1
            // then use the Chinese Remainder Theorem to reconstruct
            // the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2**256 + prod0
            uint256 prod0 = a * b; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly ("memory-safe") {
                let mm := mulmod(a, b, not(0))
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Make sure the result is less than 2**256.
            // Also prevents denominator == 0
            require(denominator > prod1);

            // Handle non-overflow cases, 256 by 256 division
            if (prod1 == 0) {
                assembly ("memory-safe") {
                    result := div(prod0, denominator)
                }
                return result;
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0]
            // Compute remainder using mulmod
            uint256 remainder;
            assembly ("memory-safe") {
                remainder := mulmod(a, b, denominator)
            }
            // Subtract 256 bit number from 512 bit number
            assembly ("memory-safe") {
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator
            // Compute largest power of two divisor of denominator.
            // Always >= 1.
            uint256 twos = (0 - denominator) & denominator;
            // Divide denominator by power of two
            assembly ("memory-safe") {
                denominator := div(denominator, twos)
            }

            // Divide [prod1 prod0] by the factors of two
            assembly ("memory-safe") {
                prod0 := div(prod0, twos)
            }
            // Shift in bits from prod1 into prod0. For this we need
            // to flip `twos` such that it is 2**256 / twos.
            // If twos is zero, then it becomes one
            assembly ("memory-safe") {
                twos := add(div(sub(0, twos), twos), 1)
            }
            prod0 |= prod1 * twos;

            // Invert denominator mod 2**256
            // Now that denominator is an odd number, it has an inverse
            // modulo 2**256 such that denominator * inv = 1 mod 2**256.
            // Compute the inverse by starting with a seed that is correct
            // correct for four bits. That is, denominator * inv = 1 mod 2**4
            uint256 inv = (3 * denominator) ^ 2;
            // Now use Newton-Raphson iteration to improve the precision.
            // Thanks to Hensel's lifting lemma, this also works in modular
            // arithmetic, doubling the correct bits in each step.
            inv *= 2 - denominator * inv; // inverse mod 2**8
            inv *= 2 - denominator * inv; // inverse mod 2**16
            inv *= 2 - denominator * inv; // inverse mod 2**32
            inv *= 2 - denominator * inv; // inverse mod 2**64
            inv *= 2 - denominator * inv; // inverse mod 2**128
            inv *= 2 - denominator * inv; // inverse mod 2**256

            // Because the division is now exact we can divide by multiplying
            // with the modular inverse of denominator. This will give us the
            // correct result modulo 2**256. Since the preconditions guarantee
            // that the outcome is less than 2**256, this is the final result.
            // We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inv;
            return result;
        }
    }

    /// @notice Calculates ceil(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    function mulDivRoundingUp(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            result = mulDiv(a, b, denominator);
            if (mulmod(a, b, denominator) != 0) {
                require(++result > 0);
            }
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/Hooks.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "../types/PoolKey.sol";
import {IHooks} from "../interfaces/IHooks.sol";
import {SafeCast} from "./SafeCast.sol";
import {LPFeeLibrary} from "./LPFeeLibrary.sol";
import {BalanceDelta, toBalanceDelta, BalanceDeltaLibrary} from "../types/BalanceDelta.sol";
import {BeforeSwapDelta, BeforeSwapDeltaLibrary} from "../types/BeforeSwapDelta.sol";
import {IPoolManager} from "../interfaces/IPoolManager.sol";
import {ModifyLiquidityParams, SwapParams} from "../types/PoolOperation.sol";
import {ParseBytes} from "./ParseBytes.sol";
import {CustomRevert} from "./CustomRevert.sol";

/// @notice V4 decides whether to invoke specific hooks by inspecting the least significant bits
/// of the address that the hooks contract is deployed to.
/// For example, a hooks contract deployed to address: 0x0000000000000000000000000000000000002400
/// has the lowest bits '10 0100 0000 0000' which would cause the 'before initialize' and 'after add liquidity' hooks to be used.
library Hooks {
    using LPFeeLibrary for uint24;
    using Hooks for IHooks;
    using SafeCast for int256;
    using BeforeSwapDeltaLibrary for BeforeSwapDelta;
    using ParseBytes for bytes;
    using CustomRevert for bytes4;

    uint160 internal constant ALL_HOOK_MASK = uint160((1 << 14) - 1);

    uint160 internal constant BEFORE_INITIALIZE_FLAG = 1 << 13;
    uint160 internal constant AFTER_INITIALIZE_FLAG = 1 << 12;

    uint160 internal constant BEFORE_ADD_LIQUIDITY_FLAG = 1 << 11;
    uint160 internal constant AFTER_ADD_LIQUIDITY_FLAG = 1 << 10;

    uint160 internal constant BEFORE_REMOVE_LIQUIDITY_FLAG = 1 << 9;
    uint160 internal constant AFTER_REMOVE_LIQUIDITY_FLAG = 1 << 8;

    uint160 internal constant BEFORE_SWAP_FLAG = 1 << 7;
    uint160 internal constant AFTER_SWAP_FLAG = 1 << 6;

    uint160 internal constant BEFORE_DONATE_FLAG = 1 << 5;
    uint160 internal constant AFTER_DONATE_FLAG = 1 << 4;

    uint160 internal constant BEFORE_SWAP_RETURNS_DELTA_FLAG = 1 << 3;
    uint160 internal constant AFTER_SWAP_RETURNS_DELTA_FLAG = 1 << 2;
    uint160 internal constant AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG = 1 << 1;
    uint160 internal constant AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG = 1 << 0;

    struct Permissions {
        bool beforeInitialize;
        bool afterInitialize;
        bool beforeAddLiquidity;
        bool afterAddLiquidity;
        bool beforeRemoveLiquidity;
        bool afterRemoveLiquidity;
        bool beforeSwap;
        bool afterSwap;
        bool beforeDonate;
        bool afterDonate;
        bool beforeSwapReturnDelta;
        bool afterSwapReturnDelta;
        bool afterAddLiquidityReturnDelta;
        bool afterRemoveLiquidityReturnDelta;
    }

    /// @notice Thrown if the address will not lead to the specified hook calls being called
    /// @param hooks The address of the hooks contract
    error HookAddressNotValid(address hooks);

    /// @notice Hook did not return its selector
    error InvalidHookResponse();

    /// @notice Additional context for ERC-7751 wrapped error when a hook call fails
    error HookCallFailed();

    /// @notice The hook's delta changed the swap from exactIn to exactOut or vice versa
    error HookDeltaExceedsSwapAmount();

    /// @notice Utility function intended to be used in hook constructors to ensure
    /// the deployed hooks address causes the intended hooks to be called
    /// @param permissions The hooks that are intended to be called
    /// @dev permissions param is memory as the function will be called from constructors
    function validateHookPermissions(IHooks self, Permissions memory permissions) internal pure {
        if (
            permissions.beforeInitialize != self.hasPermission(BEFORE_INITIALIZE_FLAG)
                || permissions.afterInitialize != self.hasPermission(AFTER_INITIALIZE_FLAG)
                || permissions.beforeAddLiquidity != self.hasPermission(BEFORE_ADD_LIQUIDITY_FLAG)
                || permissions.afterAddLiquidity != self.hasPermission(AFTER_ADD_LIQUIDITY_FLAG)
                || permissions.beforeRemoveLiquidity != self.hasPermission(BEFORE_REMOVE_LIQUIDITY_FLAG)
                || permissions.afterRemoveLiquidity != self.hasPermission(AFTER_REMOVE_LIQUIDITY_FLAG)
                || permissions.beforeSwap != self.hasPermission(BEFORE_SWAP_FLAG)
                || permissions.afterSwap != self.hasPermission(AFTER_SWAP_FLAG)
                || permissions.beforeDonate != self.hasPermission(BEFORE_DONATE_FLAG)
                || permissions.afterDonate != self.hasPermission(AFTER_DONATE_FLAG)
                || permissions.beforeSwapReturnDelta != self.hasPermission(BEFORE_SWAP_RETURNS_DELTA_FLAG)
                || permissions.afterSwapReturnDelta != self.hasPermission(AFTER_SWAP_RETURNS_DELTA_FLAG)
                || permissions.afterAddLiquidityReturnDelta != self.hasPermission(AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG)
                || permissions.afterRemoveLiquidityReturnDelta
                    != self.hasPermission(AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG)
        ) {
            HookAddressNotValid.selector.revertWith(address(self));
        }
    }

    /// @notice Ensures that the hook address includes at least one hook flag or dynamic fees, or is the 0 address
    /// @param self The hook to verify
    /// @param fee The fee of the pool the hook is used with
    /// @return bool True if the hook address is valid
    function isValidHookAddress(IHooks self, uint24 fee) internal pure returns (bool) {
        // The hook can only have a flag to return a hook delta on an action if it also has the corresponding action flag
        if (!self.hasPermission(BEFORE_SWAP_FLAG) && self.hasPermission(BEFORE_SWAP_RETURNS_DELTA_FLAG)) return false;
        if (!self.hasPermission(AFTER_SWAP_FLAG) && self.hasPermission(AFTER_SWAP_RETURNS_DELTA_FLAG)) return false;
        if (!self.hasPermission(AFTER_ADD_LIQUIDITY_FLAG) && self.hasPermission(AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG))
        {
            return false;
        }
        if (
            !self.hasPermission(AFTER_REMOVE_LIQUIDITY_FLAG)
                && self.hasPermission(AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG)
        ) return false;

        // If there is no hook contract set, then fee cannot be dynamic
        // If a hook contract is set, it must have at least 1 flag set, or have a dynamic fee
        return address(self) == address(0)
            ? !fee.isDynamicFee()
            : (uint160(address(self)) & ALL_HOOK_MASK > 0 || fee.isDynamicFee());
    }

    /// @notice performs a hook call using the given calldata on the given hook that doesn't return a delta
    /// @return result The complete data returned by the hook
    function callHook(IHooks self, bytes memory data) internal returns (bytes memory result) {
        bool success;
        assembly ("memory-safe") {
            success := call(gas(), self, 0, add(data, 0x20), mload(data), 0, 0)
        }
        // Revert with FailedHookCall, containing any error message to bubble up
        if (!success) CustomRevert.bubbleUpAndRevertWith(address(self), bytes4(data), HookCallFailed.selector);

        // The call was successful, fetch the returned data
        assembly ("memory-safe") {
            // allocate result byte array from the free memory pointer
            result := mload(0x40)
            // store new free memory pointer at the end of the array padded to 32 bytes
            mstore(0x40, add(result, and(add(returndatasize(), 0x3f), not(0x1f))))
            // store length in memory
            mstore(result, returndatasize())
            // copy return data to result
            returndatacopy(add(result, 0x20), 0, returndatasize())
        }

        // Length must be at least 32 to contain the selector. Check expected selector and returned selector match.
        if (result.length < 32 || result.parseSelector() != data.parseSelector()) {
            InvalidHookResponse.selector.revertWith();
        }
    }

    /// @notice performs a hook call using the given calldata on the given hook
    /// @return int256 The delta returned by the hook
    function callHookWithReturnDelta(IHooks self, bytes memory data, bool parseReturn) internal returns (int256) {
        bytes memory result = callHook(self, data);

        // If this hook wasn't meant to return something, default to 0 delta
        if (!parseReturn) return 0;

        // A length of 64 bytes is required to return a bytes4, and a 32 byte delta
        if (result.length != 64) InvalidHookResponse.selector.revertWith();
        return result.parseReturnDelta();
    }

    /// @notice modifier to prevent calling a hook if they initiated the action
    modifier noSelfCall(IHooks self) {
        if (msg.sender != address(self)) {
            _;
        }
    }

    /// @notice calls beforeInitialize hook if permissioned and validates return value
    function beforeInitialize(IHooks self, PoolKey memory key, uint160 sqrtPriceX96) internal noSelfCall(self) {
        if (self.hasPermission(BEFORE_INITIALIZE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeInitialize, (msg.sender, key, sqrtPriceX96)));
        }
    }

    /// @notice calls afterInitialize hook if permissioned and validates return value
    function afterInitialize(IHooks self, PoolKey memory key, uint160 sqrtPriceX96, int24 tick)
        internal
        noSelfCall(self)
    {
        if (self.hasPermission(AFTER_INITIALIZE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.afterInitialize, (msg.sender, key, sqrtPriceX96, tick)));
        }
    }

    /// @notice calls beforeModifyLiquidity hook if permissioned and validates return value
    function beforeModifyLiquidity(
        IHooks self,
        PoolKey memory key,
        ModifyLiquidityParams memory params,
        bytes calldata hookData
    ) internal noSelfCall(self) {
        if (params.liquidityDelta > 0 && self.hasPermission(BEFORE_ADD_LIQUIDITY_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeAddLiquidity, (msg.sender, key, params, hookData)));
        } else if (params.liquidityDelta <= 0 && self.hasPermission(BEFORE_REMOVE_LIQUIDITY_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeRemoveLiquidity, (msg.sender, key, params, hookData)));
        }
    }

    /// @notice calls afterModifyLiquidity hook if permissioned and validates return value
    function afterModifyLiquidity(
        IHooks self,
        PoolKey memory key,
        ModifyLiquidityParams memory params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) internal returns (BalanceDelta callerDelta, BalanceDelta hookDelta) {
        if (msg.sender == address(self)) return (delta, BalanceDeltaLibrary.ZERO_DELTA);

        callerDelta = delta;
        if (params.liquidityDelta > 0) {
            if (self.hasPermission(AFTER_ADD_LIQUIDITY_FLAG)) {
                hookDelta = BalanceDelta.wrap(
                    self.callHookWithReturnDelta(
                        abi.encodeCall(
                            IHooks.afterAddLiquidity, (msg.sender, key, params, delta, feesAccrued, hookData)
                        ),
                        self.hasPermission(AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG)
                    )
                );
                callerDelta = callerDelta - hookDelta;
            }
        } else {
            if (self.hasPermission(AFTER_REMOVE_LIQUIDITY_FLAG)) {
                hookDelta = BalanceDelta.wrap(
                    self.callHookWithReturnDelta(
                        abi.encodeCall(
                            IHooks.afterRemoveLiquidity, (msg.sender, key, params, delta, feesAccrued, hookData)
                        ),
                        self.hasPermission(AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG)
                    )
                );
                callerDelta = callerDelta - hookDelta;
            }
        }
    }

    /// @notice calls beforeSwap hook if permissioned and validates return value
    function beforeSwap(IHooks self, PoolKey memory key, SwapParams memory params, bytes calldata hookData)
        internal
        returns (int256 amountToSwap, BeforeSwapDelta hookReturn, uint24 lpFeeOverride)
    {
        amountToSwap = params.amountSpecified;
        if (msg.sender == address(self)) return (amountToSwap, BeforeSwapDeltaLibrary.ZERO_DELTA, lpFeeOverride);

        if (self.hasPermission(BEFORE_SWAP_FLAG)) {
            bytes memory result = callHook(self, abi.encodeCall(IHooks.beforeSwap, (msg.sender, key, params, hookData)));

            // A length of 96 bytes is required to return a bytes4, a 32 byte delta, and an LP fee
            if (result.length != 96) InvalidHookResponse.selector.revertWith();

            // dynamic fee pools that want to override the cache fee, return a valid fee with the override flag. If override flag
            // is set but an invalid fee is returned, the transaction will revert. Otherwise the current LP fee will be used
            if (key.fee.isDynamicFee()) lpFeeOverride = result.parseFee();

            // skip this logic for the case where the hook return is 0
            if (self.hasPermission(BEFORE_SWAP_RETURNS_DELTA_FLAG)) {
                hookReturn = BeforeSwapDelta.wrap(result.parseReturnDelta());

                // any return in unspecified is passed to the afterSwap hook for handling
                int128 hookDeltaSpecified = hookReturn.getSpecifiedDelta();

                // Update the swap amount according to the hook's return, and check that the swap type doesn't change (exact input/output)
                if (hookDeltaSpecified != 0) {
                    bool exactInput = amountToSwap < 0;
                    amountToSwap += hookDeltaSpecified;
                    if (exactInput ? amountToSwap > 0 : amountToSwap < 0) {
                        HookDeltaExceedsSwapAmount.selector.revertWith();
                    }
                }
            }
        }
    }

    /// @notice calls afterSwap hook if permissioned and validates return value
    function afterSwap(
        IHooks self,
        PoolKey memory key,
        SwapParams memory params,
        BalanceDelta swapDelta,
        bytes calldata hookData,
        BeforeSwapDelta beforeSwapHookReturn
    ) internal returns (BalanceDelta, BalanceDelta) {
        if (msg.sender == address(self)) return (swapDelta, BalanceDeltaLibrary.ZERO_DELTA);

        int128 hookDeltaSpecified = beforeSwapHookReturn.getSpecifiedDelta();
        int128 hookDeltaUnspecified = beforeSwapHookReturn.getUnspecifiedDelta();

        if (self.hasPermission(AFTER_SWAP_FLAG)) {
            hookDeltaUnspecified += self.callHookWithReturnDelta(
                abi.encodeCall(IHooks.afterSwap, (msg.sender, key, params, swapDelta, hookData)),
                self.hasPermission(AFTER_SWAP_RETURNS_DELTA_FLAG)
            ).toInt128();
        }

        BalanceDelta hookDelta;
        if (hookDeltaUnspecified != 0 || hookDeltaSpecified != 0) {
            hookDelta = (params.amountSpecified < 0 == params.zeroForOne)
                ? toBalanceDelta(hookDeltaSpecified, hookDeltaUnspecified)
                : toBalanceDelta(hookDeltaUnspecified, hookDeltaSpecified);

            // the caller has to pay for (or receive) the hook's delta
            swapDelta = swapDelta - hookDelta;
        }
        return (swapDelta, hookDelta);
    }

    /// @notice calls beforeDonate hook if permissioned and validates return value
    function beforeDonate(IHooks self, PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
        internal
        noSelfCall(self)
    {
        if (self.hasPermission(BEFORE_DONATE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeDonate, (msg.sender, key, amount0, amount1, hookData)));
        }
    }

    /// @notice calls afterDonate hook if permissioned and validates return value
    function afterDonate(IHooks self, PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
        internal
        noSelfCall(self)
    {
        if (self.hasPermission(AFTER_DONATE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.afterDonate, (msg.sender, key, amount0, amount1, hookData)));
        }
    }

    function hasPermission(IHooks self, uint160 flag) internal pure returns (bool) {
        return uint160(address(self)) & flag != 0;
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/LiquidityMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Math library for liquidity
library LiquidityMath {
    /// @notice Add a signed liquidity delta to liquidity and revert if it overflows or underflows
    /// @param x The liquidity before change
    /// @param y The delta by which liquidity should be changed
    /// @return z The liquidity delta
    function addDelta(uint128 x, int128 y) internal pure returns (uint128 z) {
        assembly ("memory-safe") {
            z := add(and(x, 0xffffffffffffffffffffffffffffffff), signextend(15, y))
            if shr(128, z) {
                // revert SafeCastOverflow()
                mstore(0, 0x93dafdf1)
                revert(0x1c, 0x04)
            }
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/Lock.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

/// @notice This is a temporary library that allows us to use transient storage (tstore/tload)
/// TODO: This library can be deleted when we have the transient keyword support in solidity.
library Lock {
    // The slot holding the unlocked state, transiently. bytes32(uint256(keccak256("Unlocked")) - 1)
    bytes32 internal constant IS_UNLOCKED_SLOT = 0xc090fc4683624cfc3884e9d8de5eca132f2d0ec062aff75d43c0465d5ceeab23;

    function unlock() internal {
        assembly ("memory-safe") {
            // unlock
            tstore(IS_UNLOCKED_SLOT, true)
        }
    }

    function lock() internal {
        assembly ("memory-safe") {
            tstore(IS_UNLOCKED_SLOT, false)
        }
    }

    function isUnlocked() internal view returns (bool unlocked) {
        assembly ("memory-safe") {
            unlocked := tload(IS_UNLOCKED_SLOT)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/LPFeeLibrary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from "./CustomRevert.sol";

/// @notice Library of helper functions for a pools LP fee
library LPFeeLibrary {
    using LPFeeLibrary for uint24;
    using CustomRevert for bytes4;

    /// @notice Thrown when the static or dynamic fee on a pool exceeds 100%.
    error LPFeeTooLarge(uint24 fee);

    /// @notice An lp fee of exactly 0b1000000... signals a dynamic fee pool. This isn't a valid static fee as it is > MAX_LP_FEE
    uint24 public constant DYNAMIC_FEE_FLAG = 0x800000;

    /// @notice the second bit of the fee returned by beforeSwap is used to signal if the stored LP fee should be overridden in this swap
    // only dynamic-fee pools can return a fee via the beforeSwap hook
    uint24 public constant OVERRIDE_FEE_FLAG = 0x400000;

    /// @notice mask to remove the override fee flag from a fee returned by the beforeSwaphook
    uint24 public constant REMOVE_OVERRIDE_MASK = 0xBFFFFF;

    /// @notice the lp fee is represented in hundredths of a bip, so the max is 100%
    uint24 public constant MAX_LP_FEE = 1000000;

    /// @notice returns true if a pool's LP fee signals that the pool has a dynamic fee
    /// @param self The fee to check
    /// @return bool True of the fee is dynamic
    function isDynamicFee(uint24 self) internal pure returns (bool) {
        return self == DYNAMIC_FEE_FLAG;
    }

    /// @notice returns true if an LP fee is valid, aka not above the maximum permitted fee
    /// @param self The fee to check
    /// @return bool True of the fee is valid
    function isValid(uint24 self) internal pure returns (bool) {
        return self <= MAX_LP_FEE;
    }

    /// @notice validates whether an LP fee is larger than the maximum, and reverts if invalid
    /// @param self The fee to validate
    function validate(uint24 self) internal pure {
        if (!self.isValid()) LPFeeTooLarge.selector.revertWith(self);
    }

    /// @notice gets and validates the initial LP fee for a pool. Dynamic fee pools have an initial fee of 0.
    /// @dev if a dynamic fee pool wants a non-0 initial fee, it should call `updateDynamicLPFee` in the afterInitialize hook
    /// @param self The fee to get the initial LP from
    /// @return initialFee 0 if the fee is dynamic, otherwise the fee (if valid)
    function getInitialLPFee(uint24 self) internal pure returns (uint24) {
        // the initial fee for a dynamic fee pool is 0
        if (self.isDynamicFee()) return 0;
        self.validate();
        return self;
    }

    /// @notice returns true if the fee has the override flag set (2nd highest bit of the uint24)
    /// @param self The fee to check
    /// @return bool True of the fee has the override flag set
    function isOverride(uint24 self) internal pure returns (bool) {
        return self & OVERRIDE_FEE_FLAG != 0;
    }

    /// @notice returns a fee with the override flag removed
    /// @param self The fee to remove the override flag from
    /// @return fee The fee without the override flag set
    function removeOverrideFlag(uint24 self) internal pure returns (uint24) {
        return self & REMOVE_OVERRIDE_MASK;
    }

    /// @notice Removes the override flag and validates the fee (reverts if the fee is too large)
    /// @param self The fee to remove the override flag from, and then validate
    /// @return fee The fee without the override flag set (if valid)
    function removeOverrideFlagAndValidate(uint24 self) internal pure returns (uint24 fee) {
        fee = self.removeOverrideFlag();
        fee.validate();
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/NonzeroDeltaCount.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

/// @notice This is a temporary library that allows us to use transient storage (tstore/tload)
/// for the nonzero delta count.
/// TODO: This library can be deleted when we have the transient keyword support in solidity.
library NonzeroDeltaCount {
    // The slot holding the number of nonzero deltas. bytes32(uint256(keccak256("NonzeroDeltaCount")) - 1)
    bytes32 internal constant NONZERO_DELTA_COUNT_SLOT =
        0x7d4b3164c6e45b97e7d87b7125a44c5828d005af88f9d751cfd78729c5d99a0b;

    function read() internal view returns (uint256 count) {
        assembly ("memory-safe") {
            count := tload(NONZERO_DELTA_COUNT_SLOT)
        }
    }

    function increment() internal {
        assembly ("memory-safe") {
            let count := tload(NONZERO_DELTA_COUNT_SLOT)
            count := add(count, 1)
            tstore(NONZERO_DELTA_COUNT_SLOT, count)
        }
    }

    /// @notice Potential to underflow. Ensure checks are performed by integrating contracts to ensure this does not happen.
    /// Current usage ensures this will not happen because we call decrement with known boundaries (only up to the number of times we call increment).
    function decrement() internal {
        assembly ("memory-safe") {
            let count := tload(NONZERO_DELTA_COUNT_SLOT)
            count := sub(count, 1)
            tstore(NONZERO_DELTA_COUNT_SLOT, count)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/ParseBytes.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @notice Parses bytes returned from hooks and the byte selector used to check return selectors from hooks.
/// @dev parseSelector also is used to parse the expected selector
/// For parsing hook returns, note that all hooks return either bytes4 or (bytes4, 32-byte-delta) or (bytes4, 32-byte-delta, uint24).
library ParseBytes {
    function parseSelector(bytes memory result) internal pure returns (bytes4 selector) {
        // equivalent: (selector,) = abi.decode(result, (bytes4, int256));
        assembly ("memory-safe") {
            selector := mload(add(result, 0x20))
        }
    }

    function parseFee(bytes memory result) internal pure returns (uint24 lpFee) {
        // equivalent: (,, lpFee) = abi.decode(result, (bytes4, int256, uint24));
        assembly ("memory-safe") {
            lpFee := mload(add(result, 0x60))
        }
    }

    function parseReturnDelta(bytes memory result) internal pure returns (int256 hookReturn) {
        // equivalent: (, hookReturnDelta) = abi.decode(result, (bytes4, int256));
        assembly ("memory-safe") {
            hookReturn := mload(add(result, 0x40))
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/Position.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {FullMath} from "./FullMath.sol";
import {FixedPoint128} from "./FixedPoint128.sol";
import {LiquidityMath} from "./LiquidityMath.sol";
import {CustomRevert} from "./CustomRevert.sol";

/// @title Position
/// @notice Positions represent an owner address' liquidity between a lower and upper tick boundary
/// @dev Positions store additional state for tracking fees owed to the position
library Position {
    using CustomRevert for bytes4;

    /// @notice Cannot update a position with no liquidity
    error CannotUpdateEmptyPosition();

    // info stored for each user's position
    struct State {
        // the amount of liquidity owned by this position
        uint128 liquidity;
        // fee growth per unit of liquidity as of the last update to liquidity or fees owed
        uint256 feeGrowthInside0LastX128;
        uint256 feeGrowthInside1LastX128;
    }

    /// @notice Returns the State struct of a position, given an owner and position boundaries
    /// @param self The mapping containing all user positions
    /// @param owner The address of the position owner
    /// @param tickLower The lower tick boundary of the position
    /// @param tickUpper The upper tick boundary of the position
    /// @param salt A unique value to differentiate between multiple positions in the same range
    /// @return position The position info struct of the given owners' position
    function get(mapping(bytes32 => State) storage self, address owner, int24 tickLower, int24 tickUpper, bytes32 salt)
        internal
        view
        returns (State storage position)
    {
        bytes32 positionKey = calculatePositionKey(owner, tickLower, tickUpper, salt);
        position = self[positionKey];
    }

    /// @notice A helper function to calculate the position key
    /// @param owner The address of the position owner
    /// @param tickLower the lower tick boundary of the position
    /// @param tickUpper the upper tick boundary of the position
    /// @param salt A unique value to differentiate between multiple positions in the same range, by the same owner. Passed in by the caller.
    function calculatePositionKey(address owner, int24 tickLower, int24 tickUpper, bytes32 salt)
        internal
        pure
        returns (bytes32 positionKey)
    {
        // positionKey = keccak256(abi.encodePacked(owner, tickLower, tickUpper, salt))
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(add(fmp, 0x26), salt) // [0x26, 0x46)
            mstore(add(fmp, 0x06), tickUpper) // [0x23, 0x26)
            mstore(add(fmp, 0x03), tickLower) // [0x20, 0x23)
            mstore(fmp, owner) // [0x0c, 0x20)
            positionKey := keccak256(add(fmp, 0x0c), 0x3a) // len is 58 bytes

            // now clean the memory we used
            mstore(add(fmp, 0x40), 0) // fmp+0x40 held salt
            mstore(add(fmp, 0x20), 0) // fmp+0x20 held tickLower, tickUpper, salt
            mstore(fmp, 0) // fmp held owner
        }
    }

    /// @notice Credits accumulated fees to a user's position
    /// @param self The individual position to update
    /// @param liquidityDelta The change in pool liquidity as a result of the position update
    /// @param feeGrowthInside0X128 The all-time fee growth in currency0, per unit of liquidity, inside the position's tick boundaries
    /// @param feeGrowthInside1X128 The all-time fee growth in currency1, per unit of liquidity, inside the position's tick boundaries
    /// @return feesOwed0 The amount of currency0 owed to the position owner
    /// @return feesOwed1 The amount of currency1 owed to the position owner
    function update(
        State storage self,
        int128 liquidityDelta,
        uint256 feeGrowthInside0X128,
        uint256 feeGrowthInside1X128
    ) internal returns (uint256 feesOwed0, uint256 feesOwed1) {
        uint128 liquidity = self.liquidity;

        if (liquidityDelta == 0) {
            // disallow pokes for 0 liquidity positions
            if (liquidity == 0) CannotUpdateEmptyPosition.selector.revertWith();
        } else {
            self.liquidity = LiquidityMath.addDelta(liquidity, liquidityDelta);
        }

        // calculate accumulated fees. overflow in the subtraction of fee growth is expected
        unchecked {
            feesOwed0 =
                FullMath.mulDiv(feeGrowthInside0X128 - self.feeGrowthInside0LastX128, liquidity, FixedPoint128.Q128);
            feesOwed1 =
                FullMath.mulDiv(feeGrowthInside1X128 - self.feeGrowthInside1LastX128, liquidity, FixedPoint128.Q128);
        }

        // update the position
        self.feeGrowthInside0LastX128 = feeGrowthInside0X128;
        self.feeGrowthInside1LastX128 = feeGrowthInside1X128;
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from "./CustomRevert.sol";

/// @title Safe casting methods
/// @notice Contains methods for safely casting between types
library SafeCast {
    using CustomRevert for bytes4;

    error SafeCastOverflow();

    /// @notice Cast a uint256 to a uint160, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return y The downcasted integer, now type uint160
    function toUint160(uint256 x) internal pure returns (uint160 y) {
        y = uint160(x);
        if (y != x) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a uint128, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return y The downcasted integer, now type uint128
    function toUint128(uint256 x) internal pure returns (uint128 y) {
        y = uint128(x);
        if (x != y) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a int128 to a uint128, revert on overflow or underflow
    /// @param x The int128 to be casted
    /// @return y The casted integer, now type uint128
    function toUint128(int128 x) internal pure returns (uint128 y) {
        if (x < 0) SafeCastOverflow.selector.revertWith();
        y = uint128(x);
    }

    /// @notice Cast a int256 to a int128, revert on overflow or underflow
    /// @param x The int256 to be downcasted
    /// @return y The downcasted integer, now type int128
    function toInt128(int256 x) internal pure returns (int128 y) {
        y = int128(x);
        if (y != x) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a int256, revert on overflow
    /// @param x The uint256 to be casted
    /// @return y The casted integer, now type int256
    function toInt256(uint256 x) internal pure returns (int256 y) {
        y = int256(x);
        if (y < 0) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a int128, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return The downcasted integer, now type int128
    function toInt128(uint256 x) internal pure returns (int128) {
        if (x >= 1 << 127) SafeCastOverflow.selector.revertWith();
        return int128(int256(x));
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/StateLibrary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolId} from "../types/PoolId.sol";
import {IPoolManager} from "../interfaces/IPoolManager.sol";
import {Position} from "./Position.sol";

/// @notice A helper library to provide state getters that use extsload
library StateLibrary {
    /// @notice index of pools mapping in the PoolManager
    bytes32 public constant POOLS_SLOT = bytes32(uint256(6));

    /// @notice index of feeGrowthGlobal0X128 in Pool.State
    uint256 public constant FEE_GROWTH_GLOBAL0_OFFSET = 1;

    // feeGrowthGlobal1X128 offset in Pool.State = 2

    /// @notice index of liquidity in Pool.State
    uint256 public constant LIQUIDITY_OFFSET = 3;

    /// @notice index of TicksInfo mapping in Pool.State: mapping(int24 => TickInfo) ticks;
    uint256 public constant TICKS_OFFSET = 4;

    /// @notice index of tickBitmap mapping in Pool.State
    uint256 public constant TICK_BITMAP_OFFSET = 5;

    /// @notice index of Position.State mapping in Pool.State: mapping(bytes32 => Position.State) positions;
    uint256 public constant POSITIONS_OFFSET = 6;

    /**
     * @notice Get Slot0 of the pool: sqrtPriceX96, tick, protocolFee, lpFee
     * @dev Corresponds to pools[poolId].slot0
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @return sqrtPriceX96 The square root of the price of the pool, in Q96 precision.
     * @return tick The current tick of the pool.
     * @return protocolFee The protocol fee of the pool.
     * @return lpFee The swap fee of the pool.
     */
    function getSlot0(IPoolManager manager, PoolId poolId)
        internal
        view
        returns (uint160 sqrtPriceX96, int24 tick, uint24 protocolFee, uint24 lpFee)
    {
        // slot key of Pool.State value: `pools[poolId]`
        bytes32 stateSlot = _getPoolStateSlot(poolId);

        bytes32 data = manager.extsload(stateSlot);

        //   24 bits  |24bits|24bits      |24 bits|160 bits
        // 0x000000   |000bb8|000000      |ffff75 |0000000000000000fe3aa841ba359daa0ea9eff7
        // ---------- | fee  |protocolfee | tick  | sqrtPriceX96
        assembly ("memory-safe") {
            // bottom 160 bits of data
            sqrtPriceX96 := and(data, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
            // next 24 bits of data
            tick := signextend(2, shr(160, data))
            // next 24 bits of data
            protocolFee := and(shr(184, data), 0xFFFFFF)
            // last 24 bits of data
            lpFee := and(shr(208, data), 0xFFFFFF)
        }
    }

    /**
     * @notice Retrieves the tick information of a pool at a specific tick.
     * @dev Corresponds to pools[poolId].ticks[tick]
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @param tick The tick to retrieve information for.
     * @return liquidityGross The total position liquidity that references this tick
     * @return liquidityNet The amount of net liquidity added (subtracted) when tick is crossed from left to right (right to left)
     * @return feeGrowthOutside0X128 fee growth per unit of liquidity on the _other_ side of this tick (relative to the current tick)
     * @return feeGrowthOutside1X128 fee growth per unit of liquidity on the _other_ side of this tick (relative to the current tick)
     */
    function getTickInfo(IPoolManager manager, PoolId poolId, int24 tick)
        internal
        view
        returns (
            uint128 liquidityGross,
            int128 liquidityNet,
            uint256 feeGrowthOutside0X128,
            uint256 feeGrowthOutside1X128
        )
    {
        bytes32 slot = _getTickInfoSlot(poolId, tick);

        // read all 3 words of the TickInfo struct
        bytes32[] memory data = manager.extsload(slot, 3);
        assembly ("memory-safe") {
            let firstWord := mload(add(data, 32))
            liquidityNet := sar(128, firstWord)
            liquidityGross := and(firstWord, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
            feeGrowthOutside0X128 := mload(add(data, 64))
            feeGrowthOutside1X128 := mload(add(data, 96))
        }
    }

    /**
     * @notice Retrieves the liquidity information of a pool at a specific tick.
     * @dev Corresponds to pools[poolId].ticks[tick].liquidityGross and pools[poolId].ticks[tick].liquidityNet. A more gas efficient version of getTickInfo
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @param tick The tick to retrieve liquidity for.
     * @return liquidityGross The total position liquidity that references this tick
     * @return liquidityNet The amount of net liquidity added (subtracted) when tick is crossed from left to right (right to left)
     */
    function getTickLiquidity(IPoolManager manager, PoolId poolId, int24 tick)
        internal
        view
        returns (uint128 liquidityGross, int128 liquidityNet)
    {
        bytes32 slot = _getTickInfoSlot(poolId, tick);

        bytes32 value = manager.extsload(slot);
        assembly ("memory-safe") {
            liquidityNet := sar(128, value)
            liquidityGross := and(value, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
        }
    }

    /**
     * @notice Retrieves the fee growth outside a tick range of a pool
     * @dev Corresponds to pools[poolId].ticks[tick].feeGrowthOutside0X128 and pools[poolId].ticks[tick].feeGrowthOutside1X128. A more gas efficient version of getTickInfo
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @param tick The tick to retrieve fee growth for.
     * @return feeGrowthOutside0X128 fee growth per unit of liquidity on the _other_ side of this tick (relative to the current tick)
     * @return feeGrowthOutside1X128 fee growth per unit of liquidity on the _other_ side of this tick (relative to the current tick)
     */
    function getTickFeeGrowthOutside(IPoolManager manager, PoolId poolId, int24 tick)
        internal
        view
        returns (uint256 feeGrowthOutside0X128, uint256 feeGrowthOutside1X128)
    {
        bytes32 slot = _getTickInfoSlot(poolId, tick);

        // offset by 1 word, since the first word is liquidityGross + liquidityNet
        bytes32[] memory data = manager.extsload(bytes32(uint256(slot) + 1), 2);
        assembly ("memory-safe") {
            feeGrowthOutside0X128 := mload(add(data, 32))
            feeGrowthOutside1X128 := mload(add(data, 64))
        }
    }

    /**
     * @notice Retrieves the global fee growth of a pool.
     * @dev Corresponds to pools[poolId].feeGrowthGlobal0X128 and pools[poolId].feeGrowthGlobal1X128
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @return feeGrowthGlobal0 The global fee growth for token0.
     * @return feeGrowthGlobal1 The global fee growth for token1.
     * @dev Note that feeGrowthGlobal can be artificially inflated
     * For pools with a single liquidity position, actors can donate to themselves to freely inflate feeGrowthGlobal
     * atomically donating and collecting fees in the same unlockCallback may make the inflated value more extreme
     */
    function getFeeGrowthGlobals(IPoolManager manager, PoolId poolId)
        internal
        view
        returns (uint256 feeGrowthGlobal0, uint256 feeGrowthGlobal1)
    {
        // slot key of Pool.State value: `pools[poolId]`
        bytes32 stateSlot = _getPoolStateSlot(poolId);

        // Pool.State, `uint256 feeGrowthGlobal0X128`
        bytes32 slot_feeGrowthGlobal0X128 = bytes32(uint256(stateSlot) + FEE_GROWTH_GLOBAL0_OFFSET);

        // read the 2 words of feeGrowthGlobal
        bytes32[] memory data = manager.extsload(slot_feeGrowthGlobal0X128, 2);
        assembly ("memory-safe") {
            feeGrowthGlobal0 := mload(add(data, 32))
            feeGrowthGlobal1 := mload(add(data, 64))
        }
    }

    /**
     * @notice Retrieves total the liquidity of a pool.
     * @dev Corresponds to pools[poolId].liquidity
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @return liquidity The liquidity of the pool.
     */
    function getLiquidity(IPoolManager manager, PoolId poolId) internal view returns (uint128 liquidity) {
        // slot key of Pool.State value: `pools[poolId]`
        bytes32 stateSlot = _getPoolStateSlot(poolId);

        // Pool.State: `uint128 liquidity`
        bytes32 slot = bytes32(uint256(stateSlot) + LIQUIDITY_OFFSET);

        liquidity = uint128(uint256(manager.extsload(slot)));
    }

    /**
     * @notice Retrieves the tick bitmap of a pool at a specific tick.
     * @dev Corresponds to pools[poolId].tickBitmap[tick]
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @param tick The tick to retrieve the bitmap for.
     * @return tickBitmap The bitmap of the tick.
     */
    function getTickBitmap(IPoolManager manager, PoolId poolId, int16 tick)
        internal
        view
        returns (uint256 tickBitmap)
    {
        // slot key of Pool.State value: `pools[poolId]`
        bytes32 stateSlot = _getPoolStateSlot(poolId);

        // Pool.State: `mapping(int16 => uint256) tickBitmap;`
        bytes32 tickBitmapMapping = bytes32(uint256(stateSlot) + TICK_BITMAP_OFFSET);

        // slot id of the mapping key: `pools[poolId].tickBitmap[tick]
        bytes32 slot = keccak256(abi.encodePacked(int256(tick), tickBitmapMapping));

        tickBitmap = uint256(manager.extsload(slot));
    }

    /**
     * @notice Retrieves the position information of a pool without needing to calculate the `positionId`.
     * @dev Corresponds to pools[poolId].positions[positionId]
     * @param poolId The ID of the pool.
     * @param owner The owner of the liquidity position.
     * @param tickLower The lower tick of the liquidity range.
     * @param tickUpper The upper tick of the liquidity range.
     * @param salt The bytes32 randomness to further distinguish position state.
     * @return liquidity The liquidity of the position.
     * @return feeGrowthInside0LastX128 The fee growth inside the position for token0.
     * @return feeGrowthInside1LastX128 The fee growth inside the position for token1.
     */
    function getPositionInfo(
        IPoolManager manager,
        PoolId poolId,
        address owner,
        int24 tickLower,
        int24 tickUpper,
        bytes32 salt
    ) internal view returns (uint128 liquidity, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128) {
        // positionKey = keccak256(abi.encodePacked(owner, tickLower, tickUpper, salt))
        bytes32 positionKey = Position.calculatePositionKey(owner, tickLower, tickUpper, salt);

        (liquidity, feeGrowthInside0LastX128, feeGrowthInside1LastX128) = getPositionInfo(manager, poolId, positionKey);
    }

    /**
     * @notice Retrieves the position information of a pool at a specific position ID.
     * @dev Corresponds to pools[poolId].positions[positionId]
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @param positionId The ID of the position.
     * @return liquidity The liquidity of the position.
     * @return feeGrowthInside0LastX128 The fee growth inside the position for token0.
     * @return feeGrowthInside1LastX128 The fee growth inside the position for token1.
     */
    function getPositionInfo(IPoolManager manager, PoolId poolId, bytes32 positionId)
        internal
        view
        returns (uint128 liquidity, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128)
    {
        bytes32 slot = _getPositionInfoSlot(poolId, positionId);

        // read all 3 words of the Position.State struct
        bytes32[] memory data = manager.extsload(slot, 3);

        assembly ("memory-safe") {
            liquidity := mload(add(data, 32))
            feeGrowthInside0LastX128 := mload(add(data, 64))
            feeGrowthInside1LastX128 := mload(add(data, 96))
        }
    }

    /**
     * @notice Retrieves the liquidity of a position.
     * @dev Corresponds to pools[poolId].positions[positionId].liquidity. More gas efficient for just retrieiving liquidity as compared to getPositionInfo
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @param positionId The ID of the position.
     * @return liquidity The liquidity of the position.
     */
    function getPositionLiquidity(IPoolManager manager, PoolId poolId, bytes32 positionId)
        internal
        view
        returns (uint128 liquidity)
    {
        bytes32 slot = _getPositionInfoSlot(poolId, positionId);
        liquidity = uint128(uint256(manager.extsload(slot)));
    }

    /**
     * @notice Calculate the fee growth inside a tick range of a pool
     * @dev pools[poolId].feeGrowthInside0LastX128 in Position.State is cached and can become stale. This function will calculate the up to date feeGrowthInside
     * @param manager The pool manager contract.
     * @param poolId The ID of the pool.
     * @param tickLower The lower tick of the range.
     * @param tickUpper The upper tick of the range.
     * @return feeGrowthInside0X128 The fee growth inside the tick range for token0.
     * @return feeGrowthInside1X128 The fee growth inside the tick range for token1.
     */
    function getFeeGrowthInside(IPoolManager manager, PoolId poolId, int24 tickLower, int24 tickUpper)
        internal
        view
        returns (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128)
    {
        (uint256 feeGrowthGlobal0X128, uint256 feeGrowthGlobal1X128) = getFeeGrowthGlobals(manager, poolId);

        (uint256 lowerFeeGrowthOutside0X128, uint256 lowerFeeGrowthOutside1X128) =
            getTickFeeGrowthOutside(manager, poolId, tickLower);
        (uint256 upperFeeGrowthOutside0X128, uint256 upperFeeGrowthOutside1X128) =
            getTickFeeGrowthOutside(manager, poolId, tickUpper);
        (, int24 tickCurrent,,) = getSlot0(manager, poolId);
        unchecked {
            if (tickCurrent < tickLower) {
                feeGrowthInside0X128 = lowerFeeGrowthOutside0X128 - upperFeeGrowthOutside0X128;
                feeGrowthInside1X128 = lowerFeeGrowthOutside1X128 - upperFeeGrowthOutside1X128;
            } else if (tickCurrent >= tickUpper) {
                feeGrowthInside0X128 = upperFeeGrowthOutside0X128 - lowerFeeGrowthOutside0X128;
                feeGrowthInside1X128 = upperFeeGrowthOutside1X128 - lowerFeeGrowthOutside1X128;
            } else {
                feeGrowthInside0X128 = feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128 - upperFeeGrowthOutside0X128;
                feeGrowthInside1X128 = feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128 - upperFeeGrowthOutside1X128;
            }
        }
    }

    function _getPoolStateSlot(PoolId poolId) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(PoolId.unwrap(poolId), POOLS_SLOT));
    }

    function _getTickInfoSlot(PoolId poolId, int24 tick) internal pure returns (bytes32) {
        // slot key of Pool.State value: `pools[poolId]`
        bytes32 stateSlot = _getPoolStateSlot(poolId);

        // Pool.State: `mapping(int24 => TickInfo) ticks`
        bytes32 ticksMappingSlot = bytes32(uint256(stateSlot) + TICKS_OFFSET);

        // slot key of the tick key: `pools[poolId].ticks[tick]
        return keccak256(abi.encodePacked(int256(tick), ticksMappingSlot));
    }

    function _getPositionInfoSlot(PoolId poolId, bytes32 positionId) internal pure returns (bytes32) {
        // slot key of Pool.State value: `pools[poolId]`
        bytes32 stateSlot = _getPoolStateSlot(poolId);

        // Pool.State: `mapping(bytes32 => Position.State) positions;`
        bytes32 positionMapping = bytes32(uint256(stateSlot) + POSITIONS_OFFSET);

        // slot of the mapping key: `pools[poolId].positions[positionId]
        return keccak256(abi.encodePacked(positionId, positionMapping));
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/TickMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BitMath} from "./BitMath.sol";
import {CustomRevert} from "./CustomRevert.sol";

/// @title Math library for computing sqrt prices from ticks and vice versa
/// @notice Computes sqrt price for ticks of size 1.0001, i.e. sqrt(1.0001^tick) as fixed point Q64.96 numbers. Supports
/// prices between 2**-128 and 2**128
library TickMath {
    using CustomRevert for bytes4;

    /// @notice Thrown when the tick passed to #getSqrtPriceAtTick is not between MIN_TICK and MAX_TICK
    error InvalidTick(int24 tick);
    /// @notice Thrown when the price passed to #getTickAtSqrtPrice does not correspond to a price between MIN_TICK and MAX_TICK
    error InvalidSqrtPrice(uint160 sqrtPriceX96);

    /// @dev The minimum tick that may be passed to #getSqrtPriceAtTick computed from log base 1.0001 of 2**-128
    /// @dev If ever MIN_TICK and MAX_TICK are not centered around 0, the absTick logic in getSqrtPriceAtTick cannot be used
    int24 internal constant MIN_TICK = -887272;
    /// @dev The maximum tick that may be passed to #getSqrtPriceAtTick computed from log base 1.0001 of 2**128
    /// @dev If ever MIN_TICK and MAX_TICK are not centered around 0, the absTick logic in getSqrtPriceAtTick cannot be used
    int24 internal constant MAX_TICK = 887272;

    /// @dev The minimum tick spacing value drawn from the range of type int16 that is greater than 0, i.e. min from the range [1, 32767]
    int24 internal constant MIN_TICK_SPACING = 1;
    /// @dev The maximum tick spacing value drawn from the range of type int16, i.e. max from the range [1, 32767]
    int24 internal constant MAX_TICK_SPACING = type(int16).max;

    /// @dev The minimum value that can be returned from #getSqrtPriceAtTick. Equivalent to getSqrtPriceAtTick(MIN_TICK)
    uint160 internal constant MIN_SQRT_PRICE = 4295128739;
    /// @dev The maximum value that can be returned from #getSqrtPriceAtTick. Equivalent to getSqrtPriceAtTick(MAX_TICK)
    uint160 internal constant MAX_SQRT_PRICE = 1461446703485210103287273052203988822378723970342;
    /// @dev A threshold used for optimized bounds check, equals `MAX_SQRT_PRICE - MIN_SQRT_PRICE - 1`
    uint160 internal constant MAX_SQRT_PRICE_MINUS_MIN_SQRT_PRICE_MINUS_ONE =
        1461446703485210103287273052203988822378723970342 - 4295128739 - 1;

    /// @notice Given a tickSpacing, compute the maximum usable tick
    function maxUsableTick(int24 tickSpacing) internal pure returns (int24) {
        unchecked {
            return (MAX_TICK / tickSpacing) * tickSpacing;
        }
    }

    /// @notice Given a tickSpacing, compute the minimum usable tick
    function minUsableTick(int24 tickSpacing) internal pure returns (int24) {
        unchecked {
            return (MIN_TICK / tickSpacing) * tickSpacing;
        }
    }

    /// @notice Calculates sqrt(1.0001^tick) * 2^96
    /// @dev Throws if |tick| > max tick
    /// @param tick The input tick for the above formula
    /// @return sqrtPriceX96 A Fixed point Q64.96 number representing the sqrt of the price of the two assets (currency1/currency0)
    /// at the given tick
    function getSqrtPriceAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {
        unchecked {
            uint256 absTick;
            assembly ("memory-safe") {
                tick := signextend(2, tick)
                // mask = 0 if tick >= 0 else -1 (all 1s)
                let mask := sar(255, tick)
                // if tick >= 0, |tick| = tick = 0 ^ tick
                // if tick < 0, |tick| = ~~|tick| = ~(-|tick| - 1) = ~(tick - 1) = (-1) ^ (tick - 1)
                // either way, |tick| = mask ^ (tick + mask)
                absTick := xor(mask, add(mask, tick))
            }

            if (absTick > uint256(int256(MAX_TICK))) InvalidTick.selector.revertWith(tick);

            // The tick is decomposed into bits, and for each bit with index i that is set, the product of 1/sqrt(1.0001^(2^i))
            // is calculated (using Q128.128). The constants used for this calculation are rounded to the nearest integer

            // Equivalent to:
            //     price = absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000;
            //     or price = int(2**128 / sqrt(1.0001)) if (absTick & 0x1) else 1 << 128
            uint256 price;
            assembly ("memory-safe") {
                price := xor(shl(128, 1), mul(xor(shl(128, 1), 0xfffcb933bd6fad37aa2d162d1a594001), and(absTick, 0x1)))
            }
            if (absTick & 0x2 != 0) price = (price * 0xfff97272373d413259a46990580e213a) >> 128;
            if (absTick & 0x4 != 0) price = (price * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
            if (absTick & 0x8 != 0) price = (price * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
            if (absTick & 0x10 != 0) price = (price * 0xffcb9843d60f6159c9db58835c926644) >> 128;
            if (absTick & 0x20 != 0) price = (price * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
            if (absTick & 0x40 != 0) price = (price * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
            if (absTick & 0x80 != 0) price = (price * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
            if (absTick & 0x100 != 0) price = (price * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
            if (absTick & 0x200 != 0) price = (price * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
            if (absTick & 0x400 != 0) price = (price * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
            if (absTick & 0x800 != 0) price = (price * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
            if (absTick & 0x1000 != 0) price = (price * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
            if (absTick & 0x2000 != 0) price = (price * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
            if (absTick & 0x4000 != 0) price = (price * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
            if (absTick & 0x8000 != 0) price = (price * 0x31be135f97d08fd981231505542fcfa6) >> 128;
            if (absTick & 0x10000 != 0) price = (price * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
            if (absTick & 0x20000 != 0) price = (price * 0x5d6af8dedb81196699c329225ee604) >> 128;
            if (absTick & 0x40000 != 0) price = (price * 0x2216e584f5fa1ea926041bedfe98) >> 128;
            if (absTick & 0x80000 != 0) price = (price * 0x48a170391f7dc42444e8fa2) >> 128;

            assembly ("memory-safe") {
                // if (tick > 0) price = type(uint256).max / price;
                if sgt(tick, 0) { price := div(not(0), price) }

                // this divides by 1<<32 rounding up to go from a Q128.128 to a Q128.96.
                // we then downcast because we know the result always fits within 160 bits due to our tick input constraint
                // we round up in the division so getTickAtSqrtPrice of the output price is always consistent
                // `sub(shl(32, 1), 1)` is `type(uint32).max`
                // `price + type(uint32).max` will not overflow because `price` fits in 192 bits
                sqrtPriceX96 := shr(32, add(price, sub(shl(32, 1), 1)))
            }
        }
    }

    /// @notice Calculates the greatest tick value such that getSqrtPriceAtTick(tick) <= sqrtPriceX96
    /// @dev Throws in case sqrtPriceX96 < MIN_SQRT_PRICE, as MIN_SQRT_PRICE is the lowest value getSqrtPriceAtTick may
    /// ever return.
    /// @param sqrtPriceX96 The sqrt price for which to compute the tick as a Q64.96
    /// @return tick The greatest tick for which the getSqrtPriceAtTick(tick) is less than or equal to the input sqrtPriceX96
    function getTickAtSqrtPrice(uint160 sqrtPriceX96) internal pure returns (int24 tick) {
        unchecked {
            // Equivalent: if (sqrtPriceX96 < MIN_SQRT_PRICE || sqrtPriceX96 >= MAX_SQRT_PRICE) revert InvalidSqrtPrice();
            // second inequality must be >= because the price can never reach the price at the max tick
            // if sqrtPriceX96 < MIN_SQRT_PRICE, the `sub` underflows and `gt` is true
            // if sqrtPriceX96 >= MAX_SQRT_PRICE, sqrtPriceX96 - MIN_SQRT_PRICE > MAX_SQRT_PRICE - MIN_SQRT_PRICE - 1
            if ((sqrtPriceX96 - MIN_SQRT_PRICE) > MAX_SQRT_PRICE_MINUS_MIN_SQRT_PRICE_MINUS_ONE) {
                InvalidSqrtPrice.selector.revertWith(sqrtPriceX96);
            }

            uint256 price = uint256(sqrtPriceX96) << 32;

            uint256 r = price;
            uint256 msb = BitMath.mostSignificantBit(r);

            if (msb >= 128) r = price >> (msb - 127);
            else r = price << (127 - msb);

            int256 log_2 = (int256(msb) - 128) << 64;

            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(63, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(62, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(61, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(60, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(59, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(58, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(57, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(56, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(55, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(54, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(53, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(52, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(51, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(50, f))
            }

            int256 log_sqrt10001 = log_2 * 255738958999603826347141; // Q22.128 number

            // Magic number represents the ceiling of the maximum value of the error when approximating log_sqrt10001(x)
            int24 tickLow = int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128);

            // Magic number represents the minimum value of the error when approximating log_sqrt10001(x), when
            // sqrtPrice is from the range (2^-64, 2^64). This is safe as MIN_SQRT_PRICE is more than 2^-64. If MIN_SQRT_PRICE
            // is changed, this may need to be changed too
            int24 tickHi = int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128);

            tick = tickLow == tickHi ? tickLow : getSqrtPriceAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow;
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/TransientStateLibrary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IPoolManager} from "../interfaces/IPoolManager.sol";
import {Currency} from "../types/Currency.sol";
import {CurrencyReserves} from "./CurrencyReserves.sol";
import {NonzeroDeltaCount} from "./NonzeroDeltaCount.sol";
import {Lock} from "./Lock.sol";

/// @notice A helper library to provide state getters that use exttload
library TransientStateLibrary {
    /// @notice returns the reserves for the synced currency
    /// @param manager The pool manager contract.

    /// @return uint256 The reserves of the currency.
    /// @dev returns 0 if the reserves are not synced or value is 0.
    /// Checks the synced currency to only return valid reserve values (after a sync and before a settle).
    function getSyncedReserves(IPoolManager manager) internal view returns (uint256) {
        if (getSyncedCurrency(manager).isAddressZero()) return 0;
        return uint256(manager.exttload(CurrencyReserves.RESERVES_OF_SLOT));
    }

    function getSyncedCurrency(IPoolManager manager) internal view returns (Currency) {
        return Currency.wrap(address(uint160(uint256(manager.exttload(CurrencyReserves.CURRENCY_SLOT)))));
    }

    /// @notice Returns the number of nonzero deltas open on the PoolManager that must be zeroed out before the contract is locked
    function getNonzeroDeltaCount(IPoolManager manager) internal view returns (uint256) {
        return uint256(manager.exttload(NonzeroDeltaCount.NONZERO_DELTA_COUNT_SLOT));
    }

    /// @notice Get the current delta for a caller in the given currency
    /// @param target The credited account address
    /// @param currency The currency for which to lookup the delta
    function currencyDelta(IPoolManager manager, address target, Currency currency) internal view returns (int256) {
        bytes32 key;
        assembly ("memory-safe") {
            mstore(0, and(target, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(32, and(currency, 0xffffffffffffffffffffffffffffffffffffffff))
            key := keccak256(0, 64)
        }
        return int256(uint256(manager.exttload(key)));
    }

    /// @notice Returns whether the contract is unlocked or not
    function isUnlocked(IPoolManager manager) internal view returns (bool) {
        return manager.exttload(Lock.IS_UNLOCKED_SLOT) != 0x0;
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/BalanceDelta.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SafeCast} from "../libraries/SafeCast.sol";

/// @dev Two `int128` values packed into a single `int256` where the upper 128 bits represent the amount0
/// and the lower 128 bits represent the amount1.
type BalanceDelta is int256;

using {add as +, sub as -, eq as ==, neq as !=} for BalanceDelta global;
using BalanceDeltaLibrary for BalanceDelta global;
using SafeCast for int256;

function toBalanceDelta(int128 _amount0, int128 _amount1) pure returns (BalanceDelta balanceDelta) {
    assembly ("memory-safe") {
        balanceDelta := or(shl(128, _amount0), and(sub(shl(128, 1), 1), _amount1))
    }
}

function add(BalanceDelta a, BalanceDelta b) pure returns (BalanceDelta) {
    int256 res0;
    int256 res1;
    assembly ("memory-safe") {
        let a0 := sar(128, a)
        let a1 := signextend(15, a)
        let b0 := sar(128, b)
        let b1 := signextend(15, b)
        res0 := add(a0, b0)
        res1 := add(a1, b1)
    }
    return toBalanceDelta(res0.toInt128(), res1.toInt128());
}

function sub(BalanceDelta a, BalanceDelta b) pure returns (BalanceDelta) {
    int256 res0;
    int256 res1;
    assembly ("memory-safe") {
        let a0 := sar(128, a)
        let a1 := signextend(15, a)
        let b0 := sar(128, b)
        let b1 := signextend(15, b)
        res0 := sub(a0, b0)
        res1 := sub(a1, b1)
    }
    return toBalanceDelta(res0.toInt128(), res1.toInt128());
}

function eq(BalanceDelta a, BalanceDelta b) pure returns (bool) {
    return BalanceDelta.unwrap(a) == BalanceDelta.unwrap(b);
}

function neq(BalanceDelta a, BalanceDelta b) pure returns (bool) {
    return BalanceDelta.unwrap(a) != BalanceDelta.unwrap(b);
}

/// @notice Library for getting the amount0 and amount1 deltas from the BalanceDelta type
library BalanceDeltaLibrary {
    /// @notice A BalanceDelta of 0
    BalanceDelta public constant ZERO_DELTA = BalanceDelta.wrap(0);

    function amount0(BalanceDelta balanceDelta) internal pure returns (int128 _amount0) {
        assembly ("memory-safe") {
            _amount0 := sar(128, balanceDelta)
        }
    }

    function amount1(BalanceDelta balanceDelta) internal pure returns (int128 _amount1) {
        assembly ("memory-safe") {
            _amount1 := signextend(15, balanceDelta)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/BeforeSwapDelta.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Return type of the beforeSwap hook.
// Upper 128 bits is the delta in specified tokens. Lower 128 bits is delta in unspecified tokens (to match the afterSwap hook)
type BeforeSwapDelta is int256;

// Creates a BeforeSwapDelta from specified and unspecified
function toBeforeSwapDelta(int128 deltaSpecified, int128 deltaUnspecified)
    pure
    returns (BeforeSwapDelta beforeSwapDelta)
{
    assembly ("memory-safe") {
        beforeSwapDelta := or(shl(128, deltaSpecified), and(sub(shl(128, 1), 1), deltaUnspecified))
    }
}

/// @notice Library for getting the specified and unspecified deltas from the BeforeSwapDelta type
library BeforeSwapDeltaLibrary {
    /// @notice A BeforeSwapDelta of 0
    BeforeSwapDelta public constant ZERO_DELTA = BeforeSwapDelta.wrap(0);

    /// extracts int128 from the upper 128 bits of the BeforeSwapDelta
    /// returned by beforeSwap
    function getSpecifiedDelta(BeforeSwapDelta delta) internal pure returns (int128 deltaSpecified) {
        assembly ("memory-safe") {
            deltaSpecified := sar(128, delta)
        }
    }

    /// extracts int128 from the lower 128 bits of the BeforeSwapDelta
    /// returned by beforeSwap and afterSwap
    function getUnspecifiedDelta(BeforeSwapDelta delta) internal pure returns (int128 deltaUnspecified) {
        assembly ("memory-safe") {
            deltaUnspecified := signextend(15, delta)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/Currency.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20Minimal} from "../interfaces/external/IERC20Minimal.sol";
import {CustomRevert} from "../libraries/CustomRevert.sol";

type Currency is address;

using {greaterThan as >, lessThan as <, greaterThanOrEqualTo as >=, equals as ==} for Currency global;
using CurrencyLibrary for Currency global;

function equals(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) == Currency.unwrap(other);
}

function greaterThan(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) > Currency.unwrap(other);
}

function lessThan(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) < Currency.unwrap(other);
}

function greaterThanOrEqualTo(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) >= Currency.unwrap(other);
}

/// @title CurrencyLibrary
/// @dev This library allows for transferring and holding native tokens and ERC20 tokens
library CurrencyLibrary {
    /// @notice Additional context for ERC-7751 wrapped error when a native transfer fails
    error NativeTransferFailed();

    /// @notice Additional context for ERC-7751 wrapped error when an ERC20 transfer fails
    error ERC20TransferFailed();

    /// @notice A constant to represent the native currency
    Currency public constant ADDRESS_ZERO = Currency.wrap(address(0));

    function transfer(Currency currency, address to, uint256 amount) internal {
        // altered from https://github.com/transmissions11/solmate/blob/44a9963d4c78111f77caa0e65d677b8b46d6f2e6/src/utils/SafeTransferLib.sol
        // modified custom error selectors

        bool success;
        if (currency.isAddressZero()) {
            assembly ("memory-safe") {
                // Transfer the ETH and revert if it fails.
                success := call(gas(), to, amount, 0, 0, 0, 0)
            }
            // revert with NativeTransferFailed, containing the bubbled up error as an argument
            if (!success) {
                CustomRevert.bubbleUpAndRevertWith(to, bytes4(0), NativeTransferFailed.selector);
            }
        } else {
            assembly ("memory-safe") {
                // Get a pointer to some free memory.
                let fmp := mload(0x40)

                // Write the abi-encoded calldata into memory, beginning with the function selector.
                mstore(fmp, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                mstore(add(fmp, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
                mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

                success :=
                    and(
                        // Set success to whether the call reverted, if not we check it either
                        // returned exactly 1 (can't just be non-zero data), or had no return data.
                        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                        // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                        // Counterintuitively, this call must be positioned second to the or() call in the
                        // surrounding and() call or else returndatasize() will be zero during the computation.
                        call(gas(), currency, 0, fmp, 68, 0, 32)
                    )

                // Now clean the memory we used
                mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
                mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
                mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
            }
            // revert with ERC20TransferFailed, containing the bubbled up error as an argument
            if (!success) {
                CustomRevert.bubbleUpAndRevertWith(
                    Currency.unwrap(currency), IERC20Minimal.transfer.selector, ERC20TransferFailed.selector
                );
            }
        }
    }

    function balanceOfSelf(Currency currency) internal view returns (uint256) {
        if (currency.isAddressZero()) {
            return address(this).balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(address(this));
        }
    }

    function balanceOf(Currency currency, address owner) internal view returns (uint256) {
        if (currency.isAddressZero()) {
            return owner.balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(owner);
        }
    }

    function isAddressZero(Currency currency) internal pure returns (bool) {
        return Currency.unwrap(currency) == Currency.unwrap(ADDRESS_ZERO);
    }

    function toId(Currency currency) internal pure returns (uint256) {
        return uint160(Currency.unwrap(currency));
    }

    // If the upper 12 bytes are non-zero, they will be zero-ed out
    // Therefore, fromId() and toId() are not inverses of each other
    function fromId(uint256 id) internal pure returns (Currency) {
        return Currency.wrap(address(uint160(id)));
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/PoolId.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "./PoolKey.sol";

type PoolId is bytes32;

/// @notice Library for computing the ID of a pool
library PoolIdLibrary {
    /// @notice Returns value equal to keccak256(abi.encode(poolKey))
    function toId(PoolKey memory poolKey) internal pure returns (PoolId poolId) {
        assembly ("memory-safe") {
            // 0xa0 represents the total size of the poolKey struct (5 slots of 32 bytes)
            poolId := keccak256(poolKey, 0xa0)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/PoolKey.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "./Currency.sol";
import {IHooks} from "../interfaces/IHooks.sol";
import {PoolIdLibrary} from "./PoolId.sol";

using PoolIdLibrary for PoolKey global;

/// @notice Returns the key for identifying a pool
struct PoolKey {
    /// @notice The lower currency of the pool, sorted numerically
    Currency currency0;
    /// @notice The higher currency of the pool, sorted numerically
    Currency currency1;
    /// @notice The pool LP fee, capped at 1_000_000. If the highest bit is 1, the pool has a dynamic fee and must be exactly equal to 0x800000
    uint24 fee;
    /// @notice Ticks that involve positions must be a multiple of tick spacing
    int24 tickSpacing;
    /// @notice The hooks of the pool
    IHooks hooks;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/PoolOperation.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "../types/PoolKey.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";

/// @notice Parameter struct for `ModifyLiquidity` pool operations
struct ModifyLiquidityParams {
    // the lower and upper tick of the position
    int24 tickLower;
    int24 tickUpper;
    // how to modify the liquidity
    int256 liquidityDelta;
    // a value to set if you want unique liquidity positions at the same range
    bytes32 salt;
}

/// @notice Parameter struct for `Swap` pool operations
struct SwapParams {
    /// Whether to swap token0 for token1 or vice versa
    bool zeroForOne;
    /// The desired input amount if negative (exactIn), or the desired output amount if positive (exactOut)
    int256 amountSpecified;
    /// The sqrt price at which, if reached, the swap will stop executing
    uint160 sqrtPriceLimitX96;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/BaseActionsRouter.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {SafeCallback} from "./SafeCallback.sol";
import {CalldataDecoder} from "../libraries/CalldataDecoder.sol";
import {ActionConstants} from "../libraries/ActionConstants.sol";
import {IMsgSender} from "../interfaces/IMsgSender.sol";

/// @notice Abstract contract for performing a combination of actions on Uniswap v4.
/// @dev Suggested uint256 action values are defined in Actions.sol, however any definition can be used
abstract contract BaseActionsRouter is IMsgSender, SafeCallback {
    using CalldataDecoder for bytes;

    /// @notice emitted when different numbers of parameters and actions are provided
    error InputLengthMismatch();

    /// @notice emitted when an inheriting contract does not support an action
    error UnsupportedAction(uint256 action);

    constructor(IPoolManager _poolManager) SafeCallback(_poolManager) {}

    /// @notice internal function that triggers the execution of a set of actions on v4
    /// @dev inheriting contracts should call this function to trigger execution
    function _executeActions(bytes calldata unlockData) internal {
        poolManager.unlock(unlockData);
    }

    /// @notice function that is called by the PoolManager through the SafeCallback.unlockCallback
    /// @param data Abi encoding of (bytes actions, bytes[] params)
    /// where params[i] is the encoded parameters for actions[i]
    function _unlockCallback(bytes calldata data) internal override returns (bytes memory) {
        // abi.decode(data, (bytes, bytes[]));
        (bytes calldata actions, bytes[] calldata params) = data.decodeActionsRouterParams();
        _executeActionsWithoutUnlock(actions, params);
        return "";
    }

    function _executeActionsWithoutUnlock(bytes calldata actions, bytes[] calldata params) internal {
        uint256 numActions = actions.length;
        if (numActions != params.length) revert InputLengthMismatch();

        for (uint256 actionIndex = 0; actionIndex < numActions; actionIndex++) {
            uint256 action = uint8(actions[actionIndex]);

            _handleAction(action, params[actionIndex]);
        }
    }

    /// @notice function to handle the parsing and execution of an action and its parameters
    function _handleAction(uint256 action, bytes calldata params) internal virtual;

    /// @notice function that returns address considered executor of the actions
    /// @dev The other context functions, _msgData and _msgValue, are not supported by this contract
    /// In many contracts this will be the address that calls the initial entry point that calls `_executeActions`
    /// `msg.sender` shouldn't be used, as this will be the v4 pool manager contract that calls `unlockCallback`
    /// If using ReentrancyLock.sol, this function can return _getLocker()
    function msgSender() public view virtual returns (address);

    /// @notice Calculates the address for a action
    function _mapRecipient(address recipient) internal view returns (address) {
        if (recipient == ActionConstants.MSG_SENDER) {
            return msgSender();
        } else if (recipient == ActionConstants.ADDRESS_THIS) {
            return address(this);
        } else {
            return recipient;
        }
    }

    /// @notice Calculates the payer for an action
    function _mapPayer(bool payerIsUser) internal view returns (address) {
        return payerIsUser ? msgSender() : address(this);
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/DeltaResolver.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {TransientStateLibrary} from "@uniswap/v4-core/src/libraries/TransientStateLibrary.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {ImmutableState} from "./ImmutableState.sol";
import {ActionConstants} from "../libraries/ActionConstants.sol";

/// @notice Abstract contract used to sync, send, and settle funds to the pool manager
/// @dev Note that sync() is called before any erc-20 transfer in `settle`.
abstract contract DeltaResolver is ImmutableState {
    using TransientStateLibrary for IPoolManager;

    /// @notice Emitted trying to settle a positive delta.
    error DeltaNotPositive(Currency currency);
    /// @notice Emitted trying to take a negative delta.
    error DeltaNotNegative(Currency currency);
    /// @notice Emitted when the contract does not have enough balance to wrap or unwrap.
    error InsufficientBalance();

    /// @notice Take an amount of currency out of the PoolManager
    /// @param currency Currency to take
    /// @param recipient Address to receive the currency
    /// @param amount Amount to take
    /// @dev Returns early if the amount is 0
    function _take(Currency currency, address recipient, uint256 amount) internal {
        if (amount == 0) return;
        poolManager.take(currency, recipient, amount);
    }

    /// @notice Pay and settle a currency to the PoolManager
    /// @dev The implementing contract must ensure that the `payer` is a secure address
    /// @param currency Currency to settle
    /// @param payer Address of the payer
    /// @param amount Amount to send
    /// @dev Returns early if the amount is 0
    function _settle(Currency currency, address payer, uint256 amount) internal {
        if (amount == 0) return;

        poolManager.sync(currency);
        if (currency.isAddressZero()) {
            poolManager.settle{value: amount}();
        } else {
            _pay(currency, payer, amount);
            poolManager.settle();
        }
    }

    /// @notice Abstract function for contracts to implement paying tokens to the poolManager
    /// @dev The recipient of the payment should be the poolManager
    /// @param token The token to settle. This is known not to be the native currency
    /// @param payer The address who should pay tokens
    /// @param amount The number of tokens to send
    function _pay(Currency token, address payer, uint256 amount) internal virtual;

    /// @notice Obtain the full amount owed by this contract (negative delta)
    /// @param currency Currency to get the delta for
    /// @return amount The amount owed by this contract as a uint256
    function _getFullDebt(Currency currency) internal view returns (uint256 amount) {
        int256 _amount = poolManager.currencyDelta(address(this), currency);
        // If the amount is positive, it should be taken not settled.
        if (_amount > 0) revert DeltaNotNegative(currency);
        // Casting is safe due to limits on the total supply of a pool
        amount = uint256(-_amount);
    }

    /// @notice Obtain the full credit owed to this contract (positive delta)
    /// @param currency Currency to get the delta for
    /// @return amount The amount owed to this contract as a uint256
    function _getFullCredit(Currency currency) internal view returns (uint256 amount) {
        int256 _amount = poolManager.currencyDelta(address(this), currency);
        // If the amount is negative, it should be settled not taken.
        if (_amount < 0) revert DeltaNotPositive(currency);
        amount = uint256(_amount);
    }

    /// @notice Calculates the amount for a settle action
    function _mapSettleAmount(uint256 amount, Currency currency) internal view returns (uint256) {
        if (amount == ActionConstants.CONTRACT_BALANCE) {
            return currency.balanceOfSelf();
        } else if (amount == ActionConstants.OPEN_DELTA) {
            return _getFullDebt(currency);
        } else {
            return amount;
        }
    }

    /// @notice Calculates the amount for a take action
    function _mapTakeAmount(uint256 amount, Currency currency) internal view returns (uint256) {
        if (amount == ActionConstants.OPEN_DELTA) {
            return _getFullCredit(currency);
        } else {
            return amount;
        }
    }

    /// @notice Calculates the sanitized amount before wrapping/unwrapping.
    /// @param inputCurrency The currency, either native or wrapped native, that this contract holds
    /// @param amount The amount to wrap or unwrap. Can be CONTRACT_BALANCE, OPEN_DELTA or a specific amount
    /// @param outputCurrency The currency after the wrap/unwrap that the user may owe a balance in on the poolManager
    function _mapWrapUnwrapAmount(Currency inputCurrency, uint256 amount, Currency outputCurrency)
        internal
        view
        returns (uint256)
    {
        // if wrapping, the balance in this contract is in ETH
        // if unwrapping, the balance in this contract is in WETH
        uint256 balance = inputCurrency.balanceOf(address(this));
        if (amount == ActionConstants.CONTRACT_BALANCE) {
            // return early to avoid unnecessary balance check
            return balance;
        }
        if (amount == ActionConstants.OPEN_DELTA) {
            // if wrapping, the open currency on the PoolManager is WETH.
            // if unwrapping, the open currency on the PoolManager is ETH.
            // note that we use the DEBT amount. Positive deltas can be taken and then wrapped.
            amount = _getFullDebt(outputCurrency);
        }
        if (amount > balance) revert InsufficientBalance();
        return amount;
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/EIP712_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IEIP712_v4} from "../interfaces/IEIP712_v4.sol";

/// @notice Generic EIP712 implementation
/// @dev Maintains cross-chain replay protection in the event of a fork
/// @dev Should not be delegatecall'd because DOMAIN_SEPARATOR returns the cached hash and does not recompute with the delegatecallers address
/// @dev Reference: https://github.com/Uniswap/permit2/blob/3f17e8db813189a03950dc7fc8382524a095c053/src/EIP712.sol
/// @dev Reference: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/7bd2b2aaf68c21277097166a9a51eb72ae239b34/contracts/utils/cryptography/EIP712.sol
contract EIP712_v4 is IEIP712_v4 {
    // Cache the domain separator as an immutable value, but also store the chain id that it
    // corresponds to, in order to invalidate the cached domain separator if the chain id changes.
    bytes32 private immutable _CACHED_DOMAIN_SEPARATOR;
    uint256 private immutable _CACHED_CHAIN_ID;
    bytes32 private immutable _HASHED_NAME;

    bytes32 private constant _TYPE_HASH =
        keccak256("EIP712Domain(string name,uint256 chainId,address verifyingContract)");

    constructor(string memory name) {
        _HASHED_NAME = keccak256(bytes(name));

        _CACHED_CHAIN_ID = block.chainid;
        _CACHED_DOMAIN_SEPARATOR = _buildDomainSeparator();
    }

    /// @inheritdoc IEIP712_v4
    function DOMAIN_SEPARATOR() public view returns (bytes32) {
        // uses cached version if chainid is unchanged from construction
        return block.chainid == _CACHED_CHAIN_ID ? _CACHED_DOMAIN_SEPARATOR : _buildDomainSeparator();
    }

    /// @notice Builds a domain separator using the current chainId and contract address.
    function _buildDomainSeparator() private view returns (bytes32) {
        return keccak256(abi.encode(_TYPE_HASH, _HASHED_NAME, block.chainid, address(this)));
    }

    /// @notice Creates an EIP-712 typed data hash
    function _hashTypedData(bytes32 dataHash) internal view returns (bytes32 digest) {
        // equal to keccak256(abi.encodePacked("\x19\x01", DOMAIN_SEPARATOR(), dataHash));
        bytes32 domainSeparator = DOMAIN_SEPARATOR();
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, hex"1901")
            mstore(add(fmp, 0x02), domainSeparator)
            mstore(add(fmp, 0x22), dataHash)
            digest := keccak256(fmp, 0x42)

            // now clean the memory we used
            mstore(fmp, 0) // fmp held "\x19\x01", domainSeparator
            mstore(add(fmp, 0x20), 0) // fmp+0x20 held domainSeparator, dataHash
            mstore(add(fmp, 0x40), 0) // fmp+0x40 held dataHash
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/ERC721Permit_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC721} from "solmate/src/tokens/ERC721.sol";
import {EIP712_v4} from "./EIP712_v4.sol";
import {ERC721PermitHash} from "../libraries/ERC721PermitHash.sol";
import {SignatureVerification} from "permit2/src/libraries/SignatureVerification.sol";

import {IERC721Permit_v4} from "../interfaces/IERC721Permit_v4.sol";
import {UnorderedNonce} from "./UnorderedNonce.sol";

/// @title ERC721 with permit
/// @notice Nonfungible tokens that support an approve via signature, i.e. permit
abstract contract ERC721Permit_v4 is ERC721, IERC721Permit_v4, EIP712_v4, UnorderedNonce {
    using SignatureVerification for bytes;

    /// @notice Computes the nameHash and versionHash
    constructor(string memory name_, string memory symbol_) ERC721(name_, symbol_) EIP712_v4(name_) {}

    /// @notice Checks if the block's timestamp is before a signature's deadline
    modifier checkSignatureDeadline(uint256 deadline) {
        if (block.timestamp > deadline) revert SignatureDeadlineExpired();
        _;
    }

    /// @inheritdoc IERC721Permit_v4
    function permit(address spender, uint256 tokenId, uint256 deadline, uint256 nonce, bytes calldata signature)
        external
        payable
        checkSignatureDeadline(deadline)
    {
        // the .verify function checks the owner is non-0
        address owner = _ownerOf[tokenId];

        bytes32 digest = ERC721PermitHash.hashPermit(spender, tokenId, nonce, deadline);
        signature.verify(_hashTypedData(digest), owner);

        _useUnorderedNonce(owner, nonce);
        _approve(owner, spender, tokenId);
    }

    /// @inheritdoc IERC721Permit_v4
    function permitForAll(
        address owner,
        address operator,
        bool approved,
        uint256 deadline,
        uint256 nonce,
        bytes calldata signature
    ) external payable checkSignatureDeadline(deadline) {
        bytes32 digest = ERC721PermitHash.hashPermitForAll(operator, approved, nonce, deadline);
        signature.verify(_hashTypedData(digest), owner);

        _useUnorderedNonce(owner, nonce);
        _approveForAll(owner, operator, approved);
    }

    /// @notice Enable or disable approval for a third party ("operator") to manage
    /// all of `msg.sender`'s assets
    /// @dev Emits the ApprovalForAll event. The contract MUST allow
    /// multiple operators per owner.
    /// @dev Override Solmate's ERC721 setApprovalForAll so setApprovalForAll() and permit() share the _approveForAll method
    /// @param operator Address to add to the set of authorized operators
    /// @param approved True if the operator is approved, false to revoke approval
    function setApprovalForAll(address operator, bool approved) public override {
        _approveForAll(msg.sender, operator, approved);
    }

    function _approveForAll(address owner, address operator, bool approved) internal {
        isApprovedForAll[owner][operator] = approved;
        emit ApprovalForAll(owner, operator, approved);
    }

    /// @notice Change or reaffirm the approved address for an NFT
    /// @dev override Solmate's ERC721 approve so approve() and permit() share the _approve method
    /// Passing a spender address of zero can be used to remove any outstanding approvals
    /// Throws error unless `msg.sender` is the current NFT owner,
    /// or an authorized operator of the current owner.
    /// @param spender The new approved NFT controller
    /// @param id The tokenId of the NFT to approve
    function approve(address spender, uint256 id) public override {
        address owner = _ownerOf[id];

        if (msg.sender != owner && !isApprovedForAll[owner][msg.sender]) revert Unauthorized();

        _approve(owner, spender, id);
    }

    function _approve(address owner, address spender, uint256 id) internal {
        getApproved[id] = spender;
        emit Approval(owner, spender, id);
    }

    function _isApprovedOrOwner(address spender, uint256 tokenId) internal view returns (bool) {
        return spender == ownerOf(tokenId) || getApproved[tokenId] == spender
            || isApprovedForAll[ownerOf(tokenId)][spender];
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/ImmutableState.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {IImmutableState} from "../interfaces/IImmutableState.sol";

/// @title Immutable State
/// @notice A collection of immutable state variables, commonly used across multiple contracts
contract ImmutableState is IImmutableState {
    /// @inheritdoc IImmutableState
    IPoolManager public immutable poolManager;

    /// @notice Thrown when the caller is not PoolManager
    error NotPoolManager();

    /// @notice Only allow calls from the PoolManager contract
    modifier onlyPoolManager() {
        if (msg.sender != address(poolManager)) revert NotPoolManager();
        _;
    }

    constructor(IPoolManager _poolManager) {
        poolManager = _poolManager;
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/Multicall_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IMulticall_v4} from "../interfaces/IMulticall_v4.sol";

/// @title Multicall_v4
/// @notice Enables calling multiple methods in a single call to the contract
abstract contract Multicall_v4 is IMulticall_v4 {
    /// @inheritdoc IMulticall_v4
    function multicall(bytes[] calldata data) external payable returns (bytes[] memory results) {
        results = new bytes[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            (bool success, bytes memory result) = address(this).delegatecall(data[i]);

            if (!success) {
                // bubble up the revert reason
                assembly {
                    revert(add(result, 0x20), mload(result))
                }
            }

            results[i] = result;
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/NativeWrapper.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IWETH9} from "../interfaces/external/IWETH9.sol";
import {ActionConstants} from "../libraries/ActionConstants.sol";
import {ImmutableState} from "./ImmutableState.sol";

/// @title Native Wrapper
/// @notice Used for wrapping and unwrapping native
abstract contract NativeWrapper is ImmutableState {
    /// @notice The address for WETH9
    IWETH9 public immutable WETH9;

    /// @notice Thrown when an unexpected address sends ETH to this contract
    error InvalidEthSender();

    constructor(IWETH9 _weth9) {
        WETH9 = _weth9;
    }

    /// @dev The amount should already be <= the current balance in this contract.
    function _wrap(uint256 amount) internal {
        if (amount > 0) WETH9.deposit{value: amount}();
    }

    /// @dev The amount should already be <= the current balance in this contract.
    function _unwrap(uint256 amount) internal {
        if (amount > 0) WETH9.withdraw(amount);
    }

    receive() external payable {
        if (msg.sender != address(WETH9) && msg.sender != address(poolManager)) revert InvalidEthSender();
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/Notifier.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ISubscriber} from "../interfaces/ISubscriber.sol";
import {INotifier} from "../interfaces/INotifier.sol";
import {CustomRevert} from "@uniswap/v4-core/src/libraries/CustomRevert.sol";
import {BalanceDelta} from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import {PositionInfo} from "../libraries/PositionInfoLibrary.sol";

/// @notice Notifier is used to opt in to sending updates to external contracts about position modifications or transfers
abstract contract Notifier is INotifier {
    using CustomRevert for *;

    ISubscriber private constant NO_SUBSCRIBER = ISubscriber(address(0));

    /// @inheritdoc INotifier
    uint256 public immutable unsubscribeGasLimit;

    /// @inheritdoc INotifier
    mapping(uint256 tokenId => ISubscriber subscriber) public subscriber;

    constructor(uint256 _unsubscribeGasLimit) {
        unsubscribeGasLimit = _unsubscribeGasLimit;
    }

    /// @notice Only allow callers that are approved as spenders or operators of the tokenId
    /// @dev to be implemented by the parent contract (PositionManager)
    /// @param caller the address of the caller
    /// @param tokenId the tokenId of the position
    modifier onlyIfApproved(address caller, uint256 tokenId) virtual;

    /// @notice Enforces that the PoolManager is locked.
    modifier onlyIfPoolManagerLocked() virtual;

    function _setUnsubscribed(uint256 tokenId) internal virtual;

    function _setSubscribed(uint256 tokenId) internal virtual;

    /// @inheritdoc INotifier
    function subscribe(uint256 tokenId, address newSubscriber, bytes calldata data)
        external
        payable
        onlyIfPoolManagerLocked
        onlyIfApproved(msg.sender, tokenId)
    {
        ISubscriber _subscriber = subscriber[tokenId];

        if (_subscriber != NO_SUBSCRIBER) revert AlreadySubscribed(tokenId, address(_subscriber));
        _setSubscribed(tokenId);

        subscriber[tokenId] = ISubscriber(newSubscriber);

        bool success = _call(newSubscriber, abi.encodeCall(ISubscriber.notifySubscribe, (tokenId, data)));

        if (!success) {
            newSubscriber.bubbleUpAndRevertWith(ISubscriber.notifySubscribe.selector, SubscriptionReverted.selector);
        }

        emit Subscription(tokenId, newSubscriber);
    }

    /// @inheritdoc INotifier
    function unsubscribe(uint256 tokenId)
        external
        payable
        onlyIfPoolManagerLocked
        onlyIfApproved(msg.sender, tokenId)
    {
        _unsubscribe(tokenId);
    }

    function _unsubscribe(uint256 tokenId) internal {
        ISubscriber _subscriber = subscriber[tokenId];

        if (_subscriber == NO_SUBSCRIBER) revert NotSubscribed();
        _setUnsubscribed(tokenId);

        delete subscriber[tokenId];

        if (address(_subscriber).code.length > 0) {
            // require that the remaining gas is sufficient to notify the subscriber
            // otherwise, users can select a gas limit where .notifyUnsubscribe hits OutOfGas yet the
            // transaction/unsubscription can still succeed
            if (gasleft() < unsubscribeGasLimit) GasLimitTooLow.selector.revertWith();
            try _subscriber.notifyUnsubscribe{gas: unsubscribeGasLimit}(tokenId) {} catch {}
        }

        emit Unsubscription(tokenId, address(_subscriber));
    }

    /// @dev note this function also deletes the subscriber address from the mapping
    function _removeSubscriberAndNotifyBurn(
        uint256 tokenId,
        address owner,
        PositionInfo info,
        uint256 liquidity,
        BalanceDelta feesAccrued
    ) internal {
        address _subscriber = address(subscriber[tokenId]);

        // remove the subscriber
        delete subscriber[tokenId];

        bool success =
            _call(_subscriber, abi.encodeCall(ISubscriber.notifyBurn, (tokenId, owner, info, liquidity, feesAccrued)));

        if (!success) {
            _subscriber.bubbleUpAndRevertWith(ISubscriber.notifyBurn.selector, BurnNotificationReverted.selector);
        }
    }

    function _notifyModifyLiquidity(uint256 tokenId, int256 liquidityChange, BalanceDelta feesAccrued) internal {
        address _subscriber = address(subscriber[tokenId]);

        bool success = _call(
            _subscriber, abi.encodeCall(ISubscriber.notifyModifyLiquidity, (tokenId, liquidityChange, feesAccrued))
        );

        if (!success) {
            _subscriber.bubbleUpAndRevertWith(
                ISubscriber.notifyModifyLiquidity.selector, ModifyLiquidityNotificationReverted.selector
            );
        }
    }

    function _call(address target, bytes memory encodedCall) internal returns (bool success) {
        if (target.code.length == 0) NoCodeSubscriber.selector.revertWith();
        assembly ("memory-safe") {
            success := call(gas(), target, 0, add(encodedCall, 0x20), mload(encodedCall), 0, 0)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/Permit2Forwarder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IPermit2Forwarder, IAllowanceTransfer} from "../interfaces/IPermit2Forwarder.sol";

/// @notice Permit2Forwarder allows permitting this contract as a spender on permit2
/// @dev This contract does not enforce the spender to be this contract, but that is the intended use case
contract Permit2Forwarder is IPermit2Forwarder {
    /// @notice the Permit2 contract to forward approvals
    IAllowanceTransfer public immutable permit2;

    constructor(IAllowanceTransfer _permit2) {
        permit2 = _permit2;
    }

    /// @inheritdoc IPermit2Forwarder
    function permit(address owner, IAllowanceTransfer.PermitSingle calldata permitSingle, bytes calldata signature)
        external
        payable
        returns (bytes memory err)
    {
        // use try/catch in case an actor front-runs the permit, which would DOS multicalls
        try permit2.permit(owner, permitSingle, signature) {}
        catch (bytes memory reason) {
            err = reason;
        }
    }

    /// @inheritdoc IPermit2Forwarder
    function permitBatch(address owner, IAllowanceTransfer.PermitBatch calldata _permitBatch, bytes calldata signature)
        external
        payable
        returns (bytes memory err)
    {
        // use try/catch in case an actor front-runs the permit, which would DOS multicalls
        try permit2.permit(owner, _permitBatch, signature) {}
        catch (bytes memory reason) {
            err = reason;
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/PoolInitializer_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ImmutableState} from "./ImmutableState.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IPoolInitializer_v4} from "../interfaces/IPoolInitializer_v4.sol";

/// @title Pool Initializer
/// @notice Initializes a Uniswap v4 Pool
/// @dev Enables create pool + mint liquidity in a single transaction with multicall
abstract contract PoolInitializer_v4 is ImmutableState, IPoolInitializer_v4 {
    /// @inheritdoc IPoolInitializer_v4
    function initializePool(PoolKey calldata key, uint160 sqrtPriceX96) external payable returns (int24) {
        try poolManager.initialize(key, sqrtPriceX96) returns (int24 tick) {
            return tick;
        } catch {
            return type(int24).max;
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/ReentrancyLock.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Locker} from "../libraries/Locker.sol";

/// @notice A transient reentrancy lock, that stores the caller's address as the lock
contract ReentrancyLock {
    error ContractLocked();

    modifier isNotLocked() {
        if (Locker.get() != address(0)) revert ContractLocked();
        Locker.set(msg.sender);
        _;
        Locker.set(address(0));
    }

    function _getLocker() internal view returns (address) {
        return Locker.get();
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/SafeCallback.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IUnlockCallback} from "@uniswap/v4-core/src/interfaces/callback/IUnlockCallback.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {ImmutableState} from "./ImmutableState.sol";

/// @title Safe Callback
/// @notice A contract that only allows the Uniswap v4 PoolManager to call the unlockCallback
abstract contract SafeCallback is ImmutableState, IUnlockCallback {
    constructor(IPoolManager _poolManager) ImmutableState(_poolManager) {}

    /// @inheritdoc IUnlockCallback
    /// @dev We force the onlyPoolManager modifier by exposing a virtual function after the onlyPoolManager check.
    function unlockCallback(bytes calldata data) external onlyPoolManager returns (bytes memory) {
        return _unlockCallback(data);
    }

    /// @dev to be implemented by the child contract, to safely guarantee the logic is only executed by the PoolManager
    function _unlockCallback(bytes calldata data) internal virtual returns (bytes memory);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/base/UnorderedNonce.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IUnorderedNonce} from "../interfaces/IUnorderedNonce.sol";

/// @title Unordered Nonce
/// @notice Contract state and methods for using unordered nonces in signatures
contract UnorderedNonce is IUnorderedNonce {
    /// @inheritdoc IUnorderedNonce
    mapping(address owner => mapping(uint256 word => uint256 bitmap)) public nonces;

    /// @notice Consume a nonce, reverting if it has already been used
    /// @param owner address, the owner/signer of the nonce
    /// @param nonce uint256, the nonce to consume. The top 248 bits are the word, the bottom 8 bits indicate the bit position
    function _useUnorderedNonce(address owner, uint256 nonce) internal {
        uint256 wordPos = nonce >> 8;
        uint256 bitPos = uint8(nonce);

        uint256 bit = 1 << bitPos;
        uint256 flipped = nonces[owner][wordPos] ^= bit;
        if (flipped & bit == 0) revert NonceAlreadyUsed();
    }

    /// @inheritdoc IUnorderedNonce
    function revokeNonce(uint256 nonce) external payable {
        _useUnorderedNonce(msg.sender, nonce);
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/external/IWETH9.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title IWETH9
interface IWETH9 is IERC20 {
    /// @notice Deposit ether to get wrapped ether
    function deposit() external payable;

    /// @notice Withdraw wrapped ether to get ether
    function withdraw(uint256) external;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IEIP712_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title IEIP712_v4
/// @notice Interface for the EIP712 contract
interface IEIP712_v4 {
    /// @notice Returns the domain separator for the current chain.
    /// @return bytes32 The domain separator
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IERC721Permit_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title IERC721Permit_v4
/// @notice Interface for the ERC721Permit_v4 contract
interface IERC721Permit_v4 {
    error SignatureDeadlineExpired();
    error NoSelfPermit();
    error Unauthorized();

    /// @notice Approve of a specific token ID for spending by spender via signature
    /// @param spender The account that is being approved
    /// @param tokenId The ID of the token that is being approved for spending
    /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
    /// @param nonce a unique value, for an owner, to prevent replay attacks; an unordered nonce where the top 248 bits correspond to a word and the bottom 8 bits calculate the bit position of the word
    /// @param signature Concatenated data from a valid secp256k1 signature from the holder, i.e. abi.encodePacked(r, s, v)
    /// @dev payable so it can be multicalled with NATIVE related actions
    function permit(address spender, uint256 tokenId, uint256 deadline, uint256 nonce, bytes calldata signature)
        external
        payable;

    /// @notice Set an operator with full permission to an owner's tokens via signature
    /// @param owner The address that is setting the operator
    /// @param operator The address that will be set as an operator for the owner
    /// @param approved The permission to set on the operator
    /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
    /// @param nonce a unique value, for an owner, to prevent replay attacks; an unordered nonce where the top 248 bits correspond to a word and the bottom 8 bits calculate the bit position of the word
    /// @param signature Concatenated data from a valid secp256k1 signature from the holder, i.e. abi.encodePacked(r, s, v)
    /// @dev payable so it can be multicalled with NATIVE related actions
    function permitForAll(
        address owner,
        address operator,
        bool approved,
        uint256 deadline,
        uint256 nonce,
        bytes calldata signature
    ) external payable;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IImmutableState.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";

/// @title IImmutableState
/// @notice Interface for the ImmutableState contract
interface IImmutableState {
    /// @notice The Uniswap v4 PoolManager contract
    function poolManager() external view returns (IPoolManager);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IMsgSender.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title IMsgSender
/// @notice Interface for contracts that expose the original caller
interface IMsgSender {
    /// @notice Returns the address of the original caller (msg.sender)
    /// @dev Uniswap v4 periphery contracts implement a callback pattern which lose
    /// the original msg.sender caller context. This view function provides a way for
    /// integrating contracts (e.g. hooks) to access the original caller address.
    /// @return The address of the original caller
    function msgSender() external view returns (address);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IMulticall_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title IMulticall_v4
/// @notice Interface for the Multicall_v4 contract
interface IMulticall_v4 {
    /// @notice Call multiple functions in the current contract and return the data from all of them if they all succeed
    /// @dev The `msg.value` is passed onto all subcalls, even if a previous subcall has consumed the ether.
    /// Subcalls can instead use `address(this).value` to see the available ETH, and consume it using {value: x}.
    /// @param data The encoded function data for each of the calls to make to this contract
    /// @return results The results from each of the calls passed in via data
    function multicall(bytes[] calldata data) external payable returns (bytes[] memory results);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/INotifier.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ISubscriber} from "./ISubscriber.sol";

/// @title INotifier
/// @notice Interface for the Notifier contract
interface INotifier {
    /// @notice Thrown when unsubscribing without a subscriber
    error NotSubscribed();
    /// @notice Thrown when a subscriber does not have code
    error NoCodeSubscriber();
    /// @notice Thrown when a user specifies a gas limit too low to avoid valid unsubscribe notifications
    error GasLimitTooLow();
    /// @notice Wraps the revert message of the subscriber contract on a reverting subscription
    error SubscriptionReverted(address subscriber, bytes reason);
    /// @notice Wraps the revert message of the subscriber contract on a reverting modify liquidity notification
    error ModifyLiquidityNotificationReverted(address subscriber, bytes reason);
    /// @notice Wraps the revert message of the subscriber contract on a reverting burn notification
    error BurnNotificationReverted(address subscriber, bytes reason);
    /// @notice Thrown when a tokenId already has a subscriber
    error AlreadySubscribed(uint256 tokenId, address subscriber);

    /// @notice Emitted on a successful call to subscribe
    event Subscription(uint256 indexed tokenId, address indexed subscriber);
    /// @notice Emitted on a successful call to unsubscribe
    event Unsubscription(uint256 indexed tokenId, address indexed subscriber);

    /// @notice Returns the subscriber for a respective position
    /// @param tokenId the ERC721 tokenId
    /// @return subscriber the subscriber contract
    function subscriber(uint256 tokenId) external view returns (ISubscriber subscriber);

    /// @notice Enables the subscriber to receive notifications for a respective position
    /// @param tokenId the ERC721 tokenId
    /// @param newSubscriber the address of the subscriber contract
    /// @param data caller-provided data that's forwarded to the subscriber contract
    /// @dev Calling subscribe when a position is already subscribed will revert
    /// @dev payable so it can be multicalled with NATIVE related actions
    /// @dev will revert if pool manager is locked
    function subscribe(uint256 tokenId, address newSubscriber, bytes calldata data) external payable;

    /// @notice Removes the subscriber from receiving notifications for a respective position
    /// @param tokenId the ERC721 tokenId
    /// @dev Callers must specify a high gas limit (remaining gas should be higher than unsubscriberGasLimit) such that the subscriber can be notified
    /// @dev payable so it can be multicalled with NATIVE related actions
    /// @dev Must always allow a user to unsubscribe. In the case of a malicious subscriber, a user can always unsubscribe safely, ensuring liquidity is always modifiable.
    /// @dev will revert if pool manager is locked
    function unsubscribe(uint256 tokenId) external payable;

    /// @notice Returns and determines the maximum allowable gas-used for notifying unsubscribe
    /// @return uint256 the maximum gas limit when notifying a subscriber's `notifyUnsubscribe` function
    function unsubscribeGasLimit() external view returns (uint256);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IPermit2Forwarder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";

/// @title IPermit2Forwarder
/// @notice Interface for the Permit2Forwarder contract
interface IPermit2Forwarder {
    /// @notice allows forwarding a single permit to permit2
    /// @dev this function is payable to allow multicall with NATIVE based actions
    /// @param owner the owner of the tokens
    /// @param permitSingle the permit data
    /// @param signature the signature of the permit; abi.encodePacked(r, s, v)
    /// @return err the error returned by a reverting permit call, empty if successful
    function permit(address owner, IAllowanceTransfer.PermitSingle calldata permitSingle, bytes calldata signature)
        external
        payable
        returns (bytes memory err);

    /// @notice allows forwarding batch permits to permit2
    /// @dev this function is payable to allow multicall with NATIVE based actions
    /// @param owner the owner of the tokens
    /// @param _permitBatch a batch of approvals
    /// @param signature the signature of the permit; abi.encodePacked(r, s, v)
    /// @return err the error returned by a reverting permit call, empty if successful
    function permitBatch(address owner, IAllowanceTransfer.PermitBatch calldata _permitBatch, bytes calldata signature)
        external
        payable
        returns (bytes memory err);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IPoolInitializer_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";

/// @title IPoolInitializer_v4
/// @notice Interface for the PoolInitializer_v4 contract
interface IPoolInitializer_v4 {
    /// @notice Initialize a Uniswap v4 Pool
    /// @dev If the pool is already initialized, this function will not revert and just return type(int24).max
    /// @param key The PoolKey of the pool to initialize
    /// @param sqrtPriceX96 The initial starting price of the pool, expressed as a sqrtPriceX96
    /// @return The current tick of the pool, or type(int24).max if the pool creation failed, or the pool already existed
    function initializePool(PoolKey calldata key, uint160 sqrtPriceX96) external payable returns (int24);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IPositionDescriptor.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./IPositionManager.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";

/// @title IPositionDescriptor
/// @notice Interface for the PositionDescriptor contract
interface IPositionDescriptor {
    error InvalidTokenId(uint256 tokenId);

    /// @notice Produces the URI describing a particular token ID
    /// @dev Note this URI may be a data: URI with the JSON contents directly inlined
    /// @param positionManager The position manager for which to describe the token
    /// @param tokenId The ID of the token for which to produce a description, which may not be valid
    /// @return The URI of the ERC721-compliant metadata
    function tokenURI(IPositionManager positionManager, uint256 tokenId) external view returns (string memory);

    /// @notice Returns true if currency0 has higher priority than currency1
    /// @param currency0 The first currency address
    /// @param currency1 The second currency address
    /// @return True if currency0 has higher priority than currency1
    function flipRatio(address currency0, address currency1) external view returns (bool);

    /// @notice Returns the priority of a currency.
    /// For certain currencies on mainnet, the smaller the currency, the higher the priority
    /// And those with the higher priority values (more positive values) will be in the numerator of the price ratio
    /// @param currency The currency address
    /// @return The priority of the currency
    function currencyRatioPriority(address currency) external view returns (int256);

    /// @return The wrapped native token for this descriptor
    function wrappedNative() external view returns (address);

    /// @return The native currency label for this descriptor
    function nativeCurrencyLabel() external view returns (string memory);

    /// @return The pool manager for this descriptor
    function poolManager() external view returns (IPoolManager);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IPositionManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {PositionInfo} from "../libraries/PositionInfoLibrary.sol";

import {INotifier} from "./INotifier.sol";
import {IImmutableState} from "./IImmutableState.sol";
import {IERC721Permit_v4} from "./IERC721Permit_v4.sol";
import {IEIP712_v4} from "./IEIP712_v4.sol";
import {IMulticall_v4} from "./IMulticall_v4.sol";
import {IPoolInitializer_v4} from "./IPoolInitializer_v4.sol";
import {IUnorderedNonce} from "./IUnorderedNonce.sol";
import {IPermit2Forwarder} from "./IPermit2Forwarder.sol";

/// @title IPositionManager
/// @notice Interface for the PositionManager contract
interface IPositionManager is
    INotifier,
    IImmutableState,
    IERC721Permit_v4,
    IEIP712_v4,
    IMulticall_v4,
    IPoolInitializer_v4,
    IUnorderedNonce,
    IPermit2Forwarder
{
    /// @notice Thrown when the caller is not approved to modify a position
    error NotApproved(address caller);
    /// @notice Thrown when the block.timestamp exceeds the user-provided deadline
    error DeadlinePassed(uint256 deadline);
    /// @notice Thrown when calling transfer, subscribe, or unsubscribe when the PoolManager is unlocked.
    /// @dev This is to prevent hooks from being able to trigger notifications at the same time the position is being modified.
    error PoolManagerMustBeLocked();

    /// @notice Unlocks Uniswap v4 PoolManager and batches actions for modifying liquidity
    /// @dev This is the standard entrypoint for the PositionManager
    /// @param unlockData is an encoding of actions, and parameters for those actions
    /// @param deadline is the deadline for the batched actions to be executed
    function modifyLiquidities(bytes calldata unlockData, uint256 deadline) external payable;

    /// @notice Batches actions for modifying liquidity without unlocking v4 PoolManager
    /// @dev This must be called by a contract that has already unlocked the v4 PoolManager
    /// @param actions the actions to perform
    /// @param params the parameters to provide for the actions
    function modifyLiquiditiesWithoutUnlock(bytes calldata actions, bytes[] calldata params) external payable;

    /// @notice Used to get the ID that will be used for the next minted liquidity position
    /// @return uint256 The next token ID
    function nextTokenId() external view returns (uint256);

    /// @notice Returns the liquidity of a position
    /// @param tokenId the ERC721 tokenId
    /// @return liquidity the position's liquidity, as a liquidityAmount
    /// @dev this value can be processed as an amount0 and amount1 by using the LiquidityAmounts library
    function getPositionLiquidity(uint256 tokenId) external view returns (uint128 liquidity);

    /// @notice Returns the pool key and position info of a position
    /// @param tokenId the ERC721 tokenId
    /// @return poolKey the pool key of the position
    /// @return PositionInfo a uint256 packed value holding information about the position including the range (tickLower, tickUpper)
    function getPoolAndPositionInfo(uint256 tokenId) external view returns (PoolKey memory, PositionInfo);

    /// @notice Returns the position info of a position
    /// @param tokenId the ERC721 tokenId
    /// @return a uint256 packed value holding information about the position including the range (tickLower, tickUpper)
    function positionInfo(uint256 tokenId) external view returns (PositionInfo);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/ISubscriber.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BalanceDelta} from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import {PositionInfo} from "../libraries/PositionInfoLibrary.sol";

/// @title ISubscriber
/// @notice Interface that a Subscriber contract should implement to receive updates from the v4 position manager
interface ISubscriber {
    /// @notice Called when a position subscribes to this subscriber contract
    /// @param tokenId the token ID of the position
    /// @param data additional data passed in by the caller
    function notifySubscribe(uint256 tokenId, bytes memory data) external;

    /// @notice Called when a position unsubscribes from the subscriber
    /// @dev This call's gas is capped at `unsubscribeGasLimit` (set at deployment)
    /// @dev Because of EIP-150, solidity may only allocate 63/64 of gasleft()
    /// @param tokenId the token ID of the position
    function notifyUnsubscribe(uint256 tokenId) external;

    /// @notice Called when a position is burned
    /// @param tokenId the token ID of the position
    /// @param owner the current owner of the tokenId
    /// @param info information about the position
    /// @param liquidity the amount of liquidity decreased in the position, may be 0
    /// @param feesAccrued the fees accrued by the position if liquidity was decreased
    function notifyBurn(uint256 tokenId, address owner, PositionInfo info, uint256 liquidity, BalanceDelta feesAccrued)
        external;

    /// @notice Called when a position modifies its liquidity or collects fees
    /// @param tokenId the token ID of the position
    /// @param liquidityChange the change in liquidity on the underlying position
    /// @param feesAccrued the fees to be collected from the position as a result of the modifyLiquidity call
    /// @dev Note that feesAccrued can be artificially inflated by a malicious user
    /// Pools with a single liquidity position can inflate feeGrowthGlobal (and consequently feesAccrued) by donating to themselves;
    /// atomically donating and collecting fees within the same unlockCallback may further inflate feeGrowthGlobal/feesAccrued
    function notifyModifyLiquidity(uint256 tokenId, int256 liquidityChange, BalanceDelta feesAccrued) external;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IUnorderedNonce.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title IUnorderedNonce
/// @notice Interface for the UnorderedNonce contract
interface IUnorderedNonce {
    error NonceAlreadyUsed();

    /// @notice mapping of nonces consumed by each address, where a nonce is a single bit on the 256-bit bitmap
    /// @dev word is at most type(uint248).max
    function nonces(address owner, uint256 word) external view returns (uint256);

    /// @notice Revoke a nonce by spending it, preventing it from being used again
    /// @dev Used in cases where a valid nonce has not been broadcasted onchain, and the owner wants to revoke the validity of the nonce
    /// @dev payable so it can be multicalled with native-token related actions
    function revokeNonce(uint256 nonce) external payable;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/interfaces/IV4Router.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {PathKey} from "../libraries/PathKey.sol";
import {IImmutableState} from "./IImmutableState.sol";

/// @title IV4Router
/// @notice Interface for the V4Router contract
interface IV4Router is IImmutableState {
    /// @notice Emitted when an exactInput swap does not receive its minAmountOut
    error V4TooLittleReceived(uint256 minAmountOutReceived, uint256 amountReceived);
    /// @notice Emitted when an exactOutput is asked for more than its maxAmountIn
    error V4TooMuchRequested(uint256 maxAmountInRequested, uint256 amountRequested);

    /// @notice Parameters for a single-hop exact-input swap
    struct ExactInputSingleParams {
        PoolKey poolKey;
        bool zeroForOne;
        uint128 amountIn;
        uint128 amountOutMinimum;
        bytes hookData;
    }

    /// @notice Parameters for a multi-hop exact-input swap
    struct ExactInputParams {
        Currency currencyIn;
        PathKey[] path;
        uint128 amountIn;
        uint128 amountOutMinimum;
    }

    /// @notice Parameters for a single-hop exact-output swap
    struct ExactOutputSingleParams {
        PoolKey poolKey;
        bool zeroForOne;
        uint128 amountOut;
        uint128 amountInMaximum;
        bytes hookData;
    }

    /// @notice Parameters for a multi-hop exact-output swap
    struct ExactOutputParams {
        Currency currencyOut;
        PathKey[] path;
        uint128 amountOut;
        uint128 amountInMaximum;
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/libraries/ActionConstants.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Action Constants
/// @notice Common constants used in actions
/// @dev Constants are gas efficient alternatives to their literal values
library ActionConstants {
    /// @notice used to signal that an action should use the input value of the open delta on the pool manager
    /// or of the balance that the contract holds
    uint128 internal constant OPEN_DELTA = 0;
    /// @notice used to signal that an action should use the contract's entire balance of a currency
    /// This value is equivalent to 1<<255, i.e. a singular 1 in the most significant bit.
    uint256 internal constant CONTRACT_BALANCE = 0x8000000000000000000000000000000000000000000000000000000000000000;

    /// @notice used to signal that the recipient of an action should be the msgSender
    address internal constant MSG_SENDER = address(1);

    /// @notice used to signal that the recipient of an action should be the address(this)
    address internal constant ADDRESS_THIS = address(2);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/libraries/Actions.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Library to define different pool actions.
/// @dev These are suggested common commands, however additional commands should be defined as required
/// Some of these actions are not supported in the Router contracts or Position Manager contracts, but are left as they may be helpful commands for other peripheral contracts.
library Actions {
    // pool actions
    // liquidity actions
    uint256 internal constant INCREASE_LIQUIDITY = 0x00;
    uint256 internal constant DECREASE_LIQUIDITY = 0x01;
    uint256 internal constant MINT_POSITION = 0x02;
    uint256 internal constant BURN_POSITION = 0x03;
    uint256 internal constant INCREASE_LIQUIDITY_FROM_DELTAS = 0x04;
    uint256 internal constant MINT_POSITION_FROM_DELTAS = 0x05;

    // swapping
    uint256 internal constant SWAP_EXACT_IN_SINGLE = 0x06;
    uint256 internal constant SWAP_EXACT_IN = 0x07;
    uint256 internal constant SWAP_EXACT_OUT_SINGLE = 0x08;
    uint256 internal constant SWAP_EXACT_OUT = 0x09;

    // donate
    // note this is not supported in the position manager or router
    uint256 internal constant DONATE = 0x0a;

    // closing deltas on the pool manager
    // settling
    uint256 internal constant SETTLE = 0x0b;
    uint256 internal constant SETTLE_ALL = 0x0c;
    uint256 internal constant SETTLE_PAIR = 0x0d;
    // taking
    uint256 internal constant TAKE = 0x0e;
    uint256 internal constant TAKE_ALL = 0x0f;
    uint256 internal constant TAKE_PORTION = 0x10;
    uint256 internal constant TAKE_PAIR = 0x11;

    uint256 internal constant CLOSE_CURRENCY = 0x12;
    uint256 internal constant CLEAR_OR_TAKE = 0x13;
    uint256 internal constant SWEEP = 0x14;

    uint256 internal constant WRAP = 0x15;
    uint256 internal constant UNWRAP = 0x16;

    // minting/burning 6909s to close deltas
    // note this is not supported in the position manager or router
    uint256 internal constant MINT_6909 = 0x17;
    uint256 internal constant BURN_6909 = 0x18;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/libraries/CalldataDecoder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {IV4Router} from "../interfaces/IV4Router.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";

/// @title Library for abi decoding in calldata
library CalldataDecoder {
    using CalldataDecoder for bytes;

    error SliceOutOfBounds();

    /// @notice mask used for offsets and lengths to ensure no overflow
    /// @dev no sane abi encoding will pass in an offset or length greater than type(uint32).max
    ///      (note that this does deviate from standard solidity behavior and offsets/lengths will
    ///      be interpreted as mod type(uint32).max which will only impact malicious/buggy callers)
    uint256 constant OFFSET_OR_LENGTH_MASK = 0xffffffff;
    uint256 constant OFFSET_OR_LENGTH_MASK_AND_WORD_ALIGN = 0xffffffe0;

    /// @notice equivalent to SliceOutOfBounds.selector, stored in least-significant bits
    uint256 constant SLICE_ERROR_SELECTOR = 0x3b99b53d;

    /// @dev equivalent to: abi.decode(params, (bytes, bytes[])) in calldata (requires strict abi encoding)
    function decodeActionsRouterParams(bytes calldata _bytes)
        internal
        pure
        returns (bytes calldata actions, bytes[] calldata params)
    {
        assembly ("memory-safe") {
            // Strict encoding requires that the data begin with:
            // 0x00: 0x40 (offset to `actions.length`)
            // 0x20: 0x60 + actions.length (offset to `params.length`)
            // 0x40: `actions.length`
            // 0x60: beginning of actions

            // Verify actions offset matches strict encoding
            let invalidData := xor(calldataload(_bytes.offset), 0x40)
            actions.offset := add(_bytes.offset, 0x60)
            actions.length := and(calldataload(add(_bytes.offset, 0x40)), OFFSET_OR_LENGTH_MASK)

            // Round actions length up to be word-aligned, and add 0x60 (for the first 3 words of encoding)
            let paramsLengthOffset := add(and(add(actions.length, 0x1f), OFFSET_OR_LENGTH_MASK_AND_WORD_ALIGN), 0x60)
            // Verify params offset matches strict encoding
            invalidData := or(invalidData, xor(calldataload(add(_bytes.offset, 0x20)), paramsLengthOffset))
            let paramsLengthPointer := add(_bytes.offset, paramsLengthOffset)
            params.length := and(calldataload(paramsLengthPointer), OFFSET_OR_LENGTH_MASK)
            params.offset := add(paramsLengthPointer, 0x20)

            // Expected offset for `params[0]` is params.length * 32
            // As the first `params.length` slots are pointers to each of the array element lengths
            let tailOffset := shl(5, params.length)
            let expectedOffset := tailOffset

            for { let offset := 0 } lt(offset, tailOffset) { offset := add(offset, 32) } {
                let itemLengthOffset := calldataload(add(params.offset, offset))
                // Verify that the offset matches the expected offset from strict encoding
                invalidData := or(invalidData, xor(itemLengthOffset, expectedOffset))
                let itemLengthPointer := add(params.offset, itemLengthOffset)
                let length :=
                    add(and(add(calldataload(itemLengthPointer), 0x1f), OFFSET_OR_LENGTH_MASK_AND_WORD_ALIGN), 0x20)
                expectedOffset := add(expectedOffset, length)
            }

            // if the data encoding was invalid, or the provided bytes string isnt as long as the encoding says, revert
            if or(invalidData, lt(add(_bytes.length, _bytes.offset), add(params.offset, expectedOffset))) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
        }
    }

    /// @dev equivalent to: abi.decode(params, (uint256, uint256, uint128, uint128, bytes)) in calldata
    function decodeModifyLiquidityParams(bytes calldata params)
        internal
        pure
        returns (uint256 tokenId, uint256 liquidity, uint128 amount0, uint128 amount1, bytes calldata hookData)
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            tokenId := calldataload(params.offset)
            liquidity := calldataload(add(params.offset, 0x20))
            amount0 := calldataload(add(params.offset, 0x40))
            amount1 := calldataload(add(params.offset, 0x60))
        }

        hookData = params.toBytes(4);
    }

    /// @dev equivalent to: abi.decode(params, (uint256, uint128, uint128, bytes)) in calldata
    function decodeIncreaseLiquidityFromDeltasParams(bytes calldata params)
        internal
        pure
        returns (uint256 tokenId, uint128 amount0Max, uint128 amount1Max, bytes calldata hookData)
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            tokenId := calldataload(params.offset)
            amount0Max := calldataload(add(params.offset, 0x20))
            amount1Max := calldataload(add(params.offset, 0x40))
        }

        hookData = params.toBytes(3);
    }

    /// @dev equivalent to: abi.decode(params, (PoolKey, int24, int24, uint256, uint128, uint128, address, bytes)) in calldata
    function decodeMintParams(bytes calldata params)
        internal
        pure
        returns (
            PoolKey calldata poolKey,
            int24 tickLower,
            int24 tickUpper,
            uint256 liquidity,
            uint128 amount0Max,
            uint128 amount1Max,
            address owner,
            bytes calldata hookData
        )
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            poolKey := params.offset
            tickLower := calldataload(add(params.offset, 0xa0))
            tickUpper := calldataload(add(params.offset, 0xc0))
            liquidity := calldataload(add(params.offset, 0xe0))
            amount0Max := calldataload(add(params.offset, 0x100))
            amount1Max := calldataload(add(params.offset, 0x120))
            owner := calldataload(add(params.offset, 0x140))
        }
        hookData = params.toBytes(11);
    }

    /// @dev equivalent to: abi.decode(params, (PoolKey, int24, int24, uint128, uint128, address, bytes)) in calldata
    function decodeMintFromDeltasParams(bytes calldata params)
        internal
        pure
        returns (
            PoolKey calldata poolKey,
            int24 tickLower,
            int24 tickUpper,
            uint128 amount0Max,
            uint128 amount1Max,
            address owner,
            bytes calldata hookData
        )
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            poolKey := params.offset
            tickLower := calldataload(add(params.offset, 0xa0))
            tickUpper := calldataload(add(params.offset, 0xc0))
            amount0Max := calldataload(add(params.offset, 0xe0))
            amount1Max := calldataload(add(params.offset, 0x100))
            owner := calldataload(add(params.offset, 0x120))
        }

        hookData = params.toBytes(10);
    }

    /// @dev equivalent to: abi.decode(params, (uint256, uint128, uint128, bytes)) in calldata
    function decodeBurnParams(bytes calldata params)
        internal
        pure
        returns (uint256 tokenId, uint128 amount0Min, uint128 amount1Min, bytes calldata hookData)
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            tokenId := calldataload(params.offset)
            amount0Min := calldataload(add(params.offset, 0x20))
            amount1Min := calldataload(add(params.offset, 0x40))
        }

        hookData = params.toBytes(3);
    }

    /// @dev equivalent to: abi.decode(params, (IV4Router.ExactInputParams))
    function decodeSwapExactInParams(bytes calldata params)
        internal
        pure
        returns (IV4Router.ExactInputParams calldata swapParams)
    {
        // ExactInputParams is a variable length struct so we just have to look up its location
        assembly ("memory-safe") {
            // only safety checks for the minimum length, where path is empty
            // 0xa0 = 5 * 0x20 -> 3 elements, path offset, and path length 0
            if lt(params.length, 0xa0) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            swapParams := add(params.offset, calldataload(params.offset))
        }
    }

    /// @dev equivalent to: abi.decode(params, (IV4Router.ExactInputSingleParams))
    function decodeSwapExactInSingleParams(bytes calldata params)
        internal
        pure
        returns (IV4Router.ExactInputSingleParams calldata swapParams)
    {
        // ExactInputSingleParams is a variable length struct so we just have to look up its location
        assembly ("memory-safe") {
            // only safety checks for the minimum length, where hookData is empty
            // 0x140 = 10 * 0x20 -> 8 elements, bytes offset, and bytes length 0
            if lt(params.length, 0x140) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            swapParams := add(params.offset, calldataload(params.offset))
        }
    }

    /// @dev equivalent to: abi.decode(params, (IV4Router.ExactOutputParams))
    function decodeSwapExactOutParams(bytes calldata params)
        internal
        pure
        returns (IV4Router.ExactOutputParams calldata swapParams)
    {
        // ExactOutputParams is a variable length struct so we just have to look up its location
        assembly ("memory-safe") {
            // only safety checks for the minimum length, where path is empty
            // 0xa0 = 5 * 0x20 -> 3 elements, path offset, and path length 0
            if lt(params.length, 0xa0) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            swapParams := add(params.offset, calldataload(params.offset))
        }
    }

    /// @dev equivalent to: abi.decode(params, (IV4Router.ExactOutputSingleParams))
    function decodeSwapExactOutSingleParams(bytes calldata params)
        internal
        pure
        returns (IV4Router.ExactOutputSingleParams calldata swapParams)
    {
        // ExactOutputSingleParams is a variable length struct so we just have to look up its location
        assembly ("memory-safe") {
            // only safety checks for the minimum length, where hookData is empty
            // 0x140 = 10 * 0x20 -> 8 elements, bytes offset, and bytes length 0
            if lt(params.length, 0x140) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            swapParams := add(params.offset, calldataload(params.offset))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency)) in calldata
    function decodeCurrency(bytes calldata params) internal pure returns (Currency currency) {
        assembly ("memory-safe") {
            if lt(params.length, 0x20) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, Currency)) in calldata
    function decodeCurrencyPair(bytes calldata params) internal pure returns (Currency currency0, Currency currency1) {
        assembly ("memory-safe") {
            if lt(params.length, 0x40) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency0 := calldataload(params.offset)
            currency1 := calldataload(add(params.offset, 0x20))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, Currency, address)) in calldata
    function decodeCurrencyPairAndAddress(bytes calldata params)
        internal
        pure
        returns (Currency currency0, Currency currency1, address _address)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x60) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency0 := calldataload(params.offset)
            currency1 := calldataload(add(params.offset, 0x20))
            _address := calldataload(add(params.offset, 0x40))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, address)) in calldata
    function decodeCurrencyAndAddress(bytes calldata params)
        internal
        pure
        returns (Currency currency, address _address)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x40) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
            _address := calldataload(add(params.offset, 0x20))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, address, uint256)) in calldata
    function decodeCurrencyAddressAndUint256(bytes calldata params)
        internal
        pure
        returns (Currency currency, address _address, uint256 amount)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x60) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
            _address := calldataload(add(params.offset, 0x20))
            amount := calldataload(add(params.offset, 0x40))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, uint256)) in calldata
    function decodeCurrencyAndUint256(bytes calldata params)
        internal
        pure
        returns (Currency currency, uint256 amount)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x40) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
            amount := calldataload(add(params.offset, 0x20))
        }
    }

    /// @dev equivalent to: abi.decode(params, (uint256)) in calldata
    function decodeUint256(bytes calldata params) internal pure returns (uint256 amount) {
        assembly ("memory-safe") {
            if lt(params.length, 0x20) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            amount := calldataload(params.offset)
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, uint256, bool)) in calldata
    function decodeCurrencyUint256AndBool(bytes calldata params)
        internal
        pure
        returns (Currency currency, uint256 amount, bool boolean)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x60) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
            amount := calldataload(add(params.offset, 0x20))
            boolean := calldataload(add(params.offset, 0x40))
        }
    }

    /// @notice Decode the `_arg`-th element in `_bytes` as `bytes`
    /// @param _bytes The input bytes string to extract a bytes string from
    /// @param _arg The index of the argument to extract
    function toBytes(bytes calldata _bytes, uint256 _arg) internal pure returns (bytes calldata res) {
        uint256 length;
        assembly ("memory-safe") {
            // The offset of the `_arg`-th element is `32 * arg`, which stores the offset of the length pointer.
            // shl(5, x) is equivalent to mul(32, x)
            let lengthPtr :=
                add(_bytes.offset, and(calldataload(add(_bytes.offset, shl(5, _arg))), OFFSET_OR_LENGTH_MASK))
            // the number of bytes in the bytes string
            length := and(calldataload(lengthPtr), OFFSET_OR_LENGTH_MASK)
            // the offset where the bytes string begins
            let offset := add(lengthPtr, 0x20)
            // assign the return parameters
            res.length := length
            res.offset := offset

            // if the provided bytes string isnt as long as the encoding says, revert
            if lt(add(_bytes.length, _bytes.offset), add(length, offset)) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/libraries/ERC721PermitHash.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library ERC721PermitHash {
    /// @dev Value is equal to keccak256("Permit(address spender,uint256 tokenId,uint256 nonce,uint256 deadline)");
    bytes32 constant PERMIT_TYPEHASH = 0x49ecf333e5b8c95c40fdafc95c1ad136e8914a8fb55e9dc8bb01eaa83a2df9ad;

    /// @dev Value is equal to keccak256("PermitForAll(address operator,bool approved,uint256 nonce,uint256 deadline)");
    bytes32 constant PERMIT_FOR_ALL_TYPEHASH = 0x6673cb397ee2a50b6b8401653d3638b4ac8b3db9c28aa6870ffceb7574ec2f76;

    /// @notice Hashes the data that will be signed for IERC721Permit_v4.permit()
    /// @param spender The address which may spend the tokenId
    /// @param tokenId The tokenId of the owner, which may be spent by spender
    /// @param nonce A unique non-ordered value for each signature to prevent replay attacks
    /// @param deadline The time at which the signature expires
    /// @return digest The hash of the data to be signed; the equivalent to keccak256(abi.encode(PERMIT_TYPEHASH, spender, tokenId, nonce, deadline));
    function hashPermit(address spender, uint256 tokenId, uint256 nonce, uint256 deadline)
        internal
        pure
        returns (bytes32 digest)
    {
        // equivalent to: keccak256(abi.encode(PERMIT_TYPEHASH, spender, tokenId, nonce, deadline));
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, PERMIT_TYPEHASH)
            mstore(add(fmp, 0x20), and(spender, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x40), tokenId)
            mstore(add(fmp, 0x60), nonce)
            mstore(add(fmp, 0x80), deadline)
            digest := keccak256(fmp, 0xa0)

            // now clean the memory we used
            mstore(fmp, 0) // fmp held PERMIT_TYPEHASH
            mstore(add(fmp, 0x20), 0) // fmp+0x20 held spender
            mstore(add(fmp, 0x40), 0) // fmp+0x40 held tokenId
            mstore(add(fmp, 0x60), 0) // fmp+0x60 held nonce
            mstore(add(fmp, 0x80), 0) // fmp+0x80 held deadline
        }
    }

    /// @notice Hashes the data that will be signed for IERC721Permit_v4.permit()
    /// @param operator The address which may spend any of the owner's tokenIds
    /// @param approved true if the operator is to have full permission over the owner's tokenIds; false otherwise
    /// @param nonce A unique non-ordered value for each signature to prevent replay attacks
    /// @param deadline The time at which the signature expires
    /// @return digest The hash of the data to be signed; the equivalent to keccak256(abi.encode(PERMIT_FOR_ALL_TYPEHASH, operator, approved, nonce, deadline));
    function hashPermitForAll(address operator, bool approved, uint256 nonce, uint256 deadline)
        internal
        pure
        returns (bytes32 digest)
    {
        // equivalent to: keccak256(abi.encode(PERMIT_FOR_ALL_TYPEHASH, operator, approved, nonce, deadline));
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, PERMIT_FOR_ALL_TYPEHASH)
            mstore(add(fmp, 0x20), and(operator, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x40), and(approved, 0x1))
            mstore(add(fmp, 0x60), nonce)
            mstore(add(fmp, 0x80), deadline)
            digest := keccak256(fmp, 0xa0)

            // now clean the memory we used
            mstore(fmp, 0) // fmp held PERMIT_FOR_ALL_TYPEHASH
            mstore(add(fmp, 0x20), 0) // fmp+0x20 held operator
            mstore(add(fmp, 0x40), 0) // fmp+0x40 held approved
            mstore(add(fmp, 0x60), 0) // fmp+0x60 held nonce
            mstore(add(fmp, 0x80), 0) // fmp+0x80 held deadline
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/libraries/LiquidityAmounts.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {FullMath} from "@uniswap/v4-core/src/libraries/FullMath.sol";
import {FixedPoint96} from "@uniswap/v4-core/src/libraries/FixedPoint96.sol";
import {SafeCast} from "@uniswap/v4-core/src/libraries/SafeCast.sol";

/// @notice Provides functions for computing liquidity amounts from token amounts and prices
library LiquidityAmounts {
    using SafeCast for uint256;

    /// @notice Computes the amount of liquidity received for a given amount of token0 and price range
    /// @dev Calculates amount0 * (sqrt(upper) * sqrt(lower)) / (sqrt(upper) - sqrt(lower))
    /// @param sqrtPriceAX96 A sqrt price representing the first tick boundary
    /// @param sqrtPriceBX96 A sqrt price representing the second tick boundary
    /// @param amount0 The amount0 being sent in
    /// @return liquidity The amount of returned liquidity
    function getLiquidityForAmount0(uint160 sqrtPriceAX96, uint160 sqrtPriceBX96, uint256 amount0)
        internal
        pure
        returns (uint128 liquidity)
    {
        unchecked {
            if (sqrtPriceAX96 > sqrtPriceBX96) (sqrtPriceAX96, sqrtPriceBX96) = (sqrtPriceBX96, sqrtPriceAX96);
            uint256 intermediate = FullMath.mulDiv(sqrtPriceAX96, sqrtPriceBX96, FixedPoint96.Q96);
            return FullMath.mulDiv(amount0, intermediate, sqrtPriceBX96 - sqrtPriceAX96).toUint128();
        }
    }

    /// @notice Computes the amount of liquidity received for a given amount of token1 and price range
    /// @dev Calculates amount1 / (sqrt(upper) - sqrt(lower)).
    /// @param sqrtPriceAX96 A sqrt price representing the first tick boundary
    /// @param sqrtPriceBX96 A sqrt price representing the second tick boundary
    /// @param amount1 The amount1 being sent in
    /// @return liquidity The amount of returned liquidity
    function getLiquidityForAmount1(uint160 sqrtPriceAX96, uint160 sqrtPriceBX96, uint256 amount1)
        internal
        pure
        returns (uint128 liquidity)
    {
        unchecked {
            if (sqrtPriceAX96 > sqrtPriceBX96) (sqrtPriceAX96, sqrtPriceBX96) = (sqrtPriceBX96, sqrtPriceAX96);
            return FullMath.mulDiv(amount1, FixedPoint96.Q96, sqrtPriceBX96 - sqrtPriceAX96).toUint128();
        }
    }

    /// @notice Computes the maximum amount of liquidity received for a given amount of token0, token1, the current
    /// pool prices and the prices at the tick boundaries
    /// @param sqrtPriceX96 A sqrt price representing the current pool prices
    /// @param sqrtPriceAX96 A sqrt price representing the first tick boundary
    /// @param sqrtPriceBX96 A sqrt price representing the second tick boundary
    /// @param amount0 The amount of token0 being sent in
    /// @param amount1 The amount of token1 being sent in
    /// @return liquidity The maximum amount of liquidity received
    function getLiquidityForAmounts(
        uint160 sqrtPriceX96,
        uint160 sqrtPriceAX96,
        uint160 sqrtPriceBX96,
        uint256 amount0,
        uint256 amount1
    ) internal pure returns (uint128 liquidity) {
        if (sqrtPriceAX96 > sqrtPriceBX96) (sqrtPriceAX96, sqrtPriceBX96) = (sqrtPriceBX96, sqrtPriceAX96);

        if (sqrtPriceX96 <= sqrtPriceAX96) {
            liquidity = getLiquidityForAmount0(sqrtPriceAX96, sqrtPriceBX96, amount0);
        } else if (sqrtPriceX96 < sqrtPriceBX96) {
            uint128 liquidity0 = getLiquidityForAmount0(sqrtPriceX96, sqrtPriceBX96, amount0);
            uint128 liquidity1 = getLiquidityForAmount1(sqrtPriceAX96, sqrtPriceX96, amount1);

            liquidity = liquidity0 < liquidity1 ? liquidity0 : liquidity1;
        } else {
            liquidity = getLiquidityForAmount1(sqrtPriceAX96, sqrtPriceBX96, amount1);
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/libraries/Locker.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice This is a temporary library that allows us to use transient storage (tstore/tload)
/// TODO: This library can be deleted when we have the transient keyword support in solidity.
library Locker {
    // The slot holding the locker state, transiently. bytes32(uint256(keccak256("LockedBy")) - 1)
    bytes32 constant LOCKED_BY_SLOT = 0x0aedd6bde10e3aa2adec092b02a3e3e805795516cda41f27aa145b8f300af87a;

    function set(address locker) internal {
        assembly {
            tstore(LOCKED_BY_SLOT, locker)
        }
    }

    function get() internal view returns (address locker) {
        assembly {
            locker := tload(LOCKED_BY_SLOT)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/libraries/PathKey.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";

struct PathKey {
    Currency intermediateCurrency;
    uint24 fee;
    int24 tickSpacing;
    IHooks hooks;
    bytes hookData;
}

using PathKeyLibrary for PathKey global;

/// @title PathKey Library
/// @notice Functions for working with PathKeys
library PathKeyLibrary {
    /// @notice Get the pool and swap direction for a given PathKey
    /// @param params the given PathKey
    /// @param currencyIn the input currency
    /// @return poolKey the pool key of the swap
    /// @return zeroForOne the direction of the swap, true if currency0 is being swapped for currency1
    function getPoolAndSwapDirection(PathKey calldata params, Currency currencyIn)
        internal
        pure
        returns (PoolKey memory poolKey, bool zeroForOne)
    {
        Currency currencyOut = params.intermediateCurrency;
        (Currency currency0, Currency currency1) =
            currencyIn < currencyOut ? (currencyIn, currencyOut) : (currencyOut, currencyIn);

        zeroForOne = currencyIn == currency0;
        poolKey = PoolKey(currency0, currency1, params.fee, params.tickSpacing, params.hooks);
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/libraries/PositionInfoLibrary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {PoolId} from "@uniswap/v4-core/src/types/PoolId.sol";

/**
 * @dev PositionInfo is a packed version of solidity structure.
 * Using the packaged version saves gas and memory by not storing the structure fields in memory slots.
 *
 * Layout:
 * 200 bits poolId | 24 bits tickUpper | 24 bits tickLower | 8 bits hasSubscriber
 *
 * Fields in the direction from the least significant bit:
 *
 * A flag to know if the tokenId is subscribed to an address
 * uint8 hasSubscriber;
 *
 * The tickUpper of the position
 * int24 tickUpper;
 *
 * The tickLower of the position
 * int24 tickLower;
 *
 * The truncated poolId. Truncates a bytes32 value so the most signifcant (highest) 200 bits are used.
 * bytes25 poolId;
 *
 * Note: If more bits are needed, hasSubscriber can be a single bit.
 *
 */
type PositionInfo is uint256;

using PositionInfoLibrary for PositionInfo global;

library PositionInfoLibrary {
    PositionInfo internal constant EMPTY_POSITION_INFO = PositionInfo.wrap(0);

    uint256 internal constant MASK_UPPER_200_BITS = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000;
    uint256 internal constant MASK_8_BITS = 0xFF;
    uint24 internal constant MASK_24_BITS = 0xFFFFFF;
    uint256 internal constant SET_UNSUBSCRIBE = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00;
    uint256 internal constant SET_SUBSCRIBE = 0x01;
    uint8 internal constant TICK_LOWER_OFFSET = 8;
    uint8 internal constant TICK_UPPER_OFFSET = 32;

    /// @dev This poolId is NOT compatible with the poolId used in UniswapV4 core. It is truncated to 25 bytes, and just used to lookup PoolKey in the poolKeys mapping.
    function poolId(PositionInfo info) internal pure returns (bytes25 _poolId) {
        assembly ("memory-safe") {
            _poolId := and(MASK_UPPER_200_BITS, info)
        }
    }

    function tickLower(PositionInfo info) internal pure returns (int24 _tickLower) {
        assembly ("memory-safe") {
            _tickLower := signextend(2, shr(TICK_LOWER_OFFSET, info))
        }
    }

    function tickUpper(PositionInfo info) internal pure returns (int24 _tickUpper) {
        assembly ("memory-safe") {
            _tickUpper := signextend(2, shr(TICK_UPPER_OFFSET, info))
        }
    }

    function hasSubscriber(PositionInfo info) internal pure returns (bool _hasSubscriber) {
        assembly ("memory-safe") {
            _hasSubscriber := and(MASK_8_BITS, info)
        }
    }

    /// @dev this does not actually set any storage
    function setSubscribe(PositionInfo info) internal pure returns (PositionInfo _info) {
        assembly ("memory-safe") {
            _info := or(info, SET_SUBSCRIBE)
        }
    }

    /// @dev this does not actually set any storage
    function setUnsubscribe(PositionInfo info) internal pure returns (PositionInfo _info) {
        assembly ("memory-safe") {
            _info := and(info, SET_UNSUBSCRIBE)
        }
    }

    /// @notice Creates the default PositionInfo struct
    /// @dev Called when minting a new position
    /// @param _poolKey the pool key of the position
    /// @param _tickLower the lower tick of the position
    /// @param _tickUpper the upper tick of the position
    /// @return info packed position info, with the truncated poolId and the hasSubscriber flag set to false
    function initialize(PoolKey memory _poolKey, int24 _tickLower, int24 _tickUpper)
        internal
        pure
        returns (PositionInfo info)
    {
        bytes25 _poolId = bytes25(PoolId.unwrap(_poolKey.toId()));
        assembly {
            info :=
                or(
                    or(and(MASK_UPPER_200_BITS, _poolId), shl(TICK_UPPER_OFFSET, and(MASK_24_BITS, _tickUpper))),
                    shl(TICK_LOWER_OFFSET, and(MASK_24_BITS, _tickLower))
                )
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/libraries/SlippageCheck.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BalanceDelta} from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import {SafeCast} from "@uniswap/v4-core/src/libraries/SafeCast.sol";

/// @title Slippage Check Library
/// @notice a library for checking if a delta exceeds a maximum ceiling or fails to meet a minimum floor
library SlippageCheck {
    using SafeCast for int128;

    error MaximumAmountExceeded(uint128 maximumAmount, uint128 amountRequested);
    error MinimumAmountInsufficient(uint128 minimumAmount, uint128 amountReceived);

    /// @notice Revert if one or both deltas does not meet a minimum output
    /// @param delta The principal amount of tokens to be removed, does not include any fees accrued
    /// @param amount0Min The minimum amount of token0 to receive
    /// @param amount1Min The minimum amount of token1 to receive
    /// @dev This should be called when removing liquidity (burn or decrease)
    function validateMinOut(BalanceDelta delta, uint128 amount0Min, uint128 amount1Min) internal pure {
        // Called on burn or decrease, where we expect the returned delta to be positive.
        // However, on pools where hooks can return deltas on modify liquidity, it is possible for a returned delta to be negative.
        // Because we use SafeCast, this will revert in those cases when the delta is negative.
        // This means this contract will NOT support pools where the hook returns a negative delta on burn/decrease.
        if (delta.amount0().toUint128() < amount0Min) {
            revert MinimumAmountInsufficient(amount0Min, delta.amount0().toUint128());
        }
        if (delta.amount1().toUint128() < amount1Min) {
            revert MinimumAmountInsufficient(amount1Min, delta.amount1().toUint128());
        }
    }

    /// @notice Revert if one or both deltas exceeds a maximum input
    /// @param delta The principal amount of tokens to be added, does not include any fees accrued (which is possible on increase)
    /// @param amount0Max The maximum amount of token0 to spend
    /// @param amount1Max The maximum amount of token1 to spend
    /// @dev This should be called when adding liquidity (mint or increase)
    function validateMaxIn(BalanceDelta delta, uint128 amount0Max, uint128 amount1Max) internal pure {
        // Called on mint or increase, where we expect the returned delta to be negative.
        // However, on pools where hooks can return deltas on modify liquidity, it is possible for a returned delta to be positive (even after discounting fees accrued).
        // Thus, we only cast the delta if it is guaranteed to be negative.
        // And we do NOT revert in the positive delta case. Since a positive delta means the hook is crediting tokens to the user for minting/increasing liquidity, we do not check slippage.
        // This means this contract will NOT support _positive_ slippage checks (minAmountOut checks) on pools where the hook returns a positive delta on mint/increase.
        int256 amount0 = delta.amount0();
        int256 amount1 = delta.amount1();
        if (amount0 < 0 && amount0Max < uint128(uint256(-amount0))) {
            revert MaximumAmountExceeded(amount0Max, uint128(uint256(-amount0)));
        }
        if (amount1 < 0 && amount1Max < uint128(uint256(-amount1))) {
            revert MaximumAmountExceeded(amount1Max, uint128(uint256(-amount1)));
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/PositionManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Currency, CurrencyLibrary} from "@uniswap/v4-core/src/types/Currency.sol";
import {BalanceDelta} from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import {SafeCast} from "@uniswap/v4-core/src/libraries/SafeCast.sol";
import {Position} from "@uniswap/v4-core/src/libraries/Position.sol";
import {StateLibrary} from "@uniswap/v4-core/src/libraries/StateLibrary.sol";
import {TransientStateLibrary} from "@uniswap/v4-core/src/libraries/TransientStateLibrary.sol";
import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {ModifyLiquidityParams, SwapParams} from "@uniswap/v4-core/src/types/PoolOperation.sol";

import {IPositionDescriptor} from "./interfaces/IPositionDescriptor.sol";
import {ERC721Permit_v4} from "./base/ERC721Permit_v4.sol";
import {ReentrancyLock} from "./base/ReentrancyLock.sol";
import {IPositionManager} from "./interfaces/IPositionManager.sol";
import {Multicall_v4} from "./base/Multicall_v4.sol";
import {PoolInitializer_v4} from "./base/PoolInitializer_v4.sol";
import {DeltaResolver} from "./base/DeltaResolver.sol";
import {BaseActionsRouter} from "./base/BaseActionsRouter.sol";
import {Actions} from "./libraries/Actions.sol";
import {Notifier} from "./base/Notifier.sol";
import {CalldataDecoder} from "./libraries/CalldataDecoder.sol";
import {Permit2Forwarder} from "./base/Permit2Forwarder.sol";
import {SlippageCheck} from "./libraries/SlippageCheck.sol";
import {PositionInfo, PositionInfoLibrary} from "./libraries/PositionInfoLibrary.sol";
import {LiquidityAmounts} from "./libraries/LiquidityAmounts.sol";
import {NativeWrapper} from "./base/NativeWrapper.sol";
import {IWETH9} from "./interfaces/external/IWETH9.sol";

//                                           444444444
//                                444444444444      444444
//                              444              44     4444
//                             44         4      44        444
//                            44         44       44         44
//                           44          44        44         44
//                          44       444444          44        44
//                         444          4444           4444    44
//                         44             4444                 444444444444444444
//                         44             44  4                44444           444444
//        444444444444    44              4                444                      44
//        44        44444444              4             444                         44
//       444              44                          44                           444
//        44               4  4444444444444444444444444           4444444444     4444
//         44              44444444444444444444444444      444               44444
//          444                                  44 44444444444444444444444444
//           4444                             444444444444444444444444
//              4444                      444444    444444444444444
//                 44444              444444        44444444444444444444444
//                     444444444444444    4           44444 44444444444444444444
//                           444                          444444444444444444444444444
//                           444                           44444  44444444444     44444444
//                          444                               4   44444444444444   444444444
//                         4444 444                               44 4444444444444     44444444
//                         44  44444         44444444             44444444444444444444     44444
//                        444 444444        4444  4444             444444444444444444     44  4444
//                 4444   44  44444        44444444444             444444444444444444444    44444444
//                     44444   4444        4444444444             444444444444444444444444     44444
//                 44444 44444 444         444444                4444444444444444444444444       44444
//                       4444 44         44                     4 44444444444444444444444444   444 44444
//                   44444444 444  44   4    4         444444  4 44444444444444444444444444444   4444444
//                        444444    44       44444444444       44444444444444 444444444444444      444444
//                     444444 44   4444      44444       44     44444444444444444444444 4444444      44444
//                   44    444444   44   444444444 444        4444444444444444444444444444444444   4444444
//                       44  4444444444444    44  44  44       4444444444444444444444444444444       444444
//                      44  44444444444444444444444444  4   44 4444444444444444444444444444444    4   444444
//                     4    4444                     4    4 4444444444444444444444444              44 4444444
//                          4444                          4444444444444444444444444    4   4444     44444444
//                          4444                         444444444444444444444444  44444     44444 4444444444
//                          44444  44                  444444444444444444444444444444444444444444444444444444
//                          44444444444               4444444444444444444444444444444444444444444444444444444
//                           4444444444444           44444444444444444444444444444444444444444444444444444444
//                           444444444444444         444444444444444444444444444444444444444444444444444444444
//                            44444444444444444     4444444444444444444444444444444444444444444444444444444444
//                            44444444444444444     44444444444444444444444444444444444444444444444444444444
//                            44444444444444444444  444444444444444444444444444444444444444444444444444444444
//                            444444444444444444444 444444444444444444444444444444444444444444444444444444444
//                              444444444444444444444 4444444444444444444444444444444444444444444444444444444
//                              44444444444444444444444444444444444444444444444444444444444444444444444444444
//                               444444444444444444444444444444444444444444444444444444444444444444444444444
//                                44444444444444444444444444444444444444444444444444444444444444444444444444
//                               44444444444444444444444444444444444444444444444444      444444444444444444
//                             444444444444444444444444444444444444444444444444       44444444444444444444
//                           444   444   444   44  444444444444444444444 4444      444444444444444444444
//                           444  444    44    44  44444444 4444444444444       44444444444444444444444
//                            444 444   4444   4444 4444444444444444         44444444444444444444444444
//                      4444444444444444444444444444444444444444        44444444444444444444444444444
//                       444        4444444444444444444444444       44444444444444444444444444444444
//                          4444444       444444444444         4444444444444444444444444444444444
//                             4444444444                 44444444444444444444444444444444444
//                                444444444444444444444444444444444444444444444444444444
//                                     44444444444444444444444444444444444444444
//                                              4444444444444444444

/// @notice The PositionManager (PosM) contract is responsible for creating liquidity positions on v4.
/// PosM mints and manages ERC721 tokens associated with each position.
contract PositionManager is
    IPositionManager,
    ERC721Permit_v4,
    PoolInitializer_v4,
    Multicall_v4,
    DeltaResolver,
    ReentrancyLock,
    BaseActionsRouter,
    Notifier,
    Permit2Forwarder,
    NativeWrapper
{
    using StateLibrary for IPoolManager;
    using TransientStateLibrary for IPoolManager;
    using SafeCast for uint256;
    using SafeCast for int256;
    using CalldataDecoder for bytes;
    using SlippageCheck for BalanceDelta;

    /// @inheritdoc IPositionManager
    /// @dev The ID of the next token that will be minted. Skips 0
    uint256 public nextTokenId = 1;

    IPositionDescriptor public immutable tokenDescriptor;

    mapping(uint256 tokenId => PositionInfo info) public positionInfo;
    mapping(bytes25 poolId => PoolKey poolKey) public poolKeys;

    constructor(
        IPoolManager _poolManager,
        IAllowanceTransfer _permit2,
        uint256 _unsubscribeGasLimit,
        IPositionDescriptor _tokenDescriptor,
        IWETH9 _weth9
    )
        BaseActionsRouter(_poolManager)
        Permit2Forwarder(_permit2)
        ERC721Permit_v4("Uniswap v4 Positions NFT", "UNI-V4-POSM")
        Notifier(_unsubscribeGasLimit)
        NativeWrapper(_weth9)
    {
        tokenDescriptor = _tokenDescriptor;
    }

    /// @notice Reverts if the deadline has passed
    /// @param deadline The timestamp at which the call is no longer valid, passed in by the caller
    modifier checkDeadline(uint256 deadline) {
        if (block.timestamp > deadline) revert DeadlinePassed(deadline);
        _;
    }

    /// @notice Reverts if the caller is not the owner or approved for the ERC721 token
    /// @param caller The address of the caller
    /// @param tokenId the unique identifier of the ERC721 token
    /// @dev either msg.sender or msgSender() is passed in as the caller
    /// msgSender() should ONLY be used if this is called from within the unlockCallback, unless the codepath has reentrancy protection
    modifier onlyIfApproved(address caller, uint256 tokenId) override {
        if (!_isApprovedOrOwner(caller, tokenId)) revert NotApproved(caller);
        _;
    }

    /// @notice Enforces that the PoolManager is locked.
    modifier onlyIfPoolManagerLocked() override {
        if (poolManager.isUnlocked()) revert PoolManagerMustBeLocked();
        _;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return IPositionDescriptor(tokenDescriptor).tokenURI(this, tokenId);
    }

    /// @inheritdoc IPositionManager
    function modifyLiquidities(bytes calldata unlockData, uint256 deadline)
        external
        payable
        isNotLocked
        checkDeadline(deadline)
    {
        _executeActions(unlockData);
    }

    /// @inheritdoc IPositionManager
    function modifyLiquiditiesWithoutUnlock(bytes calldata actions, bytes[] calldata params)
        external
        payable
        isNotLocked
    {
        _executeActionsWithoutUnlock(actions, params);
    }

    /// @inheritdoc BaseActionsRouter
    function msgSender() public view override returns (address) {
        return _getLocker();
    }

    function _handleAction(uint256 action, bytes calldata params) internal virtual override {
        if (action < Actions.SETTLE) {
            if (action == Actions.INCREASE_LIQUIDITY) {
                (uint256 tokenId, uint256 liquidity, uint128 amount0Max, uint128 amount1Max, bytes calldata hookData) =
                    params.decodeModifyLiquidityParams();
                _increase(tokenId, liquidity, amount0Max, amount1Max, hookData);
                return;
            } else if (action == Actions.INCREASE_LIQUIDITY_FROM_DELTAS) {
                (uint256 tokenId, uint128 amount0Max, uint128 amount1Max, bytes calldata hookData) =
                    params.decodeIncreaseLiquidityFromDeltasParams();
                _increaseFromDeltas(tokenId, amount0Max, amount1Max, hookData);
                return;
            } else if (action == Actions.DECREASE_LIQUIDITY) {
                (uint256 tokenId, uint256 liquidity, uint128 amount0Min, uint128 amount1Min, bytes calldata hookData) =
                    params.decodeModifyLiquidityParams();
                _decrease(tokenId, liquidity, amount0Min, amount1Min, hookData);
                return;
            } else if (action == Actions.MINT_POSITION) {
                (
                    PoolKey calldata poolKey,
                    int24 tickLower,
                    int24 tickUpper,
                    uint256 liquidity,
                    uint128 amount0Max,
                    uint128 amount1Max,
                    address owner,
                    bytes calldata hookData
                ) = params.decodeMintParams();
                _mint(poolKey, tickLower, tickUpper, liquidity, amount0Max, amount1Max, _mapRecipient(owner), hookData);
                return;
            } else if (action == Actions.MINT_POSITION_FROM_DELTAS) {
                (
                    PoolKey calldata poolKey,
                    int24 tickLower,
                    int24 tickUpper,
                    uint128 amount0Max,
                    uint128 amount1Max,
                    address owner,
                    bytes calldata hookData
                ) = params.decodeMintFromDeltasParams();
                _mintFromDeltas(poolKey, tickLower, tickUpper, amount0Max, amount1Max, _mapRecipient(owner), hookData);
                return;
            } else if (action == Actions.BURN_POSITION) {
                // Will automatically decrease liquidity to 0 if the position is not already empty.
                (uint256 tokenId, uint128 amount0Min, uint128 amount1Min, bytes calldata hookData) =
                    params.decodeBurnParams();
                _burn(tokenId, amount0Min, amount1Min, hookData);
                return;
            }
        } else {
            if (action == Actions.SETTLE_PAIR) {
                (Currency currency0, Currency currency1) = params.decodeCurrencyPair();
                _settlePair(currency0, currency1);
                return;
            } else if (action == Actions.TAKE_PAIR) {
                (Currency currency0, Currency currency1, address recipient) = params.decodeCurrencyPairAndAddress();
                _takePair(currency0, currency1, _mapRecipient(recipient));
                return;
            } else if (action == Actions.SETTLE) {
                (Currency currency, uint256 amount, bool payerIsUser) = params.decodeCurrencyUint256AndBool();
                _settle(currency, _mapPayer(payerIsUser), _mapSettleAmount(amount, currency));
                return;
            } else if (action == Actions.TAKE) {
                (Currency currency, address recipient, uint256 amount) = params.decodeCurrencyAddressAndUint256();
                _take(currency, _mapRecipient(recipient), _mapTakeAmount(amount, currency));
                return;
            } else if (action == Actions.CLOSE_CURRENCY) {
                Currency currency = params.decodeCurrency();
                _close(currency);
                return;
            } else if (action == Actions.CLEAR_OR_TAKE) {
                (Currency currency, uint256 amountMax) = params.decodeCurrencyAndUint256();
                _clearOrTake(currency, amountMax);
                return;
            } else if (action == Actions.SWEEP) {
                (Currency currency, address to) = params.decodeCurrencyAndAddress();
                _sweep(currency, _mapRecipient(to));
                return;
            } else if (action == Actions.WRAP) {
                uint256 amount = params.decodeUint256();
                _wrap(_mapWrapUnwrapAmount(CurrencyLibrary.ADDRESS_ZERO, amount, Currency.wrap(address(WETH9))));
                return;
            } else if (action == Actions.UNWRAP) {
                uint256 amount = params.decodeUint256();
                _unwrap(_mapWrapUnwrapAmount(Currency.wrap(address(WETH9)), amount, CurrencyLibrary.ADDRESS_ZERO));
                return;
            }
        }
        revert UnsupportedAction(action);
    }

    /// @dev Calling increase with 0 liquidity will credit the caller with any underlying fees of the position
    function _increase(
        uint256 tokenId,
        uint256 liquidity,
        uint128 amount0Max,
        uint128 amount1Max,
        bytes calldata hookData
    ) internal onlyIfApproved(msgSender(), tokenId) {
        (PoolKey memory poolKey, PositionInfo info) = getPoolAndPositionInfo(tokenId);

        // Note: The tokenId is used as the salt for this position, so every minted position has unique storage in the pool manager.
        (BalanceDelta liquidityDelta, BalanceDelta feesAccrued) =
            _modifyLiquidity(info, poolKey, liquidity.toInt256(), bytes32(tokenId), hookData);
        // Slippage checks should be done on the principal liquidityDelta which is the liquidityDelta - feesAccrued
        (liquidityDelta - feesAccrued).validateMaxIn(amount0Max, amount1Max);
    }

    /// @dev The liquidity delta is derived from open deltas in the pool manager.
    function _increaseFromDeltas(uint256 tokenId, uint128 amount0Max, uint128 amount1Max, bytes calldata hookData)
        internal
        onlyIfApproved(msgSender(), tokenId)
    {
        (PoolKey memory poolKey, PositionInfo info) = getPoolAndPositionInfo(tokenId);

        uint256 liquidity;
        {
            (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());

            // Use the credit on the pool manager as the amounts for the mint.
            liquidity = LiquidityAmounts.getLiquidityForAmounts(
                sqrtPriceX96,
                TickMath.getSqrtPriceAtTick(info.tickLower()),
                TickMath.getSqrtPriceAtTick(info.tickUpper()),
                _getFullCredit(poolKey.currency0),
                _getFullCredit(poolKey.currency1)
            );
        }

        // Note: The tokenId is used as the salt for this position, so every minted position has unique storage in the pool manager.
        (BalanceDelta liquidityDelta, BalanceDelta feesAccrued) =
            _modifyLiquidity(info, poolKey, liquidity.toInt256(), bytes32(tokenId), hookData);
        // Slippage checks should be done on the principal liquidityDelta which is the liquidityDelta - feesAccrued
        (liquidityDelta - feesAccrued).validateMaxIn(amount0Max, amount1Max);
    }

    /// @dev Calling decrease with 0 liquidity will credit the caller with any underlying fees of the position
    function _decrease(
        uint256 tokenId,
        uint256 liquidity,
        uint128 amount0Min,
        uint128 amount1Min,
        bytes calldata hookData
    ) internal onlyIfApproved(msgSender(), tokenId) {
        (PoolKey memory poolKey, PositionInfo info) = getPoolAndPositionInfo(tokenId);

        // Note: the tokenId is used as the salt.
        (BalanceDelta liquidityDelta, BalanceDelta feesAccrued) =
            _modifyLiquidity(info, poolKey, -(liquidity.toInt256()), bytes32(tokenId), hookData);
        // Slippage checks should be done on the principal liquidityDelta which is the liquidityDelta - feesAccrued
        (liquidityDelta - feesAccrued).validateMinOut(amount0Min, amount1Min);
    }

    function _mint(
        PoolKey calldata poolKey,
        int24 tickLower,
        int24 tickUpper,
        uint256 liquidity,
        uint128 amount0Max,
        uint128 amount1Max,
        address owner,
        bytes calldata hookData
    ) internal {
        // mint receipt token
        uint256 tokenId;
        // tokenId is assigned to current nextTokenId before incrementing it
        unchecked {
            tokenId = nextTokenId++;
        }
        _mint(owner, tokenId);

        // Initialize the position info
        PositionInfo info = PositionInfoLibrary.initialize(poolKey, tickLower, tickUpper);
        positionInfo[tokenId] = info;

        // Store the poolKey if it is not already stored.
        // On UniswapV4, the minimum tick spacing is 1, which means that if the tick spacing is 0, the pool key has not been set.
        bytes25 poolId = info.poolId();
        if (poolKeys[poolId].tickSpacing == 0) {
            poolKeys[poolId] = poolKey;
        }

        // fee delta can be ignored as this is a new position
        (BalanceDelta liquidityDelta,) =
            _modifyLiquidity(info, poolKey, liquidity.toInt256(), bytes32(tokenId), hookData);
        liquidityDelta.validateMaxIn(amount0Max, amount1Max);
    }

    function _mintFromDeltas(
        PoolKey calldata poolKey,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount0Max,
        uint128 amount1Max,
        address owner,
        bytes calldata hookData
    ) internal {
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());

        // Use the credit on the pool manager as the amounts for the mint.
        uint256 liquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(tickLower),
            TickMath.getSqrtPriceAtTick(tickUpper),
            _getFullCredit(poolKey.currency0),
            _getFullCredit(poolKey.currency1)
        );

        _mint(poolKey, tickLower, tickUpper, liquidity, amount0Max, amount1Max, owner, hookData);
    }

    /// @dev this is overloaded with ERC721Permit_v4._burn
    function _burn(uint256 tokenId, uint128 amount0Min, uint128 amount1Min, bytes calldata hookData)
        internal
        onlyIfApproved(msgSender(), tokenId)
    {
        (PoolKey memory poolKey, PositionInfo info) = getPoolAndPositionInfo(tokenId);

        uint256 liquidity = uint256(_getLiquidity(tokenId, poolKey, info.tickLower(), info.tickUpper()));

        address owner = ownerOf(tokenId);

        // Clear the position info.
        positionInfo[tokenId] = PositionInfoLibrary.EMPTY_POSITION_INFO;
        // Burn the token.
        _burn(tokenId);

        // Can only call modify if there is non zero liquidity.
        BalanceDelta feesAccrued;
        if (liquidity > 0) {
            BalanceDelta liquidityDelta;
            // do not use _modifyLiquidity as we do not need to notify on modification for burns.
            ModifyLiquidityParams memory params = ModifyLiquidityParams({
                tickLower: info.tickLower(),
                tickUpper: info.tickUpper(),
                liquidityDelta: -(liquidity.toInt256()),
                salt: bytes32(tokenId)
            });
            (liquidityDelta, feesAccrued) = poolManager.modifyLiquidity(poolKey, params, hookData);
            // Slippage checks should be done on the principal liquidityDelta which is the liquidityDelta - feesAccrued
            (liquidityDelta - feesAccrued).validateMinOut(amount0Min, amount1Min);
        }

        // deletes then notifies the subscriber
        if (info.hasSubscriber()) _removeSubscriberAndNotifyBurn(tokenId, owner, info, liquidity, feesAccrued);
    }

    function _settlePair(Currency currency0, Currency currency1) internal {
        // the locker is the payer when settling
        address caller = msgSender();
        _settle(currency0, caller, _getFullDebt(currency0));
        _settle(currency1, caller, _getFullDebt(currency1));
    }

    function _takePair(Currency currency0, Currency currency1, address recipient) internal {
        _take(currency0, recipient, _getFullCredit(currency0));
        _take(currency1, recipient, _getFullCredit(currency1));
    }

    function _close(Currency currency) internal {
        // this address has applied all deltas on behalf of the user/owner
        // it is safe to close this entire delta because of slippage checks throughout the batched calls.
        int256 currencyDelta = poolManager.currencyDelta(address(this), currency);

        // the locker is the payer or receiver
        address caller = msgSender();
        if (currencyDelta < 0) {
            // Casting is safe due to limits on the total supply of a pool
            _settle(currency, caller, uint256(-currencyDelta));
        } else {
            _take(currency, caller, uint256(currencyDelta));
        }
    }

    /// @dev integrators may elect to forfeit positive deltas with clear
    /// if the forfeit amount exceeds the user-specified max, the amount is taken instead
    /// if there is no credit, no call is made.
    function _clearOrTake(Currency currency, uint256 amountMax) internal {
        uint256 delta = _getFullCredit(currency);
        if (delta == 0) return;

        // forfeit the delta if its less than or equal to the user-specified limit
        if (delta <= amountMax) {
            poolManager.clear(currency, delta);
        } else {
            _take(currency, msgSender(), delta);
        }
    }

    /// @notice Sweeps the entire contract balance of specified currency to the recipient
    function _sweep(Currency currency, address to) internal {
        uint256 balance = currency.balanceOfSelf();
        if (balance > 0) currency.transfer(to, balance);
    }

    /// @dev if there is a subscriber attached to the position, this function will notify the subscriber
    function _modifyLiquidity(
        PositionInfo info,
        PoolKey memory poolKey,
        int256 liquidityChange,
        bytes32 salt,
        bytes calldata hookData
    ) internal returns (BalanceDelta liquidityDelta, BalanceDelta feesAccrued) {
        (liquidityDelta, feesAccrued) = poolManager.modifyLiquidity(
            poolKey,
            ModifyLiquidityParams({
                tickLower: info.tickLower(),
                tickUpper: info.tickUpper(),
                liquidityDelta: liquidityChange,
                salt: salt
            }),
            hookData
        );

        if (info.hasSubscriber()) {
            _notifyModifyLiquidity(uint256(salt), liquidityChange, feesAccrued);
        }
    }

    // implementation of abstract function DeltaResolver._pay
    function _pay(Currency currency, address payer, uint256 amount) internal override {
        if (payer == address(this)) {
            currency.transfer(address(poolManager), amount);
        } else {
            // Casting from uint256 to uint160 is safe due to limits on the total supply of a pool
            permit2.transferFrom(payer, address(poolManager), uint160(amount), Currency.unwrap(currency));
        }
    }

    /// @notice an internal helper used by Notifier
    function _setSubscribed(uint256 tokenId) internal override {
        positionInfo[tokenId] = positionInfo[tokenId].setSubscribe();
    }

    /// @notice an internal helper used by Notifier
    function _setUnsubscribed(uint256 tokenId) internal override {
        positionInfo[tokenId] = positionInfo[tokenId].setUnsubscribe();
    }

    /// @dev overrides solmate transferFrom in case a notification to subscribers is needed
    /// @dev will revert if pool manager is locked
    function transferFrom(address from, address to, uint256 id) public virtual override onlyIfPoolManagerLocked {
        super.transferFrom(from, to, id);
        if (positionInfo[id].hasSubscriber()) _unsubscribe(id);
    }

    /// @inheritdoc IPositionManager
    function getPoolAndPositionInfo(uint256 tokenId) public view returns (PoolKey memory poolKey, PositionInfo info) {
        info = positionInfo[tokenId];
        poolKey = poolKeys[info.poolId()];
    }

    /// @inheritdoc IPositionManager
    function getPositionLiquidity(uint256 tokenId) external view returns (uint128 liquidity) {
        (PoolKey memory poolKey, PositionInfo info) = getPoolAndPositionInfo(tokenId);
        liquidity = _getLiquidity(tokenId, poolKey, info.tickLower(), info.tickUpper());
    }

    function _getLiquidity(uint256 tokenId, PoolKey memory poolKey, int24 tickLower, int24 tickUpper)
        internal
        view
        returns (uint128 liquidity)
    {
        bytes32 positionId = Position.calculatePositionKey(address(this), tickLower, tickUpper, bytes32(tokenId));
        liquidity = poolManager.getPositionLiquidity(poolKey.toId(), positionId);
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-periphery/src/utils/BaseHook.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Hooks} from "@uniswap/v4-core/src/libraries/Hooks.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {BalanceDelta} from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {BeforeSwapDelta} from "@uniswap/v4-core/src/types/BeforeSwapDelta.sol";
import {ImmutableState} from "../base/ImmutableState.sol";
import {ModifyLiquidityParams, SwapParams} from "@uniswap/v4-core/src/types/PoolOperation.sol";

/// @title Base Hook
/// @notice abstract contract for hook implementations
abstract contract BaseHook is IHooks, ImmutableState {
    error HookNotImplemented();

    constructor(IPoolManager _manager) ImmutableState(_manager) {
        validateHookAddress(this);
    }

    /// @notice Returns a struct of permissions to signal which hook functions are to be implemented
    /// @dev Used at deployment to validate the address correctly represents the expected permissions
    /// @return Permissions struct
    function getHookPermissions() public pure virtual returns (Hooks.Permissions memory);

    /// @notice Validates the deployed hook address agrees with the expected permissions of the hook
    /// @dev this function is virtual so that we can override it during testing,
    /// which allows us to deploy an implementation to any address
    /// and then etch the bytecode into the correct address
    function validateHookAddress(BaseHook _this) internal pure virtual {
        Hooks.validateHookPermissions(_this, getHookPermissions());
    }

    /// @inheritdoc IHooks
    function beforeInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96)
        external
        onlyPoolManager
        returns (bytes4)
    {
        return _beforeInitialize(sender, key, sqrtPriceX96);
    }

    function _beforeInitialize(address, PoolKey calldata, uint160) internal virtual returns (bytes4) {
        revert HookNotImplemented();
    }

    /// @inheritdoc IHooks
    function afterInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96, int24 tick)
        external
        onlyPoolManager
        returns (bytes4)
    {
        return _afterInitialize(sender, key, sqrtPriceX96, tick);
    }

    function _afterInitialize(address, PoolKey calldata, uint160, int24) internal virtual returns (bytes4) {
        revert HookNotImplemented();
    }

    /// @inheritdoc IHooks
    function beforeAddLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external onlyPoolManager returns (bytes4) {
        return _beforeAddLiquidity(sender, key, params, hookData);
    }

    function _beforeAddLiquidity(address, PoolKey calldata, ModifyLiquidityParams calldata, bytes calldata)
        internal
        virtual
        returns (bytes4)
    {
        revert HookNotImplemented();
    }

    /// @inheritdoc IHooks
    function beforeRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external onlyPoolManager returns (bytes4) {
        return _beforeRemoveLiquidity(sender, key, params, hookData);
    }

    function _beforeRemoveLiquidity(address, PoolKey calldata, ModifyLiquidityParams calldata, bytes calldata)
        internal
        virtual
        returns (bytes4)
    {
        revert HookNotImplemented();
    }

    /// @inheritdoc IHooks
    function afterAddLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external onlyPoolManager returns (bytes4, BalanceDelta) {
        return _afterAddLiquidity(sender, key, params, delta, feesAccrued, hookData);
    }

    function _afterAddLiquidity(
        address,
        PoolKey calldata,
        ModifyLiquidityParams calldata,
        BalanceDelta,
        BalanceDelta,
        bytes calldata
    ) internal virtual returns (bytes4, BalanceDelta) {
        revert HookNotImplemented();
    }

    /// @inheritdoc IHooks
    function afterRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external onlyPoolManager returns (bytes4, BalanceDelta) {
        return _afterRemoveLiquidity(sender, key, params, delta, feesAccrued, hookData);
    }

    function _afterRemoveLiquidity(
        address,
        PoolKey calldata,
        ModifyLiquidityParams calldata,
        BalanceDelta,
        BalanceDelta,
        bytes calldata
    ) internal virtual returns (bytes4, BalanceDelta) {
        revert HookNotImplemented();
    }

    /// @inheritdoc IHooks
    function beforeSwap(address sender, PoolKey calldata key, SwapParams calldata params, bytes calldata hookData)
        external
        onlyPoolManager
        returns (bytes4, BeforeSwapDelta, uint24)
    {
        return _beforeSwap(sender, key, params, hookData);
    }

    function _beforeSwap(address, PoolKey calldata, SwapParams calldata, bytes calldata)
        internal
        virtual
        returns (bytes4, BeforeSwapDelta, uint24)
    {
        revert HookNotImplemented();
    }

    /// @inheritdoc IHooks
    function afterSwap(
        address sender,
        PoolKey calldata key,
        SwapParams calldata params,
        BalanceDelta delta,
        bytes calldata hookData
    ) external onlyPoolManager returns (bytes4, int128) {
        return _afterSwap(sender, key, params, delta, hookData);
    }

    function _afterSwap(address, PoolKey calldata, SwapParams calldata, BalanceDelta, bytes calldata)
        internal
        virtual
        returns (bytes4, int128)
    {
        revert HookNotImplemented();
    }

    /// @inheritdoc IHooks
    function beforeDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external onlyPoolManager returns (bytes4) {
        return _beforeDonate(sender, key, amount0, amount1, hookData);
    }

    function _beforeDonate(address, PoolKey calldata, uint256, uint256, bytes calldata)
        internal
        virtual
        returns (bytes4)
    {
        revert HookNotImplemented();
    }

    /// @inheritdoc IHooks
    function afterDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external onlyPoolManager returns (bytes4) {
        return _afterDonate(sender, key, amount0, amount1, hookData);
    }

    function _afterDonate(address, PoolKey calldata, uint256, uint256, bytes calldata)
        internal
        virtual
        returns (bytes4)
    {
        revert HookNotImplemented();
    }
}

// ============================================================
// FILE: node_modules/permit2/src/interfaces/IAllowanceTransfer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IEIP712} from "./IEIP712.sol";

/// @title AllowanceTransfer
/// @notice Handles ERC20 token permissions through signature based allowance setting and ERC20 token transfers by checking allowed amounts
/// @dev Requires user's token approval on the Permit2 contract
interface IAllowanceTransfer is IEIP712 {
    /// @notice Thrown when an allowance on a token has expired.
    /// @param deadline The timestamp at which the allowed amount is no longer valid
    error AllowanceExpired(uint256 deadline);

    /// @notice Thrown when an allowance on a token has been depleted.
    /// @param amount The maximum amount allowed
    error InsufficientAllowance(uint256 amount);

    /// @notice Thrown when too many nonces are invalidated.
    error ExcessiveInvalidation();

    /// @notice Emits an event when the owner successfully invalidates an ordered nonce.
    event NonceInvalidation(
        address indexed owner, address indexed token, address indexed spender, uint48 newNonce, uint48 oldNonce
    );

    /// @notice Emits an event when the owner successfully sets permissions on a token for the spender.
    event Approval(
        address indexed owner, address indexed token, address indexed spender, uint160 amount, uint48 expiration
    );

    /// @notice Emits an event when the owner successfully sets permissions using a permit signature on a token for the spender.
    event Permit(
        address indexed owner,
        address indexed token,
        address indexed spender,
        uint160 amount,
        uint48 expiration,
        uint48 nonce
    );

    /// @notice Emits an event when the owner sets the allowance back to 0 with the lockdown function.
    event Lockdown(address indexed owner, address token, address spender);

    /// @notice The permit data for a token
    struct PermitDetails {
        // ERC20 token address
        address token;
        // the maximum amount allowed to spend
        uint160 amount;
        // timestamp at which a spender's token allowances become invalid
        uint48 expiration;
        // an incrementing value indexed per owner,token,and spender for each signature
        uint48 nonce;
    }

    /// @notice The permit message signed for a single token allowance
    struct PermitSingle {
        // the permit data for a single token alownce
        PermitDetails details;
        // address permissioned on the allowed tokens
        address spender;
        // deadline on the permit signature
        uint256 sigDeadline;
    }

    /// @notice The permit message signed for multiple token allowances
    struct PermitBatch {
        // the permit data for multiple token allowances
        PermitDetails[] details;
        // address permissioned on the allowed tokens
        address spender;
        // deadline on the permit signature
        uint256 sigDeadline;
    }

    /// @notice The saved permissions
    /// @dev This info is saved per owner, per token, per spender and all signed over in the permit message
    /// @dev Setting amount to type(uint160).max sets an unlimited approval
    struct PackedAllowance {
        // amount allowed
        uint160 amount;
        // permission expiry
        uint48 expiration;
        // an incrementing value indexed per owner,token,and spender for each signature
        uint48 nonce;
    }

    /// @notice A token spender pair.
    struct TokenSpenderPair {
        // the token the spender is approved
        address token;
        // the spender address
        address spender;
    }

    /// @notice Details for a token transfer.
    struct AllowanceTransferDetails {
        // the owner of the token
        address from;
        // the recipient of the token
        address to;
        // the amount of the token
        uint160 amount;
        // the token to be transferred
        address token;
    }

    /// @notice A mapping from owner address to token address to spender address to PackedAllowance struct, which contains details and conditions of the approval.
    /// @notice The mapping is indexed in the above order see: allowance[ownerAddress][tokenAddress][spenderAddress]
    /// @dev The packed slot holds the allowed amount, expiration at which the allowed amount is no longer valid, and current nonce thats updated on any signature based approvals.
    function allowance(address user, address token, address spender)
        external
        view
        returns (uint160 amount, uint48 expiration, uint48 nonce);

    /// @notice Approves the spender to use up to amount of the specified token up until the expiration
    /// @param token The token to approve
    /// @param spender The spender address to approve
    /// @param amount The approved amount of the token
    /// @param expiration The timestamp at which the approval is no longer valid
    /// @dev The packed allowance also holds a nonce, which will stay unchanged in approve
    /// @dev Setting amount to type(uint160).max sets an unlimited approval
    function approve(address token, address spender, uint160 amount, uint48 expiration) external;

    /// @notice Permit a spender to a given amount of the owners token via the owner's EIP-712 signature
    /// @dev May fail if the owner's nonce was invalidated in-flight by invalidateNonce
    /// @param owner The owner of the tokens being approved
    /// @param permitSingle Data signed over by the owner specifying the terms of approval
    /// @param signature The owner's signature over the permit data
    function permit(address owner, PermitSingle memory permitSingle, bytes calldata signature) external;

    /// @notice Permit a spender to the signed amounts of the owners tokens via the owner's EIP-712 signature
    /// @dev May fail if the owner's nonce was invalidated in-flight by invalidateNonce
    /// @param owner The owner of the tokens being approved
    /// @param permitBatch Data signed over by the owner specifying the terms of approval
    /// @param signature The owner's signature over the permit data
    function permit(address owner, PermitBatch memory permitBatch, bytes calldata signature) external;

    /// @notice Transfer approved tokens from one address to another
    /// @param from The address to transfer from
    /// @param to The address of the recipient
    /// @param amount The amount of the token to transfer
    /// @param token The token address to transfer
    /// @dev Requires the from address to have approved at least the desired amount
    /// of tokens to msg.sender.
    function transferFrom(address from, address to, uint160 amount, address token) external;

    /// @notice Transfer approved tokens in a batch
    /// @param transferDetails Array of owners, recipients, amounts, and tokens for the transfers
    /// @dev Requires the from addresses to have approved at least the desired amount
    /// of tokens to msg.sender.
    function transferFrom(AllowanceTransferDetails[] calldata transferDetails) external;

    /// @notice Enables performing a "lockdown" of the sender's Permit2 identity
    /// by batch revoking approvals
    /// @param approvals Array of approvals to revoke.
    function lockdown(TokenSpenderPair[] calldata approvals) external;

    /// @notice Invalidate nonces for a given (token, spender) pair
    /// @param token The token to invalidate nonces for
    /// @param spender The spender to invalidate nonces for
    /// @param newNonce The new nonce to set. Invalidates all nonces less than it.
    /// @dev Can't invalidate more than 2**16 nonces per transaction.
    function invalidateNonces(address token, address spender, uint48 newNonce) external;
}

// ============================================================
// FILE: node_modules/permit2/src/interfaces/IEIP712.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IEIP712 {
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: node_modules/permit2/src/interfaces/IERC1271.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC1271 {
    /// @dev Should return whether the signature provided is valid for the provided data
    /// @param hash      Hash of the data to be signed
    /// @param signature Signature byte array associated with _data
    /// @return magicValue The bytes4 magic value 0x1626ba7e
    function isValidSignature(bytes32 hash, bytes memory signature) external view returns (bytes4 magicValue);
}

// ============================================================
// FILE: node_modules/permit2/src/libraries/SignatureVerification.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IERC1271} from "../interfaces/IERC1271.sol";

library SignatureVerification {
    /// @notice Thrown when the passed in signature is not a valid length
    error InvalidSignatureLength();

    /// @notice Thrown when the recovered signer is equal to the zero address
    error InvalidSignature();

    /// @notice Thrown when the recovered signer does not equal the claimedSigner
    error InvalidSigner();

    /// @notice Thrown when the recovered contract signature is incorrect
    error InvalidContractSignature();

    bytes32 constant UPPER_BIT_MASK = (0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);

    function verify(bytes calldata signature, bytes32 hash, address claimedSigner) internal view {
        bytes32 r;
        bytes32 s;
        uint8 v;

        if (claimedSigner.code.length == 0) {
            if (signature.length == 65) {
                (r, s) = abi.decode(signature, (bytes32, bytes32));
                v = uint8(signature[64]);
            } else if (signature.length == 64) {
                // EIP-2098
                bytes32 vs;
                (r, vs) = abi.decode(signature, (bytes32, bytes32));
                s = vs & UPPER_BIT_MASK;
                v = uint8(uint256(vs >> 255)) + 27;
            } else {
                revert InvalidSignatureLength();
            }
            address signer = ecrecover(hash, v, r, s);
            if (signer == address(0)) revert InvalidSignature();
            if (signer != claimedSigner) revert InvalidSigner();
        } else {
            bytes4 magicValue = IERC1271(claimedSigner).isValidSignature(hash, signature);
            if (magicValue != IERC1271.isValidSignature.selector) revert InvalidContractSignature();
        }
    }
}

// ============================================================
// FILE: node_modules/solmate/src/auth/Owned.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Simple single owner authorization mixin.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/auth/Owned.sol)
abstract contract Owned {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OwnershipTransferred(address indexed user, address indexed newOwner);

    /*//////////////////////////////////////////////////////////////
                            OWNERSHIP STORAGE
    //////////////////////////////////////////////////////////////*/

    address public owner;

    modifier onlyOwner() virtual {
        require(msg.sender == owner, "UNAUTHORIZED");

        _;
    }

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address _owner) {
        owner = _owner;

        emit OwnershipTransferred(address(0), _owner);
    }

    /*//////////////////////////////////////////////////////////////
                             OWNERSHIP LOGIC
    //////////////////////////////////////////////////////////////*/

    function transferOwnership(address newOwner) public virtual onlyOwner {
        owner = newOwner;

        emit OwnershipTransferred(msg.sender, newOwner);
    }
}

// ============================================================
// FILE: node_modules/solmate/src/tokens/ERC20.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Modern and gas efficient ERC20 + EIP-2612 implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC20.sol)
/// @author Modified from Uniswap (https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol)
/// @dev Do not manually set balances without updating totalSupply, as the sum of all user balances must not exceed it.
abstract contract ERC20 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 amount);

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    uint8 public immutable decimals;

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    /*//////////////////////////////////////////////////////////////
                            EIP-2612 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 internal immutable INITIAL_CHAIN_ID;

    bytes32 internal immutable INITIAL_DOMAIN_SEPARATOR;

    mapping(address => uint256) public nonces;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;

        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator();
    }

    /*//////////////////////////////////////////////////////////////
                               ERC20 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(address to, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        require(deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");

        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(
                            abi.encode(
                                keccak256(
                                    "Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)"
                                ),
                                owner,
                                spender,
                                value,
                                nonces[owner]++,
                                deadline
                            )
                        )
                    )
                ),
                v,
                r,
                s
            );

            require(recoveredAddress != address(0) && recoveredAddress == owner, "INVALID_SIGNER");

            allowance[recoveredAddress][spender] = value;
        }

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator();
    }

    function computeDomainSeparator() internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                    keccak256(bytes(name)),
                    keccak256("1"),
                    block.chainid,
                    address(this)
                )
            );
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 amount) internal virtual {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        balanceOf[from] -= amount;

        // Cannot underflow because a user's balance
        // will never be larger than the total supply.
        unchecked {
            totalSupply -= amount;
        }

        emit Transfer(from, address(0), amount);
    }
}

// ============================================================
// FILE: node_modules/solmate/src/tokens/ERC721.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Modern, minimalist, and gas efficient ERC-721 implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC721.sol)
abstract contract ERC721 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 indexed id);

    event Approval(address indexed owner, address indexed spender, uint256 indexed id);

    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /*//////////////////////////////////////////////////////////////
                         METADATA STORAGE/LOGIC
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    function tokenURI(uint256 id) public view virtual returns (string memory);

    /*//////////////////////////////////////////////////////////////
                      ERC721 BALANCE/OWNER STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(uint256 => address) internal _ownerOf;

    mapping(address => uint256) internal _balanceOf;

    function ownerOf(uint256 id) public view virtual returns (address owner) {
        require((owner = _ownerOf[id]) != address(0), "NOT_MINTED");
    }

    function balanceOf(address owner) public view virtual returns (uint256) {
        require(owner != address(0), "ZERO_ADDRESS");

        return _balanceOf[owner];
    }

    /*//////////////////////////////////////////////////////////////
                         ERC721 APPROVAL STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(uint256 => address) public getApproved;

    mapping(address => mapping(address => bool)) public isApprovedForAll;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    /*//////////////////////////////////////////////////////////////
                              ERC721 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 id) public virtual {
        address owner = _ownerOf[id];

        require(msg.sender == owner || isApprovedForAll[owner][msg.sender], "NOT_AUTHORIZED");

        getApproved[id] = spender;

        emit Approval(owner, spender, id);
    }

    function setApprovalForAll(address operator, bool approved) public virtual {
        isApprovedForAll[msg.sender][operator] = approved;

        emit ApprovalForAll(msg.sender, operator, approved);
    }

    function transferFrom(
        address from,
        address to,
        uint256 id
    ) public virtual {
        require(from == _ownerOf[id], "WRONG_FROM");

        require(to != address(0), "INVALID_RECIPIENT");

        require(
            msg.sender == from || isApprovedForAll[from][msg.sender] || msg.sender == getApproved[id],
            "NOT_AUTHORIZED"
        );

        // Underflow of the sender's balance is impossible because we check for
        // ownership above and the recipient's balance can't realistically overflow.
        unchecked {
            _balanceOf[from]--;

            _balanceOf[to]++;
        }

        _ownerOf[id] = to;

        delete getApproved[id];

        emit Transfer(from, to, id);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 id
    ) public virtual {
        transferFrom(from, to, id);

        require(
            to.code.length == 0 ||
                ERC721TokenReceiver(to).onERC721Received(msg.sender, from, id, "") ==
                ERC721TokenReceiver.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 id,
        bytes calldata data
    ) public virtual {
        transferFrom(from, to, id);

        require(
            to.code.length == 0 ||
                ERC721TokenReceiver(to).onERC721Received(msg.sender, from, id, data) ==
                ERC721TokenReceiver.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    /*//////////////////////////////////////////////////////////////
                              ERC165 LOGIC
    //////////////////////////////////////////////////////////////*/

    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return
            interfaceId == 0x01ffc9a7 || // ERC165 Interface ID for ERC165
            interfaceId == 0x80ac58cd || // ERC165 Interface ID for ERC721
            interfaceId == 0x5b5e139f; // ERC165 Interface ID for ERC721Metadata
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 id) internal virtual {
        require(to != address(0), "INVALID_RECIPIENT");

        require(_ownerOf[id] == address(0), "ALREADY_MINTED");

        // Counter overflow is incredibly unrealistic.
        unchecked {
            _balanceOf[to]++;
        }

        _ownerOf[id] = to;

        emit Transfer(address(0), to, id);
    }

    function _burn(uint256 id) internal virtual {
        address owner = _ownerOf[id];

        require(owner != address(0), "NOT_MINTED");

        // Ownership check above ensures no underflow.
        unchecked {
            _balanceOf[owner]--;
        }

        delete _ownerOf[id];

        delete getApproved[id];

        emit Transfer(owner, address(0), id);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL SAFE MINT LOGIC
    //////////////////////////////////////////////////////////////*/

    function _safeMint(address to, uint256 id) internal virtual {
        _mint(to, id);

        require(
            to.code.length == 0 ||
                ERC721TokenReceiver(to).onERC721Received(msg.sender, address(0), id, "") ==
                ERC721TokenReceiver.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    function _safeMint(
        address to,
        uint256 id,
        bytes memory data
    ) internal virtual {
        _mint(to, id);

        require(
            to.code.length == 0 ||
                ERC721TokenReceiver(to).onERC721Received(msg.sender, address(0), id, data) ==
                ERC721TokenReceiver.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }
}

/// @notice A generic interface for a contract which properly accepts ERC721 tokens.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC721.sol)
abstract contract ERC721TokenReceiver {
    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external virtual returns (bytes4) {
        return ERC721TokenReceiver.onERC721Received.selector;
    }
}

// ============================================================
// FILE: node_modules/solmate/src/utils/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Gas optimized reentrancy protection for smart contracts.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/ReentrancyGuard.sol)
/// @author Modified from OpenZeppelin (https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/ReentrancyGuard.sol)
abstract contract ReentrancyGuard {
    uint256 private locked = 1;

    modifier nonReentrant() virtual {
        require(locked == 1, "REENTRANCY");

        locked = 2;

        _;

        locked = 1;
    }
}

// ============================================================
// FILE: src/DynamicFeeManager.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

// - - - external deps - - -

import {Owned} from "solmate/src/auth/Owned.sol";

import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";

// - - - local deps - - -

import {IDynamicFeeManager} from "./interfaces/IDynamicFeeManager.sol";
import {IPoolPolicyManager} from "./interfaces/IPoolPolicyManager.sol";
import {TruncGeoOracleMulti} from "./TruncGeoOracleMulti.sol";
import {DynamicFeeState, DynamicFeeStateLibrary} from "./libraries/DynamicFeeState.sol";
import {Errors} from "./errors/Errors.sol";

/// @title DynamicFeeManager
/// @notice Manages dynamic fees for Uniswap v4 pools with base fees from oracle data and surge fees during capped periods
/// @dev Implements a two-phase fee system:
///      1. Base fees calculated from oracle tick volatility data
///      2. Surge fees applied during capped trading periods with linear decay
contract DynamicFeeManager is IDynamicFeeManager, Owned {
    using PoolIdLibrary for PoolId;
    using DynamicFeeStateLibrary for DynamicFeeState;

    // - - - CONSTANTS - - -

    /// @dev Fallback base fee when oracle has no data (0.5% in PPM)
    uint32 private constant DEFAULT_BASE_FEE_PPM = 5_000;

    /// @dev Parts per million denominator for percentage calculations
    uint256 private constant PPM_DENOMINATOR = 1e6;

    // - - - IMMUTABLE STATE - - -

    /// @inheritdoc IDynamicFeeManager
    IPoolPolicyManager public immutable override policyManager;

    /// @inheritdoc IDynamicFeeManager
    TruncGeoOracleMulti public immutable override oracle;

    /// @inheritdoc IDynamicFeeManager
    address public immutable override authorizedHook;

    // - - - STORAGE - - -

    /// @dev Per-pool dynamic fee state packed into a single storage slot
    mapping(PoolId => DynamicFeeState) private _poolFeeState;

    // - - - MODIFIERS - - -

    /// @notice Restricts access to contract owner or authorized hook
    modifier onlyOwnerOrHook() {
        if (msg.sender != owner && msg.sender != authorizedHook) {
            revert Errors.UnauthorizedCaller(msg.sender);
        }
        _;
    }

    /// @notice Restricts access to contract owner, authorized hook, or oracle contract
    modifier onlyOwnerOrHookOrOracle() {
        if (msg.sender != authorizedHook && msg.sender != address(oracle) && msg.sender != owner) {
            revert Errors.UnauthorizedCaller(msg.sender);
        }
        _;
    }

    // - - - CONSTRUCTOR - - -

    /// @notice Initializes the dynamic fee manager with required dependencies
    /// @param contractOwner The address that will own this contract
    /// @param _policyManager The policy manager contract for surge fee parameters
    /// @param oracleAddress The oracle contract for tick volatility data
    /// @param hookAddress The hook contract authorized to call state-changing functions
    constructor(address contractOwner, IPoolPolicyManager _policyManager, address oracleAddress, address hookAddress)
        Owned(contractOwner)
    {
        if (address(_policyManager) == address(0)) revert Errors.ZeroAddress();
        if (oracleAddress == address(0)) revert Errors.ZeroAddress();
        if (hookAddress == address(0)) revert Errors.ZeroAddress();

        policyManager = _policyManager;
        oracle = TruncGeoOracleMulti(oracleAddress);
        authorizedHook = hookAddress;
    }

    // - - - EXTERNAL FUNCTIONS - - -

    /// @inheritdoc IDynamicFeeManager
    function initialize(PoolId poolId, int24) external override onlyOwnerOrHook {
        // Idempotency check: return early if pool already initialized
        if (!_poolFeeState[poolId].isEmpty()) {
            emit AlreadyInitialized(poolId);
            return;
        }

        // Get initial base fee from oracle
        uint24 maxTicksPerBlock = oracle.maxTicksPerBlock(poolId);
        uint32 calculatedBaseFee = _calculateBaseFee(poolId, maxTicksPerBlock);

        // Initialize pool state
        DynamicFeeState initialState = DynamicFeeStateLibrary.empty().setBaseFee(calculatedBaseFee);
        _poolFeeState[poolId] = initialState;

        emit PoolInitialized(poolId);
    }

    /// @inheritdoc IDynamicFeeManager
    function notifyOracleUpdate(PoolId poolId, bool tickWasCapped) external override onlyOwnerOrHookOrOracle {
        DynamicFeeState currentState = _poolFeeState[poolId];
        if (currentState.isEmpty()) revert Errors.NotInitialized();

        uint40 currentTimestamp = uint40(block.timestamp);

        if (tickWasCapped) {
            _handleCapEntry(poolId, currentState, currentTimestamp);
        } else if (currentState.inCap()) {
            _handlePotentialCapExit(poolId, currentState, currentTimestamp);
        }
    }

    // - - - VIEW FUNCTIONS - - -

    /// @inheritdoc IDynamicFeeManager
    function getFeeState(PoolId poolId) external view override returns (uint256 baseFee, uint256 surgeFee) {
        DynamicFeeState currentState = _poolFeeState[poolId];
        if (currentState.isEmpty()) revert Errors.NotInitialized();

        uint24 maxTicksPerBlock = oracle.maxTicksPerBlock(poolId);
        baseFee = _calculateBaseFee(poolId, maxTicksPerBlock);
        surgeFee = _calculateSurge(poolId, currentState, maxTicksPerBlock);
    }

    /// @inheritdoc IDynamicFeeManager
    function isCAPEventActive(PoolId poolId) external view override returns (bool) {
        DynamicFeeState currentState = _poolFeeState[poolId];
        if (currentState.isEmpty()) revert Errors.NotInitialized();
        return currentState.inCap();
    }

    /// @notice Returns the base fee calculated from current oracle data
    /// @dev Convenience function primarily used for testing
    /// @param poolId The pool identifier
    /// @return The current base fee in PPM
    function baseFeeFromCap(PoolId poolId) external view returns (uint32) {
        uint24 maxTicksPerBlock = oracle.maxTicksPerBlock(poolId);
        return _calculateBaseFee(poolId, maxTicksPerBlock);
    }

    // - - - INTERNAL FUNCTIONS - Cap Event Handling - - -

    /// @notice Handles entering a capped trading state
    /// @param poolId The pool identifier
    /// @param currentState The current fee state
    /// @param currentTimestamp The current block timestamp
    function _handleCapEntry(PoolId poolId, DynamicFeeState currentState, uint40 currentTimestamp) private {
        DynamicFeeState updatedState = currentState.updateCapState(true, currentTimestamp);
        _poolFeeState[poolId] = updatedState;

        emit CapToggled(poolId, true);
        _emitFeeStateChanged(poolId, updatedState, currentTimestamp);
    }

    /// @notice Handles potential exit from capped trading state
    /// @param poolId The pool identifier
    /// @param currentState The current fee state
    /// @param currentTimestamp The current block timestamp
    function _handlePotentialCapExit(PoolId poolId, DynamicFeeState currentState, uint40 currentTimestamp) private {
        // Check if surge has decayed to zero
        uint24 maxTicksPerBlock = oracle.maxTicksPerBlock(poolId);
        uint256 currentSurgeFee = _calculateSurge(poolId, currentState, maxTicksPerBlock);

        if (currentSurgeFee == 0) {
            DynamicFeeState updatedState = currentState.setInCap(false);
            _poolFeeState[poolId] = updatedState;

            emit CapToggled(poolId, false);
            _emitFeeStateChanged(poolId, updatedState, currentTimestamp);
        }
    }

    /// @notice Emits fee state change event with current fee calculations
    /// @param poolId The pool identifier
    /// @param feeState The current fee state
    /// @param eventTimestamp The timestamp for the event
    function _emitFeeStateChanged(PoolId poolId, DynamicFeeState feeState, uint40 eventTimestamp) private {
        uint24 maxTicksPerBlock = oracle.maxTicksPerBlock(poolId);
        uint256 updatedBaseFee = _calculateBaseFee(poolId, maxTicksPerBlock);
        uint256 updatedSurgeFee = _calculateSurge(poolId, feeState, maxTicksPerBlock);

        emit FeeStateChanged(poolId, updatedBaseFee, updatedSurgeFee, feeState.inCap(), eventTimestamp);
    }

    // - - - INTERNAL FUNCTIONS - Fee Calculations - - -

    /// @notice Calculates base fee from oracle tick data
    /// @param maxTicksPerBlock The maximum ticks per block from oracle
    /// @return The calculated base fee in PPM
    function _calculateBaseFee(PoolId poolId, uint24 maxTicksPerBlock) private view returns (uint32) {
        uint24 minBaseFee = policyManager.getMinBaseFee(poolId);
        uint24 maxBaseFee = policyManager.getMaxBaseFee(poolId);

        // Use DEFAULT_BASE_FEE_PPM when oracle has no data
        if (maxTicksPerBlock == 0) {
            // Return default or minBaseFee, whichever is higher
            return DEFAULT_BASE_FEE_PPM > minBaseFee ? DEFAULT_BASE_FEE_PPM : minBaseFee;
        }

        // Get the pool-specific base fee factor
        uint32 baseFeeFactor = policyManager.getBaseFeeFactor(poolId);

        uint256 calculatedFee;
        unchecked {
            calculatedFee = uint256(maxTicksPerBlock) * baseFeeFactor;
        }

        // Clamp between min and max
        if (calculatedFee < minBaseFee) return minBaseFee;
        if (calculatedFee > maxBaseFee) return maxBaseFee;
        return uint32(calculatedFee);
    }

    /// @notice Calculates surge fee with linear decay
    /// @param poolId The pool identifier
    /// @param feeState The current fee state
    /// @param oracleMaxTicks The maximum ticks per block from oracle (to avoid redundant calls)
    /// @return The calculated surge fee in PPM
    function _calculateSurge(PoolId poolId, DynamicFeeState feeState, uint24 oracleMaxTicks)
        private
        view
        returns (uint256)
    {
        uint40 capStartTime = feeState.capStart();
        if (capStartTime == 0) return 0;

        uint40 currentTimestamp = uint40(block.timestamp);
        uint32 surgeDuration = uint32(policyManager.getSurgeDecayPeriodSeconds(poolId));

        if (surgeDuration == 0) return 0;

        // Calculate elapsed time since cap started
        uint40 elapsedTime = currentTimestamp > capStartTime ? currentTimestamp - capStartTime : 0;
        if (elapsedTime >= surgeDuration) return 0;

        // Get base fee for surge calculation
        uint256 oracleBaseFee = _calculateBaseFee(poolId, oracleMaxTicks);

        // Calculate maximum surge fee
        uint256 surgeMultiplierPpm = policyManager.getSurgeFeeMultiplierPpm(poolId);
        uint256 maxSurgeFee = oracleBaseFee * surgeMultiplierPpm / PPM_DENOMINATOR;

        // Apply linear decay: surgeFee = maxSurge * (remaining_time / total_time)
        uint256 remainingTime = uint256(surgeDuration) - elapsedTime;
        return maxSurgeFee * remainingTime / surgeDuration;
    }
}

// ============================================================
// FILE: src/errors/Errors.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {PoolId} from "v4-core/src/types/PoolId.sol";

// TODO: cleanup unused errors

/**
 * @title Errors
 * @notice Collection of all custom errors used in the protocol
 */
library Errors {
    // --- Access Control ---
    error AccessDenied();
    error AccessOnlyGovernance(address caller);
    error AccessOnlyPoolManager(address caller);
    error AccessNotAuthorized(address caller);
    error AccessOnlyEmergencyAdmin(address caller);
    error Unauthorized();
    error CallerNotPoolManager(address caller);
    error CallerNotMarginContract();
    error AccessOnlyOwner(address caller);
    error UnauthorizedCaller(address caller);
    error GovernanceNotInitialized();
    error HookAddressAlreadySet();
    error InvalidHookAddress();
    error ZeroDestination();
    error NotPoolManager();

    // --- Validation & Input ---
    error InvalidHookAuthorization(address expected, address actual);
    error PoolPositionManagerMismatch();
    error ValidationDeadlinePassed(uint32 deadline, uint32 blockTime);
    error ValidationZeroAddress(string target);
    error ValidationInvalidInput(string reason);
    error ValidationZeroAmount(string parameter);
    error ValidationInvalidLength(string parameter);
    error ValidationInvalidAddress(address target);
    error ValidationInvalidRange(string parameter);
    error ValidationInvalidFee(uint24 fee);
    error ValidationInvalidTickSpacing(int24 tickSpacing);
    error ValidationInvalidTick(int24 tick);
    error ValidationInvalidSlippage(uint256 slippage);
    error ParameterOutOfRange(uint256 value, uint256 min, uint256 max);
    error DeadlinePassed(uint32 deadline, uint32 blockTime);
    error ArrayLengthMismatch();
    error InvalidCallbackSalt();
    error InvalidPolicyImplementationsLength(uint256 length);
    error NotInitialized();
    error AlreadyInitialized(string component);
    error ReinvestmentDisabled();
    error RateLimited();
    error InvalidPoolKey();
    error InvalidPoolId();
    error InvalidTwapPeriod();
    error InvalidTickTolerance();
    error ZeroAddress();
    error ZeroAmount();
    error ZeroLiquidity();
    error ZeroShares();
    error ZeroPolicyManagerAddress();
    error ZeroPoolManagerAddress();
    error ZeroFullRangeAddress();
    error InvalidCallbackType(uint8 callbackType);
    error InvalidTickRange();
    error InvalidParameter(string parameterName, uint256 value);
    error ExpiryTooSoon(uint256 expiry, uint256 requiredTime);
    error ExpiryTooFar(uint256 expiry, uint256 requiredTime);

    // --- Math & Calculation ---
    error DivisionByZero();
    error Overflow();
    error Underflow();
    error InvalidCalculation();
    error InvalidConversion();
    error InvalidRatio();
    error InvalidAmount();
    error InvalidShare();
    error InvalidPercentage();
    error InvalidFee();
    error InvalidPrice(uint160 sqrtPriceX96);
    error InvalidLiquidity();
    error InvalidInput();
    error StaleOracle();
    error FeeTooHigh();
    error AmountTooLarge(uint256 amount, uint256 maximum);
    error SlippageExceeded(uint256 required, uint256 actual);
    error CalculationError(string reason);
    error MathOverflow();
    error MathUnderflow();
    error InsufficientInitialLiquidity();

    // --- System & State ---
    error HookDispatchFailed(bytes4 selector);
    error DelegateCallFailed();
    error NotImplemented();
    error ContractPaused();
    error InternalError(string message);
    error InconsistentState(string reason);

    // --- Pool State & Operations ---
    error PoolNotInitialized(bytes32 poolId);
    error PoolAlreadyInitialized(bytes32 poolId);
    error PoolNotFound(PoolId poolId);
    error PoolPaused(bytes32 poolId);
    error PoolLocked(bytes32 poolId);
    error PoolInvalidState(bytes32 poolId);
    error PoolInvalidOperation(bytes32 poolId);
    error PoolInvalidParameter(bytes32 poolId);
    error PoolUnsupportedFee(uint24 fee);
    error PoolUnsupportedTickSpacing(int24 tickSpacing);
    error PoolInvalidFeeOrTickSpacing(uint24 fee, int24 tickSpacing);
    error PoolTickOutOfRange(int24 tick, int24 minTick, int24 maxTick);
    error PoolInEmergencyState(bytes32 poolId);
    error PoolInvalidStateTransition(bytes32 poolId, string currentState, string targetState);
    error OnlyDynamicFeePoolAllowed();
    error FailedToReadPoolData(PoolId poolId);
    error PoolKeyAlreadyStored(bytes32 poolId);

    // --- Liquidity & Shares ---
    error PositionNotFound(PoolId poolId);
    error InsufficientAmount(uint256 requested, uint256 available);
    error InsufficientLiquidity(uint256 requested, uint256 available);
    error InsufficientShares(uint256 requested, uint256 available);
    error InsufficientBalance(uint256 requested, uint256 available);
    error InsufficientAllowance(uint256 requested, uint256 available);
    error LiquidityOverflow();
    error LiquidityUnderflow();
    error LiquidityLocked();
    error LiquidityRangeTooWide();
    error LiquidityRangeTooNarrow();
    error LiquidityAlreadyExists();
    error LiquidityDoesNotExist();
    error LiquidityNotAvailable();
    error DepositTooSmall();
    error InitialDepositTooSmall(uint256 minAmount, uint256 actualAmount);
    error WithdrawAmountTooSmall();

    // --- Policy ---
    error PolicyNotFound();
    error PolicyAlreadyExists();
    error PolicyInvalidState();
    error PolicyInvalidParameter();
    error PolicyInvalidOperation();
    error PolicyUnauthorized();
    error PolicyLocked();
    error PolicyExpired();
    error PolicyNotActive();
    error PolicyNotImplemented();
    error AllocationSumError(uint256 polShare, uint256 expected);

    // --- Hooks ---
    error HookNotFound();
    error HookAlreadyExists();
    error HookInvalidState();
    error HookInvalidParameter();
    error HookInvalidOperation();
    error HookUnauthorized();
    error HookLocked();
    error HookExpired();
    error HookNotActive();
    error HookNotImplemented();
    error HookInvalidAddress(address hook);
    error HookOnlyInitialization();
    error HookOnlyModifyLiquidity();
    error HookOnlySwap();
    error HookOnlyDonate();
    error HookNotSet();

    // --- Token & ETH Transfers ---
    error TokenNotFound();
    error TokenAlreadyExists();
    error TokenInvalidState();
    error TokenInvalidParameter();
    error TokenInvalidOperation();
    error TokenUnauthorized();
    error TokenLocked();
    error TokenExpired();
    error TokenNotActive();
    error TokenNotImplemented();
    error TokenTransferFailed();
    error TokenApprovalFailed();
    error TokenEthNotAccepted();
    error TokenInsufficientEth(uint256 required, uint256 provided);
    error TokenEthTransferFailed(address to, uint256 amount);
    error NonzeroNativeValue();
    error InsufficientETH(uint256 required, uint256 provided);
    error InsufficientContractBalance(uint256 required, uint256 available);
    error ETHTransferFailed();
    error TransferFailed();
    error TransferFromFailed();
    error InsufficientReserves();
    error TooLittleAmount0(uint256 min, uint256 actual);
    error TooLittleAmount1(uint256 min, uint256 actual);

    // --- Oracle ---
    error OracleOperationFailed(string operation, string reason);
    error OracleNotInitialized(PoolId poolId);
    error OracleAlreadyInitialized(PoolId poolId);
    error OracleUpdateFailed(PoolId poolId, string reason);
    error OraclePriceInvalid(uint160 sqrtPriceX96);
    error OracleTickInvalid(int24 tick);
    error OracleCapExceeded(PoolId poolId, int24 tick, int24 maxMove);

    // --- Fee Reinvestment ---
    error FeeExtractionFailed(string reason);
    error InvalidPolPercentage(uint256 provided, uint256 min, uint256 max);
    error PoolSpecificPolPercentageNotAllowed();
    error InvalidFeeDistribution(uint256 polShare, uint256 lpShare, uint256 expected);
    error PoolReinvestmentBlocked(PoolId poolId);
    error CollectionIntervalTooShort(uint256 provided, uint256 minimum);
    error CollectionIntervalTooLong(uint256 provided, uint256 maximum);
    error HookCallbackFailed(string reason);
    error FeesNotAvailable();
    error ExtractionAmountExceedsFees();
    error CacheStale(uint32 lastUpdate, uint32 currentTime, uint32 maxAge);
    error FeeReinvestNotAuthorized(address caller);
    error CannotWithdrawProtocolFees();
    error ReinvestmentAmountTooSmall(uint256 amount0, uint256 amount1);
    error ReinvestmentCooldownNotMet(uint64 lastReinvest, uint64 cooldown);
    error ReinvestmentThresholdNotMet(uint256 balance0, uint256 balance1, uint256 min0, uint256 min1);

    // --- Margin & Vault ---
    error WithdrawalWouldMakeVaultInsolvent();
    error NoDebtToRepay();
    error DepositFailed();
    error InsufficientCollateral(uint256 debt, uint256 collateral, uint256 threshold);
    error PoolUtilizationTooHigh();
    error InsufficientPhysicalShares(uint256 requested, uint256 available);
    error InterestModelNotSet();
    error MarginContractNotSet();
    error RepayAmountExceedsDebt(uint256 sharesToRepay, uint256 currentDebtShares);
    error DepositForRepayFailed();
    error InvalidAsset();
    error MaxPoolUtilizationExceeded(uint256 currentUtilization, uint256 maxUtilization);

    // --- Liquidation ---
    error NotLiquidatable(uint256 currentRatio, uint256 threshold);
    error LiquidationTooSmall(uint256 requestedAmount, uint256 minimumAmount);
    error InvalidLiquidationParams();

    // --- Invariants ---

    error InvalidSwapDelta();
    error ETHRefundFailed();
    error InvariantETHTransferFailed();
}

// ============================================================
// FILE: src/errors/PolicyManagerErrors.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";

/**
 * @title Errors
 * @notice Custom errors used throughout the Spot system
 */
library PolicyManagerErrors {
    // === General errors ===
    error ZeroAddress();
    error UnauthorizedCaller(address caller);
    error ETHRefundFailed();
    error ParameterOutOfRange(uint256 value, uint256 min, uint256 max);
    error AllocationSumError(uint256 pol, uint256 fullRange, uint256 lp, uint256 expected);
    error InvalidFeeRange(uint24 value, uint24 min, uint24 max);
    error ZeroValue();

    // === Pool-specific errors ===
    error PoolNotFound(PoolId poolId);
    error PositionNotFound(PoolId poolId);
    error PoolPositionManagerMismatch();
    error InvalidHookAuthorization(address expected, address actual);

    // === Liquidity operations errors ===
    error TooLittleAmount0(uint256 minimum, uint256 actual);
    error TooLittleAmount1(uint256 minimum, uint256 actual);
    error InsufficientETH(uint256 required, uint256 provided);
    error InvalidPrice(uint160 price);
    error InvalidSwapDelta();

    // === Manual fee errors ===
    error ManualFeeNotSet(PoolId poolId);
    error ManualFeeAlreadySet(PoolId poolId);
}

// ============================================================
// FILE: src/FullRangeLiquidityManager.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

// - - - OZ Deps - - -

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// - - - Permit2 Deps - - -

import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";

// - - - V4 Core Deps - - -

import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";
import {Currency, CurrencyLibrary} from "v4-core/src/types/Currency.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {BalanceDelta} from "v4-core/src/types/BalanceDelta.sol";
import {TickMath} from "v4-core/src/libraries/TickMath.sol";
import {StateLibrary} from "v4-core/src/libraries/StateLibrary.sol";
import {TransientStateLibrary} from "v4-core/src/libraries/TransientStateLibrary.sol";
import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {IUnlockCallback} from "v4-core/src/interfaces/callback/IUnlockCallback.sol";
import {IERC20Minimal} from "v4-core/src/interfaces/external/IERC20Minimal.sol";

import {ERC6909Claims} from "v4-core/src/ERC6909Claims.sol";

// - - - V4 Periphery Deps - - -

import {LiquidityAmounts} from "./libraries/LiquidityAmounts.sol";
import {Actions} from "v4-periphery/src/libraries/Actions.sol";
import {PositionManager} from "v4-periphery/src/PositionManager.sol";
import {IWETH9} from "v4-periphery/src/interfaces/external/IWETH9.sol";
import {ISubscriber} from "v4-periphery/src/interfaces/ISubscriber.sol";
import {PositionInfo} from "v4-periphery/src/libraries/PositionInfoLibrary.sol";
import {ReentrancyGuard} from "solmate/src/utils/ReentrancyGuard.sol";

// - - - Project Interfaces - - -

import {Errors} from "./errors/Errors.sol";
import {IFullRangeLiquidityManager} from "./interfaces/IFullRangeLiquidityManager.sol";
import {Math} from "./libraries/Math.sol";

// - - - Project Contracts - - -

import {PoolPolicyManager} from "./PoolPolicyManager.sol";
import {TruncGeoOracleMulti} from "./TruncGeoOracleMulti.sol";

/// @title FullRangeLiquidityManager
/// @notice Manages hook fees and liquidity for Spot pools
/// @dev Handles fee collection, reinvestment, and allows users to contribute liquidity
contract FullRangeLiquidityManager is IFullRangeLiquidityManager, ISubscriber, ERC6909Claims, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using PoolIdLibrary for PoolKey;
    using PoolIdLibrary for PoolId;
    using CurrencyLibrary for Currency;

    /// @dev Constant for the minimum locked liquidity per position
    uint256 private constant MIN_LOCKED_LIQUIDITY = 1000;

    /// @notice Cooldown period between reinvestments (default: 1 day)
    uint256 public constant REINVEST_COOLDOWN = 1 days;

    /// @notice Minimum amount to reinvest to avoid dust
    uint256 private constant MIN_REINVEST_AMOUNT = 1e4;

    /// @inheritdoc IFullRangeLiquidityManager
    address public immutable override authorizedHookAddress;

    /// @inheritdoc IFullRangeLiquidityManager
    IPoolManager public immutable override poolManager;

    /// @inheritdoc IFullRangeLiquidityManager
    PositionManager public immutable override positionManager;

    /// @inheritdoc IFullRangeLiquidityManager
    PoolPolicyManager public immutable override policyManager;

    /// @inheritdoc IFullRangeLiquidityManager
    TruncGeoOracleMulti public immutable override oracle;

    struct PendingFees {
        uint256 erc6909_0;
        uint256 erc6909_1;
        uint256 erc20_0;
        uint256 erc20_1;
    }

    /// @notice Pending fees per pool
    mapping(PoolId => PendingFees) private pendingFees;

    /// @notice Last reinvestment timestamp per pool
    mapping(PoolId => uint256) private lastReinvestment;

    /// @notice NFT token IDs for full range positions
    mapping(PoolId => uint256) private positionIds;

    /// @inheritdoc IFullRangeLiquidityManager
    uint32 public reinvestmentTwap;

    /// @inheritdoc IFullRangeLiquidityManager
    int24 public tickRangeTolerance;

    /// @inheritdoc IFullRangeLiquidityManager
    mapping(Currency => uint256) public override accountedBalances;

    /// @inheritdoc IFullRangeLiquidityManager
    mapping(Currency => uint256) public override accountedERC6909Balances;

    /// @notice Constructs the FullRangeLiquidityManager
    /// @param _poolManager The Uniswap V4 PoolManager
    /// @param _positionManager The Uniswap V4 PositionManager
    /// @param _oracle The oracle contract
    /// @param _authorizedHookAddress The hook address that can notify fees
    constructor(
        IPoolManager _poolManager,
        PositionManager _positionManager,
        TruncGeoOracleMulti _oracle,
        address _authorizedHookAddress
    ) {
        if (address(_poolManager) == address(0)) revert Errors.ZeroAddress();
        if (address(_positionManager) == address(0)) revert Errors.ZeroAddress();
        if (address(_oracle) == address(0)) revert Errors.ZeroAddress();
        if (_authorizedHookAddress == address(0)) revert Errors.ZeroAddress();

        if (_positionManager.poolManager() != _poolManager) revert Errors.PoolPositionManagerMismatch();

        poolManager = _poolManager;
        positionManager = _positionManager;
        policyManager = PoolPolicyManager(address(_oracle.policy()));
        oracle = _oracle;
        authorizedHookAddress = _authorizedHookAddress;

        reinvestmentTwap = 60; // 1min
        tickRangeTolerance = 50; // ~±0.5%
    }

    modifier onlyPolicyOwner() {
        if (msg.sender != policyManager.owner()) revert Errors.UnauthorizedCaller(msg.sender);
        _;
    }

    modifier onlySpot() {
        if (msg.sender != authorizedHookAddress) revert Errors.UnauthorizedCaller(msg.sender);
        _;
    }

    modifier onlyPoolManager() {
        if (msg.sender != address(poolManager)) revert Errors.NotPoolManager();
        _;
    }

    modifier onlyPositionManager() {
        if (msg.sender != address(positionManager)) revert Errors.UnauthorizedCaller(msg.sender);
        _;
    }

    receive() external payable {
        // Accept ETH transfers silently
        // This is needed when redeeming native ETH through poolManager.take()
        // or when receiving ETH from PositionManager operations
    }

    /// @inheritdoc IUnlockCallback
    function unlockCallback(bytes calldata data) external override onlyPoolManager nonReentrant returns (bytes memory) {
        if (data.length > 0) {
            // Decode the action type
            (CallbackAction action) = abi.decode(data[:32], (CallbackAction));

            if (action == CallbackAction.TAKE_TOKENS) {
                // Decode token currencies and amounts
                (
                    , // Skip the action we already decoded
                    Currency currency0,
                    Currency currency1,
                    uint256 amount0,
                    uint256 amount1
                ) = abi.decode(data, (CallbackAction, Currency, Currency, uint256, uint256));

                // Take tokens from PoolManager to this contract
                if (amount0 > 0) {
                    // Track token balances when converting from ERC6909
                    accountedERC6909Balances[currency0] -= amount0;
                    accountedBalances[currency0] += amount0;

                    poolManager.take(currency0, address(this), amount0);
                    // Burn ERC6909 tokens to balance the delta
                    poolManager.burn(address(this), currency0.toId(), amount0);
                }

                if (amount1 > 0) {
                    // Track token balances when converting from ERC6909
                    accountedERC6909Balances[currency1] -= amount1;
                    accountedBalances[currency1] += amount1;

                    poolManager.take(currency1, address(this), amount1);
                    // Burn ERC6909 tokens to balance the delta
                    poolManager.burn(address(this), currency1.toId(), amount1);
                }
            } else if (action == CallbackAction.SWEEP_EXCESS_TOKEN) {
                // Decode sweep parameters
                (
                    , // Skip the action we already decoded
                    Currency token,
                    address to,
                    uint256 amount
                ) = abi.decode(data, (CallbackAction, Currency, address, uint256));

                // Take tokens directly to the specified recipient
                poolManager.take(token, to, amount);
                // Burn ERC6909 tokens to balance the delta
                poolManager.burn(address(this), token.toId(), amount);

                // NOTE: No need to update ERC6909 balance tracking as we're only sweeping excess
            }
        }

        return "";
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function notifyFee(PoolKey calldata poolKey, uint256 fee0, uint256 fee1) external override onlySpot {
        PoolId poolId = poolKey.toId();
        // Update pending fees
        if (fee0 > 0) {
            pendingFees[poolId].erc6909_0 += fee0;
            // Track ERC6909 balance
            accountedERC6909Balances[poolKey.currency0] += fee0;
        }

        if (fee1 > 0) {
            pendingFees[poolId].erc6909_1 += fee1;
            // Track ERC6909 balance
            accountedERC6909Balances[poolKey.currency1] += fee1;
        }
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function reinvest(PoolKey calldata key) external override returns (bool success) {
        PoolId poolId = key.toId();

        // Check cooldown and thresholds
        if (block.timestamp < lastReinvestment[poolId] + REINVEST_COOLDOWN) {
            return false;
        }

        // Get pending fees
        PendingFees memory _pendingFees = pendingFees[poolId];

        uint256 erc6909_0 = _pendingFees.erc6909_0;
        uint256 erc6909_1 = _pendingFees.erc6909_1;

        uint256 erc20_0 = _pendingFees.erc20_0;
        uint256 erc20_1 = _pendingFees.erc20_1;

        uint256 total0 = erc6909_0 + erc20_0;
        uint256 total1 = erc6909_1 + erc20_1;

        // Check minimum thresholds
        if (total0 < MIN_REINVEST_AMOUNT || total1 < MIN_REINVEST_AMOUNT) {
            return false;
        }

        uint32 _reinvestmentTwap = reinvestmentTwap;
        if (_reinvestmentTwap != 0) {
            // Get current spot price tick
            (, int24 currentTick,,) = StateLibrary.getSlot0(poolManager, poolId);

            // Get TWAP tick from oracle
            (int24 twapTick,) = oracle.consult(key, _reinvestmentTwap);

            // Check if current tick is within tolerance of TWAP
            int24 tickDeviation = currentTick > twapTick ? currentTick - twapTick : twapTick - currentTick;
            if (tickDeviation > tickRangeTolerance) {
                return false; // Reject reinvestment due to price manipulation
            }
        }

        // Redeem ERC20 tokens from PoolManager
        // NOTE: We have to first redeem the ERC20 tokens to the FRLM since the Actions.BURN_6909 code has not yet supported
        // and so the PositionManager does not yet have the ability to settle from PoolManager 6909 allowances that the user
        // would have granted to the PositionManager

        if (!TransientStateLibrary.isUnlocked(poolManager)) {
            bytes memory callbackData =
                abi.encode(CallbackAction.TAKE_TOKENS, key.currency0, key.currency1, erc6909_0, erc6909_1);

            // The unlockCallback function will update the accounted balances
            poolManager.unlock(callbackData);
        } else {
            // NOTE: this pathway is possible when reinvest is called in afterSwap
            poolManager.take(key.currency0, address(this), erc6909_0);
            poolManager.burn(address(this), key.currency0.toId(), erc6909_0);

            // Track token balances when converting from ERC6909
            accountedERC6909Balances[key.currency0] -= erc6909_0;
            accountedBalances[key.currency0] += erc6909_0;

            poolManager.take(key.currency1, address(this), erc6909_1);
            poolManager.burn(address(this), key.currency1.toId(), erc6909_1);

            // Track token balances when converting from ERC6909
            accountedERC6909Balances[key.currency1] -= erc6909_1;
            accountedBalances[key.currency1] += erc6909_1;
        }

        // Approve tokens for position operations
        _approveTokensForPosition(key.currency0, key.currency1);

        // Add liquidity to position
        (uint256 liquidityAdded, uint256 amount0Used, uint256 amount1Used) =
            _addLiquidityToPosition(key, total0, total1, MIN_REINVEST_AMOUNT, MIN_REINVEST_AMOUNT);

        // Restore any unused amounts and accrued NFT fees to pendingFees
        // Update accountedBalances for tokens used in position
        accountedBalances[key.currency0] -= amount0Used;
        accountedBalances[key.currency1] -= amount1Used;

        // NOTE: at this point pendingFees could've been updated in notifyModifyLiquidity so we reload into memory
        PendingFees memory _finalPendingFees = pendingFees[poolId];

        pendingFees[poolId] = PendingFees({
            erc20_0: (_finalPendingFees.erc20_0 + total0) - amount0Used - _pendingFees.erc20_0,
            erc20_1: (_finalPendingFees.erc20_1 + total1) - amount1Used - _pendingFees.erc20_1,
            erc6909_0: 0,
            erc6909_1: 0
        });

        // Mint ERC6909 shares to this contract (protocol-owned)
        _mint(address(this), uint256(PoolId.unwrap(poolId)), liquidityAdded);

        // Update last reinvestment time
        lastReinvestment[poolId] = block.timestamp;

        emit FeesReinvested(poolId, amount0Used, amount1Used, liquidityAdded);

        return true;
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function getPendingFees(PoolId poolId) external view override returns (uint256 amount0, uint256 amount1) {
        PendingFees memory _pendingFees = pendingFees[poolId];
        (amount0, amount1) =
            (_pendingFees.erc20_0 + _pendingFees.erc6909_0, _pendingFees.erc20_1 + _pendingFees.erc6909_1);
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function getNextReinvestmentTime(PoolId poolId) external view override returns (uint256 timestamp) {
        uint256 last = lastReinvestment[poolId];
        if (last == 0) return block.timestamp;
        return last + REINVEST_COOLDOWN;
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function getPositionInfo(PoolId poolId)
        external
        view
        override
        returns (uint256 positionId, uint128 liquidity, uint256 amount0, uint256 amount1)
    {
        positionId = positionIds[poolId];

        // If no position exists, return zeros
        if (positionId == 0) {
            return (0, 0, 0, 0);
        }

        // Get pool key from poolId
        (PoolKey memory key,) = positionManager.getPoolAndPositionInfo(positionId);

        // Get the liquidity in the position from PositionManager
        liquidity = positionManager.getPositionLiquidity(positionId);

        // Get the current pool price
        (uint160 sqrtPriceX96,,,) = StateLibrary.getSlot0(poolManager, poolId);

        // Get tick range for full range position
        int24 minTick = TickMath.minUsableTick(key.tickSpacing);
        int24 maxTick = TickMath.maxUsableTick(key.tickSpacing);

        // Get sqrtPrice at tick bounds
        uint160 sqrtPriceLowerX96 = TickMath.getSqrtPriceAtTick(minTick);
        uint160 sqrtPriceUpperX96 = TickMath.getSqrtPriceAtTick(maxTick);

        // Convert liquidity to token amounts
        (amount0, amount1) =
            LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity);

        return (positionId, liquidity, amount0, amount1);
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function getLiquidityForShares(PoolId poolId, uint256 shares)
        public
        view
        override
        returns (uint256 amount0, uint256 amount1)
    {
        uint256 positionId = positionIds[poolId];
        // If no shares, return zeros
        if (positionId == 0 || shares == 0) {
            return (0, 0);
        }

        // Get pool key from poolId
        (PoolKey memory key,) = positionManager.getPoolAndPositionInfo(positionId);

        // Get the current pool price
        (uint160 sqrtPriceX96,,,) = StateLibrary.getSlot0(poolManager, poolId);

        // Get tick range for full range position
        int24 minTick = TickMath.minUsableTick(key.tickSpacing);
        int24 maxTick = TickMath.maxUsableTick(key.tickSpacing);

        // Get sqrtPrice at tick bounds
        uint160 sqrtPriceLowerX96 = TickMath.getSqrtPriceAtTick(minTick);
        uint160 sqrtPriceUpperX96 = TickMath.getSqrtPriceAtTick(maxTick);

        // Since shares correspond 1:1 with liquidity, we can directly convert the
        // shares amount to token amounts using the LiquidityAmounts library
        (amount0, amount1) =
            LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLowerX96, sqrtPriceUpperX96, uint128(shares));
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function getProtocolOwnedLiquidity(PoolId poolId)
        external
        view
        override
        returns (uint256 shares, uint256 amount0, uint256 amount1)
    {
        // Protocol-owned shares are those held by this contract
        uint256 poolIdUint = uint256(PoolId.unwrap(poolId));
        shares = balanceOf[address(this)][poolIdUint];

        if (shares == 0) {
            return (0, 0, 0);
        }

        // Get token amounts from shares
        (amount0, amount1) = getLiquidityForShares(poolId, shares);

        return (shares, amount0, amount1);
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function deposit(
        PoolKey calldata key,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient,
        address payer
    )
        external
        payable
        override
        onlySpot
        returns (
            uint256 liquidityAdded,
            uint256 amount0Used,
            uint256 amount1Used,
            uint256 unusedAmount0,
            uint256 unusedAmount1
        )
    {
        PoolId poolId = key.toId();

        // Pull tokens directly from the payer
        _handleTokenTransfersFromPayer(key.currency0, key.currency1, amount0Desired, amount1Desired, payer);

        // Approve tokens for position operations
        _approveTokensForPosition(key.currency0, key.currency1);

        // Add liquidity to position
        (liquidityAdded, amount0Used, amount1Used) =
            _addLiquidityToPosition(key, amount0Desired, amount1Desired, amount0Min, amount1Min);

        // Calculate unused amounts
        unusedAmount0 = amount0Desired - amount0Used;
        unusedAmount1 = amount1Desired - amount1Used;

        // Refund any unused tokens to the payer, not the caller
        if (unusedAmount0 > 0) {
            uint256 balance0 = key.currency0.balanceOfSelf();
            // NOTE: we do Math.min as it's possible that there's a unit loss in the LiquidityAmounts math
            uint256 transfer0 = Math.min(unusedAmount0, balance0);
            key.currency0.transfer(payer, transfer0);
        }

        if (unusedAmount1 > 0) {
            uint256 balance1 = key.currency1.balanceOfSelf();
            uint256 transfer1 = Math.min(unusedAmount1, balance1);
            key.currency1.transfer(payer, transfer1);
        }

        // shares correspond 1:1 with liquidity
        // Mint ERC6909 shares to recipient
        _mint(recipient, uint256(PoolId.unwrap(poolId)), liquidityAdded);

        emit Deposit(poolId, recipient, liquidityAdded, amount0Used, amount1Used);

        return (liquidityAdded, amount0Used, amount1Used, unusedAmount0, unusedAmount1);
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function withdraw(
        PoolKey calldata key,
        uint256 sharesToBurn,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient,
        address sharesOwner
    ) external override onlySpot returns (uint256 amount0, uint256 amount1) {
        // Use the shared withdrawal logic with the specified sharesOwner
        (amount0, amount1) = _withdrawLiquidity(key, sharesToBurn, amount0Min, amount1Min, sharesOwner, recipient);

        emit Withdraw(key.toId(), sharesOwner, recipient, amount0, amount1, sharesToBurn);

        return (amount0, amount1);
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function withdrawProtocolLiquidity(
        PoolKey calldata key,
        uint256 sharesToBurn,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient
    ) external override onlyPolicyOwner returns (uint256 amount0, uint256 amount1) {
        // Use the shared withdrawal logic with this contract as the shares owner
        (amount0, amount1) = _withdrawLiquidity(
            key,
            sharesToBurn,
            amount0Min,
            amount1Min,
            address(this), // Burn shares from this contract (protocol-owned)
            recipient
        );

        emit Withdraw(key.toId(), address(this), recipient, amount0, amount1, sharesToBurn);

        return (amount0, amount1);
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function sweepExcessTokens(Currency currency, address recipient)
        external
        onlyPolicyOwner
        returns (uint256 amountSwept)
    {
        if (recipient == address(0)) revert Errors.ZeroAddress();

        uint256 balance = currency.balanceOfSelf();
        uint256 accounted = accountedBalances[currency];

        // Only sweep excess tokens
        if (balance > accounted) {
            amountSwept = balance - accounted;

            // Transfer the tokens
            currency.transfer(recipient, amountSwept);

            emit ExcessTokensSwept(currency, recipient, amountSwept);
        }
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function sweepExcessERC6909(Currency currency, address recipient)
        external
        override
        onlyPolicyOwner
        returns (uint256 amountSwept)
    {
        if (recipient == address(0)) revert Errors.ZeroAddress();

        uint256 currencyId = currency.toId();
        uint256 balance = poolManager.balanceOf(address(this), currencyId);
        uint256 accounted = accountedERC6909Balances[currency];

        // Only sweep excess tokens
        if (balance > accounted) {
            amountSwept = balance - accounted;

            // Use unlock callback to take the tokens
            bytes memory callbackData = abi.encode(CallbackAction.SWEEP_EXCESS_TOKEN, currency, recipient, amountSwept);

            poolManager.unlock(callbackData);

            emit ExcessTokensSwept(currency, recipient, amountSwept);
        }
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function donate(PoolKey calldata key, uint256 amount0, uint256 amount1)
        external
        payable
        override
        returns (uint256 donated0, uint256 donated1)
    {
        // Validate that the currencies match the pool
        PoolId poolId = key.toId();

        (uint160 sqrtPriceX96,,,) = StateLibrary.getSlot0(poolManager, poolId);
        if (address(key.hooks) != authorizedHookAddress || sqrtPriceX96 == 0) revert Errors.PoolNotFound(poolId);

        Currency currency0 = key.currency0;
        Currency currency1 = key.currency1;

        // Pull tokens from the donor
        if (amount0 > 0) {
            // Handle ETH donation if currency0 is native
            if (currency0.isAddressZero()) {
                if (msg.value < amount0) {
                    revert Errors.InsufficientETH(amount0, msg.value);
                }
                donated0 = amount0;
            } else {
                // Handle ERC20 donation
                uint256 balanceBefore = currency0.balanceOfSelf();
                IERC20(Currency.unwrap(currency0)).safeTransferFrom(msg.sender, address(this), amount0);
                uint256 balanceAfter = currency0.balanceOfSelf();
                donated0 = balanceAfter - balanceBefore; // Account for potential transfer fees
            }

            // Update pending fees and accounting
            pendingFees[poolId].erc20_0 += donated0;
            accountedBalances[currency0] += donated0;
        }

        if (amount1 > 0) {
            // Handle ETH donation if currency1 is native (unlikely but possible)
            if (currency1.isAddressZero()) {
                if (msg.value < amount1 || (amount0 > 0 && currency0.isAddressZero() && msg.value < amount0 + amount1))
                {
                    revert Errors.InsufficientETH(amount0 + amount1, msg.value);
                }
                donated1 = amount1;
            } else {
                // Handle ERC20 donation
                uint256 balanceBefore = currency1.balanceOfSelf();
                IERC20(Currency.unwrap(currency1)).safeTransferFrom(msg.sender, address(this), amount1);
                uint256 balanceAfter = currency1.balanceOfSelf();
                donated1 = balanceAfter - balanceBefore; // Account for potential transfer fees
            }

            // Update pending fees and accounting
            pendingFees[poolId].erc20_1 += donated1;
            accountedBalances[currency1] += donated1;
        }

        // Return any excess ETH
        if (msg.value > 0) {
            uint256 ethUsed = 0;
            if (currency0.isAddressZero()) ethUsed += donated0;
            if (currency1.isAddressZero()) ethUsed += donated1;

            if (msg.value > ethUsed) {
                (bool success,) = msg.sender.call{value: msg.value - ethUsed}("");
                if (!success) revert Errors.ETHTransferFailed();
            }
        }

        emit Donation(poolId, msg.sender, donated0, donated1);

        return (donated0, donated1);
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function setReinvestmentTwap(uint32 _reinvestmentTwap) external onlyPolicyOwner {
        if (_reinvestmentTwap > 7200) revert Errors.InvalidTwapPeriod();
        reinvestmentTwap = _reinvestmentTwap;
        emit ReinvestmentTwapUpdated(_reinvestmentTwap);
    }

    /// @inheritdoc IFullRangeLiquidityManager
    function setTickRangeTolerance(int24 _tickRangeTolerance) external onlyPolicyOwner {
        if (_tickRangeTolerance < 0 || _tickRangeTolerance > 500) revert Errors.InvalidTickTolerance();
        tickRangeTolerance = _tickRangeTolerance;
        emit TickRangeToleranceUpdated(_tickRangeTolerance);
    }

    // - - - internals - - -

    function _approveTokensForPosition(Currency currency0, Currency currency1) internal {
        // Approve tokens to Permit2 with infinite allowance
        _approveToPermit2(currency0);
        _approveToPermit2(currency1);

        // Create infinite Permit2 allowance for PositionManager
        _createPermit2Allowance(currency0);
        _createPermit2Allowance(currency1);
    }

    function _approveToPermit2(Currency currency) internal {
        if (!currency.isAddressZero()) {
            address permit2 = address(positionManager.permit2());
            address token = Currency.unwrap(currency);
            uint256 currentAllowance = IERC20Minimal(token).allowance(address(this), permit2);
            if (currentAllowance < type(uint256).max) {
                // NOTE: typically ERC20s with infinite allowances are not decreased
                // however in the atypical case we always force the allowance to max
                IERC20(token).forceApprove(permit2, type(uint256).max);
            }
        }
    }

    function _createPermit2Allowance(Currency currency) internal {
        if (!currency.isAddressZero()) {
            IAllowanceTransfer permit2 = positionManager.permit2();
            address token = Currency.unwrap(currency);

            // Use max uint160 for amount and far future timestamp for expiration
            uint160 maxAmount = type(uint160).max;
            uint48 farFuture = type(uint48).max;

            // Check current allowance in the Permit2 contract
            (uint160 currentAmount,,) = permit2.allowance(address(this), token, address(positionManager));

            // Only update if not already maximum
            if (currentAmount < maxAmount) {
                permit2.approve(token, address(positionManager), maxAmount, farFuture);
            }
        }
    }

    function _addLiquidityToPosition(
        PoolKey calldata key,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min
    ) internal returns (uint256 liquidityAdded, uint256 amount0Used, uint256 amount1Used) {
        // Check if position exists
        uint256 positionId = positionIds[key.toId()];

        if (positionId == 0) {
            // Create new position
            (liquidityAdded, amount0Used, amount1Used) =
                _mintNewPosition(key, amount0Desired, amount1Desired, amount0Min, amount1Min);
        } else {
            // Increase existing position
            (liquidityAdded, amount0Used, amount1Used) =
                _increaseLiquidity(key, positionId, amount0Desired, amount1Desired, amount0Min, amount1Min);
        }
    }

    function _mintNewPosition(
        PoolKey calldata key,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min
    ) internal returns (uint256 liquidityAdded, uint256 amount0Used, uint256 amount1Used) {
        uint256 positionId;
        PoolId poolId = key.toId();
        // Calculate optimal liquidity for full range position
        (uint160 sqrtPriceX96,,,) = StateLibrary.getSlot0(poolManager, poolId);
        int24 minTick = TickMath.minUsableTick(key.tickSpacing);
        int24 maxTick = TickMath.maxUsableTick(key.tickSpacing);

        uint160 sqrtPriceLowerX96 = TickMath.getSqrtPriceAtTick(minTick);
        uint160 sqrtPriceUpperX96 = TickMath.getSqrtPriceAtTick(maxTick);

        uint128 liquidity = uint128(
            LiquidityAmounts.getLiquidityForAmounts(
                sqrtPriceX96, sqrtPriceLowerX96, sqrtPriceUpperX96, amount0Desired, amount1Desired
            )
        );

        if (liquidity <= MIN_LOCKED_LIQUIDITY || TransientStateLibrary.isUnlocked(poolManager)) {
            // NOTE: we early return if not much liquidity would be minted
            // Also if the PoolManager is unlocked we cannot PositionManager.subscribe to the NFT
            return (0, 0, 0);
        }

        // If native ETH then since we pass along the entire desired value
        // we want to sweep from the PositionManager if any of that was unused
        bool isNative = key.currency0.isAddressZero();

        // Build actions conditionally
        bytes memory actions;
        bytes[] memory params;

        if (isNative) {
            actions = abi.encodePacked(
                uint8(Actions.MINT_POSITION),
                uint8(Actions.CLOSE_CURRENCY),
                uint8(Actions.CLOSE_CURRENCY),
                uint8(Actions.SWEEP)
            );
            params = new bytes[](4);
        } else {
            actions = abi.encodePacked(
                uint8(Actions.MINT_POSITION), uint8(Actions.CLOSE_CURRENCY), uint8(Actions.CLOSE_CURRENCY)
            );
            params = new bytes[](3);
        }

        // Parameters for MINT_POSITION
        params[0] = abi.encode(
            key,
            minTick,
            maxTick,
            liquidity,
            amount0Desired, // Maximum token0 to use
            amount1Desired, // Maximum token1 to use
            address(this), // FRLM owns the NFT
            "" // No hook data
        );

        // Parameters for CLOSE_CURRENCY (currency0)
        params[1] = abi.encode(key.currency0);

        // Parameters for CLOSE_CURRENCY (currency1)
        params[2] = abi.encode(key.currency1);

        // Add sweep parameters only if needed
        if (isNative) {
            params[3] = abi.encode(key.currency0, address(this));
        }

        // Calculate native ETH value to forward
        uint256 ethValue = 0;
        if (isNative) ethValue = amount0Desired;

        // Execute the mint operation - forward ETH if needed
        positionManager.modifyLiquidities{value: ethValue}(
            abi.encode(actions, params),
            block.timestamp + 60 // 60 second deadline
        );

        // Get the position ID (will be the last minted token)
        positionId = positionManager.nextTokenId() - 1;

        // Store the position ID
        positionIds[poolId] = positionId;
        positionManager.subscribe(positionId, address(this), "");

        // Calculate actual amounts used based on the liquidity minted
        (amount0Used, amount1Used) =
            LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity);

        // Validate minimum amounts
        if (amount0Used < amount0Min) revert Errors.TooLittleAmount0(amount0Min, amount0Used);
        if (amount1Used < amount1Min) revert Errors.TooLittleAmount1(amount1Min, amount1Used);

        // Subtract MIN_LOCKED_LIQUIDITY from the shares to be minted
        // This effectively locks MIN_LOCKED_LIQUIDITY in the position
        liquidityAdded = uint256(liquidity) - MIN_LOCKED_LIQUIDITY;

        // NOTE: for v1 we want 1:1 share liquidity correspondence
        _mint(address(0), uint256(PoolId.unwrap(poolId)), MIN_LOCKED_LIQUIDITY);

        // round up just to be pessimistic regarding the amount taken
        return (liquidityAdded, Math.min(amount0Used + 1, amount0Desired), Math.min(amount1Used + 1, amount1Desired));
    }

    function _increaseLiquidity(
        PoolKey calldata key,
        uint256 positionId,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min
    ) internal returns (uint256 liquidityAdded, uint256 amount0Used, uint256 amount1Used) {
        // Calculate optimal liquidity increase
        (uint160 sqrtPriceX96,,,) = StateLibrary.getSlot0(poolManager, key.toId());
        int24 minTick = TickMath.minUsableTick(key.tickSpacing);
        int24 maxTick = TickMath.maxUsableTick(key.tickSpacing);

        uint160 sqrtPriceLowerX96 = TickMath.getSqrtPriceAtTick(minTick);
        uint160 sqrtPriceUpperX96 = TickMath.getSqrtPriceAtTick(maxTick);

        uint128 liquidity = uint128(
            LiquidityAmounts.getLiquidityForAmounts(
                sqrtPriceX96, sqrtPriceLowerX96, sqrtPriceUpperX96, amount0Desired, amount1Desired
            )
        );

        if (liquidity < MIN_LOCKED_LIQUIDITY) {
            // NOTE: we early return if not much liquidity would be added
            return (0, 0, 0);
        }

        // If native ETH then since we pass along the entire desired value
        // we want to sweep from the PositionManager if any of that was unused
        bool isNative = key.currency0.isAddressZero();

        // Build actions conditionally
        bytes memory actions;
        bytes[] memory params;

        if (isNative) {
            actions = abi.encodePacked(
                uint8(Actions.INCREASE_LIQUIDITY),
                uint8(Actions.CLOSE_CURRENCY),
                uint8(Actions.CLOSE_CURRENCY),
                uint8(Actions.SWEEP)
            );
            params = new bytes[](4);
        } else {
            actions = abi.encodePacked(
                uint8(Actions.INCREASE_LIQUIDITY), uint8(Actions.CLOSE_CURRENCY), uint8(Actions.CLOSE_CURRENCY)
            );
            params = new bytes[](3);
        }

        // Parameters for INCREASE_LIQUIDITY
        params[0] = abi.encode(
            positionId,
            liquidity,
            amount0Desired,
            amount1Desired,
            "" // No hook data
        );

        // Parameters for CLOSE_CURRENCY (currency0)
        params[1] = abi.encode(key.currency0);

        // Parameters for CLOSE_CURRENCY (currency1)
        params[2] = abi.encode(key.currency1);

        // Add sweep parameters only if needed
        if (isNative) {
            params[3] = abi.encode(key.currency0, address(this));
        }

        // Calculate native ETH value to forward
        uint256 ethValue = 0;
        if (isNative) ethValue = amount0Desired;

        // Execute the increase operation - forward ETH if needed
        if (TransientStateLibrary.isUnlocked(poolManager)) {
            positionManager.modifyLiquiditiesWithoutUnlock{value: ethValue}(actions, params);
        } else {
            positionManager.modifyLiquidities{value: ethValue}(
                abi.encode(actions, params),
                block.timestamp + 60 // 60 second deadline
            );
        }

        // Calculate actual amounts used
        (amount0Used, amount1Used) =
            LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity);

        // Validate minimum amounts
        if (amount0Used < amount0Min) revert Errors.TooLittleAmount0(amount0Min, amount0Used);
        if (amount1Used < amount1Min) revert Errors.TooLittleAmount1(amount1Min, amount1Used);

        liquidityAdded = uint256(liquidity);

        return (liquidityAdded, Math.min(amount0Used + 1, amount0Desired), Math.min(amount1Used + 1, amount1Desired));
    }

    /// @notice Internal function to handle withdrawal of liquidity
    /// @param key The pool key
    /// @param sharesToBurn Number of shares to burn
    /// @param amount0Min Minimum amount of token0 to receive
    /// @param amount1Min Minimum amount of token1 to receive
    /// @param sharesOwner Address that owns the shares to be burned
    /// @param recipient Address to receive the withdrawn tokens
    /// @return principal0 Amount of token0 withdrawn
    /// @return principal1 Amount of token1 withdrawn
    function _withdrawLiquidity(
        PoolKey calldata key,
        uint256 sharesToBurn,
        uint256 amount0Min,
        uint256 amount1Min,
        address sharesOwner,
        address recipient
    ) internal returns (uint256 principal0, uint256 principal1) {
        // Get the pool ID
        PoolId poolId = key.toId();

        // Convert poolId to uint256 for ERC6909 operations
        uint256 poolIdUint = uint256(PoolId.unwrap(poolId));

        // Get the position ID (revert if position doesn't exist)
        uint256 positionId = positionIds[poolId];
        if (positionId == 0) revert Errors.PositionNotFound(poolId);

        // Ensure recipient is not zero address
        if (recipient == address(0)) revert Errors.ZeroAddress();

        // Prepare the actions for position manager
        bytes memory actions = abi.encodePacked(
            uint8(Actions.DECREASE_LIQUIDITY), // Decrease liquidity from the position
            uint8(Actions.TAKE_PAIR) // Take tokens to this contract
        );

        // Prepare the parameters
        bytes[] memory params = new bytes[](2);

        // Parameters for DECREASE_LIQUIDITY
        // Since shares correspond 1:1 with liquidity, we pass sharesToBurn as the liquidity amount
        params[0] = abi.encode(
            positionId, // Position NFT ID
            uint128(sharesToBurn), // Amount of liquidity to remove
            amount0Min, // Minimum amount of token0 to receive
            amount1Min, // Minimum amount of token1 to receive
            "" // No hook data
        );

        // Parameters for TAKE_PAIR - receive tokens at this contract first
        params[1] = abi.encode(
            key.currency0, // Token0
            key.currency1, // Token1
            address(this) // Receiver (this contract)
        );

        uint256 balance0Before = key.currency0.balanceOfSelf();
        uint256 balance1Before = key.currency1.balanceOfSelf();

        // Execute the position modification
        positionManager.modifyLiquidities(
            abi.encode(actions, params),
            block.timestamp + 60 // 60 second deadline
        );

        // Calculate how much we received
        uint256 received0 = key.currency0.balanceOfSelf() - balance0Before;
        uint256 received1 = key.currency1.balanceOfSelf() - balance1Before;

        // Get the current pool price and tick range to calculate expected principal amount
        (uint160 sqrtPriceX96,,,) = StateLibrary.getSlot0(poolManager, poolId);
        int24 minTick = TickMath.minUsableTick(key.tickSpacing);
        int24 maxTick = TickMath.maxUsableTick(key.tickSpacing);

        // Get sqrtPrice at tick bounds
        uint160 sqrtPriceLowerX96 = TickMath.getSqrtPriceAtTick(minTick);
        uint160 sqrtPriceUpperX96 = TickMath.getSqrtPriceAtTick(maxTick);

        // Calculate the expected principal amounts based on the liquidity being withdrawn
        (principal0, principal1) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtPriceX96, sqrtPriceLowerX96, sqrtPriceUpperX96, uint128(sharesToBurn)
        );

        // Calculate the fee component (difference between received and principal)
        uint256 fee0 = 0;
        uint256 fee1 = 0;

        if (received0 > principal0) {
            fee0 = received0 - principal0;
        }

        if (received1 > principal1) {
            fee1 = received1 - principal1;
        }

        // NOTE: we don't need to notify NFT fees as this was already done in notifyModifyLiquidity

        // NOTE: ERC6909 claim allowances are essentially unused as msg.sender would be Spot
        // So we don't do _burnFrom
        _burn(sharesOwner, poolIdUint, sharesToBurn);

        // Transfer only the principal tokens to recipient (not the fees)
        key.currency0.transfer(recipient, principal0);
        key.currency1.transfer(recipient, principal1);

        return (principal0, principal1);
    }

    function _handleTokenTransfersFromPayer(
        Currency currency0,
        Currency currency1,
        uint256 amount0,
        uint256 amount1,
        address payer
    ) internal {
        // Handle native ETH if applicable
        if (currency0.isAddressZero()) {
            if (msg.value < amount0) {
                revert Errors.InsufficientETH(amount0, msg.value);
            } else if (msg.value > amount0) {
                uint256 excessNative = msg.value - amount0;
                currency0.transfer(payer, excessNative);
            }
        } else {
            if (msg.value != 0) revert Errors.NonzeroNativeValue();
            if (amount0 > 0) {
                IERC20(Currency.unwrap(currency0)).safeTransferFrom(payer, address(this), amount0);
            }
        }

        if (amount1 > 0) {
            // Given ordering currency1 is guaranteed to NOT be address(0)
            IERC20(Currency.unwrap(currency1)).safeTransferFrom(payer, address(this), amount1);
        }
    }

    // - - - Subscriber Public - - -

    /// @inheritdoc ISubscriber
    function notifySubscribe(uint256 tokenId, bytes memory data) external override {
        // NOTE: not needed
    }

    /// @inheritdoc ISubscriber
    function notifyUnsubscribe(uint256 tokenId) external override {
        // NOTE: not needed
    }

    /// @inheritdoc ISubscriber
    function notifyBurn(uint256 tokenId, address owner, PositionInfo info, uint256 liquidity, BalanceDelta feesAccrued)
        external
        override
    {
        // NOTE: not needed
    }

    /// @inheritdoc ISubscriber
    function notifyModifyLiquidity(uint256 tokenId, int256, BalanceDelta feesAccrued)
        external
        override
        onlyPositionManager
    {
        // Only process if there are fees
        if (feesAccrued.amount0() == 0 && feesAccrued.amount1() == 0) return;

        // Get position info to determine pool key
        (PoolKey memory key,) = positionManager.getPoolAndPositionInfo(tokenId);
        PoolId poolId = key.toId();

        // Process fees accrued
        _processFeeNotification(poolId, key.currency0, key.currency1, feesAccrued);

        emit PositionFeeAccrued(tokenId, poolId, feesAccrued.amount0(), feesAccrued.amount1());
    }

    // - - - Subscriber Internal - - -

    function _processFeeNotification(PoolId poolId, Currency currency0, Currency currency1, BalanceDelta feesAccrued)
        internal
    {
        // Extract fee amounts
        int128 amount0 = feesAccrued.amount0();
        int128 amount1 = feesAccrued.amount1();

        // Only process positive amounts
        if (amount0 > 0) {
            uint256 fee0 = uint256(uint128(amount0));
            pendingFees[poolId].erc20_0 += fee0;
            accountedBalances[currency0] += fee0;
        }

        if (amount1 > 0) {
            uint256 fee1 = uint256(uint128(amount1));
            pendingFees[poolId].erc20_1 += fee1;
            accountedBalances[currency1] += fee1;
        }
    }
}

// ============================================================
// FILE: src/interfaces/IDynamicFeeManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {PoolId} from "v4-core/src/types/PoolId.sol";
import {IPoolPolicyManager} from "./IPoolPolicyManager.sol";
import {TruncGeoOracleMulti} from "../TruncGeoOracleMulti.sol";

/// @title IDynamicFeeManager
/// @notice Interface for a dynamic fee manager that adjusts Uniswap v4 pool fees based on trading activity
/// @dev This contract manages dynamic fee adjustments with surge pricing during high-activity periods.
///      The system works in two phases:
///      1. Base fee calculation from oracle data (tick volatility)
///      2. Surge fee application during capped trading periods with linear decay
///
///      Integration Requirements:
///      - Hook must call initialize() once during pool creation
///      - Hook must call notifyOracleUpdate() on every swap to maintain accurate state
///      - Policy manager must be configured with surge parameters before use
interface IDynamicFeeManager {
    // - - - EVENTS - - -

    /// @notice Emitted when a pool transitions into or out of a capped trading state
    /// @param poolId The pool identifier
    /// @param inCap True if entering capped state, false if exiting
    event CapToggled(PoolId indexed poolId, bool inCap);

    /// @notice Emitted when a pool is successfully initialized for dynamic fee management
    /// @param poolId The pool identifier that was initialized
    event PoolInitialized(PoolId indexed poolId);

    /// @notice Emitted when initialize() is called on an already initialized pool
    /// @dev This is informational and indicates idempotent behavior rather than an error
    /// @param poolId The pool identifier that was already initialized
    event AlreadyInitialized(PoolId indexed poolId);

    /// @notice Emitted when the fee state changes for a pool
    /// @dev The surge fee value reflects the state at emission time and may decay further
    ///      if calculated at a later block timestamp
    /// @param poolId The pool identifier
    /// @param baseFeePpm The new base fee in parts per million (1% = 10,000 PPM)
    /// @param surgeFeePpm The current surge fee in parts per million (0 if no surge active)
    /// @param inCapEvent True if the pool is currently experiencing capped trading
    /// @param timestamp The block timestamp when this state change occurred
    event FeeStateChanged(
        PoolId indexed poolId, uint256 baseFeePpm, uint256 surgeFeePpm, bool inCapEvent, uint40 timestamp
    );

    // - - - EXTERNAL FUNCTIONS - - -

    /// @notice Initializes dynamic fee management for a new pool
    /// @dev Should be called once during pool creation, typically by a factory contract.
    ///      This function is idempotent - calling it multiple times on the same pool
    ///      will emit AlreadyInitialized and return without state changes.
    ///
    ///      Access Control: Only owner or authorized hook
    /// @param poolId The pool identifier to initialize
    /// @param initialTick The current tick at pool creation (used for analytics, not fee calculation)
    function initialize(PoolId poolId, int24 initialTick) external;

    /// @notice Notifies the fee manager of oracle updates and potential tick capping events
    /// @dev This is the core function that must be called on every swap to maintain accurate
    ///      fee state. It handles:
    ///      - Entering capped state when tick movements are restricted
    ///      - Exiting capped state when surge fees decay to zero
    ///      - Emitting appropriate events for state transitions
    ///
    ///      Access Control: Only owner, authorized hook, or oracle contract
    /// @param poolId The pool identifier being updated
    /// @param tickWasCapped True if the tick movement was capped during this swap
    function notifyOracleUpdate(PoolId poolId, bool tickWasCapped) external;

    // - - - VIEW FUNCTIONS - Configuration - - -

    /// @notice Returns the policy manager contract that provides surge fee parameters
    /// @return The policy manager contract interface
    function policyManager() external view returns (IPoolPolicyManager);

    /// @notice Returns the oracle contract that provides tick volatility data
    /// @return The truncated geometric oracle contract interface
    function oracle() external view returns (TruncGeoOracleMulti);

    /// @notice Returns the hook contract authorized to call state-changing functions
    /// @return The address of the authorized hook contract
    function authorizedHook() external view returns (address);

    // - - - VIEW FUNCTIONS - Fee State - - -

    /// @notice Gets the current fee state for a pool
    /// @dev The base fee is calculated from current oracle data (tick volatility).
    ///      The surge fee is calculated with linear decay from the cap start time.
    ///      Total effective fee = baseFee + surgeFee
    /// @param poolId The pool identifier to query
    /// @return baseFee The current base fee in parts per million
    /// @return surgeFee The current surge fee in parts per million (0 if no active surge)
    function getFeeState(PoolId poolId) external view returns (uint256 baseFee, uint256 surgeFee);

    /// @notice Checks if a pool is currently in a capped trading state
    /// @dev A pool enters capped state when tick movements are restricted due to high volatility.
    ///      While capped, surge fees are applied with linear decay over time.
    /// @param poolId The pool identifier to query
    /// @return True if the pool is currently experiencing capped trading conditions
    function isCAPEventActive(PoolId poolId) external view returns (bool);
}

// ============================================================
// FILE: src/interfaces/IFullRangeLiquidityManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {PoolId} from "v4-core/src/types/PoolId.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {Currency} from "v4-core/src/types/Currency.sol";

import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {IUnlockCallback} from "v4-core/src/interfaces/callback/IUnlockCallback.sol";

import {PositionManager} from "v4-periphery/src/PositionManager.sol";

import {PoolPolicyManager} from "../PoolPolicyManager.sol";
import {TruncGeoOracleMulti} from "../TruncGeoOracleMulti.sol";

/// @title IFullRangeLiquidityManager
/// @notice Interface for the FullRangeLiquidityManager contract that handles liquidity and fee management
/// @dev Manages fee collection, accounting, reinvestment, and full-range liquidity positions
interface IFullRangeLiquidityManager is IUnlockCallback {
    /// @notice Emitted when fees are reinvested into the pool
    /// @param poolId The ID of the pool
    /// @param amount0 The amount of token0 reinvested
    /// @param amount1 The amount of token1 reinvested
    /// @param liquidity The liquidity added to the pool
    event FeesReinvested(PoolId indexed poolId, uint256 amount0, uint256 amount1, uint256 liquidity);

    /// @notice Emitted when a user deposits liquidity
    /// @param poolId The ID of the pool
    /// @param user The address of the depositor
    /// @param shares The amount of shares minted to represent the liquidity
    /// @param amount0 The amount of token0 deposited
    /// @param amount1 The amount of token1 deposited
    event Deposit(PoolId indexed poolId, address indexed user, uint256 shares, uint256 amount0, uint256 amount1);

    /// @notice Emitted when a user withdraws liquidity
    /// @param poolId The ID of the pool
    /// @param user The address of the withdrawer
    /// @param recipient The address receiving the withdrawn assets
    /// @param amount0 The amount of token0 withdrawn
    /// @param amount1 The amount of token1 withdrawn
    /// @param shares The amount of shares burned
    event Withdraw(
        PoolId indexed poolId, address indexed user, address recipient, uint256 amount0, uint256 amount1, uint256 shares
    );

    /// @notice Emitted when excess tokens are swept
    /// @param currency The currency that was swept
    /// @param recipient The address that received the tokens
    /// @param amount The amount of tokens swept
    event ExcessTokensSwept(Currency indexed currency, address indexed recipient, uint256 amount);

    /// @dev emitted in notifyModifyLiquidity whenever an NFT's liquidity is modified
    event PositionFeeAccrued(uint256 indexed tokenId, PoolId indexed poolId, int128 fees0, int128 fees1);

    event Donation(PoolId indexed poolId, address indexed donor, uint256 amount0, uint256 amount1);

    /// @notice Emitted when the reinvestment TWAP period is updated
    /// @param newTwapPeriod The new TWAP period in seconds
    event ReinvestmentTwapUpdated(uint32 newTwapPeriod);

    /// @notice Emitted when the tick range tolerance is updated
    /// @param newTickTolerance The new tick range tolerance (maximum allowed deviation from TWAP)
    event TickRangeToleranceUpdated(int24 newTickTolerance);

    enum CallbackAction {
        TAKE_TOKENS,
        SWEEP_EXCESS_TOKEN
    }

    /// @notice Notifies the LiquidityManager of collected fees
    /// @dev Called by the authorized hook to record fees collected from swaps
    /// @param key The pool key identifying the pool that generated the fees
    /// @param fee0 The amount of token0 fees collected
    /// @param fee1 The amount of token1 fees collected
    function notifyFee(PoolKey calldata key, uint256 fee0, uint256 fee1) external;

    /// @notice Manually triggers reinvestment of accumulated fees into liquidity
    /// @dev Converts pending fees into additional liquidity if thresholds and cooldown are met
    /// @param key The pool key for the pool where fees should be reinvested
    /// @return success Boolean indicating whether the reinvestment was successfully executed
    function reinvest(PoolKey calldata key) external returns (bool success);

    /// @notice Allows users to deposit tokens to add liquidity to the full range position
    /// @dev Mints ERC6909 shares in proportion to the contributed liquidity
    /// @param key The pool key for the pool where liquidity will be added
    /// @param amount0Desired The desired amount of token0 to deposit
    /// @param amount1Desired The desired amount of token1 to deposit
    /// @param amount0Min The minimum amount of token0 that must be used to prevent slippage
    /// @param amount1Min The minimum amount of token1 that must be used to prevent slippage
    /// @param recipient The address to receive share tokens
    /// @param payer The address of the payer whose allowance the FRLM will try spend
    /// @return liquidityAdded The amount of share tokens minted, corresponding 1:1 with liquidity
    /// @return amount0 The amount of token0 actually deposited
    /// @return amount1 The amount of token1 actually deposited
    /// @return unusedAmount0 The amount of token0 not used in the deposit
    /// @return unusedAmount1 The amount of token1 not used in the deposit
    function deposit(
        PoolKey calldata key,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient,
        address payer
    )
        external
        payable
        returns (uint256 liquidityAdded, uint256 amount0, uint256 amount1, uint256 unusedAmount0, uint256 unusedAmount1);

    /// @notice Allows users to withdraw liquidity by burning share tokens
    /// @dev Burns ERC6909 shares and returns the proportional amount of underlying assets
    /// @param key The pool key for the pool where liquidity will be withdrawn
    /// @param sharesToBurn The amount of share tokens to burn
    /// @param amount0Min The minimum amount of token0 to receive to prevent slippage
    /// @param amount1Min The minimum amount of token1 to receive to prevent slippage
    /// @param recipient The address to receive the withdrawn tokens
    /// @param sharesOwner The address to owner whose shares will be burned
    /// @return amount0 The amount of token0 received
    /// @return amount1 The amount of token1 received
    function withdraw(
        PoolKey calldata key,
        uint256 sharesToBurn,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient,
        address sharesOwner
    ) external returns (uint256 amount0, uint256 amount1);

    /// @notice Withdraws protocol-owned liquidity from a pool's NFT position
    /// @dev Burns protocol-owned ERC6909 shares and withdraws proportional assets from the position
    /// @dev Only callable by policy manager owner
    /// @param key The pool key for the position
    /// @param sharesToBurn The amount of protocol-owned ERC6909 shares to burn (1:1 with liquidity)
    /// @param amount0Min The minimum amount of token0 that must be received to prevent slippage
    /// @param amount1Min The minimum amount of token1 that must be received to prevent slippage
    /// @param recipient The address to receive the withdrawn tokens
    /// @return amount0 The amount of token0 received
    /// @return amount1 The amount of token1 received
    function withdrawProtocolLiquidity(
        PoolKey calldata key,
        uint256 sharesToBurn,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient
    ) external returns (uint256 amount0, uint256 amount1);

    /// @notice Sweeps excess tokens accidentally sent to the contract
    /// @param currency The currency to sweep
    /// @param recipient The address to send the excess tokens to
    /// @return amountSwept The amount of tokens swept
    function sweepExcessTokens(Currency currency, address recipient) external returns (uint256 amountSwept);

    /// @notice Sweeps excess ERC6909 tokens accidentally minted to the contract
    /// @param currency The currency to sweep
    /// @param recipient The address to send the excess tokens to
    /// @return amountSwept The amount of tokens swept
    function sweepExcessERC6909(Currency currency, address recipient) external returns (uint256 amountSwept);

    /// @notice Allows anyone to donate tokens to the pending fees of a specific pool
    /// @param key The PoolKey of the pool to donate to
    /// @param amount0 The amount of currency0 to donate
    /// @param amount1 The amount of currency1 to donate
    /// @return donated0 The actual amount of currency0 donated
    /// @return donated1 The actual amount of currency1 donated
    function donate(PoolKey calldata key, uint256 amount0, uint256 amount1)
        external
        payable
        returns (uint256 donated0, uint256 donated1);

    /// @notice Sets the TWAP period used for reinvestment price validation
    /// @param _reinvestmentTwap The TWAP period in seconds (must be > 0 and <= 7200)
    /// @dev Only callable by policy owner. Used to prevent MEV attacks during reinvestment
    function setReinvestmentTwap(uint32 _reinvestmentTwap) external;

    /// @notice Sets the tick range tolerance for reinvestment price validation
    /// @param _tickRangeTolerance Maximum allowed deviation from TWAP tick (must be >= 0 and <= 500)
    /// @dev Only callable by policy owner. Used to prevent MEV attacks during reinvestment
    function setTickRangeTolerance(int24 _tickRangeTolerance) external;

    // - - - immutable views - - -

    /// @notice The Uniswap V4 PoolManager
    function poolManager() external view returns (IPoolManager);

    /// @notice The Uniswap V4 PositionManager for adding liquidity
    function positionManager() external view returns (PositionManager);

    /// @notice The policy manager contract that determines ownership
    function policyManager() external view returns (PoolPolicyManager);

    /// @notice The oracle contract
    function oracle() external view returns (TruncGeoOracleMulti);

    /// @notice The "constant" Spot hook contract address that can notify fees
    function authorizedHookAddress() external view returns (address);

    // - - - variable views - - -

    /// @notice Tracks accounted balances of tokens per currency custodied directly by this contract
    function accountedBalances(Currency currency) external view returns (uint256);

    /// @notice Tracks accounted balances of ERC6909 tokens per currency ID custodied directly by this contract
    function accountedERC6909Balances(Currency currency) external view returns (uint256);

    /// @notice Time window for TWAP calculation (e.g., 600 seconds = 10 minutes)
    function reinvestmentTwap() external view returns (uint32);

    /// @notice Allowed deviation from TWAP (e.g., ±50 ticks)
    function tickRangeTolerance() external view returns (int24);

    /// @notice Gets the pending fees for a pool that haven't been reinvested yet
    /// @dev These fees accrue until reinvestment conditions are met
    /// @param poolId The ID of the pool
    /// @return amount0 Pending amount of token0 fees
    /// @return amount1 Pending amount of token1 fees
    function getPendingFees(PoolId poolId) external view returns (uint256 amount0, uint256 amount1);

    /// @notice Gets the timestamp when the next reinvestment is allowed for a pool
    /// @dev Based on the cooldown period after the last reinvestment
    /// @param poolId The ID of the pool
    /// @return timestamp The timestamp when the next reinvestment is allowed
    function getNextReinvestmentTime(PoolId poolId) external view returns (uint256 timestamp);

    /// @notice Gets the token amounts and liquidity for a specified pool's NFT position
    /// @dev Returns all relevant information about the full-range position
    /// @param poolId The ID of the pool
    /// @return positionId The full range NFT position ID for the pool
    /// @return liquidity The total liquidity in the position; equals the FRLM ERC6909 total supply
    /// @return amount0 The amount of token0 in the position at current price
    /// @return amount1 The amount of token1 in the position at current price
    function getPositionInfo(PoolId poolId)
        external
        view
        returns (uint256 positionId, uint128 liquidity, uint256 amount0, uint256 amount1);

    /// @notice Gets the token amounts a specified number of shares represents
    /// @dev Calculates the proportional amount of underlying assets for a given share amount
    /// @param poolId The ID of the pool
    /// @param shares The number of ERC6909 shares to query
    /// @return amount0 The estimated amount of token0 the shares represent at current price
    /// @return amount1 The estimated amount of token1 the shares represent at current price
    function getLiquidityForShares(PoolId poolId, uint256 shares)
        external
        view
        returns (uint256 amount0, uint256 amount1);

    /// @notice Gets the protocol-owned shares and corresponding liquidity/token amounts
    /// @dev Used to track protocol revenue from reinvested fees
    /// @param poolId The ID of the pool
    /// @return shares The number of shares owned by the protocol; equal to protocol-owned liquidity on the NFT
    /// @return amount0 The estimated amount of token0 the protocol owns at current price
    /// @return amount1 The estimated amount of token1 the protocol owns at current price
    function getProtocolOwnedLiquidity(PoolId poolId)
        external
        view
        returns (uint256 shares, uint256 amount0, uint256 amount1);
}

// ============================================================
// FILE: src/interfaces/IPoolPolicyManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {PoolId} from "v4-core/src/types/PoolId.sol";

/// @title IPoolPolicyManager
/// @notice Consolidated interface for all policy types in the Spot system
/// @dev Combines fee, tick scaling, v-tier, and various other policies into a single interface
interface IPoolPolicyManager {
    /// === Events ===

    /// @notice Emitted when a pool's POL share is changed
    /// @param poolId The ID of the pool
    /// @param polSharePpm The new POL share in PPM
    event PoolPOLShareChanged(PoolId indexed poolId, uint256 polSharePpm);

    /// @notice Emitted when the daily budget is set
    /// @param newBudget The new daily budget
    event DailyBudgetSet(uint32 newBudget);

    /// @notice Emitted when a pool-specific daily budget is set
    /// @param poolId The pool ID
    /// @param newBudget The new daily budget
    event PoolDailyBudgetSet(PoolId indexed poolId, uint32 newBudget);

    /// @notice Emitted when base fee parameters are set
    /// @param poolId The ID of the pool
    /// @param stepPpm The step size in PPM
    /// @param updateIntervalSecs The update interval in seconds
    event BaseFeeParamsSet(PoolId indexed poolId, uint32 stepPpm, uint32 updateIntervalSecs);

    /// @notice Emitted when a manual fee is set for a pool
    /// @param poolId The ID of the pool
    /// @param manualFee The manual fee in PPM
    event ManualFeeSet(PoolId indexed poolId, uint24 manualFee);

    /// @notice Emitted when the minimum base fee is set for a pool
    /// @param poolId The ID of the pool
    /// @param minBaseFeePpm The new minimum base fee in PPM
    event MinBaseFeeSet(PoolId indexed poolId, uint24 minBaseFeePpm);

    /// @notice Emitted when the maximum base fee is set for a pool
    /// @param poolId The ID of the pool
    /// @param maxBaseFeePpm The new maximum base fee in PPM
    event MaxBaseFeeSet(PoolId indexed poolId, uint24 maxBaseFeePpm);

    /// @notice Emitted when the cap budget decay window is set for a pool
    /// @param poolId The ID of the pool
    /// @param decayWindow The new decay window in seconds
    event CapBudgetDecayWindowSet(PoolId indexed poolId, uint32 decayWindow);

    /// @notice Emitted when the surge decay period is set for a pool
    /// @param poolId The ID of the pool
    /// @param decayPeriod The new decay period in seconds
    event SurgeDecayPeriodSet(PoolId indexed poolId, uint32 decayPeriod);

    /// @notice Emitted when the surge fee multiplier is set for a pool
    /// @param poolId The ID of the pool
    /// @param multiplier The new multiplier in PPM
    event SurgeFeeMultiplierSet(PoolId indexed poolId, uint24 multiplier);

    /// @notice Emitted when the global decay window is set
    /// @param decayWindow The new decay window in seconds
    event GlobalDecayWindowSet(uint32 decayWindow);

    /// @notice Emitted when the base fee factor is set for a pool
    /// @param poolId The pool ID
    /// @param factor The new base fee factor
    event BaseFeeFactorSet(PoolId indexed poolId, uint32 factor);

    /// @notice Emitted when the minimum cap is set for a pool
    event MinCapSet(PoolId indexed poolId, uint24 minCap);

    /// @notice Emitted when the maximum cap is set for a pool
    event MaxCapSet(PoolId indexed poolId, uint24 maxCap);

    /// @notice Emitted when a pool's default max ticks per block is set
    event DefaultMaxTicksPerBlockSet(PoolId indexed poolId, uint24 defaultMaxTicks);

    /// @notice Emitted when the global default base fee factor is set
    event DefaultBaseFeeFactorSet(uint32 defaultFactor);

    /// @notice Emitted when the perSwap vs perBlock setting is changed for a pool
    event PerSwapModeSet(PoolId indexed poolId, bool perSwap);

    /// @notice Emitted when the global default perSwap vs perBlock mode is set
    event DefaultPerSwapModeSet(bool perSwap);

    /// === Fee Configuration Functions ===

    /// @notice Sets the POL share percentage for a specific pool
    /// @param poolId The pool ID
    /// @param polSharePpm The POL share in PPM (parts per million)
    function setPoolPOLShare(PoolId poolId, uint256 polSharePpm) external;

    /// @notice Gets the POL share percentage for a specific pool
    /// @param poolId The pool ID to get the POL share for
    /// @return The POL share in PPM (parts per million)
    function getPoolPOLShare(PoolId poolId) external view returns (uint256);

    /// === Manual Fee Functions ===

    /// @notice Gets the manual fee for a pool, if set
    /// @param poolId The pool ID to get the manual fee for
    /// @return manualFee The manual fee in PPM, 0 if not set
    /// @return isSet Whether a manual fee is set for this pool
    function getManualFee(PoolId poolId) external view returns (uint24 manualFee, bool isSet);

    /// @notice Sets a manual fee for a pool, overriding the dynamic fee calculation
    /// @param poolId The pool ID
    /// @param manualFee The manual fee in PPM
    function setManualFee(PoolId poolId, uint24 manualFee) external;

    /// @notice Clears a manual fee for a pool, reverting to dynamic fee calculation
    /// @param poolId The pool ID
    function clearManualFee(PoolId poolId) external;

    /// === Dynamic Fee Configuration Functions ===

    /// @notice Returns the surge decay period in seconds for the given pool
    /// @param poolId The pool ID
    /// @return Surge decay period in seconds
    function getSurgeDecayPeriodSeconds(PoolId poolId) external view returns (uint32);

    /// @notice Gets the default/global/fallback daily budget for CAP events
    /// @return The default daily budget in PPM
    function getDefaultDailyBudgetPpm() external view returns (uint32);

    /// @notice Returns the daily budget for CAP events in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Daily budget in PPM
    function getDailyBudgetPpm(PoolId poolId) external view returns (uint32);

    /// @notice Returns the budget decay window in seconds for the given pool
    /// @param poolId The pool ID
    /// @return Budget decay window in seconds
    function getCapBudgetDecayWindow(PoolId poolId) external view returns (uint32);

    /// @notice Returns the minimum base fee in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Minimum base fee in PPM
    function getMinBaseFee(PoolId poolId) external view returns (uint24);

    /// @notice Returns the maximum base fee in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Maximum base fee in PPM
    function getMaxBaseFee(PoolId poolId) external view returns (uint24);

    /// @notice Returns the surge fee multiplier in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Surge fee multiplier in PPM
    function getSurgeFeeMultiplierPpm(PoolId poolId) external view returns (uint24);

    /// @notice Returns the default maximum ticks per block for a pool
    /// @param poolId The pool ID
    /// @return Default maximum ticks per block
    function getDefaultMaxTicksPerBlock(PoolId poolId) external view returns (uint24);

    /// @notice Returns the base fee step size in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Base fee step size in PPM
    function getBaseFeeStepPpm(PoolId poolId) external view returns (uint32);

    /// @notice Returns the base fee update interval in seconds for the given pool
    /// @param poolId The pool ID
    /// @return Base fee update interval in seconds
    function getBaseFeeUpdateIntervalSeconds(PoolId poolId) external view returns (uint32);

    /// @notice Gets the base fee factor for converting oracle ticks to fee PPM
    /// @param poolId The pool ID
    function getBaseFeeFactor(PoolId poolId) external view returns (uint32);

    /// @notice Gets the minimum cap (in ticks) for the given pool
    /// @param poolId The pool ID
    /// @return Minimum cap in ticks
    function getMinCap(PoolId poolId) external view returns (uint24);

    /// @notice Gets the maximum cap (in ticks) for the given pool
    /// @param poolId The pool ID
    /// @return Maximum cap in ticks
    function getMaxCap(PoolId poolId) external view returns (uint24);

    /// === Dynamic Fee Setter Functions ===

    /// @notice Sets the cap budget decay window for a pool
    /// @param poolId The pool ID
    /// @param decayWindow The decay window in seconds
    function setCapBudgetDecayWindow(PoolId poolId, uint32 decayWindow) external;

    /// @notice Sets the minimum base fee for a pool
    /// @param poolId The pool ID
    /// @param minBaseFee The minimum base fee in PPM
    function setMinBaseFee(PoolId poolId, uint24 minBaseFee) external;

    /// @notice Sets the maximum base fee for a pool
    /// @param poolId The pool ID
    /// @param maxBaseFee The maximum base fee in PPM
    function setMaxBaseFee(PoolId poolId, uint24 maxBaseFee) external;

    /// @notice Sets the surge decay period in seconds for a pool
    /// @param poolId The pool ID
    /// @param surgeDecaySeconds The surge decay period in seconds
    function setSurgeDecayPeriodSeconds(PoolId poolId, uint32 surgeDecaySeconds) external;

    /// @notice Sets the surge fee multiplier for a pool
    /// @param poolId The pool ID
    /// @param multiplier The surge fee multiplier in PPM
    function setSurgeFeeMultiplierPpm(PoolId poolId, uint24 multiplier) external;

    /// @notice Sets base fee parameters for a pool
    /// @param poolId The pool ID
    /// @param stepPpm The step size in PPM
    /// @param updateIntervalSecs The update interval in seconds
    function setBaseFeeParams(PoolId poolId, uint32 stepPpm, uint32 updateIntervalSecs) external;

    /// @notice Sets the daily budget in PPM
    /// @param ppm The daily budget in PPM
    function setDailyBudgetPpm(uint32 ppm) external;

    /// @notice Sets the daily budget for CAP events for a specific pool
    /// @param poolId The pool ID
    /// @param newBudget The new daily budget in PPM (0 means use default)
    function setPoolDailyBudgetPpm(PoolId poolId, uint32 newBudget) external;

    /// @notice Sets the decay window in seconds
    /// @param secs The decay window in seconds
    function setDecayWindow(uint32 secs) external;

    /// @notice Sets the base fee factor for a specific pool
    /// @param poolId The pool ID
    /// @param factor The new base fee factor (1 tick = X PPM)
    function setBaseFeeFactor(PoolId poolId, uint32 factor) external;

    /// @notice Gets whether a pool uses perSwap (true) or perBlock (false) mode for tick movement comparison
    /// @param poolId The pool ID
    /// @return True if perSwap mode is enabled, false if perBlock mode is enabled
    function getPerSwapMode(PoolId poolId) external view returns (bool);

    /// @notice Sets whether a pool uses perSwap (true) or perBlock (false) mode for tick movement comparison
    /// @param poolId The pool ID
    /// @param perSwap True for perSwap mode, false for perBlock mode
    function setPerSwapMode(PoolId poolId, bool perSwap) external;
}

// ============================================================
// FILE: src/interfaces/ISpot.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {PoolId} from "v4-core/src/types/PoolId.sol";
import {IHooks} from "v4-core/src/interfaces/IHooks.sol";

import {IDynamicFeeManager} from "./IDynamicFeeManager.sol";
import {IFullRangeLiquidityManager} from "./IFullRangeLiquidityManager.sol";

import {PoolPolicyManager} from "../PoolPolicyManager.sol";
import {TruncGeoOracleMulti} from "../TruncGeoOracleMulti.sol";

/// @title ISpot
/// @notice Interface for the Spot hook contract that implements dynamic fees and oracle integration
interface ISpot is IHooks {
    event OracleUpdateFailed(PoolId indexed poolId, string reason);
    event FeeManagerNotificationFailed(PoolId indexed poolId, string reason);
    event ReinvestmentFailed(PoolId indexed poolId, string reason);

    /// @notice Emitted when policy initialization fails for a pool
    /// @param poolId The ID of the pool where policy initialization was attempted
    /// @param reason The string explanation of why initialization failed
    event PolicyInitializationFailed(PoolId indexed poolId, string reason);

    /// @notice Emitted when hook fees are collected from a swap but not automatically reinvested
    /// @dev This event is emitted when reinvestment is paused
    /// @param poolId The pool ID from which fees were collected
    /// @param sender The address that executed the swap, triggering fee collection
    /// @param feeAmount0 The amount of token0 collected as fee
    /// @param feeAmount1 The amount of token1 collected as fee
    event HookFee(PoolId indexed poolId, address indexed sender, uint128 feeAmount0, uint128 feeAmount1);

    /// @notice Emitted when hook fees are collected from a swap and queued for reinvestment
    /// @dev This event is emitted when reinvestment is active (not paused)
    /// @param poolId The pool ID from which fees were collected
    /// @param sender The address that executed the swap, triggering fee collection
    /// @param feeAmount0 The amount of token0 collected as fee and queued for reinvestment
    /// @param feeAmount1 The amount of token1 collected as fee and queued for reinvestment
    event HookFeeReinvested(PoolId indexed poolId, address indexed sender, uint128 feeAmount0, uint128 feeAmount1);

    /// @notice Emitted when the reinvestment status changes
    /// @param paused Boolean indicating whether fee reinvestment is now paused (true) or active (false)
    event ReinvestmentPausedChanged(bool paused);

    /// @notice Proxy function to deposit liquidity into the FullRangeLiquidityManager through Spot
    /// @dev This function optimizes gas by having the FRLM pull tokens directly from the caller
    ///      rather than transferring tokens through the Spot contract. The caller needs to approve
    ///      token spending directly to the FRLM contract, not to Spot.
    /// @param key The pool key for the pool
    /// @param amount0Desired The desired amount of token0 to deposit
    /// @param amount1Desired The desired amount of token1 to deposit
    /// @param amount0Min The minimum amount of token0 that must be used
    /// @param amount1Min The minimum amount of token1 that must be used
    /// @param recipient The address to receive share tokens
    /// @return shares The amount of share tokens minted
    /// @return amount0 The amount of token0 actually deposited
    /// @return amount1 The amount of token1 actually deposited
    function depositToFRLM(
        PoolKey calldata key,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient
    ) external payable returns (uint256 shares, uint256 amount0, uint256 amount1);

    /// @notice Proxy function to withdraw liquidity from the FullRangeLiquidityManager through Spot
    /// @dev This function optimizes gas by having the FRLM burn shares directly from the caller
    ///      rather than transferring them through the Spot contract. The caller must have the
    ///      required share tokens in their balance.
    /// @param key The pool key for the pool
    /// @param sharesToBurn The amount of share tokens to burn
    /// @param amount0Min The minimum amount of token0 to receive
    /// @param amount1Min The minimum amount of token1 to receive
    /// @param recipient The address to receive the withdrawn tokens
    /// @return amount0 The amount of token0 received
    /// @return amount1 The amount of token1 received
    function withdrawFromFRLM(
        PoolKey calldata key,
        uint256 sharesToBurn,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient
    ) external returns (uint256 amount0, uint256 amount1);

    /// @notice Sets whether automatic reinvestment of collected fees is paused
    /// @dev When paused, fees are still collected but not automatically converted to liquidity
    /// @dev Can only be called by the policy manager owner
    /// @param paused True to pause reinvestment, false to enable automatic reinvestment
    function setReinvestmentPaused(bool paused) external;

    /// @notice Returns the current reinvestment status
    /// @dev Used to check if fees are being automatically reinvested
    function reinvestmentPaused() external view returns (bool);

    /// @notice Gets the dynamic fee manager contract address
    /// @dev The dynamic fee manager calculates and adjusts fee rates based on market conditions
    function dynamicFeeManager() external view returns (IDynamicFeeManager);

    /// @notice Gets the liquidity manager contract address
    /// @dev The liquidity manager handles fee reinvestment and liquidity positions
    function liquidityManager() external view returns (IFullRangeLiquidityManager);

    /// @notice Gets the policy manager contract address
    /// @dev The policy manager determines fee distribution and access controls
    function policyManager() external view returns (PoolPolicyManager);

    /// @notice Gets the oracle contract address
    /// @dev The oracle tracks price movements and informs dynamic fee adjustments
    function truncGeoOracle() external view returns (TruncGeoOracleMulti);
}

// ============================================================
// FILE: src/interfaces/ITruncGeoOracleMulti.sol
// ============================================================

// SPDX-License-Identifier: MIT
// minimal subset used by tests
pragma solidity >=0.5.0;

import {PoolId} from "v4-core/src/types/PoolId.sol";

/**
 * @title ITruncGeoOracleMulti
 * @notice Interface for the TruncGeoOracleMulti contract that provides truncated geomean oracle data
 * for multiple pools with tick capping functionality
 */
interface ITruncGeoOracleMulti {
    /**
     * @notice Initialize the oracle for a pool
     * @param key The pool key
     * @param initialTick The initial tick to seed the oracle with
     */
    function initializeOracleForPool(bytes calldata key, int24 initialTick) external;

    /**
     * @notice Records a new observation for the given pool
     * @param poolId The pool identifier
     * @param tickToRecord The tick to record in the observation
     */
    function recordObservation(PoolId poolId, int24 tickToRecord) external;

    /**
     * @notice Updates cap frequency based on whether capping occurred
     * @param poolId The pool identifier
     * @param capOccurred Whether capping occurred during this swap
     */
    function updateCapFrequency(PoolId poolId, bool capOccurred) external;

    /**
     * @notice Gets the current cap frequency for a pool (for testing purposes)
     * @param poolId The pool identifier
     * @return The current cap frequency
     */


    /**
     * @notice Pause or un-pause the adaptive cap algorithm for a pool.
     * @param poolId       Target PoolId.
     * @param paused    True to disable auto-tune, false to resume.
     */
    function setAutoTunePaused(PoolId poolId, bool paused) external;

    /**
     * @notice Check if auto-tune is paused for a pool.
     * @param poolId The pool identifier.
     * @return True if auto-tune is paused, false otherwise.
     */
    function autoTunePaused(PoolId poolId) external view returns (bool);



    /**
     * @notice Updates oracle observations for a pool.
     * @param key The pool key.
     * @dev Called by the hook (Spot.sol) during its callbacks.
     */
    function updateObservation(bytes calldata key) external;

    /**
     * @notice Checks if an oracle update is needed based on time thresholds
     * @param poolId The unique identifier for the pool
     * @return shouldUpdate Whether the oracle should be updated
     */
    function shouldUpdateOracle(PoolId poolId) external view returns (bool shouldUpdate);

    /**
     * @notice Gets the most recent observation for a pool
     * @param poolId The ID of the pool
     * @return timestamp The timestamp of the observation
     * @return tick The tick value at the observation
     * @return tickCumulative The cumulative tick value
     * @return secondsPerLiquidityCumulativeX128 The cumulative seconds per liquidity value
     */
    function getLastObservation(PoolId poolId)
        external
        view
        returns (uint32 timestamp, int24 tick, int56 tickCumulative, uint160 secondsPerLiquidityCumulativeX128);

    /**
     * @notice Updates the maximum tick movement for a pool.
     * @param poolId The pool identifier.
     * @param newMove The new maximum tick movement.
     */
    function updateMaxAbsTickMoveForPool(bytes32 poolId, int24 newMove) external;

    /**
     * @notice Observes oracle data for a pool.
     * @param key The pool key.
     * @param secondsAgos Array of time offsets.
     * @return tickCumulatives The tick cumulative values.
     * @return secondsPerLiquidityCumulativeX128s The seconds per liquidity cumulative values.
     */
    /// @notice Returns cumulative tick and seconds-per-liquidity for each `secondsAgo`.
    /// @dev Typed to mirror Uniswap V3 so off-the-shelf TWAP helpers "just work".
    function observe(bytes calldata key, uint32[] calldata secondsAgos)
        external
        view
        returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s);

    /**
     * @notice Increases the cardinality of the oracle observation array
     * @param key The pool key.
     * @param cardinalityNext The new cardinality to grow to.
     * @return cardinalityNextOld The previous cardinality.
     * @return cardinalityNextNew The new cardinality.
     */
    function increaseCardinalityNext(bytes calldata key, uint16 cardinalityNext)
        external
        returns (uint16 cardinalityNextOld, uint16 cardinalityNextNew);

    /// ------------------------------------------------------------------
    ///  Immutable hook address accessor
    /// ------------------------------------------------------------------
    /**
     * @notice Returns the address of the hook that is authorized to use this oracle
     * @return The hook address
     */
    function getHookAddress() external view returns (address);

    /**
     * @notice Query the latest observation for a given pool.
     */
    function getLatestObservation(PoolId poolId) external view returns (int24 tick, uint32 timestamp);

    /// @return true if a pool has been enabled and at least one observation exists
    function isOracleEnabled(PoolId poolId) external view returns (bool);

    /**
     * @notice Returns the current maximum ticks per block allowed for a pool.
     * @param poolId The ID of the pool.
     * @return The maximum ticks per block.
     */
    function getMaxTicksPerBlock(bytes32 poolId) external view returns (uint24);

    // NB: we intentionally **do not** expose the whole `states` mapping
    // to keep storage layout private – tests should rely on the helper.

    /* ------------------------------------------------------- */
    /*  Ring buffer logic                                      */
}

// ============================================================
// FILE: src/libraries/DynamicFeeState.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {IPoolPolicyManager} from "../interfaces/IPoolPolicyManager.sol";
import {IDynamicFeeManager} from "../interfaces/IDynamicFeeManager.sol";
import {TruncGeoOracleMulti} from "../TruncGeoOracleMulti.sol";

type DynamicFeeState is uint256;

using DynamicFeeStateLibrary for DynamicFeeState global;

/// @title DynamicFeeStateLibrary
/// @notice Library for packing/unpacking pool state into a single uint256 slot for gas optimization
/// @dev Optimized layout (73 bits used, 183 bits available for future expansion):
///      ┌──32──┬──40──┬─1─┬────183────┐
///      │baseFee│capStart│inCap│ unused │
///      └─────────────────────────────┘
///
///      Fields:
///      - baseFee (32 bits): Current base fee value in PPM
///      - capStart (40 bits): Timestamp when capping mechanism started
///      - inCap (1 bit): Boolean flag indicating if currently in capped state
library DynamicFeeStateLibrary {
    // Bit offsets
    uint256 private constant CAP_START_OFFSET = 32;
    uint256 private constant IN_CAP_OFFSET = 72; // 32 + 40

    // Bit masks
    uint256 private constant MASK_BASE_FEE = (uint256(1) << 32) - 1; // 32 bits
    uint256 private constant MASK_CAP_START = ((uint256(1) << 40) - 1) << CAP_START_OFFSET; // 40 bits
    uint256 private constant MASK_IN_CAP = uint256(1) << IN_CAP_OFFSET; // 1 bit

    /// @notice Creates an empty DynamicFeeState with all fields set to zero
    /// @return state New empty state
    function empty() internal pure returns (DynamicFeeState state) {
        return DynamicFeeState.wrap(uint256(0));
    }

    /// @notice Checks if a state is completely empty (all fields zero)
    /// @param state The state to check
    /// @return isEmpty True if all fields are zero
    function isEmpty(DynamicFeeState state) internal pure returns (bool) {
        return DynamicFeeState.unwrap(state) == 0;
    }

    // - - - Getter functions - - -

    /// @notice Gets the base fee value
    /// @param state The packed state
    /// @return fee The base fee value in PPM (32 bits)
    function baseFee(DynamicFeeState state) internal pure returns (uint32 fee) {
        return uint32(DynamicFeeState.unwrap(state) & MASK_BASE_FEE);
    }

    /// @notice Gets the timestamp when capping mechanism started
    /// @param state The packed state
    /// @return startTime The cap start timestamp (40 bits)
    function capStart(DynamicFeeState state) internal pure returns (uint40 startTime) {
        return uint40((DynamicFeeState.unwrap(state) & MASK_CAP_START) >> CAP_START_OFFSET);
    }

    /// @notice Gets the capped state flag
    /// @param state The packed state
    /// @return capped True if currently in capped state
    function inCap(DynamicFeeState state) internal pure returns (bool capped) {
        return (DynamicFeeState.unwrap(state) & MASK_IN_CAP) != 0;
    }

    // - - - Setter functions - - -

    /// @notice Sets the base fee value
    /// @param state The current state
    /// @param value The new base fee value in PPM
    /// @return newState Updated state with new base fee
    function setBaseFee(DynamicFeeState state, uint32 value) internal pure returns (DynamicFeeState newState) {
        return DynamicFeeState.wrap(_setBits(DynamicFeeState.unwrap(state), MASK_BASE_FEE, value, 0));
    }

    /// @notice Sets the timestamp when capping mechanism started
    /// @param state The current state
    /// @param value The new cap start timestamp
    /// @return newState Updated state with new cap start time
    function setCapStart(DynamicFeeState state, uint40 value) internal pure returns (DynamicFeeState newState) {
        return DynamicFeeState.wrap(_setBits(DynamicFeeState.unwrap(state), MASK_CAP_START, value, CAP_START_OFFSET));
    }

    /// @notice Sets the capped state flag
    /// @param state The current state
    /// @param value The new capped state flag
    /// @return newState Updated state with new capped flag
    function setInCap(DynamicFeeState state, bool value) internal pure returns (DynamicFeeState newState) {
        uint256 word = DynamicFeeState.unwrap(state);
        return DynamicFeeState.wrap(value ? word | MASK_IN_CAP : word & ~MASK_IN_CAP);
    }

    /// @notice Batch update for cap-related state changes
    /// @param state The current state
    /// @param inCapValue The new capped state flag
    /// @param capStartValue The new cap start timestamp (ignored if inCapValue is false)
    /// @return newState Updated state with new cap-related values
    function updateCapState(DynamicFeeState state, bool inCapValue, uint40 capStartValue)
        internal
        pure
        returns (DynamicFeeState newState)
    {
        uint256 word = DynamicFeeState.unwrap(state);

        // Update inCap flag
        word = inCapValue ? word | MASK_IN_CAP : word & ~MASK_IN_CAP;

        // Update capStart only if entering cap state
        if (inCapValue) {
            word = _setBits(word, MASK_CAP_START, capStartValue, CAP_START_OFFSET);
        }

        return DynamicFeeState.wrap(word);
    }

    // - - - Private helpers - - -

    /// @notice Internal helper function for setting bits in the packed word
    /// @param word The current packed word
    /// @param mask The bit mask for the field
    /// @param value The new value to set
    /// @param shift The bit shift offset
    /// @return newWord The updated packed word
    function _setBits(uint256 word, uint256 mask, uint256 value, uint256 shift)
        private
        pure
        returns (uint256 newWord)
    {
        return (word & ~mask) | (value << shift);
    }
}

// ============================================================
// FILE: src/libraries/LiquidityAmounts.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

// NOTE: copied from uniswap/v4-core/test/utils/LiquidityAmounts.sol

import "v4-core/src/libraries/FullMath.sol";
import "v4-core/src/libraries/FixedPoint96.sol";

/// @title Liquidity amount functions
/// @notice Provides functions for computing liquidity amounts from token amounts and prices
library LiquidityAmounts {
    /// @notice Downcasts uint256 to uint128
    /// @param x The uint258 to be downcasted
    /// @return y The passed value, downcasted to uint128
    function toUint128(uint256 x) private pure returns (uint128 y) {
        require((y = uint128(x)) == x, "lo");
    }

    /// @notice Computes the amount of liquidity received for a given amount of token0 and price range
    /// @dev Calculates amount0 * (sqrt(upper) * sqrt(lower)) / (sqrt(upper) - sqrt(lower))
    /// @param sqrtPriceAX96 A sqrt price representing the first tick boundary
    /// @param sqrtPriceBX96 A sqrt price representing the second tick boundary
    /// @param amount0 The amount0 being sent in
    /// @return liquidity The amount of returned liquidity
    function getLiquidityForAmount0(uint160 sqrtPriceAX96, uint160 sqrtPriceBX96, uint256 amount0)
        internal
        pure
        returns (uint128 liquidity)
    {
        if (sqrtPriceAX96 > sqrtPriceBX96) (sqrtPriceAX96, sqrtPriceBX96) = (sqrtPriceBX96, sqrtPriceAX96);
        uint256 intermediate = FullMath.mulDiv(sqrtPriceAX96, sqrtPriceBX96, FixedPoint96.Q96);
        return toUint128(FullMath.mulDiv(amount0, intermediate, sqrtPriceBX96 - sqrtPriceAX96));
    }

    /// @notice Computes the amount of liquidity received for a given amount of token1 and price range
    /// @dev Calculates amount1 / (sqrt(upper) - sqrt(lower)).
    /// @param sqrtPriceAX96 A sqrt price representing the first tick boundary
    /// @param sqrtPriceBX96 A sqrt price representing the second tick boundary
    /// @param amount1 The amount1 being sent in
    /// @return liquidity The amount of returned liquidity
    function getLiquidityForAmount1(uint160 sqrtPriceAX96, uint160 sqrtPriceBX96, uint256 amount1)
        internal
        pure
        returns (uint128 liquidity)
    {
        if (sqrtPriceAX96 > sqrtPriceBX96) (sqrtPriceAX96, sqrtPriceBX96) = (sqrtPriceBX96, sqrtPriceAX96);
        return toUint128(FullMath.mulDiv(amount1, FixedPoint96.Q96, sqrtPriceBX96 - sqrtPriceAX96));
    }

    /// @notice Computes the maximum amount of liquidity received for a given amount of token0, token1, the current
    /// pool prices and the prices at the tick boundaries
    /// @param sqrtPriceX96 A sqrt price representing the current pool prices
    /// @param sqrtPriceAX96 A sqrt price representing the first tick boundary
    /// @param sqrtPriceBX96 A sqrt price representing the second tick boundary
    /// @param amount0 The amount of token0 being sent in
    /// @param amount1 The amount of token1 being sent in
    /// @return liquidity The maximum amount of liquidity received
    function getLiquidityForAmounts(
        uint160 sqrtPriceX96,
        uint160 sqrtPriceAX96,
        uint160 sqrtPriceBX96,
        uint256 amount0,
        uint256 amount1
    ) internal pure returns (uint128 liquidity) {
        if (sqrtPriceAX96 > sqrtPriceBX96) (sqrtPriceAX96, sqrtPriceBX96) = (sqrtPriceBX96, sqrtPriceAX96);

        if (sqrtPriceX96 <= sqrtPriceAX96) {
            liquidity = getLiquidityForAmount0(sqrtPriceAX96, sqrtPriceBX96, amount0);
        } else if (sqrtPriceX96 < sqrtPriceBX96) {
            uint128 liquidity0 = getLiquidityForAmount0(sqrtPriceX96, sqrtPriceBX96, amount0);
            uint128 liquidity1 = getLiquidityForAmount1(sqrtPriceAX96, sqrtPriceX96, amount1);

            liquidity = liquidity0 < liquidity1 ? liquidity0 : liquidity1;
        } else {
            liquidity = getLiquidityForAmount1(sqrtPriceAX96, sqrtPriceBX96, amount1);
        }
    }

    /// @notice Computes the amount of token0 for a given amount of liquidity and a price range
    /// @param sqrtPriceAX96 A sqrt price representing the first tick boundary
    /// @param sqrtPriceBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount0 The amount of token0
    function getAmount0ForLiquidity(uint160 sqrtPriceAX96, uint160 sqrtPriceBX96, uint128 liquidity)
        internal
        pure
        returns (uint256 amount0)
    {
        if (sqrtPriceAX96 > sqrtPriceBX96) (sqrtPriceAX96, sqrtPriceBX96) = (sqrtPriceBX96, sqrtPriceAX96);

        return FullMath.mulDiv(
            uint256(liquidity) << FixedPoint96.RESOLUTION, sqrtPriceBX96 - sqrtPriceAX96, sqrtPriceBX96
        ) / sqrtPriceAX96;
    }

    /// @notice Computes the amount of token1 for a given amount of liquidity and a price range
    /// @param sqrtPriceAX96 A sqrt price representing the first tick boundary
    /// @param sqrtPriceBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount1 The amount of token1
    function getAmount1ForLiquidity(uint160 sqrtPriceAX96, uint160 sqrtPriceBX96, uint128 liquidity)
        internal
        pure
        returns (uint256 amount1)
    {
        if (sqrtPriceAX96 > sqrtPriceBX96) (sqrtPriceAX96, sqrtPriceBX96) = (sqrtPriceBX96, sqrtPriceAX96);

        return FullMath.mulDiv(liquidity, sqrtPriceBX96 - sqrtPriceAX96, FixedPoint96.Q96);
    }

    /// @notice Computes the token0 and token1 value for a given amount of liquidity, the current
    /// pool prices and the prices at the tick boundaries
    /// @param sqrtPriceX96 A sqrt price representing the current pool prices
    /// @param sqrtPriceAX96 A sqrt price representing the first tick boundary
    /// @param sqrtPriceBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount0 The amount of token0
    /// @return amount1 The amount of token1
    function getAmountsForLiquidity(
        uint160 sqrtPriceX96,
        uint160 sqrtPriceAX96,
        uint160 sqrtPriceBX96,
        uint128 liquidity
    ) internal pure returns (uint256 amount0, uint256 amount1) {
        if (sqrtPriceAX96 > sqrtPriceBX96) (sqrtPriceAX96, sqrtPriceBX96) = (sqrtPriceBX96, sqrtPriceAX96);

        if (sqrtPriceX96 <= sqrtPriceAX96) {
            amount0 = getAmount0ForLiquidity(sqrtPriceAX96, sqrtPriceBX96, liquidity);
        } else if (sqrtPriceX96 < sqrtPriceBX96) {
            amount0 = getAmount0ForLiquidity(sqrtPriceX96, sqrtPriceBX96, liquidity);
            amount1 = getAmount1ForLiquidity(sqrtPriceAX96, sqrtPriceX96, liquidity);
        } else {
            amount1 = getAmount1ForLiquidity(sqrtPriceAX96, sqrtPriceBX96, liquidity);
        }
    }
}

// ============================================================
// FILE: src/libraries/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {LPFeeLibrary} from "v4-core/src/libraries/LPFeeLibrary.sol";

library Math {
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a <= b ? a : b;
    }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function setDynamicFeeOverride(uint24 dynamicFee) internal pure returns (uint24) {
        return dynamicFee | LPFeeLibrary.OVERRIDE_FEE_FLAG;
    }
}

// ============================================================
// FILE: src/libraries/PolicyValidator.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title PolicyValidator
/// @notice Re-usable runtime-validation for fee-cap policy structs
/// @dev   Pulled into its own library so production code, mocks and fuzz harness
///        all share one single source of truth (Rule 6 & 7: avoid duplicated
///        invariants and keep tests in lock-step with implementation).
library PolicyValidator {
    uint32 internal constant PPM = 1_000_000;

    /// @dev Thin value-object used only for mocks & off-chain tooling
    struct Params {
        uint24 minCap;
        uint24 maxCap;
        uint32 stepPpm;
        uint32 budgetPpm;
        uint32 decayWindow;
        uint32 updateInterval;
    }

    /// @notice Reverts when *any* invariant is violated.
    /// @dev    Kept `internal` so the revert reasons bubble up unchanged.
    function validate(
        uint24 minCap,
        uint24 maxCap,
        uint32 stepPpm,
        uint32 budgetPpm,
        uint32 decayWindow,
        uint32 updateInterval
    ) internal pure {
        require(stepPpm != 0 && stepPpm <= PPM, "stepPpm-range");
        require(budgetPpm != 0 && budgetPpm <= 10 * PPM, "budgetPpm-range");
        require(minCap != 0, "minCap=0");
        require(maxCap >= minCap, "cap-bounds");
        require(decayWindow > 0, "decayWindow=0");
        require(updateInterval > 0, "updateInterval=0");
    }
}

// ============================================================
// FILE: src/libraries/PrecisionConstants.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title PrecisionConstants
/// @notice Centralized library for precision-related constants used throughout the protocol
/// @dev This ensures consistency in scaling factors across all contracts
library PrecisionConstants {
    /// @notice Standard high-precision scaling factor (10^18)
    /// @dev Used for interest rates, LTV ratios, and other high-precision calculations
    uint256 internal constant PRECISION = 1e18;

    /// @notice Parts-per-million scaling factor (10^6)
    /// @dev Used for fee percentages, allocation shares, and other percentage-based calculations
    uint256 internal constant PPM_SCALE = 1e6;
}

// ============================================================
// FILE: src/libraries/TickMoveGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title  TickMoveGuard
/// @notice Single source-of-truth for "was the tick move excessive?" logic
///
/// Truncates tick moves to a caller-supplied absolute cap.
library TickMoveGuard {
    /// @dev legacy absolute cap ≈ 1 % of the full Uniswap-V4 tick range.
    int24 internal constant HARD_ABS_CAP = 9_116; // ± 9 116 ticks

    /* ---------- helpers -------------------------------------------------- */
    function _abs(int256 x) private pure returns (uint256) {
        return uint256(x >= 0 ? x : -x);
    }

    /* ---------- public API ----------------------------------------------- */
    /// @notice Truncate to a caller-supplied absolute cap (no dynamic part)
    function truncate(int24 lastTick, int24 currentTick, uint24 cap)
        internal
        pure
        returns (bool capped, int24 newTick)
    {
        uint256 diff = _abs(int256(currentTick) - int256(lastTick));
        if (diff <= cap) return (false, currentTick);

        capped = true;
        int24 capInt = int24(int256(uint256(cap))); // safe 2-step cast
        newTick = currentTick > lastTick ? lastTick + capInt : lastTick - capInt;
    }

    /* ------------------------------------------------------------------ */
    /*  --- Back-compat wrappers (unchanged external signature) ---        */
    /* ------------------------------------------------------------------ */

    /// @notice kept for binary compatibility – ignores any dynamic scale.
    function checkHardCapOnly(int24 lastTick, int24 currentTick) internal pure returns (bool capped, int24 newTick) {
        return truncate(lastTick, currentTick, uint24(HARD_ABS_CAP));
    }

    /// @notice thin wrapper maintaining the old `(last,current,fee,scale)` interface.
    ///         The dynamic part is gone; `scale`/`fee` are ignored.
    function check(int24 lastTick, int24 currentTick, uint256, /* feePpm – ignored */ uint256 /* scale   – ignored */ )
        internal
        pure
        returns (bool capped, int24 newTick)
    {
        return truncate(lastTick, currentTick, uint24(HARD_ABS_CAP));
    }
}

// ============================================================
// FILE: src/libraries/TruncatedOracle.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

/// @title TruncatedOracle
/// @notice Provides price oracle data with protection against price manipulation
/// @dev Truncates price movements that exceed configurable thresholds to prevent oracle manipulation
library TruncatedOracle {
    /* -------------------------------------------------------------------------- */
    /*                              Library constants                             */
    /* -------------------------------------------------------------------------- */
    /// @notice Thrown when trying to interact with an Oracle of a non-initialized pool
    error OracleCardinalityCannotBeZero();

    /// @notice Thrown when trying to observe a price that is older than the oldest recorded observation
    /// @param oldestTimestamp Timestamp of the oldest remaining observation
    /// @param targetTimestamp Invalid timestamp targeted to be observed
    error TargetPredatesOldestObservation(uint32 oldestTimestamp, uint32 targetTimestamp);

    /// @dev **Packed** Observation – 256-bit exact fit
    ///      32 + 24 + 56 + 160 + 8 = 280 (will need to adjust packing)
    struct Observation {
        uint32 blockTimestamp; //  32 bits
        int24 prevTick; //  24 bits ( 56)
        int56 tickCumulative; //  56 bits (112)
        uint160 secondsPerLiquidityCumulativeX128; // 160 bits (272)
        bool initialized; //   8 bits (280)
    }

    /**
     * @notice Transforms a previous observation into a new observation, given the passage of time and the current tick and liquidity values
     * @dev Applies tick movement capping to prevent oracle manipulation
     * @param last The specified observation to be transformed
     * @param blockTimestamp The timestamp of the new observation
     * @param tick The active tick at the time of the new observation
     * @param liquidity The total in-range liquidity at the time of the new observation
     * @param maxTicks The maximum allowed tick movement from the last observed tick
     * @return Observation The newly populated observation
     */
    function transform(Observation memory last, uint32 blockTimestamp, int24 tick, uint128 liquidity, uint24 maxTicks)
        private
        pure
        returns (Observation memory)
    {
        unchecked {
            uint32 delta = blockTimestamp - last.blockTimestamp;

            // Apply tick movement capping if maxTicks > 0
            if (maxTicks > 0) {
                int24 movement = tick - last.prevTick;
                if (movement > int24(maxTicks)) tick = last.prevTick + int24(maxTicks);
                else if (movement < -int24(maxTicks)) tick = last.prevTick - int24(maxTicks);
            }

            return Observation({
                blockTimestamp: blockTimestamp,
                prevTick: tick,
                tickCumulative: _safeCastTickCumulative(last.tickCumulative + _mulTickDelta(tick, delta)),
                secondsPerLiquidityCumulativeX128: last.secondsPerLiquidityCumulativeX128
                    + ((uint160(delta) << 128) / (liquidity > 0 ? liquidity : 1)),
                initialized: true
            });
        }
    }

    /// @notice Initialize the oracle array by writing the first slot. Called once for the lifecycle of the observations array
    /// @param self The stored oracle array
    /// @param time The time of the oracle initialization, via block.timestamp truncated to uint32
    /// @param tick The current tick at initialization
    /// @return cardinality The number of populated elements in the oracle array
    /// @return cardinalityNext The new length of the oracle array, independent of population
    function initialize(Observation[65535] storage self, uint32 time, int24 tick)
        internal
        returns (uint16 cardinality, uint16 cardinalityNext)
    {
        self[0] = Observation({
            blockTimestamp: time,
            prevTick: tick,
            tickCumulative: 0,
            secondsPerLiquidityCumulativeX128: 0,
            initialized: true
        });
        return (1, 1);
    }

    /// @notice Writes an oracle observation to the array with tick movement capping
    /// @dev Writable at most once per block. Caps tick movements to prevent oracle manipulation
    /// @param self The stored oracle array
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param blockTimestamp The timestamp of the new observation
    /// @param tick The active tick at the time of the new observation
    /// @param liquidity The total in-range liquidity at the time of the new observation
    /// @param cardinality The number of populated elements in the oracle array
    /// @param cardinalityNext The new length of the oracle array, independent of population
    /// @param maxTicks The maximum allowed tick movement (0 means no capping)
    /// @return indexUpdated The new index of the most recently written element in the oracle array
    /// @return cardinalityUpdated The new cardinality of the oracle array
    function write(
        Observation[65535] storage self,
        uint16 index,
        uint32 blockTimestamp,
        int24 tick,
        uint128 liquidity,
        uint16 cardinality,
        uint16 cardinalityNext,
        uint24 maxTicks
    ) internal returns (uint16 indexUpdated, uint16 cardinalityUpdated) {
        unchecked {
            Observation memory last = self[index];

            // early return if we've already written an observation this block
            if (last.blockTimestamp == blockTimestamp) return (index, cardinality);

            // if the conditions are right, we can bump the cardinality
            cardinalityUpdated = (cardinalityNext > cardinality && index == (cardinality - 1)) ? cardinalityNext : cardinality;

            indexUpdated = (index + 1) % cardinalityUpdated;
            self[indexUpdated] = transform(last, blockTimestamp, tick, liquidity, maxTicks);
        }
    }

    /// @notice Safe absolute value – reverts on `type(int24).min`
    function abs(int24 x) internal pure returns (uint24) {
        require(x != type(int24).min, "ABS_OF_MIN_INT24");
        return uint24(x >= 0 ? x : -x);
    }


    /// @notice Prepares the oracle array to store up to `next` observations
    /// @param self The stored oracle array
    /// @param current The current next cardinality of the oracle array
    /// @param next The proposed next cardinality which will be populated in the oracle array
    /// @return next The next cardinality which will be populated in the oracle array
    function grow(Observation[65535] storage self, uint16 current, uint16 next) internal returns (uint16) {
        unchecked {
            if (current == 0) revert OracleCardinalityCannotBeZero();
            // no-op if the passed next value isn't greater than the current next value
            if (next <= current) return current;
            // store in each slot to prevent fresh SSTOREs in swaps
            // this data will not be used because the initialized boolean is still false
            for (uint16 i = current; i < next; i++) {
                self[i].blockTimestamp = 1;
            }
            return next;
        }
    }

    /// @notice comparator for 32-bit timestamps
    /// @dev safe for 0 or 1 overflows, a and b _must_ be chronologically before or equal to time
    /// @param time A timestamp truncated to 32 bits
    /// @param a A comparison timestamp from which to determine the relative position of `time`
    /// @param b From which to determine the relative position of `time`
    /// @return Whether `a` is chronologically <= `b`
    function lte(uint32 time, uint32 a, uint32 b) private pure returns (bool) {
        unchecked {
            // if there hasn't been overflow, no need to adjust
            if (a <= time && b <= time) return a <= b;

            uint256 aAdjusted = a > time ? a : a + 2 ** 32;
            uint256 bAdjusted = b > time ? b : b + 2 ** 32;

            return aAdjusted <= bAdjusted;
        }
    }

    /// @notice Fetches the observations before/at and at/after a target timestamp
    /// @dev The answer must be contained in the array, used when the target is located within the stored observation
    /// boundaries: older than the most recent observation and younger, or the same age as, the oldest observation
    /// @param self The stored oracle array
    /// @param time The current block.timestamp
    /// @param target The timestamp at which the reserved observation should be for
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param cardinality The number of populated elements in the oracle array
    /// @return beforeOrAt The observation which occurred at, or before, the given timestamp
    /// @return atOrAfter The observation which occurred at, or after, the given timestamp
    function binarySearch(Observation[65535] storage self, uint32 time, uint32 target, uint16 index, uint16 cardinality)
        private
        view
        returns (Observation memory beforeOrAt, Observation memory atOrAfter)
    {
        unchecked {
            uint256 l = (index + 1) % cardinality; // oldest observation
            uint256 r = l + cardinality - 1; // newest observation
            uint256 i;
            while (true) {
                i = (l + r) / 2;

                beforeOrAt = self[i % cardinality];

                // we've landed on an uninitialized tick, keep searching higher (more recently)
                if (!beforeOrAt.initialized) {
                    l = i + 1;
                    continue;
                }

                atOrAfter = self[(i + 1) % cardinality];

                bool targetAtOrAfter = lte(time, beforeOrAt.blockTimestamp, target);

                // check if we've found the answer!
                if (targetAtOrAfter && lte(time, target, atOrAfter.blockTimestamp)) break;

                if (!targetAtOrAfter) r = i - 1;
                else l = i + 1;
            }
        }
    }

    /// @notice Fetches the observations beforeOrAt and atOrAfter a given target
    /// @dev Used to compute the counterfactual accumulator values as of a given block timestamp
    /// @param self The stored oracle array
    /// @param time The current block.timestamp
    /// @param target The timestamp at which the reserved observation should be for
    /// @param tick The active tick at the time of the returned or simulated observation
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param liquidity The total pool liquidity at the time of the call
    /// @param cardinality The number of populated elements in the oracle array
    /// @return beforeOrAt The observation which occurred at, or before, the given timestamp
    /// @return atOrAfter The observation which occurred at, or after, the given timestamp
    function getSurroundingObservations(
        Observation[65535] storage self,
        uint32 time,
        uint32 target,
        int24 tick,
        uint16 index,
        uint128 liquidity,
        uint16 cardinality
    ) private view returns (Observation memory beforeOrAt, Observation memory atOrAfter) {
        unchecked {
            // optimistically set before to the newest observation
            beforeOrAt = self[index];

            // if the target is chronologically at or after the newest observation, we can early return
            if (lte(time, beforeOrAt.blockTimestamp, target)) {
                if (beforeOrAt.blockTimestamp == target) {
                    // if newest observation equals target, we're in the same block, so we can ignore atOrAfter
                    return (beforeOrAt, atOrAfter);
                } else {
                    // otherwise, we need to transform using the pool-specific tick movement cap
                    return (beforeOrAt, transform(beforeOrAt, target, tick, liquidity, 0)); // No maxTicks for normal path
                }
            }

            // now, set before to the oldest observation
            beforeOrAt = self[(index + 1) % cardinality];
            if (!beforeOrAt.initialized) beforeOrAt = self[0];

            // ensure that the target is chronologically at or after the oldest observation
            if (!lte(time, beforeOrAt.blockTimestamp, target)) {
                revert TargetPredatesOldestObservation(beforeOrAt.blockTimestamp, target);
            }

            // if we've reached this point, we have to binary search
            return binarySearch(self, time, target, index, cardinality);
        }
    }

    /// @notice Observe oracle values at specific secondsAgos from the current block timestamp
    /// @dev Reverts if observation at or before the desired observation timestamp does not exist
    /// @param self The stored oracle array
    /// @param time The current block timestamp
    /// @param secondsAgos The array of seconds ago to observe
    /// @param tick The current tick
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param liquidity The current in-range pool liquidity
    /// @param cardinality The number of populated elements in the oracle array
    /// @return tickCumulatives The tick * time elapsed since the pool was first initialized, as of each secondsAgo
    /// @return secondsPerLiquidityCumulativeX128s The cumulative seconds / max(1, liquidity) since pool initialized
    function observe(
        Observation[65535] storage self,
        uint32 time,
        uint32[] memory secondsAgos,
        int24 tick,
        uint16 index,
        uint128 liquidity,
        uint16 cardinality
    ) internal view returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s) {
        unchecked {
            if (cardinality == 0) revert OracleCardinalityCannotBeZero();

            tickCumulatives = new int56[](secondsAgos.length);
            secondsPerLiquidityCumulativeX128s = new uint160[](secondsAgos.length);
            for (uint256 i = 0; i < secondsAgos.length; i++) {
                (tickCumulatives[i], secondsPerLiquidityCumulativeX128s[i]) =
                    observeSingle(self, time, secondsAgos[i], tick, index, liquidity, cardinality);
            }
        }
    }

    /// @notice Observe a single oracle value at a specific secondsAgo from the current block timestamp
    /// @dev Helper function for observe to get data for a single secondsAgo value
    /// @param self The stored oracle array
    /// @param time The current block timestamp
    /// @param secondsAgo The specific seconds ago to observe
    /// @param tick The current tick
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param liquidity The current in-range pool liquidity
    /// @param cardinality The number of populated elements in the oracle array
    /// @return tickCumulative The tick * time elapsed since the pool was first initialized, as of secondsAgo
    /// @return secondsPerLiquidityCumulativeX128 The seconds / max(1, liquidity) since pool initialized
    function observeSingle(
        Observation[65535] storage self,
        uint32 time,
        uint32 secondsAgo,
        int24 tick,
        uint16 index,
        uint128 liquidity,
        uint16 cardinality
    ) internal view returns (int56 tickCumulative, uint160 secondsPerLiquidityCumulativeX128) {
        unchecked {
            if (cardinality == 0) revert OracleCardinalityCannotBeZero();

            if (secondsAgo == 0 || secondsAgo > type(uint32).max) {
                Observation memory last = self[index];
                if (last.blockTimestamp != time) {
                    last = transform(last, time, tick, liquidity, 0); // No maxTicks for base case
                }
                return (last.tickCumulative, last.secondsPerLiquidityCumulativeX128);
            }

            // Safe subtraction logic applied *before* getSurroundingObservations
            uint32 target;
            target = time >= secondsAgo ? time - secondsAgo : time + (type(uint32).max - secondsAgo) + 1;

            (Observation memory beforeOrAt, Observation memory atOrAfter) =
                getSurroundingObservations(self, time, target, tick, index, liquidity, cardinality);

            if (target == beforeOrAt.blockTimestamp) {
                // we're at the left boundary
                return (beforeOrAt.tickCumulative, beforeOrAt.secondsPerLiquidityCumulativeX128);
            } else if (target == atOrAfter.blockTimestamp) {
                // we're at the right boundary
                return (atOrAfter.tickCumulative, atOrAfter.secondsPerLiquidityCumulativeX128);
            } else {
                // ----------  NORMALISE for wrap-around ----------
                // Bring all three timestamps into the same "era" (≥ beforeOrAt)
                uint32 base = beforeOrAt.blockTimestamp;
                uint32 norm = base; // avoids stack-too-deep
                uint32 bTs = beforeOrAt.blockTimestamp;
                uint32 aTs = atOrAfter.blockTimestamp;
                uint32 tTs = target;

                if (aTs < norm) aTs += type(uint32).max + 1;
                if (tTs < norm) tTs += type(uint32).max + 1;

                // Use the normalised copies for deltas below
                // we're in the middle
                uint32 observationTimeDelta = aTs - bTs;
                uint32 targetDelta = tTs - bTs;

                return (
                    int56(
                        int256(beforeOrAt.tickCumulative)
                            + (
                                (int256(atOrAfter.tickCumulative) - int256(beforeOrAt.tickCumulative))
                                    * int256(uint256(targetDelta)) / int256(uint256(observationTimeDelta))
                            )
                    ),
                    beforeOrAt.secondsPerLiquidityCumulativeX128
                        + uint160(
                            (
                                uint256(atOrAfter.secondsPerLiquidityCumulativeX128)
                                    - uint256(beforeOrAt.secondsPerLiquidityCumulativeX128)
                            ) * uint256(targetDelta) / uint256(observationTimeDelta)
                        )
                );
            }
        }
    }

    /// @dev Safe cast/ clamp helper for accumulator.
    function _safeCastTickCumulative(int256 v) private pure returns (int56) {
        require(v >= type(int56).min && v <= type(int56).max, "cum-overflow");
        return int56(v);
    }

    /// @dev Multiplies tick (int24) by delta (uint32) in 256-bit space and
    ///      ensures the product fits within the int56 accumulator range.
    function _mulTickDelta(int24 tick, uint32 delta) private pure returns (int256 p) {
        p = int256(int128(tick)) * int256(uint256(delta));
        require(p >= type(int56).min && p <= type(int56).max, "mul-overflow");
    }

}

// ============================================================
// FILE: src/PoolPolicyManager.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

// - - - Solmate Deps - - -

import {Owned} from "solmate/src/auth/Owned.sol";

// - - - V4 Deps - - -

import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";

// - - - Project Deps - - -

import {PrecisionConstants} from "./libraries/PrecisionConstants.sol";
import {Errors} from "./errors/Errors.sol";
import {PolicyManagerErrors} from "./errors/PolicyManagerErrors.sol";
import {IPoolPolicyManager} from "./interfaces/IPoolPolicyManager.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

/// @title PoolPolicyManager
/// @notice Consolidated policy manager implementing the IPoolPolicyManager interface
/// @dev Handles all policy functionality for pool configuration and fee management
contract PoolPolicyManager is IPoolPolicyManager, Owned {
    // === Constants ===

    uint24 private constant MIN_TRADING_FEE = 10; // 0.001%
    uint24 private constant MAX_TRADING_FEE = 100_000; // 10%

    uint32 private constant DEFAULT_CAP_BUDGET_DECAY_WINDOW = 15_552_000; // 180 days
    uint32 private constant DEFAULT_SURGE_DECAY_PERIOD_SECONDS = 21600; // 6 hours
    uint24 private constant DEFAULT_SURGE_FEE_MULTIPLIER_PPM = 3_000_000; // 300%
    uint24 private constant MAX_SURGE_FEE_MULTIPLIER_PPM = 10_000_000;



    /// @notice Maximum step for base fee updates (10% per step)
    uint32 private constant MAX_STEP_PPM = 100_000;

    /// @notice Default base fee step size (2% per step)
    uint32 private constant DEFAULT_BASE_FEE_STEP_PPM = 20_000;

    /// @notice Default base fee update interval (1 day)
    uint32 private constant DEFAULT_BASE_FEE_UPDATE_INTERVAL_SECS = 1 days;

    /// @notice Default base fee factor (1 tick = 28 PPM)
    uint32 private constant DEFAULT_BASE_FEE_FACTOR_PPM = 28;

    /// @notice Default minimum cap (in ticks) for oracle bounds
    uint24 private constant DEFAULT_MIN_CAP = 1;

    /// @notice Default maximum cap (in ticks) for oracle bounds
    uint24 private constant DEFAULT_MAX_CAP = 400;

    /// @notice Default pool POL share (10%)
    uint256 private constant DEFAULT_POOL_POL_SHARE_PPM = 100_000; // 10% = 100,000 PPM

    /// @notice Maximum base fee factor to prevent overflow (1 tick = 1000 PPM max)
    uint32 private constant MAX_BASE_FEE_FACTOR_PPM = 1000;

    // === Dynamic Fee Configuration Struct ===

    struct DynamicFeeConfig {
        uint32 capBudgetDecayWindow;
        uint24 minBaseFeePpm;
        uint24 maxBaseFeePpm;
        uint32 surgeDecayPeriodSeconds;
        uint24 surgeFeeMultiplierPpm;
    }

    struct BaseFeeParams {
        uint32 stepPpm;
        uint32 updateIntervalSecs;
    }

    // === State Variables ===

    /// @notice Manual fee override per pool (if non-zero)
    mapping(PoolId => uint24) private _poolManualFee;

    /// @notice Flag to indicate if a manual fee is set for a pool
    mapping(PoolId => bool) private _hasPoolManualFee;

    /// @notice Pool-specific POL share percentages
    mapping(PoolId => uint256) private _poolPolSharePpm;

    /// @notice Pool-specific dynamic fee configurations
    mapping(PoolId => DynamicFeeConfig) private _poolDynamicFeeConfig;

    /// @notice Base fee parameters per pool
    mapping(PoolId => BaseFeeParams) private _poolBaseFeeParams;

    /// @notice Default daily budget for CAP events (ppm/day) 1e6 is 1 per day, 1e7 is 10 per day
    uint32 private _defaultCapBudgetDailyPpm;

    /// @notice Pool-specific daily budget for CAP events (0 means use default)
    mapping(PoolId => uint32) private _poolCapBudgetDailyPpm;

    /// @notice Linear decay half-life for the budget counter (seconds)
    uint32 private _capBudgetDecayWindow;

    /// @notice Pool-specific base fee factor for converting oracle ticks to PPM
    mapping(PoolId => uint32) private _poolBaseFeeFactor;

    /// @notice Pool-specific minimum cap (in ticks) for oracle bounds
    mapping(PoolId => uint24) private _poolMinCap;

    /// @notice Pool-specific maximum cap (in ticks) for oracle bounds  
    mapping(PoolId => uint24) private _poolMaxCap;

    /// @notice Pool-specific default max ticks per block
    mapping(PoolId => uint24) private _poolDefaultMaxTicksPerBlock;

    /// @notice Pool-specific perSwap vs perBlock mode setting (true = perSwap, false = perBlock)
    mapping(PoolId => bool) private _poolPerSwapMode;

    /// @notice Global default for perSwap vs perBlock mode (true = perSwap, false = perBlock)
    bool private _defaultPerSwapMode;

    /// @notice Global default base fee factor (can be updated by owner)
    uint32 private _defaultBaseFeeFactor;

    /// @notice Address of an authorized hook allowed to perform certain one-time initializations
    address public authorizedHook;

    /// @notice Tracks whether base fee bounds have been initialized for each pool
    mapping(PoolId => bool) private _baseFeeBoundsInitialized;

    /// @notice Constructor initializes the policy manager with default values
    /// @param _governance The owner of the contract
    /// @param _dailyBudget Initial daily budget
    constructor(address _governance, uint256 _dailyBudget) Owned(_governance) {
        if (_governance == address(0)) revert Errors.ZeroAddress();
        // Initialize global parameters
        _defaultCapBudgetDailyPpm = _dailyBudget == 0 ? 1_000_000 : uint32(_dailyBudget);
        _capBudgetDecayWindow = DEFAULT_CAP_BUDGET_DECAY_WINDOW; // 180 days
        _defaultBaseFeeFactor = DEFAULT_BASE_FEE_FACTOR_PPM; // Initialize with constant
        _defaultPerSwapMode = true; // Default to perSwap mode
    }

    // === Fee Allocation Functions ===

    /// @inheritdoc IPoolPolicyManager
    function setPoolPOLShare(PoolId poolId, uint256 newPolSharePpm) external override onlyOwner {
        // Validate POL share is within valid range (0-100%)
        if (newPolSharePpm > PrecisionConstants.PPM_SCALE) {
            revert Errors.ParameterOutOfRange(newPolSharePpm, 0, PrecisionConstants.PPM_SCALE);
        }

        uint256 oldShare = _poolPolSharePpm[poolId];
        if (oldShare != newPolSharePpm) {
            _poolPolSharePpm[poolId] = newPolSharePpm;
            emit PoolPOLShareChanged(poolId, newPolSharePpm);
        }
    }

    /// @notice Sets the authorized hook address. Only callable by the owner.
    /// @param hook The address of the authorized hook
    function setAuthorizedHook(address hook) external onlyOwner {
        if (hook == address(0)) revert Errors.ZeroAddress();
        authorizedHook = hook;
    }

    /// @inheritdoc IPoolPolicyManager
    function getPoolPOLShare(PoolId poolId) external view override returns (uint256 poolSpecificPolShare) {
        poolSpecificPolShare = _poolPolSharePpm[poolId];
    }

    // === Manual Fee Override Functions ===

    /// @inheritdoc IPoolPolicyManager
    function getManualFee(PoolId poolId) external view override returns (uint24 manualFee, bool isSet) {
        return (_poolManualFee[poolId], _hasPoolManualFee[poolId]);
    }

    /// @inheritdoc IPoolPolicyManager
    function setManualFee(PoolId poolId, uint24 manualFee) external override onlyOwner {
        if (manualFee < MIN_TRADING_FEE || manualFee > MAX_TRADING_FEE) {
            revert Errors.ParameterOutOfRange(manualFee, MIN_TRADING_FEE, MAX_TRADING_FEE);
        }

        _poolManualFee[poolId] = manualFee;
        _hasPoolManualFee[poolId] = true;

        emit ManualFeeSet(poolId, manualFee);
    }

    /// @inheritdoc IPoolPolicyManager
    function clearManualFee(PoolId poolId) external override onlyOwner {
        if (_hasPoolManualFee[poolId]) {
            _poolManualFee[poolId] = 0;
            _hasPoolManualFee[poolId] = false;

            emit ManualFeeSet(poolId, 0);
        }
    }

    // === Dynamic Fee Configuration Getters ===

    /// @inheritdoc IPoolPolicyManager
    function getMinBaseFee(PoolId poolId) external view override returns (uint24) {
        if (_poolDynamicFeeConfig[poolId].minBaseFeePpm != 0) {
            return _poolDynamicFeeConfig[poolId].minBaseFeePpm;
        }
        return MIN_TRADING_FEE;
    }

    /// @inheritdoc IPoolPolicyManager
    function getMaxBaseFee(PoolId poolId) external view override returns (uint24) {
        if (_poolDynamicFeeConfig[poolId].maxBaseFeePpm != 0) {
            return _poolDynamicFeeConfig[poolId].maxBaseFeePpm;
        }
        return MAX_TRADING_FEE;
    }

    /// @inheritdoc IPoolPolicyManager
    function getSurgeDecayPeriodSeconds(PoolId poolId) external view override returns (uint32) {
        if (_poolDynamicFeeConfig[poolId].surgeDecayPeriodSeconds != 0) {
            return _poolDynamicFeeConfig[poolId].surgeDecayPeriodSeconds;
        }
        return DEFAULT_SURGE_DECAY_PERIOD_SECONDS;
    }

    /// @inheritdoc IPoolPolicyManager
    function getSurgeFeeMultiplierPpm(PoolId poolId) external view override returns (uint24) {
        if (_poolDynamicFeeConfig[poolId].surgeFeeMultiplierPpm != 0) {
            return _poolDynamicFeeConfig[poolId].surgeFeeMultiplierPpm;
        }
        return DEFAULT_SURGE_FEE_MULTIPLIER_PPM;
    }

    /// @inheritdoc IPoolPolicyManager
    function getDefaultDailyBudgetPpm() external view override returns (uint32) {
        return _defaultCapBudgetDailyPpm;
    }

    /// @inheritdoc IPoolPolicyManager
    function getDailyBudgetPpm(PoolId poolId) external view override returns (uint32) {
        uint32 poolBudget = _poolCapBudgetDailyPpm[poolId];
        return poolBudget == 0 ? _defaultCapBudgetDailyPpm : poolBudget;
    }

    /// @inheritdoc IPoolPolicyManager
    function getCapBudgetDecayWindow(PoolId poolId) external view override returns (uint32) {
        if (_poolDynamicFeeConfig[poolId].capBudgetDecayWindow != 0) {
            return _poolDynamicFeeConfig[poolId].capBudgetDecayWindow;
        }
        return _capBudgetDecayWindow;
    }

    /// @inheritdoc IPoolPolicyManager
    function getDefaultMaxTicksPerBlock(PoolId poolId) external view override returns (uint24) {
        uint24 poolDefault = _poolDefaultMaxTicksPerBlock[poolId];
        // poolDefault is guaranteed to be non-zero after initialization
        // If somehow called before initialization, this would revert with zero value
        if (poolDefault == 0) revert PolicyManagerErrors.ZeroValue();
        return poolDefault;
    }

    /// @inheritdoc IPoolPolicyManager
    function getBaseFeeStepPpm(PoolId poolId) public view override returns (uint32) {
        uint32 val = _poolBaseFeeParams[poolId].stepPpm;
        return val == 0 ? DEFAULT_BASE_FEE_STEP_PPM : val;
    }

    /// @inheritdoc IPoolPolicyManager
    function getBaseFeeUpdateIntervalSeconds(PoolId poolId) public view override returns (uint32) {
        uint32 val = _poolBaseFeeParams[poolId].updateIntervalSecs;
        return val == 0 ? DEFAULT_BASE_FEE_UPDATE_INTERVAL_SECS : val;
    }

    /// @inheritdoc IPoolPolicyManager
    function getBaseFeeFactor(PoolId poolId) external view override returns (uint32) {
        uint32 factor = _poolBaseFeeFactor[poolId];
        return factor == 0 ? _defaultBaseFeeFactor : factor;
    }

    /// @inheritdoc IPoolPolicyManager
    function getMinCap(PoolId poolId) external view override returns (uint24) {
        uint24 minCap = _poolMinCap[poolId];
        return minCap == 0 ? DEFAULT_MIN_CAP : minCap; // Default to 1 ticks if not set
    }

    /// @inheritdoc IPoolPolicyManager
    function getMaxCap(PoolId poolId) external view override returns (uint24) {
        uint24 maxCap = _poolMaxCap[poolId];
        return maxCap == 0 ? DEFAULT_MAX_CAP : maxCap; // Default to 400 ticks if not set
    }

    // === Dynamic Fee Configuration Setters ===

    /// @inheritdoc IPoolPolicyManager
    function setMinBaseFee(PoolId poolId, uint24 newMinFee) external override onlyOwner {
        uint24 maxFee = this.getMaxBaseFee(poolId);
        if (newMinFee < MIN_TRADING_FEE || newMinFee > maxFee) {
            revert PolicyManagerErrors.InvalidFeeRange(newMinFee, MIN_TRADING_FEE, maxFee);
        }
        _poolDynamicFeeConfig[poolId].minBaseFeePpm = newMinFee;
        emit MinBaseFeeSet(poolId, newMinFee);
    }

    /// @inheritdoc IPoolPolicyManager
    function setMaxBaseFee(PoolId poolId, uint24 newMaxFee) external override onlyOwner {
        uint24 minFee = this.getMinBaseFee(poolId);
        if (newMaxFee < minFee || newMaxFee > MAX_TRADING_FEE) {
            revert PolicyManagerErrors.InvalidFeeRange(newMaxFee, minFee, MAX_TRADING_FEE);
        }
        _poolDynamicFeeConfig[poolId].maxBaseFeePpm = newMaxFee;
        emit MaxBaseFeeSet(poolId, newMaxFee);
    }

    /// @notice One-time initialization by owner or authorized hook to set base fee bounds from tick spacing
    /// @param poolKey The pool key containing tick spacing
    function initialize(PoolKey calldata poolKey) external {
        if (msg.sender != owner && msg.sender != authorizedHook) revert Errors.UnauthorizedCaller(msg.sender);

        PoolId poolId = poolKey.toId();

        // If already initialized, return without changing state (truly one-time)
        if (_baseFeeBoundsInitialized[poolId]) {
            return;
        }

        // Calculate normal fee from tick spacing: feePpm = clamp(tickSpacing * 50, 100, 10_000)
        uint24 normalFeePpm;
        if (poolKey.tickSpacing <= 0) {
            normalFeePpm = 100;
        } else {
            uint256 calculatedFeePpm = uint256(uint24(poolKey.tickSpacing)) * 50;
            if (calculatedFeePpm < 100) calculatedFeePpm = 100;
            if (calculatedFeePpm > 10_000) calculatedFeePpm = 10_000;
            normalFeePpm = uint24(calculatedFeePpm);
        }

        uint24 startingMaxTicksPerBlock = uint24(normalFeePpm / this.getBaseFeeFactor(poolId));
        if (startingMaxTicksPerBlock == 0) startingMaxTicksPerBlock = 1;
        _poolDefaultMaxTicksPerBlock[poolId] = startingMaxTicksPerBlock;

        uint24 minBaseFee = 10; // .001%
        uint24 maxBaseFee = 30_000; // 3%
        
        _poolDynamicFeeConfig[poolId].minBaseFeePpm = minBaseFee;
        emit MinBaseFeeSet(poolId, minBaseFee);

        _poolDynamicFeeConfig[poolId].maxBaseFeePpm = maxBaseFee;
        emit MaxBaseFeeSet(poolId, maxBaseFee);

        // Initialize perSwap mode with current global default
        _poolPerSwapMode[poolId] = _defaultPerSwapMode;

        // Initialize default POL share (10%)
        _poolPolSharePpm[poolId] = DEFAULT_POOL_POL_SHARE_PPM;
        emit PoolPOLShareChanged(poolId, DEFAULT_POOL_POL_SHARE_PPM);

        _baseFeeBoundsInitialized[poolId] = true;

    }

    /// @inheritdoc IPoolPolicyManager
    function setCapBudgetDecayWindow(PoolId poolId, uint32 newCapBudgetDecayWindow) external override onlyOwner {
        if (newCapBudgetDecayWindow == 0 || newCapBudgetDecayWindow > type(uint32).max) {
            revert Errors.ParameterOutOfRange(newCapBudgetDecayWindow, 1, type(uint32).max);
        }

        _poolDynamicFeeConfig[poolId].capBudgetDecayWindow = newCapBudgetDecayWindow;
        emit CapBudgetDecayWindowSet(poolId, newCapBudgetDecayWindow);
    }

    /// @inheritdoc IPoolPolicyManager
    function setSurgeDecayPeriodSeconds(PoolId poolId, uint32 newSurgeDecayPeriodSeconds) external override onlyOwner {
        if (newSurgeDecayPeriodSeconds < 60 || newSurgeDecayPeriodSeconds > 1 days) {
            revert Errors.ParameterOutOfRange(newSurgeDecayPeriodSeconds, 60, 1 days);
        }

        _poolDynamicFeeConfig[poolId].surgeDecayPeriodSeconds = newSurgeDecayPeriodSeconds;
        emit SurgeDecayPeriodSet(poolId, newSurgeDecayPeriodSeconds);
    }

    /// @inheritdoc IPoolPolicyManager
    function setSurgeFeeMultiplierPpm(PoolId poolId, uint24 multiplier) external override onlyOwner {
        if (multiplier == 0 || multiplier > MAX_SURGE_FEE_MULTIPLIER_PPM) revert Errors.ParameterOutOfRange(multiplier, 1, MAX_SURGE_FEE_MULTIPLIER_PPM);

    _poolDynamicFeeConfig[poolId].surgeFeeMultiplierPpm = multiplier;
        emit SurgeFeeMultiplierSet(poolId, multiplier);
    }

    /// @inheritdoc IPoolPolicyManager
    function setBaseFeeParams(PoolId poolId, uint32 stepPpm, uint32 updateIntervalSecs) external override onlyOwner {
        if (stepPpm > MAX_STEP_PPM) revert Errors.ParameterOutOfRange(stepPpm, 0, MAX_STEP_PPM);
        if (updateIntervalSecs == 0) {
            revert Errors.ParameterOutOfRange(updateIntervalSecs, 1, type(uint32).max);
        }

        _poolBaseFeeParams[poolId] = BaseFeeParams({stepPpm: stepPpm, updateIntervalSecs: updateIntervalSecs});

        emit BaseFeeParamsSet(poolId, stepPpm, updateIntervalSecs);
    }

    /// @inheritdoc IPoolPolicyManager
    function setDailyBudgetPpm(uint32 newCapBudgetDailyPpm) external override onlyOwner {
        if (newCapBudgetDailyPpm == 0 || newCapBudgetDailyPpm > 10 * PrecisionConstants.PPM_SCALE) {
            revert Errors.ParameterOutOfRange(newCapBudgetDailyPpm, 1, 10 * PrecisionConstants.PPM_SCALE);
        }
        _defaultCapBudgetDailyPpm = newCapBudgetDailyPpm;
        emit DailyBudgetSet(newCapBudgetDailyPpm);
    }

    /// @inheritdoc IPoolPolicyManager
    function setPoolDailyBudgetPpm(PoolId poolId, uint32 newBudget) external override onlyOwner {
        // Validate: 0 means "use default", or 1 to 10*PPM_SCALE
        if (newBudget > 10 * PrecisionConstants.PPM_SCALE) {
            revert Errors.ParameterOutOfRange(newBudget, 1, 10 * PrecisionConstants.PPM_SCALE);
        }

        _poolCapBudgetDailyPpm[poolId] = newBudget;
        emit PoolDailyBudgetSet(poolId, newBudget);
    }

    /// @inheritdoc IPoolPolicyManager
    function setDecayWindow(uint32 newCapBudgetDecayWindow) external override onlyOwner {
        if (newCapBudgetDecayWindow == 0) revert PolicyManagerErrors.ZeroValue();
        _capBudgetDecayWindow = newCapBudgetDecayWindow;
        emit GlobalDecayWindowSet(newCapBudgetDecayWindow);
    }

    /// @inheritdoc IPoolPolicyManager
    function setBaseFeeFactor(PoolId poolId, uint32 factor) external override onlyOwner {
        // Validate factor is reasonable (0 means use default)
        if (factor != 0 && factor > MAX_BASE_FEE_FACTOR_PPM) {
            revert Errors.ParameterOutOfRange(factor, 1, MAX_BASE_FEE_FACTOR_PPM);
        }

        _poolBaseFeeFactor[poolId] = factor;
        emit BaseFeeFactorSet(poolId, factor);
    }

    /// @notice Sets the minimum cap (in ticks) for oracle bounds
    /// @param poolId The pool ID
    /// @param minCap The minimum cap in ticks
    function setMinCap(PoolId poolId, uint24 minCap) external onlyOwner {
        if (minCap == 0) revert PolicyManagerErrors.ZeroValue();
        
        uint24 maxCap = this.getMaxCap(poolId);
        if (minCap > maxCap) {
            revert Errors.ParameterOutOfRange(minCap, 1, maxCap);
        }

        _poolMinCap[poolId] = minCap;
        emit MinCapSet(poolId, minCap);
    }

    /// @notice Sets the maximum cap (in ticks) for oracle bounds
    /// @param poolId The pool ID  
    /// @param maxCap The maximum cap in ticks
    function setMaxCap(PoolId poolId, uint24 maxCap) external onlyOwner {
        if (maxCap == 0) revert PolicyManagerErrors.ZeroValue();
        
        uint24 minCap = this.getMinCap(poolId);
        if (maxCap < minCap) {
            revert Errors.ParameterOutOfRange(maxCap, minCap, type(uint24).max);
        }

        _poolMaxCap[poolId] = maxCap;
        emit MaxCapSet(poolId, maxCap);
    }

    /// @notice Sets the default max ticks per block for a specific pool
    /// @param poolId The pool ID
    /// @param defaultMaxTicks The default max ticks per block
    function setDefaultMaxTicksPerBlock(PoolId poolId, uint24 defaultMaxTicks) external onlyOwner {
        if (defaultMaxTicks == 0) revert PolicyManagerErrors.ZeroValue();
        
        _poolDefaultMaxTicksPerBlock[poolId] = defaultMaxTicks;
        emit DefaultMaxTicksPerBlockSet(poolId, defaultMaxTicks);
    }

    /// @notice Gets the global default base fee factor
    /// @return The global default base fee factor
    function getDefaultBaseFeeFactor() external view returns (uint32) {
        return _defaultBaseFeeFactor;
    }

    /// @notice Sets the global default base fee factor
    /// @param factor The new default base fee factor
    function setDefaultBaseFeeFactor(uint32 factor) external onlyOwner {
        if (factor == 0 || factor > MAX_BASE_FEE_FACTOR_PPM) {
            revert Errors.ParameterOutOfRange(factor, 1, MAX_BASE_FEE_FACTOR_PPM);
        }
        
        _defaultBaseFeeFactor = factor;
        emit DefaultBaseFeeFactorSet(factor);
    }

    /// @inheritdoc IPoolPolicyManager
    function getPerSwapMode(PoolId poolId) external view override returns (bool) {
        // Return the stored value (which was set during initialization or explicitly changed)
        return _poolPerSwapMode[poolId];
    }

    /// @inheritdoc IPoolPolicyManager
    function setPerSwapMode(PoolId poolId, bool perSwap) external override onlyOwner {
        // Store the setting
        _poolPerSwapMode[poolId] = perSwap;
        emit PerSwapModeSet(poolId, perSwap);
    }

    /// @notice Gets the global default for perSwap vs perBlock mode
    /// @return True if the global default is perSwap mode, false if perBlock mode
    function getDefaultPerSwapMode() external view returns (bool) {
        return _defaultPerSwapMode;
    }

    /// @notice Sets the global default for perSwap vs perBlock mode
    /// @param perSwap True for perSwap mode as default, false for perBlock mode as default
    function setDefaultPerSwapMode(bool perSwap) external onlyOwner {
        _defaultPerSwapMode = perSwap;
        emit DefaultPerSwapModeSet(perSwap);
    }
}

// ============================================================
// FILE: src/Spot.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

// - - - Solmate Deps - - -

import {ERC20} from "solmate/src/tokens/ERC20.sol";

// - - - V4 Core Deps - - -

import {LPFeeLibrary} from "v4-core/src/libraries/LPFeeLibrary.sol";
import {Hooks} from "v4-core/src/libraries/Hooks.sol";
import {CurrencyDelta} from "v4-core/src/libraries/CurrencyDelta.sol";
import {StateLibrary} from "v4-core/src/libraries/StateLibrary.sol";
import {TickMath} from "v4-core/src/libraries/TickMath.sol";
import {FullMath} from "v4-core/src/libraries/FullMath.sol";
import {CustomRevert} from "v4-core/src/libraries/CustomRevert.sol";
import {Currency, CurrencyLibrary} from "v4-core/src/types/Currency.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";
import {BalanceDelta, BalanceDeltaLibrary} from "v4-core/src/types/BalanceDelta.sol";
import {BeforeSwapDelta, BeforeSwapDeltaLibrary, toBeforeSwapDelta} from "v4-core/src/types/BeforeSwapDelta.sol";
import {SwapParams} from "v4-core/src/types/PoolOperation.sol";
import {ModifyLiquidityParams} from "v4-core/src/types/PoolOperation.sol";
import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {IERC20Minimal} from "v4-core/src/interfaces/external/IERC20Minimal.sol";

// - - - V4 Periphery Deps - - -

import {BaseHook} from "v4-periphery/src/utils/BaseHook.sol";
import {Locker} from "v4-periphery/src/libraries/Locker.sol";
import {IPositionManager} from "v4-periphery/src/interfaces/IPositionManager.sol";

// - - - Project Libraries - - -

import {TickMoveGuard} from "./libraries/TickMoveGuard.sol";
import {Math} from "./libraries/Math.sol";
import {TruncatedOracle} from "./libraries/TruncatedOracle.sol";

// - - - Project Interfaces - - -

import {ISpot} from "./interfaces/ISpot.sol";
import {IFullRangeLiquidityManager} from "./interfaces/IFullRangeLiquidityManager.sol";
import {ITruncGeoOracleMulti} from "./interfaces/ITruncGeoOracleMulti.sol";
import {IDynamicFeeManager} from "./interfaces/IDynamicFeeManager.sol";
import {Errors} from "./errors/Errors.sol";

// - - - Project Contracts - - -

import {DynamicFeeManager} from "./DynamicFeeManager.sol";
import {FullRangeLiquidityManager} from "./FullRangeLiquidityManager.sol";
import {PoolPolicyManager} from "./PoolPolicyManager.sol";
import {TruncGeoOracleMulti} from "./TruncGeoOracleMulti.sol";

contract Spot is BaseHook, ISpot {
    using PoolIdLibrary for PoolKey;
    using PoolIdLibrary for PoolId;
    using CurrencyLibrary for Currency;
    using CurrencyDelta for Currency;
    using BalanceDeltaLibrary for BalanceDelta;
    using CustomRevert for bytes4;

    // - - - State - - -

    PoolPolicyManager public immutable override policyManager;
    TruncGeoOracleMulti public immutable override truncGeoOracle;
    IDynamicFeeManager public immutable override dynamicFeeManager;
    IFullRangeLiquidityManager public immutable override liquidityManager;

    bool public override reinvestmentPaused;

    /// @notice Track last block a CAP event was counted per pool to dedupe per-block mode
    mapping(PoolId => uint256) private lastCapEventBlock;

    // - - - Constructor - - -

    constructor(
        IFullRangeLiquidityManager _liquidityManager,
        PoolPolicyManager _policyManager,
        TruncGeoOracleMulti _oracle,
        IDynamicFeeManager _dynamicFeeManager
    ) BaseHook(_liquidityManager.poolManager()) {
        if (address(_liquidityManager.poolManager()) == address(0)) revert Errors.ZeroAddress();
        if (address(_liquidityManager) == address(0)) revert Errors.ZeroAddress();
        if (address(_policyManager) == address(0)) revert Errors.ZeroAddress();
        if (address(_oracle) == address(0)) revert Errors.ZeroAddress();
        if (address(_dynamicFeeManager) == address(0)) revert Errors.ZeroAddress();

        if (_liquidityManager.authorizedHookAddress() != address(this)) {
            revert Errors.InvalidHookAuthorization(_liquidityManager.authorizedHookAddress(), address(this));
        }

        policyManager = _policyManager;
        truncGeoOracle = _oracle;
        dynamicFeeManager = _dynamicFeeManager;
        liquidityManager = _liquidityManager;
    }

    function getHookPermissions() public pure virtual override returns (Hooks.Permissions memory) {
        return Hooks.Permissions({
            beforeInitialize: false,
            afterInitialize: true,
            beforeAddLiquidity: true,
            afterAddLiquidity: false,
            beforeRemoveLiquidity: true,
            afterRemoveLiquidity: false,
            beforeSwap: true,
            afterSwap: true,
            beforeDonate: false,
            afterDonate: false,
            beforeSwapReturnDelta: true,
            afterSwapReturnDelta: true,
            afterAddLiquidityReturnDelta: false,
            afterRemoveLiquidityReturnDelta: false
        });
    }

    function _isPolicyOwner() internal view returns (bool) {
        return msg.sender == policyManager.owner();
    }

    modifier onlyPolicyOwner() {
        if (!_isPolicyOwner()) revert Errors.UnauthorizedCaller(msg.sender);
        _;
    }

    /// @inheritdoc ISpot
    function setReinvestmentPaused(bool paused) external onlyPolicyOwner {
        reinvestmentPaused = paused;
        emit ReinvestmentPausedChanged(paused);
    }

    /// @inheritdoc ISpot
    function depositToFRLM(
        PoolKey calldata key,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient
    ) external payable override onlyPolicyOwner returns (uint256 shares, uint256 amount0, uint256 amount1) {
        // Pass msg.sender as the payer to avoid token transfers through Spot
        (shares, amount0, amount1,,) = liquidityManager.deposit{value: msg.value}(
            key, amount0Desired, amount1Desired, amount0Min, amount1Min, recipient, msg.sender
        );

        return (shares, amount0, amount1);
    }

    /// @inheritdoc ISpot
    function withdrawFromFRLM(
        PoolKey calldata key,
        uint256 sharesToBurn,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient
    ) external override onlyPolicyOwner returns (uint256 amount0, uint256 amount1) {
        // Forward the call with msg.sender as the sharesOwner
        return liquidityManager.withdraw(key, sharesToBurn, amount0Min, amount1Min, recipient, msg.sender);
    }

    // - - - Hook Callback Implementations - - -

    /// @notice called in BaseHook.beforeSwap
    function _beforeSwap(address sender, PoolKey calldata key, SwapParams calldata params, bytes calldata)
        internal
        virtual
        override
        returns (bytes4, BeforeSwapDelta, uint24)
    {
        // First check if a manual fee is set for this pool
        PoolId poolId = key.toId();
        (uint24 manualFee, bool hasManualFee) = policyManager.getManualFee(poolId);

        uint24 dynamicFee;

        if (hasManualFee) {
            // Use the manual fee if set
            dynamicFee = manualFee;
        } else {
            // Otherwise get dynamic fee from fee manager
            (uint256 baseRaw, uint256 surgeRaw) = dynamicFeeManager.getFeeState(poolId);
            uint24 base = uint24(baseRaw);
            uint24 surge = uint24(surgeRaw);
            dynamicFee = base + surge; // ppm (1e-6)
        }

        // Store pre-swap tick for oracle update in afterSwap
        (, int24 preSwapTick,,) = StateLibrary.getSlot0(poolManager, poolId);
        assembly {
            tstore(poolId, dynamicFee)
            tstore(add(poolId, 1), preSwapTick) // use next slot for pre-swap tick
        }

        // Record observation with the pre-swap tick (no capping applied yet)
        try truncGeoOracle.recordObservation(poolId, preSwapTick) {
            // Observation recorded successfully
        } catch Error(string memory reason) {
            emit OracleUpdateFailed(poolId, reason);
        } catch (bytes memory lowLevelData) {
            // Low-level oracle failure
            emit OracleUpdateFailed(poolId, "LLOF");
        }

        // Calculate protocol fee based on policy
        uint256 protocolFeePPM = policyManager.getPoolPOLShare(poolId);

        // Handle exactIn case in beforeSwap
        if (params.amountSpecified < 0 && protocolFeePPM > 0) {
            // exactIn case - we can charge the fee here
            uint256 absAmount = uint256(-params.amountSpecified);
            Currency feeCurrency = params.zeroForOne ? key.currency0 : key.currency1;

            // Calculate hook fee amount
            uint256 swapFeeAmount = FullMath.mulDivRoundingUp(absAmount, dynamicFee, 1e6);
            uint256 hookFeeAmount = FullMath.mulDivRoundingUp(swapFeeAmount, protocolFeePPM, 1e6);

            if (hookFeeAmount > 0) {
                // Mint fee to FRLM
                poolManager.mint(address(liquidityManager), feeCurrency.toId(), hookFeeAmount);

                // Calculate amounts for fee notification
                uint256 fee0 = params.zeroForOne ? hookFeeAmount : 0;
                uint256 fee1 = params.zeroForOne ? 0 : hookFeeAmount;

                if (reinvestmentPaused) {
                    emit HookFee(poolId, sender, uint128(fee0), uint128(fee1));
                } else {
                    emit HookFeeReinvested(poolId, sender, uint128(fee0), uint128(fee1));
                }
                liquidityManager.notifyFee(key, fee0, fee1);

                // Create BeforeSwapDelta to account for the tokens we took
                // We're taking tokens from the input, so return positive delta
                int128 deltaSpecified = int128(int256(hookFeeAmount));
                return (
                    BaseHook.beforeSwap.selector,
                    toBeforeSwapDelta(deltaSpecified, 0),
                    Math.setDynamicFeeOverride(dynamicFee)
                );
            }
        }

        // If we didn't charge a fee, return zero delta
        return (BaseHook.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, Math.setDynamicFeeOverride(dynamicFee));
    }

    /// @notice called in BaseHook.afterSwap
    function _afterSwap(
        address sender,
        PoolKey calldata key,
        SwapParams calldata params,
        BalanceDelta delta,
        bytes calldata
    ) internal virtual override returns (bytes4, int128) {
        PoolId poolId = key.toId();

        // NOTE: we do oracle updates this regardless of manual fee setting

        // Get pre-swap tick from transient storage
        int24 preSwapTick;
        assembly {
            preSwapTick := tload(add(poolId, 1))
        }

        // Get current tick after the swap
        (, int24 currentTick,,) = StateLibrary.getSlot0(poolManager, poolId);

        // Check if tick movement exceeded the cap based on perSwap vs perBlock setting
        bool tickWasCapped;
        bool perSwapMode = policyManager.getPerSwapMode(poolId);
        uint24 maxTicks = truncGeoOracle.maxTicksPerBlock(poolId);
        
        if (perSwapMode) {
            // perSwap mode: compare tick movement within this single swap
            int24 tickMovement = currentTick - preSwapTick;
            tickWasCapped = TruncatedOracle.abs(tickMovement) > maxTicks;
        } else {
            // perBlock mode: compare total tick movement within the current block
            // Get the block initial tick from the recorded observation
            int24 blockInitialTick = preSwapTick; // Default to pre-swap tick
            
            // Access the observation directly from the public mapping
            // Get the current index from the oracle state
            (uint16 index, uint16 cardinality, uint16 cardinalityNext) = truncGeoOracle.states(poolId);
            if (cardinality > 0) {
                // Access the observation at the current index
                (, int24 prevTick,,,) = truncGeoOracle.observations(poolId, index);
                blockInitialTick = prevTick;
            }
            
            // Compare total block movement
            int24 totalBlockMovement = currentTick - blockInitialTick;
            tickWasCapped = TruncatedOracle.abs(totalBlockMovement) > maxTicks;

            if (tickWasCapped) {
                if (lastCapEventBlock[poolId] == block.number) {
                    tickWasCapped = false;
                } else {
                    lastCapEventBlock[poolId] = block.number;
                }
            }
        }

        // Update cap frequency in the oracle

        if(!truncGeoOracle.autoTunePaused(poolId)) {
            try truncGeoOracle.updateCapFrequency(poolId, tickWasCapped) {
                // Cap frequency updated successfully
            } catch Error(string memory reason) {
                emit OracleUpdateFailed(poolId, reason);
            } catch (bytes memory lowLevelData) {
                // Low-level oracle failure
                emit OracleUpdateFailed(poolId, "LLOF");
            }
        }
        // Notify Dynamic Fee Manager about the oracle update (with error handling)
        try dynamicFeeManager.notifyOracleUpdate(poolId, tickWasCapped) {
            // Oracle update notification succeeded
        } catch Error(string memory reason) {
            emit FeeManagerNotificationFailed(poolId, reason);
        } catch (bytes memory lowLevelData) {
            // Low-level fee manager failure
            emit FeeManagerNotificationFailed(poolId, "LLFM");
        }

        // Handle exactOut case in afterSwap (params.amountSpecified > 0)
        if (params.amountSpecified > 0) {
            // Get protocol fee percentage
            uint256 protocolFeePPM = policyManager.getPoolPOLShare(poolId);

            if (protocolFeePPM > 0) {
                // For exactOut, the input token is the unspecified token
                bool zeroIsInput = params.zeroForOne;
                Currency feeCurrency = zeroIsInput ? key.currency0 : key.currency1;

                // Get the actual input amount (should be positive) from the delta
                int128 inputAmount = zeroIsInput ? delta.amount0() : delta.amount1();
                if (inputAmount > 0) revert Errors.InvalidSwapDelta(); // NOTE: invariant check

                // Get the dynamic fee(could be actual base+surge or manual)
                uint24 dynamicFee;
                assembly {
                    dynamicFee := tload(poolId)
                }

                // Calculate hook fee
                uint256 absInputAmount = uint256(uint128(-inputAmount));
                uint256 swapFeeAmount = FullMath.mulDivRoundingUp(absInputAmount, dynamicFee, 1e6);
                uint256 hookFeeAmount = FullMath.mulDivRoundingUp(swapFeeAmount, protocolFeePPM, 1e6);

                if (hookFeeAmount > 0) {
                    // Mint fee credit to FRLM
                    poolManager.mint(address(liquidityManager), feeCurrency.toId(), hookFeeAmount);

                    // Calculate fee amounts for notification
                    uint256 fee0 = zeroIsInput ? hookFeeAmount : 0;
                    uint256 fee1 = zeroIsInput ? 0 : hookFeeAmount;

                    // Emit appropriate event
                    if (reinvestmentPaused) {
                        emit HookFee(poolId, sender, uint128(fee0), uint128(fee1));
                    } else {
                        emit HookFeeReinvested(poolId, sender, uint128(fee0), uint128(fee1));
                    }
                    liquidityManager.notifyFee(key, fee0, fee1);

                    // Try to reinvest if not paused (with error handling)
                    _tryReinvest(key);

                    // Return the fee amount we took
                    return (BaseHook.afterSwap.selector, int128(int256(hookFeeAmount)));
                }
            }
        }

        // Try to reinvest if not paused (with error handling)
        _tryReinvest(key);

        return (BaseHook.afterSwap.selector, 0);
    }

    /// @notice called in BaseHook.afterInitialize
    function _afterInitialize(address, PoolKey calldata key, uint160, int24 tick) internal virtual override returns (bytes4) {
        PoolId poolId = key.toId();

        if (!LPFeeLibrary.isDynamicFee(key.fee)) {
            // Only allow dynamic fee pools to be created
            revert Errors.InvalidFee();
        }


        policyManager.initialize(key);

        truncGeoOracle.initializeOracleForPool(key, tick);
        dynamicFeeManager.initialize(poolId, tick);

        return BaseHook.afterInitialize.selector;
    }

    /// @notice called in BaseHook.beforeAddLiquidity
    /// @dev Records oracle observation to ensure accuracy in secondsPerLiquidityCumulativeX128 accumulator
    function _beforeAddLiquidity(
        address,
        PoolKey calldata key,
        ModifyLiquidityParams calldata,
        bytes calldata
    ) internal virtual override returns (bytes4) {
        PoolId poolId = key.toId();

        // Get current tick for oracle update
        (, int24 currentTick,,) = StateLibrary.getSlot0(poolManager, poolId);

        // Record observation to ensure accurate secondsPerLiquidityCumulativeX128
        try truncGeoOracle.recordObservation(poolId, currentTick) {
            // Observation recorded successfully
        } catch Error(string memory reason) {
            emit OracleUpdateFailed(poolId, reason);
        } catch (bytes memory lowLevelData) {
            // Low-level oracle failure
            emit OracleUpdateFailed(poolId, "LLOF");
        }

        return BaseHook.beforeAddLiquidity.selector;
    }

    /// @notice called in BaseHook.beforeRemoveLiquidity
    /// @dev Records oracle observation to ensure accuracy in secondsPerLiquidityCumulativeX128 accumulator
    function _beforeRemoveLiquidity(
        address,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        bytes calldata
    ) internal virtual override returns (bytes4) {

        // Only record observation if liquidityDelta is not 0
        if (params.liquidityDelta != 0) {

            PoolId poolId = key.toId();

            // Get current tick for oracle update
            (, int24 currentTick,,) = StateLibrary.getSlot0(poolManager, poolId);

            // Record observation to ensure accurate secondsPerLiquidityCumulativeX128
            try truncGeoOracle.recordObservation(poolId, currentTick) {
                // Observation recorded successfully
            } catch Error(string memory reason) {
                emit OracleUpdateFailed(poolId, reason);
            } catch (bytes memory lowLevelData) {
                // Low-level oracle failure
                emit OracleUpdateFailed(poolId, "LLOF");
            }
            }
        return BaseHook.beforeRemoveLiquidity.selector;
    }

    // - - - internal helpers - - -

    /// @notice Private function to handle reinvestment with error handling
    /// @param key The pool key for reinvestment
    /// @dev Uses try-catch to prevent reinvestment failures from blocking swaps
    function _tryReinvest(PoolKey calldata key) internal virtual {
        if (!reinvestmentPaused) {
            try liquidityManager.reinvest(key) returns (bool success) {
                // Reinvestment attempted, success status is handled by the reinvest function
                // No additional action needed here
            } catch Error(string memory reason) {
                // Log the error but don't revert the swap
                emit ReinvestmentFailed(key.toId(), reason);
            } catch (bytes memory lowLevelData) {
                // Handle low-level failures (e.g., out of gas, invalid data)
                // Low-level reinvestment failure
                emit ReinvestmentFailed(key.toId(), "LLRF");
            }
        }
    }
}

// ============================================================
// FILE: src/TruncGeoOracleMulti.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

// - - - external deps - - -

import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ReentrancyGuard} from "solmate/src/utils/ReentrancyGuard.sol";
import {Owned} from "solmate/src/auth/Owned.sol";
import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";
import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {StateLibrary} from "v4-core/src/libraries/StateLibrary.sol";

// - - - local deps - - -

import {Errors} from "./errors/Errors.sol";
import {TruncatedOracle} from "./libraries/TruncatedOracle.sol";
import {PolicyValidator} from "./libraries/PolicyValidator.sol";
import {IPoolPolicyManager} from "./interfaces/IPoolPolicyManager.sol";

contract TruncGeoOracleMulti is ReentrancyGuard, Owned {
    using TruncatedOracle for TruncatedOracle.Observation[65535];
    using PoolIdLibrary for PoolKey;
    using SafeCast for int256;

    /* -------------------------------------------------------------------------- */
    /*                               Library constants                            */
    /* -------------------------------------------------------------------------- */

    /* parts-per-million constant */
    uint32 internal constant PPM = 1_000_000;


    /* pre-computed ONE_DAY × PPM to avoid a mul on every cap event            *
     * 86_400 * 1_000_000  ==  86 400 000 000  <  2¹²⁷ – safe for uint128      */
    uint64 internal constant ONE_DAY_PPM = 86_400 * 1_000_000;
    /* one add (ONE_DAY_PPM) short of uint64::max */
    uint64 internal constant CAP_FREQ_MAX = type(uint64).max - ONE_DAY_PPM + 1;
    /* maximum cardinality for oracle observations */
    uint16 internal constant MAX_CARDINALITY_TARGET = 1024;

    // Custom errors
    error OnlyHook();
    error OracleNotInitialized(PoolId poolId);

    event MaxTicksPerBlockUpdated(
        PoolId indexed poolId, uint24 oldMaxTicksPerBlock, uint24 newMaxTicksPerBlock, uint32 blockTimestamp
    );
    event PolicyCacheRefreshed(PoolId indexed poolId);
    /// emitted once per pool when the oracle is first enabled
    event OracleConfigured(PoolId indexed poolId, address indexed hook, address indexed owner, uint24 initialCap);

    /* ───────────────────── Emergency pause ────────────────────── */
    /// @notice Emitted when the governor toggles the auto-tune circuit-breaker.
    event AutoTunePaused(PoolId indexed poolId, bool paused, uint32 timestamp);

    /// @dev circuit-breaker flag per pool (default: false = auto-tune active)
    mapping(PoolId => bool) public autoTunePaused;

    /* ────────────────────── LIB-LEVEL HELPERS ─────────────────────── */

    /// @dev Shorthand wrapper that forwards storage-struct fields to the library
    ///      (keeps calling-site tidy without another memory copy).
    function _validatePolicy(CachedPolicy storage pc) internal view {
        PolicyValidator.validate(pc.minCap, pc.maxCap, pc.stepPpm, pc.budgetPpm, pc.decayWindow, pc.updateInterval);
    }

    /* ─────────────────── IMMUTABLE STATE ────────────────────── */
    IPoolManager public immutable poolManager;
    IPoolPolicyManager public immutable policy;
    // Hook address (mutable – allows test harness to wire cyclic deps).
    address public immutable hook;

    /* ───────────────────── MUTABLE STATE ────────────────────── */
    mapping(PoolId => uint24) public maxTicksPerBlock; // adaptive cap
    /* ppm-seconds never exceeds 8.64 e10 per event or 7.45 e15 per year  →
       well inside uint64.  Using uint64 halves slot gas / SLOAD cost.   */
    mapping(PoolId => uint64) private capFreq; // ***saturating*** counter
    mapping(PoolId => uint48) private lastFreqTs; // last decay update

    struct ObservationState {
        uint16 index;
        /**
         * @notice total number of populated observations.
         * Includes the bootstrap slot written by `initializeOracleForPool`,
         * so after N user pushes the value is **N + 1**.
         */
        uint16 cardinality;
        uint16 cardinalityNext;
    }

    /* ─────────────── cached policy parameters ─────────────── */
    struct CachedPolicy {
        uint24 minCap;
        uint24 maxCap;
        uint32 stepPpm;
        uint32 budgetPpm;
        uint32 decayWindow;
        uint32 updateInterval;
    }

    mapping(PoolId => CachedPolicy) internal _policy;

    /* ──────────────────  OBSERVATION RING BUFFER  ──────────────────
       Each pool owns a single observation array (65535 slots available, capped at 1024).
       Uses the official TruncatedOracle library for core functionality. */
    /// pool ⇒ observation array (lazily created)
    mapping(PoolId => TruncatedOracle.Observation[65535]) public observations;

    mapping(PoolId => ObservationState) public states;

    // Store last max tick update time for rate limiting governance changes
    mapping(PoolId => uint32) private _lastMaxTickUpdate;

    /* ────────────────────── CONSTRUCTOR ─────────────────────── */
    /// -----------------------------------------------------------------------
    /// @notice Deploy the oracle and wire the immutable dependencies.
    /// @param _poolManager Canonical v4 `PoolManager` contract
    /// @param _policyContract Governance-controlled policy contract
    /// @param _hook Hook address (immutable)
    /// @param _owner Governor address that can refresh the cached policy
    /// -----------------------------------------------------------------------
    constructor(IPoolManager _poolManager, IPoolPolicyManager _policyContract, address _hook, address _owner) 
        Owned(_owner)
    {
        if (address(_poolManager) == address(0)) revert Errors.ZeroAddress();
        if (address(_policyContract) == address(0)) revert Errors.ZeroAddress();
        if (_owner == address(0)) revert Errors.ZeroAddress();

        poolManager = _poolManager;
        policy = _policyContract;
        hook = _hook;
    }

    /* ────────────────────── MODIFIERS ─────────────────────── */
    
    /// @notice Modifier to restrict function access to only the hook address
    modifier onlyHook() {
        if (msg.sender != hook) revert OnlyHook();
        _;
    }

    /**
     * @notice Refreshes the cached policy parameters for a pool.
     * @dev Can only be called by the owner (governance). Re-fetches and validates
     *      all policy parameters, ensuring they remain within acceptable ranges.
     * @param poolId The PoolId of the pool.
     */
    /// -----------------------------------------------------------------------
    /// @notice Sync the in-storage policy cache with the current policy
    ///         contract values and clamp the existing `maxTicksPerBlock`
    ///         into the new `[minCap, maxCap]` band.
    /// @dev    Callable only by `owner`. Emits `PolicyCacheRefreshed`.
    /// -----------------------------------------------------------------------
    function refreshPolicyCache(PoolId poolId) external onlyOwner {
        CachedPolicy storage pc = _policy[poolId];
        pc.stepPpm = policy.getBaseFeeStepPpm(poolId);
        pc.minCap = policy.getMinCap(poolId);
        pc.maxCap = policy.getMaxCap(poolId);
        pc.budgetPpm = policy.getDailyBudgetPpm(poolId);
        pc.decayWindow = policy.getCapBudgetDecayWindow(poolId);
        pc.updateInterval = policy.getBaseFeeUpdateIntervalSeconds(poolId);

        _validatePolicy(pc);

        // Clamp existing maxTicksPerBlock to new bounds
        uint24 currentCap = maxTicksPerBlock[poolId];
        maxTicksPerBlock[poolId] = currentCap < pc.minCap ? pc.minCap : 
                                   currentCap > pc.maxCap ? pc.maxCap : currentCap;

        // Seed the cap frequency counter to 99% of target to seed auto-tuning
        capFreq[poolId] = uint64(uint64(pc.budgetPpm) * uint64(pc.decayWindow));

        emit PolicyCacheRefreshed(poolId);
    }

    /**
     * @notice Pause or un-pause the adaptive cap algorithm for a pool.
     * @param poolId       Target PoolId.
     * @param paused    True to disable auto-tune, false to resume.
     */
    function setAutoTunePaused(PoolId poolId, bool paused) external onlyOwner {
        autoTunePaused[poolId] = paused;
        emit AutoTunePaused(poolId, paused, uint32(block.timestamp));
    }

    /// -----------------------------------------------------------------------
    /// @notice Enable oracle for a pool and seed the observation history
    /// @dev    Callable only by the hook. Emits `OracleConfigured`.
    /// -----------------------------------------------------------------------
    function initializeOracleForPool(PoolKey calldata key, int24 initialTick) external onlyHook {
        PoolId poolId = key.toId();

        /* ------------------------------------------------------------------ *
         * Pull policy parameters once and *sanity-check* them               *
         * ------------------------------------------------------------------ */
        uint24 defaultCap = SafeCast.toUint24(policy.getDefaultMaxTicksPerBlock(poolId));
        CachedPolicy storage pc = _policy[poolId];
        pc.stepPpm = policy.getBaseFeeStepPpm(poolId);
        pc.minCap = policy.getMinCap(poolId);
        pc.maxCap = policy.getMaxCap(poolId);
        pc.budgetPpm = policy.getDailyBudgetPpm(poolId);
        pc.decayWindow = policy.getCapBudgetDecayWindow(poolId);
        pc.updateInterval = policy.getBaseFeeUpdateIntervalSeconds(poolId);

        _validatePolicy(pc);

        // ---------- external read last (reduces griefing surface) ----------
        (states[poolId].cardinality, states[poolId].cardinalityNext) = observations[poolId].initialize(uint32(block.timestamp), initialTick);

        // Clamp defaultCap inside the validated range
        if (defaultCap < pc.minCap) defaultCap = pc.minCap;
        if (defaultCap > pc.maxCap) defaultCap = pc.maxCap;
        maxTicksPerBlock[poolId] = defaultCap;

        // Seed the cap frequency counter to 99% of target to seed auto-tuning
        capFreq[poolId] = uint64(uint64(pc.budgetPpm) * uint64(pc.decayWindow));
        lastFreqTs[poolId] = uint48(block.timestamp);

        // --- audit-aid event ----------------------------------------------------
        emit OracleConfigured(poolId, hook, owner, defaultCap);
    }

    /**
     * @notice Records a new observation for the given pool
     * @dev Called by the hook during swaps to update oracle data
     * @param poolId The pool identifier
     * @param tickToRecord The tick to record in the observation
     */
    function recordObservation(PoolId poolId, int24 tickToRecord) external nonReentrant onlyHook {

        ObservationState storage state = states[poolId];
        TruncatedOracle.Observation[65535] storage obs = observations[poolId];
        uint128 liquidity = StateLibrary.getLiquidity(poolManager, poolId);

        // Auto-grow cardinality during swaps until reaching MAX_CARDINALITY_TARGET slots
        if (state.cardinalityNext < MAX_CARDINALITY_TARGET) {
            uint16 targetCardinality = uint16(Math.min(state.cardinalityNext + 1, MAX_CARDINALITY_TARGET));
            state.cardinalityNext = obs.grow(state.cardinalityNext, targetCardinality);
        }

        // Get maxTicks for capping
        uint24 maxTicks = maxTicksPerBlock[poolId];

        (uint16 newIndex, uint16 newCardinality) = obs.write(
            state.index,
            uint32(block.timestamp),
            tickToRecord,
            liquidity,
            state.cardinality,
            state.cardinalityNext,
            maxTicks // Apply tick capping to prevent oracle manipulation
        );

        // Update state
        state.index = newIndex;
        state.cardinality = newCardinality;
    }

    /* ─────────────────── VIEW FUNCTIONS ──────────────────────── */

    /**
     * @notice Checks if the oracle is enabled for a given pool.
     * @param poolId The PoolId to check.
     * @return True if the oracle is enabled, false otherwise.
     */
    function isOracleEnabled(PoolId poolId) external view returns (bool) {
        return states[poolId].cardinality > 0;
    }

    /**
     * @notice Gets the latest observation for a pool.
     * @param poolId The PoolId of the pool.
     * @return tick The tick from the latest observation.
     * @return blockTimestamp The timestamp of the latest observation.
     */
    /// @notice Return the most recent observation stored for `poolId`.
    /// @dev    - Gas optimisation -
    ///         We *do not* copy the whole `Observation` struct to memory.
    ///         Instead we keep a **storage** reference and read only the
    ///         timestamp field, then fetch the live tick directly from
    ///         the pool's `slot0`, avoiding any extra per-observation state.
    function getLatestObservation(PoolId poolId) external view returns (int24 tick, uint32 blockTimestamp) {
        if (states[poolId].cardinality == 0) {
            revert OracleNotInitialized(poolId);
        }

        ObservationState storage state = states[poolId];
        // ---- inline fast-path (no struct copy) ----------------------------
        TruncatedOracle.Observation storage o = observations[poolId][state.index];
        (, int24 currentTick,,) = StateLibrary.getSlot0(poolManager, poolId); // fetch current tick
        return (currentTick, o.blockTimestamp);
    }

    /// -----------------------------------------------------------------------
    /// 👀  External helpers (kept tiny – unit tests only)
    /// -----------------------------------------------------------------------
    /// @notice View helper mirroring the public mapping but typed for tests.
    function getMaxTicksPerBlock(PoolId poolId) external view returns (uint24) {
        return maxTicksPerBlock[poolId];
    }

    /// -----------------------------------------------------------------------
    /// @notice Returns cumulative tick and seconds-per-liquidity for each `secondsAgo`.
    /// @dev Typed to mirror Uniswap V3 so off-the-shelf TWAP helpers "just work".
    /// -----------------------------------------------------------------------
    function observe(PoolKey calldata key, uint32[] memory secondsAgos)
        public
        view
        returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s)
    {
        PoolId poolId = key.toId();

        if (states[poolId].cardinality == 0) {
            revert OracleNotInitialized(poolId);
        }

        ObservationState storage state = states[poolId];
        uint32 time = uint32(block.timestamp);
        uint128 liquidity = StateLibrary.getLiquidity(poolManager, poolId);
        (, int24 tick,,) = StateLibrary.getSlot0(poolManager, poolId);

        return observations[poolId].observe(time, secondsAgos, tick, state.index, liquidity, state.cardinality);
    }

    /// -----------------------------------------------------------------------
    /// @notice Returns the arithmetic mean tick, weighted by time.
    /// @dev    Reverts if `secondsAgo` is 0 or if the oracle is not initialized.
    /// -----------------------------------------------------------------------
    function consult(PoolKey calldata key, uint32 secondsAgo)
        public
        view
        returns (int24 arithmeticMeanTick, uint128 harmonicMeanLiquidity)
    {
        require(secondsAgo != 0, "BP");

        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = secondsAgo;
        secondsAgos[1] = 0;

        (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s) =
            observe(key, secondsAgos);

        int56 tickCumulativesDelta = tickCumulatives[1] - tickCumulatives[0];
        uint160 secondsPerLiquidityCumulativesDelta =
            secondsPerLiquidityCumulativeX128s[1] - secondsPerLiquidityCumulativeX128s[0];

        int56 secondsAgoI56 = int56(uint56(secondsAgo));

        arithmeticMeanTick = int24(tickCumulativesDelta / secondsAgoI56);
        // Always round to negative infinity
        if (tickCumulativesDelta < 0 && (tickCumulativesDelta % secondsAgoI56 != 0)) arithmeticMeanTick--;

        // We are multiplying here instead of shifting to ensure that harmonicMeanLiquidity doesn't overflow uint128
        uint192 secondsAgoX160 = uint192(secondsAgo) * type(uint160).max;
        harmonicMeanLiquidity = uint128(secondsAgoX160 / (uint192(secondsPerLiquidityCumulativesDelta) << 32));
    }

    /**
     * @notice Increases the cardinality of the oracle observation array
     * @param key The pool key.
     * @param cardinalityNext The new cardinality to grow to.
     * @return cardinalityNextOld The previous cardinality.
     * @return cardinalityNextNew The new cardinality.
     */
    function increaseCardinalityNext(PoolKey calldata key, uint16 cardinalityNext)
        external
        returns (uint16 cardinalityNextOld, uint16 cardinalityNextNew)
    {
        PoolId poolId = key.toId();
        ObservationState storage state = states[poolId];

        cardinalityNextOld = state.cardinalityNext;
        cardinalityNextNew = observations[poolId].grow(state.cardinalityNext, cardinalityNext);
        state.cardinalityNext = cardinalityNextNew;
    }




    /* ─────────────────── INTERNAL FUNCTIONS ────────────────────── */

    /**
     * @notice Updates the CAP frequency counter and potentially triggers auto-tuning.
     * @dev Decays the frequency counter based on time elapsed since the last update.
     *      Increments the counter if a CAP occurred.
     *      Triggers auto-tuning if the frequency exceeds the budget or is too low.
     * @param poolId The PoolId of the pool.
     * @param capOccurred True if a CAP event occurred in the current block.
     */
    function updateCapFrequency(PoolId poolId, bool capOccurred) external onlyHook {
        uint32 lastTs = uint32(lastFreqTs[poolId]);
        uint32 nowTs = uint32(block.timestamp);
        uint32 timeElapsed = nowTs - lastTs;

        /* FAST-PATH ────────────────────────────────────────────────────────
           No tick was capped *and* we're still in the same second ⇒ every
           state var is already correct, so we avoid **all** SSTOREs.      */
        if (!capOccurred && timeElapsed == 0) return;

        lastFreqTs[poolId] = uint48(nowTs); // single SSTORE only when needed

        // Load current frequency counter once. The earlier fast-path has already
        // returned when `timeElapsed == 0 && !capOccurred`, so the additional
        // bail-out previously here was unreachable. Removing it saves ~200 gas
        // on the hot path while preserving identical behaviour.
        uint64 currentFreq = capFreq[poolId];

        // --------------------------------------------------------------------- //
        //  1️⃣  Add this block's CAP contribution *first* and saturate.         //
        //      Doing so before decay guarantees a CAP can never be "erased"     //
        //      by an immediate decay step and lets the fuzz-test reach 2⁶⁴-1.   //
        // --------------------------------------------------------------------- //
        if (capOccurred) {
            unchecked {
                currentFreq += uint64(ONE_DAY_PPM);
            }
            if (currentFreq >= CAP_FREQ_MAX || currentFreq < ONE_DAY_PPM) {
                currentFreq = CAP_FREQ_MAX; // clamp one-step-early
            }
        }

        /* -------- cache policy once – each field is an external SLOAD -------- */
        CachedPolicy storage pc = _policy[poolId]; // 🔹 single SLOAD kept
        uint32 budgetPpm = pc.budgetPpm;
        uint32 decayWindow = pc.decayWindow;
        uint32 updateInterval = pc.updateInterval;

        // 2️⃣  Apply linear decay *only when no CAP in this block*.
        if (!capOccurred && timeElapsed > 0 && currentFreq > 0) {
            // decay factor = (window - elapsed) / window = 1 - elapsed / window
            // We use ppm to avoid floating point: (1e6 - elapsed * 1e6 / window)
            if (timeElapsed >= decayWindow) {
                currentFreq = 0; // Fully decayed
            } else {
                uint64 decayFactorPpm = PPM - uint64(timeElapsed) * PPM / decayWindow;
                /* --------------------------------------------------------- *
                 *  Multiply in 128-bit space to avoid a 2⁶⁴ overflow:      *
                 *  currentFreq (≤ 2⁶⁴-1) × decayFactorPpm (≤ 1e6)          *
                 *  can exceed 2⁶⁴ during the intermediate product.         *
                 * --------------------------------------------------------- */
                uint128 decayed = uint128(currentFreq) * decayFactorPpm / PPM;
                // ----- overflow-safe down-cast (≤ 5 LOC) -------------------------
                if (decayed > type(uint64).max) {
                    currentFreq = CAP_FREQ_MAX;
                } else {
                    uint64 d64 = uint64(decayed);
                    currentFreq = d64 > CAP_FREQ_MAX ? CAP_FREQ_MAX : d64;
                }
            }
        }

        capFreq[poolId] = currentFreq; // single SSTORE

        // Only auto-tune if enough time has passed since last governance update
        // and auto-tune is not paused for this pool
        if (block.timestamp >= _lastMaxTickUpdate[poolId] + updateInterval) {
            // Target frequency = budgetPpm × decayWindow (computed only when needed)
            uint64 targetFreq = uint64(budgetPpm) * uint64(decayWindow);
            if (currentFreq > targetFreq) {
                // Too frequent caps -> Increase maxTicksPerBlock (loosen cap)
                _autoTuneMaxTicks(poolId, pc, true); // re-use cached struct
            } else {
                // Caps too rare -> Decrease maxTicksPerBlock (tighten cap)
                _autoTuneMaxTicks(poolId, pc, false); // re-use cached struct
            }
        }
    }

    /**
     * @notice Auto-tunes the maximum ticks per block based on cap frequency
     * @param poolId The PoolId of the pool
     * @param pc The cached policy parameters
     * @param increase True if the cap should be increased, false if decreased
     */
    function _autoTuneMaxTicks(PoolId poolId, CachedPolicy storage pc, bool increase) internal {
        uint24 currentCap = maxTicksPerBlock[poolId];

        /* ------------------------------------------------------------------ *
         * ⚠️  Hot-path gas-saving:                                           *
         * The three invariants below                                         *
         *   – `stepPpm   != 0`                                               *
         *   – `minCap    != 0`                                               *
         *   – `maxCap    >= minCap`                                          *
         * are **already checked once** in `PolicyValidator.validate()`       *
         * (called from `initializeOracleForPool` and `refreshPolicyCache`).      *
         * After that, the cached `pc` struct can only change through the     *
         * same validated path, so repeating the `require`s here costs        *
         * ~500 gas per swap without adding security.                         *
         * ------------------------------------------------------------------ */

        uint32 stepPpm = pc.stepPpm; // safe: validated on write
        uint24 minCap = pc.minCap; // safe: validated on write
        uint24 maxCap = pc.maxCap; // safe: validated on write

        uint24 change = uint24(uint256(currentCap) * stepPpm / PPM);
        if (change == 0) change = 1; // Ensure minimum change of 1 tick

        uint24 newCap;
        if (increase) {
            newCap = currentCap + change > maxCap ? maxCap : currentCap + change;
        } else {
            newCap = currentCap > change + minCap ? currentCap - change : minCap;
        }
        
        if (newCap != currentCap) {
            maxTicksPerBlock[poolId] = newCap;
            _lastMaxTickUpdate[poolId] = uint32(block.timestamp);
            emit MaxTicksPerBlockUpdated(poolId, currentCap, newCap, uint32(block.timestamp));
        }
        
    }
}
