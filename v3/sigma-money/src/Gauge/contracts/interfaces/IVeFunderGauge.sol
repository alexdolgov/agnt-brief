// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.26;

import {IXShadow} from "./IXShadow.sol";

interface IVeFunderGauge {
    error ZERO_AMOUNT();

    error CANT_NOTIFY_STAKE();

    error REWARD_TOO_HIGH();

    error NOT_GREATER_THAN_REMAINING(uint256 amount, uint256 remaining);

    error TOKEN_ERROR(address token);

    error NOT_WHITELISTED();

    error NOT_AUTHORIZED();

    event NotifyReward(
        address indexed from,
        address indexed reward,
        uint256 amount
    );

    event ClaimRewards(
        address indexed from,
        address indexed reward,
        uint256 amount
    );

    event RewardWhitelisted(address indexed reward, bool whitelisted);

    /// @notice returns an array with all the addresses of the rewards
    /// @return _rewards array of addresses for rewards
    function rewardsList() external view returns (address[] memory _rewards);

    /// @notice number of different rewards the gauge has facilitated that are 'active'
    /// @return _length the number of individual rewards
    function rewardsListLength() external view returns (uint256 _length);

    /// @notice returns the last time the reward was modified or periodFinish if the reward has ended
    /// @param token address of the token
    /// @return ltra last time reward applicable
    function lastTimeRewardApplicable(
        address token
    ) external view returns (uint256 ltra);

    /// @notice displays the data struct of rewards for a token
    /// @param token the address of the token
    /// @return data rewards struct
    function rewardData(
        address token
    ) external view returns (Reward memory data);

    /// @notice claims rewards (shadow + any external LP Incentives)
    /// @param account the address to claim for
    /// @param tokens an array of the tokens to claim
    function getReward(address account, address[] calldata tokens) external;

    /// @notice calculates how many tokens are left to be distributed
    /// @dev reduces per second
    /// @param token the address of the token
    function left(address token) external view returns (uint256);
    
    /// @notice add a reward to the whitelist
    /// @param _reward address of the reward
    function whitelistReward(address _reward) external;

    /// @notice remove rewards from the whitelist
    /// @param _reward address of the reward
    function removeRewardWhitelist(address _reward) external;

    /**
     * @notice amount must be greater than left() for the token, this is to prevent griefing attacks
     * @notice notifying rewards is completely permissionless
     * @notice if nobody registers for a newly added reward for the period it will remain in the contract indefinitely
     */
    function notifyRewardAmount(address token, uint256 amount) external;

    struct Reward {
        /// @dev tokens per second
        uint256 rewardRate;
        /// @dev 7 days after start
        uint256 periodFinish;
        uint256 lastUpdateTime;
        uint256 rewardPerTokenStored;
    }

    /// @notice checks if a reward is whitelisted
    /// @param reward the address of the reward
    /// @return true if the reward is whitelisted, false otherwise
    function isWhitelisted(address reward) external view returns (bool);

    /// @notice the address of the voter contract
    function voter() external view returns (address);

    /// @notice the address of the receiver of the rewards
    function receiver() external view returns (address);

    /// @notice the xShadow token contract
    function xShadow() external view returns (address);

    /// @notice the shadow token contract
    function shadow() external view returns (address);

    /// @notice the emission of the gauge
    function emission() external view returns (uint256);

    /// @notice the max emission of the gauge
    function maxEmission() external view returns (uint256);

    /// @notice checks if a token is a reward token
    /// @param token address of the token
    /// @return true if the token is a reward, false otherwise
    function isReward(address token) external view returns (bool);
}
