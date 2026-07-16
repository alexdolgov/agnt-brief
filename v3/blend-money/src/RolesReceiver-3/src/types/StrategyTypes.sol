// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IVaultController} from "../interfaces/controllers/IVaultController.sol";
import {IMarketAdapterController} from "../interfaces/controllers/IMarketAdapterController.sol";
import {IVaultActionController} from "../interfaces/controllers/IVaultActionController.sol";

/// @notice Configuration parameters for a specific market within a strategy
/// @dev Contains market identifier, adapter contract, and leverage settings
struct MarketConfig {
    /// @notice Unique identifier for the market
    /// @dev Usually a hash of market parameters like tokens, oracles etc
    bytes32 marketId;
    /// @notice Controller contract for interacting with the market adapter
    /// @dev Handles protocol-specific market interactions and position management
    IMarketAdapterController adapter;
    /// @notice Target leverage ratio for positions in this market
    /// @dev Expressed as a fixed-point number where 1e18 = 1x leverage
    uint256 leverage;
    /// @notice Boolean indicating if the market is a wrapper
    /// @dev If true, the market is a wrapper and the adapter will use the underlying asset
    bool isWrapped;
    /// @notice Specific bytecode to be deconstructed
    bytes data;
}

struct ActionConfig {
    /// @notice Controller contract for interacting with the action
    IVaultActionController controller;
    /// @notice Specific bytecode to be deconstructed
    bytes data;
}

/// @notice Configuration parameters for a specific vault within a strategy
/// @dev Contains control contract and series of market configs
struct VaultConfig {
    /// @notice Control contract for the lending protocol
    IVaultController control;
    /// @notice Array of adapters that is designed to be run inside of a flashloan context
    MarketConfig[] markets;
    /// @notice Set of hooks that are designed to make targeted changes to user positions
    ActionConfig[] actions;
}
