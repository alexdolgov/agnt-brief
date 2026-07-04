// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

interface IAerodrome {
    function notifyRewardAmount(address _rewardsToken, uint256 reward) external;
}