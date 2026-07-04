pragma solidity ^0.5.8;

import "../RToken/REther.sol";

contract REtherRepayDelegate {
    REther public rEther;

    constructor(REther rEther_) public {
        rEther = rEther_;
    }

    /**
     * @notice msg.sender sends Ether to repay an account's borrow in the cEther market
     * @dev The provided Ether is applied towards the borrow balance, any excess is refunded
     * @param borrower The address of the borrower account to repay on behalf of
     * @return The initial borrows before the repay
     */
    function repayBehalf(address borrower) public payable {
        return repayBehalfExplicit(borrower, rEther);
    }

    /**
     * @notice msg.sender sends Ether to repay an account's borrow in a cEther market
     * @dev The provided Ether is applied towards the borrow balance, any excess is refunded
     * @param borrower The address of the borrower account to repay on behalf of
     * @param rEther_ The address of the cEther contract to repay in
     * @return The initial borrows before the repay
     */
    function repayBehalfExplicit(address borrower, REther rEther_) public payable {
        uint received = msg.value;
        uint borrows = rEther_.borrowBalanceCurrent(borrower);
        if (received > borrows) {
            rEther_.repayBorrowBehalf.value(borrows)(borrower);
            msg.sender.transfer(received - borrows);
        } else {
            rEther_.repayBorrowBehalf.value(received)(borrower);
        }
    }
}
