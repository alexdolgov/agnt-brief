// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {RewardsType} from "../interfaces/IRewards.sol";
import {IRewardsFactory} from "../interfaces/IRewardsFactory.sol";

import {FailedDeployment, InvalidRewardsType} from "../constants/Errors.sol";
import {RewardsDistributorMerkle} from "../rewards/RewardsDistributorMerkle.sol";
import {RewardsDistributorStrategy} from "../rewards/RewardsDistributorStrategy.sol";

/// @title RewardsFactory
/// @notice Factory for creating rewards distributors
contract RewardsFactory is IRewardsFactory {
    string internal constant ZERO_REWARDS_ADDRESS = "zero rewards address";

    /// @inheritdoc IRewardsFactory
    function createRewardsDistributor(address owner_, address strategy_, uint256 timelock_, RewardsType rewardsType_)
        external
        returns (address rewards)
    {
        if (rewardsType_ == RewardsType.Merkle) {
            rewards = address(new RewardsDistributorMerkle(owner_, strategy_, timelock_));
            if (rewards == address(0)) revert FailedDeployment(ZERO_REWARDS_ADDRESS);
        } else if (rewardsType_ == RewardsType.Strategy) {
            rewards = address(new RewardsDistributorStrategy(owner_, strategy_));
            if (rewards == address(0)) revert FailedDeployment(ZERO_REWARDS_ADDRESS);
        } else {
            revert InvalidRewardsType();
        }

        emit RewardsDistributorCreated(rewards);
    }
}
