//SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "../refs/CoreRef.sol";
import "@openzeppelin/contracts/math/SignedSafeMath.sol";

contract Oracle is CoreRef {
    using SignedSafeMath for int256;

    struct Feed {
        address aggregator;
        uint8 baseDecimals;
    }
    // token address => Feed
    mapping(address => Feed) public feeds;

    constructor(
        address _core,
        address[] memory _tokens,
        uint8[] memory _baseDecimals,
        address[] memory _aggregators
    ) public CoreRef(_core) {
        _setFeeds(_tokens, _baseDecimals, _aggregators);
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice(address token) public view returns (int256 price) {
        Feed storage feed = feeds[token];
        require(feed.aggregator != address(0), "Oracle:: price feed does not exist");
        (, int256 price, , , ) = AggregatorV3Interface(feed.aggregator).latestRoundData();
        uint8 quoteDecimals = AggregatorV3Interface(feed.aggregator).decimals();
        uint8 baseDecimals = feed.baseDecimals;
        price = scalePrice(price, quoteDecimals, baseDecimals);
        return price;
    }

    function scalePrice(
        int256 _price,
        uint8 _quoteDecimals,
        uint8 _baseDecimals
    ) internal pure returns (int256) {
        if (_quoteDecimals < _baseDecimals) {
            return _price.mul(int256(10**uint256(_baseDecimals - _quoteDecimals)));
        } else if (_quoteDecimals > _baseDecimals) {
            return _price.div(int256(10**uint256(_quoteDecimals - _baseDecimals)));
        }
        return _price;
    }

    function setFeeds(
        address[] memory _tokens,
        uint8[] memory _baseDecimals,
        address[] memory _aggregators
    ) public onlyGovernor {
        _setFeeds(_tokens, _baseDecimals, _aggregators);
    }

    function _setFeeds(
        address[] memory _tokens,
        uint8[] memory _baseDecimals,
        address[] memory _aggregators
    ) internal {
        for (uint256 i = 0; i < _tokens.length; i++) {
            feeds[_tokens[i]] = Feed(_aggregators[i], _baseDecimals[i]);
        }
    }
}
