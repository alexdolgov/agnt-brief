// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title Data Types Library
 * @notice Centralizes type definitions used across the protocol
 * @dev Contains all shared data structures for protocol-wide use
 * @custom:security-contact tech@zoth.io
 */
library DataTypes {
    /**
     * @notice Detailed information about collateral assets
     * @dev Struct ordering optimized for packing into storage slots
     * @param isStable Whether the collateral is stable
     * @param isActive Whether this collateral is currently active
     * @param vaultName Name of the vault
     * @param rwaAddress Address of the RWA token
     * @param vaultAddress Address of the vault
     * @param ltv Loan-to-Value ratio for the collateral
     * @param registeredAt Timestamp of collateral registration
     * @param lastUpdatedAt Timestamp of last update
     * @param slippage Slippage tolerance for the collateral
     */
    struct Vaults {
        bool isActive;
        bool isStable;
        string vaultName;
        address rwaAddress;
        address vaultAddress;
        uint256 ltv;
        uint256 registeredAt;
        uint256 lastUpdatedAt;
        uint256 slippage;
    }

    /**
     * @notice Parameters for updating subvault configuration
     * @dev Boolean flags used to selectively update specific parameters
     * @param isActive New active status
     * @param updateLTV Whether to update the LTV
     * @param updateActive Whether to update the active status
     * @param updateVaultAddress Whether to update the vault address
     * @param vaultAddress New vault address
     * @param ltv New LTV value
     */
    struct VaultUpdateParams {
        bool isActive;
        bool updateLTV;
        bool updateActive;
        bool updateVaultAddress;
        address vaultAddress;
        uint256 ltv;
    }

    /**
     * @notice Metadata for deposits
     * @dev Struct to store deposit-related information
     * @param isStable Whether the deposited asset is a stablecoin
     * @param isWithdrawInitiated Whether withdrawal has been initiated for this deposit
     * @param isLiquidated Whether the deposit has been liquidated
     * @param vaultName Name of the vault
     * @param issuer Original depositor
     * @param rwa Address of the RWA token
     * @param vaultAddress Address of the vault
     * @param assetDeposited Address of the deposited asset
     * @param assetAmountDeposited Amount of the asset deposited
     * @param rwaAmount Amount of RWA tokens representing the deposit
     * @param zeusdMinted Amount of ZeUSD minted for this deposit
     * @param depositTimestamp Timestamp of the deposit
     * @param tokenId NFT token ID representing this deposit
     * @param rwaPrice Price of the RWA token at the time of deposit
     * @param assetPrice Price of the deposited asset at the time of deposit
     */
    struct DepositMetadata {
        bool isStable;
        bool isWithdrawInitiated;
        bool isLiquidated;
        string vaultName;
        address issuer;
        address rwa;
        address vaultAddress;
        address assetDeposited;
        uint256 assetAmountDeposited;
        uint256 rwaAmount;
        uint256 zeusdMinted;
        uint256 depositTimestamp;
        uint256 tokenId;
        uint256 rwaPrice;
        uint256 assetPrice;
    }
    /// @notice Defines the type classification for tokens in the protocol
    /// @dev Uses uint8 internally for gas optimization since enum is stored as uint8
    /// @custom:usage Used for token classification and validation in deposit/withdrawal flows
    enum TokenType {
        /// @notice Represents non-stablecoin tokens (e.g., ETH, BTC)
        /// @dev Value = 0, optimized for gas when checking non-stable status
        NotStableCoin,
        /// @notice Represents stablecoins (e.g., USDC, DAI)
        /// @dev Value = 1, optimized for gas when checking stable status
        StableCoin
    }
    /// @notice Metadata for deposits
    /// @dev Struct to store deposit-related information
    /// @param issuer Original depositor
    /// @param collateralAddress Address of the collateral
    /// @param asset Address of the deposited asset
    /// @param amount Amount of the deposit
    /// @param zeusdMinted Amount of zeUSD minted for this deposit
    /// @param depositTimestamp Timestamp of the deposit
    /// @param collateralPrice Price of the collateral at the time of deposit
    /// @param subVault Address of the subvault
    /// @param integrationType Type of integration used for this deposit
    /// @param tokenType Classification of the deposited token
    /// @param tokenId NFT token ID representing this deposit
    struct OldDepositMetadata {
        address issuer; // Address of the depositor
        address collateralAddress;
        address asset; // Address of the deposited asset
        uint256 amount; // Amount of asset deposited
        uint256 zeusdMinted; // Amount of ZeUSD minted
        uint256 depositTimestamp;
        uint256 tokenId; // NFT token ID representing this deposit
        uint256 collateralPrice; // Price at deposit time
        address subVault;
        string integrationType;
        TokenType tokenType; // Type of token deposited
    }

    /**
     * @notice Parameters for updating deposit metadata
     * @dev Boolean flags used to selectively update specific parameters
     * @param updateRwa Whether to update the RWA token address
     * @param updateAssetDeposited Whether to update the deposited asset address
     * @param updateAssetAmount Whether to update the deposited asset amount
     * @param updateRwaAmount Whether to update the RWA token amount
     * @param updateZeusdMinted Whether to update the ZeUSD minted amount
     * @param updateRwaPrice Whether to update the RWA token price
     * @param updateAssetPrice Whether to update the deposited asset price
     * @param updateVaultAddress Whether to update the vault address
     * @param updateVaultName Whether to update the vault name
     * @param vaultName New vault name
     * @param rwa New RWA token address
     * @param assetDeposited New deposited asset address
     * @param vaultAddress New vault address
     * @param assetAmountDeposited New deposited asset amount
     * @param rwaAmount New RWA token amount
     * @param zeusdMinted New ZeUSD minted amount
     * @param rwaPrice New RWA token price
     * @param assetPrice New deposited asset price
     */
    struct MetadataUpdateParams {
        bool updateRwa;
        bool updateAssetDeposited;
        bool updateAssetAmount;
        bool updateRwaAmount;
        bool updateZeusdMinted;
        bool updateRwaPrice;
        bool updateAssetPrice;
        bool updateVaultAddress;
        bool updateVaultName;
        string vaultName;
        address rwa;
        address vaultAddress;
        address assetDeposited;
        uint256 assetAmountDeposited;
        uint256 rwaAmount;
        uint256 zeusdMinted;
        uint256 rwaPrice;
        uint256 assetPrice;
    }

    /**
     * @notice Simplified data structure for rebalancing operations
     * @param assetAmountDeposited Amount of the asset that was originally deposited
     * @param rwaAmount Amount of RWA tokens from the original deposit
     * @param zeusdMinted Amount of ZeUSD to be minted in the new system
     * @param rwaPrice Price of the RWA token for the rebalance
     * @param assetPrice Price of the deposited asset for the rebalance
     */
    struct RebalanceData {
        uint256 assetAmountDeposited;
        uint256 rwaAmount;
        uint256 zeusdMinted;
        uint256 rwaPrice;
        uint256 assetPrice;
    }
}
