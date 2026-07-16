// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title ZeUSD Router Event Interface
 * @author ZeUSD Protocol Team
 * @notice Defines all events emitted by the ZeUSD Router contract
 */
interface IZeUSDRouterEvents {
    /**
     * @notice Emitted when a deposit is processed
     * @param user Address of the user making the deposit
     * @param tokenId ID of the minted NFT token
     * @param asset Address of the deposited asset
     * @param amount Amount of asset deposited
     * @param zeusdMinted Amount of ZeUSD minted
     */
    event Deposit(
        address indexed user,
        uint256 indexed tokenId,
        address indexed asset,
        uint256 amount,
        uint256 zeusdMinted
    );

    /**
     * @notice Emitted when contracts are initialized
     * @param vaultRegistry Address of the vault registry contract
     * @param vaultRegistryName Name of the vault registry
     * @param zeUSDold Address of the old ZeUSD token contract
     * @param zeUSDoldName Name of the old ZeUSD token
     * @param zeUSD Address of the ZeUSD token contract
     * @param zeUSDName Name of the ZeUSD token
     * @param accessController Address of the access controller
     * @param accessControllerName Name of the access controller
     * @param withdrawalSystem Address of the withdrawal system
     * @param withdrawalSystemName Name of the withdrawal system
     * @param zeDP Address of the ZeDP contract
     * @param zeDPName Name of the ZeDP contract
     * @param zeDPold Address of the old ZeDP contract
     * @param zeDPoldName Name of the old ZeDP contract
     */
    event ContractsInitialized(
        address vaultRegistry,
        string vaultRegistryName,
        address zeUSDold,
        string zeUSDoldName,
        address zeUSD,
        string zeUSDName,
        address accessController,
        string accessControllerName,
        address withdrawalSystem,
        string withdrawalSystemName,
        address zeDP,
        string zeDPName,
        address zeDPold,
        string zeDPoldName
    );

    /**
     * @notice Emitted when a withdrawal request is initiated
     * @param user Address of the user initiating the withdrawal
     * @param nftTokenId ID of the NFT token representing the withdrawal
     * @param amount Amount of asset being withdrawn
     */
    event WithdrawalInitiated(address indexed user, uint256 indexed nftTokenId, uint256 amount);

    /**
     * @notice Emitted when a merkle root is updated
     * @param merkleRoot The new merkle root
     */
    event MerkleRootUpdated(bytes32 merkleRoot);

    /**
     * @notice Emitted when a rebalance is initiated
     * @param user Address of the user initiating the rebalance
     * @param tokenId ID of the minted NFT token
     * @param zeusdMinted Amount of ZeUSD minted
     */
    event Rebalance(address indexed user, uint256 indexed tokenId, uint256 zeusdMinted);

    /**
     * @notice Emitted when a whitelist status is updated
     * @param account Address of the account whose whitelist status is updated
     * @param status New whitelist status (true for whitelisted, false for not whitelisted)
     */
    event WhitelistStatusUpdated(address indexed account, bool status);

    /**
     * @notice Emitted when the migration treasury address is updated
     * @param oldTreasury Previous migration treasury address
     * @param newTreasury New migration treasury address
     */
    event MigrationTreasuryUpdated(address indexed oldTreasury, address indexed newTreasury);
}
