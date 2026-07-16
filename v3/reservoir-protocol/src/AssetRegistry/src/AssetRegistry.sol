// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @title AssetRegistry
/// @notice Manages a registry of asset addresses with metadata including adapter, chain, and symbol
/// @dev Implements a permissioned registry with efficient read/write operations for an unbounded list
contract AssetRegistry {
    /*//////////////////////////////////////////////////////////////
                                 ENUMS
    //////////////////////////////////////////////////////////////*/

    /// @notice Supported blockchain networks
    enum Chain {
        ETHEREUM,
        ARBITRUM,
        OPTIMISM,
        POLYGON,
        BASE,
        AVALANCHE,
        BSC,
        FANTOM,
        GNOSIS
    }

    /*//////////////////////////////////////////////////////////////
                               STRUCTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Complete information about a registered asset
    /// @param asset The asset contract address
    /// @param adapter The adapter contract address for this asset
    /// @param chain The blockchain network where the asset exists
    /// @param symbol The token symbol (e.g., "USDC", "WETH")
    struct AssetInfo {
        address asset;
        address adapter;
        Chain chain;
        string symbol;
    }

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice The address authorized to update the registry
    /// @dev Set once at deployment and cannot be changed
    address public immutable admin;

    /// @notice Mapping from asset address to its complete information
    /// @dev Primary storage for asset information
    mapping(address => AssetInfo) private assetInfo;

    /// @notice Array of all registered asset addresses
    /// @dev Maintained for enumeration purposes
    address[] private assets;

    /// @notice Mapping to track which addresses are registered as assets
    /// @dev Used to prevent duplicates and enable O(1) existence checks
    mapping(address => bool) private isAsset;

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when an asset is added or updated
    /// @param asset The asset address
    /// @param adapter The adapter address
    /// @param chain The blockchain network
    /// @param symbol The token symbol
    /// @param isUpdate True if this was an update to an existing entry
    event AssetUpdated(
        address indexed asset,
        address indexed adapter,
        Chain chain,
        string symbol,
        bool isUpdate
    );

    /// @notice Emitted when an asset is removed
    /// @param asset The asset address that was removed
    event AssetRemoved(address indexed asset);

    /// @notice Emitted when multiple assets are updated in a batch
    /// @param count The number of assets updated
    event BatchUpdate(uint256 count);

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when caller is not the admin
    error Unauthorized();

    /// @notice Thrown when providing a zero address where not allowed
    error InvalidAddress();

    /// @notice Thrown when an asset doesn't exist in the registry
    error AssetNotFound();

    /// @notice Thrown when array length mismatch in batch operations
    error LengthMismatch();

    /// @notice Thrown when an empty symbol is provided
    error EmptySymbol();

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @notice Deploys the AssetRegistry contract
    /// @param _admin The address that will have update permissions
    /// @param initialAssets Array of initial asset information to register
    constructor(address _admin, AssetInfo[] memory initialAssets) {
        if (_admin == address(0)) revert InvalidAddress();
        admin = _admin;
        
        // Set initial assets if provided
        if (initialAssets.length > 0) {
            _batchSetAssets(initialAssets);
        }
    }

    /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Sets or updates an asset with complete information
    /// @dev Only callable by admin. Adds to assets array if new.
    /// @param _asset The asset address
    /// @param _adapter The adapter address
    /// @param _chain The blockchain network
    /// @param _symbol The token symbol
    function setAsset(
        address _asset,
        address _adapter,
        Chain _chain,
        string calldata _symbol
    ) external {
        if (msg.sender != admin) revert Unauthorized();
        if (_asset == address(0)) revert InvalidAddress();
        if (bytes(_symbol).length == 0) revert EmptySymbol();
        
        bool isUpdate = isAsset[_asset];
        
        assetInfo[_asset] = AssetInfo({
            asset: _asset,
            adapter: _adapter,
            chain: _chain,
            symbol: _symbol
        });
        
        if (!isUpdate) {
            assets.push(_asset);
            isAsset[_asset] = true;
        }
        
        emit AssetUpdated(_asset, _adapter, _chain, _symbol, isUpdate);
    }

    /// @notice Batch update multiple assets with complete information
    /// @dev Only callable by admin. More gas efficient for multiple updates.
    /// @param _assets Array of asset information
    function batchSetAssets(AssetInfo[] calldata _assets) external {
        if (msg.sender != admin) revert Unauthorized();
        _batchSetAssets(_assets);
    }

    /// @notice Removes an asset from the registry
    /// @dev Only callable by admin. Uses swap-and-pop for gas efficiency.
    /// @param asset The asset address to remove
    function removeAsset(address asset) external {
        if (msg.sender != admin) revert Unauthorized();
        if (!isAsset[asset]) revert AssetNotFound();
        
        // Delete from mapping
        delete assetInfo[asset];
        delete isAsset[asset];
        
        // Remove from array using swap-and-pop
        uint256 length = assets.length;
        for (uint256 i = 0; i < length; i++) {
            if (assets[i] == asset) {
                assets[i] = assets[length - 1];
                assets.pop();
                break;
            }
        }
        
        emit AssetRemoved(asset);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Internal function to batch update multiple assets
    /// @dev Validates inputs and updates storage. Can accept both memory and calldata arrays.
    /// @param _assets Array of asset information
    function _batchSetAssets(AssetInfo[] memory _assets) private {
        uint256 length = _assets.length;
        for (uint256 i = 0; i < length; i++) {
            AssetInfo memory info = _assets[i];
            
            if (info.asset == address(0)) revert InvalidAddress();
            if (bytes(info.symbol).length == 0) revert EmptySymbol();
            
            bool isUpdate = isAsset[info.asset];
            
            assetInfo[info.asset] = info;
            
            if (!isUpdate) {
                assets.push(info.asset);
                isAsset[info.asset] = true;
            }
            
            emit AssetUpdated(info.asset, info.adapter, info.chain, info.symbol, isUpdate);
        }
        
        emit BatchUpdate(length);
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Gets the complete information for a given asset
    /// @dev Returns an AssetInfo struct with all metadata
    /// @param asset The asset address to query
    /// @return AssetInfo struct (will have zero values if asset not found)
    function getAssetInfo(address asset) external view returns (AssetInfo memory) {
        return assetInfo[asset];
    }

    /// @notice Gets the adapter address for a given asset
    /// @dev Returns address(0) if asset is not registered
    /// @param asset The asset address to query
    /// @return The adapter address (or address(0) if not found)
    function getAdapter(address asset) external view returns (address) {
        return assetInfo[asset].adapter;
    }

    /// @notice Checks if an asset is registered
    /// @param asset The asset address to check
    /// @return True if the asset exists in the registry
    function hasAsset(address asset) external view returns (bool) {
        return isAsset[asset];
    }

    /// @notice Returns the total number of registered assets
    /// @return The count of registered assets
    function getAssetCount() external view returns (uint256) {
        return assets.length;
    }

    /// @notice Gets complete asset information by index
    /// @dev Useful for iterating through all assets off-chain
    /// @param index The index in the assets array
    /// @return AssetInfo struct with complete asset information
    function getAssetAt(uint256 index) external view returns (AssetInfo memory) {
        return assetInfo[assets[index]];
    }

    /// @notice Returns a slice of asset information
    /// @dev Useful for paginated queries to avoid hitting gas limits
    /// @param start The starting index (inclusive)
    /// @param end The ending index (exclusive)
    /// @return Array of AssetInfo structs
    function getAssets(uint256 start, uint256 end) external view returns (AssetInfo[] memory) {
        if (end > assets.length) end = assets.length;
        if (start >= end) return new AssetInfo[](0);
        
        uint256 length = end - start;
        AssetInfo[] memory result = new AssetInfo[](length);
        
        for (uint256 i = 0; i < length; i++) {
            result[i] = assetInfo[assets[start + i]];
        }
        
        return result;
    }

    /// @notice Returns all registered asset information
    /// @dev May hit gas limits for very large registries. Use getAssets() for pagination.
    /// @return Array of all AssetInfo structs
    function getAllAssets() external view returns (AssetInfo[] memory) {
        uint256 length = assets.length;
        AssetInfo[] memory result = new AssetInfo[](length);
        
        for (uint256 i = 0; i < length; i++) {
            result[i] = assetInfo[assets[i]];
        }
        
        return result;
    }

    /// @notice Gets multiple asset information in a single call
    /// @dev More gas efficient than multiple individual calls
    /// @param _assets Array of asset addresses to query
    /// @return Array of corresponding AssetInfo structs
    function getAssetsInfo(address[] calldata _assets) external view returns (AssetInfo[] memory) {
        uint256 length = _assets.length;
        AssetInfo[] memory result = new AssetInfo[](length);
        
        for (uint256 i = 0; i < length; i++) {
            result[i] = assetInfo[_assets[i]];
        }
        
        return result;
    }

    /// @notice Gets just the asset addresses (legacy compatibility)
    /// @dev Returns array of registered asset addresses
    /// @return Array of asset addresses
    function getAllAssetAddresses() external view returns (address[] memory) {
        return assets;
    }
}
