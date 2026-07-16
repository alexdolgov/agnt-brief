//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

enum SwapRoute {
    ONE_INCH,
    ZERO_X
}

/// @dev TermAggregatorFlashLoanSubmission0x contains arguments needed for performing a term default/shortfall liquidation using an Instadapp flash-loan aggregator and 0x swaps
struct TermAggregatorFlashLoanSubmission0x {
    uint256 flashloanRoute;
    bytes flashLoanInstaData; // Only used for Uniswap PoolKeys
    address termRepoCollateralManager;
    address termRepoLocker;
    address borrower;
    address repaymentToken;
    address zeroXToAddr;
    address zeroXAllowanceTarget;
    uint256 coverAmount;
    address collateralToken;
    bool unwrapCollateralToken;
    bytes zeroXSwapCalldata;
}

/// @dev TermAggregatorFlashLoanSubmission1Inch contains arguments needed for performing a term default/shortfall liquidation using an Instadapp flash-loan aggregator and 1inch swaps
struct TermAggregatorFlashLoanSubmission1Inch {
    uint256 flashloanRoute;
    bytes flashLoanInstaData; // Only used for Uniswap PoolKeys
    address termRepoCollateralManager;
    address termRepoLocker;
    address borrower;
    address repaymentToken;
    uint256 coverAmount;
    address collateralToken;
    bool unwrapCollateralToken;
    bytes oneInchSwapCalldata;
}

/// @dev TermAggregatorFlashLoanSubmission contains arguments needed for performing a term default/shortfall liquidation using an Instadapp flash-loan aggregator and either 0x or 1inch swaps, depending on the swapRoute specified
struct TermAggregatorFlashLoanSubmission {
    SwapRoute swapRoute;
    bytes flashLoanSubmissionData; // Encoded data for either TermAggregatorFlashLoanSubmission0x or TermAggregatorFlashLoanSubmission1Inch
}
