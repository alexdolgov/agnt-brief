// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";

import { ERC4626DestinationVault } from "src/vault/ERC4626DestinationVault.sol";
import { SiloRewardLib } from "src/destinations/adapters/rewards/SiloRewardLib.sol";
import { Roles } from "src/libs/Roles.sol";
import { IERC165 } from "openzeppelin-contracts/utils/introspection/IERC165.sol";
import { Errors } from "src/utils/Errors.sol";

/**
 * @title Destination Vault to proxy a Silo 4626 Lending Vault
 *
 * @dev SILO overview:
 * - Rewards are distributed through gauges (SiloIncentivesControllers)
 * - Each gauge can have multiple incentive programs, each with its own reward token
 * - Rewards are claimed by calling claimRewards() on each gauge
 * - Programs are discovered dynamically via IDistributionManager.getAllProgramsNames()
 *
 *
 * @dev This vault uses SiloRewardLib to manage Silo rewards, motivated by contract size optimization
 * and separation of concerns:
 *  - SiloRewardLib: Manages whitelisted gauges for reward collection. Programs are discovered
 *      dynamically to reduce admin overhead and improve maintainability. It also handles the
 *      entire reward collection flow internally.
 *
 * @dev This vault automatically collects rewards from all gauges when collectRewards() is called by the liquidator
 * @dev It reports reward tokens that have also been claimed on our behalf or transferred to the vault
 */
contract SiloDestinationVault is ERC4626DestinationVault, IERC165 {
    using SafeERC20 for IERC20Metadata;

    constructor(
        ISystemRegistry sysRegistry
    ) ERC4626DestinationVault(sysRegistry) { }

    /// @inheritdoc IDestinationVault
    function initialize(
        IERC20Metadata baseAsset_,
        IERC20Metadata underlyer_,
        IMainRewarder rewarder_,
        address incentiveCalculator_,
        address[] memory additionalTrackedTokens_,
        bytes memory params_
    ) public virtual override {
        super.initialize(baseAsset_, underlyer_, rewarder_, incentiveCalculator_, additionalTrackedTokens_, params_);
    }

    /// ********************************************************************************************************
    /// ADMIN FUNCTIONS
    /// ********************************************************************************************************

    /**
     * @notice Add a gauge to the whitelist for reward collection
     * @param gauge The address of the gauge to whitelist
     * @dev Only callable by DESTINATION_VAULT_SILO_MANAGER role
     */
    function addGauge(
        address gauge
    ) external {
        _ensureSenderHasSiloManagerRole();
        SiloRewardLib.addGauge(gauge);
    }

    /**
     * @notice Remove a gauge from the whitelist
     * @param gauge The address of the gauge to remove from whitelist
     * @dev Only callable by DESTINATION_VAULT_SILO_MANAGER role
     */
    function removeGauge(
        address gauge
    ) external {
        _ensureSenderHasSiloManagerRole();
        SiloRewardLib.removeGauge(gauge);
    }

    /// ********************************************************************************************************
    /// VIEW FUNCTIONS
    /// ********************************************************************************************************

    /**
     * @notice Get all whitelisted gauges
     * @return Array of whitelisted gauge addresses
     */
    function getWhitelistedGauges() external view returns (address[] memory) {
        return SiloRewardLib.getWhitelistedGauges();
    }

    /**
     * @notice Check if a gauge is whitelisted
     * @param gauge The address of the gauge
     * @return True if the gauge is whitelisted
     */
    function isGaugeWhitelisted(
        address gauge
    ) external view returns (bool) {
        return SiloRewardLib.isGaugeWhitelisted(gauge);
    }

    /**
     * @notice Reverts if msg.sender doesn't have DESTINATION_VAULT_SILO_MANAGER role
     */
    function _ensureSenderHasSiloManagerRole() internal view {
        if (!_hasRole(Roles.DESTINATION_VAULT_SILO_MANAGER, msg.sender)) revert Errors.AccessDenied();
    }

    /// ********************************************************************************************************
    /// OVERRIDE FUNCTIONS
    /// ********************************************************************************************************

    /// @inheritdoc IDestinationVault
    function exchangeName() external pure virtual override returns (string memory) {
        return "silo";
    }

    /// @inheritdoc IDestinationVault
    function poolType() external pure virtual override returns (string memory) {
        return "sToken";
    }

    /// @inheritdoc IDestinationVault
    function destType() external pure virtual override returns (string memory) {
        return "hold";
    }

    /// ********************************************************************************************************
    /// CORE REWARD COLLECTION LOGIC
    /// ********************************************************************************************************

    /**
     * @notice Collect rewards from all whitelisted gauges
     * @dev This function:
     *      1. Calls SiloRewardLib.collectRewards() with strategy 0 (all tokens)
     *      2. The library handles getting programs, filtering, claiming, and aggregating
     *      3. Transfers all collected tokens to the message sender (liquidator)
     *      4. Returns arrays of unique tokens and their corresponding amounts
     *
     * @return amounts Array of reward amounts corresponding to each token
     * @return tokens Array of unique reward token addresses
     */
    function _collectRewards() internal virtual override returns (uint256[] memory amounts, address[] memory tokens) {
        // Collect all rewards (strategy 0 = include all tokens)
        // Library handles filtering, claiming, and transferring/queuing automatically
        (amounts, tokens) = SiloRewardLib.collectRewards(0, _underlying);
    }

    /// @inheritdoc IERC165
    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId || interfaceId == type(IDestinationVault).interfaceId;
    }
}
