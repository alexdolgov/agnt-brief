//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;



// @notice Data structure for TermUsualFlashDefaultSubmission
struct TermUsualFlashDefaultSubmission {
    address termRepoCollateralManager;
    address termRepoLocker;
    address borrower;
    uint256 coverAmount;
}