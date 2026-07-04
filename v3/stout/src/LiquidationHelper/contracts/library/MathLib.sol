// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title MathLib
 * @dev Library for safe mathematical operations and array comparisons
 * @notice This library provides utility functions for:
 * 1. Finding maximum/minimum values in arrays
 * 2. Comparing pairs of numbers
 * 3. Safe subtraction with zero floor protection
 */
library MathLib {
    /*//////////////////////////////////////////////////////////////
                            ARRAY OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Finds the maximum value in an array
     * @param values Array of values to compare
     * @return uint256 Maximum value in the array
     * @dev
     * · Assumes array is not empty. First value is used as initial max.
     * · Reverts if input array is empty
     * · O(n) time complexity, where n is array length
     * · Useful for scenarios like tracking highest bid, maximum allocation, etc.
     */
    function max(uint256[] memory values) internal pure returns (uint256) {
        uint256 maxValue = values[0];
        uint256 length = values.length;
        for (uint256 i = 1; i < length; i++) {
            if (values[i] > maxValue) {
                maxValue = values[i];
            }
        }
        return maxValue;
    }

    /**
     * @notice Finds the minimum value in an array
     * @param values Array of values to compare
     * @return uint256 Minimum value in the array
     * @dev
     * · Assumes array is not empty. First value is used as initial min.
     * · Reverts if input array is empty
     * · O(n) time complexity, where n is array length
     * · Useful for scenarios like finding lowest price, minimum threshold, etc.
     */
    function min(uint256[] memory values) internal pure returns (uint256) {
        uint256 minValue = values[0];
        uint256 length = values.length;
        for (uint256 i = 1; i < length; i++) {
            if (values[i] < minValue) {
                minValue = values[i];
            }
        }
        return minValue;
    }

    /*//////////////////////////////////////////////////////////////
                         COMPARISON OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Returns the larger of two values
     * @param a First value to compare
     * @param b Second value to compare
     * @return uint256 Maximum between a and b
     * @dev Uses ternary operator for gas efficiency
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @notice Returns the smaller of two values
     * @param a First value to compare
     * @param b Second value to compare
     * @return uint256 Minimum between a and b
     * @dev Uses ternary operator for gas efficiency
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /*//////////////////////////////////////////////////////////////
                          ARITHMETIC OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Performs subtraction with a zero floor
     * @param a Value to subtract from
     * @param b Value to subtract
     * @return uint256 Result of (a - b) if a > b, otherwise 0
     * @dev Prevents underflow by returning 0 instead of reverting
     */
    function subWithZeroFloor(
        uint256 a,
        uint256 b
    ) internal pure returns (uint256) {
        return a > b ? a - b : 0;
    }
}
