// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.7.6;

import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";

import "../base/Constants.sol";

/// @title PctMath Library
/// @notice A pure library for dealing with percentage values
/// @dev Percentages are represented as multiplied by PCT_DIVISOR
///      to account for rounding errors e.g.:
///      1% = 100
///      100% = 10000
///
/// Error Codes:
///     DZ - Division by zero
library PctMath {
    using SafeMath for uint256;

    /// @notice Calculates a percentage of a given amount
    /// @param _amount Amount to take the percentage of
    /// @param _fracNum Numerator of fraction representing the percentage with PCT_DIVISOR as the denominator
    /// @return result The calculated percentage of the amount
    function pctOf(uint256 _amount, uint256 _fracNum) internal pure returns (uint256 result) {
        result = _amount.mul(_fracNum).div(PCT_DIVISOR);
    }

    /// @notice Converts a fraction (numerator and denominator) into a percentage-value
    /// @param _numerator The numerator of the fraction
    /// @param _denominator The denominator of the fraction
    /// @return result A representation of the ratio as a percentage
    function percent(uint256 _numerator, uint256 _denominator) internal pure returns (uint256 result) {
        require(_denominator > 0, "DZ");
        result = _numerator.mul(PCT_DIVISOR).div(_denominator);
    }

    /// @notice For a given value and its corresponding percentage, computes the equivalent 100% value
    /// @dev e.g., if 50 represents 25% of a supply, this function returns 200
    /// @param _value The value that corresponds to the given percentage
    /// @param _pct The percentage this value represents
    /// @return result The equivalent 100% amount
    function to100PctOf(uint256 _value, uint256 _pct) internal pure returns (uint256 result) {
        require(_pct > 0, "DZ");
        result = _value.mul(PCT_DIVISOR).div(_pct);
    }

    /// @notice Checks if a given value is a valid percentage (i.e., less than or equal to 100%)
    /// @param _pct The percentage value to check
    /// @return isValidPct True if the percentage is valid, false otherwise
    function isValid(uint256 _pct) internal pure returns (bool isValidPct) {
        isValidPct = _pct <= PCT_DIVISOR;
    }
}
