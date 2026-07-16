// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @title AssetRegistry
/// @notice Manages a registry of asset addresses with metadata including adapter, chain, and symbol
/// @dev Implements a permissioned registry with efficient read/write operations for an unbounded list
contract AssetRegistry {
    /*//////////////////////////////////////////////////////////////
                               STRUCTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Complete information about a registered asset
    /// @param asset The asset contract address
    /// @param adapter The adapter contract address for this asset
    /// @param chain The blockchain network name where the asset exists
    /// @param symbol The token symbol (e.g., "USDC", "WETH")
    struct AssetInfo {
        address asset;
        address adapter;
        string chain;
        string symbol;
    }

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice The address authorized to update the registry
    /// @dev Set once at deployment and cannot be changed
    address public immutable admin;

    /// @notice Array of supported chain names
    /// @dev Can be updated by admin
    string[] private supportedChains;

    /// @notice Mapping from chain name to whether it's supported
    /// @dev Used for O(1) lookups
    mapping(string => bool) private isChainSupported;

    /// @notice Mapping from entry hash to its complete information
    /// @dev Primary storage for asset information, keyed by hash of entire tuple
    mapping(bytes32 => AssetInfo) private assetInfo;

    /// @notice Array of all registered entry hashes
    /// @dev Maintained for enumeration purposes
    bytes32[] private assetHashes;

    /// @notice Mapping to track which entry hashes are registered
    /// @dev Used to prevent duplicates and enable O(1) existence checks
    mapping(bytes32 => bool) private isRegistered;

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
        string chain,
        string symbol,
        bool isUpdate
    );

    /// @notice Emitted when an asset is removed
    /// @param asset The asset address that was removed
    event AssetRemoved(address indexed asset);

    /// @notice Emitted when multiple assets are updated in a batch
    /// @param count The number of assets updated
    event BatchUpdate(uint256 count);

    /// @notice Emitted when a chain is added to supported chains
    /// @param chainName The name of the chain added
    event ChainAdded(string chainName);

    /// @notice Emitted when a chain is removed from supported chains
    /// @param chainName The name of the chain removed
    event ChainRemoved(string chainName);

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

    /// @notice Thrown when an empty chain name is provided
    error EmptyChain();

    /// @notice Thrown when a chain is not supported
    error ChainNotSupported(string chain);

    /// @notice Thrown when trying to add a chain that already exists
    error ChainAlreadyExists(string chain);

    /// @notice Thrown when a chain is not found
    error ChainNotFound(string chain);

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @notice Deploys the AssetRegistry contract
    /// @param _admin The address that will have update permissions
    /// @param _initialChains Array of initial supported chain names
    /// @param initialAssets Array of initial asset information to register
    constructor(
        address _admin,
        string[] memory _initialChains,
        AssetInfo[] memory initialAssets
    ) {
        if (_admin == address(0)) revert InvalidAddress();
        admin = _admin;
        
        // Set initial supported chains
        for (uint256 i = 0; i < _initialChains.length; i++) {
            string memory chainName = _initialChains[i];
            if (bytes(chainName).length == 0) revert EmptyChain();
            if (isChainSupported[chainName]) revert ChainAlreadyExists(chainName);
            
            supportedChains.push(chainName);
            isChainSupported[chainName] = true;
            emit ChainAdded(chainName);
        }
        
        // Set initial assets if provided
        if (initialAssets.length > 0) {
            _batchSetAssets(initialAssets);
        }
    }

    /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Adds a new supported chain
    /// @dev Only callable by admin
    /// @param chainName The name of the chain to add
    function addChain(string calldata chainName) external {
        if (msg.sender != admin) revert Unauthorized();
        if (bytes(chainName).length == 0) revert EmptyChain();
        if (isChainSupported[chainName]) revert ChainAlreadyExists(chainName);
        
        supportedChains.push(chainName);
        isChainSupported[chainName] = true;
        emit ChainAdded(chainName);
    }

    /// @notice Removes a supported chain
    /// @dev Only callable by admin. Uses swap-and-pop for gas efficiency.
    /// @param chainName The name of the chain to remove
    function removeChain(string calldata chainName) external {
        if (msg.sender != admin) revert Unauthorized();
        if (!isChainSupported[chainName]) revert ChainNotFound(chainName);
        
        isChainSupported[chainName] = false;
        
        // Find and remove from array
        uint256 length = supportedChains.length;
        for (uint256 i = 0; i < length; i++) {
            if (keccak256(bytes(supportedChains[i])) == keccak256(bytes(chainName))) {
                supportedChains[i] = supportedChains[length - 1];
                supportedChains.pop();
                break;
            }
        }
        
        emit ChainRemoved(chainName);
    }

    /// @notice Sets or updates an asset with complete information
    /// @dev Only callable by admin. Uses hash of entire tuple as key.
    /// @param _asset The asset address
    /// @param _adapter The adapter address
    /// @param _chain The blockchain network
    /// @param _symbol The token symbol
    function setAsset(
        address _asset,
        address _adapter,
        string calldata _chain,
        string calldata _symbol
    ) external {
        if (msg.sender != admin) revert Unauthorized();
        if (_asset == address(0)) revert InvalidAddress();
        if (bytes(_symbol).length == 0) revert EmptySymbol();
        if (bytes(_chain).length == 0) revert EmptyChain();
        if (!isChainSupported[_chain]) revert ChainNotSupported(_chain);
        
        AssetInfo memory info = AssetInfo({
            asset: _asset,
            adapter: _adapter,
            chain: _chain,
            symbol: _symbol
        });
        
        bytes32 hash = _computeHash(info);
        bool isUpdate = isRegistered[hash];
        
        assetInfo[hash] = info;
        
        if (!isUpdate) {
            assetHashes.push(hash);
            isRegistered[hash] = true;
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

    /// @notice Removes an asset entry from the registry by its hash
    /// @dev Only callable by admin. Uses swap-and-pop for gas efficiency.
    /// @param info The complete asset information to remove
    function removeAsset(AssetInfo calldata info) external {
        if (msg.sender != admin) revert Unauthorized();
        
        bytes32 hash = _computeHash(info);
        if (!isRegistered[hash]) revert AssetNotFound();
        
        // Delete from mapping
        delete assetInfo[hash];
        delete isRegistered[hash];
        
        // Remove from array using swap-and-pop
        uint256 length = assetHashes.length;
        for (uint256 i = 0; i < length; i++) {
            if (assetHashes[i] == hash) {
                assetHashes[i] = assetHashes[length - 1];
                assetHashes.pop();
                break;
            }
        }
        
        emit AssetRemoved(info.asset);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Computes the unique hash for an asset entry
    /// @dev Hash is based on asset address, adapter, chain, and symbol
    /// @param info The asset information to hash
    /// @return The unique hash for this entry
    function _computeHash(AssetInfo memory info) private pure returns (bytes32) {
        return keccak256(abi.encode(info.asset, info.adapter, info.chain, info.symbol));
    }

    /// @notice Internal function to batch update multiple assets
    /// @dev Validates inputs and updates storage. Can accept both memory and calldata arrays.
    /// @param _assets Array of asset information
    function _batchSetAssets(AssetInfo[] memory _assets) private {
        uint256 length = _assets.length;
        for (uint256 i = 0; i < length; i++) {
            AssetInfo memory info = _assets[i];
            
            if (info.asset == address(0)) revert InvalidAddress();
            if (bytes(info.symbol).length == 0) revert EmptySymbol();
            if (bytes(info.chain).length == 0) revert EmptyChain();
            if (!isChainSupported[info.chain]) revert ChainNotSupported(info.chain);
            
            bytes32 hash = _computeHash(info);
            bool isUpdate = isRegistered[hash];
            
            assetInfo[hash] = info;
            
            if (!isUpdate) {
                assetHashes.push(hash);
                isRegistered[hash] = true;
            }
            
            emit AssetUpdated(info.asset, info.adapter, info.chain, info.symbol, isUpdate);
        }
        
        emit BatchUpdate(length);
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns all supported chain names
    /// @return Array of supported chain names
    function getSupportedChains() external view returns (string[] memory) {
        return supportedChains;
    }

    /// @notice Checks if a chain is supported
    /// @param chainName The chain name to check
    /// @return True if the chain is supported
    function isSupported(string calldata chainName) external view returns (bool) {
        return isChainSupported[chainName];
    }

    /// @notice Returns the total number of registered asset entries
    /// @return The count of registered entries
    function getAssetCount() external view returns (uint256) {
        return assetHashes.length;
    }

    /// @notice Gets complete asset information by index
    /// @dev Useful for iterating through all assets off-chain
    /// @param index The index in the asset hashes array
    /// @return AssetInfo struct with complete asset information
    function getAssetAt(uint256 index) external view returns (AssetInfo memory) {
        return assetInfo[assetHashes[index]];
    }

    /// @notice Returns a slice of asset information
    /// @dev Useful for paginated queries to avoid hitting gas limits
    /// @param start The starting index (inclusive)
    /// @param end The ending index (exclusive)
    /// @return Array of AssetInfo structs
    function getAssets(uint256 start, uint256 end) external view returns (AssetInfo[] memory) {
        if (end > assetHashes.length) end = assetHashes.length;
        if (start >= end) return new AssetInfo[](0);
        
        uint256 length = end - start;
        AssetInfo[] memory result = new AssetInfo[](length);
        
        for (uint256 i = 0; i < length; i++) {
            result[i] = assetInfo[assetHashes[start + i]];
        }
        
        return result;
    }

    /// @notice Returns all registered asset information
    /// @dev May hit gas limits for very large registries. Use getAssets() for pagination.
    /// @return Array of all AssetInfo structs
    function getAllAssets() external view returns (AssetInfo[] memory) {
        uint256 length = assetHashes.length;
        AssetInfo[] memory result = new AssetInfo[](length);
        
        for (uint256 i = 0; i < length; i++) {
            result[i] = assetInfo[assetHashes[i]];
        }
        
        return result;
    }

    /// @notice Checks if a specific asset entry is registered by its hash
    /// @param info The asset information to check
    /// @return True if the entry exists in the registry
    function hasAsset(AssetInfo calldata info) external view returns (bool) {
        bytes32 hash = _computeHash(info);
        return isRegistered[hash];
    }

    /// @notice Computes the hash for an asset entry (public view function)
    /// @param info The asset information to hash
    /// @return The unique hash for this entry
    function computeHash(AssetInfo calldata info) external pure returns (bytes32) {
        return keccak256(abi.encode(info.asset, info.adapter, info.chain, info.symbol));
    }
}
