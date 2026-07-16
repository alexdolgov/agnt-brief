// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IMetavaultsRegistry} from "./interfaces/IMetavaultsRegistry.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IPrincipalToken} from "src/interfaces/IPrincipalToken.sol";
import {IStableSwapNG} from "src/interfaces/IStableSwapNG.sol";

/**
 * @title MetavaultsRegistry
 * @notice Registry contract for managing metavaults and their associated markets
 */
contract MetavaultsRegistry is IMetavaultsRegistry, Initializable, AccessManagedUpgradeable {
    using EnumerableSet for EnumerableSet.AddressSet;

    // keccak256(abi.encode(uint256(keccak256("spectra.metavault.markets")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant MARKET_INFOS_LOCATION =
        0xed37d1382a6bfbb25f83b33532c04381222190008afbfed9374fd7204ef8d200;

    // keccak256(abi.encode(uint256(keccak256("spectra.metavault.configs")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant MV_CONFIGS_LOCATION =
        0xc529114c4cac99852bfd8483ed99a3cf970cf4610e078f8f8ea71d2fe61b1c00;

    // keccak256(abi.encode(uint256(keccak256("spectra.metavault.bridge")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant BRIDGE_CONFIGS_LOCATION =
        0xa3601e533f2d68c8147877ed38f63d7abe628c505c72f827dccfd47c7297f100;

    struct MetavaultsRegistryState {
        mapping(address => MetavaultConfig) metavaults;
    }

    struct MarketInfosState {
        mapping(address => address) ptToMarket;
        mapping(address => address) ytToMarket;
        mapping(address => PoolInfos) poolToPoolInfos;
    }

    struct MetavaultsBridgeState {
        mapping(address => MetavaultBridgeConfig) metavaultBridgeConfigs;
    }

    function _getMarketInfosStorage() private pure returns (MarketInfosState storage $) {
        assembly {
            $.slot := MARKET_INFOS_LOCATION
        }
    }

    function _getMvConfigStorage() private pure returns (MetavaultsRegistryState storage $) {
        assembly {
            $.slot := MV_CONFIGS_LOCATION
        }
    }

    function _getMvBridgeStorage() private pure returns (MetavaultsBridgeState storage $) {
        assembly {
            $.slot := BRIDGE_CONFIGS_LOCATION
        }
    }

    /**
     * @dev Modifier to check if a metavault is registered before executing a function to modify its config
     */
    modifier onlyRegistered(address metavault) {
        if (_getMvConfigStorage().metavaults[metavault].metavault == address(0)) {
            revert MetavaultNotRegistered(metavault);
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(address initialAuthority) external initializer {
        __AccessManaged_init(initialAuthority);
    }

    // === METAVAULT MANAGEMENT ===

    /**
     * @dev See {IMetavaultsRegistry-registerMetavault}.
     */
    function registerMetavault(address metavault, address[] memory markets) external restricted {
        MetavaultConfig storage config = _getMvConfigStorage().metavaults[metavault];
        if (config.metavault != address(0)) revert MetavaultAlreadyRegistered(metavault);

        config.metavault = metavault;
        config.chainsCount = 1;

        // register the first markets to whitelist during the metavault registration
        for (uint256 i = 0; i < markets.length; i++) {
            config.markets.push(markets[i]);
            MarketConfig memory marketConfig = MarketConfig({isRegistered: true});
            config.marketConfigs[markets[i]] = marketConfig;
            _registerPoolInfos(markets[i]);
            emit MarketRegistered(metavault, markets[i]);
        }

        // Register current chain
        MetavaultChainConfig memory chainConfig = MetavaultChainConfig({
            chainId: block.chainid,
            remoteMetavaultAddress: metavault
        });
        config.chains.push(chainConfig);
        config.chainConfigs[block.chainid] = chainConfig;
        emit ChainRegistered(metavault, block.chainid, metavault);
        emit MetavaultRegistered(metavault);
    }

    /**
     * @dev See {IMetavaultsRegistry-unregisterMetavault}.
     */
    function unregisterMetavault(address metavault) external restricted onlyRegistered(metavault) {
        MetavaultConfig storage config = _getMvConfigStorage().metavaults[metavault];

        // unregister the markets from the metavault
        for (uint256 i = 0; i < config.markets.length; i++) {
            delete config.marketConfigs[config.markets[i]];
            emit MarketUnregistered(metavault, config.markets[i]);
        }

        // unregister the chains from the metavault
        for (uint256 i = 0; i < config.chainsCount; i++) {
            delete config.chainConfigs[config.chains[i].chainId];
        }

        // Clean up bridge paths
        MetavaultBridgeConfig storage bridgeConfig = _getMvBridgeStorage().metavaultBridgeConfigs[metavault];
        for (uint256 i = 0; i < bridgeConfig.bridgePaths.length; i++) {
            BridgePath memory path = bridgeConfig.bridgePaths[i];
            bytes32 pathKey = _getBridgePathKey(path.tokenIn, path.tokenOut, path.dstChainId, path.bridge);
            delete bridgeConfig.pathExists[pathKey];
        }
        delete _getMvBridgeStorage().metavaultBridgeConfigs[metavault];

        // unregister the metavault
        delete _getMvConfigStorage().metavaults[metavault];
        emit MetavaultUnregistered(metavault);
    }

    // === MARKET MANAGEMENT ===

    /**
     * @dev See {IMetavaultsRegistry-registerMarket}.
     */
    function registerMarket(
        address metavault,
        address market
    ) external restricted onlyRegistered(metavault) {
        _registerMarket(metavault, market);
    }

    /**
     * @dev See {IMetavaultsRegistry-registerMarketAsMetavault}.
     */
    function registerMarketAsMetavault(address market) external {
        _registerMarket(msg.sender, market);
    }

    /**
     * @dev See {IMetavaultsRegistry-unregisterMarket}.
     */
    function unregisterMarket(
        address metavault,
        address market
    ) external restricted onlyRegistered(metavault) {
        MetavaultConfig storage config = _getMvConfigStorage().metavaults[metavault];
        if (!config.marketConfigs[market].isRegistered)
            revert MarketNotRegistered(metavault, market);
        if (market == address(0)) revert ZeroAddress();
        for (uint256 i = 0; i < config.markets.length; i++) {
            // find the market index to unregister
            if (config.markets[i] == market) {
                // remove the market at the index
                _removeMarketAtIndex(config, i);
                emit MarketUnregistered(metavault, market);
                return;
            }
        }
    }

    /**
     * @dev See {IMetavaultsRegistry-unregisterMarketByIndex}.
     */
    function unregisterMarketByIndex(
        address metavault,
        uint256 index
    ) public restricted onlyRegistered(metavault) {
        MetavaultConfig storage config = _getMvConfigStorage().metavaults[metavault];
        if (index >= config.markets.length) revert IndexOutOfBounds(index, config.markets.length);

        address market = config.markets[index];
        _removeMarketAtIndex(config, index);
        emit MarketUnregistered(metavault, market);
    }

    // === CHAIN MANAGEMENT ===

    /**
     * @dev See {IMetavaultsRegistry-registerChain}.
     */
    function registerChain(
        address metavault,
        uint256 chainId,
        address remoteAddress
    ) external restricted onlyRegistered(metavault) {
        MetavaultConfig storage config = _getMvConfigStorage().metavaults[metavault];
        if (config.chainConfigs[chainId].chainId != 0)
            revert ChainAlreadyRegistered(metavault, chainId, remoteAddress);

        MetavaultChainConfig memory chainConfig = MetavaultChainConfig({
            chainId: chainId,
            remoteMetavaultAddress: remoteAddress
        });
        config.chains.push(chainConfig);
        config.chainsCount++;
        config.chainConfigs[chainId] = chainConfig;
        emit ChainRegistered(metavault, chainId, remoteAddress);
    }

    /**
     * @dev See {IMetavaultsRegistry-unregisterChain}.
     */
    function unregisterChain(
        address metavault,
        uint256 chainId
    ) external restricted onlyRegistered(metavault) {
        MetavaultConfig storage config = _getMvConfigStorage().metavaults[metavault];
        if (config.chainConfigs[chainId].chainId == 0)
            revert ChainNotRegistered(metavault, chainId);

        // find the chain index to unregister
        for (uint256 i = 0; i < config.chains.length; i++) {
            if (config.chains[i].chainId == chainId) {
                // remove the chain at the index
                _removeChainAtIndex(config, i);
                emit ChainUnregistered(
                    metavault,
                    chainId,
                    config.chainConfigs[chainId].remoteMetavaultAddress
                );
                delete config.chainConfigs[chainId];
                return;
            }
        }
    }

    /**
     * @dev See {IMetavaultsRegistry-unregisterChainByIndex}.
     */
    function unregisterChainByIndex(
        address metavault,
        uint256 index
    ) public restricted onlyRegistered(metavault) {
        MetavaultConfig storage config = _getMvConfigStorage().metavaults[metavault];
        if (index >= config.chainsCount) revert ChainIndexOutOfBounds(index, config.chainsCount);

        uint256 chainId = config.chains[index].chainId;
        address remoteAddress = config.chains[index].remoteMetavaultAddress;

        _removeChainAtIndex(config, index);
        delete config.chainConfigs[chainId];
        emit ChainUnregistered(metavault, chainId, remoteAddress);
    }

    // == BRIDGE PATH MANAGEMENT ===

    /**
     * @dev See {IMetavaultsRegistry-allowBridgePath}.
     */
    function allowBridgePath(
        address metavault,
        address tokenIn,
        address tokenOut,
        uint32 dstChainId,
        address bridge
    ) external restricted onlyRegistered(metavault) {
        if  (bridge == address(0)) revert ZeroAddress();

        MetavaultBridgeConfig storage config = _getMvBridgeStorage().metavaultBridgeConfigs[
            metavault
        ];
        bytes32 pathKey = _getBridgePathKey(tokenIn, tokenOut, dstChainId, bridge);
        if (config.pathExists[pathKey]) {
            revert BridgePathAlreadyRegistered(metavault,tokenIn, tokenOut, dstChainId, bridge);
        }
        BridgePath memory bridgePath = BridgePath({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            dstChainId: dstChainId,
            bridge: bridge
        });
        config.bridgePaths.push(bridgePath);
        config.pathExists[pathKey] = true;
        config.pathCount++;

        emit BridgePathAllowed(metavault, tokenIn, tokenOut, dstChainId, bridge);
    }

    /**
     * @dev See {IMetavaultsRegistry-removeBridgePath}.
     */
    function removeBridgePath(
        address metavault,
        address tokenIn,
        address tokenOut,
        uint32 dstChainId,
        address bridge
    ) external restricted onlyRegistered(metavault) {
        if (bridge == address(0))
            revert ZeroAddress();
        MetavaultBridgeConfig storage config = _getMvBridgeStorage().metavaultBridgeConfigs[
            metavault
        ];

        bytes32 pathKey = _getBridgePathKey(tokenIn, tokenOut, dstChainId, bridge);
        if (!config.pathExists[pathKey]) {
            revert BridgePathNotRegistered(metavault, tokenIn, tokenOut, dstChainId, bridge);
        }

        // find the bridge path index to unregister
        for (uint256 i = 0; i < config.bridgePaths.length; i++) {
            if (config.bridgePaths[i].tokenIn == tokenIn &&
                config.bridgePaths[i].tokenOut == tokenOut &&
                config.bridgePaths[i].dstChainId == dstChainId &&
                config.bridgePaths[i].bridge == bridge) {
                // remove the bridge path at the index
                _removeBridgePathAtIndex(config, i);
                delete config.pathExists[pathKey];
                emit BridgePathRemoved(metavault, tokenIn, tokenOut, dstChainId, bridge);
                return;
            }
        }
    }

    // === INTERNAL FUNCTIONS ===

    /**
     * @dev Internal function to remove a market at an index.
     * @dev This function swap the last market with the market at the index and then pop the market at the index.
     * @param config Metavault config storage
     * @param index Index of the market to remove
     */
    function _removeMarketAtIndex(MetavaultConfig storage config, uint256 index) private {
        address market = config.markets[index];
        uint256 lastIndex = config.markets.length - 1;

        if (index != lastIndex) {
            config.markets[index] = config.markets[lastIndex];
        }
        config.markets.pop();
        delete config.marketConfigs[market];
    }

    /**
     * @dev Internal function to remove a chain at an index.
     * @dev This function swap the last chain with the chain at the index and then pop the chain at the index.
     * @param config Metavault config storage
     * @param index Index of the chain to remove
     */
    function _removeChainAtIndex(MetavaultConfig storage config, uint256 index) private {
        uint256 lastIndex = config.chains.length - 1;
        if (index != lastIndex) {
            config.chains[index] = config.chains[lastIndex];
        }
        config.chains.pop();
        config.chainsCount--;
    }

    /**
     * @dev Internal function to remove a bridge path at an index.
     * @dev This function swap the last bridge path with the bridge path at the index and then pop the bridge path at the index.
     * @param config Metavault bridge config storage
     * @param index Index of the bridge path to remove
     */
    function _removeBridgePathAtIndex(MetavaultBridgeConfig storage config, uint256 index) private {
        uint256 lastIndex = config.bridgePaths.length - 1;
        if (index != lastIndex) {
            config.bridgePaths[index] = config.bridgePaths[lastIndex];
        }
        config.bridgePaths.pop();
        config.pathCount--;
    }

    /**
     * @notice Internal function to register pool information for a market
     * @param market Address of the market (pool) to register information for
     */
    function _registerPoolInfos(address market) internal {
        MarketInfosState storage marketInfos = _getMarketInfosStorage();
        PoolInfos storage poolsInfos = marketInfos.poolToPoolInfos[market];

        // Only register if not already registered
        if (poolsInfos.pool == address(0)) {
            address ibt = IStableSwapNG(market).coins(0);
            address pt = IStableSwapNG(market).coins(1);
            address yt = IPrincipalToken(pt).getYT();
            address asset = IPrincipalToken(pt).underlying();

            PoolInfos memory poolInfos = PoolInfos({
                pool: market,
                pt: pt,
                yt: yt,
                ibt: ibt,
                asset: asset
            });

            marketInfos.poolToPoolInfos[market] = poolInfos;
            marketInfos.ptToMarket[pt] = market;
            marketInfos.ytToMarket[yt] = market;
        }
    }

    function _registerMarket(address metavault, address market) internal onlyRegistered(metavault) {
        MetavaultConfig storage config = _getMvConfigStorage().metavaults[metavault];
        if (config.marketConfigs[market].isRegistered)
            revert MarketAlreadyRegistered(metavault, market);
        if (market == address(0)) revert ZeroAddress();

        config.markets.push(market);

        MarketConfig memory marketConfig = MarketConfig({isRegistered: true});
        config.marketConfigs[market] = marketConfig;

        _registerPoolInfos(market);
        emit MarketRegistered(metavault, market);
    }

    // === VIEW FUNCTIONS ===

    /**
     * @dev See {IMetavaultsRegistry-getPoolInfos}.
     */
    function getPoolInfos(address market) external view returns (PoolInfos memory) {
        return _getMarketInfosStorage().poolToPoolInfos[market];
    }

    /**
     * @dev See {IMetavaultsRegistry-getMarketFromPT}.
     */
    function getMarketFromPT(address pt) public view returns (address) {
        return _getMarketInfosStorage().ptToMarket[pt];
    }

    /**
     * @dev See {IMetavaultsRegistry-getMarketFromYT}.
     */
    function getMarketFromYT(address yt) public view returns (address) {
        return _getMarketInfosStorage().ytToMarket[yt];
    }

    /**
     * @dev See {IMetavaultsRegistry-getMarketConfig}.
     */
    function getMarketConfig(
        address metavault,
        address market
    ) external view returns (MarketConfig memory) {
        return _getMvConfigStorage().metavaults[metavault].marketConfigs[market];
    }

    /**
    * @dev See {IMetavaultsRegistry-getBridgePaths}
     */
    function getBridgePaths(address metavault) public view returns (BridgePath[] memory){
        return _getMvBridgeStorage().metavaultBridgeConfigs[metavault].bridgePaths;
    }  

    /**
     * @dev See {IMetavaultsRegistry-isMarketRegistered}.
     */
    function isMarketRegistered(address metavault, address market) public view returns (bool) {
        if (market == address(0)) revert ZeroAddress();
        return _getMvConfigStorage().metavaults[metavault].marketConfigs[market].isRegistered;
    }

    /**
     * @dev See {IMetavaultsRegistry-isPTRegistered}.
     */
    function isPTRegistered(address metavault, address pt) public view returns (bool) {
        address market = _getMarketInfosStorage().ptToMarket[pt];
        if (market == address(0)) return false;
        return isMarketRegistered(metavault, market);
    }

    /**
     * @dev See {IMetavaultsRegistry-isYTRegistered}.
     */
    function isYTRegistered(address metavault, address yt) public view returns (bool) {
        address market = _getMarketInfosStorage().ytToMarket[yt];
        if (market == address(0)) return false;
        return isMarketRegistered(metavault, market);
    }

    /**
     * @dev See {IMetavaultsRegistry-marketsCount}.
     */
    function marketsCount(address metavault) external view returns (uint256) {
        return _getMvConfigStorage().metavaults[metavault].markets.length;
    }

    /**
     * @dev See {IMetavaultsRegistry-market}.
     */
    function market(address metavault, uint256 index) external view returns (address) {
        return _getMvConfigStorage().metavaults[metavault].markets[index];
    }

    /**
     * @dev See {IMetavaultsRegistry-allMarkets}.
     */
    function allMarkets(address metavault) external view returns (address[] memory) {
        return _getMvConfigStorage().metavaults[metavault].markets;
    }

    /**
     * @dev See {IMetavaultsRegistry-isChainRegistered}.
     */
    function isChainRegistered(address metavault, uint256 chainId) external view returns (bool) {
        return _getMvConfigStorage().metavaults[metavault].chainConfigs[chainId].chainId != 0;
    }

    /**
     * @dev See {IMetavaultsRegistry-isBridgePathAllowed}.
     */
    function isBridgePathAllowed(
        address metavault,
        address tokenIn,
        address tokenOut,
        uint32 dstChainId,
        address bridge
    ) external view returns (bool) {
        MetavaultBridgeConfig storage config = _getMvBridgeStorage().metavaultBridgeConfigs[
            metavault
        ];
        bytes32 pathKey = _getBridgePathKey(tokenIn, tokenOut, dstChainId, bridge);
        return config.pathExists[pathKey];
    }

    function getPathsCount(
        address metavault
    ) external view returns (uint256) {
        return _getMvBridgeStorage().metavaultBridgeConfigs[metavault].pathCount;
    }

    /**
     * @dev See {IMetavaultsRegistry-chainConfig}.
     */
    function chainConfig(
        address metavault,
        uint256 chainId
    ) external view returns (MetavaultChainConfig memory) {
        return _getMvConfigStorage().metavaults[metavault].chainConfigs[chainId];
    }

    /**
     * @dev See {IMetavaultsRegistry-allChains}.
     */
    function allChains(address metavault) external view returns (MetavaultChainConfig[] memory) {
        return _getMvConfigStorage().metavaults[metavault].chains;
    }

    /**
     * @dev See {IMetavaultsRegistry-chainsCount}.
     */
    function chainsCount(address metavault) external view returns (uint256) {
        return _getMvConfigStorage().metavaults[metavault].chainsCount;
    }

    /**
     * @dev Internal function to generate a unique key for a bridge path
     * @param tokenIn Address of the input token
     * @param tokenOut Address of the output token
     * @param dstChainId Destination chain ID
     * @param bridge Address of the bridge contract
     * @return bytes32 hash key for the bridge path
     */
    function _getBridgePathKey(
        address tokenIn,
        address tokenOut,
        uint32 dstChainId,
        address bridge
    ) internal pure returns (bytes32) {
        return keccak256(abi.encode(tokenIn, tokenOut, dstChainId, bridge));
    }
}
