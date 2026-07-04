// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface ITipCollector {

    event RewardClaimed(address indexed recipient, uint128 amount);

    function claimReward(address recipient, uint128 reward) external;

    function getTotalRewarded() external view returns (uint256);

    function totalClaimed() external view returns (uint128);
}
