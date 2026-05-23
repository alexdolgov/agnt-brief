// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './PoolDataTypes.sol';

/**
 * @title SingleBondIssuanceErrors library
 * @dev Defines the errors used in the Single Bond Issuance product
 */
library SingleBondIssuanceErrors {
    error SBI_INVALID_RATE_BOUNDARIES(); // "Invalid rate boundaries parameters"
    error SBI_INVALID_ZERO_RATE_SPACING(); // "Can not have rate spacing to zero"
    error SBI_INVALID_RATE_PARAMETERS(); // "Invalid rate parameters"
    error SBI_INVALID_PERCENTAGE_VALUE(); // "Invalid percentage value"

    error SBI_OUT_OF_BOUND_MIN_RATE(); // "Input rate is below min rate"
    error SBI_OUT_OF_BOUND_MAX_RATE(); // "Input rate is above max rate"
    error SBI_INVALID_RATE_SPACING(); // "Input rate is invalid with respect to rate spacing"

    error SBI_INVALID_PHASE(PoolDataTypes.PoolPhase expectedPhase, PoolDataTypes.PoolPhase actualPhase); // "Phase is invalid for this operation"
    error SBI_ZERO_AMOUNT(); // "Cannot deposit zero amount";
    error SBI_MGMT_ONLY_OWNER(); // "Only the owner of the position token can manage it (update rate, withdraw)";
    error SBI_TIMELOCK(); // "Cannot withdraw or update rate in the same block as deposit";
    error SBI_BOOK_BUILDING_TIME_NOT_OVER(); // "Book building time window is not over";
    error SBI_ALLOWED_ONLY_BOOK_BUILDING_PHASE(); // "Action only allowed during the book building phase";
    error SBI_EARLY_REPAY_NOT_ALLOWED(); // "Bond is not callable";
    error SBI_EARLY_PARTIAL_REPAY_NOT_ALLOWED(); // "Partial repays are not allowed before maturity or during not allowed phases";
    error SBI_NOT_ENOUGH_FUNDS_AVAILABLE(); // "Not enough funds available in pool"
    error SBI_NO_WITHDRAWALS_ISSUANCE_PHASE(); // "No withdrawals during issuance phase"
    error SBI_WITHDRAW_AMOUNT_TOO_LARGE(); // "Partial withdraws are allowed for withdrawals of less hten 100% of a position"
    error SBI_PARTIAL_WITHDRAW_NOT_ALLOWED(); // "Partial withdraws are allowed during the book building phase"
    error SBI_WITHDRAWAL_NOT_ALLOWED(PoolDataTypes.PoolPhase poolPhase); // "Withdrawal not possible"
    error SBI_ZERO_BORROW_AMOUNT_NOT_ALLOWED(); // "Borrowing from an empty pool is not allowed"
    error SBI_ISSUANCE_PHASE_EXPIRED(); // "Issuance phase has expired"
    error SBI_ISSUANCE_PERIOD_STILL_ACTIVE(); // "Issuance period not expired yet"
}
