// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC165 } from "openzeppelin-contracts/utils/introspection/IERC165.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { IExtraRewarderDestinationVault } from "src/interfaces/vault/IExtraRewarderDestinationVault.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";

import { SiloDestinationVault } from "src/vault/SiloDestinationVault.sol";
import { SiloRewardLib } from "src/destinations/adapters/rewards/SiloRewardLib.sol";
import { Roles } from "src/libs/Roles.sol";

/**
 * @title SiloMainnetDestinationVault
 * @dev Specialized Silo destination vault that handles reward tokens differently.
 * This vault sends reward tokens to ExtraRewarders instead of liquidating
 * @dev This vault uses SiloRewardLib to manage Silo rewards, motivated by contract size optimization
 * and separation of concerns:
 *  - SiloRewardLib: Handles both gauge management and routing of reward tokens to ExtraRewarders
 */
contract SiloMainnetDestinationVault is SiloDestinationVault, IExtraRewarderDestinationVault {
    using SafeERC20 for IERC20Metadata;

    constructor(
        ISystemRegistry sysRegistry
    ) SiloDestinationVault(sysRegistry) { }

    /// ********************************************************************************************************
    /// ADMIN FUNCTIONS
    /// ********************************************************************************************************

    /**
     * @notice Add an extra reward token and its associated ExtraRewarder
     * @param rewardToken The address of the reward token
     * @param extraRewarder The address of the ExtraRewarder for this token
     * @dev Only callable by DESTINATION_VAULT_SILO_MANAGER role
     */
    function addExtraRewardToken(address rewardToken, address extraRewarder) external {
        _ensureSenderHasSiloManagerRole();
        SiloRewardLib.addExtraRewardToken(rewardToken, extraRewarder);
    }

    /**
     * @notice Remove an extra reward token
     * @param rewardToken The address of the reward token to remove
     * @dev Only callable by DESTINATION_VAULT_SILO_MANAGER role
     */
    function removeExtraRewardToken(
        address rewardToken
    ) external {
        _ensureSenderHasSiloManagerRole();
        SiloRewardLib.removeExtraRewardToken(rewardToken);
    }

    /// ********************************************************************************************************
    /// VIEW FUNCTIONS
    /// ********************************************************************************************************

    /**
     * @notice Check if a token is an extra reward token
     * @param rewardToken The address of the reward token to check
     * @return True if the token is an extra reward token
     */
    function isExtraRewardToken(
        address rewardToken
    ) external view returns (bool) {
        return SiloRewardLib.isExtraRewardToken(rewardToken);
    }

    /**
     * @notice Get the ExtraRewarder for a specific reward token
     * @param rewardToken The address of the reward token
     * @return The address of the ExtraRewarder for this token
     */
    function getExtraRewarder(
        address rewardToken
    ) external view returns (address) {
        return SiloRewardLib.getExtraRewarder(rewardToken);
    }

    /**
     * @notice Get all extra reward tokens
     * @return Array of extra reward token addresses
     */
    function getExtraRewardTokens() external view returns (address[] memory) {
        return SiloRewardLib.getExtraRewardTokens();
    }

    /**
     * @notice Get the number of extra reward tokens
     * @return The number of extra reward tokens
     */
    function getExtraRewardTokensCount() external view returns (uint256) {
        return SiloRewardLib.getExtraRewardTokensCount();
    }

    /// ********************************************************************************************************
    /// CUSTOM FUNCTIONS
    /// ********************************************************************************************************

    /**
     * @notice Collect and queue extra rewards to ExtraRewarders
     * @dev Only callable by LIQUIDATOR_MANAGER role
     */
    function collectAndQueueExtraRewards()
        external
        hasRole(Roles.LIQUIDATOR_MANAGER)
        returns (uint256[] memory amounts, address[] memory tokens)
    {
        // Collect only extra reward tokens (strategy 1)
        // Library handles filtering, claiming, and queuing automatically
        (amounts, tokens) = SiloRewardLib.collectRewards(1, _underlying);
    }

    /// ********************************************************************************************************
    /// OVERRIDE FUNCTIONS
    /// ********************************************************************************************************

    /**
     * @notice Override reward collection to handle extra rewards differently
     * @dev This function:
     *      1. Collects only non-extra reward tokens (strategy 2)
     *      2. Transfers them to the liquidator
     * @return amounts Array of reward amounts corresponding to each token
     * @return tokens Array of unique reward token addresses
     */
    function _collectRewards() internal virtual override returns (uint256[] memory amounts, address[] memory tokens) {
        // Collect only non-extra reward tokens (strategy 2)
        // Library handles filtering, claiming, and transferring automatically
        (amounts, tokens) = SiloRewardLib.collectRewards(2, _underlying);
    }

    /// @inheritdoc IERC165
    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(IERC165, SiloDestinationVault) returns (bool) {
        return interfaceId == type(IExtraRewarderDestinationVault).interfaceId || super.supportsInterface(interfaceId);
    }
}
