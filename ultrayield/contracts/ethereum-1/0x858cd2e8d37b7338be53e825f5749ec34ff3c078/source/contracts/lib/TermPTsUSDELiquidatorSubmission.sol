//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;


/// @dev TermPTsUSDELiquidatorSubmission contains arguments needed for performing a term default liquidation using uniswap flash swaps
struct TermPTsUSDELiquidatorSubmission {
    address termRepoCollateralManager;
    address termRepoLocker;
    address borrower;
    address repaymentToken;
    uint256 coverAmount;
    uint256 collateralAmount;
    address collateralToken;
    bytes pendleSwapCalldata;
    address pendleSwapContract;
    uint256 susdeAmount;
    bytes oneInchSwapCalldata;
}