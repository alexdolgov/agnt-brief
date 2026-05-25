// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import { FixedPointMathLib } from "solady-0.1/utils/FixedPointMathLib.sol";
import { SafeCastLib } from "solady-0.1/utils/SafeCastLib.sol";

/**
 * @title Math Utils Extension
 * @notice This library extends `FixedPointMathLib` and `SafeCastLib` from `solady` for `uint128`.
 */
library MathUtils {
    using SafeCastLib for uint256;

    /**
     * @notice Calculates `floor(x * y / d)` with full precision.
     * @dev Reverts if the result overflows uint256 or if `d` is zero.
     * @param x The first operand of the multiplication.
     * @param y The second operand of the multiplication.
     * @param d The divisor.
     * @return z_ The result `floor(x * y / d)`.
     */
    function fullMulDiv(uint128 x, uint256 y, uint256 d) internal pure returns (uint256 z_) {
        z_ = FixedPointMathLib.fullMulDiv(x, y, d);
    }

    /**
     * @notice Calculates `floor(x * y / d)` with full precision and safely casts the result to uint128.
     * @dev Reverts if the result overflows uint128 or if `d` is zero.
     * @param x The first operand of the multiplication.
     * @param y The second operand of the multiplication.
     * @param d The divisor.
     * @return z_ The result `floor(x * y / d)`.
     */
    function fullMulDivChecked(uint128 x, uint256 y, uint256 d) internal pure returns (uint128 z_) {
        z_ = FixedPointMathLib.fullMulDiv(x, y, d).toUint128();
    }

    /**
     * @notice Calculates `ceil(x * y / d)` with full precision.
     * @dev Reverts if the result overflows uint256 or if `d` is zero.
     * @param x The first operand of the multiplication.
     * @param y The second operand of the multiplication.
     * @param d The divisor.
     * @return z_ The result `ceil(x * y / d)`.
     */
    function fullMulDivUp(uint128 x, uint256 y, uint256 d) internal pure returns (uint256 z_) {
        z_ = FixedPointMathLib.fullMulDivUp(x, y, d);
    }

    /**
     * @notice Calculates `ceil(x * y / d)` with full precision and safely casts the result to uint128.
     * @dev Reverts if the result overflows uint128 or if `d` is zero.
     * @param x The first operand of the multiplication.
     * @param y The second operand of the multiplication.
     * @param d The divisor.
     * @return z_ The result `ceil(x * y / d)`.
     */
    function fullMulDivUpChecked(uint128 x, uint256 y, uint256 d) internal pure returns (uint128 z_) {
        z_ = FixedPointMathLib.fullMulDivUp(x, y, d).toUint128();
    }

    /**
     * @notice Calculates `floor(x * y / d)`.
     * @dev Reverts if `d` is zero.
     * @param x The first operand of the multiplication.
     * @param y The second operand of the multiplication.
     * @param d The divisor.
     * @return z_ The result `floor(x * y / d)`.
     */
    function mulDiv(uint128 x, uint128 y, uint256 d) internal pure returns (uint256 z_) {
        z_ = FixedPointMathLib.mulDiv(x, y, d);
    }

    /**
     * @notice Calculates `floor(x * y / d)` and safely casts the result to uint128.
     * @dev Reverts if the result overflows uint128 or if `d` is zero.
     * @param x The first operand of the multiplication.
     * @param y The second operand of the multiplication.
     * @param d The divisor.
     * @return z_ The result `floor(x * y / d)`.
     */
    function mulDivChecked(uint128 x, uint128 y, uint256 d) internal pure returns (uint128 z_) {
        z_ = FixedPointMathLib.mulDiv(x, y, d).toUint128();
    }

    /**
     * @notice Calculates `floor(x * y / d)` and unsafely casts the result to uint128.
     * @dev Reverts if `d` is zero, but has undefined behavior if the result overflows uint128.
     * @param x The first operand of the multiplication.
     * @param y The second operand of the multiplication.
     * @param d The divisor.
     * @return z_ The result `floor(x * y / d)`.
     */
    function mulDivUnchecked(uint128 x, uint128 y, uint256 d) internal pure returns (uint128 z_) {
        z_ = uint128(FixedPointMathLib.mulDiv(x, y, d));
    }

    /**
     * @notice Calculates `ceil(x * y / d)`.
     * @dev Reverts if `d` is zero.
     * @param x The first operand of the multiplication.
     * @param y The second operand of the multiplication.
     * @param d The divisor.
     * @return z_ The result `ceil(x * y / d)`.
     */
    function mulDivUp(uint128 x, uint128 y, uint256 d) internal pure returns (uint256 z_) {
        z_ = FixedPointMathLib.mulDivUp(x, y, d);
    }

    /**
     * @notice Calculates `ceil(x * y / d)` and safely casts the result to uint128.
     * @dev Reverts if the result overflows uint128 or if `d` is zero.
     * @param x The first operand of the multiplication.
     * @param y The second operand of the multiplication.
     * @param d The divisor.
     * @return z_ The result `ceil(x * y / d)`.
     */
    function mulDivUpChecked(uint128 x, uint128 y, uint256 d) internal pure returns (uint128 z_) {
        z_ = FixedPointMathLib.mulDivUp(x, y, d).toUint128();
    }

    /**
     * @notice Returns the minimum of `x` and `y`.
     * @param x The first operand.
     * @param y The second operand.
     * @return z_ The minimum of `x` and `y`.
     */
    function min(uint128 x, uint128 y) internal pure returns (uint128 z_) {
        z_ = uint128(FixedPointMathLib.min(x, y));
    }

    /**
     * @notice Returns the maximum of `x` and `y`.
     * @param x The first operand.
     * @param y The second operand.
     * @return z_ The maximum of `x` and `y`.
     */
    function max(uint128 x, uint128 y) internal pure returns (uint128 z_) {
        z_ = uint128(FixedPointMathLib.max(x, y));
    }

    /**
     * @notice Returns `x + y`, without checking for overflow.
     * @param x The first operand.
     * @param y The second operand.
     * @return z_ The addition of `x` and `y`.
     */
    function rawAdd(uint128 x, uint128 y) internal pure returns (uint128 z_) {
        unchecked {
            // SAFETY: the caller assumes safety
            z_ = x + y;
        }
    }

    /**
     * @notice Returns `x - y`, without checking for underflow.
     * @param x The first operand.
     * @param y The second operand.
     * @return z_ The subtraction of `x` and `y`.
     */
    function rawSub(uint128 x, uint128 y) internal pure returns (uint128 z_) {
        unchecked {
            // SAFETY: the caller assumes safety
            z_ = x - y;
        }
    }

    /**
     * @notice Casts an uint128 to int256.
     * @param x The number to cast.
     * @return z_ The number as an int256.
     */
    function toInt256(uint128 x) internal pure returns (int256 z_) {
        z_ = int256(uint256(x));
    }
}
