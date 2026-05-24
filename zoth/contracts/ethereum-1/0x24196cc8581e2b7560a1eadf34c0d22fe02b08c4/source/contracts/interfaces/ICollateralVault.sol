// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import '../events/ICollateralVaultEvents.sol';
import '../errors/ICollateralVaultErrors.sol';
import '../libraries/DataTypes.sol';

/// @title Collateral Vault Interface
/// @notice Main interface for the CollateralVault contract defining all external functions
/// @dev Implements UUPS upgradeable pattern functionality
interface ICollateralVault is ICollateralVaultEvents, ICollateralVaultErrors {
    /// @notice Initializes the contract with an admin address
    /// @param _admin Address of the initial admin
    /// @dev Sets up roles and initial state
    function initialize(address _admin) external;

    /// @notice Updates the admin role holder
    /// @param _newAdmin Address of the new admin
    /// @dev Only callable by DEFAULT_ADMIN_ROLE
    function setAdmin(address _newAdmin) external;

    /// @notice Sets the router contract address
    /// @param _router Address of the router contract
    /// @dev Can only be set once by admin
    function setRouter(address _router) external;

    /// @notice Registers or updates a subvault configuration
    /// @param integrationType Type of integration
    /// @param collateralAddress Address of the collateral asset
    /// @param subVaultAddress Address of the subvault
    /// @param price Price of the collateral
    /// @param ltv Loan-to-Value ratio
    /// @param isActive Active status of the subvault
    /// @param tokenType Token classification
    /// @dev Only callable by ADMIN_ROLE
    function registerSubVault(
        string calldata integrationType,
        address collateralAddress,
        address subVaultAddress,
        uint256 price,
        uint256 ltv,
        bool isActive,
        DataTypes.TokenType tokenType
    ) external;

    /// @notice Updates specific parameters of a subvault
    /// @param collateralAddress Address of the collateral asset
    /// @param params Update parameters struct
    /// @dev Only callable by ADMIN_ROLE
    function updateSubVaultConfig(
        address collateralAddress,
        DataTypes.SubVaultUpdateParams calldata params
    ) external;

    /// @notice Records a new deposit and calculates ZeUSD mint amount
    /// @param user Address of the depositor
    /// @param asset Address of the collateral asset
    /// @param amount Amount of collateral being deposited
    /// @param subVault Address of the subvault processing the deposit
    /// @return depositId Unique identifier for the deposit
    /// @return mintAmount Amount of ZeUSD to be minted
    /// @dev Only callable by router when not paused
    function recordDeposit(
        address user,
        address collateralAddress,
        address asset,
        uint256 amount,
        address subVault
    ) external returns (uint256 depositId, uint256 mintAmount);

    /// @notice Deactivates a deposit
    /// @param user Address of the deposit owner
    /// @param depositId ID of the deposit to deactivate
    /// @return success Whether the deactivation was successful
    /// @return mintAmount The amount of ZeUSD that was minted for this deposit
    /// @dev Only callable by router when not paused
    function deactivateDeposit(
        address user,
        uint256 depositId
    ) external returns (bool success, uint256 mintAmount);

    /// @notice Calculates the amount of ZeUSD that can be minted for a given collateral amount
    /// @param collateralAddress Address of the collateral asset
    /// @param asset Address of the specific asset being used
    /// @param tokenType Type classification of the token
    /// @param amount Amount of collateral being considered
    /// @return mintAmount Amount of ZeUSD that can be minted
    function calculateMintAmount(
        address collateralAddress,
        address asset,
        DataTypes.TokenType tokenType,
        uint256 amount
    ) external view returns (uint256 mintAmount);

    /// @notice Retrieves all registered subvaults and their details
    /// @return collaterals Array of collateral addresses
    /// @return details Array of corresponding CollateralDetails structs
    function getAllSubVaults()
        external
        view
        returns (address[] memory collaterals, DataTypes.CollateralDetails[] memory details);

    /// @notice Retrieves all active subvaults and their details
    /// @return collaterals Array of active collateral addresses
    /// @return details Array of corresponding CollateralDetails structs
    function getActiveSubVaults()
        external
        view
        returns (address[] memory collaterals, DataTypes.CollateralDetails[] memory details);

    /// @notice Gets the subvault address for a given collateral
    /// @param collateralAddress Address of the collateral asset
    /// @return subVaultAddress Address of the corresponding subvault
    function getSubVaultAddress(
        address collateralAddress
    ) external view returns (address subVaultAddress);

    /// @notice Gets full configuration details for a collateral's subvault
    /// @param collateralAddress Address of the collateral asset
    /// @return details Full configuration details struct
    function getSubVaultDetails(
        address collateralAddress
    ) external view returns (DataTypes.CollateralDetails memory details);

    /// @notice Gets all deposits for a user
    /// @param user Address of the user
    /// @return Array of all user deposits
    function getUserDeposits(address user) external view returns (DataTypes.UserDeposit[] memory);

    /// @notice Gets active deposits for a user
    /// @param user Address of the user
    /// @return Array of active deposits
    function getActiveDeposits(address user) external view returns (DataTypes.UserDeposit[] memory);

    /// @notice Gets specific deposit status and details
    /// @param user Address of the deposit owner
    /// @param depositId ID of the deposit
    /// @return active Whether the deposit is active
    /// @return deposit The deposit details
    function getDepositStatus(
        address user,
        uint256 depositId
    ) external view returns (bool active, DataTypes.UserDeposit memory deposit);

    /// @notice Gets user deposits in a specific subvault
    /// @param user Address of the user
    /// @param subVault Address of the subvault
    /// @return Array of deposits in the specified subvault
    function getUserDepositsBySubVault(
        address user,
        address subVault
    ) external view returns (DataTypes.UserDeposit[] memory);

    /// @notice Gets specific deposit by ID
    /// @param user Address of the user
    /// @param depositId ID of the deposit
    /// @return The deposit details
    function getDepositById(
        address user,
        uint256 depositId
    ) external view returns (DataTypes.UserDeposit memory);

    /// @notice Gets count of registered and active subvaults
    /// @return total Total number of registered subvaults
    /// @return active Number of active subvaults
    function getSubVaultCounts() external view returns (uint256 total, uint256 active);

    /// @notice Removes a subvault registration
    /// @param collateralAddress Address of the collateral asset
    /// @dev Only callable by ADMIN_ROLE
    function removeSubVault(address collateralAddress) external;

    /// @notice Pauses all vault operations
    /// @dev Only callable by ADMIN_ROLE
    function pause() external;

    /// @notice Unpauses vault operations
    /// @dev Only callable by ADMIN_ROLE
    function unpause() external;
}
