// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

interface IQuickStakingRewards {
    // Views
    function lastTimeRewardApplicable() external view returns (uint);

    function periodFinish() external view returns (uint);

    function rewardRate() external view returns (uint);

    function rewardPerToken() external view returns (uint);

    function earned(address account) external view returns (uint);

    function totalSupply() external view returns (uint);

    function balanceOf(address account) external view returns (uint);

    // Mutative
    function stake(uint amount) external;

    function withdraw(uint amount) external;

    function getReward() external;

    function exit() external;
}
