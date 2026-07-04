// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

interface IShowerRoomStruct {
    struct User {
        uint256 waitListIndex;
        uint256 amountIn;
        uint256 yvTokenAmountIn;
        uint256 stakingRewardPerToken;
        uint256 pendingStakingRewards;
    }
}
