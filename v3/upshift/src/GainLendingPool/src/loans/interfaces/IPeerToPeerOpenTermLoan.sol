// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

// ---------------------------------------------------------------
// States of a loan
// ---------------------------------------------------------------
uint8 constant LOAN_PREAPPROVED = 1;        // The loan was pre-approved by the lender
uint8 constant LOAN_FUNDING_REQUIRED = 2;   // The loan was accepted by the borrower. Waiting for the lender to fund the loan.
uint8 constant LOAN_FUNDED = 3;             // The loan was funded.
uint8 constant LOAN_ACTIVE = 4;             // The loan is active.
uint8 constant LOAN_CANCELLED = 5;          // The lender failed to fund the loan and the borrower claimed their collateral.
uint8 constant LOAN_MATURED = 6;            // The loan matured. It was liquidated by the lender.
uint8 constant LOAN_CLOSED = 7;             // The loan was closed normally.

interface IPeerToPeerOpenTermLoan {
    // Functions available to the lender only
    function fundLoan() external;
    function callLoan(uint256 callbackPeriodInSeconds, uint256 gracePeriodInSeconds) external;
    function liquidate() external;
    function proposeNewApr(uint256 newAprWithTwoDecimals) external;
    function changeOracle(address newOracle) external;
    function changeLateFees(uint256 lateInterestFeeWithTwoDecimals, uint256 latePrincipalFeeWithTwoDecimals) external;
    function changeMaintenanceCollateralRatio(uint256 maintenanceCollateralRatioWith2Decimals) external;
    function seizeCollateral(uint256 amount) external;
    function returnCollateral(uint256 depositAmount) external;

    // Functions available to the borrower only
    function acceptApr() external;
    function borrowerCommitment() external;
    function claimCollateral() external;
    function repay(uint256 paymentAmount) external;
    function repayInterests() external;
    function repayPrincipal(uint256 paymentAmount) external;

    // The minimum views of a loan
    function lender() external view returns (address);
    function borrower() external view returns (address);
    function principalToken() external view returns (address);
    function collateralToken() external view returns (address);
    function loanState() external view returns (uint8);
    function currentApr() external view returns (uint256);
    function effectiveLoanAmount() external view returns (uint256);
    function getCollateralRequirements() external view returns (uint256 initialCollateralAmount, uint256 maintenanceCollateralAmount);

    function getDebt() external view returns (
        uint256 currentBillingCycle,
        uint256 cyclesSinceLastAprUpdate,
        uint256 interestOwed,
        uint256 applicableLateFee,
        uint256 minPaymentAmount,
        uint256 maxPaymentAmount
    );
}
