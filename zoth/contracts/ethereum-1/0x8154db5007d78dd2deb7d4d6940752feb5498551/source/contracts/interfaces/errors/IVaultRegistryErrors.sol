// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title Vault Registry Errors Interface
 * @author ZeUSD Protocol Team
 * @notice Defines all error types for VaultRegistry operations
 */
interface IVaultRegistryErrors {
    /**
     * @notice Thrown when an invalid (usually zero) address is provided
     * @param addr The invalid address
     * @dev Basic input validation error
     * @custom:security Input validation protection
     */
    error VaultRegistryInvalidAddress(address addr);

    /**
     * @notice Thrown when invalid parameters are provided
     * @param message Descriptive error message
     * @dev Used for general parameter validation failures
     * @custom:security Parameter validation protection
     */
    error VaultRegistryInvalidParameters(string message);

    /**
     * @notice Thrown when attempting to register a duplicate vault
     * @param rwaAddress Address of the RWA token
     * @param existingVault Address of the existing vault
     * @dev Prevents duplicate vault registrations
     * @custom:security State consistency protection
     */
    error VaultRegistryVaultAlreadyRegistered(address rwaAddress, address existingVault);

    /**
     * @notice Thrown when attempting to access an unregistered vault
     * @param rwaAddress Address of the unregistered RWA token
     * @dev State validation error
     * @custom:security State validation protection
     */
    error VaultRegistryVaultNotRegistered(address rwaAddress);

    /**
     * @notice Thrown when an invalid LTV value is provided
     * @dev LTV must be between 0 and 1000000 (100% with 4 decimals)
     * @custom:security Configuration validation
     */
    error VaultRegistryInvalidLTV();

    /**
     * @notice Thrown when an invalid amount is provided
     * @dev Amount validation error (usually zero)
     * @custom:security Input validation protection
     */
    error VaultRegistryInvalidAmount();

    /**
     * @notice Thrown when an unsupported asset is used
     * @param asset Address of the unsupported asset
     * @dev Asset validation error
     * @custom:security Asset support validation
     */
    error VaultRegistryAssetNotSupported(address asset);

    /**
     * @notice Thrown when an unauthorized vault attempts an operation
     * @param vault Address of the unauthorized vault
     * @dev Vault authorization error
     */
    error VaultRegistryUnauthorizedVault(address vault);

    /**
     * @notice Thrown when a price is not available
     * @param asset Address of the asset
     * @dev Price not available error
     */
    error VaultRegistryPriceNotAvailable(address asset);
}
