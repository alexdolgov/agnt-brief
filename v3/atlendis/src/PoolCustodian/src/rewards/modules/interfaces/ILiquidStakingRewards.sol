// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './IRewardsModule.sol';

/**
 * @title ILiquidStakingRewards
 * @author Atlendis Labs
 * @notice Interface of the Liquid Staking Rewards module contract
 *         This module is controlled by a rewards manager.
 *         It allows to generate rewards of ERC20 tokens based on a configured rate and distribute the rewards to staked positions.
 */
interface ILiquidStakingRewards is IRewardsModule {
    /**
     * @notice Thrown when a value of zero has been given for the rate
     */
    error INVALID_ZERO_RATE();

    /**
     * @notice Emitted when a position has been staked
     * @param positionId ID of the position
     * @param owner Address of the owner of the position
     * @param rate Rate of the position
     * @param positionValue Value of the position at staking time
     */
    event PositionStaked(uint256 indexed positionId, address indexed owner, uint256 rate, uint256 positionValue);

    /**
     * @notice Emitted when a position has been unstaked
     * @param positionId ID of the position
     * @param owner Address of the owner of the position
     * @param positionRewards Value of the position rewards
     */
    event PositionUnstaked(uint256 indexed positionId, address indexed owner, uint256 positionRewards);

    /**
     * @notice Emitted when rewards of a staked position has been claimed
     * @param positionId ID of the position
     * @param owner Address of the owner of the position
     * @param positionRewards Value of the position rewards
     */
    event RewardsClaimed(uint256 indexed positionId, address indexed owner, uint256 positionRewards);

    /**
     * @notice Emitted when rewards are colleted
     * @param pendingRewards Amount of rewards to be collected
     * @param earningsPerDeposit Value of the computed earning per deposit ratio
     */
    event RewardsCollected(uint256 pendingRewards, uint256 earningsPerDeposit);
}
