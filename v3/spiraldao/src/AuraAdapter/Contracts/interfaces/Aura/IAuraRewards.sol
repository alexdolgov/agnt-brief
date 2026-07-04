// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IAuraRewards{
    function stake(uint256) external;
    function withdraw(uint256, bool) external;
    function withdrawAndUnwrap(uint256, bool) external;
    function getReward(address, bool) external;
    function stakingToken() external view returns (address);
    function balanceOf(address) external view returns (uint256);
    function earned(address) external view returns (uint256);
    function extraRewards(uint256) external view returns (address);
    function extraRewardsLength() external view returns (uint256);
    function rewardToken() external view returns (address);
}