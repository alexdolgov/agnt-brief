// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {RebalanceData} from "../../types/RebalanceTypes.sol";

/**
 * @title IVaultController
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice Defines the interface for a vault controller, which is responsible for executing actions on a vault.
 * @dev This interface is intended to be implemented by a contract that can manage and interact with various vault functionalities,
 * such as rebalancing and other vault-specific actions.
 */
interface IVaultController {
    /**
     * @notice Executes a rebalance action on the specified vault.
     * @dev This function is called to trigger a rebalancing of the vault's assets according to the provided data.
     * @param vault The address of the vault to be rebalanced.
     * @param rebalanceData An array of `RebalanceData` structs, each containing the necessary information for a rebalance operation.
     */
    function executeRebalance(address vault, RebalanceData[] calldata rebalanceData) external;
}
