// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.23;

import "AggregatorV3Interface.sol";
import {Ownable} from "Ownable.sol";

contract FloorPriceFeedAdapter is Ownable {

    error StalePrice();
    error InvalidPriceFeedDecimals();

    AggregatorV3Interface public immutable floorPriceFeed;
    AggregatorV3Interface public immutable ethPriceFeed;

    uint public floorStalePriceDelay;
    uint public ethStalePriceDelay;

    /**
     * @return uint The scaled floor price in USD
     */
    function latestAnswer()
        public
        view
        returns (int256) {

        (
            ,
            int floorRate, // floor/ETH rate
            ,
            uint floorUpdatedAt,

        ) = floorPriceFeed.latestRoundData();
        // check if price is stale
        if (floorStalePriceDelay != 0 && block.timestamp > floorUpdatedAt + floorStalePriceDelay) {
            revert StalePrice();
        }

        (
            ,
            int ethRate, // ETH/USD rate
            ,
            uint ethUpdatedAt,

        ) = ethPriceFeed.latestRoundData();
        // check if price is stale
        if (ethStalePriceDelay != 0 && block.timestamp > ethUpdatedAt + ethStalePriceDelay) {
            revert StalePrice();
        }

        return floorRate * ethRate / 1e18; // scale to 8 decimals places like Chainlink
    }

    /**
     * @return roundId always 0
     *         answer The scaled floor price in USD
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

    constructor(AggregatorV3Interface floorPriceFeed_, AggregatorV3Interface ethPriceFeed_, uint _floorStalePriceDelay, uint _ethStalePriceDelay) public Ownable(msg.sender) {
        if (floorPriceFeed_.decimals() != 18 || ethPriceFeed_.decimals() != 8) {
            revert InvalidPriceFeedDecimals();
        }
        
        floorPriceFeed = floorPriceFeed_;
        ethPriceFeed = ethPriceFeed_;

        floorStalePriceDelay = _floorStalePriceDelay;
        ethStalePriceDelay = _ethStalePriceDelay;
    }

    /**
     * @notice Set the time delay after which the price feed is considered stale.
     * @param _floorStalePriceDelay the time delay in seconds.
     */
    function setFloorStalePriceDelay(uint _floorStalePriceDelay) external onlyOwner {
        floorStalePriceDelay = _floorStalePriceDelay;
    }

    /**
     * @notice Set the time delay after which the price feed is considered stale.
     * @param _ethStalePriceDelay the time delay in seconds.
     */
    function setEthStalePriceDelay(uint _ethStalePriceDelay) external onlyOwner {
        ethStalePriceDelay = _ethStalePriceDelay;
    }
}
