// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.23;

import "AggregatorV3Interface.sol";
import {Ownable} from "Ownable.sol";

contract WBTCPriceFeedAdapter is Ownable {

    error StalePrice();
    error InvalidPriceFeedDecimals();

    AggregatorV3Interface public immutable wbtcPriceFeed;
    AggregatorV3Interface public immutable btcPriceFeed;

    uint public wbtcStalePriceDelay;
    uint public btcStalePriceDelay;

    /**
     * @return uint The scaled wbtc price in USD
     */
    function latestAnswer()
        public
        view
        returns (int256) {

        (
            ,
            int wbtcRate, // wBTC/BTC rate
            ,
            uint wbtcUpdatedAt,

        ) = wbtcPriceFeed.latestRoundData();
        // check if price is stale
        if (wbtcStalePriceDelay != 0 && block.timestamp > wbtcUpdatedAt + wbtcStalePriceDelay) {
            revert StalePrice();
        }

        (
            ,
            int btcRate, // BTC/USD rate
            ,
            uint btcUpdatedAt,

        ) = btcPriceFeed.latestRoundData();
        // check if price is stale
        if (btcStalePriceDelay != 0 && block.timestamp > btcUpdatedAt + btcStalePriceDelay) {
            revert StalePrice();
        }

        return wbtcRate * btcRate / 1e8; // scale to 8 decimals places like Chainlink
    }

    /**
     * @return roundId always 0
     *         answer The scaled wbtc price in USD
     *         startedAt always 0
     *         updatedAt always block.timestamp
     *         answeredInRound always 0
     */
    function latestRoundData()
        public
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        ) {
        return (0, latestAnswer(), 0, block.timestamp, 0);
    }

    constructor(AggregatorV3Interface wbtcPriceFeed_, AggregatorV3Interface btcPriceFeed_, uint _wbtcStalePriceDelay, uint _btcStalePriceDelay) public Ownable(msg.sender) {
        if (wbtcPriceFeed_.decimals() != 8 || btcPriceFeed_.decimals() != 8) {
            revert InvalidPriceFeedDecimals();
        }
        
        wbtcPriceFeed = wbtcPriceFeed_;
        btcPriceFeed = btcPriceFeed_;

        wbtcStalePriceDelay = _wbtcStalePriceDelay;
        btcStalePriceDelay = _btcStalePriceDelay;
    }

    /**
     * @notice Set the time delay after which the price feed is considered stale.
     * @param _wbtcStalePriceDelay the time delay in seconds.
     */
    function setwbtcStalePriceDelay(uint _wbtcStalePriceDelay) external onlyOwner {
        wbtcStalePriceDelay = _wbtcStalePriceDelay;
    }

    /**
     * @notice Set the time delay after which the price feed is considered stale.
     * @param _btcStalePriceDelay the time delay in seconds.
     */
    function setbtcStalePriceDelay(uint _btcStalePriceDelay) external onlyOwner {
        btcStalePriceDelay = _btcStalePriceDelay;
    }
}
