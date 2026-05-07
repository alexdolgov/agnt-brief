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
