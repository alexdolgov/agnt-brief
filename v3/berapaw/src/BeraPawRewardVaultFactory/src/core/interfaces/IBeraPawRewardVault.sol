// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { IErrors } from "./IErrors.sol";

/**
 * @title IBeraPawRewardVault
 * @notice Interface for the BeraPawRewardVault contract which handles staking tokens and reward distribution
 * @dev Extends base staking functionality with multi-token reward capabilities
 */
interface IBeraPawRewardVault is IErrors {
    /// @notice Struct to represent a user's reward information
    struct UserReward {
        address token;
        uint256 amount;
    }

    event Harvested(uint256 amount);

    /**
     * @notice Updates the duration for a specific reward token
     * @dev Only callable by admin
     * @param _rewardsToken Address of the reward token to update
     * @param _rewardsDuration New duration for the reward period
     */
    function updateRewardsDuration(address _rewardsToken, uint256 _rewardsDuration) external;

    /**
     * @notice Unpauses staking operations
     * @dev Only callable by admin. No effect if already unpaused
     */
    function unpauseStaking() external;

    /**
     * @notice Pauses staking operations
     * @dev Only callable by admin. No effect if already paused
     */
    function pauseStaking() external;

    /**
     * @notice Adds a new reward token to the vault
     * @dev Only callable by admin. Limited by MAX_NUM_REWARD_TOKENS
     * @param _rewardsToken Address of the new reward token
     * @param _rewardsDuration Duration for the reward period of the new token
     */
    function addReward(address _rewardsToken, uint256 _rewardsDuration) external;

    /**
     * @notice Removes a reward token from the vault
     * @dev Only callable by admin
     * @param _rewardsToken Address of the reward token to remove
     */
    function removeReward(address _rewardsToken) external;

    /**
     * @notice Notifies the contract about new reward amount
     * @dev Only callable by admin
     * @param _rewardToken Address of the reward token
     * @param _reward Amount of reward to distribute
     */
    function notifyRewardAmount(address _rewardToken, uint256 _reward) external;

    /**
     * @notice Recovers ERC20 tokens accidentally sent to the contract
     * @dev Only callable by admin. Cannot recover staking token
     * @param _to Address to send the recovered tokens to
     * @param _token Address of the token to recover
     * @param _amount Amount of tokens to recover
     */
    function recoverERC20(address _to, address _token, uint256 _amount) external;

    /**
     * @notice Claims all pending rewards for a specific user
     * @dev Only callable by factory. Transfers all accrued rewards to the user
     * @param user Address of the user whose rewards are to be claimed
     */
    function getRewardForUser(address user) external;

    /**
     * @notice Mints LBGT and adds to the reward pool.
     */
    function harvest() external;

    /**
     * @notice Returns all reward token addresses
     * @return Array of reward token addresses
     */
    function getAllRewardTokens() external view returns (address[] memory);

    /**
     * @notice Returns all pending rewards for a specific user
     * @param _user Address of the user to check rewards for
     * @return Array of UserReward structs containing token addresses and amounts
     */
    function getAllRewardsForUser(address _user) external view returns (UserReward[] memory);
}