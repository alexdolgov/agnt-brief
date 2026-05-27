// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title TokenStorage
 * @dev Upgradable storage contract for NFT data that can be shared across all users
 * Focuses on ERC721 NFTs with loan contract registration
 */
contract TokenStorage is Ownable {
    // Events
    event AssetDeposited(address indexed account, address indexed tokenAddress, uint256 assetId, address indexed assetHandler);
    event AssetWithdrawn(address indexed account, address indexed tokenAddress, uint256 assetId);
    event AssetHandlerRegistered(address indexed account, address indexed tokenAddress, uint256 assetId, address indexed assetHandler);
    event StorageUpgraded(address indexed newImplementation, uint256 newVersion);

    // Storage for NFT data
    struct NFTData {
        address tokenAddress;
        uint256 assetId; // Generic identifier for ERC721 (tokenId), ERC1155 (tokenId), ERC20 (0 or unique ID)
        address assetHandler; // Contract that handles this asset's operations (voting, claiming, loans)
        bool isCollateral; // Whether this asset is used as collateral
    }

    // Token storage data using named storage slot
    struct TokenStorageData {
        mapping(address => NFTData[]) nfts;
        mapping(address => uint256) totalNFTs;
        
        // Asset handler tracking
        mapping(address => mapping(address => mapping(uint256 => address))) assetHandlers; // account => token => assetId => assetHandler
        
        // Collateral tracking
        mapping(address => mapping(address => mapping(uint256 => bool))) collateralStatus; // account => token => assetId => isCollateral
    }

    // Version tracking
    uint256 public version;
    
    // Named storage slot for account data
    bytes32 private constant ACCOUNT_STORAGE_POSITION = keccak256("upgradable.nft.storage.accounts");

    // Access control
    mapping(address => bool) public authorizedCallers;

    // Modifiers
    modifier onlyAuthorizedCaller() {
        require(authorizedCallers[msg.sender], "TokenStorage: Unauthorized caller");
        _;
    }

    constructor() Ownable(msg.sender) {
        version = 1;
    }

    /**
     * @dev Authorize a caller to interact with storage
     * @param _caller The address to authorize
     */
    function authorizeCaller(address _caller) external onlyOwner {
        require(_caller != address(0), "TokenStorage: Invalid caller");
        authorizedCallers[_caller] = true;
    }

    /**
     * @dev Revoke authorization for a caller
     * @param _caller The address to revoke authorization from
     */
    function revokeCaller(address _caller) external onlyOwner {
        require(_caller != address(0), "TokenStorage: Invalid caller");
        authorizedCallers[_caller] = false;
    }

    /**
     * @dev Get token storage data from named storage slot
     */
    function _getTokenStorage() internal pure returns (TokenStorageData storage tokenStorage) {
        bytes32 position = ACCOUNT_STORAGE_POSITION;
        assembly {
            tokenStorage.slot := position
        }
    }


    /**
     * @dev Deposit an asset (ERC721, ERC1155, or ERC20)
     * @param account The account depositing the asset
     * @param tokenAddress The address of the token
     * @param assetId The identifier for the asset (ERC721 tokenId, ERC1155 tokenId, ERC20 0 or unique ID)
     * @param assetHandler The asset handler contract for this asset (handles voting, claiming, loans)
     */
    function depositAsset(
        address account, 
        address tokenAddress, 
        uint256 assetId, 
        address assetHandler
    ) external onlyAuthorizedCaller {
        require(account != address(0), "TokenStorage: Invalid account");
        require(tokenAddress != address(0), "TokenStorage: Invalid token address");
        require(assetHandler != address(0), "TokenStorage: Invalid asset handler");
        
        TokenStorageData storage tokenStorage = _getTokenStorage();
        
        // Check if asset already exists
        require(!_assetExists(account, tokenAddress, assetId), "TokenStorage: Asset already deposited");
        
        // Create asset data
        NFTData memory assetData = NFTData({
            tokenAddress: tokenAddress,
            assetId: assetId,
            assetHandler: assetHandler,
            isCollateral: false
        });
        
        // Store asset data
        tokenStorage.nfts[account].push(assetData);
        tokenStorage.totalNFTs[account]++;
        tokenStorage.assetHandlers[account][tokenAddress][assetId] = assetHandler;
        
        emit AssetDeposited(account, tokenAddress, assetId, assetHandler);
        emit AssetHandlerRegistered(account, tokenAddress, assetId, assetHandler);
    }

    /**
     * @dev Withdraw an asset
     * @param account The account withdrawing the asset
     * @param tokenAddress The address of the token
     * @param assetId The identifier for the asset
     */
    function withdrawAsset(
        address account, 
        address tokenAddress, 
        uint256 assetId
    ) external onlyAuthorizedCaller {
        require(account != address(0), "TokenStorage: Invalid account");
        require(tokenAddress != address(0), "TokenStorage: Invalid token address");
        
        TokenStorageData storage tokenStorage = _getTokenStorage();
        
        // Check if asset exists and is not collateral
        require(_assetExists(account, tokenAddress, assetId), "TokenStorage: Asset not found");
        require(!tokenStorage.collateralStatus[account][tokenAddress][assetId], 
                "TokenStorage: Cannot withdraw asset used as collateral");
                
        // Remove asset from storage
        _removeAsset(account, tokenAddress, assetId);
        tokenStorage.totalNFTs[account]--;
        delete tokenStorage.assetHandlers[account][tokenAddress][assetId];
        
        emit AssetWithdrawn(account, tokenAddress, assetId);
    }

    /**
     * @dev Set asset as collateral
     * @param account The account
     * @param tokenAddress The token address
     * @param assetId The asset identifier
     * @param isCollateral Whether the asset is collateral
     */
    function setAssetCollateral(
        address account,
        address tokenAddress,
        uint256 assetId,
        bool isCollateral
    ) external onlyAuthorizedCaller {
        require(account != address(0), "TokenStorage: Invalid account");
        require(tokenAddress != address(0), "TokenStorage: Invalid token address");
        require(_assetExists(account, tokenAddress, assetId), "TokenStorage: Asset not found");
        
        TokenStorageData storage tokenStorage = _getTokenStorage();
        tokenStorage.collateralStatus[account][tokenAddress][assetId] = isCollateral;
        
        // Update the asset data
        for (uint256 i = 0; i < tokenStorage.nfts[account].length; i++) {
            if (tokenStorage.nfts[account][i].tokenAddress == tokenAddress && 
                tokenStorage.nfts[account][i].assetId == assetId) {
                tokenStorage.nfts[account][i].isCollateral = isCollateral;
                break;
            }
        }
    }

    /**
     * @dev Get asset handler for an asset
     * @param account The account
     * @param tokenAddress The token address
     * @param assetId The asset identifier
     * @return The asset handler address
     */
    function getAssetHandler(
        address account,
        address tokenAddress,
        uint256 assetId
    ) external view returns (address) {
        TokenStorageData storage tokenStorage = _getTokenStorage();
        return tokenStorage.assetHandlers[account][tokenAddress][assetId];
    }

    /**
     * @dev Check if asset is collateral
     * @param account The account
     * @param tokenAddress The token address
     * @param assetId The asset identifier
     * @return Whether the asset is collateral
     */
    function isAssetCollateral(
        address account,
        address tokenAddress,
        uint256 assetId
    ) external view returns (bool) {
        TokenStorageData storage tokenStorage = _getTokenStorage();
        return tokenStorage.collateralStatus[account][tokenAddress][assetId];
    }

    /**
     * @dev Get all NFTs for an account
     * @param account The account
     * @return Array of NFT data
     */
    function getAccountNFTs(address account) external view returns (NFTData[] memory) {
        TokenStorageData storage tokenStorage = _getTokenStorage();
        return tokenStorage.nfts[account];
    }

    /**
     * @dev Get total number of NFTs for an account
     * @param account The account
     * @return Total number of NFTs
     */
    function getTotalNFTs(address account) external view returns (uint256) {
        TokenStorageData storage tokenStorage = _getTokenStorage();
        return tokenStorage.totalNFTs[account];
    }

    /**
     * @dev Check if asset exists
     * @param account The account
     * @param tokenAddress The token address
     * @param assetId The asset identifier
     * @return Whether the asset exists
     */
    function assetExists(
        address account,
        address tokenAddress,
        uint256 assetId
    ) external view returns (bool) {
        return _assetExists(account, tokenAddress, assetId);
    }

    /**
     * @dev Internal function to check if asset exists
     */
    function _assetExists(
        address account,
        address tokenAddress,
        uint256 assetId
    ) internal view returns (bool) {
        TokenStorageData storage tokenStorage = _getTokenStorage();
        return tokenStorage.assetHandlers[account][tokenAddress][assetId] != address(0);
    }

    /**
     * @dev Internal function to remove asset from storage
     */
    function _removeAsset(
        address account,
        address tokenAddress,
        uint256 assetId
    ) internal {
        TokenStorageData storage tokenStorage = _getTokenStorage();
        
        // Find and remove the asset
        for (uint256 i = 0; i < tokenStorage.nfts[account].length; i++) {
            if (tokenStorage.nfts[account][i].tokenAddress == tokenAddress && 
                tokenStorage.nfts[account][i].assetId == assetId) {
                // Move the last element to the deleted spot
                tokenStorage.nfts[account][i] = tokenStorage.nfts[account][tokenStorage.nfts[account].length - 1];
                tokenStorage.nfts[account].pop();
                    break;
                }
            }
            
        // Clean up collateral status
        delete tokenStorage.collateralStatus[account][tokenAddress][assetId];
    }

    /**
     * @dev Upgrade storage implementation
     * @param newImplementation The new implementation address
     * @param newVersion The new version number
     */
    function upgradeStorage(address newImplementation, uint256 newVersion) external onlyOwner {
        require(newImplementation != address(0), "TokenStorage: Invalid implementation");
        require(newVersion > version, "TokenStorage: Version must be higher");
        
        version = newVersion;
        
        emit StorageUpgraded(newImplementation, newVersion);
    }

    /**
     * @dev Get current version
     * @return Current version number
     */
    function getVersion() external view returns (uint256) {
        return version;
    }
}