// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: 475e51570b3e480253ce381ecc27c22cb8ea3496;
pragma solidity 0.8.17;

import "./WethVariableUtilisationRatesCalculator.sol";

/**
 * @title WethVariableUtilisationRatesCalculatorZeroRate
 * @dev Contract which returns a constant value of 0 for the deposit and borrowing rates.
 **/
contract WethVariableUtilisationRatesCalculatorFixedRate is WethVariableUtilisationRatesCalculator {
    /**
     * Always return 0 as deposit rate
     **/
    function calculateDepositRate(uint256 _totalLoans, uint256 _totalDeposits) external view override returns (uint256) {
        return 0.085740450028251601e18;
    }

    /**
     * Always return 0 as deposit rate
     **/
    function calculateBorrowingRate(uint256 totalLoans, uint256 totalDeposits) external pure override returns (uint256) {
        return 0.099755109269667703e18;
    }
}