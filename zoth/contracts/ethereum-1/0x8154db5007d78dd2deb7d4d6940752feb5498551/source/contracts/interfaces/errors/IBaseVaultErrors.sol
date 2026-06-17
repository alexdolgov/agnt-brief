// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title IBaseVaultErrors
 * @notice Interface defining standard errors for vault contracts
 * @dev Centralizes error definitions for consistent error handling across vault implementations
 */
interface IBaseVaultErrors {
    /**
     * @notice Error thrown when an unauthorized caller attempts a restricted operation
     * @param caller Address of the unauthorized caller
     */
    error Vault_Unauthorized(address caller);

    /**
     * @notice Error thrown when an invalid address (typically zero address) is provided
     * @param addr The invalid address
     */
    error Vault_InvalidAddress(address addr);

    /**
     * @notice Error thrown when an unsupported asset is used in an operation
     * @param asset Address of the unsupported asset
     */
    error Vault_AssetNotSupported(address asset);

    /**
     * @notice Error thrown when attempting to add an already supported asset
     * @param asset Address of the already supported asset
     */
    error Vault_AssetAlreadySupported(address asset);

    /**
     * @notice Error thrown when attempting to remove the primary asset
     */
    error Vault_PrimaryAssetRemovalForbidden();

    /**
     * @notice Error thrown when an invalid amount (typically zero) is provided
     */
    error Vault_InvalidAmount();

    /**
     * @notice Error thrown when attempting an operation while emergency mode is enabled
     * @param timestamp Timestamp when emergency mode was enabled
     */
    error Vault_EmergencyModeActive(uint256 timestamp);

    /**
     * @notice Error thrown when attempting an emergency operation while emergency mode is not enabled
     */
    error Vault_EmergencyModeInactive();

    /**
     * @notice Error thrown when attempting an emergency action before the delay period has passed
     */
    error Vault_EmergencyDelayPeriodActive();

    /**
     * @notice Error thrown when an approval operation fails
     * @param asset Asset for which approval failed
     * @param spender Address that was being approved
     */
    error Vault_ApprovalFailed(address asset, address spender);

    /**
     * @notice Error thrown when an operation on a secondary asset fails
     * @param reason Description of the failure
     */
    error Vault_SecondaryAssetOperationFailed(string reason);

    /**
     * @notice Error thrown when an invalid slippage is provided
     * @param slippage The invalid slippage
     */
    error Vault_InvalidSlippage(uint256 slippage);

    /**
     * @notice Error thrown when slippage exceeds maximum allowed
     * @param expectedAmount Expected amount
     * @param actualAmount Actual amount
     * @param maxSlippage Maximum allowed slippage
     */
    error Vault_SlippageExceeded(uint256 expectedAmount, uint256 actualAmount, uint256 maxSlippage);

    /**
     * @notice Error thrown when attempting to disable emergency mode when it's already inactive
     * @param lastAction Timestamp of the last emergency action
     */
    error Vault_EmergencyModeAlreadyInActive(uint256 lastAction);
}
