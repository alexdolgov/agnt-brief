// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

library SafeMath {

    uint256 constant UMAX = 2 ** 255 - 1;
    int256  constant IMIN = -2 ** 255;

    function utoi(uint256 a) internal pure returns (int256) {
        require(a <= UMAX, 'SafeMath.utoi: overflow');
        return int256(a);
    }

    function itou(int256 a) internal pure returns (uint256) {
        require(a >= 0, 'SafeMath.itou: underflow');
        return uint256(a);
    }

    function abs(int256 a) internal pure returns (int256) {
        require(a != IMIN, 'SafeMath.abs: overflow');
        return a >= 0 ? a : -a;
    }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function max(int256 a, int256 b) internal pure returns (int256) {
        return a >= b ? a : b;
    }

    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a <= b ? a : b;
    }

    function min(int256 a, int256 b) internal pure returns (int256) {
        return a <= b ? a : b;
    }

    // rescale a uint256 from base 10**decimals1 to 10**decimals2
    function rescale(uint256 a, uint256 decimals1, uint256 decimals2) internal pure returns (uint256) {
        return decimals1 == decimals2 ? a : a * 10**decimals2 / 10**decimals1;
    }

    // rescale towards zero
    // b: rescaled value in decimals2
    // c: the remainder
    function rescaleDown(uint256 a, uint256 decimals1, uint256 decimals2) internal pure returns (uint256 b, uint256 c) {
        b = rescale(a, decimals1, decimals2);
        c = a - rescale(b, decimals2, decimals1);
    }

    // rescale towards infinity
    // b: rescaled value in decimals2
    // c: the excessive
    function rescaleUp(uint256 a, uint256 decimals1, uint256 decimals2) internal pure returns (uint256 b, uint256 c) {
        b = rescale(a, decimals1, decimals2);
        uint256 d = rescale(b, decimals2, decimals1);
        if (d != a) {
            b += 1;
            c = rescale(b, decimals2, decimals1) - a;
        }
    }

    /// @notice Calculates floor(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv
    function mulDiv(
        uint256 a,
        uint256 b,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = a * b
            // Compute the product mod 2**256 and mod 2**256 - 1
            // then use the Chinese Remainder Theorem to reconstruct
            // the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2**256 + prod0
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(a, b, not(0))
                prod0 := mul(a, b)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division
            if (prod1 == 0) {
                require(denominator > 0);
                assembly {
                    result := div(prod0, denominator)
                }
                return result;
            }

            // Make sure the result is less than 2**256.
            // Also prevents denominator == 0
            require(denominator > prod1);

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0]
            // Compute remainder using mulmod
            uint256 remainder;
            assembly {
                remainder := mulmod(a, b, denominator)
            }
            // Subtract 256 bit number from 512 bit number
            assembly {
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator
            // Compute largest power of two divisor of denominator.
            // Always >= 1.
            uint256 twos = (0 - denominator) & denominator;
            // Divide denominator by power of two
            assembly {
                denominator := div(denominator, twos)
            }

            // Divide [prod1 prod0] by the factors of two
            assembly {
                prod0 := div(prod0, twos)
            }
            // Shift in bits from prod1 into prod0. For this we need
            // to flip `twos` such that it is 2**256 / twos.
            // If twos is zero, then it becomes one
            assembly {
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
            // correct result modulo 2**256. Since the precoditions guarantee
            // that the outcome is less than 2**256, this is the final result.
            // We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inv;
            return result;
        }
    }

    /// @notice Multiplies two numbers and divides by a third, rounding up
    /// @param a First multiplicand
    /// @param b Second multiplicand
    /// @param denominator Denominator to divide by
    /// @return result The result, rounded up
    function mulDivCeil(
        uint256 a,
        uint256 b,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        unchecked {
            result = mulDiv(a, b, denominator);
            if (mulmod(a, b, denominator) > 0) {
                require(result < type(uint256).max);
                result++;
            }
        }
    }

    /// @notice Multiplies two int256 numbers and divides by a third, rounding down towards zero
    /// @param a First multiplicand
    /// @param b Second multiplicand
    /// @param denominator Denominator to divide by (must be positive)
    /// @return result The result, rounded towards zero
    function mulDiv(
        int256 a,
        int256 b,
        int256 denominator
    ) internal pure returns (int256 result) {
        // Get the absolute values
        uint256 absA = a >= 0 ? uint256(a) : uint256(-a);
        uint256 absB = b >= 0 ? uint256(b) : uint256(-b);
        uint256 absDenominator = denominator >= 0 ? uint256(denominator) : uint256(-denominator);

        // Compute the absolute value of the result
        uint256 absResult = mulDiv(absA, absB, absDenominator);

        // Determine the sign of the result
        uint8 signCount = (a < 0 ? 1 : 0) + (b < 0 ? 1 : 0) + (denominator < 0 ? 1 : 0);
        bool isNegative = signCount % 2 == 1;
        
        // Convert back to signed, checking for overflow
        if (isNegative) {
            require(absResult <= uint256(type(int256).max) + 1, "SafeMath: multiplication overflow");
            result = -int256(absResult);
        } else {
            require(absResult <= uint256(type(int256).max), "SafeMath: multiplication overflow");
            result = int256(absResult);
        }
    }

    /// @notice Multiplies two int256 numbers and divides by a third, rounding up away from zero
    /// @param a First multiplicand
    /// @param b Second multiplicand
    /// @param denominator Denominator to divide by (must be positive)
    /// @return result The result, rounded away from zero
    function mulDivCeil(
        int256 a,
        int256 b,
        int256 denominator
    ) internal pure returns (int256 result) {
        // Get the absolute values
        uint256 absA = a >= 0 ? uint256(a) : uint256(-a);
        uint256 absB = b >= 0 ? uint256(b) : uint256(-b);
        uint256 absDenominator = denominator >= 0 ? uint256(denominator) : uint256(-denominator);

        // Compute the absolute value of the result
        uint256 absResult = mulDivCeil(absA, absB, absDenominator);

        // Determine the sign of the result
        uint8 signCount = (a < 0 ? 1 : 0) + (b < 0 ? 1 : 0) + (denominator < 0 ? 1 : 0);
        bool isNegative = signCount % 2 == 1;   
        
        // Convert back to signed, checking for overflow
        if (isNegative) {
            require(absResult <= uint256(type(int256).max) + 1, "SafeMath: multiplication overflow");
            result = -int256(absResult);
        } else {
            require(absResult <= uint256(type(int256).max), "SafeMath: multiplication overflow");
            result = int256(absResult);
        }
    }

}
