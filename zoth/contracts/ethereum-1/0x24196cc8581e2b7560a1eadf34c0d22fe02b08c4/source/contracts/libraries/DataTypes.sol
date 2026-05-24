// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/// @title Data Types Library
/// @notice Centralizes type definitions used across the protocol
/// @dev Contains all shared data structures and enums for protocol-wide use
/// @custom:security-contact paras@zoth.io
library DataTypes {
    /// @notice Defines the type classification for tokens in the protocol
    /// @dev Uses uint8 internally for gas optimization since enum is stored as uint8
    /// @custom:usage Used for token classification and validation in deposit/withdrawal flows
    enum TokenType {
        /// @notice Represents non-stablecoin tokens (e.g., ETH, BTC)
        /// @dev Value = 1, optimized for gas when checking non-stable status
        NotStableCoin,
        /// @notice Represents stablecoins (e.g., USDC, DAI)
        /// @dev Value = 0, optimized for gas when checking stable status
        StableCoin
    }

    /// @notice Configuration for supported assets
    /// @dev Struct is packed to optimize gas usage
    /// @param isSupported Whether the asset is currently supported
    /// @param integrationType The type of integration used for this asset
    /// @param tokenType Classification of the token (stable/non-stable)
    struct AssetConfig {
        bool isSupported;
        string integrationType;
        TokenType tokenType; // Added enum field
    }

    /// @notice Stores information about user deposits
    /// @dev Struct ordering optimized for packing into storage slots
    /// @param depositId Unique identifier for this deposit
    /// @param asset Address of the deposited asset
    /// @param amount Amount of asset deposited
    /// @param zeusdMinted Amount of zeUSD minted for this deposit
    /// @param timestamp When the deposit was made
    /// @param subVault Address of the subvault holding the deposit
    /// @param integrationType Type of integration used for this deposit
    /// @param active Whether this deposit is still active
    /// @param isPrimary Indicates if this is a primary asset deposit
    /// @param tokenType Classification of the deposited token
    struct UserDeposit {
        uint256 depositId;
        address collateralAddress;
        address asset;
        uint256 amount;
        uint256 zeusdMinted;
        uint256 timestamp;
        address subVault;
        string integrationType;
        bool active;
        bool isPrimary;
        TokenType tokenType; // Added enum field
    }

    /// @notice Configuration for protocol integrations
    /// @dev Uses mapping for efficient asset support lookups
    /// @param subVault Address of the subvault
    /// @param isActive Whether the integration is currently active
    /// @param registeredAt When the integration was first registered
    /// @param lastUpdated When the integration was last updated
    /// @param supportedAssets Mapping of supported assets for this integration
    struct Integration {
        address subVault;
        bool isActive;
        uint256 registeredAt;
        uint256 lastUpdated;
        mapping(address => bool) supportedAssets;
    }

    /// @notice Detailed information about collateral assets
    /// @dev Struct ordering optimized for packing into storage slots
    /// @param integrationType Type of integration used
    /// @param collateralAddress Address of the collateral token
    /// @param subVaultAddress Address of the associated subvault
    /// @param price Current price of the collateral
    /// @param ltv Loan-to-Value ratio for the collateral
    /// @param isActive Whether this collateral is currently active
    /// @param registeredAt Timestamp of collateral registration
    /// @param lastUpdatedAt Timestamp of last update
    /// @param tokenType Classification of the collateral token
    struct CollateralDetails {
        string integrationType;
        address collateralAddress;
        address subVaultAddress;
        uint256 price;
        uint256 ltv;
        bool isActive;
        uint256 registeredAt;
        uint256 lastUpdatedAt;
        TokenType tokenType; // Added enum field
    }

    /// @notice Parameters for updating subvault configuration
    /// @dev Boolean flags used to selectively update specific parameters
    /// @param price New price value
    /// @param ltv New LTV value
    /// @param isActive New active status
    /// @param updatePrice Whether to update the price
    /// @param updateLTV Whether to update the LTV
    /// @param updateActive Whether to update the active status
    struct SubVaultUpdateParams {
        uint256 price;
        uint256 ltv;
        bool isActive;
        bool updatePrice;
        bool updateLTV;
        bool updateActive;
    }

    /// @notice Parameters for updating protocol addresses
    /// @dev Used in updateAddresses function to specify which addresses to update
    /// @param updateCollateralVault If true, update collateralVault address
    /// @param updateZeusdToken If true, update zeusdToken address
    /// @param updateLzAdapter If true, update lzAdapter address
    /// @param updateAdmin If true, update admin address
    /// @param collateralVault New collateral vault contract address (only used if updateCollateralVault is true)
    /// @param zeusdToken New ZeUSD token contract address (only used if updateZeusdToken is true)
    /// @param lzAdapter New LayerZero adapter contract address (only used if updateLzAdapter is true)
    /// @param admin New admin address (only used if updateAdmin is true)
    struct AddressUpdateParams {
        bool updateCollateralVault;
        bool updateZeusdToken;
        bool updateLzAdapter;
        bool updateAdmin;
        address collateralVault;
        address zeusdToken;
        address lzAdapter;
        address admin;
    }
}
