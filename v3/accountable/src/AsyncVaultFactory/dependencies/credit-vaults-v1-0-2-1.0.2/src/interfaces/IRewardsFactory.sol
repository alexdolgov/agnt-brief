// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {RewardsType} from "../interfaces/IRewards.sol";

/// @title IRewardsFactory
/// @notice Interface for creating rewards distributors
interface IRewardsFactory {
    /// @notice Emitted when a new rewards distributor is created
    /// @param rewards The address of the created rewards distributor
    event RewardsDistributorCreated(address indexed rewards);

    /// @notice Creates a new rewards distributor
    /// @param owner The owner of the rewards distributor
    /// @param strategy The strategy that will use the rewards distributor
    /// @param timelock The timelock for root acceptence in merkle distributor
    /// @param rewardsType The type of rewards distributor to create
    /// @return The address of the created rewards distributor
    function createRewardsDistributor(address owner, address strategy, uint256 timelock, RewardsType rewardsType)
        external
        returns (address);
}
