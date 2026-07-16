// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

/// @title IKeeperRegistry
/// @notice Interface for the global keeper revocation registry.
///         A single transaction on this contract revokes the keeper
///         across ALL delegated sentry contracts that reference it.
interface IKeeperRegistry {
    // ── Events ──────────────────────────────────────────────────────────────
    event KeeperRevoked();
    event KeeperReinstated();
    event KeepersApproved(address[] keepers);
    event KeepersRevoked(address[] keepers);
    event TimeLockControllerUpdated(address newTimelock);

    // ── Errors ──────────────────────────────────────────────────────────────
    error Unauthorized();
    error InvalidZeroValue();
    error KeeperAlreadyExists();
    error KeeperDoesNotExist();
    error NotTimeLockController();

    // ── Mutative ────────────────────────────────────────────────────────────

    /// @notice Revoke the keeper globally (callable by keeperRevoker only)
    function revokeKeepers(address[] calldata _keepers) external;

    /// @notice approve the keepers globally (callable by keeperRevoker only)
    function approveKeepers(address[] calldata _keepers) external;

    // ── View ────────────────────────────────────────────────────────────────

    /// @notice Returns true if the keeper is currently revoked
    function isKeeperRevoked(address _keeper) external view returns (bool);
}
