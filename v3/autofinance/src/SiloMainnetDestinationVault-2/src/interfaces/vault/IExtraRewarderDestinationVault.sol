// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC165 } from "openzeppelin-contracts/utils/introspection/IERC165.sol";

/**
 * @title IExtraRewarderDestinationVault
 * @dev Interface for destination vaults that support extra reward collection and queuing
 * @dev This interface provides functionality to collect and queue extra rewards specifically,
 *      which is the different from the regular collectRewards() function
 */
interface IExtraRewarderDestinationVault is IERC165 {
    /**
     * @notice Collect and queue extra rewards to their associated ExtraRewarders
     * @dev This function claims only the gauges and programs that have reward tokens associated with extra rewarders
     * @dev Exists to not interfere with the regular collectRewards() function and the liquidator process
     * @return amounts Array of reward amounts corresponding to each token
     * @return tokens Array of unique reward token addresses
     */
    function collectAndQueueExtraRewards() external returns (uint256[] memory amounts, address[] memory tokens);
}
