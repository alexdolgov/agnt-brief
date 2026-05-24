// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '../libraries/DataTypes.sol';

/**
 * @title Collateral Vault Events Interface
 * @author ZeUSD Protocol Team
 * @notice Defines all events emitted by the CollateralVault contract
 * @dev Events are used for off-chain tracking and monitoring of vault activities
 */
interface ICollateralVaultEvents {
    /**
     * @notice Emitted when admin role is changed
     * @param caller Address that initiated the admin change
     * @param newAdmin Address of the new admin
     * @dev Critical event for tracking administrative changes
     */
    event AdminChanged(address indexed caller, address indexed newAdmin);

    /**
     * @notice Emitted when router address is set
     * @param router Address of the newly set router contract
     * @dev Router can only be set once and is critical for deposit operations
     */
    event RouterSet(address indexed router);

    /**
     * @notice Emitted when a subvault is registered or updated
     * @param collateralAddress Address of the collateral token being registered
     * @param subVaultAddress Address of the subvault managing the collateral
     * @param integrationType Type of integration (e.g., "Aave", "Compound")
     * @param price Initial/updated price of the collateral
     * @param ltv Initial/updated Loan-to-Value ratio
     * @param isActive Whether the subvault is active
     * @param tokenType Type classification of the collateral token
     * @dev Used to track subvault registration and configuration changes
     */
    event SubVaultRegistered(
        address indexed collateralAddress,
        address indexed subVaultAddress,
        string integrationType,
        uint256 price,
        uint256 ltv,
        bool isActive,
        DataTypes.TokenType tokenType
    );

    /**
     * @notice Emitted when subvault configuration is updated
     * @param collateralAddress Address of the collateral token
     * @param subVaultAddress Address of the affected subvault
     * @param price Updated price of the collateral
     * @param ltv Updated Loan-to-Value ratio
     * @param isActive Updated active status
     * @dev Tracks changes to existing subvault configurations
     */
    event SubVaultUpdated(
        address indexed collateralAddress,
        address indexed subVaultAddress,
        uint256 price,
        uint256 ltv,
        bool isActive
    );

    /**
     * @notice Emitted when a subvault is removed from the system
     * @param collateralAddress Address of the removed collateral token
     * @param subVaultAddress Address of the removed subvault
     * @dev Important for tracking decommissioned subvaults
     */
    event SubVaultRemoved(address indexed collateralAddress, address indexed subVaultAddress);

    /**
     * @notice Emitted when a new deposit is recorded
     * @param user Address of the depositor
     * @param asset Address of the deposited asset
     * @param amount Amount of asset deposited
     * @param depositId Unique identifier for the deposit
     * @param subVault Address of the subvault processing the deposit
     * @param integrationType Integration type used for the deposit
     * @param isPrimary Whether this is a primary deposit
     * @param mintAmount Amount of ZeUSD minted against this deposit
     * @param tokenType Type classification of the deposited token
     * @dev Comprehensive tracking of new deposits and their parameters
     */
    event DepositRecorded(
        address indexed user,
        address indexed asset,
        uint256 amount,
        uint256 depositId,
        address subVault,
        string integrationType,
        bool isPrimary,
        uint256 mintAmount,
        DataTypes.TokenType tokenType
    );

    /**
     * @notice Emitted when a deposit is deactivated
     * @param user Address of the deposit owner
     * @param depositId ID of the deactivated deposit
     * @param asset Address of the deposited asset
     * @param amount Original deposit amount
     * @param mintedAmount Amount of ZeUSD that was minted
     * @param subVault Address of the associated subvault
     * @dev Tracks deposit deactivations and final state
     */
    event DepositDeactivated(
        address indexed user,
        uint256 indexed depositId,
        address asset,
        uint256 amount,
        uint256 mintedAmount,
        address subVault
    );

    /**
     * @notice Emitted when a deposit record is permanently removed
     * @param user Address of the deposit owner
     * @param depositId ID of the removed deposit
     * @param asset Address of the deposited asset
     * @param amount Original deposit amount
     * @param zeusdMinted Amount of ZeUSD that was minted
     * @param subVault Address of the associated subvault
     * @dev Tracks permanent removal of deposit records
     */
    event DepositRemoved(
        address indexed user,
        uint256 indexed depositId,
        address asset,
        uint256 amount,
        uint256 zeusdMinted,
        address subVault
    );

    /**
     * @notice Emitted when a user deposit is updated
     * @param user Address of the deposit owner
     * @param depositId ID of the updated deposit
     * @param collateralAddress Updated collateral address
     * @param asset Updated asset address
     * @param amount Updated amount
     * @param zeusdMinted Updated ZeUSD minted amount
     * @param active Updated active status
     * @param isPrimary Updated primary status
     * @dev Tracks changes to deposit parameters
     */
    event UserDepositUpdated(
        address indexed user,
        uint256 indexed depositId,
        address collateralAddress,
        address asset,
        uint256 amount,
        uint256 zeusdMinted,
        bool active,
        bool isPrimary
    );

    /**
     * @notice Emitted when router address is updated
     * @param newRouter Address of the new router
     * @dev Tracks router address changes
     */
    event RouterUpdated(address indexed newRouter);
}
