// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '../libraries/DataTypes.sol';

/**
 * @title ZeUSD Router Event Interface
 * @author ZeUSD Protocol Team
 * @notice Contains all events emitted by the ZeUSD Router contract
 * @dev Events for tracking state changes and important operations
 * @custom:security Events should be monitored for system activity
 */
interface IZeUSDRouterEvents {
    /**
     * @notice Emitted when a new integration is registered
     * @dev Tracks addition of new protocol integrations
     * @param integrationId Unique identifier for the integration
     * @param integrationType Type of integration being registered (e.g., "AAVE", "Compound")
     * @param subVault Address of the associated subvault
     */
    event IntegrationRegistered(
        bytes32 indexed integrationId,
        string integrationType,
        address subVault
    );

    /**
     * @notice Emitted when an integration is updated
     * @dev Tracks changes to existing integrations
     * @param integrationId ID of the updated integration
     * @param newSubVault New subvault address
     * @param isActive New active status
     */
    event IntegrationUpdated(bytes32 indexed integrationId, address newSubVault, bool isActive);

    /**
     * @notice Emitted when asset support is added to an integration
     * @dev Tracks expansion of supported assets
     * @param integrationId ID of the integration
     * @param asset Address of the newly supported asset
     */
    event AssetSupportAdded(bytes32 indexed integrationId, address indexed asset);

    /**
     * @notice Emitted when a deposit is processed
     * @dev Tracks successful deposit operations
     * @param user Address of the depositing user
     * @param depositId Unique identifier for the deposit
     * @param asset Address of the deposited asset
     * @param amount Amount of asset deposited
     * @param zeusdMinted Amount of zeUSD minted
     * @param subVault Address of the subvault used
     */
    event Deposit(
        address indexed user,
        uint256 depositId,
        address indexed asset,
        uint256 amount,
        uint256 zeusdMinted,
        address indexed subVault
    );

    /**
     * @notice Emitted when a cross-chain bridge transfer is initiated
     * @dev Tracks start of bridge operations
     * @param user Address initiating the bridge
     * @param asset Address of the bridged asset
     * @param amount Amount being bridged
     */
    event BridgeInitiated(address indexed user, address indexed asset, uint256 amount);

    /**
     * @notice Emitted when zeUSD is burned
     * @dev Tracks token burning operations
     * @param user Address burning zeUSD
     * @param asset Address of the released asset
     * @param amount Amount burned
     * @param subVault Address of the subvault
     */
    event Burned(
        address indexed user,
        address indexed asset,
        uint256 amount,
        address indexed subVault
    );

    /**
     * @notice Emitted when global deposit status changes
     * @dev Tracks changes to deposit pause status
     * @param paused New pause status
     */
    event DepositsStatusChanged(bool paused);

    /**
     * @notice Emitted when subvault status changes
     * @param subVault Address of the subvault
     * @param paused New pause status
     */
    event SubVaultStatusChanged(address indexed subVault, bool paused);

    /**
     * @notice Emitted when account whitelist status changes
     * @param account Address affected
     * @param status New whitelist status
     */
    event WhitelistStatusChanged(address indexed account, bool status);

    /**
     * @notice Emitted when account blacklist status changes
     * @param account Address affected
     * @param status New blacklist status
     */
    event BlacklistStatusChanged(address indexed account, bool status);

    /**
     * @notice Emitted when multiple whitelist statuses are updated
     * @param accounts Array of addresses affected
     * @param statuses Array of new whitelist statuses
     */
    event MultipleWhitelistStatusChanged(address[] accounts, bool[] statuses);

    /**
     * @notice Emitted when admin address changes
     * @param newAdmin Address of new admin
     */
    event AdminChanged(address indexed newAdmin);

    /**
     * @notice Emitted when LayerZero adapter is updated
     * @param oldAdapter Address of previous adapter
     * @param newAdapter Address of new adapter
     */
    event LZAdapterUpdated(address indexed oldAdapter, address indexed newAdapter);

    /**
     * @notice Emitted when USDC address is updated
     * @param oldUSDC Previous USDC address
     * @param newUSDC New USDC address
     */
    event USDCUpdated(address indexed oldUSDC, address indexed newUSDC);

    /**
     * @notice Emitted when a primary asset is registered
     * @param asset Primary asset address
     * @param subvault Dedicated subvault address
     */
    event PrimaryAssetRegistered(address indexed asset, address indexed subvault);

    /**
     * @notice Emitted when ZTLNPrime subvault is updated
     * @param oldSubvault Previous subvault address
     * @param newSubvault New subvault address
     */
    event ZTLNPrimeSubvaultUpdated(address indexed oldSubvault, address indexed newSubvault);

    /**
     * @notice Emitted when protocol addresses are updated
     * @param collateralVault New address of the collateral vault contract (indexed)
     * @param zeusdToken New address of the ZeUSD token contract (indexed)
     * @param lzAdapter New address of the LayerZero adapter contract
     */
    event AddressesUpdated(
        address indexed collateralVault,
        address indexed zeusdToken,
        address lzAdapter
    );

    /**
     * @notice Emitted when V2 is initialized
     * @param accessController New address of the access controller contract
     * @param withdrawalSystem New address of the withdrawal system contract
     * @param depositNFT New address of the deposit NFT contract
     */
    event V2Initialized(address accessController, address withdrawalSystem, address depositNFT);
    /**
     * @notice Emitted when a deposit is processed
     * @param user Address of the depositor
     * @param tokenId ID of the minted NFT
     * @param asset Address of the deposited asset
     * @param amount Amount of asset deposited
     * @param zeusdMinted Amount of ZeUSD minted
     */
    event DepositProcessed(
        address indexed user,
        uint256 indexed tokenId,
        address indexed asset,
        uint256 amount,
        uint256 zeusdMinted
    );

    /**
     * @notice Emitted when a historical NFT is issued
     * @param issuer Address of the user who issued the NFT
     * @param tokenId ID of the minted NFT
     * @param collateralAddress Address of the collateral asset
     * @param asset Address of the deposited asset
     * @param amount Amount of asset deposited
     * @param zeusdMinted Amount of ZeUSD minted
     * @param depositTimestamp Timestamp of the deposit
     * @param collateralPrice Price of collateral at deposit time
     * @param subVault Address of the subvault
     * @param tokenType Type of token deposited
     */
    event HistoricalNFTIssued(
        address indexed issuer,
        uint256 indexed tokenId,
        address indexed collateralAddress,
        address asset,
        uint256 amount,
        uint256 zeusdMinted,
        uint256 depositTimestamp,
        uint256 collateralPrice,
        address subVault,
        DataTypes.TokenType tokenType
    );
}
