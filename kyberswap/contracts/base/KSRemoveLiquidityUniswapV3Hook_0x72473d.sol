// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC20.sol)

pragma solidity >=0.4.16;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC721.sol)

pragma solidity >=0.6.2;

import {IERC721} from "../token/ERC721/IERC721.sol";

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[ERC-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC-20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also applies here.
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
     *
     * CAUTION: See Security Considerations above.
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

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/IERC20.sol)

pragma solidity >=0.4.16;

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
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC721/IERC721.sol)

pragma solidity >=0.6.2;

import {IERC165} from "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC-721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
     *   a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC-721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or
     *   {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
     *   a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC-721
     * or else they may be permanently lost. Usage of {safeTransferFrom} prevents loss, though the caller must
     * understand this adds an external call which potentially creates a reentrancy vulnerability.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the address zero.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (utils/introspection/IERC165.sol)

pragma solidity >=0.4.16;

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
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/math/Math.sol)

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
     * @dev Branchless ternary evaluation for `condition ? a : b`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `condition ? a : b`) to only compute
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

    /**
     * @dev Counts the number of leading zero bits in a uint256.
     */
    function clz(uint256 x) internal pure returns (uint256) {
        return ternary(x == 0, 256, 255 - log2(x));
    }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol
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
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/utils/Panic.sol
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
// FILE: lib/ks-common-sc/src/interfaces/IAllowanceTransfer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title AllowanceTransfer
/// @notice Handles ERC20 token permissions through signature based allowance setting and ERC20 token transfers by checking allowed amounts
/// @dev Requires user's token approval on the Permit2 contract
interface IAllowanceTransfer {
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
    address indexed owner,
    address indexed token,
    address indexed spender,
    uint48 newNonce,
    uint48 oldNonce
  );

  /// @notice Emits an event when the owner successfully sets permissions on a token for the spender.
  event Approval(
    address indexed owner,
    address indexed token,
    address indexed spender,
    uint160 amount,
    uint48 expiration
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
  function permit(address owner, PermitSingle memory permitSingle, bytes calldata signature)
    external;

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
// FILE: lib/ks-common-sc/src/interfaces/IDaiLikePermit.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for DAI-style permits
interface IDaiLikePermit {
  /// @notice Permit a spender to a given amount of the holder's token via the holder's EIP-712 signature
  /// @dev May fail if the holder's nonce was invalidated in-flight by invalidateNonce
  /// @param holder The holder of the tokens being approved
  /// @param spender The address permissioned on the allowed tokens
  /// @param nonce The nonce of the holder
  /// @param expiry The expiry of the permit
  /// @param allowed Whether the permit is allowed
  /// @param v The v component of the signature
  /// @param r The r component of the signature
  /// @param s The s component of the signature
  function permit(
    address holder,
    address spender,
    uint256 nonce,
    uint256 expiry,
    bool allowed,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) external;

  function PERMIT_TYPEHASH() external pure returns (bytes32);
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IERC721Permit_v3.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

/// @title ERC721 with permit
/// @notice Extension to ERC721 that includes a permit function for signature based approvals
interface IERC721Permit_v3 {
  /// @notice The permit typehash used in the permit signature
  /// @return The typehash for the permit
  function PERMIT_TYPEHASH() external pure returns (bytes32);

  /// @notice The domain separator used in the permit signature
  /// @return The domain seperator used in encoding of permit signature
  function DOMAIN_SEPARATOR() external view returns (bytes32);

  /// @notice Approve of a specific token ID for spending by spender via signature
  /// @param spender The account that is being approved
  /// @param tokenId The ID of the token that is being approved for spending
  /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
  /// @param v Must produce valid secp256k1 signature from the holder along with `r` and `s`
  /// @param r Must produce valid secp256k1 signature from the holder along with `v` and `s`
  /// @param s Must produce valid secp256k1 signature from the holder along with `r` and `v`
  function permit(
    address spender,
    uint256 tokenId,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) external payable;
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IERC721Permit_v4.sol
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
  function permit(
    address spender,
    uint256 tokenId,
    uint256 deadline,
    uint256 nonce,
    bytes calldata signature
  ) external payable;

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
// FILE: lib/ks-common-sc/src/interfaces/IKSGenericForwarder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IKSGenericForwarder {
  function forward(address target, bytes calldata data) external payable returns (bytes memory);

  function forwardValue(address target, bytes calldata data, uint256 value)
    external
    payable
    returns (bytes memory);

  function forwardBatch(address[] calldata targets, bytes[] calldata data)
    external
    returns (bytes[] memory);

  function forwardBatchValue(
    address[] calldata targets,
    bytes[] calldata data,
    uint256[] calldata value
  ) external payable returns (bytes[] memory);
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/calldata/CalldataDecoder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for abi decoding in calldata
library CalldataDecoder {
  error SliceOutOfBounds();

  /// @notice mask used for offsets and lengths to ensure no overflow
  /// @dev no sane abi encoding will pass in an offset or length greater than type(uint32).max
  ///      (note that this does deviate from standard solidity behavior and offsets/lengths will
  ///      be interpreted as mod type(uint32).max which will only impact malicious/buggy callers)
  uint256 internal constant OFFSET_OR_LENGTH_MASK = 0xffffffff;
  uint256 internal constant OFFSET_OR_LENGTH_MASK_AND_WORD_ALIGN = 0xffffffe0;

  /// @notice equivalent to SliceOutOfBounds.selector, stored in least-significant bits
  uint256 internal constant SLICE_ERROR_SELECTOR = 0x3b99b53d;

  function decodeAddress(bytes calldata _bytes) internal pure returns (address value) {
    assembly ('memory-safe') {
      value := calldataload(_bytes.offset)
    }
  }

  function decodeAddress(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (address value)
  {
    assembly ('memory-safe') {
      value := calldataload(add(_bytes.offset, shl(5, _arg)))
    }
  }

  function decodeUint256(bytes calldata _bytes) internal pure returns (uint256 value) {
    assembly ('memory-safe') {
      value := calldataload(_bytes.offset)
    }
  }

  function decodeUint256(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (uint256 value)
  {
    assembly ('memory-safe') {
      value := calldataload(add(_bytes.offset, shl(5, _arg)))
    }
  }

  function decodeBool(bytes calldata _bytes) internal pure returns (bool value) {
    assembly ('memory-safe') {
      value := calldataload(_bytes.offset)
    }
  }

  function decodeBool(bytes calldata _bytes, uint256 _arg) internal pure returns (bool value) {
    assembly ('memory-safe') {
      value := calldataload(add(_bytes.offset, shl(5, _arg)))
    }
  }

  function decodeBytes32(bytes calldata _bytes) internal pure returns (bytes32 value) {
    assembly ('memory-safe') {
      value := calldataload(_bytes.offset)
    }
  }

  function decodeBytes32(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (bytes32 value)
  {
    assembly ('memory-safe') {
      value := calldataload(add(_bytes.offset, shl(5, _arg)))
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as a dynamic array
  /// @dev The decoding of `length` and `offset` is universal,
  /// whereas the type declaration of `res` instructs the compiler how to read it.
  /// @param _bytes The input bytes string to slice
  /// @param _arg The index of the argument to extract
  /// @return length Length of the array
  /// @return offset Pointer to the data part of the array
  function decodeLengthOffset(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (uint256 length, uint256 offset)
  {
    assembly ('memory-safe') {
      // The offset of the `_arg`-th element is `32 * arg`, which stores the offset of the length pointer.
      // shl(5, x) is equivalent to mul(32, x)
      let lengthPtr := add(_bytes.offset, calldataload(add(_bytes.offset, shl(5, _arg))))
      length := calldataload(lengthPtr)
      offset := add(lengthPtr, 0x20)

      // if the provided bytes string isnt as long as the encoding says, revert
      if lt(add(_bytes.length, _bytes.offset), add(length, offset)) {
        mstore(0, SLICE_ERROR_SELECTOR)
        revert(0x1c, 4)
      }
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `bytes`
  /// @param _bytes The input bytes string to extract a bytes string from
  /// @param _arg The index of the argument to extract
  function decodeBytes(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (bytes calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ('memory-safe') {
      res.length := length
      res.offset := offset
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `uint256[]`
  /// @param _bytes The input bytes string to extract a uint256 array from
  /// @param _arg The index of the argument to extract
  function decodeUint256Array(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (uint256[] calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ('memory-safe') {
      res.length := length
      res.offset := offset
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `address[]`
  /// @param _bytes The input bytes string to extract an address array from
  /// @param _arg The index of the argument to extract
  function decodeAddressArray(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (address[] calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ('memory-safe') {
      res.length := length
      res.offset := offset
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `bytes32[]`
  /// @param _bytes The input bytes string to extract a bytes32 array from
  /// @param _arg The index of the argument to extract
  function decodeBytes32Array(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (bytes32[] calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ('memory-safe') {
      res.length := length
      res.offset := offset
    }
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/CustomRevert.sol
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
    assembly ('memory-safe') {
      mstore(0, selector)
      revert(0, 0x04)
    }
  }

  /// @dev Reverts with a custom error with an address argument in the scratch space
  function revertWith(bytes4 selector, address addr) internal pure {
    assembly ('memory-safe') {
      mstore(0, selector)
      mstore(0x04, and(addr, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(0, 0x24)
    }
  }

  /// @dev Reverts with a custom error with an int24 argument in the scratch space
  function revertWith(bytes4 selector, int24 value) internal pure {
    assembly ('memory-safe') {
      mstore(0, selector)
      mstore(0x04, signextend(2, value))
      revert(0, 0x24)
    }
  }

  /// @dev Reverts with a custom error with a uint160 argument in the scratch space
  function revertWith(bytes4 selector, uint160 value) internal pure {
    assembly ('memory-safe') {
      mstore(0, selector)
      mstore(0x04, and(value, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(0, 0x24)
    }
  }

  /// @dev Reverts with a custom error with two int24 arguments
  function revertWith(bytes4 selector, int24 value1, int24 value2) internal pure {
    assembly ('memory-safe') {
      let fmp := mload(0x40)
      mstore(fmp, selector)
      mstore(add(fmp, 0x04), signextend(2, value1))
      mstore(add(fmp, 0x24), signextend(2, value2))
      revert(fmp, 0x44)
    }
  }

  /// @dev Reverts with a custom error with two uint160 arguments
  function revertWith(bytes4 selector, uint160 value1, uint160 value2) internal pure {
    assembly ('memory-safe') {
      let fmp := mload(0x40)
      mstore(fmp, selector)
      mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
      mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(fmp, 0x44)
    }
  }

  /// @dev Reverts with a custom error with two address arguments
  function revertWith(bytes4 selector, address value1, address value2) internal pure {
    assembly ('memory-safe') {
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
    assembly ('memory-safe') {
      // Ensure the size of the revert data is a multiple of 32 bytes
      let encodedDataSize := mul(div(add(returndatasize(), 31), 32), 32)

      let fmp := mload(0x40)

      // Encode wrapped error selector, address, function selector, offset, additional context, size, revert reason
      mstore(fmp, wrappedErrorSelector)
      mstore(add(fmp, 0x04), and(revertingContract, 0xffffffffffffffffffffffffffffffffffffffff))
      mstore(
        add(fmp, 0x24),
        and(
          revertingFunctionSelector,
          0xffffffff00000000000000000000000000000000000000000000000000000000
        )
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
// FILE: lib/ks-common-sc/src/libraries/token/PermitHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {IAllowanceTransfer} from '../../interfaces/IAllowanceTransfer.sol';
import {IDaiLikePermit} from '../../interfaces/IDaiLikePermit.sol';
import {IERC721Permit_v3} from '../../interfaces/IERC721Permit_v3.sol';
import {IERC721Permit_v4} from '../../interfaces/IERC721Permit_v4.sol';
import {CalldataDecoder} from '../calldata/CalldataDecoder.sol';

import {
  IERC20Permit
} from 'openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol';

library PermitHelper {
  using CalldataDecoder for bytes;

  function callERC20Permit(address token, address owner, bytes calldata permitData)
    internal
    returns (bool)
  {
    if (permitData.length == 32 * 5) {
      uint256 value = permitData.decodeUint256(0);
      uint256 deadline = permitData.decodeUint256(1);
      uint8 v = uint8(permitData.decodeUint256(2));
      bytes32 r = permitData.decodeBytes32(3);
      bytes32 s = permitData.decodeBytes32(4);

      try IERC20Permit(token).permit(owner, address(this), value, deadline, v, r, s) {
        return true;
      } catch {}
    } else if (permitData.length == 32 * 6) {
      uint256 nonce = permitData.decodeUint256(0);
      uint256 expiry = permitData.decodeUint256(1);
      bool allowed = permitData.decodeBool(2);
      uint8 v = uint8(permitData.decodeUint256(3));
      bytes32 r = permitData.decodeBytes32(4);
      bytes32 s = permitData.decodeBytes32(5);

      try IDaiLikePermit(token).permit(owner, address(this), nonce, expiry, allowed, v, r, s) {
        return true;
      } catch {}
    }
  }

  function callERC721Permit(address token, uint256 tokenId, bytes calldata permitData)
    internal
    returns (bool)
  {
    if (permitData.length == 32 * 4) {
      uint256 deadline = permitData.decodeUint256(0);
      uint8 v = uint8(permitData.decodeUint256(1));
      bytes32 r = permitData.decodeBytes32(2);
      bytes32 s = permitData.decodeBytes32(3);

      try IERC721Permit_v3(token).permit(address(this), tokenId, deadline, v, r, s) {
        return true;
      } catch {}
    } else if (permitData.length == 32 * 7) {
      uint256 deadline = permitData.decodeUint256(0);
      uint256 nonce = permitData.decodeUint256(1);
      bytes calldata signature = permitData.decodeBytes(2);

      try IERC721Permit_v4(token).permit(address(this), tokenId, deadline, nonce, signature) {
        return true;
      } catch {}
    }
  }

  function callPermit2(IAllowanceTransfer permit2, address owner, bytes calldata permit2Data)
    internal
    returns (bool)
  {
    IAllowanceTransfer.PermitBatch calldata permitBatch;
    assembly ('memory-safe') {
      permitBatch := add(permit2Data.offset, calldataload(permit2Data.offset))
    }
    bytes calldata signature = permit2Data.decodeBytes(1);

    try permit2.permit(owner, permitBatch, signature) {
      return true;
    } catch {}
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/token/TokenHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from '../CustomRevert.sol';

import {IERC20} from 'openzeppelin-contracts/contracts/interfaces/IERC20.sol';

/// @title Library for transferring, approving and holding native tokens and ERC20 tokens
/// @dev This library is based on CurrencyLibrary.sol from Uniswap/v4-core and SafeTransferLib.sol from transmissions11/solmate
library TokenHelper {
  /// @notice Additional context for ERC-7751 wrapped error when a native transfer fails
  error NativeTransferFailed();

  /// @notice Additional context for ERC-7751 wrapped error when an ERC20 transfer fails
  error ERC20TransferFailed();

  /// @notice Additional context for ERC-7751 wrapped error when an ERC20 approve fails
  error ERC20ApproveFailed();

  address internal constant NATIVE_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  function isNative(address token) internal pure returns (bool) {
    return token == NATIVE_ADDRESS || token == address(0);
  }

  function safeTransferNative(address to, uint256 amount) internal {
    if (amount == 0) return;

    bool success;
    assembly ('memory-safe') {
      // Transfer the ETH and revert if it fails.
      success := call(gas(), to, amount, 0, 0, 0, 0)
    }
    // revert with NativeTransferFailed, containing the bubbled up error as an argument
    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(to, bytes4(0), NativeTransferFailed.selector);
    }
  }

  function safeTransferERC20(address token, address to, uint256 amount) internal {
    if (amount == 0) return;

    bool success;
    assembly ('memory-safe') {
      // Get a pointer to some free memory.
      let fmp := mload(0x40)

      // Write the abi-encoded calldata into memory, beginning with the function selector.
      mstore(fmp, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
      mstore(add(fmp, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
      mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

      success := and(
        // Set success to whether the call reverted, if not we check it either
        // returned exactly 1 (can't just be non-zero data), or had no return data.
        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
        // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
        // Counterintuitively, this call must be positioned second to the or() call in the
        // surrounding and() call or else returndatasize() will be zero during the computation.
        call(gas(), token, 0, fmp, 68, 0, 32)
      )

      // Now clean the memory we used
      mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
      mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
      mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
    }
    // revert with ERC20TransferFailed, containing the bubbled up error as an argument
    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(
        token, IERC20.transfer.selector, ERC20TransferFailed.selector
      );
    }
  }

  function safeTransfer(address token, address to, uint256 amount) internal {
    if (isNative(token)) {
      safeTransferNative(to, amount);
    } else {
      safeTransferERC20(token, to, amount);
    }
  }

  function safeTransferFrom(address token, address from, address to, uint256 amount) internal {
    if (amount == 0) return;

    bool success;
    assembly ('memory-safe') {
      // Get a pointer to some free memory.
      let fmp := mload(0x40)

      // Write the abi-encoded calldata into memory, beginning with the function selector.
      mstore(fmp, 0x23b872dd00000000000000000000000000000000000000000000000000000000)
      mstore(add(fmp, 4), and(from, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "from" argument.
      mstore(add(fmp, 36), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
      mstore(add(fmp, 68), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

      success := and(
        // Set success to whether the call reverted, if not we check it either
        // returned exactly 1 (can't just be non-zero data), or had no return data.
        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
        // We use 100 because the length of our calldata totals up like so: 4 + 32 * 3.
        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
        // Counterintuitively, this call must be positioned second to the or() call in the
        // surrounding and() call or else returndatasize() will be zero during the computation.
        call(gas(), token, 0, fmp, 100, 0, 32)
      )

      // Now clean the memory we used
      mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `from` were stored here
      mstore(add(fmp, 0x20), 0) // 4 bytes of `from` and 28 bytes of `to` were stored here
      mstore(add(fmp, 0x40), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
      mstore(add(fmp, 0x60), 0) // 4 bytes of `amount` were stored here
    }
    // revert with ERC20TransferFailed, containing the bubbled up error as an argument
    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(
        token, IERC20.transferFrom.selector, ERC20TransferFailed.selector
      );
    }
  }

  function trySafeApprove(address token, address spender, uint256 amount)
    internal
    returns (bool success)
  {
    assembly ('memory-safe') {
      // Get a pointer to some free memory.
      let fmp := mload(0x40)

      // Write the abi-encoded calldata into memory, beginning with the function selector.
      mstore(fmp, 0x095ea7b300000000000000000000000000000000000000000000000000000000)
      mstore(add(fmp, 4), and(spender, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "spender" argument.
      mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

      success := and(
        // Set success to whether the call reverted, if not we check it either
        // returned exactly 1 (can't just be non-zero data), or had no return data.
        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
        // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
        // Counterintuitively, this call must be positioned second to the or() call in the
        // surrounding and() call or else returndatasize() will be zero during the computation.
        call(gas(), token, 0, fmp, 68, 0, 32)
      )

      // Now clean the memory we used
      mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
      mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
      mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
    }
  }

  function safeApprove(address token, address spender, uint256 amount) internal {
    // revert with ERC20ApproveFailed, containing the bubbled up error as an argument
    if (!trySafeApprove(token, spender, amount)) {
      CustomRevert.bubbleUpAndRevertWith(
        token, IERC20.approve.selector, ERC20ApproveFailed.selector
      );
    }
  }

  function forceApprove(address token, address spender, uint256 amount) internal {
    // meant to be used with tokens that require the approval to be set to zero before setting it to a non-zero value, such as USDT
    if (!trySafeApprove(token, spender, amount)) {
      safeApprove(token, spender, 0);
      safeApprove(token, spender, amount);
    }
  }

  function balanceOf(address token, address account) internal view returns (uint256) {
    if (isNative(token)) {
      return account.balance;
    } else {
      return IERC20(token).balanceOf(account);
    }
  }

  function selfBalance(address token) internal view returns (uint256) {
    if (isNative(token)) {
      return address(this).balance;
    } else {
      return IERC20(token).balanceOf(address(this));
    }
  }
}

// ============================================================
// FILE: src/hooks/base/BaseConditionalHook.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {BaseHook} from './BaseHook.sol';

import {IKSConditionalHook} from '../../interfaces/hooks/IKSConditionalHook.sol';
import 'src/hooks/base/BaseHook.sol';

import {
  Condition,
  ConditionTree,
  ConditionTreeLibrary,
  ConditionType
} from '../../types/ConditionTree.sol';

import {Math} from 'openzeppelin-contracts/contracts/utils/math/Math.sol';

/**
 * @param startTimestamp the start timestamp of the condition
 * @param endTimestamp the end timestamp of the condition
 */
struct TimeCondition {
  uint256 startTimestamp;
  uint256 endTimestamp;
}

/**
 * @param targetYield the target yield threshold (1e6 precision)
 * @param initialAmounts the initial amounts of the tokens
 */
struct YieldCondition {
  uint256 targetYield;
  uint256 initialAmounts; // [token0, token1]
}

/**
 * @param minPrice the minimum price of the token (would be in sqrtPriceX96 if uni v3 pool type)
 * @param maxPrice the maximum price of the token (would be in sqrtPriceX96 if uni v3 pool type)
 */
struct PriceCondition {
  uint256 minPrice;
  uint256 maxPrice;
}

abstract contract BaseConditionalHook is BaseHook, IKSConditionalHook {
  error WrongConditionType();

  ConditionType public constant PRICE_BASED = ConditionType.wrap(keccak256('PRICE_BASED'));
  ConditionType public constant TIME_BASED = ConditionType.wrap(keccak256('TIME_BASED'));
  ConditionType public constant YIELD_BASED = ConditionType.wrap(keccak256('YIELD_BASED'));
  uint256 public constant PRECISION = 1_000_000;
  uint256 public constant Q96 = 1 << 96;

  /// @inheritdoc IKSConditionalHook
  function validateConditionTree(ConditionTree calldata tree, uint256 curIndex)
    external
    view
    virtual
  {
    require(
      ConditionTreeLibrary.evaluateConditionTree(tree, curIndex, evaluateCondition),
      ConditionsNotMet()
    );
  }

  /// @inheritdoc IKSConditionalHook
  function evaluateCondition(Condition calldata condition, bytes calldata additionalData)
    public
    view
    virtual
    returns (bool isSatisfied)
  {
    if (condition.isType(TIME_BASED)) {
      isSatisfied = _evaluateTimeCondition(condition);
    } else if (condition.isType(PRICE_BASED)) {
      isSatisfied = _evaluatePriceCondition(condition, additionalData);
    } else if (condition.isType(YIELD_BASED)) {
      isSatisfied = _evaluateYieldCondition(condition, additionalData);
    } else {
      revert WrongConditionType();
    }
  }

  /**
   * @notice helper function to evaluate time condition
   * @param condition the condition to evaluate
   * @return true if the condition is satisfied, false otherwise
   */
  function _evaluateTimeCondition(Condition calldata condition)
    internal
    view
    virtual
    returns (bool)
  {
    TimeCondition calldata timeCondition = _decodeTimeCondition(condition.data);

    return timeCondition.startTimestamp <= block.timestamp
      && timeCondition.endTimestamp >= block.timestamp;
  }

  /**
   * @notice helper function to evaluate price condition
   * @param condition the price condition to evaluate
   * @param additionalData the abi encoded data of the current price
   * @return true if the condition is satisfied, false otherwise
   */
  function _evaluatePriceCondition(Condition calldata condition, bytes calldata additionalData)
    internal
    pure
    virtual
    returns (bool)
  {
    PriceCondition calldata priceCondition = _decodePriceCondition(condition.data);

    uint256 currentPrice;
    assembly ('memory-safe') {
      currentPrice := calldataload(additionalData.offset)
    }

    return priceCondition.minPrice <= currentPrice && priceCondition.maxPrice >= currentPrice;
  }

  /**
   * @notice helper function to evaluate whether the yield condition is satisfied
   * @dev Calculates yield as: (fees_in_token0_terms) / (initial_amounts_in_token0_terms)
   * @param condition The yield condition containing target yield and initial amounts
   * @param additionalData Encoded fee0, fee1, and poolPrice (sqrtPriceX96 if uni v3 pool type) values
   * @return true if actual yield >= target yield, false otherwise
   */
  function _evaluateYieldCondition(Condition calldata condition, bytes calldata additionalData)
    internal
    pure
    virtual
    returns (bool)
  {
    uint256 fee0;
    uint256 fee1;
    uint256 poolPrice;

    assembly ('memory-safe') {
      fee0 := calldataload(additionalData.offset)
      fee1 := calldataload(add(additionalData.offset, 0x20))
      poolPrice := calldataload(add(additionalData.offset, 0x40))
    }

    YieldCondition calldata yieldCondition = _decodeYieldCondition(condition.data);

    uint256 initialAmount0 = yieldCondition.initialAmounts >> 128;
    uint256 initialAmount1 = uint256(uint128(yieldCondition.initialAmounts));

    uint256 numerator = fee0 + _convertToken1ToToken0(poolPrice, fee1);
    uint256 denominator = initialAmount0 + _convertToken1ToToken0(poolPrice, initialAmount1);
    if (denominator == 0) return false;

    uint256 yield = (numerator * PRECISION) / denominator;

    return yield >= yieldCondition.targetYield;
  }

  /**
   * @notice Converts token1 amount to equivalent token0 amount using current price
   * @dev formula: amount0 = amount1 * Q192 / sqrtPriceX96^2
   * @param sqrtPriceX96 The pool's sqrt price
   * @param amount1 Amount of token1 to convert
   * @return amount0 Equivalent amount in token0 terms
   */
  function _convertToken1ToToken0(uint256 sqrtPriceX96, uint256 amount1)
    internal
    pure
    virtual
    returns (uint256 amount0)
  {
    amount0 = Math.mulDiv(Math.mulDiv(amount1, Q96, sqrtPriceX96), Q96, sqrtPriceX96);
  }

  function _decodePriceCondition(bytes calldata data)
    internal
    pure
    returns (PriceCondition calldata priceCondition)
  {
    assembly ('memory-safe') {
      priceCondition := data.offset
    }
  }

  function _decodeTimeCondition(bytes calldata data)
    internal
    pure
    returns (TimeCondition calldata timeCondition)
  {
    assembly ('memory-safe') {
      timeCondition := data.offset
    }
  }

  function _decodeYieldCondition(bytes calldata data)
    internal
    pure
    returns (YieldCondition calldata yieldCondition)
  {
    assembly ('memory-safe') {
      yieldCondition := data.offset
    }
  }
}

// ============================================================
// FILE: src/hooks/base/BaseHook.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IKSSmartIntentHook} from '../../interfaces/hooks/IKSSmartIntentHook.sol';

import {ActionData} from '../../types/ActionData.sol';

abstract contract BaseHook is IKSSmartIntentHook {
  error InvalidTokenData();

  modifier checkTokenLengths(ActionData calldata actionData) virtual;
}

// ============================================================
// FILE: src/hooks/base/BaseTickBasedRemoveLiquidityHook.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {BaseConditionalHook} from '../../hooks/base/BaseConditionalHook.sol';
import {IKSSmartIntentHook} from '../../interfaces/hooks/IKSSmartIntentHook.sol';

import {TokenHelper} from 'ks-common-sc/src/libraries/token/TokenHelper.sol';

import {IPositionManager} from '../../interfaces/uniswapv4/IPositionManager.sol';
import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';

import {ActionData} from '../../types/ActionData.sol';
import {ConditionTree, Node} from '../../types/ConditionTree.sol';
import {IntentData} from '../../types/IntentData.sol';

abstract contract BaseTickBasedRemoveLiquidityHook is BaseConditionalHook {
  using TokenHelper for address;

  event LiquidityRemoved(address nftAddress, uint256 nftId, uint256 liquidity);

  error InvalidOwner();
  error InvalidLiquidity();
  error NotEnoughOutputAmount();
  error NotEnoughFeesReceived();
  error ExceedMaxFeesPercent();
  error InvalidERC721Data();

  uint256 public constant Q128 = 1 << 128;
  address public immutable WETH;

  modifier checkTokenLengths(ActionData calldata actionData) override {
    require(actionData.erc20Ids.length == 0, InvalidTokenData());
    require(actionData.erc721Ids.length == 1, InvalidTokenData());
    _;
  }

  constructor(address _weth) {
    WETH = _weth;
  }

  /**
   * @notice Data structure for remove liquidity validation
   * @param nftAddresses The NFT addresses
   * @param nftIds The NFT IDs
   * @param nodes The nodes of conditions (used to build the condition tree)
   * @param maxFees The max fee percents for each output token (1e6 = 100%), [128 bits token0 max fee, 128 bits token1 max fee]
   * @param recipient The recipient
   * @param additionalData The additional data
   */
  struct RemoveLiquidityHookData {
    address[] nftAddresses;
    uint256[] nftIds;
    Node[][] nodes;
    uint256[] maxFees;
    address recipient;
    bytes additionalData;
  }

  /**
   * @notice Data structure for remove liquidity params
   * @param index The index of validation data in RemoveLiquidityHookData struct
   * @param liquidityToRemove The liquidity to remove
   * @param wrapOrUnwrap Whether to wrap or unwrap the tokens after removing liquidity
   * @param recipient The recipient of the output tokens
   * @param poolPrice The price of the pool
   * @param currentTick The current tick of the pool
   * @param positionInfo The position info of the NFT
   */
  struct RemoveLiquidityParams {
    uint256 index;
    uint256 liquidityToRemove;
    bool wrapOrUnwrap;
    address recipient;
    uint160 sqrtPriceX96;
    int24 currentTick;
    PositionInfo positionInfo;
  }

  /**
   * @notice Data structure for output validation params
   * @param router The router address that receives the output tokens after removing liquidity
   * @param balancesBefore The token0, token1 balances of the router before removing liquidity
   * @param maxFees The max fee percents for each output token (1e6 = 100%)
   * @param intentFeesPercent The intent fees percents for each output token (1e6 = 100%)
   * @param tokens The token0, token1 of the pool
   * @param amounts The expected amounts of tokens received from removing the specified liquidity
   * @param unclaimedFees The unclaimed fees of the position
   */
  struct OutputValidationParams {
    address router;
    uint256[2] balancesBefore;
    uint256[2] maxFees;
    uint256[2] intentFeesPercent;
    address[2] tokens;
  }

  /**
   * @notice Data structure for position info
   * @param nftAddress The NFT address
   * @param nftId The NFT ID
   * @param liquidity The liquidity of the position before removing liquidity
   * @param feesGrowthInsideLast The fees growth count of token0 and token1 since last time updated
   * @param feesGenerated The fees generated of token0 and token1
   * @param ticks Position tick range [tickLower, tickUpper]
   * @param amounts The expected amounts of tokens received from removing the specified liquidity
   * @param unclaimedFees The unclaimed fees of the position
   */
  struct PositionInfo {
    address nftAddress;
    uint256 nftId;
    uint256 liquidity;
    int24[2] ticks;
    uint256[2] feesGrowthInsideLast;
    uint256[2] feesGenerated;
    uint256[2] amounts;
    uint256[2] unclaimedFees;
  }

  /// @inheritdoc IKSSmartIntentHook
  function beforeExecution(bytes32, IntentData calldata intentData, ActionData calldata actionData)
    external
    view
    override
    checkTokenLengths(actionData)
    returns (uint256[] memory, bytes memory beforeExecutionData)
  {
    // not collect fees before execution
    beforeExecutionData = _validateBeforeExecution(intentData, actionData);
  }

  /// @inheritdoc IKSSmartIntentHook
  function afterExecution(
    bytes32,
    IntentData calldata intentData,
    bytes calldata beforeExecutionData,
    bytes calldata
  )
    external
    override
    returns (
      address[] memory tokens,
      uint256[] memory fees,
      uint256[] memory amounts,
      address recipient
    )
  {
    (tokens, fees, amounts, recipient) = _validateAfterExecution(intentData, beforeExecutionData);
  }

  function _validateBeforeExecution(IntentData calldata intentData, ActionData calldata actionData)
    internal
    view
    virtual
    returns (bytes memory beforeExecutionData)
  {}

  function _validateAfterExecution(
    IntentData calldata intentData,
    bytes calldata beforeExecutionData
  )
    internal
    virtual
    returns (
      address[] memory tokens,
      uint256[] memory fees,
      uint256[] memory amounts,
      address recipient
    )
  {
    (RemoveLiquidityParams calldata removeLiqParams, OutputValidationParams calldata outputParams) =
      _decodeBeforeExecutionData(beforeExecutionData);

    _validateTokenOwner(
      removeLiqParams.positionInfo.nftAddress,
      removeLiqParams.positionInfo.nftId,
      intentData.coreData.mainAddress
    );
    _validateLiquidity(removeLiqParams);
    (fees, amounts) = _validateOutput(outputParams, removeLiqParams.positionInfo);

    tokens = new address[](2);
    tokens[0] = outputParams.tokens[0];
    tokens[1] = outputParams.tokens[1];
    recipient = removeLiqParams.recipient;

    emit LiquidityRemoved(
      removeLiqParams.positionInfo.nftAddress,
      removeLiqParams.positionInfo.nftId,
      removeLiqParams.liquidityToRemove
    );
  }

  /**
   * @notice Validate the output after removing liquidity
   * @param outputParams The params used to validate output after execution
   * @return fees The fees will be charged
   * @return userReceived The amounts of tokens user will receive after removing liquidity
   */
  function _validateOutput(
    OutputValidationParams calldata outputParams,
    PositionInfo calldata positionInfo
  ) internal view virtual returns (uint256[] memory fees, uint256[] memory userReceived) {
    (uint256 routerReceived0, uint256 routerReceived1) =
      _recordRouterBalances(outputParams.router, outputParams.tokens);

    routerReceived0 -= outputParams.balancesBefore[0];
    routerReceived1 -= outputParams.balancesBefore[1];

    require(
      routerReceived0 >= positionInfo.unclaimedFees[0]
        && routerReceived1 >= positionInfo.unclaimedFees[1],
      NotEnoughFeesReceived()
    );

    uint256 amount0ReceivedForLiquidity = routerReceived0 - positionInfo.unclaimedFees[0];
    uint256 amount1ReceivedForLiquidity = routerReceived1 - positionInfo.unclaimedFees[1];

    // not charge fee on the user's unclaimed fees
    fees = new uint256[](2);
    fees[0] = amount0ReceivedForLiquidity * outputParams.intentFeesPercent[0] / PRECISION;
    fees[1] = amount1ReceivedForLiquidity * outputParams.intentFeesPercent[1] / PRECISION;

    userReceived = new uint256[](2);
    userReceived[0] = routerReceived0 - fees[0];
    userReceived[1] = routerReceived1 - fees[1];

    uint256 minReceived0 = positionInfo.unclaimedFees[0]
      + (positionInfo.amounts[0] * (PRECISION - outputParams.maxFees[0])) / PRECISION;
    uint256 minReceived1 = positionInfo.unclaimedFees[1]
      + (positionInfo.amounts[1] * (PRECISION - outputParams.maxFees[1])) / PRECISION;

    require(
      userReceived[0] >= minReceived0 && userReceived[1] >= minReceived1, NotEnoughOutputAmount()
    );
  }

  function _cacheBaseData(
    RemoveLiquidityHookData calldata validationData,
    bytes calldata hookActionData,
    RemoveLiquidityParams memory removeLiqParams,
    OutputValidationParams memory outputParams
  ) internal view virtual {
    (
      removeLiqParams.index,
      removeLiqParams.positionInfo.feesGenerated[0],
      removeLiqParams.positionInfo.feesGenerated[1],
      removeLiqParams.liquidityToRemove,
      removeLiqParams.wrapOrUnwrap,
      outputParams.intentFeesPercent
    ) = _decodeHookActionData(hookActionData);
    removeLiqParams.recipient = validationData.recipient;
    removeLiqParams.positionInfo.nftAddress = validationData.nftAddresses[removeLiqParams.index];
    removeLiqParams.positionInfo.nftId = validationData.nftIds[removeLiqParams.index];

    outputParams.router = msg.sender;
    outputParams.maxFees = [
      validationData.maxFees[removeLiqParams.index] >> 128,
      uint128(validationData.maxFees[removeLiqParams.index])
    ];

    require(
      outputParams.intentFeesPercent[0] <= outputParams.maxFees[0]
        && outputParams.intentFeesPercent[1] <= outputParams.maxFees[1],
      ExceedMaxFeesPercent()
    );
  }

  /**
   * @notice Validate the conditions of the liquidity removal operation
   * @param nodes The nodes of conditions (used to build the condition tree)
   * @param fee0Generated The fee0 generated - an offchain component that could contain claimed fees, unclaimed fees, and yield-based fees
   * @param fee1Generated The fee1 generated - an offchain component that could contain claimed fees, unclaimed fees, and yield-based fees
   * @param poolPrice The price of the pool
   */
  function _validateConditions(
    Node[] calldata nodes,
    uint256 fee0Generated,
    uint256 fee1Generated,
    uint256 poolPrice
  ) internal view virtual {
    this.validateConditionTree(
      _buildConditionTree(nodes, fee0Generated, fee1Generated, poolPrice), 0
    );
  }

  function _validateTokenOwner(address nftAddress, uint256 nftId, address owner)
    internal
    view
    virtual
  {
    require(IERC721(nftAddress).ownerOf(nftId) == owner, InvalidOwner());
  }

  function _validateLiquidity(RemoveLiquidityParams calldata removeLiquidityParams)
    internal
    view
    virtual
  {
    require(
      _getPositionLiquidity(
        removeLiquidityParams.positionInfo.nftAddress, removeLiquidityParams.positionInfo.nftId
      ) == removeLiquidityParams.positionInfo.liquidity - removeLiquidityParams.liquidityToRemove,
      InvalidLiquidity()
    );
  }

  function _validateERC721Data(
    address nftAddress,
    uint256 nftId,
    address tokenAddress,
    uint256 tokenId
  ) internal view virtual {
    require(nftAddress == tokenAddress && nftId == tokenId, InvalidERC721Data());
  }

  function _getPositionLiquidity(address nftAddress, uint256 nftId)
    internal
    view
    virtual
    returns (uint256 liquidity)
  {
    liquidity = IPositionManager(nftAddress).getPositionLiquidity(nftId);
  }

  function _recordRouterBalances(address router, address[2] memory tokens)
    internal
    view
    returns (uint256 balance0, uint256 balance1)
  {
    balance0 = tokens[0].balanceOf(router);
    balance1 = tokens[1].balanceOf(router);
  }

  function _adjustTokens(address[2] memory tokens)
    internal
    view
    returns (address[2] memory adjustedTokens)
  {
    adjustedTokens[0] = _adjustToken(tokens[0]);
    adjustedTokens[1] = _adjustToken(tokens[1]);
  }

  function _buildConditionTree(
    Node[] calldata nodes,
    uint256 fee0Generated,
    uint256 fee1Generated,
    uint256 poolPrice
  ) internal pure virtual returns (ConditionTree memory conditionTree) {
    conditionTree.nodes = nodes;
    conditionTree.additionalData = new bytes[](nodes.length);
    for (uint256 i; i < nodes.length; ++i) {
      if (!nodes[i].isLeaf() || nodes[i].condition.isType(TIME_BASED)) {
        continue;
      }
      if (nodes[i].condition.isType(YIELD_BASED)) {
        conditionTree.additionalData[i] = abi.encode(fee0Generated, fee1Generated, poolPrice);
      } else if (nodes[i].condition.isType(PRICE_BASED)) {
        conditionTree.additionalData[i] = abi.encode(poolPrice);
      }
    }
  }

  // @dev: equivalent to abi.decode(data, (RemoveLiquidityHookData))
  function _decodeHookData(bytes calldata data)
    internal
    pure
    returns (RemoveLiquidityHookData calldata validationData)
  {
    assembly ('memory-safe') {
      validationData := add(data.offset, calldataload(data.offset))
    }
  }

  // @dev: equivalent to abi.decode(data, (uint256 index, uint256 fee0Generated, uint256 fee1Generated, uint256 liquidity, bool wrapOrUnwrap, uint256 packedFees))
  function _decodeHookActionData(bytes calldata data)
    internal
    pure
    virtual
    returns (
      uint256 index,
      uint256 fee0Generated,
      uint256 fee1Generated,
      uint256 liquidity,
      bool wrapOrUnwrap,
      uint256[2] memory intentFeesPercent
    )
  {
    uint256 packedFees;
    assembly ('memory-safe') {
      index := calldataload(data.offset)
      fee0Generated := calldataload(add(data.offset, 0x20))
      fee1Generated := calldataload(add(data.offset, 0x40))
      liquidity := calldataload(add(data.offset, 0x60))
      wrapOrUnwrap := calldataload(add(data.offset, 0x80))
      packedFees := calldataload(add(data.offset, 0xa0))
    }

    intentFeesPercent = [packedFees >> 128, uint128(packedFees)];
  }

  // @dev: equivalent to abi.decode(data, (RemoveLiquidityParams, OutputValidationParams))
  function _decodeBeforeExecutionData(bytes calldata data)
    internal
    pure
    virtual
    returns (
      RemoveLiquidityParams calldata removeLiqParams,
      OutputValidationParams calldata outputParams
    )
  {
    assembly ('memory-safe') {
      removeLiqParams := data.offset
      outputParams := add(data.offset, 0x260) // (outputParams starts at slot 19 (608th byte))
    }
  }

  function _adjustToken(address token) internal view returns (address adjustedToken) {
    if (token != WETH && token != TokenHelper.NATIVE_ADDRESS) {
      return token;
    }

    return token == WETH ? TokenHelper.NATIVE_ADDRESS : WETH;
  }

  function _toNative(address token) internal pure returns (address nativeToken) {
    return token == address(0) ? TokenHelper.NATIVE_ADDRESS : token;
  }
}

// ============================================================
// FILE: src/hooks/remove-liq/KSRemoveLiquidityUniswapV3Hook.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {BaseTickBasedRemoveLiquidityHook} from '../base/BaseTickBasedRemoveLiquidityHook.sol';

import {IUniswapV3PM} from '../../interfaces/uniswapv3/IUniswapV3PM.sol';
import {IUniswapV3Pool} from '../../interfaces/uniswapv3/IUniswapV3Pool.sol';
import {LiquidityAmounts} from '../../libraries/uniswapv4/LiquidityAmounts.sol';
import {TickMath} from '../../libraries/uniswapv4/TickMath.sol';

import {CalldataDecoder} from 'ks-common-sc/src/libraries/calldata/CalldataDecoder.sol';
import {TokenHelper} from 'ks-common-sc/src/libraries/token/TokenHelper.sol';

import {ActionData} from '../../types/ActionData.sol';
import {IntentData} from '../../types/IntentData.sol';

import {Math} from 'openzeppelin-contracts/contracts/utils/math/Math.sol';

contract KSRemoveLiquidityUniswapV3Hook is BaseTickBasedRemoveLiquidityHook {
  using TokenHelper for address;
  using CalldataDecoder for bytes;

  /**
   * @notice Parameters used for remove liquidity validation of a uniswap v3 position
   * @param pool The pool address
   * @param removeLiqParams The params used to remove liquidity
   * @param outputParams The params used to validate output after execution
   */
  struct UniswapV3Params {
    address pool;
    RemoveLiquidityParams removeLiqParams;
    OutputValidationParams outputParams;
  }

  constructor(address _weth) BaseTickBasedRemoveLiquidityHook(_weth) {}

  function _validateBeforeExecution(IntentData calldata intentData, ActionData calldata actionData)
    internal
    view
    override
    returns (bytes memory beforeExecutionData)
  {
    UniswapV3Params memory uniswapV3;
    RemoveLiquidityHookData calldata validationData =
      _decodeHookData(intentData.coreData.hookIntentData);

    _cacheValidationData(uniswapV3, validationData, actionData.hookActionData);

    _validateERC721Data(
      uniswapV3.removeLiqParams.positionInfo.nftAddress,
      uniswapV3.removeLiqParams.positionInfo.nftId,
      intentData.tokenData.erc721Data[actionData.erc721Ids[0]].token,
      intentData.tokenData.erc721Data[actionData.erc721Ids[0]].tokenId
    );

    _validateConditions(
      validationData.nodes[uniswapV3.removeLiqParams.index],
      uniswapV3.removeLiqParams.positionInfo.feesGenerated[0],
      uniswapV3.removeLiqParams.positionInfo.feesGenerated[1],
      uniswapV3.removeLiqParams.sqrtPriceX96
    );

    beforeExecutionData = abi.encode(uniswapV3.removeLiqParams, uniswapV3.outputParams);
  }

  function _getPositionLiquidity(address nftAddress, uint256 nftId)
    internal
    view
    override
    returns (uint256 liquidity)
  {
    (,,,,,,, liquidity,,,,) = IUniswapV3PM(nftAddress).positions(nftId);
  }

  function _cacheValidationData(
    UniswapV3Params memory uniswapV3,
    RemoveLiquidityHookData calldata validationData,
    bytes calldata hookActionData
  ) internal view {
    OutputValidationParams memory outputParams = uniswapV3.outputParams;
    RemoveLiquidityParams memory removeLiqParams = uniswapV3.removeLiqParams;
    _cacheBaseData(validationData, hookActionData, removeLiqParams, outputParams);

    uniswapV3.pool = validationData.additionalData.decodeAddressArray(0)[removeLiqParams.index];
    (
      ,,
      outputParams.tokens[0],
      outputParams.tokens[1],,
      removeLiqParams.positionInfo.ticks[0],
      removeLiqParams.positionInfo.ticks[1],
      removeLiqParams.positionInfo.liquidity,
      removeLiqParams.positionInfo.feesGrowthInsideLast[0],
      removeLiqParams.positionInfo.feesGrowthInsideLast[1],
      removeLiqParams.positionInfo.unclaimedFees[0],
      removeLiqParams.positionInfo.unclaimedFees[1]
    ) =
      IUniswapV3PM(removeLiqParams.positionInfo.nftAddress)
        .positions(removeLiqParams.positionInfo.nftId);

    (removeLiqParams.sqrtPriceX96, removeLiqParams.currentTick,,,,,) =
      IUniswapV3Pool(uniswapV3.pool).slot0();

    if (removeLiqParams.wrapOrUnwrap) {
      outputParams.tokens =
        [_adjustToken(outputParams.tokens[0]), _adjustToken(outputParams.tokens[1])];
    }
    (outputParams.balancesBefore[0], outputParams.balancesBefore[1]) =
      _recordRouterBalances(msg.sender, outputParams.tokens);

    _computePositionValues(uniswapV3);
  }

  function _computePositionValues(UniswapV3Params memory uniswapV3) internal view {
    PositionInfo memory positionInfo = uniswapV3.removeLiqParams.positionInfo;
    RemoveLiquidityParams memory removeLiqParams = uniswapV3.removeLiqParams;

    int24 tickLower = positionInfo.ticks[0];
    int24 tickCurrent = removeLiqParams.currentTick;
    int24 tickUpper = positionInfo.ticks[1];

    if (removeLiqParams.liquidityToRemove != 0) {
      uint160 sqrtPriceLower = TickMath.getSqrtRatioAtTick(tickLower);
      uint160 sqrtPriceUpper = TickMath.getSqrtRatioAtTick(tickUpper);
      (positionInfo.amounts[0], positionInfo.amounts[1]) = LiquidityAmounts.getAmountsForLiquidity(
        removeLiqParams.sqrtPriceX96,
        sqrtPriceLower,
        sqrtPriceUpper,
        uint128(removeLiqParams.liquidityToRemove)
      );
    }

    (uint256 feeGrowthInside0, uint256 feeGrowthInside1) =
      _getFeeGrowthInside(IUniswapV3Pool(uniswapV3.pool), tickLower, tickCurrent, tickUpper);

    unchecked {
      positionInfo.unclaimedFees[
        0
      ] += Math.mulDiv(
        feeGrowthInside0 - positionInfo.feesGrowthInsideLast[0], positionInfo.liquidity, Q128
      );
      positionInfo.unclaimedFees[
        1
      ] += Math.mulDiv(
        feeGrowthInside1 - positionInfo.feesGrowthInsideLast[1], positionInfo.liquidity, Q128
      );
    }
  }

  function _getFeeGrowthInside(
    IUniswapV3Pool pool,
    int24 tickLower,
    int24 tickCurrent,
    int24 tickUpper
  ) internal view returns (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) {
    (uint256 feeGrowthGlobal0X128, uint256 feeGrowthGlobal1X128) =
      (pool.feeGrowthGlobal0X128(), pool.feeGrowthGlobal1X128());
    (,, uint256 feeGrowthOutside0X128Lower, uint256 feeGrowthOutside1X128Lower,,,,) =
      pool.ticks(tickLower);
    (,, uint256 feeGrowthOutside0X128Upper, uint256 feeGrowthOutside1X128Upper,,,,) =
      pool.ticks(tickUpper);

    uint256 feeGrowthBelow0X128;
    uint256 feeGrowthBelow1X128;
    unchecked {
      if (tickCurrent >= tickLower) {
        feeGrowthBelow0X128 = feeGrowthOutside0X128Lower;
        feeGrowthBelow1X128 = feeGrowthOutside1X128Lower;
      } else {
        feeGrowthBelow0X128 = feeGrowthGlobal0X128 - feeGrowthOutside0X128Lower;
        feeGrowthBelow1X128 = feeGrowthGlobal1X128 - feeGrowthOutside1X128Lower;
      }

      uint256 feeGrowthAbove0X128;
      uint256 feeGrowthAbove1X128;
      if (tickCurrent < tickUpper) {
        feeGrowthAbove0X128 = feeGrowthOutside0X128Upper;
        feeGrowthAbove1X128 = feeGrowthOutside1X128Upper;
      } else {
        feeGrowthAbove0X128 = feeGrowthGlobal0X128 - feeGrowthOutside0X128Upper;
        feeGrowthAbove1X128 = feeGrowthGlobal1X128 - feeGrowthOutside1X128Upper;
      }

      feeGrowthInside0X128 = feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128;
      feeGrowthInside1X128 = feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128;
    }
  }
}

// ============================================================
// FILE: src/interfaces/hooks/IKSConditionalHook.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {Condition, ConditionTree} from '../../types/ConditionTree.sol';

interface IKSConditionalHook {
  error ConditionsNotMet();

  /**
   * @notice Validates a condition tree starting from the specified root node
   * @dev Reverts with ConditionsNotMet() if the conditions are not met
   * @param conditionTree The hierarchical structure of conditions to evaluate
   * @param rootIndex The index of the root node to start evaluation from
   */
  function validateConditionTree(ConditionTree calldata conditionTree, uint256 rootIndex)
    external
    view;

  /**
   * @param condition the condition to be evaluated
   * @param additionalData the additional data to be used for evaluation
   * @return true if the condition is met, false otherwise
   */
  function evaluateCondition(Condition calldata condition, bytes calldata additionalData)
    external
    view
    returns (bool);
}

// ============================================================
// FILE: src/interfaces/hooks/IKSSmartIntentHook.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ActionData} from '../../types/ActionData.sol';
import {IntentData} from '../../types/IntentData.sol';
import {IKSSmartIntentRouter} from '../IKSSmartIntentRouter.sol';

interface IKSSmartIntentHook {
  /**
   * @notice Before execution hook
   * @param intentData the intent data
   * @param actionData the data of the action
   * @return fees the amount of fees to be taken
   * @return beforeExecutionData the data representing the state before execution
   */
  function beforeExecution(
    bytes32 intentHash,
    IntentData calldata intentData,
    ActionData calldata actionData
  ) external returns (uint256[] memory fees, bytes memory beforeExecutionData);

  /**
   * @notice After execution hook
   * @param intentData the intent data
   * @param beforeExecutionData the data returned from `beforeExecution`
   * @param actionResult the result of the action
   * @return tokens the tokens to be taken fees from and to be returned to the recipient
   * @return fees the fees to be taken
   * @return amounts the amounts of the tokens to be returned to the recipient
   * @return recipient the address of the recipient
   */
  function afterExecution(
    bytes32 intentHash,
    IntentData calldata intentData,
    bytes calldata beforeExecutionData,
    bytes calldata actionResult
  )
    external
    returns (
      address[] memory tokens,
      uint256[] memory fees,
      uint256[] memory amounts,
      address recipient
    );
}

// ============================================================
// FILE: src/interfaces/IKSSmartIntentRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ActionData} from '../types/ActionData.sol';
import {FeeConfig} from '../types/FeeInfo.sol';
import {IntentData} from '../types/IntentData.sol';

interface IKSSmartIntentRouter {
  /// @notice Thrown when total partner fee is greater than 100%
  error InvalidFeeConfig();

  /// @notice Thrown when the caller is not the main address
  error NotMainAddress();

  /// @notice Thrown when the action is expired
  error ActionExpired();

  /// @notice Thrown when the intent has not been delegated
  error IntentNotDelegated();

  /// @notice Thrown when the intent has already been delegated
  error IntentDelegated();

  /// @notice Thrown when the intent has already been revoked
  error IntentRevoked();

  /// @notice Thrown when the signature is not from the main address
  error InvalidMainAddressSignature();

  /// @notice Thrown when the signature is not from the delegated key
  error InvalidDelegatedKeySignature();

  /// @notice Thrown when the signature is not from the guardian
  error InvalidGuardianSignature();

  /// @notice Thrown when the action contract and selector not found in intent
  error InvalidActionSelectorId(uint256 actionSelectorId);

  /// @notice Thrown when a nonce has already been used
  error NonceAlreadyUsed(bytes32 intentHash, uint256 nonce);

  /// @notice Thrown when collecting more than the intent allowance for ERC20
  error ERC20InsufficientIntentAllowance(
    bytes32 intentHash, address token, uint256 allowance, uint256 needed
  );

  /// @notice Emitted when the forwarder is updated
  event UpdateForwarder(address newForwarder);

  /// @notice Emitted when an intent is delegated
  event DelegateIntent(address indexed mainAddress, bytes delegatedKey, IntentData intentData);

  /// @notice Emitted when an intent is revoked
  event RevokeIntent(bytes32 indexed intentHash);

  /// @notice Emitted when an intent is executed
  event ExecuteIntent(bytes32 indexed intentHash, ActionData actionData, bytes actionResult);

  /// @notice Emitted when a nonce is consumed
  event UseNonce(bytes32 indexed intentHash, uint256 nonce);

  /// @notice Emitted when the fee is collected before execution
  event RecordVolumeAndFees(
    address indexed token,
    address indexed protocolRecipient,
    FeeConfig[] partnerFeeConfigs,
    uint256 protocolFeeAmount,
    uint256[] partnersFeeAmounts,
    bool beforeExecution,
    uint256 totalAmount
  );

  enum IntentStatus {
    NOT_DELEGATED,
    DELEGATED,
    REVOKED
  }

  /**
   * @notice Delegate the intent to the delegated key
   * @param intentData The data for the intent
   */
  function delegate(IntentData calldata intentData) external;

  /**
   * @notice Revoke the delegated intent
   * @param intentData The intent data to revoke
   */
  function revoke(IntentData calldata intentData) external;

  /**
   * @notice Execute the intent
   * @param intentData The data for the intent
   * @param dkSignature The signature of the delegated key
   * @param guardian The address of the guardian
   * @param gdSignature The signature of the guardian
   * @param actionData The data for the action
   */
  function execute(
    IntentData calldata intentData,
    bytes calldata dkSignature,
    address guardian,
    bytes calldata gdSignature,
    ActionData calldata actionData
  ) external;

  /**
   * @notice Execute the intent with the signed data and main address signature
   * @param intentData The data for the intent
   * @param maSignature The signature of the main address
   * @param dkSignature The signature of the delegated key
   * @param guardian The address of the guardian
   * @param gdSignature The signature of the guardian
   * @param actionData The data for the action
   */
  function executeWithSignedIntent(
    IntentData calldata intentData,
    bytes calldata maSignature,
    bytes calldata dkSignature,
    address guardian,
    bytes calldata gdSignature,
    ActionData calldata actionData
  ) external;

  /**
   * @notice Return the ERC20 allowance for a specific intent
   * @param intentHash The hash of the intent
   * @param token The address of the ERC20 token
   * @return allowance The allowance for the specified token
   */
  function erc20Allowances(bytes32 intentHash, address token)
    external
    view
    returns (uint256 allowance);

  /**
   * @notice Update the forwarder address
   * @param newForwarder The new forwarder address
   */
  function updateForwarder(address newForwarder) external;

  /// @notice mapping of nonces consumed by each intent, where a nonce is a single bit on the 256-bit bitmap
  /// @dev word is at most type(uint248).max
  function nonces(bytes32 intentHash, uint256 word) external view returns (uint256 bitmap);

  /// @notice Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
  function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: src/interfaces/uniswapv3/IUniswapV3PM.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';

interface IUniswapV3PM is IERC721 {
  function multicall(bytes[] calldata data) external payable returns (bytes[] memory results);

  /// @notice Unwraps the contract's WETH9 balance and sends it to recipient as ETH.
  /// @dev The amountMinimum parameter prevents malicious contracts from stealing WETH9 from users.
  /// @param amountMinimum The minimum amount of WETH9 to unwrap
  /// @param recipient The address receiving ETH
  function unwrapWETH9(uint256 amountMinimum, address recipient) external payable;

  /// @notice Transfers the full amount of a token held by this contract to recipient
  /// @dev The amountMinimum parameter prevents malicious contracts from stealing the token from users
  /// @param token The contract address of the token which will be transferred to `recipient`
  /// @param amountMinimum The minimum amount of token required for a transfer
  /// @param recipient The destination address of the token
  function sweepToken(address token, uint256 amountMinimum, address recipient) external payable;

  struct DecreaseLiquidityParams {
    uint256 tokenId;
    uint128 liquidity;
    uint256 amount0Min;
    uint256 amount1Min;
    uint256 deadline;
  }

  /// @notice Decreases the amount of liquidity in a position and accounts it to the position
  /// @param params tokenId The ID of the token for which liquidity is being decreased,
  /// amount The amount by which liquidity will be decreased,
  /// amount0Min The minimum amount of token0 that should be accounted for the burned liquidity,
  /// amount1Min The minimum amount of token1 that should be accounted for the burned liquidity,
  /// deadline The time by which the transaction must be included to effect the change
  /// @return amount0 The amount of token0 accounted to the position's tokens owed
  /// @return amount1 The amount of token1 accounted to the position's tokens owed
  function decreaseLiquidity(DecreaseLiquidityParams calldata params)
    external
    payable
    returns (uint256 amount0, uint256 amount1);

  function positions(uint256 tokenId)
    external
    view
    returns (
      uint96 nonce,
      address operator,
      address token0,
      address token1,
      uint24 fee,
      int24 tickLower,
      int24 tickUpper,
      uint128 liquidity,
      uint256 feeGrowthInside0LastX128,
      uint256 feeGrowthInside1LastX128,
      uint128 tokensOwed0,
      uint128 tokensOwed1
    );

  struct CollectParams {
    uint256 tokenId;
    address recipient;
    uint128 amount0Max;
    uint128 amount1Max;
  }

  /// @notice Collects up to a maximum amount of fees owed to a specific position to the recipient
  /// @param params tokenId The ID of the NFT for which tokens are being collected,
  /// recipient The account that should receive the tokens,
  /// amount0Max The maximum amount of token0 to collect,
  /// amount1Max The maximum amount of token1 to collect
  /// @return amount0 The amount of fees collected in token0
  /// @return amount1 The amount of fees collected in token1
  function collect(CollectParams calldata params)
    external
    payable
    returns (uint256 amount0, uint256 amount1);

  function factory() external view returns (address);
}

// ============================================================
// FILE: src/interfaces/uniswapv3/IUniswapV3Pool.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface IUniswapV3Pool {
  function slot0()
    external
    view
    returns (
      uint160 sqrtPriceX96,
      int24 tick,
      uint16 observationIndex,
      uint16 observationCardinality,
      uint16 observationCardinalityNext,
      uint256 feeProtocol,
      bool unlocked
    );

  /// @notice The fee growth as a Q128.128 fees of token0 collected per unit of liquidity for the entire life of the pool
  /// @dev This value can overflow the uint256
  function feeGrowthGlobal0X128() external view returns (uint256);

  /// @notice The fee growth as a Q128.128 fees of token1 collected per unit of liquidity for the entire life of the pool
  /// @dev This value can overflow the uint256
  function feeGrowthGlobal1X128() external view returns (uint256);

  /// @notice The amounts of token0 and token1 that are owed to the protocol
  /// @dev Protocol fees will never exceed uint128 max in either token
  function protocolFees() external view returns (uint128 token0, uint128 token1);

  /// @notice The currently in range liquidity available to the pool
  /// @dev This value has no relationship to the total liquidity across all ticks
  function liquidity() external view returns (uint128);

  /// @notice Look up information about a specific tick in the pool
  /// @param tick The tick to look up
  /// @return liquidityGross the total amount of position liquidity that uses the pool either as tick lower or
  /// tick upper,
  /// liquidityNet how much liquidity changes when the pool price crosses the tick,
  /// feeGrowthOutside0X128 the fee growth on the other side of the tick from the current tick in token0,
  /// feeGrowthOutside1X128 the fee growth on the other side of the tick from the current tick in token1,
  /// tickCumulativeOutside the cumulative tick value on the other side of the tick from the current tick
  /// secondsPerLiquidityOutsideX128 the seconds spent per liquidity on the other side of the tick from the current tick,
  /// secondsOutside the seconds spent on the other side of the tick from the current tick,
  /// initialized Set to true if the tick is initialized, i.e. liquidityGross is greater than 0, otherwise equal to false.
  /// Outside values can only be used if the tick is initialized, i.e. if liquidityGross is greater than 0.
  /// In addition, these values are only relative and must be used only in comparison to previous snapshots for
  /// a specific position.
  function ticks(int24 tick)
    external
    view
    returns (
      uint128 liquidityGross,
      int128 liquidityNet,
      uint256 feeGrowthOutside0X128,
      uint256 feeGrowthOutside1X128,
      int56 tickCumulativeOutside,
      uint160 secondsPerLiquidityOutsideX128,
      uint32 secondsOutside,
      bool initialized
    );
}

// ============================================================
// FILE: src/interfaces/uniswapv4/IPoolManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for the PoolManager
interface IPoolManager {
  /// @notice Called by external contracts to access granular pool state
  /// @param slot Key of slot to sload
  /// @return value The value of the slot as bytes32
  function extsload(bytes32 slot) external view returns (bytes32 value);

  /// @notice Called by external contracts to access granular pool state
  /// @param startSlot Key of slot to start sloading from
  /// @param nSlots Number of slots to load into return value
  /// @return values List of loaded values.
  function extsload(bytes32 startSlot, uint256 nSlots)
    external
    view
    returns (bytes32[] memory values);

  /// @notice Called by external contracts to access sparse pool state
  /// @param slots List of slots to SLOAD from.
  /// @return values List of loaded values.
  function extsload(bytes32[] calldata slots) external view returns (bytes32[] memory values);

  /// @notice Called by external contracts to access transient storage of the contract
  /// @param slot Key of slot to tload
  /// @return value The value of the slot as bytes32
  function exttload(bytes32 slot) external view returns (bytes32 value);

  /// @notice Called by external contracts to access sparse transient pool state
  /// @param slots List of slots to tload
  /// @return values List of loaded values
  function exttload(bytes32[] calldata slots) external view returns (bytes32[] memory values);

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
}

// ============================================================
// FILE: src/interfaces/uniswapv4/IPositionManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IPoolManager} from './IPoolManager.sol';
import {PoolKey} from './Types.sol';

import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';

/// @title IPositionManager
/// @notice Interface for the PositionManager contract
interface IPositionManager is IERC721 {
  /// @notice Thrown when the caller is not approved to modify a position
  error NotApproved(address caller);
  /// @notice Thrown when the block.timestamp exceeds the user-provided deadline
  error DeadlinePassed(uint256 deadline);
  /// @notice Thrown when calling transfer, subscribe, or unsubscribe when the PoolManager is unlocked.
  /// @dev This is to prevent hooks from being able to trigger notifications at the same time the position is being modified.
  error PoolManagerMustBeLocked();

  /// @param tokenId the ERC721 tokenId
  /// @return liquidity the position's liquidity, as a liquidityAmount
  /// @dev this value can be processed as an amount0 and amount1 by using the LiquidityAmounts library
  function getPositionLiquidity(uint256 tokenId) external view returns (uint128 liquidity);

  /// @param tokenId the ERC721 tokenId
  /// @return PositionInfo a uint256 packed value holding information about the position including the range (tickLower, tickUpper)
  /// @return poolKey the pool key of the position
  function getPoolAndPositionInfo(uint256 tokenId) external view returns (PoolKey memory, uint256);

  function poolManager() external view returns (IPoolManager);

  function modifyLiquidities(bytes calldata unlockData, uint256 deadline) external payable;
}

// ============================================================
// FILE: src/interfaces/uniswapv4/Types.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

type PoolId is bytes32;

type BalanceDelta is int256;

type PositionInfo is uint256;

/// @notice Returns the key for identifying a pool
struct PoolKey {
  /// @notice The lower currency of the pool, sorted numerically
  address currency0;
  /// @notice The higher currency of the pool, sorted numerically
  address currency1;
  /// @notice The pool LP fee, capped at 1_000_000. If the highest bit is 1, the pool has a dynamic fee and must be exactly equal to 0x800000
  uint24 fee;
  /// @notice Ticks that involve positions must be a multiple of tick spacing
  int24 tickSpacing;
  /// @notice The hooks of the pool
  address hooks;
}

/// @notice Library to define different pool actions.
/// @dev These are suggested common commands, however additional commands should be defined as required
library Actions {
  // pool actions
  // liquidity actions
  uint256 constant INCREASE_LIQUIDITY = 0x00;
  uint256 constant DECREASE_LIQUIDITY = 0x01;
  uint256 constant MINT_POSITION = 0x02;
  uint256 constant BURN_POSITION = 0x03;
  uint256 constant INCREASE_LIQUIDITY_FROM_DELTAS = 0x04;
  uint256 constant MINT_POSITION_FROM_DELTAS = 0x05;

  // swapping
  uint256 constant SWAP_EXACT_IN_SINGLE = 0x06;
  uint256 constant SWAP_EXACT_IN = 0x07;
  uint256 constant SWAP_EXACT_OUT_SINGLE = 0x08;
  uint256 constant SWAP_EXACT_OUT = 0x09;
  // donate
  uint256 constant DONATE = 0x0a;

  // closing deltas on the pool manager
  // settling
  uint256 constant SETTLE = 0x0b;
  uint256 constant SETTLE_ALL = 0x0c;
  uint256 constant SETTLE_PAIR = 0x0d;
  // taking
  uint256 constant TAKE = 0x0e;
  uint256 constant TAKE_ALL = 0x0f;
  uint256 constant TAKE_PORTION = 0x10;
  uint256 constant TAKE_PAIR = 0x11;

  uint256 constant CLOSE_CURRENCY = 0x12;
  uint256 constant CLEAR_OR_TAKE = 0x13;
  uint256 constant SWEEP = 0x14;

  uint256 constant WRAP = 0x15;
  uint256 constant UNWRAP = 0x16;

  // minting/burning 6909s to close deltas
  uint256 constant MINT_6909 = 0x17;
  uint256 constant BURN_6909 = 0x18;
}

/// @title Commands
/// @notice Command Flags used to decode commands
library Commands {
  uint256 constant SWEEP = 0x04;
  uint256 constant V4_SWAP = 0x10;
}

struct ExactInputSingleParams {
  PoolKey poolKey;
  bool zeroForOne;
  uint128 amountIn;
  uint128 amountOutMinimum;
  bytes hookData;
}

// ============================================================
// FILE: src/libraries/BitMask.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

uint256 constant MASK_1_BIT = 0x1;
uint256 constant MASK_8_BITS = 0xff;
uint256 constant MASK_24_BITS = 0xffffff;
uint256 constant MASK_127_BITS = 0x7fffffffffffffffffffffffffffffff;
uint256 constant MASK_128_BITS = 0xffffffffffffffffffffffffffffffff;
uint160 constant MASK_160_BITS = 0x00ffffffffffffffffffffffffffffffffffffffff;

uint256 constant MASK_BYTES_4 = 0xffffffff00000000000000000000000000000000000000000000000000000000;

// ============================================================
// FILE: src/libraries/uniswapv4/FixedPoint96.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.4.0;

/// @title FixedPoint96
/// @notice A library for handling binary fixed point numbers, see https://en.wikipedia.org/wiki/Q_(number_format)
/// @dev Used in SqrtPriceMath.sol
library FixedPoint96 {
  uint8 internal constant RESOLUTION = 96;
  uint256 internal constant Q96 = 0x1000000000000000000000000;
}

// ============================================================
// FILE: src/libraries/uniswapv4/LiquidityAmounts.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {FixedPoint96} from './FixedPoint96.sol';
import {Math} from 'openzeppelin-contracts/contracts/utils/math/Math.sol';

/// @title Liquidity amount functions
/// @notice Provides functions for computing liquidity amounts from token amounts and prices
library LiquidityAmounts {
  /// @notice Downcasts uint256 to uint128
  /// @param x The uint258 to be downcasted
  /// @return y The passed value, downcasted to uint128
  function toUint128(uint256 x) private pure returns (uint128 y) {
    require((y = uint128(x)) == x);
  }

  /// @notice Computes the amount of liquidity received for a given amount of token0 and price range
  /// @dev Calculates amount0 * (sqrt(upper) * sqrt(lower)) / (sqrt(upper) - sqrt(lower))
  /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
  /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
  /// @param amount0 The amount0 being sent in
  /// @return liquidity The amount of returned liquidity
  function getLiquidityForAmount0(uint160 sqrtRatioAX96, uint160 sqrtRatioBX96, uint256 amount0)
    internal
    pure
    returns (uint128 liquidity)
  {
    if (sqrtRatioAX96 > sqrtRatioBX96) {
      (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
    }
    uint256 intermediate = Math.mulDiv(sqrtRatioAX96, sqrtRatioBX96, FixedPoint96.Q96);
    return toUint128(Math.mulDiv(amount0, intermediate, sqrtRatioBX96 - sqrtRatioAX96));
  }

  /// @notice Computes the amount of liquidity received for a given amount of token1 and price range
  /// @dev Calculates amount1 / (sqrt(upper) - sqrt(lower)).
  /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
  /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
  /// @param amount1 The amount1 being sent in
  /// @return liquidity The amount of returned liquidity
  function getLiquidityForAmount1(uint160 sqrtRatioAX96, uint160 sqrtRatioBX96, uint256 amount1)
    internal
    pure
    returns (uint128 liquidity)
  {
    if (sqrtRatioAX96 > sqrtRatioBX96) {
      (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
    }
    return toUint128(Math.mulDiv(amount1, FixedPoint96.Q96, sqrtRatioBX96 - sqrtRatioAX96));
  }

  /// @notice Computes the maximum amount of liquidity received for a given amount of token0, token1, the current
  /// pool prices and the prices at the tick boundaries
  /// @param sqrtRatioX96 A sqrt price representing the current pool prices
  /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
  /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
  /// @param amount0 The amount of token0 being sent in
  /// @param amount1 The amount of token1 being sent in
  /// @return liquidity The maximum amount of liquidity received
  function getLiquidityForAmounts(
    uint160 sqrtRatioX96,
    uint160 sqrtRatioAX96,
    uint160 sqrtRatioBX96,
    uint256 amount0,
    uint256 amount1
  ) internal pure returns (uint128 liquidity) {
    if (sqrtRatioAX96 > sqrtRatioBX96) {
      (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
    }

    if (sqrtRatioX96 <= sqrtRatioAX96) {
      liquidity = getLiquidityForAmount0(sqrtRatioAX96, sqrtRatioBX96, amount0);
    } else if (sqrtRatioX96 < sqrtRatioBX96) {
      uint128 liquidity0 = getLiquidityForAmount0(sqrtRatioX96, sqrtRatioBX96, amount0);
      uint128 liquidity1 = getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioX96, amount1);

      liquidity = liquidity0 < liquidity1 ? liquidity0 : liquidity1;
    } else {
      liquidity = getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioBX96, amount1);
    }
  }

  /// @notice Computes the amount of token0 for a given amount of liquidity and a price range
  /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
  /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
  /// @param liquidity The liquidity being valued
  /// @return amount0 The amount of token0
  function getAmount0ForLiquidity(uint160 sqrtRatioAX96, uint160 sqrtRatioBX96, uint128 liquidity)
    internal
    pure
    returns (uint256 amount0)
  {
    if (sqrtRatioAX96 > sqrtRatioBX96) {
      (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
    }

    return Math.mulDiv(
      uint256(liquidity) << FixedPoint96.RESOLUTION, sqrtRatioBX96 - sqrtRatioAX96, sqrtRatioBX96
    ) / sqrtRatioAX96;
  }

  /// @notice Computes the amount of token1 for a given amount of liquidity and a price range
  /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
  /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
  /// @param liquidity The liquidity being valued
  /// @return amount1 The amount of token1
  function getAmount1ForLiquidity(uint160 sqrtRatioAX96, uint160 sqrtRatioBX96, uint128 liquidity)
    internal
    pure
    returns (uint256 amount1)
  {
    if (sqrtRatioAX96 > sqrtRatioBX96) {
      (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
    }

    return Math.mulDiv(liquidity, sqrtRatioBX96 - sqrtRatioAX96, FixedPoint96.Q96);
  }

  /// @notice Computes the token0 and token1 value for a given amount of liquidity, the current
  /// pool prices and the prices at the tick boundaries
  /// @param sqrtRatioX96 A sqrt price representing the current pool prices
  /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
  /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
  /// @param liquidity The liquidity being valued
  /// @return amount0 The amount of token0
  /// @return amount1 The amount of token1
  function getAmountsForLiquidity(
    uint160 sqrtRatioX96,
    uint160 sqrtRatioAX96,
    uint160 sqrtRatioBX96,
    uint128 liquidity
  ) internal pure returns (uint256 amount0, uint256 amount1) {
    if (sqrtRatioAX96 > sqrtRatioBX96) {
      (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
    }

    if (sqrtRatioX96 <= sqrtRatioAX96) {
      amount0 = getAmount0ForLiquidity(sqrtRatioAX96, sqrtRatioBX96, liquidity);
    } else if (sqrtRatioX96 < sqrtRatioBX96) {
      amount0 = getAmount0ForLiquidity(sqrtRatioX96, sqrtRatioBX96, liquidity);
      amount1 = getAmount1ForLiquidity(sqrtRatioAX96, sqrtRatioX96, liquidity);
    } else {
      amount1 = getAmount1ForLiquidity(sqrtRatioAX96, sqrtRatioBX96, liquidity);
    }
  }
}

// ============================================================
// FILE: src/libraries/uniswapv4/TickMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.0;

/// @title Math library for computing sqrt prices from ticks and vice versa
/// @notice Computes sqrt price for ticks of size 1.0001, i.e. sqrt(1.0001^tick) as fixed point Q64.96 numbers. Supports
/// prices between 2**-128 and 2**128
library TickMath {
  /// @dev The minimum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**-128
  int24 internal constant MIN_TICK = -887_272;
  /// @dev The maximum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**128
  int24 internal constant MAX_TICK = -MIN_TICK;

  /// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
  uint160 internal constant MIN_SQRT_RATIO = 4_295_128_739;
  /// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
  uint160 internal constant MAX_SQRT_RATIO =
    1_461_446_703_485_210_103_287_273_052_203_988_822_378_723_970_342;

  /// @notice Calculates sqrt(1.0001^tick) * 2^96
  /// @dev Throws if |tick| > max tick
  /// @param tick The input tick for the above formula
  /// @return sqrtP A Fixed point Q64.96 number representing the sqrt of the ratio of the two assets (token1/token0)
  /// at the given tick
  function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtP) {
    unchecked {
      uint256 absTick = uint256(tick < 0 ? -int256(tick) : int256(tick));
      require(absTick <= uint256(int256(MAX_TICK)), 'T');

      // do bitwise comparison, if i-th bit is turned on,
      // multiply ratio by hardcoded values of sqrt(1.0001^-(2^i)) * 2^128
      // where 0 <= i <= 19
      uint256 ratio = (absTick & 0x1 != 0)
        ? 0xfffcb933bd6fad37aa2d162d1a594001
        : 0x100000000000000000000000000000000;
      if (absTick & 0x2 != 0) {
        ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128;
      }
      if (absTick & 0x4 != 0) {
        ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
      }
      if (absTick & 0x8 != 0) {
        ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
      }
      if (absTick & 0x10 != 0) {
        ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128;
      }
      if (absTick & 0x20 != 0) {
        ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
      }
      if (absTick & 0x40 != 0) {
        ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
      }
      if (absTick & 0x80 != 0) {
        ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
      }
      if (absTick & 0x100 != 0) {
        ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
      }
      if (absTick & 0x200 != 0) {
        ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
      }
      if (absTick & 0x400 != 0) {
        ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
      }
      if (absTick & 0x800 != 0) {
        ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
      }
      if (absTick & 0x1000 != 0) {
        ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
      }
      if (absTick & 0x2000 != 0) {
        ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
      }
      if (absTick & 0x4000 != 0) {
        ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
      }
      if (absTick & 0x8000 != 0) {
        ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128;
      }
      if (absTick & 0x10000 != 0) {
        ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
      }
      if (absTick & 0x20000 != 0) {
        ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128;
      }
      if (absTick & 0x40000 != 0) {
        ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128;
      }
      if (absTick & 0x80000 != 0) {
        ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128;
      }

      // take reciprocal for positive tick values
      if (tick > 0) {
        ratio = type(uint256).max / ratio;
      }

      // this divides by 1<<32 rounding up to go from a Q128.128 to a Q128.96.
      // we then downcast because we know the result always fits within 160 bits due to our tick input constraint
      // we round up in the division so getTickAtSqrtRatio of the output price is always consistent
      sqrtP = uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1));
    }
  }

  /// @notice Calculates the greatest tick value such that getRatioAtTick(tick) <= ratio
  /// @dev Throws in case sqrtP < MIN_SQRT_RATIO, as MIN_SQRT_RATIO is the lowest value getRatioAtTick may
  /// ever return.
  /// @param sqrtP The sqrt ratio for which to compute the tick as a Q64.96
  /// @return tick The greatest tick for which the ratio is less than or equal to the input ratio
  function getTickAtSqrtRatio(uint160 sqrtP) internal pure returns (int24 tick) {
    // second inequality must be < because the price can never reach the price at the max tick
    require(sqrtP >= MIN_SQRT_RATIO && sqrtP < MAX_SQRT_RATIO, 'R');
    uint256 ratio = uint256(sqrtP) << 32;

    uint256 r = ratio;
    uint256 msb = 0;

    unchecked {
      assembly ('memory-safe') {
        let f := shl(7, gt(r, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        let f := shl(6, gt(r, 0xFFFFFFFFFFFFFFFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        let f := shl(5, gt(r, 0xFFFFFFFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        let f := shl(4, gt(r, 0xFFFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        let f := shl(3, gt(r, 0xFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        let f := shl(2, gt(r, 0xF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        let f := shl(1, gt(r, 0x3))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        let f := gt(r, 0x1)
        msb := or(msb, f)
      }

      if (msb >= 128) {
        r = ratio >> (msb - 127);
      } else {
        r = ratio << (127 - msb);
      }

      int256 log_2 = (int256(msb) - 128) << 64;

      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(63, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(62, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(61, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(60, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(59, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(58, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(57, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(56, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(55, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(54, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(53, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(52, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(51, f))
        r := shr(f, r)
      }
      assembly ('memory-safe') {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(50, f))
      }

      int256 log_sqrt10001 = log_2 * 255_738_958_999_603_826_347_141; // 128.128 number

      int24 tickLow =
        int24((log_sqrt10001 - 3_402_992_956_809_132_418_596_140_100_660_247_210) >> 128);
      int24 tickHi =
        int24((log_sqrt10001 + 291_339_464_771_989_622_907_027_621_153_398_088_495) >> 128);

      tick = tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtP ? tickHi : tickLow;
    }
  }

  function getMaxNumberTicks(int24 _tickDistance) internal pure returns (uint24 numTicks) {
    return uint24(TickMath.MAX_TICK / _tickDistance) * 2;
  }
}

// ============================================================
// FILE: src/types/ActionData.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {FeeInfo} from './FeeInfo.sol';
import {IntentCoreData} from './IntentCoreData.sol';
import {TokenData} from './TokenData.sol';

/**
 * @notice Data structure for action
 * @param erc20Ids The IDs of the ERC20 tokens in the intent data
 * @param erc20Amounts The amounts of the ERC20 tokens
 * @param erc721Ids The IDs of the ERC721 tokens in the intent data
 * @param feeInfo The fee info for the action
 * @param approvalFlags The approval flags for the tokens
 * @param actionSelectorId The ID of the action selector
 * @param actionCalldata The calldata for the action
 * @param hookActionData The action data for the hook
 * @param extraData The extra data for the action
 * @param deadline The deadline for the action
 * @param nonce The nonce for the action
 */
struct ActionData {
  uint256[] erc20Ids;
  uint256[] erc20Amounts;
  uint256[] erc721Ids;
  FeeInfo feeInfo;
  uint256 approvalFlags;
  uint256 actionSelectorId;
  bytes actionCalldata;
  bytes hookActionData;
  bytes extraData;
  uint256 deadline;
  uint256 nonce;
}

using ActionDataLibrary for ActionData global;

library ActionDataLibrary {
  bytes32 constant ACTION_DATA_TYPE_HASH = keccak256(
    abi.encodePacked(
      'ActionData(uint256[] erc20Ids,uint256[] erc20Amounts,uint256[] erc721Ids,FeeInfo feeInfo,uint256 approvalFlags,uint256 actionSelectorId,bytes actionCalldata,bytes hookActionData,bytes extraData,uint256 deadline,uint256 nonce)FeeInfo(address protocolRecipient,uint256[][] partnerFeeConfigs)'
    )
  );

  function hash(ActionData calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(
        ACTION_DATA_TYPE_HASH,
        keccak256(abi.encodePacked(self.erc20Ids)),
        keccak256(abi.encodePacked(self.erc20Amounts)),
        keccak256(abi.encodePacked(self.erc721Ids)),
        self.feeInfo.hash(),
        self.approvalFlags,
        self.actionSelectorId,
        keccak256(self.actionCalldata),
        keccak256(self.hookActionData),
        keccak256(self.extraData),
        self.deadline,
        self.nonce
      )
    );
  }
}

// ============================================================
// FILE: src/types/ConditionTree.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

type ConditionType is bytes32;

enum OperationType {
  AND,
  OR
}

/**
 * @param conditionType the type of the condition
 * @param data the data of the condition
 */
struct Condition {
  ConditionType conditionType;
  bytes data;
}

/**
 * @param operationType the type of the operation (AND or OR)
 * @param condition the condition to be validated
 * @param childrenIndexes the indexes of the children nodes (if the node is a leaf, this is empty)
 */
struct Node {
  OperationType operationType;
  Condition condition;
  uint256[] childrenIndexes;
}

/**
 * @param nodes the nodes of the condition tree
 * @param additionalData the additional data to be validated or used for validation for each node (should be empty for non-leaf nodes)
 */
struct ConditionTree {
  Node[] nodes;
  bytes[] additionalData;
}

using ConditionTreeLibrary for ConditionTree global;
using ConditionTreeLibrary for Node global;
using ConditionTreeLibrary for Condition global;

/**
 * @notice Library for condition tree evaluation
 */
library ConditionTreeLibrary {
  error InvalidNodeIndex();
  error WrongOperationType();

  OperationType public constant AND = OperationType.AND;
  OperationType public constant OR = OperationType.OR;

  /**
   * @notice Recursively evaluates a node in a condition tree
   * @dev The algorithm assumes that the condition tree structure is valid, meaning:
   *      - No cycle paths exist in the tree
   *      - Each node is only visited once during traversal
   *      - All childrenIndexes point to valid nodes within the array bounds
   *      Invalid tree structures could lead to revert, or invalid results.
   * @param tree the condition tree to be evaluated
   * @param curIndex index of current node to evaluate (must be < nodes.length and != childIndex)
   * @param evaluateCondition the custom function holding the logic for evaluating the condition of the leaf node
   * @return true if the condition tree is satisfied, false otherwise
   */
  function evaluateConditionTree(
    ConditionTree calldata tree,
    uint256 curIndex,
    function(Condition calldata, bytes calldata) view returns (bool) evaluateCondition
  ) internal view returns (bool) {
    require(curIndex < tree.nodes.length, InvalidNodeIndex());
    Node calldata node = tree.nodes[curIndex];

    if (node.isLeaf()) {
      return evaluateCondition(node.condition, tree.additionalData[curIndex]);
    }

    // non-leaf node
    uint256 length = node.childrenIndexes.length;
    uint256 childIndex;
    if (node.operationType == AND) {
      for (uint256 i; i < length; ++i) {
        childIndex = node.childrenIndexes[i];
        if (!tree.evaluateConditionTree(childIndex, evaluateCondition)) {
          return false;
        }
      }
      return true;
    } else if (node.operationType == OR) {
      for (uint256 i; i < length; ++i) {
        childIndex = node.childrenIndexes[i];
        if (tree.evaluateConditionTree(childIndex, evaluateCondition)) {
          return true;
        }
      }
      return false;
    } else {
      revert WrongOperationType();
    }
  }

  /**
   * @notice Checks if a node is a leaf node
   * @param node the node to check
   * @return true if the node is a leaf node, false otherwise
   */
  function isLeaf(Node calldata node) internal pure returns (bool) {
    return node.childrenIndexes.length == 0;
  }

  /**
   * @notice Checks if a condition is of a specific type
   * @param condition the condition to check
   * @param conditionType the type to check against
   * @return true if the condition is of the specified type, false otherwise
   */
  function isType(Condition calldata condition, ConditionType conditionType)
    internal
    pure
    returns (bool)
  {
    return ConditionType.unwrap(condition.conditionType) == ConditionType.unwrap(conditionType);
  }
}

// ============================================================
// FILE: src/types/ERC20Data.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IKSGenericForwarder} from 'ks-common-sc/src/interfaces/IKSGenericForwarder.sol';
import {PermitHelper} from 'ks-common-sc/src/libraries/token/PermitHelper.sol';
import {TokenHelper} from 'ks-common-sc/src/libraries/token/TokenHelper.sol';

import {IKSSmartIntentRouter} from '../interfaces/IKSSmartIntentRouter.sol';
import {FeeConfig, FeeInfo, FeeInfoLibrary} from './FeeInfo.sol';

import {IERC20} from 'openzeppelin-contracts/contracts/token/ERC20/IERC20.sol';

/**
 * @notice Data structure for ERC20 token
 * @param token The address of the ERC20 token
 * @param amount The amount of the ERC20 token
 * @param permitData The permit data for the ERC20 token
 */
struct ERC20Data {
  address token;
  uint256 amount;
  bytes permitData;
}

using ERC20DataLibrary for ERC20Data global;

library ERC20DataLibrary {
  using PermitHelper for address;
  using TokenHelper for address;

  bytes32 constant ERC20_DATA_TYPE_HASH =
    keccak256(abi.encodePacked('ERC20Data(address token,uint256 amount,bytes permitData)'));

  function hash(ERC20Data calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(ERC20_DATA_TYPE_HASH, self.token, self.amount, keccak256(self.permitData))
    );
  }

  function collect(
    address token,
    uint256 amount,
    address mainAddress,
    address actionContract,
    uint256 fee,
    bool approvalFlag,
    IKSGenericForwarder forwarder,
    FeeConfig[] calldata partnerFeeConfigs,
    address protocolRecipient
  ) internal {
    if (address(forwarder) == address(0)) {
      token.safeTransferFrom(mainAddress, address(this), amount - fee);
      if (approvalFlag) {
        token.forceApprove(actionContract, type(uint256).max);
      }
    } else {
      token.safeTransferFrom(mainAddress, address(forwarder), amount - fee);
      if (approvalFlag) {
        _forwardApproveInf(forwarder, token, actionContract);
      }
    }

    (uint256 protocolFeeAmount, uint256[] memory partnersFeeAmounts) =
      FeeInfoLibrary.computeFees(partnerFeeConfigs, fee);

    uint256 protocolTotalReceived = protocolFeeAmount;
    for (uint256 i = 0; i < partnersFeeAmounts.length; i++) {
      if (partnerFeeConfigs[i].feeMode()) {
        protocolTotalReceived += partnersFeeAmounts[i];
      } else {
        token.safeTransferFrom(
          mainAddress, partnerFeeConfigs[i].partnerRecipient(), partnersFeeAmounts[i]
        );
      }
    }
    token.safeTransferFrom(mainAddress, protocolRecipient, protocolTotalReceived);

    emit IKSSmartIntentRouter.RecordVolumeAndFees(
      token,
      protocolRecipient,
      partnerFeeConfigs,
      protocolFeeAmount,
      partnersFeeAmounts,
      true,
      amount
    );
  }

  function collectFeeAfterExecution(
    address token,
    uint256 amount,
    uint256 fee,
    FeeConfig[] calldata partnerFeeConfigs,
    address protocolRecipient
  ) internal {
    (uint256 protocolFeeAmount, uint256[] memory partnersFeeAmounts) =
      FeeInfoLibrary.computeFees(partnerFeeConfigs, fee);

    uint256 protocolTotalReceived = protocolFeeAmount;
    for (uint256 i = 0; i < partnersFeeAmounts.length; i++) {
      if (partnerFeeConfigs[i].feeMode()) {
        protocolTotalReceived += partnersFeeAmounts[i];
      } else {
        token.safeTransfer(partnerFeeConfigs[i].partnerRecipient(), partnersFeeAmounts[i]);
      }
    }
    token.safeTransfer(protocolRecipient, protocolTotalReceived);

    emit IKSSmartIntentRouter.RecordVolumeAndFees(
      token,
      protocolRecipient,
      partnerFeeConfigs,
      protocolFeeAmount,
      partnersFeeAmounts,
      false,
      amount
    );
  }

  function _forwardApproveInf(IKSGenericForwarder forwarder, address token, address spender)
    internal
  {
    bytes memory approveCalldata = abi.encodeCall(IERC20.approve, (spender, type(uint256).max));
    try forwarder.forward(token, approveCalldata) {}
    catch {
      approveCalldata = abi.encodeCall(IERC20.approve, (spender, 0));
      forwarder.forward(token, approveCalldata);
      approveCalldata = abi.encodeCall(IERC20.approve, (spender, type(uint256).max));
      forwarder.forward(token, approveCalldata);
    }
  }
}

// ============================================================
// FILE: src/types/ERC721Data.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IKSGenericForwarder} from 'ks-common-sc/src/interfaces/IKSGenericForwarder.sol';
import {PermitHelper} from 'ks-common-sc/src/libraries/token/PermitHelper.sol';

import {IERC721} from 'openzeppelin-contracts/contracts/interfaces/IERC721.sol';

/**
 * @notice Data structure for ERC721 token
 * @param token The address of the ERC721 token
 * @param tokenId The ID of the ERC721 token
 * @param permitData The permit data for the ERC721 token
 */
struct ERC721Data {
  address token;
  uint256 tokenId;
  bytes permitData;
}

using ERC721DataLibrary for ERC721Data global;

library ERC721DataLibrary {
  using PermitHelper for address;

  bytes32 constant ERC721_DATA_TYPE_HASH =
    keccak256(abi.encodePacked('ERC721Data(address token,uint256 tokenId,bytes permitData)'));

  function hash(ERC721Data calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(ERC721_DATA_TYPE_HASH, self.token, self.tokenId, keccak256(self.permitData))
    );
  }

  function collect(
    address token,
    uint256 tokenId,
    address mainAddress,
    address actionContract,
    IKSGenericForwarder forwarder,
    bool approvalFlag
  ) internal {
    if (address(forwarder) == address(0)) {
      IERC721(token).safeTransferFrom(mainAddress, address(this), tokenId);
      if (approvalFlag) {
        IERC721(token).approve(actionContract, tokenId);
      }
    } else {
      IERC721(token).safeTransferFrom(mainAddress, address(forwarder), tokenId);
      if (approvalFlag) {
        bytes memory approveCalldata = abi.encodeCall(IERC721.approve, (actionContract, tokenId));
        forwarder.forward(token, approveCalldata);
      }
    }
  }
}

// ============================================================
// FILE: src/types/FeeInfo.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IKSSmartIntentRouter} from '../interfaces/IKSSmartIntentRouter.sol';

import '../libraries/BitMask.sol';
/**
 * @notice FeeConfig is packed version of solidity structure.
 *
 * Layout: 1 bit feeMode | 24 bits partnerFee | 160 bits partnerRecipient
 */

type FeeConfig is uint256;

/**
 * @notice FeeInfo is a struct that contains the protocol recipient and the fee configs for the partners
 * @param protocolRecipient The protocol recipient
 * @param partnerFeeConfigs The fee configs for the partners
 */
struct FeeInfo {
  address protocolRecipient;
  FeeConfig[][] partnerFeeConfigs;
}

using FeeInfoLibrary for FeeInfo global;
using FeeInfoLibrary for FeeConfig global;

library FeeInfoLibrary {
  uint256 internal constant PROTOCOL_BPS_OFFSET = 160;
  uint256 internal constant FEE_MODE_OFFSET = 184;
  uint256 internal constant FEE_DENOMINATOR = 1_000_000;

  bytes32 constant FEE_INFO_TYPE_HASH =
    keccak256(abi.encodePacked('FeeInfo(address protocolRecipient,uint256[][] partnerFeeConfigs)'));

  function feeMode(FeeConfig self) internal pure returns (bool _feeMode) {
    assembly ('memory-safe') {
      _feeMode := and(shr(FEE_MODE_OFFSET, self), MASK_1_BIT)
    }
  }

  function partnerFee(FeeConfig self) internal pure returns (uint24 _partnerFee) {
    assembly ('memory-safe') {
      _partnerFee := and(shr(PROTOCOL_BPS_OFFSET, self), MASK_24_BITS)
    }
  }

  function partnerRecipient(FeeConfig self) internal pure returns (address _partnerRecipient) {
    assembly ('memory-safe') {
      _partnerRecipient := and(self, MASK_160_BITS)
    }
  }

  function computeFees(FeeConfig[] calldata self, uint256 totalAmount)
    internal
    pure
    returns (uint256 protocolFeeAmount, uint256[] memory partnersFeeAmounts)
  {
    unchecked {
      partnersFeeAmounts = new uint256[](self.length);
      uint256 _totalPartnerFeePrecision;
      uint256 _totalPartnerFeeAmount;
      uint256 _feeAmount;
      uint24 _partnerFee;

      for (uint256 i = 0; i < self.length; i++) {
        _partnerFee = self[i].partnerFee();
        _feeAmount = (totalAmount * _partnerFee) / FEE_DENOMINATOR;
        partnersFeeAmounts[i] = _feeAmount;

        _totalPartnerFeePrecision += _partnerFee;
        _totalPartnerFeeAmount += _feeAmount;
      }
      protocolFeeAmount = totalAmount - _totalPartnerFeeAmount;

      require(_totalPartnerFeePrecision <= FEE_DENOMINATOR, IKSSmartIntentRouter.InvalidFeeConfig());
    }
  }

  function hash(FeeInfo calldata self) internal pure returns (bytes32) {
    bytes32[] memory partnersFeeConfigsHashes = new bytes32[](self.partnerFeeConfigs.length);
    for (uint256 i = 0; i < self.partnerFeeConfigs.length; i++) {
      partnersFeeConfigsHashes[i] = keccak256(abi.encodePacked(self.partnerFeeConfigs[i]));
    }
    return keccak256(
      abi.encode(
        FEE_INFO_TYPE_HASH,
        self.protocolRecipient,
        keccak256(abi.encodePacked(partnersFeeConfigsHashes))
      )
    );
  }
}

// ============================================================
// FILE: src/types/IntentCoreData.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

/**
 * @notice Data structure for core components of intent
 * @param mainAddress The main address
 * @param signatureVerifier The address of the signature verifier
 * @param delegatedKey The delegated key
 * @param actionContracts The addresses of the action contracts
 * @param actionSelectors The selectors of the action functions
 * @param hook The address of the hook
 * @param hookIntentData The intent data for the hook
 */
struct IntentCoreData {
  address mainAddress;
  address signatureVerifier;
  bytes delegatedKey;
  address[] actionContracts;
  bytes4[] actionSelectors;
  address hook;
  bytes hookIntentData;
}

using IntentCoreDataLibrary for IntentCoreData global;

library IntentCoreDataLibrary {
  bytes32 constant INTENT_CORE_DATA_TYPE_HASH = keccak256(
    abi.encodePacked(
      'IntentCoreData(address mainAddress,address signatureVerifier,bytes delegatedKey,address[] actionContracts,bytes4[] actionSelectors,address hook,bytes hookIntentData)'
    )
  );

  function hash(IntentCoreData calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(
        INTENT_CORE_DATA_TYPE_HASH,
        self.mainAddress,
        self.signatureVerifier,
        keccak256(self.delegatedKey),
        keccak256(abi.encodePacked(self.actionContracts)),
        keccak256(abi.encodePacked(self.actionSelectors)),
        self.hook,
        keccak256(self.hookIntentData)
      )
    );
  }
}

// ============================================================
// FILE: src/types/IntentData.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IntentCoreData} from './IntentCoreData.sol';
import {TokenData} from './TokenData.sol';

/**
 * @notice Data structure for intent data
 * @param coreData The core data for the intent
 * @param tokenData The token data for the intent
 * @param extraData The extra data for the intent
 */
struct IntentData {
  IntentCoreData coreData;
  TokenData tokenData;
  bytes extraData;
}

using IntentDataLibrary for IntentData global;

library IntentDataLibrary {
  bytes32 constant INTENT_DATA_TYPE_HASH = keccak256(
    abi.encodePacked(
      'IntentData(IntentCoreData coreData,TokenData tokenData,bytes extraData)ERC20Data(address token,uint256 amount,bytes permitData)ERC721Data(address token,uint256 tokenId,bytes permitData)IntentCoreData(address mainAddress,address signatureVerifier,bytes delegatedKey,address[] actionContracts,bytes4[] actionSelectors,address hook,bytes hookIntentData)TokenData(ERC20Data[] erc20Data,ERC721Data[] erc721Data)'
    )
  );

  function hash(IntentData calldata self) internal pure returns (bytes32) {
    return keccak256(
      abi.encode(
        INTENT_DATA_TYPE_HASH,
        self.coreData.hash(),
        self.tokenData.hash(),
        keccak256(self.extraData)
      )
    );
  }
}

// ============================================================
// FILE: src/types/TokenData.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ERC20Data} from './ERC20Data.sol';
import {ERC721Data} from './ERC721Data.sol';

struct TokenData {
  ERC20Data[] erc20Data;
  ERC721Data[] erc721Data;
}

using TokenDataLibrary for TokenData global;

library TokenDataLibrary {
  bytes32 constant TOKEN_DATA_TYPE_HASH = keccak256(
    abi.encodePacked(
      'TokenData(ERC20Data[] erc20Data,ERC721Data[] erc721Data)ERC20Data(address token,uint256 amount,bytes permitData)ERC721Data(address token,uint256 tokenId,bytes permitData)'
    )
  );

  function hash(TokenData calldata self) internal pure returns (bytes32) {
    bytes32[] memory erc20DataHashes = new bytes32[](self.erc20Data.length);
    for (uint256 i = 0; i < self.erc20Data.length; i++) {
      erc20DataHashes[i] = self.erc20Data[i].hash();
    }

    bytes32[] memory erc721DataHashes = new bytes32[](self.erc721Data.length);
    for (uint256 i = 0; i < self.erc721Data.length; i++) {
      erc721DataHashes[i] = self.erc721Data[i].hash();
    }

    return keccak256(
      abi.encode(
        TOKEN_DATA_TYPE_HASH,
        keccak256(abi.encodePacked(erc20DataHashes)),
        keccak256(abi.encodePacked(erc721DataHashes))
      )
    );
  }
}
