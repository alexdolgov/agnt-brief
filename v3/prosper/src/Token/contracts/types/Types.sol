// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.28;

/// @dev tranche parameters
struct Tranche {
    /// @dev amount of saleToken which must be sold for tranche to activate
    uint256 supply;
    /// @dev price of each saleToken delegated to tranche
    uint256 price;
    /// @dev duration of lockup of saleTokens purchased in seconds
    uint256 lockupPeriod;
    /// @dev timestamp until when tranche is active
    uint256 deadline;
    /// @dev amount of payments committed to tranche
    uint256 totalCommittedPayments;
    /// @dev amount claimed from tranche
    uint256 totalFulfilledPayments;
    /// @dev amount of saleTokens to be reached so that discounted price can take effect
    uint256 discountThreshold;
    /// @dev price after discount threshold is reached
    uint256 discountPrice;
    /// @dev root of merkle tree which contains authorized addresses to purchase tranche
    bytes32 gateRoot;
    /// @dev whether tranche is gated
    bool isGated;
    /// @dev whether proceeds have been collected
    bool proceedsCollected;
    /// @dev token used to purchase saleToken
    address paymentToken;
}

/// @dev status of a tranche for a user
struct TrancheStatus {
    /// @dev id of tranche
    uint256 trancheId;
    /// @dev amount of saleTokens which will be received based on current price
    uint256 amount;
    /// @dev timestamp of when saleTokens will be released
    uint256 releaseTime;
    /// @dev amount of paymentToken which was committed to tranche
    uint256 committedPayment;
    /// @dev whether tranche is refundable
    bool isRefundable;
}

/// @dev represents a request to burn tokens from a specific account
struct BurnRequest {
    /// @dev account from which tokens are to be burned
    address account;
    /// @dev amount of tokens to be burned
    uint256 amount;
}
