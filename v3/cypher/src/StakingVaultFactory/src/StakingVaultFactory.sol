// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {StakingVault} from "src/StakingVault.sol";
import {IStakingVaultFactory} from "src/interfaces/IStakingVaultFactory.sol";

/**
 * @title StakingVaultFactory
 * @author Cypher Industries
 * @notice Factory contract for deploying StakingVaults.
 * @dev Deploys StakingVault contracts atomically.
 */
contract StakingVaultFactory is IStakingVaultFactory, Ownable {
    /// @notice Maximum allowed cooldown duration (90 days).
    uint24 public constant MAX_COOLDOWN_DURATION = 90 days;

    /// @notice The cooldown duration for new vaults.
    uint24 public cooldownDuration;

    /// @notice The plugin factory address.
    address public pluginFactory;

    /// @notice Restricts function access to the plugin factory only.
    modifier onlyPluginFactory() {
        if (msg.sender != pluginFactory) revert OnlyPluginFactory();
        _;
    }

    /**
     * @notice Constructs the StakingVaultFactory contract.
     * @param _owner The owner address for the contract.
     * @param _pluginFactory The address of the AlgebraFeePluginFactoryV1 contract.
     * @param _cooldownDuration The initial cooldown duration for new vaults.
     */
    constructor(
        address _owner,
        address _pluginFactory,
        uint24 _cooldownDuration
    ) Ownable(_owner) {
        if (_cooldownDuration == 0 || _cooldownDuration > MAX_COOLDOWN_DURATION) {
            revert InvalidCooldown();
        }

        pluginFactory = _pluginFactory;
        cooldownDuration = _cooldownDuration;

        emit PluginFactoryUpdated(address(0), _pluginFactory);
        emit CooldownDurationUpdated(0, _cooldownDuration);
    }

    /**
     * @inheritdoc IStakingVaultFactory
     */
    function deployVault(IERC20 asset)
        external
        onlyPluginFactory
        returns (address vault)
    {
        vault = address(new StakingVault(asset, cooldownDuration));
        StakingVault(vault).transferOwnership(owner());

        emit VaultDeployed(asset, vault, cooldownDuration);
    }

    /**
     * @inheritdoc IStakingVaultFactory
     */
    function setCooldownDuration(uint24 newCooldownDuration) external onlyOwner {
        if (newCooldownDuration == 0 || newCooldownDuration > MAX_COOLDOWN_DURATION) {
            revert InvalidCooldown();
        }
        uint24 previousDuration = cooldownDuration;
        cooldownDuration = newCooldownDuration;
        emit CooldownDurationUpdated(previousDuration, newCooldownDuration);
    }

    /**
     * @inheritdoc IStakingVaultFactory
     */
    function setPluginFactory(address newPluginFactory) external onlyOwner {
        address previousFactory = pluginFactory;
        pluginFactory = newPluginFactory;
        emit PluginFactoryUpdated(previousFactory, newPluginFactory);
    }
}
