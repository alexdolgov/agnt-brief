// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {RewardsType} from "../interfaces/IRewards.sol";
import {PermissionLevel} from "../interfaces/IAccess.sol";

interface IStrategyFactoryBase {
    /// @notice Emitted when the fee manager address is updated
    /// @param oldFeeManager The previous fee manager address
    /// @param newFeeManager The new fee manager address
    event FeeManagerSet(address oldFeeManager, address newFeeManager);

    /// @notice Emitted when the strategy implementation address is updated
    /// @param oldStrategyImplementation The previous implementation address
    /// @param newStrategyImplementation The new implementation address
    event StrategyImplementationSet(address oldStrategyImplementation, address newStrategyImplementation);

    /// @notice Emitted when the vault factory address is updated
    /// @param oldVaultFactory The previous vault factory address
    /// @param newVaultFactory The new vault factory address
    event VaultFactorySet(address oldVaultFactory, address newVaultFactory);

    /// @notice Emitted when the rewards factory address is updated
    /// @param oldRewardsFactory The previous rewards factory address
    /// @param newRewardsFactory The new rewards factory address
    event RewardsFactorySet(address oldRewardsFactory, address newRewardsFactory);

    /// @notice Emitted when the global registry address is updated
    /// @param oldGlobals The previous global registry address
    /// @param newGlobals The new global registry address
    event GlobalsSet(address oldGlobals, address newGlobals);

    /// @notice Emitted when an asset is added to the whitelist
    /// @param asset The asset address
    /// @param status Whether the asset is whitelisted or not
    event AssetWhitelistSet(address asset, bool status);

    /// @notice Emitted when the whitelist status is updated
    /// @param status The new whitelist status
    event WhitelistSet(bool status);

    /// @notice Sets a new global registry address
    /// @param globals The new global registry address
    function setGlobals(address globals) external;

    /// @notice Sets a new fee manager address
    /// @param feeManager The new fee manager address
    function setFeeManager(address feeManager) external;

    /// @notice Sets a new strategy implementation address
    /// @param strategyImplementation The new implementation address
    function setStrategyImplementation(address strategyImplementation) external;

    /// @notice Sets a new asset whitelist or change the whitelist status if the asset is already whitelisted
    /// @param asset The asset address
    function setAssetWhitelist(address asset) external;

    /// @notice Sets the whitelist status
    /// @param status The new whitelist status
    function setWhitelist(bool status) external;

    /// @notice Returns whether asset whitelisting is enabled
    /// @return Whether asset whitelisting is enabled
    function enableWhitelist() external view returns (bool); 

    /// @notice Returns the global registry address
    /// @return The global registry address
    function globals() external view returns (address);

    /// @notice Returns the fee manager address
    /// @return The fee manager address
    function feeManager() external view returns (address);

    /// @notice Returns the strategy implementation address
    /// @return The strategy implementation address
    function strategyImplementation() external view returns (address);

    /// @notice Returns whether an asset is whitelisted
    /// @param asset The asset address
    /// @return Whether the asset is whitelisted
    function assetStatus(address asset) external view returns (bool);

    /// @notice Returns the vault address associated with a strategy
    /// @param strategy The strategy address
    /// @return The associated vault address
    function getStrategyVault(address strategy) external view returns (address);

    /// @notice Returns a paginated list of strategy addresses
    /// @param start The start index
    /// @param end The end index
    /// @return Array of strategy addresses within the specified range
    function getStrategiesPaginated(uint256 start, uint256 end) external view returns (address[] memory);

    /// @notice Returns the total number of strategies created
    /// @return The total count of strategies
    function getStrategiesCount() external view returns (uint256);
}

/// @notice Parameters for creating a fixed term loan with an associated vault
struct FixedTermFactoryParams {
    /// @notice The asset token address for the strategy
    address asset;
    /// @notice The investment manager address
    address investmentManager;
    /// @notice The permission level for the loan
    PermissionLevel permissionLevel;
    /// @notice Whether shares are transferable
    bool sharesTransferable;
    /// @notice The symbol for the vault's shares token
    string symbol;
    /// @notice The name for the vault's shares token
    string name;
    /// @notice The salt used for deterministic address generation
    bytes32 salt;
}

interface IFixedTermFactory is IStrategyFactoryBase {
    /// @notice Emitted when a new fixed term loan is created
    /// @param proxy The address of the created loan proxy contract
    /// @param vault The address of the associated vault contract
    /// @param manager The investment manager address
    event FixedTermCreated(address indexed proxy, address indexed vault, address indexed manager);

    /// @notice Creates a new fixed term loan with an associated vault
    /// @param params The parameters for creating a fixed term loan with an associated vault
    function createFixedTermLoan(FixedTermFactoryParams memory params) external returns (address, address);
}

/// @notice Parameters for creating a fixed term loan with an associated vault and rewards distributor
struct FixedTermMMFactoryParams {
    /// @notice The asset token address for the loan
    address asset;
    /// @notice The native token address for the loan
    address native;
    /// @notice The investment manager address
    address investmentManager;
    /// @notice The price oracle address for the loan
    address priceOracle;
    /// @notice The permission level for the loan
    PermissionLevel permissionLevel;
    /// @notice The rewards type for the loan
    RewardsType rewardsType;
    /// @notice The timelock for root acceptence in merkle distributor
    uint256 rootTimelock;
    /// @notice Whether shares are transferable
    bool sharesTransferable;
    /// @notice The name for the vault's shares token
    string name;
    /// @notice The symbol for the vault's shares token
    string symbol;
    /// @notice The salt used for deterministic address generation
    bytes32 salt;
}

interface IFixedTermMMFactory is IStrategyFactoryBase {
    /// @notice Emitted when a new fixed term loan is created
    /// @param proxy The address of the created loan proxy contract
    /// @param vault The address of the associated vault contract
    /// @param rewards The address of the associated rewards distributor contract
    /// @param manager The investment manager address
    /// @param admin The admin address
    event FixedTermMMCreated(
        address indexed proxy, address indexed vault, address rewards, address indexed manager, address admin
    );

    /// @notice Creates a new fixed term loan with an associated vault
    /// @param params The parameters for creating a fixed term loan with an associated vault and rewards distributor
    function createFixedTermLoanMM(FixedTermMMFactoryParams memory params) external returns (address, address);
}

/// @notice Parameters for creating an open term loan with an associated vault
struct OpenTermFactoryParams {
    /// @notice The asset token address for the strategy
    address asset;
    /// @notice The investment manager address
    address investmentManager;
    /// @notice The permission level for the loan
    PermissionLevel permissionLevel;
    /// @notice Whether shares are transferable
    bool sharesTransferable;
    /// @notice The symbol for the vault's shares token
    string symbol;
    /// @notice The name for the vault's shares token
    string name;
    /// @notice The salt used for deterministic address generation
    bytes32 salt;
}

interface IOpenTermFactory is IStrategyFactoryBase {
    /// @notice Emitted when a new open term loan is created
    /// @param proxy The address of the created loan proxy contract
    /// @param vault The address of the associated vault contract
    /// @param manager The investment manager address
    event OpenTermCreated(address indexed proxy, address indexed vault, address indexed manager);

    /// @notice Creates a new open term loan with an associated vault
    /// @param params The parameters for creating an open term loan with an associated vault
    function createOpenTermLoan(OpenTermFactoryParams memory params) external returns (address, address);
}
