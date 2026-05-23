// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.24;

/**
 * @title Interest
 * @dev Library for converting between yearly and per-second interest rates
 * @notice All calculations assume a 365-day year
 */
library Interest {
    /**
     * @notice Converts a yearly interest rate to a per-second interest rate
     * @dev Assumes a 365-day year
     * @param yearly The yearly interest rate (in wei)
     * @return The equivalent per-second interest rate (in wei)
     */
    function _yearlyInterestToPerSecond(
        uint256 yearly
    ) internal pure returns (uint256) {
        return yearly / 365 days;
    }

    /**
     * @notice Converts a per-second interest rate to a yearly interest rate
     * @dev Assumes a 365-day year
     * @param intPs The per-second interest rate (in wei)
     * @return The equivalent yearly interest rate (in wei)
     */
    function _interestPerSecondToYearly(
        uint256 intPs
    ) internal pure returns (uint256) {
        return intPs * 365 days;
    }
}