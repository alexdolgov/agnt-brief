// SPDX-License-Identifier: Unlicense
pragma solidity >=0.5.0;

interface IMultiRewards {
    function notifyRewardAmount(address rewardsToken, uint256 reward) external;
}
