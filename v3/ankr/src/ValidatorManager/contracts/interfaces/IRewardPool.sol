// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IRewardPool {

    event RewardClaimed(address indexed staker, uint128 amount);

    function claimReward(address recipient, uint128 reward) external;

    function getBalance() external view returns (uint256);

    function getTotalRewarded() external view returns (uint256);
}
