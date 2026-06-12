// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IProxy {
    function read() external view returns (int224 value, uint256 timestamp);
}

interface AggregatorV3Interface {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    // getRoundData and latestRoundData should both raise "No data present"
    // if they do not have data to report, instead of returning unset values
    // which could be misinterpreted as actual reported values.
    function getRoundData(uint80 _roundId)
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

    function latestAnswer() external view returns (int256);
}

contract API3ConsumerExchRate {
    IProxy public exchangeFeed;
    AggregatorV3Interface public priceFeed;
    uint256 public fallbackPrice;
    uint256 public fallbackExRate;

    event FallbackPriceUpdated(uint256 newPrice, bool toggle);

    constructor(IProxy _exchangeFeed, AggregatorV3Interface _priceFeed) {
        exchangeFeed = _exchangeFeed;
        priceFeed = _priceFeed;
    }

    function latestAnswer() external view returns (uint256) {
        (int224 exRate, ) = exchangeFeed.read();
        int256 price = priceFeed.latestAnswer();
        
        if (exRate < 0 || price < 0) {
            revert("Invalid data: negative values");
        }
        
        // Perform multiplication first to avoid precision loss, then divide to adjust the decimal places
        uint256 result = uint256(uint224(exRate)) * uint256(price) / 1e18; // Adjust the result to 8 decimals
        
        return result;
    }
}