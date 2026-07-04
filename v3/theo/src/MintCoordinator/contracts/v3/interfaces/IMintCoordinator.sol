// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

interface IMintCoordinator {
    /** Errors */
    error InvalidDirection();
    error InvalidTTokenAddress(address tTokenIn, address expectedTToken);
    error InvalidTTokenAssetAddress(address assetIn, address expectedAsset);
    error InvalidTTokenTransfer(address tToken, address to);
    error CommitmentAmountMismatch(uint256 expectedAmount, uint256 actualAmount);

    /// @notice Struct for Permit signatures
    struct Signature {
        bytes32 r;
        bytes32 s;
        uint8 v;
    }

    /// @notice general struct for deposit and redemption requests
    struct Request {
        bool isDeposit; // true = deposit, false = redemption
        address tToken; // thgold tToken address
        address asset; // asset to go in/out (usdc)
        address from; // address providing assetIn
        uint256 amountAssetIn; // amount of assetIn (for deposits) or tTokensIn (for redemptions)
        address assetReceiver;
        Signature permitSignature;
        uint256 deadline; // permit deadline if permit is used
        address to; // address to receive tTokens (for deposits) or assetOut (for redemptions)
    }

    /// @notice general struct for completed deposit and redemption info
    struct CompletedRequest {
        bool isDeposit; // true = deposit, false = redemption
        uint256 epoch;
        uint256 timestamp;
        address receiver; // tToken receiver (for deposits) or assetOut receiver (for redemptions)
        address tToken; // thgold tToken address
        uint256 amountOut; // amount of assetIn (for deposits) or assetOut (for redemptions)
        uint256 amountIn; // amount of tTokens out (for deposits) or tTokens in (for redemptions)
    }

    /// @notice  allows for bulk requests from Theo service
    function commitRequests(Request[] calldata requests) external;

    /// @notice Epoch tracker for deposits
    function currentDepositEpoch() external view returns (uint256);

    /// @notice epoch tracker for redemptions
    function currentRedemptionEpoch() external view returns (uint256);

    /// @notice getter function for user queued deposits/redemptions
    function getUserQueued(address user) external view returns (uint256 depositQueuedAmount, uint256 redemptionQueuedAmount);

    /// @notice getter function for user commitments
    function getUserCommitments(address user) external view returns (uint256 depositAmount, uint256 redemptionAmount);

    // @notice getter function for total queued deposits
    function getTTokenQueues() external view returns (address[] memory depositors, address[] memory redeemers);

    /// @notice getter function for depositors/redeemers for a tToken
    function getTTokenCommittors() external view returns (address[] memory depositors, address[] memory redeemers);

    /// @notice gets all completed deposits for epoch
    function getTTokenCompletedDeposits(uint256 epoch) external view returns (CompletedRequest[] memory);

    /// @notice gets all completed redemptions for epoch
    function getTTokenCompletedRedemptions(uint256 epoch) external view returns (CompletedRequest[] memory);

    /// @notice getter function for completed requests for a user
    function getUserCompletedRequests(address user) external view returns (CompletedRequest[] memory deposits, CompletedRequest[] memory redemptions);

    /// @notice commits all queued deposits for the current deposit epoch
    function commitDeposits(uint256 amountAsset) external;

    /// @notice commits all queued redemptions for the current redemption epoch
    function commitRedemptions(uint256 amountTTokens) external;

    /// @notice allows minter to mint tTokens from user committed deposits
    function completeCommittedDeposits(address[] memory depositors, uint256 exchangeRate) external;

    /// @notice allows minter to process redemptions for user committed redemptions
    function completeCommittedRedemptions(address[] memory redeemers, uint256 exchangeRate, address bankAddress) external;
}
