// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

interface IMultiFeeDistribution {
    function stakingToken() external view returns (address);
    function stake(uint256 amount, address onBehalfOf) external;
    function unstake(uint256 amount) external;
    function getReward(address _onBehalfOf, address[] memory _rewardTokens) external returns (uint256[] memory claimableAmounts);
    function getAllRewards() external returns (uint256[] memory claimableAmounts);
    function updateReward() external;
} 