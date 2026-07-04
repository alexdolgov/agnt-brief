// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/**
 * @title IStakingRewarder
 * @dev Interface for the staking rewarder contract
 */
interface IStakingRewarder {
    /**
     * @dev Represents a reward epoch with start/end times and rewards rate
     * @param startTs When the epoch starts (unix timestamp)
     * @param endTs When the epoch ends (unix timestamp)
     * @param rewardsPerSec Rewards rate per second for this epoch
     */
    struct Epoch {
        uint32 startTs;
        uint32 endTs;
        uint128 rewardsPerSec;
    }

    // Events
    /**
     * @dev Emitted when a new epoch is added
     * @param index The epoch index
     * @param startTs Start time of the epoch
     * @param endTs End time of the epoch
     * @param rewardsPerSec Rewards rate per second
     * @param totalRewards Total rewards for this epoch
     */
    event EpochAdded(
        uint256 indexed index, uint256 startTs, uint256 endTs, uint256 rewardsPerSec, uint256 totalRewards
    );

    /**
     * @dev Emitted when an epoch is removed
     * @param index The epoch index
     * @param startTs Start time of the removed epoch
     * @param endTs End time of the removed epoch
     * @param totalRewards Total rewards that were in the removed epoch
     */
    event EpochRemoved(uint256 indexed index, uint256 startTs, uint256 endTs, uint256 totalRewards);

    /**
     * @dev Emitted when an epoch is modified
     * @param index The epoch index
     * @param startTs Start time of the epoch
     * @param endTs New end time of the epoch
     * @param rewardsPerSec New rewards rate per day
     * @param totalRewards New total rewards for this epoch
     */
    event EpochModified(
        uint256 indexed index, uint256 startTs, uint256 endTs, uint256 rewardsPerSec, uint256 totalRewards
    );

    /**
     * @dev Emitted when rewards are claimed
     * @param amount The amount of rewards claimed
     */
    event RewardsClaimed(uint256 amount);

    // Custom errors
    /**
     * @dev Error thrown when a function is called by an address other than the staking vault
     */
    error NotStakingVault();
    /**
     * @dev Error thrown when the maximum number of active epochs is exceeded
     */
    error ActiveEpochsLimit();

    /**
     * @dev Error thrown when a zero address is provided where not allowed
     */
    error ZeroAddress();

    /**
     * @dev Error thrown when the amount is zero
     */
    error ZeroAmount();

    /**
     * @dev Error thrown when an epoch overlaps with another epoch
     */
    error EpochOverlap();

    /**
     * @dev Error thrown when the start time is less than the current timestamp
     */
    error StartTimeLessThanCurrentTimestamp();

    /**
     * @dev Error thrown when the start time is greater than the end time
     */
    error StartTimeGreaterThanEndTime();

    /**
     * @dev Error thrown when an epoch is not found
     */
    error EpochNotFound();

    /**
     * @dev Error thrown when the new end time is less than the last distributed time
     */
    error EndTimeLessThanCurrentTimestamp();

    /**
     * @dev Error thrown when an epoch has ended
     */
    error EpochEnded();

    /**
     * @dev Error thrown when the active epoch cannot be modified start time
     */
    error ActiveEpochCannotBeModifiedStartTime();

    /**
     * @dev Error thrown when the active epoch cannot be modified rewards per second
     */
    error ActiveEpochCannotBeModifiedRewardsPerSec();

    /**
     * @dev Error thrown when the end time is not changed
     */
    error EndTimeNotChanged();

    // State variables
    /**
     * @dev Maximum number of active epochs that can be queued
     * @return The maximum number of active epochs
     */
    function MAX_ACTIVE_EPOCHS() external view returns (uint256);

    /**
     * @dev The token used for rewards
     * @return The asset token contract
     */
    function asset() external view returns (IERC20);

    /**
     * @dev The staking vault contract that can claim rewards
     * @return The staking vault contract
     */
    function stakingVault() external view returns (IERC4626);

    /**
     * @dev Rewards that cannot be claimed by the vault (when vault has no stakers / epoch is removed)
     * @return The amount of unclaimed rewards
     */
    function unclaimedRewards() external view returns (uint256);

    /**
     * @dev Current completed epoch count
     * @return The count of completed epochs
     */
    function completedEpochCount() external view returns (uint256);

    /**
     * @dev Last time rewards were distributed (used for calculations)
     * @return The timestamp of the last reward distribution
     */
    function lastUpdatedTs() external view returns (uint256);

    // Functions
    /**
     * @dev Initialize the rewarder contract
     * @param stakingVault_ The staking vault contract address that can claim rewards
     */
    function initialize(address stakingVault_) external;

    /**
     * @dev Add a new reward epoch
     * NOTE:
     * - owner need to approve and have enough balance of the reward token
     * - the number of active epochs is limited to MAX_ACTIVE_EPOCHS to prevent exceeding gas limits during reward claims
     * @param startTs Start time of the epoch (unix timestamp)
     * @param endTs End time of the epoch (unix timestamp)
     * @param rewardsPerSec Rewards rate per second (in wei of the asset token e.g. 1e18 = 1 token per second)
     */
    function addNewEpoch(uint32 startTs, uint32 endTs, uint128 rewardsPerSec) external;

    /**
     * @dev Remove the last epoch from the array
     * Only the last epoch can be removed to maintain epoch continuity
     * (epochTotalRewards is added to unclaimedRewards)
     */
    function removeLastEpoch() external;

    /**
     * @dev Modify the last existing epoch
     * NOTE: for active epoch, only the end time can be modified
     * @param newStartTs New start time
     * @param newEndTs New end time
     * @param newRewardsPerSec New rewards rate per second
     */
    function modifyLastEpoch(uint32 newStartTs, uint32 newEndTs, uint128 newRewardsPerSec) external;

    /**
     * @dev Withdraw accumulated unclaimed rewards
     * @return Total rewards withdrawn
     */
    function withdrawUnclaimedRewards() external returns (uint256);

    /**
     * @dev Calculate and distribute rewards for the current time period
     *
     * This function:
     * 1. Calculates rewards by starting from the completedEpochCount
     * 2. Updates the completedEpochCount and lastUpdatedTs
     * 3. Distributes rewards to the staking vault if there are stakers, or accumulates them as unclaimed
     *
     * @return Total rewards that can be transferred to the staking vault
     */
    function claim() external returns (uint256);

    /**
     * @dev Get pending rewards for the current time period
     * @return Pending rewards that can be transferred to the staking vault
     */
    function getPendingRewards() external view returns (uint256);

    /**
     * @dev Get total number of epochs
     * @return Number of epochs
     */
    function getEpochsLength() external view returns (uint256);

    /**
     * @dev Get epoch by index
     * @param index Epoch index
     * @return epoch The epoch data
     */
    function getEpochByIndex(uint256 index) external view returns (Epoch memory);
}
