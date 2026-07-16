// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../utils/PythHelper.sol";

library LibChainlinkPrice {

    bytes32 constant CHAINLINK_PRICE_POSITION = keccak256("chainlink.price.storage");

    struct PriceFeed {
        address tokenAddress;
        bytes32 priceId;
        uint32 tokenAddressPosition;
    }

    struct ChainlinkPriceStorage {
        mapping(address => PriceFeed) priceFeeds;
        address[] tokenAddresses;
    }

    function chainlinkPriceStorage() internal pure returns (ChainlinkPriceStorage storage cps) {
        bytes32 position = CHAINLINK_PRICE_POSITION;
        assembly {
            cps.slot := position
        }
    }

    event SupportChainlinkPriceFeed(address indexed token, bytes32 priceId, bool supported);

    function addChainlinkPriceFeed(address tokenAddress, bytes32 priceFeed) internal {
        ChainlinkPriceStorage storage cps = chainlinkPriceStorage();
        PriceFeed storage pf = cps.priceFeeds[tokenAddress];
        require(pf.priceId == 0x0, "LibChainlinkPrice: Can't add price feed that already exists");

        (int256 price_, ,) = PythHelper.getPrice(priceFeed);
        require(price_ > 0, "LibChainlinkPrice: Invalid priceFeed address");

        pf.tokenAddress = tokenAddress;
        pf.priceId = priceFeed;
        pf.tokenAddressPosition = uint32(cps.tokenAddresses.length);

        cps.tokenAddresses.push(tokenAddress);
        emit SupportChainlinkPriceFeed(tokenAddress, priceFeed, true);
    }

    function removeChainlinkPriceFeed(address tokenAddress) internal {
        ChainlinkPriceStorage storage cps = chainlinkPriceStorage();
        PriceFeed storage pf = cps.priceFeeds[tokenAddress];
        bytes32 priceFeed = pf.priceId;
        require(pf.priceId != 0x0, "LibChainlinkPrice: Price feed does not exist");

        uint256 lastPosition = cps.tokenAddresses.length - 1;
        uint256 tokenAddressPosition = pf.tokenAddressPosition;
        if (tokenAddressPosition != lastPosition) {
            address lastTokenAddress = cps.tokenAddresses[lastPosition];
            cps.tokenAddresses[tokenAddressPosition] = lastTokenAddress;
            cps.priceFeeds[lastTokenAddress].tokenAddressPosition = uint32(tokenAddressPosition);
        }
        cps.tokenAddresses.pop();
        delete cps.priceFeeds[tokenAddress];
        emit SupportChainlinkPriceFeed(tokenAddress, priceFeed, false);
    }

    function getPriceFromChainlink(address token) internal view returns (uint256 price, int32 decimals, uint256 updateTime) {
        ChainlinkPriceStorage storage cps = chainlinkPriceStorage();
        bytes32 priceFeed = cps.priceFeeds[token].priceId;
        require(priceFeed != 0x0, "LibChainlinkPrice: Price feed does not exist");

        (int256 price_, int32 expo_, uint updatedAt) = PythHelper.getPrice(priceFeed);
        require(price_ > 0, "LibChainlinkPrice: price cannot be negative");

        price = uint256(price_);
        updateTime = updatedAt;
        return (price, expo_, updateTime);
    }
}
