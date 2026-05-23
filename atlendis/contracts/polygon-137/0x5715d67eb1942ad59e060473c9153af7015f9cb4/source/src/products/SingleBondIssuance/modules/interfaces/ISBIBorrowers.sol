// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

/**
 * @title ISBIBorrowers
 * @author Atlendis Labs
 * @notice Interface of the Single Bond Issuance Borrowers module contract
 *         It exposes the available methods for permissioned borrowers.
 */
interface ISBIBorrowers {
    /**
     * @notice Emitted when a borrow has been made
     *         The transferred amount is given by borrowedAmount + cancellationFeeEscrow - issuanceFee
     * @param borrower Address of the borrower
     * @param contractAddress Address of the contract
     * @param borrowedAmount Borrowed amount
     * @param issuanceFee Issuance fee
     * @param cancellationFeeEscrow Cancelation fee at borrow time
     */
    event Borrowed(
        address indexed borrower,
        address contractAddress,
        uint256 borrowedAmount,
        uint256 issuanceFee,
        uint256 cancellationFeeEscrow
    );

    /**
     * @notice Emitted when a loan has been partially repaid
     * @param borrower Address of the borrower
     * @param contractAddress Address of the contract
     * @param repaidAmount Repaid amount
     */
    event PartiallyRepaid(address indexed borrower, address contractAddress, uint256 repaidAmount);

    /**
     * @notice Emitted when a loan has been repaid
     *         Total paid amount by borrower is given by repaidAmount + atlendisFee
     * @param borrower Address of the borrower
     * @param contractAddress Address of the contract
     * @param repaidAmount Repaid amount
     * @param atlendisFee Repayment fee
     */
    event Repaid(address indexed borrower, address contractAddress, uint256 repaidAmount, uint256 atlendisFee);

    /**
     * @notice Emitted when the remaining cancellation fee has been withdrawn
     * @param contractAddress Address of the contract
     * @param amount Withdrawn remaining cancellation fee amount
     */
    event EscrowWithdrawn(address indexed contractAddress, uint256 amount);

    /**
     * Borrow up to a maximum of the parametrised target issuance amount
     * @param to Address to which the borrowed amount is transferred
     *
     * Emits a {Borrowed} event
     */
    function borrow(address to) external;

    /**
     * @notice Repay a loan
     *
     * Emits a {Repaid} event
     */
    function repay() external;

    /**
     * @notice Partially repay a loan
     * @param amount The repaid amount
     *
     * Emits a {PartiallyRepaid} event
     */
    function partialRepay(uint256 amount) external;

    /**
     * @notice Enable the book building phase by depositing in escrow the cancellation fee amount of tokens
     *
     * Emits a {BookBuildingPhaseEnabled} event
     */
    function enableBookBuildingPhase() external;

    /**
     * @notice Withdraw the remaining escrow
     * @param to Address to which the remaining escrow amount is transferred
     *
     * Emits a {EscrowWithdrawn} event
     */
    function withdrawRemainingEscrow(address to) external;
}
