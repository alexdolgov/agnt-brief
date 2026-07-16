// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: 475e51570b3e480253ce381ecc27c22cb8ea3496;
pragma solidity 0.8.17;

import "./DaiVariableUtilisationRatesCalculator.sol";

/**
 * @title DaiVariableUtilisationRatesCalculatorZeroRate
 * @dev Contract which returns a constant value of 0 for the deposit and borrowing rates.
 **/
contract DaiVariableUtilisationRatesCalculatorFixedRate is DaiVariableUtilisationRatesCalculator {
    /**
     * Always return 0 as deposit rate
     **/
    function calculateDepositRate(uint256 _totalLoans, uint256 _totalDeposits) external view override returns (uint256) {
        return 0.059790954008182954e18;
    }

    /**
     * Always return 0 as deposit rate
     **/
    function calculateBorrowingRate(uint256 totalLoans, uint256 totalDeposits) external pure override returns (uint256) {
        return 0.09992546874779151e18;
    }
}