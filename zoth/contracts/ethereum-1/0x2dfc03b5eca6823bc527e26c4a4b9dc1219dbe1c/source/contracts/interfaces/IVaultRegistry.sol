// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import './events/IVaultRegistryEvents.sol';
import './errors/IVaultRegistryErrors.sol';
import '../libraries/DataTypes.sol';

/**
 * @title Vault Registry Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for managing vault configurations and deposit validations
 */
interface IVaultRegistry is IVaultRegistryEvents, IVaultRegistryErrors {
    /**
     * @notice Registers or updates a vault configuration
     * @dev callable by VAULT_ADMIN_ROLE
     * @param vaultName Name of the vault
     * @param rwaAddress Address of the RWA token
     * @param vaultAddress Address of the vault
     * @param ltv Loan to value ratio (1-1000000)
     * @param isActive Whether the vault is active
     * @param isStable Whether the collateral is stable
     */
    function registerVault(
        string calldata vaultName,
        address rwaAddress,
        address vaultAddress,
        uint256 ltv,
        bool isActive,
        bool isStable
    ) external;

    /**
     * @notice Unregisters a vault from the system
     * @dev callable by VAULT_ADMIN_ROLE
     * @param rwaAddress The RWA asset address of the vault to unregister
     */
    function unRegisterVault(address rwaAddress) external;

    /**
     * @notice Updates specific parameters of a vault
     * @dev callable by RISK_CONTROLLER_ROLE
     * @param rwaAddress Address of the RWA asset
     * @param params Update parameters structure
     */
    function updateVaultConfig(
        address rwaAddress,
        DataTypes.VaultUpdateParams calldata params
    ) external;

    /**
     * @notice Calculates mint amount for given collateral
     * @dev Handles both stable and non-stable token calculations
     * @param rwaAddress RWA token address
     * @param asset Asset token address
     * @param amount Amount of collateral
     * @return mintAmount Final mint amount
     */
    function calculateMintAmount(
        address rwaAddress,
        address asset,
        uint256 amount
    ) external view returns (uint256 mintAmount);

    /**
     * @notice Validates deposit parameters and prepares metadata
     * @dev Only callable by router when system is not paused
     * @param user Address of the depositing user
     * @param rwaAddress Address of RWA asset
     * @param assetAddress Address of the asset being deposited
     * @param amount Amount being deposited
     * @param rwaAmount Amount of RWA tokens
     * @param tokenId NFT token ID of the deposit
     * @return metadata Deposit metadata structure
     */
    function validateAndPrepareDeposit(
        address user,
        address rwaAddress,
        address assetAddress,
        uint256 amount,
        uint256 rwaAmount,
        uint256 tokenId
    ) external returns (DataTypes.DepositMetadata memory metadata);

    /**
     * @notice Returns all registered vaults and their details
     * @return rwaAddresses Array of RWA token addresses
     * @return vaultDetails Array of corresponding vault details
     */
    function getAllVaults()
        external
        view
        returns (address[] memory rwaAddresses, DataTypes.Vaults[] memory vaultDetails);

    /**
     * @notice Returns all active subvaults and their details
     * @return rwaAddresses Array of active RWA token addresses
     * @return vaultDetails Array of corresponding vault details
     */
    function getActiveVaults()
        external
        view
        returns (address[] memory rwaAddresses, DataTypes.Vaults[] memory vaultDetails);

    /**
     * @notice Gets subvault address for a collateral asset
     * @param rwaAddress Address of the RWA token
     * @return vaultAddress Address of the corresponding vault
     */
    function getVaultAddress(address rwaAddress) external view returns (address vaultAddress);

    /**
     * @notice Gets all details for a collateral asset's vault
     * @param rwaAddress Address of the RWA token
     * @return details Full vault configuration details
     */
    function getVaultDetails(
        address rwaAddress
    ) external view returns (DataTypes.Vaults memory details);

    /**
     * @notice Gets all registered RWA addresses
     * @return Array of registered RWA addresses
     */
    function getRegisteredRWAs() external view returns (address[] memory);
}
