// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

/**
 * @title IFlashLoan
 * @dev Defines the basic interface for FlashLoan contract.
 */
interface IFlashLoan {
    // ------------------------------------------ Custom Errors -----------------------------------

    /// @dev Thrown when the flash loan cannot be repaid.
    error FlashLoan__LoanIsNotRepayable();

    /// @dev Thrown when the loan amount is below the minimum allowed.
    error FlashLoan__AmountBeyondMin();

    /// @dev Thrown when the loan amount exceeds the maximum allowed.
    error FlashLoan__AmountBeyondMax();

    /// @dev Thrown when the collateral required for the loan is not active.
    error FlashLoan__CollateralIsNotActive();

    // ------------------------------------------ Events ------------------------------------------

    /**
     * @notice Emitted when a flash loan is executed for flash minting.
     * @param _borrower The address of the borrower.
     * @param _debtAmount The amount of debt incurred by the borrower.
     * @param _feeAmount The fee amount for the flash loan.
     */
    event FlashLoanExecuted(
        address indexed _borrower, uint256 indexed _debtAmount, uint256 _feeAmount
    );

    /**
     * @notice Emitted when a flash loan is executed for flash repayment.
     * @param _borrower The address of the borrower.
     * @param _debtAmount The amount of debt incurred by the borrower.
     * @param _feeAmount The fee amount for the flash loan.
     */
    event FlashLoanRepayExecuted(
        address indexed _borrower, uint256 _debtAmount, uint256 _feeAmount
    );

    /**
     * @notice Emitted when a flash loan is executed for flash partial repayment.
     * @param _borrower The address of the borrower.
     * @param _debtAmount The amount of debt incurred by the borrower.
     * @param _feeAmount The fee amount for the flash loan.
     */
    event FlashLoanPartialRepayExecuted(
        address indexed _borrower, uint256 _debtAmount, uint256 _feeAmount
    );

    // ------------------------------------------ Functions ---------------------------------------

    /**
     * @notice Executes a flash loan for the specified amount.
     * @param _amount The amount of the flash loan.
     * @dev This function initiates a flash loan transaction where the specified amount is borrowed
     * and must be repaid along with a fee within the same transaction
     */
    function flashLoan(uint256 _amount) external;
}
