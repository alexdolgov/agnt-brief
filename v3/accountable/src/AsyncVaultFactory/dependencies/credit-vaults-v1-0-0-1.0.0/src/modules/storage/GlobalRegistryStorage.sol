// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IGlobalRegistry} from "../../interfaces/IGlobalRegistry.sol";

/// @title GlobalRegistryStorage
/// @notice Storage layout for GlobalRegistry with upgrade safety gap
/// @dev Centralizes storage to avoid collisions and simplify upgradeable contract development
///      All storage variables MUST be declared here
abstract contract GlobalRegistryStorage is IGlobalRegistry {
    /// @inheritdoc IGlobalRegistry
    address public securityAdmin;

    /// @inheritdoc IGlobalRegistry
    address public operationsAdmin;

    /// @inheritdoc IGlobalRegistry
    address public treasury;

    /// @inheritdoc IGlobalRegistry
    address public vaultFactory;

    /// @inheritdoc IGlobalRegistry
    address public rewardsFactory;

    /// @dev Gap for future storage variables
    /// @dev Reserves 50 slots for future additions to GlobalRegistry
    uint256[50] private __gap;
}
