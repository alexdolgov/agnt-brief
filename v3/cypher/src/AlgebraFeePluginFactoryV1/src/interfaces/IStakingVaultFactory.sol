// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title IStakingVaultFactory
 * @author Camelot
 * @notice Interface for the StakingVaultFactory contract.
 */
interface IStakingVaultFactory {
    /**
     * @notice Thrown when the caller is not the plugin factory.
     */
    error OnlyPluginFactory();

    /**
     * @notice Thrown when the cooldown duration is invalid.
     */
    error InvalidCooldown();

    /**
     * @notice Emitted when a new StakingVault is deployed.
     * @param asset The asset token used by the vault.
     * @param vault The address of the deployed vault.
     * @param cooldownDuration The cooldown duration for the vault.
     */
    event VaultDeployed(
        IERC20 indexed asset,
        address indexed vault,
        uint256 cooldownDuration
    );

    /**
     * @notice Emitted when the cooldown duration is updated.
     * @param previousDuration The previous cooldown duration.
     * @param newDuration The new cooldown duration.
     */
    event CooldownDurationUpdated(uint24 previousDuration, uint24 newDuration);


    /**
     * @notice Emitted when the plugin factory address is updated.
     * @param previousFactory The previous plugin factory address.
     * @param newFactory The new plugin factory address.
     */
    event PluginFactoryUpdated(address previousFactory, address newFactory);

    /**
     * @notice Deploys a new StakingVault vault.
     * @dev Can only be called by the plugin factory.
     * @param asset The asset token to be staked.
     * @return vault Address of the deployed vault.
     */
    function deployVault(IERC20 asset) external returns (address vault);

    /**
     * @notice Returns the cooldown duration for new vaults.
     */
    function cooldownDuration() external view returns (uint24);

    /**
     * @notice Returns the plugin factory address.
     */
    function pluginFactory() external view returns (address);

    /**
     * @notice Sets the cooldown duration for new vaults.
     * @param newCooldownDuration The new cooldown duration.
     */
    function setCooldownDuration(uint24 newCooldownDuration) external;

    /**
     * @notice Sets the plugin factory address.
     * @param newPluginFactory The new plugin factory address.
     */
    function setPluginFactory(address newPluginFactory) external;
}
