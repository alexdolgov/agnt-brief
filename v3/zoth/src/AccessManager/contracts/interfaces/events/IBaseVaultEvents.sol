// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title IBaseVaultEvents
 * @notice Interface defining standard events for vault contracts
 * @dev Centralizes event definitions for consistent event emission across vault implementations
 */
interface IBaseVaultEvents {
    /**
     * @notice Emitted when an asset is added to the vault
     * @param asset Address of the added asset
     * @param reason Reason for adding the asset
     */
    event Vault_AssetAdded(address indexed asset, string reason);

    /**
     * @notice Emitted when an asset is removed from the vault
     * @param asset Address of the removed asset
     * @param reason Reason for removing the asset
     */
    event Vault_AssetRemoved(address indexed asset, string reason);
    /**
     * @notice Emitted when the router address is set
     * @param router New router address
     */
    event Vault_RouterSet(address indexed router);

    /**
     * @notice Emitted when emergency mode status changes
     * @param timestamp Time of the change
     * @param enabled New emergency mode status
     */
    event Vault_EmergencyModeSet(uint256 timestamp, bool enabled);

    /**
     * @notice Emitted when an emergency withdrawal is executed
     * @param asset Asset that was withdrawn
     * @param to Address that received the assets
     * @param amount Amount that was withdrawn
     * @param reason Reason for the withdrawal
     */
    event Vault_EmergencyWithdrawalExecuted(
        address indexed asset,
        address indexed to,
        uint256 amount,
        string reason
    );

    /**
     * @notice Emitted when approval is granted for an asset
     * @param asset Asset for which approval was granted
     * @param spender Address that was approved
     * @param amount Amount that was approved
     */
    event Vault_ApprovalGranted(address indexed asset, address indexed spender, uint256 amount);

    /**
     * @notice Emitted when approval is revoked for an asset
     * @param asset Asset for which approval was revoked
     * @param spender Address that was unapproved
     */
    event Vault_ApprovalRevoked(address indexed asset, address indexed spender);

    /**
     * @notice Emitted when maximum slippage is updated
     * @param maxSlippageBps New maximum slippage in basis points
     */
    event Vault_MaxSlippageUpdated(uint256 maxSlippageBps);
}
