// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

/// @title ERC3156 flash borrower interface updated to allow multiple tokens and amounts
interface IAutopilotFlashBorrower {
    /**
     * @dev Receive a flash loan.
     * @param initiator The initiator of the loan.
     * @param tokens The loan currencies.
     * @param amounts The amounts of tokens lent.
     * @param fee The additional amount of tokens to repay.
     * @param data Arbitrary data structure, intended to contain user-defined parameters.
     * @return The keccak256 hash of "IERC3156FlashBorrower.onFlashLoan"
     */
    function onFlashLoan(
        address initiator,
        address[] memory tokens,
        uint256[] memory amounts,
        uint256 fee,
        bytes calldata data
    ) external returns (bytes32);
}
