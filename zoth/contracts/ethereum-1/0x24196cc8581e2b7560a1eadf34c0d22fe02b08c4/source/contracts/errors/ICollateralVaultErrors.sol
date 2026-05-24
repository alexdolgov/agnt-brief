// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

/// @title Collateral Vault Errors Interface
/// @notice Defines custom errors used throughout the CollateralVault contract
/// @dev Provides detailed error information for failure cases
interface ICollateralVaultErrors {
    /// @notice Thrown when an unauthorized address attempts router operations
    /// @param caller Address attempting the operation
    /// @dev Used to protect router-only functions
    error UnauthorizedRouter(address caller);

    /// @notice Thrown when an invalid (usually zero) address is provided
    /// @param addr The invalid address
    /// @dev Basic input validation error
    error InvalidAddress(address addr);

    /// @notice Thrown when invalid parameters are provided
    /// @param message Descriptive error message
    /// @dev Used for general parameter validation failures
    error InvalidParameters(string message);

    /// @notice Thrown when an invalid price is provided (usually zero)
    /// @dev Price validation error
    error InvalidPrice();

    /// @notice Thrown when an invalid LTV value is provided
    /// @dev LTV must be between 0 and 100
    error InvalidLTV();

    /// @notice Thrown when attempting to register a duplicate subvault
    /// @param collateral Address of the collateral
    /// @param existingSubVault Address of the existing subvault
    /// @dev Prevents duplicate subvault registrations
    error SubVaultAlreadyRegistered(address collateral, address existingSubVault);

    /// @notice Thrown when an unsupported asset is used
    /// @param asset Address of the unsupported asset
    /// @dev Asset validation error
    error AssetNotSupported(address asset);

    /// @notice Thrown when attempting to use an inactive subvault
    /// @dev State validation error
    error SubVaultNotActive();

    /// @notice Thrown when an unauthorized subvault attempts an operation
    /// @param subVault Address of the unauthorized subvault
    /// @dev Subvault authorization error
    error UnauthorizedSubVault(address subVault);

    /// @notice Thrown when an invalid amount is provided
    /// @dev Amount validation error (usually zero)
    error InvalidAmount();

    /// @notice Thrown when a calculation results in overflow
    /// @dev Mathematical safety error
    error CalculationOverflow();

    /// @notice Thrown when a requested deposit cannot be found
    /// @param depositId ID of the missing deposit
    /// @dev Deposit lookup error
    error DepositNotFound(uint256 depositId);

    /// @notice Thrown when attempting to operate on an inactive deposit
    /// @dev Deposit state validation error
    error DepositNotActive();
}
