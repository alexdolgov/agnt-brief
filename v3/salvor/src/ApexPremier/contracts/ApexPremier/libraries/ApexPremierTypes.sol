// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

struct Premier {
    IERC20 token;
    string name;
    address teamWallet;
    uint256 startTime;
    uint256 duration;
    uint256 tokenPriceInAvax;
    uint256 amountOfTokensToSell;
    uint256 totalAvaxRaised;
    uint256 totalTokenSold;
    uint256 oneTokenInWei;
}

struct PremierParameters {
    IERC20 token;
    string name;
    address teamWallet;
    uint256 startTime;
    uint256 duration;
    uint256 tokenPriceInAvax;
    uint256 amountOfTokensToSell;
}

struct Participant {
    address participant;
    uint256 amountTokenBought;
    uint256 amountAvaxContributed;
    uint256 tokensReleased;
}

struct Vesting {
    uint256 totalDuration;
    uint256 cliffDuration;
    uint256 tgePercentage;
    bool hasVesting;
    bool cliffAccumulates; // True => cliff accumulates from vestingStart, false => linear starts after cliff
}

enum PremierPhases {
    Whitelist,
    Staking,
    Public
}

struct PhaseParameters {
    uint256 minAvax; // Minimum AVAX contribution required (for first purchase in the phase).
    uint256 maxAvax; // Maximum cumulative AVAX a user may contribute in this phase.
}

enum PremierState {
    Uninitialized, // Initial state before initialize() is called
    Initialized, // Contract is initialized but premier parameters not set
    ParametersSet, // Premier parameters are set but not ready for review
    InReview, // Ready for review, waiting for admin approval
    Approved, // Admin approved, waiting for token deposit
    TokensDeposited, // Tokens deposited, waiting for sale to start
    Active, // Sale is actively accepting participants
    Ended, // Sale period has ended
    FundsWithdrawn, // Raised funds have been withdrawn
    Completed // All operations completed
}
