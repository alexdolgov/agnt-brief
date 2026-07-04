// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

interface IShowerRoomEvent {
    event AddToWaitList(
        address indexed sender,
        uint256 waitListIndex,
        uint256 amountIn,
        uint256 yvTokenAmountIn,
        uint256 stakingRewardPerToken,
        uint256 pendingStakingRewards
    );

    /**
     * @param yvStakingRewards not the same asset as yvTokenWithdrawn,
     *                         e.g. yvTokenWithdrawn = yvUSDC, yvStakingRewards = yvOP
     * @param stakingRewards withdrawn from yvStakingRewards
     */
    event PushToKantaban(
        address indexed account,
        uint256 waitListIndex,
        uint256 depositedToKantaban,
        uint256 shares,
        uint256 yvTokenWithdrawn,
        uint256 assetsWithdrawnFromYearnVault,
        uint256 yvStakingRewards,
        uint256 stakingRewards,
        uint256 assetsSwappedFromRewards
    );

    /**
     * @param assetsSwappedFromRewards identical to stakingRewards if stakingRewards token == _asset
     */
    event Withdraw(
        address indexed account,
        uint256 totalAssetsWithdrawn,
        uint256 yvTokenWithdrawn,
        uint256 assetsWithdrawnFromYearnVault,
        uint256 yvStakingRewards,
        uint256 stakingRewards,
        uint256 assetsSwappedFromRewards
    );

    event UpdateYearnVault(address);

    event UpdateYearnStakingRewards(address);

    event UpdateYearnStakingRewardsVault(address);

    event UpdateRouter(address);

    event UpdatePusher(address);

    event UpdateMaxDepositPerUser(uint256);
}
