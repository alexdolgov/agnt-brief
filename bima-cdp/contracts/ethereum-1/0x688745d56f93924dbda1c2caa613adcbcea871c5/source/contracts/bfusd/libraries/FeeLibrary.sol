// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/**
 * @title FeeLibrary
 * @author BitFi Labs
 * @notice Library for shared fee structures and calculation logic.
 */
library FeeLibrary {
    uint256 constant FEE_PRECISION = 1e8;

    struct Fees {
        uint128 percentageFee;
        uint128 fixedFee;
    }

    /**
     * @notice Calculates the fee based on a given amount and fee structure.
     * @param amount The base amount to calculate the fee from.
     * @param fees The fee structure with percentage and fixed fees.
     * @return The calculated total fee amount.
     */
    function calculateFee(uint256 amount, Fees memory fees) internal pure returns (uint256) {
        return (amount * fees.percentageFee) / FEE_PRECISION + fees.fixedFee;
    }
}
