// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

import { IStakingRewards } from "../base/IStakingRewards.sol";

interface ILBGTStakingRewards is IStakingRewards {
    error OnlyLpStakingRewards();

    function stake(address account, uint256 amount) external;

    function unstake(address account, uint256 amount) external;

    function depositReward(uint256 reward) external;

    function getReward(address recipient) external returns (uint256);

    function getRewardFor(address account, address recipient) external returns (uint256);
}
