// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

library DateUtils {
    error PastExpirationDate(uint256 expirationDate);
    error TooBigExpirationDate(uint256 expirationDate, uint256 maxAllowedDate);

    /**
     * Used to perform a defensive check during mint & renewals.
     * Uses 366 days to account for potential leap years.
     */
    uint256 internal constant _TEN_YEARS = 10 * 366 days;

    function validateExpirationDate(uint256 expiresAt) internal view {
        if (expiresAt < block.timestamp) {
            revert PastExpirationDate(expiresAt);
        }

        uint256 maxAllowedDate = block.timestamp + _TEN_YEARS;
        if (expiresAt > maxAllowedDate) {
            revert TooBigExpirationDate(expiresAt, maxAllowedDate);
        }
    }
}
