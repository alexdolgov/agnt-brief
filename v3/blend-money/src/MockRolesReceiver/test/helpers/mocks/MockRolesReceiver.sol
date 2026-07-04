// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {StrategyManager} from "../../../src/libraries/StrategyManager.sol";
import {VaultConfig} from "../../../src/types/StrategyTypes.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MockRolesReceiver
 * @notice Mock implementation of RolesReceiver for testing and deployment
 * @dev This mock removes LayerZero dependencies and exposes setExecutor and updateVaultConfig
 *      as external functions that can be called directly with an address. This makes it easy
 *      to deploy and configure without needing LayerZero messaging infrastructure.
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
contract MockRolesReceiver is StrategyManager, Ownable {
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when a vault configuration is updated
     * @param vaultAddress The address of the vault that was updated
     * @param config The new vault configuration
     */
    event VaultConfigUpdated(address indexed vaultAddress, VaultConfig config);

    /**
     * @notice Emitted when the executor is updated
     * @param executor The new executor address
     */
    event ExecutorUpdated(address indexed executor);

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initializes the MockRolesReceiver contract
     * @param _owner The address that will own this contract
     * @param _minSecondsBetweenOperations The minimum time in seconds that must elapse between operations on the same safe
     * @dev The constructor sets up the StrategyManager with the minimum seconds between operations
     *      and sets the owner for access control
     */
    constructor(address _owner, uint256 _minSecondsBetweenOperations)
        StrategyManager(_minSecondsBetweenOperations)
        Ownable(_owner)
    {}

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Sets the executor address
     * @dev This function allows the owner to set the executor that can execute transactions
     *      on behalf of user safes. The executor has significant privileges, so this should
     *      only be called by trusted addresses.
     * @param _executor The address of the new executor
     * @custom:reverts OwnableUnauthorizedAccount if called by non-owner
     * @custom:events ExecutorSet emitted with the new executor address (from StrategyManager)
     * @custom:events ExecutorUpdated emitted with the new executor address
     */
    function setExecutor(address _executor) external onlyOwner {
        _setExecutor(_executor);
        emit ExecutorUpdated(_executor);
    }

    /**
     * @notice Updates the vault configuration for a specific vault
     * @dev This function allows the owner to update the complete vault configuration including
     *      market configs and action configs. The function validates the configuration for
     *      duplicates, non-zero addresses, and leverage bounds.
     * @param vaultAddress The address of the vault to update
     * @param config The new vault configuration to set
     * @custom:reverts InvalidVaultConfig if the configuration is invalid (duplicates, zero addresses, etc.)
     * @custom:events VaultConfigUpdated emitted with the vault address and new configuration
     */
    function updateVaultConfig(address vaultAddress, VaultConfig memory config) external onlyOwner {
        _updateVaultConfig(vaultAddress, config);
        emit VaultConfigUpdated(vaultAddress, config);
    }
}
