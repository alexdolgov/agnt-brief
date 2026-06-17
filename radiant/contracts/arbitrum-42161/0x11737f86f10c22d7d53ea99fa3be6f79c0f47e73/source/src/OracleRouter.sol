// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { SignedMath } from "@openzeppelin/contracts/utils/math/SignedMath.sol";
import { IOracleRouter } from "./interfaces/IOracleRouter.sol";
import { Errors } from "./libraries/Errors.sol";
import { IAggregatorV2V3 } from "./interfaces/IAggregatorV2V3.sol";
import { IPyth } from "./interfaces/IPyth.sol";
import { PythStructs } from "./interfaces/PythStructs.sol";

contract OracleRouter is Ownable, IOracleRouter {
    struct PriceFeedData {
        /// required by Chainlink
        address feedAddress;
        /// required by Pyth and API3
        bytes32 feedId;
        uint256 heartbeat;
        OracleProviderType oracleProviderType;
        bool isSet;
    }

    struct OracleProvider {
        address oracleProviderAddress;
        function(PriceFeedData memory) view returns (bool, uint256) getPrice;
    }

    //////////////// <*_*> Storage <*_*> ////////////////
    mapping(address => PriceFeedData) public feeds;
    mapping(address => PriceFeedData) public fallbackFeeds;
    mapping(IOracleRouter.OracleProviderType => OracleProvider) private oracleProviders;

    uint256 public constant BASE_CURRENCY_UNIT = 1e18;

    ////////////////// =^..^= Events =^..^= //////////////////
    event FeedUpdated(address asset, address feedAddress, bytes32 feedId, uint256 heartbeat);
    event FallbackFeedUpdated(address asset, address feedAddress, bytes32 feedId, uint256 heartbeat);
    event PricesUpdated();

    constructor(address _pyth) Ownable() {
        oracleProviders[OracleProviderType.Chainlink] = OracleProvider(address(0x0), _getChainlinkPrice);
        oracleProviders[OracleProviderType.Pyth] = OracleProvider(_pyth, _getPythPrice);
    }

    ////////////////// ô¿ô External and Public Functions ô¿ô //////////////////
    receive() external payable { }

    /// @notice Get the price of an asset
    /// @param asset The address of the asset
    function getAssetPrice(address asset) public view override returns (uint256) {
        PriceFeedData memory feed = feeds[address(asset)];

        if (!feed.isSet) {
            revert Errors.NoFeedSet();
        }

        bool success;
        uint256 price;
        (success, price) = oracleProviders[feed.oracleProviderType].getPrice(feed);
        // If the price is not available, try the fallback feed
        if (!success) {
            feed = fallbackFeeds[address(asset)];
            // If there is no fallback feed, revert
            if (!feed.isSet) {
                revert Errors.NoFallbackFeedSet();
            }
            (success, price) = oracleProviders[feed.oracleProviderType].getPrice(feed);
            // If the price is not available from the fallback feed, revert
            if (!success) {
                revert Errors.NoPriceAvailable();
            }
        }
        // Price cannot be 0
        if (price == 0) {
            revert Errors.NoPriceAvailable();
        }
        return price;
    }

    /// @notice Get the prices of multiple assets
    /// @param assets The addresses of the assets
    /// @return uint256[] The prices of the assets
    function getAssetsPrices(address[] calldata assets) external view override returns (uint256[] memory) {
        uint256 length = assets.length;
        uint256[] memory prices = new uint256[](length);
        for (uint256 i = 0; i < length;) {
            prices[i] = getAssetPrice(assets[i]);
            unchecked {
                i++;
            }
        }
        return prices;
    }

    /// @notice Get the source of an asset. Tries to get the primary feed, then the fallback feed address
    /// @notice If no feed is set, returns address(0)
    /// @param asset The address of the asset
    /// @return address The address of the feed
    function getSourceOfAsset(address asset) external view override returns (address) {
        PriceFeedData memory feed = feeds[address(asset)];
        if (feed.isSet) {
            return feed.feedAddress;
            // Check fallback feed if no primary feed is set
        } else {
            feed = fallbackFeeds[address(asset)];
            if (feed.isSet) {
                return feed.feedAddress;
            }
        }
        return address(0);
    }

    /// @notice Set the source of an asset
    /// @param _asset The address of the asset
    /// @param _feedAddress The address of the feed
    /// @param _feedId The id of the feed
    /// @param _heartbeat The heartbeat of the feed
    /// @param _oracleType The type of the oracle, CL is 0, Pyth is 1 and so on
    /// @param isFallback True if the feed is a fallback
    function setAssetSource(
        address _asset,
        address _feedAddress,
        bytes32 _feedId,
        uint256 _heartbeat,
        IOracleRouter.OracleProviderType _oracleType,
        bool isFallback
    ) external override onlyOwner {
        _setAssetSource(_asset, _feedAddress, _feedId, _heartbeat, _oracleType, isFallback);
    }

    /**
     * @notice Updates multiple price feeds on Pyth oracle
     * @param priceUpdateData received from Pyth network and used to update the oracle
     */
    function updateUnderlyingPrices(bytes[] calldata priceUpdateData) external override {
        IPyth pyth = IPyth(oracleProviders[OracleProviderType.Pyth].oracleProviderAddress);
        uint256 fee = pyth.getUpdateFee(priceUpdateData);
        pyth.updatePriceFeeds{ value: fee }(priceUpdateData);

        emit PricesUpdated();
    }

    ////////////////// ô¿ô Internal Functions ô¿ô  //////////////////

    /// @notice Get the underlying price of an asset from a Chainlink aggregator
    /// @param feed The feed data
    /// @return bool True if the price is available, false if not
    /// @return uint256 The price of the asset
    function _getChainlinkPrice(PriceFeedData memory feed) internal view returns (bool, uint256) {
        IAggregatorV2V3 chainlinkAggregator = IAggregatorV2V3(feed.feedAddress);
        uint256 decimalDelta = uint256(18) - (chainlinkAggregator.decimals());
        (, int256 answer,, uint256 updatedAt,) = chainlinkAggregator.latestRoundData();
        return
            block.timestamp <= updatedAt + feed.heartbeat ? (true, uint256(answer) * (10 ** decimalDelta)) : (false, 0);
    }

    /// @notice return price of an asset from Pyth
    /// @param feed contains feedId required by Pyth
    /// @return bool True if the price is available, false if not
    /// @return uint256 The price of the asset scaled to 1e18
    function _getPythPrice(PriceFeedData memory feed) internal view returns (bool, uint256) {
        IPyth pyth = IPyth(oracleProviders[OracleProviderType.Pyth].oracleProviderAddress);

        PythStructs.Price memory priceData = pyth.getPriceUnsafe(feed.feedId);
        return block.timestamp <= priceData.publishTime + feed.heartbeat
            ? (true, uint256(int256(priceData.price)) * (10 ** (18 - SignedMath.abs(priceData.expo))))
            : (false, 0);
    }

    /// @notice Internal function to set the source of an asset
    /// @param _asset The address of the asset
    /// @param _feedAddress The address of the feed
    /// @param _feedId The id of the feed
    /// @param _heartbeat The heartbeat of the feed
    /// @param _oracleType The type of the oracle
    /// @param isFallback True if the feed is a fallback
    function _setAssetSource(
        address _asset,
        address _feedAddress,
        bytes32 _feedId,
        uint256 _heartbeat,
        IOracleRouter.OracleProviderType _oracleType,
        bool isFallback
    ) internal {
        if (_oracleType == OracleProviderType.Chainlink) {
            if (_feedAddress == address(0)) {
                revert Errors.InvalidFeed();
            }
        } else if (_oracleType == OracleProviderType.Pyth) {
            if (_feedId == bytes32(0) && _feedAddress != address(0)) {
                revert Errors.InvalidFeed();
            }
        } else {
            revert Errors.InvalidOracleProviderType();
        }

        if (!isFallback) {
            feeds[_asset] = PriceFeedData(_feedAddress, _feedId, _heartbeat, _oracleType, true);
            emit FeedUpdated(_asset, _feedAddress, _feedId, _heartbeat);
        } else {
            fallbackFeeds[_asset] = PriceFeedData(_feedAddress, _feedId, _heartbeat, _oracleType, true);
            emit FallbackFeedUpdated(_asset, _feedAddress, _feedId, _heartbeat);
        }
    }
}
