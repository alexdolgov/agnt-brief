// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title IStakingRewardsFunctions
/// @notice Interface for the staking rewards contract
interface IStakingRewardsFunctions {
    function cooldown(uint256 amount) external;
    function stake(uint256 amount) external;
    function unstake() external;
    function withdraw(uint256 amount) external;
    function exit() external;
    function getReward() external;
    function notifyRewardAmount(uint256 reward) external;
    function pullFunds(uint256 amount) external;
    function putFunds(uint256 amount) external;
    function recoverERC20(address tokenAddress, address to, uint256 tokenAmount) external;
    function setRewardsDistribution(address rewardsDistribution) external;
    function setRewardsDuration(uint256 _rewardsDuration) external;
}

/// @title IStakingRewards
/// @notice Previous interface with additionnal getters for public variables
interface IStakingRewards is IStakingRewardsFunctions {
    function rewardToken() external view returns (IERC20);
    function stakingToken() external view returns (IERC20);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function lastTimeRewardApplicable() external view returns (uint256);
    function rewardPerToken() external view returns (uint256);
    function earned(address account) external view returns (uint256);
    function silo() external view returns (uint256);
}
