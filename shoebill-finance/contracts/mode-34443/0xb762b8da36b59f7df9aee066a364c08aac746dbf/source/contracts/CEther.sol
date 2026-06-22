// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.10;

import "./CToken.sol";

/**
 * @title  CEther Contract
 * @notice CToken which wraps Native coin (ETH, WEMIX)
 */
contract CEther is CToken {
    function initialize(
        address underlying_,
        ComptrollerInterface comptroller_,
        InterestRateModel interestRateModel_,
        uint initialExchangeRateMantissa_,
        string memory name_,
        string memory symbol_,
        uint8 decimals_
    ) public {
        // Creator of the contract is admin during initialization
        super.initialize(
            comptroller_,
            interestRateModel_,
            initialExchangeRateMantissa_,
            name_,
            symbol_,
            decimals_
        );
    }

    /*** User Interface ***/

    /**
     * @notice Sender supplies assets into the market and receives cTokens in exchange
     * @dev Reverts upon any failure
     */
    function mint() external payable {
        // if (msg.value < 1 ether) {
        //     revert("msg.value is too small");
        // }
        require(msg.value != 0, "msg.value is zero");
        mintInternal(msg.value);
    }

    /**
     * @notice Sender supplies assets into the market and receives cTokens in exchange
     * @dev Reverts upon any failure
     * @param mintAmount The amount of the underlying asset to supply
     */
    function mint(uint mintAmount) external payable returns (uint) {
        // if (msg.value < 1 ether) {
        //     revert("msg.value is too small");
        // }
        require(mintAmount != 0, "mintAmount is zero");
        require(msg.value == mintAmount, "msg.value mismatch");

        mintInternal(msg.value);
        return NO_ERROR;
    }

    /**
     * @notice Sender redeems cTokens in exchange for the underlying asset
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemTokens The number of cTokens to redeem into underlying
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function redeem(uint redeemTokens) external returns (uint) {
        require(redeemTokens != 0, "redeemTokens is zero");
        redeemInternal(redeemTokens);
        return NO_ERROR;
    }

    /**
     * @notice Sender redeems cTokens in exchange for a specified amount of underlying asset
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemAmount The amount of underlying to redeem
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function redeemUnderlying(uint redeemAmount) external returns (uint) {
        require(redeemAmount != 0, "redeemAmount is zero");
        redeemUnderlyingInternal(redeemAmount);
        return NO_ERROR;
    }

    /**
     * @notice Sender borrows assets from the protocol to their own address
     * @param borrowAmount The amount of the underlying asset to borrow
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function borrow(uint borrowAmount) external returns (uint) {
        require(borrowAmount != 0, "borrowAmount is zero");
        borrowInternal(borrowAmount);
        return NO_ERROR;
    }

    /**
     * @notice Sender repays their own borrow
     * @dev Reverts upon any failure
     */
    function repayBorrow() external payable {
        require(msg.value != 0, "msg.value is zero");
        repayBorrowInternal(msg.value);
    }

    function repayBorrow(uint repayAmount) external payable returns (uint) {
        require(repayAmount != 0, "repayAmount is zero");
        require(msg.value == repayAmount, "msg.value mismatch");
        repayBorrowInternal(msg.value);
        return NO_ERROR;
    }

    function repayBorrowBehalf(
        address borrower,
        uint repayAmount
    ) external payable returns (uint) {
        require(repayAmount != 0, "repayAmount is zero");
        require(msg.value == repayAmount, "msg.value mismatch");
        repayBorrowBehalfInternal(borrower, msg.value);
        return NO_ERROR;
    }

    /**
     * @notice Sender repays a borrow belonging to borrower
     * @dev Reverts upon any failure
     * @param borrower the account with the debt being payed off
     */
    function repayBorrowBehalf(address borrower) external payable {
        require(msg.value != 0, "msg.value is zero");
        repayBorrowBehalfInternal(borrower, msg.value);
    }

    /**
     * @notice The sender liquidates the borrowers collateral.
     *  The collateral seized is transferred to the liquidator.
     * @dev Reverts upon any failure
     * @param borrower The borrower of this cToken to be liquidated
     * @param cTokenCollateral The market in which to seize collateral from the borrower
     */
    function liquidateBorrow(
        address borrower,
        CToken cTokenCollateral
    ) external payable {
        liquidateBorrowInternal(borrower, msg.value, cTokenCollateral);
    }

    function liquidateBorrow(
        address borrower,
        uint repayAmount,
        CToken cTokenCollateral
    ) external payable returns (uint) {
        require(msg.value == repayAmount, "msg.value mismatch");
        liquidateBorrowInternal(borrower, msg.value, cTokenCollateral);
        return NO_ERROR;
    }

    /**
     * @notice The sender adds to reserves.
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function _addReserves() external payable returns (uint) {
        return _addReservesInternal(msg.value);
    }

    /**
     * @notice Send Ether to CEther to mint
     */
    receive() external payable {
        mintInternal(msg.value);
    }

    /*** Safe Token ***/

    /**
     * @notice Gets balance of this contract in terms of Ether, before this message
     * @dev This excludes the value of the current message, if any
     * @return The quantity of Ether owned by this contract
     */
    function getCashPrior() internal view override returns (uint) {
        return address(this).balance - msg.value;
    }

    /**
     * @notice Perform the actual transfer in, which is a no-op
     * @param from Address sending the Ether
     * @param amount Amount of Ether being sent
     * @return The actual amount of Ether transferred
     */
    function doTransferIn(
        address from,
        uint amount
    ) internal override returns (uint) {
        // Sanity checks
        require(msg.sender == from, "sender mismatch");
        require(msg.value == amount, "value mismatch");
        return amount;
    }

    function doTransferOut(
        address payable to,
        uint amount
    ) internal virtual override {
        /* Send the Ether, with minimal gas and revert on failure */

        // CES-01
        (bool success, ) = to.call{value: amount}("");
        require(success, "CEther::doTransferOut: Ether transfer failed");
    }
}
