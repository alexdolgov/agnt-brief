// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @notice Interface of unipool rewards contract used in the Aura Protocol.
interface IBaseRewardPool {
    function rewardToken() external view returns (address);
    function extraRewards(uint256 idx) external view returns (address);
    function extraRewardsLength() external view returns (uint256);
    function getReward() external returns (bool);
}
