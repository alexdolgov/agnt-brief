// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IVaultController} from "../interfaces/controllers/IVaultController.sol";
import {VaultConfig} from "../types/StrategyTypes.sol";
import {RebalanceData} from "../types/RebalanceTypes.sol";
import {StrategyManager} from "./StrategyManager.sol";
import {DelegateController} from "./DelegateController.sol";

/**
 * @title VaultController
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice Abstract contract providing a secure and controlled execution environment for vault actions.
 * @dev This contract serves as a base for specific vault controller implementations.
 * It validates vaults and their associated action controllers using a `RolesReceiver` contract,
 * ensuring that only authorized operations can be performed.
 * It is designed to be inherited from, with child contracts implementing the core logic.
 */
abstract contract VaultController is IVaultController, DelegateController {
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    StrategyManager internal immutable STRATEGY_MANAGER;

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when a rebalance is executed
     * @param safeAddress The address of the safe initiating the rebalance
     * @param vault The vault where the rebalance occurs
     * @param rebalanceAmounts The amounts for each rebalance operation
     * @param rebalanceAreIncreases Booleans indicating if the rebalance is an increase or decrease
     */
    event Rebalanced(
        address indexed safeAddress, address indexed vault, uint256[] rebalanceAmounts, bool[] rebalanceAreIncreases
    );

    /*//////////////////////////////////////////////////////////////
                            ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when the rebalance data does not match the vault markets.
    error InvalidRebalanceData();
    /// @notice Thrown when zero address is provided where it is not allowed.
    error ZeroAddress();
    /// @notice Thrown when the vault is not real
    error InvalidVault();

    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Validates rebalance data against vault configuration
     * @dev Ensures vault exists and rebalance data matches market configuration
     * @param rebalanceData Array of rebalance data that should match vault markets
     * @custom:throws InvalidRebalanceData If rebalance data length doesn't match markets length
     * @custom:throws InvalidMarketId If rebalance data market ID doesn't match vault market ID
     */
    modifier _validateRebalanceData(address vault, RebalanceData[] calldata rebalanceData) {
        // Resolve the config directly from the strategy manager
        VaultConfig memory vaultConfig = STRATEGY_MANAGER.getVaultConfig(vault);
        // Ensure rebalance data matches number of markets in vault config
        require(rebalanceData.length == vaultConfig.markets.length, InvalidRebalanceData());
        // Ensure that the vault is real
        require(address(vaultConfig.control) != address(0), InvalidVault());
        // Ensure that there is at least one market
        require(vaultConfig.markets.length > 0, InvalidVault());
        // Ensure rebalance data matches market ID for each market
        for (uint256 i = 0; i < rebalanceData.length; i++) {
            require(rebalanceData[i].marketId == vaultConfig.markets[i].marketId, InvalidRebalanceData());
        }
        // Continue execution
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Constructor for the VaultController
     * @param _strategyManager The strategy manager contract
     */
    constructor(StrategyManager _strategyManager) {
        require(address(_strategyManager) != address(0), ZeroAddress());
        STRATEGY_MANAGER = _strategyManager;
    }
}
