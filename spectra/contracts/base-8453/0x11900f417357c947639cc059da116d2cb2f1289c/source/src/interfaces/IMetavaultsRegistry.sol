// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

/**
 * @title IMetavaultsRegistry
 * @notice Interface for managing metavault registrations and their associated markets
 */
interface IMetavaultsRegistry {
    /**
     * @notice Emitted when a new metavault is registered
     */
    event MetavaultRegistered(address indexed metavault);

    /**
     * @notice Emitted when a market is registered to a metavault
     */
    event MarketRegistered(address indexed metavault, address indexed market);

    /**
     * @notice Emitted when a market is unregistered from a metavault
     */
    event MarketUnregistered(address indexed metavault, address indexed market);

    /**
     * @notice Emitted when a chain is registered with a metavault
     */
    event ChainRegistered(
        address indexed metavault,
        uint256 indexed chainId,
        address indexed remoteMetavaultAddress
    );

    /**
     * @notice Emitted when a chain is unregistered with a metavault
     */
    event ChainUnregistered(
        address indexed metavault,
        uint256 indexed chainId,
        address indexed remoteMetavaultAddress
    );

    /**
     * @notice Emitted when a metavault is unregistered
     */
    event MetavaultUnregistered(address indexed metavault);

    error MetavaultAlreadyRegistered(address metavault);

    error MetavaultNotRegistered(address metavault);

    error MarketAlreadyRegistered(address metavault, address market);

    error ChainAlreadyRegistered(
        address metavault,
        uint256 chainId,
        address remoteMetavaultAddress
    );

    error ChainNotRegistered(address metavault, uint256 chainId);

    error MarketNotRegistered(address metavault, address market);

    error IndexOutOfBounds(uint256 index, uint256 length);

    error ChainIndexOutOfBounds(uint256 index, uint256 length);

    error ZeroAddress();

    struct PoolInfos {
        address pool;
        address pt;
        address yt;
        address ibt;
        address asset;
    }

    /**
     * @notice Configuration data for a market within a metavault
     */
    struct MarketConfig {
        bool isRegistered;
    }

    /**
     * @notice Configuration data for a metavault chain
     */
    struct MetavaultChainConfig {
        uint256 chainId;
        address remoteMetavaultAddress;
    }

    /**
     * @notice Configuration data for a metavault
     * @param metavault Address of the metavault
     * @param marketsCount Number of markets associated with the metavault on the chain
     * @param markets Array of market addresses associated with the metavault on the chain
     * @param marketConfigs Mapping of market addresses to their configuration
     * @param chainsCount Number of chains associated with the metavault
     * @param chains Array of chain configs associated with the metavault
     * @param chainConfigs Mapping of chain IDs to chain configs
     */
    struct MetavaultConfig {
        address metavault;
        uint256 marketsCount;
        address[] markets;
        mapping(address => MarketConfig) marketConfigs;
        uint256 chainsCount;
        MetavaultChainConfig[] chains;
        mapping(uint256 => MetavaultChainConfig) chainConfigs;
    }
    /**
     * @notice Get market address from PT address
     * @param pt Address of the Principal Token
     * @return Address of the market (pool)
     */

    function getMarketFromPT(address pt) external view returns (address);

    /**
     * @notice Get market address from YT address
     * @param yt Address of the Yield Token
     * @return Address of the market (pool)
     */
    function getMarketFromYT(address yt) external view returns (address);

    /**
     * @notice Get pool infos from market address
     * @param market Address of the market (pool)
     * @return Pool infos
     */
    function getPoolInfos(address market) external view returns (PoolInfos memory);

    /**
     * @notice Register a new metavault with initial markets
     * @param metavault Address of the metavault to register
     * @param markets Array of market addresses to associate with the metavault
     */
    function registerMetavault(address metavault, address[] memory markets) external;

    /**
     * @notice Unregister a metavault
     * @param metavault Address of the metavault to register
     */
    function unregisterMetavault(address metavault) external;

    /**
     * @notice Register a market to an existing metavault
     * @param metavault Address of the metavault
     * @param market Address of the market to register
     */
    function registerMarket(address metavault, address market) external;

    /**
     * @notice Register a market as a metavault
     * @notice This function is used to delegate the registration of a market to a metavault
     * @param market Address of the market to register
     */
    function registerMarketAsMetavault(address market) external;

    /**
     * @notice Unregister a market from a metavault
     * @param metavault Address of the metavault
     * @param market Address of the market to unregister
     */
    function unregisterMarket(address metavault, address market) external;

    /**
     * @notice Unregister a market from a metavault by index
     * @param metavault Address of the metavault
     * @param index Index of the market to unregister
     */
    function unregisterMarketByIndex(address metavault, uint256 index) external;

    /**
     * @notice Check if a market is registered with a metavault
     * @param metavault Address of the metavault
     * @param market Address of the market to check
     * @return True if the market is registered
     */
    function isMarketRegistered(address metavault, address market) external view returns (bool);

    /**
     * @notice Check if a PT is registered for a metavault
     * @param metavault Address of the metavault
     * @param pt Address of the Principal Token
     * @return True if the PT is registered
     */
    function isPTRegistered(address metavault, address pt) external view returns (bool);

    /**
     * @notice Check if a YT is registered for a metavault
     * @param metavault Address of the metavault
     * @param yt Address of the Yield Token
     * @return True if the YT is registered
     */
    function isYTRegistered(address metavault, address yt) external view returns (bool);

    /**
     * @notice Get the number of markets for a metavault
     * @param metavault Address of the metavault
     * @return Number of markets
     */
    function marketsCount(address metavault) external view returns (uint256);

    /**
     * @notice Get a market address by index for a metavault
     * @param metavault Address of the metavault
     * @param index Index of the market
     * @return Address of the market at the given index
     */
    function market(address metavault, uint256 index) external view returns (address);

    /**
     * @notice Get all markets for a metavault
     * @param metavault Address of the metavault
     * @return Array of market addresses
     */
    function allMarkets(address metavault) external view returns (address[] memory);

    /**
     * @notice Get market configuration for a specific market
     * @param metavault Address of the metavault
     * @param market Address of the market
     * @return Market configuration
     */
    function getMarketConfig(
        address metavault,
        address market
    ) external view returns (MarketConfig memory);

    /**
     * @notice Check if a chain is registered with a metavault
     * @param metavault Address of the metavault
     * @param chainId Chain ID to check
     * @return True if the chain is registered
     */
    function isChainRegistered(address metavault, uint256 chainId) external view returns (bool);

    /**
     * @notice Get a chain address by chain ID for a metavault
     * @param metavault Address of the metavault
     * @param chainId Chain ID to get
     * @return Chain config at the given chain ID
     */
    function chainConfig(
        address metavault,
        uint256 chainId
    ) external view returns (MetavaultChainConfig memory);

    /**
     * @notice Get all chains for a metavault
     * @param metavault Address of the metavault
     * @return Array of chain configs
     */
    function allChains(address metavault) external view returns (MetavaultChainConfig[] memory);

    /**
     * @notice Get the number of chains for a metavault
     * @param metavault Address of the metavault
     * @return Number of chains
     */
    function chainsCount(address metavault) external view returns (uint256);

    /**
     * @notice Register a chain and a remote metavault for a specific metavault
     * @param metavault Address of the metavault
     * @param chainId Chain ID to register
     * @param remoteMetavaultAddress Address of the remote metavault
     */
    function registerChain(
        address metavault,
        uint256 chainId,
        address remoteMetavaultAddress
    ) external;

    /**
     * @notice Unregister a chain for a metavault by chain ID
     * @param metavault Address of the metavault
     * @param chainId Chain ID to unregister
     */
    function unregisterChain(address metavault, uint256 chainId) external;

    /**
     * @notice Unregister a chain for a metavault by index
     * @param metavault Address of the metavault
     * @param index Index of the chain to unregister
     */
    function unregisterChainByIndex(address metavault, uint256 index) external;
}
