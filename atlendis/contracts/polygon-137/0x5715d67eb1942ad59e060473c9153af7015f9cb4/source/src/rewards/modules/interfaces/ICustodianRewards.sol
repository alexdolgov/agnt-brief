// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './IRewardsModule.sol';

/**
 * @title ICustodianRewards
 * @author Atlendis Labs
 * @notice Interface of the Custodian Rewards module contract
 *         This module is controlled by a rewards manager.
 *         It allows to retrieve the generated rewards by a custodian contract and distribute them to staked positions.
 */
interface ICustodianRewards is IRewardsModule {
    /**
     * @notice Emitted when a position has been staked
     * @param positionId ID of the position
     * @param owner Address of the owner of the position
     * @param rate Rate of the position
     * @param positionValue Value of the position at staking time
     * @param adjustedAmount Value of the computed adjusted amount
     */
    event PositionStaked(
        uint256 indexed positionId,
        address indexed owner,
        uint256 rate,
        uint256 positionValue,
        uint256 adjustedAmount
    );

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
     * @param adjustedAmountDecrease Value of the computed decrease in adjusted amount
     */
    event RewardsClaimed(
        uint256 indexed positionId,
        address indexed owner,
        uint256 positionRewards,
        uint256 adjustedAmountDecrease
    );

    /**
     * @notice Emitted when rewards are colleted
     * @param rewards Total amount of collected rewards
     * @param liquidityRatio Value of the computed liquidity ratio
     * @param unallocatedRewards Amount of unallocated rewards
     */
    event RewardsCollected(uint256 rewards, uint256 liquidityRatio, uint256 unallocatedRewards);
}
