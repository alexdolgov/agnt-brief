// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title Vault Registry Events Interface
 * @author ZeUSD Protocol Team
 * @notice Defines all events emitted by the VaultRegistry contract
 */
interface IVaultRegistryEvents {
    /**
     * @notice Emitted when a new vault is registered or updated
     * @dev Critical event for tracking vault configurations
     * @param rwaAddress Address of the RWA token being registered
     * @param vaultAddress Address of the vault managing the RWA
     * @param vaultName Name identifier for the vault
     * @param ltv Initial/updated Loan-to-Value ratio (1-1000000)
     * @param isActive Whether the vault is active
     * @param isStable Whether the vault handles stable assets
     * @param slippage Slippage tolerance for the collateral
     */
    event VaultRegistryVaultRegistered(
        address indexed rwaAddress,
        address indexed vaultAddress,
        string vaultName,
        uint256 ltv,
        bool isActive,
        bool isStable,
        uint256 slippage
    );

    /**
     * @notice Emitted when a vault is removed from the system
     * @dev Important for tracking decommissioned vaults
     * @param rwaAddress Address of the removed RWA token
     * @param vaultAddress Address of the removed vault
     */
    event VaultRegistryVaultRemoved(address indexed rwaAddress, address indexed vaultAddress);

    /**
     * @notice Emitted when vault configuration is updated
     * @dev Tracks changes to existing vault configurations
     * @param rwaAddress Address of the RWA token
     * @param vaultAddress Address of the affected vault
     * @param ltv Updated Loan-to-Value ratio
     * @param isActive Updated active status
     * @param lastUpdatedAt Timestamp of the last update
     */
    event VaultRegistryVaultUpdated(
        address indexed rwaAddress,
        address indexed vaultAddress,
        uint256 ltv,
        bool isActive,
        uint256 lastUpdatedAt
    );
}
