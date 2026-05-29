// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

import "./factory/IAegisVaultFactoryEvents.sol";
import "./factory/IAegisVaultFactoryImmutables.sol";
import "./factory/IAegisVaultFactoryOwnerActions.sol";
import "./factory/IAegisVaultFactoryState.sol";

/// @title The interface for the Aegis Vault Factory
/// @notice The Aegis Vault Factory facilitates creation of Aegis vaults and manages defaults for protocol fees
/// @dev This interface combines all the sub-interfaces for the Aegis Vault Factory
interface IAegisVaultFactory is
    IAegisVaultFactoryImmutables,
    IAegisVaultFactoryEvents,
    IAegisVaultFactoryOwnerActions,
    IAegisVaultFactoryState
{ }
