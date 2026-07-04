// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './DataTypes.sol';

/**
 * @title Errors library
 * @dev Defines the errors used in the Resolving credit line product
 */
library RevolvingCreditLineErrors {
    error RCL_OUT_OF_BOUND_MIN_RATE(); // "Input rate is below min rate"
    error RCL_OUT_OF_BOUND_MAX_RATE(); // "Input rate is above max rate"
    error RCL_INVALID_RATE_SPACING(); // "Input rate is invalid with respect to rate spacing"

    error RCL_INVALID_PHASE(DataTypes.OrderBookPhase expectedPhase, DataTypes.OrderBookPhase actualPhase); // "Phase is invalid for this operation"
    error RCL_ZERO_AMOUNT(); // "Cannot deposit zero amount"
    error RCL_ZERO_AMOUNT_NOT_ALLOWED(); // "Zero amount not allowed"
    error RCL_NO_LIQUIDITY(); // "No liquidity available for the amount of bonds to sell"
    error RCL_LOAN_RUNNING(); // "Loan has not reached maturity"
    error RCL_AMOUNT_EXCEEDS_MAX(); // "Amount exceeds maximum allowed"
    error RCL_FURTHER_BORROW_DISABLED(); // OrderBook does not allow further borrows
    error RCL_NO_LOAN_RUNNING(); // No loan currently running
    error RCL_ONLY_OWNER(); // Has to be position owner
    error RCL_TIMELOCK(); // ActionNot possible within this block
    error RCL_CANNOT_EXIT(); // Cannot signal exit during first loan cycle
    error RCL_POSITION_NOT_BORROWED(); // The positions is currently not under a borrow
}
