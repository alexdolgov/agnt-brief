// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

/// @title IGT3Bribe
/// @author gt3.finance
/// @notice Interface for the GT3 Bribe contract that manages bribes and rewards distribution for xGT3 token holders
interface IGT3Bribe {
    /// @notice Struct to store balance checkpoints
    /// @param timestamp The timestamp of the checkpoint
    /// @param balanceOf The balance at the checkpoint
    struct Checkpoint {
        uint256 timestamp;
        uint256 balanceOf;
    }

    /// @notice Struct to store reward per token checkpoints
    /// @param timestamp The timestamp of the checkpoint
    /// @param rewardPerToken The reward per token at the checkpoint
    struct RewardPerTokenCheckpoint {
        uint256 timestamp;
        uint256 rewardPerToken;
    }

    /// @notice Struct to store supply checkpoints
    /// @param timestamp The timestamp of the checkpoint
    /// @param supply The total supply at the checkpoint
    struct SupplyCheckpoint {
        uint256 timestamp;
        uint256 supply;
    }

    /// @notice Emitted when rewards are claimed
    /// @param from Address claiming the rewards
    /// @param tokenId ID of the token for which rewards are claimed
    /// @param reward Address of the reward token
    /// @param amount Amount of rewards claimed
    event ClaimRewards(address indexed from, uint256 indexed tokenId, address indexed reward, uint256 amount);

    /// @notice Emitted when tokens are deposited
    /// @param from Address depositing tokens
    /// @param tokenId ID of the token being deposited for
    /// @param amount Amount of tokens deposited
    event Deposit(address indexed from, uint256 tokenId, uint256 amount);

    /// @notice Emitted when a new reward is notified
    /// @param from Address notifying the reward
    /// @param reward Address of the reward token
    /// @param epochStart Start timestamp of the epoch
    /// @param amount Amount of reward tokens
    event NotifyReward(address indexed from, address indexed reward, uint256 indexed epochStart, uint256 amount);

    /// @notice Emitted when tokens are withdrawn
    /// @param from Address withdrawing tokens
    /// @param tokenId ID of the token being withdrawn
    /// @param amount Amount of tokens withdrawn
    event Withdraw(address indexed from, uint256 tokenId, uint256 amount);

    /// @notice Error when non-owner or non-approved address tries to claim rewards
    error GT3BribeNotTokenOwnerOrApproved(address sender, uint256 tokenId);

    /// @notice Error when non-voter address calls restricted function
    error GT3BribeOnlyVoter(address sender);

    /// @notice Error when notifying zero reward amount
    error GT3BribeRewardAmountZero();

    /// @notice Error when reward amount is too low
    error GT3BribeRewardTooLow();

    /// @notice Error when reward rate is zero
    error GT3BribeRewardRateZero();

    /// @notice Error when reward amount is too high
    error GT3BribeRewardTooHigh();

    /// @notice Error when zero address is provided for voter
    error GT3BribeZeroVoter();

    /// @notice Error when zero address is provided for xGT3
    error GT3BribeZeroXGT3();

    /// @notice Returns the voter contract address
    function voter() external view returns (address);

    /// @notice Returns the xGT3 token contract address
    function xGt3() external view returns (address);

    /// @notice Returns the total supply of staked tokens
    function totalSupply() external view returns (uint256);

    /// @notice Returns the number of supply checkpoints
    function supplyNumCheckpoints() external view returns (uint256);

    /// @notice Returns the balance of a specific token ID
    /// @param tokenId The ID of the token to check
    function balanceOf(uint256 tokenId) external view returns (uint256);

    /// @notice Returns the rewards for a specific token and epoch
    /// @param token The reward token address
    /// @param epoch The epoch number
    function tokenRewardsPerEpoch(address token, uint256 epoch) external view returns (uint256);

    /// @notice Returns the last time rewards were earned for a token and token ID
    /// @param token The reward token address
    /// @param tokenId The ID of the token
    function lastEarn(address token, uint256 tokenId) external view returns (uint256);

    /// @notice Returns whether a token is registered as a reward token
    /// @param token The token address to check
    function isReward(address token) external view returns (bool);

    /// @notice Returns the number of checkpoints for a token ID
    /// @param tokenId The ID of the token to check
    function numCheckpoints(uint256 tokenId) external view returns (uint256);

    /// @notice Returns the reward token at a specific index
    /// @param index The index in the rewards array
    function rewards(uint256 index) external view returns (address);

    /// @notice Returns the number of reward tokens
    function rewardsListLength() external view returns (uint256);

    /// @notice Returns the balance index for a token ID at a specific timestamp
    /// @param tokenId_ The ID of the token
    /// @param timestamp_ The timestamp to check
    function getPriorBalanceIndex(uint256 tokenId_, uint256 timestamp_) external view returns (uint256);

    /// @notice Returns the supply index at a specific timestamp
    /// @param timestamp_ The timestamp to check
    function getPriorSupplyIndex(uint256 timestamp_) external view returns (uint256);

    /// @notice Calculates earned rewards for a token and token ID
    /// @param token The reward token address
    /// @param tokenId The ID of the token
    function earned(address token, uint256 tokenId) external view returns (uint256);

    /// @notice Deposits tokens for a specific token ID
    /// @param amount_ The amount to deposit
    /// @param tokenId_ The ID of the token
    function deposit(uint256 amount_, uint256 tokenId_) external;

    /// @notice Withdraws tokens for a specific token ID
    /// @param amount_ The amount to withdraw
    /// @param tokenId_ The ID of the token
    function withdraw(uint256 amount_, uint256 tokenId_) external;

    /// @notice Claims rewards for a token owner
    /// @param tokenId_ The ID of the token
    /// @param tokens_ Array of reward token addresses
    function getRewardForOwner(uint256 tokenId_, address[] memory tokens_) external;

    /// @notice Claims rewards for the caller
    /// @param tokenId_ The ID of the token
    /// @param tokens_ Array of reward token addresses
    function getReward(uint256 tokenId_, address[] memory tokens_) external;

    /// @notice Notifies the contract of reward tokens
    /// @param token_ The reward token address
    /// @param amount_ The amount of reward tokens
    function notifyRewardAmount(address token_, uint256 amount_) external;

    /// @notice Initializes the contract
    /// @param voter_ The voter contract address
    /// @param xGt3_ The xGT3 token contract address
    function initialize(address voter_, address xGt3_) external;
}
