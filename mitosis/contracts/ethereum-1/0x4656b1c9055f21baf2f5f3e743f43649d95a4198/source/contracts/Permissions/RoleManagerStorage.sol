// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

/// @title RoleManagerStorage
/// @dev This contract will hold all local variables for the RoleManager Contract
/// When upgrading the protocol, inherit from this contract on the V2 version and change the
/// StorageManager to inherit from the later version.  This ensures there are no storage layout
/// corruptions when upgrading.
abstract contract RoleManagerStorageV1 {
    /// @dev role for granting capability to rebalance the vault
    bytes32 public constant REBALANCE_ADMIN = keccak256("REBALANCE_ADMIN");

    /// @dev role for granting capability to pause the vault/withdraw
    bytes32 public constant PAUSER = keccak256("PAUSER");

    /// @dev role for granting capability to track vault underlying
    bytes32 public constant EXCHANGE_RATE_ADMIN = keccak256("EXCHANGE_RATE_ADMIN");
}

abstract contract RoleManagerStorageV2 is RoleManagerStorageV1 {
    /// @dev role for granting capability to manage orders
    bytes32 public constant ORDER_ADMIN = keccak256("ORDER_ADMIN");

    /// @dev role for granting capability to mint vault shares
    bytes32 public constant MINTER = keccak256("MINTER");
}
