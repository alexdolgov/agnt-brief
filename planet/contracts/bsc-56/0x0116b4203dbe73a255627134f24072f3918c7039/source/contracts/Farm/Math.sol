pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

/// @title Math Library
library Math {
    /// @notice Calculates the square root of a given number using the Babylonian method (also known as Heron's method) 
    /// for computing the square root of a number (https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
    /// @param y The number for which the square root is to be calculated
    /// @return z The calculated square root of the input number
    /// @dev The Babylonian method is an iterative algorithm for finding the square root of a number, which involves repeatedly improving the approximation of the root
    /// @dev This function handles edge cases where the input is less than 4, ensuring proper calculation or defaulting to 1 when necessary
    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint x = (y >> 1) + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) >> 1;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

}
