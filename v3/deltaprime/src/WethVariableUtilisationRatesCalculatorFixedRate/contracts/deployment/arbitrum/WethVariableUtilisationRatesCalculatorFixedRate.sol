// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: b101692b2752cc38ccb73c912751d8d7aefa03cf;
pragma solidity 0.8.17;

import "./WethVariableUtilisationRatesCalculator.sol";

/**
 * @title WethVariableUtilisationRatesCalculatorZeroRate
 * @dev Contract which returns a constant value of 0 for the deposit and borrowing rates.
 **/
contract WethVariableUtilisationRatesCalculatorFixedRate is WethVariableUtilisationRatesCalculator {
    /**
     **/
    function calculateDepositRate(uint256 _totalLoans, uint256 _totalDeposits) external view override returns (uint256) {
        uint256 rate = this.calculateBorrowingRate(_totalLoans, _totalDeposits) * (1e18 - spread) * _totalLoans / (_totalDeposits * 1e18);
        return rate;
    }

    /**
     * Always return fixed deposit rate
     **/
    function calculateBorrowingRate(uint256 totalLoans, uint256 totalDeposits) external pure override returns (uint256) {
        return 0.049e18;
    }
}