// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./interfaces/IPriceOracle.sol";
import "./interfaces/IQiToken.sol";
import "./interfaces/IQiErc20.sol";
import "./interfaces/IEIP20Interface.sol";
import "./interfaces/IAggregatorV2V3Interface.sol";
import "./interfaces/IBenqiPriceOracle.sol";

/**
 * @title BenqiPriceOracle
 * @author BENQI Finance
 * @notice Generic price oracle implementation that can be deployed for different feed providers
 * @dev Can be deployed multiple times for different price feed providers (e.g., Chainlink, Edge)
 */
contract BenqiPriceOracle is IBenqiPriceOracle {
    address public admin;

    mapping(address => uint256) internal prices;
    // Maps underlying token addresses to their corresponding price feeds
    mapping(address => IAggregatorV2V3Interface) public feeds;

    address public constant AVAX_UNDERLYING = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address public immutable qiAvaxAddress;

    event PricePosted(
        address asset, uint256 previousPriceMantissa, uint256 requestedPriceMantissa, uint256 newPriceMantissa
    );
    event NewAdmin(address oldAdmin, address newAdmin);
    event FeedSet(address feed, address token);

    constructor(address _qiAvaxAddress) {
        admin = msg.sender;
        qiAvaxAddress = _qiAvaxAddress;
    }

    function getUnderlyingPrice(IQiToken qiToken) external view override returns (uint256) {
        address qiTokenAddress = address(qiToken);
        IAggregatorV2V3Interface feed;

        if (qiTokenAddress == qiAvaxAddress) {
            feed = getFeed(AVAX_UNDERLYING);
        } else {
            address underlying = address(IQiErc20(address(qiToken)).underlying());
            feed = getFeed(underlying);
        }

        (uint256 price,) = getPriceAndTimestamp(feed, qiToken);
        return price;
    }

    function getUnderlyingPriceWithTimestamp(IQiToken qiToken) external view override returns (uint256, uint256) {
        address qiTokenAddress = address(qiToken);
        IAggregatorV2V3Interface feed;

        if (qiTokenAddress == qiAvaxAddress) {
            feed = getFeed(AVAX_UNDERLYING);
        } else {
            address underlying = address(IQiErc20(address(qiToken)).underlying());
            feed = getFeed(underlying);
        }

        return getPriceAndTimestamp(feed, qiToken);
    }

    function getPriceAndTimestamp(IAggregatorV2V3Interface feed, IQiToken qiToken)
        internal
        view
        returns (uint256, uint256)
    {
        address tokenAddress =
            address(qiToken) == qiAvaxAddress ? AVAX_UNDERLYING : address(IQiErc20(address(qiToken)).underlying());
        IEIP20Interface token = IEIP20Interface(tokenAddress);

        // Check for manually set price first
        if (prices[tokenAddress] != 0) {
            uint256 manualPrice = prices[tokenAddress];
            // Only adjust for decimals if it's not AVAX
            if (address(qiToken) != qiAvaxAddress) {
                uint256 tokenDecimalDelta = 18 - token.decimals();
                if (tokenDecimalDelta > 0) {
                    manualPrice = manualPrice * (10 ** tokenDecimalDelta);
                }
            }
            return (manualPrice, block.timestamp);
        }

        // If no manual price, proceed with feed data
        (, int256 answer,, uint256 updatedAt,) = feed.latestRoundData();

        require(answer > 0, "negative or zero price not allowed");

        uint256 feedPrice = uint256(answer);

        // If it's not AVAX, adjust for token decimals
        if (address(qiToken) != qiAvaxAddress) {
            uint256 tokenDecimalDelta = 18 - token.decimals();
            if (tokenDecimalDelta > 0) {
                feedPrice = feedPrice * (10 ** tokenDecimalDelta);
            }
        }

        // Convert to 18 decimals if needed
        uint256 feedDecimalDelta = 18 - feed.decimals();
        if (feedDecimalDelta > 0) {
            feedPrice = feedPrice * (10 ** feedDecimalDelta);
        }

        return (feedPrice, updatedAt);
    }

    function setUnderlyingPrice(IQiToken qiToken, uint256 underlyingPriceMantissa) external override onlyAdmin {
        address asset;
        if (address(qiToken) == qiAvaxAddress) {
            asset = AVAX_UNDERLYING;
        } else {
            asset = address(IQiErc20(address(qiToken)).underlying());
        }
        emit PricePosted(asset, prices[asset], underlyingPriceMantissa, underlyingPriceMantissa);
        prices[asset] = underlyingPriceMantissa;
    }

    function setDirectPrice(address asset, uint256 price) external override onlyAdmin {
        emit PricePosted(asset, prices[asset], price, price);
        prices[asset] = price;
    }

    function setFeed(address token, address feed) external override onlyAdmin {
        require(feed != address(0) && feed != address(this), "invalid feed address");
        emit FeedSet(feed, token);
        feeds[token] = IAggregatorV2V3Interface(feed);
    }

    function getFeed(address token) public view override returns (IAggregatorV2V3Interface) {
        return feeds[token];
    }

    function assetPrices(address asset) external view override returns (uint256) {
        return prices[asset];
    }

    function setAdmin(address newAdmin) external override onlyAdmin {
        address oldAdmin = admin;
        admin = newAdmin;

        emit NewAdmin(oldAdmin, newAdmin);
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "only admin may call");
        _;
    }
}
