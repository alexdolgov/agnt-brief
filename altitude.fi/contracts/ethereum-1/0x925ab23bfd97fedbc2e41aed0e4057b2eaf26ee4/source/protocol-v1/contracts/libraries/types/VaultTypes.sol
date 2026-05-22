// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/**
 * @title VaultTypes
 * @dev Input parameters for not having "Stack too deep"
 * @author Altitude Labs
 **/

library VaultTypes {
    /// @notice RegistryConfiguration parameters
    struct RegistryConfiguration {
        address WETH;
        address tokensFactory;
        address vaultInitImpl;
        address proxyAdmin;
        address[] borrowAssets;
    }

    /// @notice Vault BorrowLimit configuration parameters
    struct BorrowLimits {
        uint256 supplyThreshold;
        uint256 liquidationThreshold;
        uint256 targetThreshold;
    }

    /// @notice Vault DefiProviders configuration parameters
    struct DefiProviders {
        address[] lending;
        address[] farming;
    }

    /// @notice Vault Buffer configuration parameters
    struct BufferConfig {
        uint256 supplyBuffer;
        uint256 borrowBuffer;
    }

    /// @notice Vault configuration parameters
    /// @todo rvs: any specific reason for reserveFactor being included here rather than
    struct SnapshotableConfig {
        address snapshotableManager;
        uint256 reserveFactor;
    }

    /// @notice Vault configuration parameters
    struct VaultConfig {
        address borrowVerifier;
        uint256 withdrawFeeFactor;
        uint256 withdrawFeePeriod;
        address configurableManager;
        address swapStrategy;
        address accessControl;
    }

    /// @notice Vault Liquidation configuration parameters
    struct LiquidatableConfig {
        /** @notice Liquidation implementation */
        address liquidatableManager;
        /** @notice The maximum liquidation allowed by the contract, 18 decimals */
        uint256 maxPositionLiquidation;
        /** @notice The supply bonus that will be received by the liquidator, 18 decimals */
        uint256 liquidationBonus;
        /** @notice The minimum amount of users that should be liquidated */
        uint256 minUsersToLiquidate;
        /** @notice The minimum amount that should be repayed */
        uint256 minRepayAmount;
    }

    /// @notice Vault Groomable configuration parameters
    struct GroomableConfig {
        /** @notice groomable implementation */
        address groomableManager;
        /** @notice flasloan implementation for proceeding a lender migration */
        address flashLoanStrategy;
        /** @notice decision implementation for check if it makes sense to migrate to a new lender */
        address migrationDecisionMaker;
        /** @notice a fixed percentage for check if the given flash loan strategy charges bigger tax than the one we are happy to pay */
        uint256 maxMigrationFeePercentage;
    }

    /// @notice Vault FarmMode configuration parameters
    struct FarmModeConfig {
        /** @notice farm mode implementation */
        address farmModeManager;
        /** @notice the only address that can call farm mode */
        address farmModeDecisionMaker;
    }

    /// @notice Vault FarmModeStorage configuration parameters
    struct FarmModeStorage {
        /** @notice indicates if the protocol has farm mode enabled or not */
        bool farmMode;
        /** @notice In case of entering farm mode and there are more funds being withdrawn
        from the farm strategy than the ones needed to repay the lender strategy a.k.a excess funds */
        uint256 farmModeReserve;
        FarmModeConfig config;
    }

    /// @notice Vault Init configuration parameters
    struct VaultInit {
        VaultConfig vaultConfig;
        BorrowLimits borrowLimits;
        DefiProviders providers;
    }

    /// @notice Vault Data parameters
    struct VaultData {
        VaultInit vaultInit;
        LiquidatableConfig liquidatableConfig;
        GroomableConfig groomableConfig;
        FarmModeConfig farmModeConfig;
        SnapshotableConfig snapshotableConfig;
    }

    /// @notice Vault Creation parameters
    struct VaultCreation {
        VaultData vaultData;
        BufferConfig bufferConfig;
    }
}
