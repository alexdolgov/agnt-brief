// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.23;

import "AggregatorV3Interface.sol";
import {Ownable} from "Ownable.sol";

interface IWstETH {
    function stEthPerToken() external view returns (uint256);
}

contract WstETHPriceFeedAdapter is Ownable {

    error StalePrice();
    error InvalidPriceFeedDecimals();

    IWstETH public immutable wstEth;
    AggregatorV3Interface public immutable stEthPriceFeed;

    uint public stalePriceDelay;

    /**
     * @return uint The scaled price in USD
     */
    function latestAnswer()
        public
        view
        returns (int256) {

        (
            ,
            int rate, // stETH/USD rate
            ,
            uint updatedAt,

        ) = stEthPriceFeed.latestRoundData();
        // check if price is stale
        if (stalePriceDelay != 0 && block.timestamp > updatedAt + stalePriceDelay) {
            revert StalePrice();
        }

        return rate * int256(wstEth.stEthPerToken()) / 1e18; // scale to 8 decimals places like Chainlink
    }

    /**
     * @return roundId always 0
     *         answer The scaled price in USD
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

    constructor(IWstETH wstEth_, AggregatorV3Interface stEthPriceFeed_, uint stalePriceDelay_) public Ownable(msg.sender) {
        if (stEthPriceFeed_.decimals() != 8) {
            revert InvalidPriceFeedDecimals();
        }
        
        wstEth = wstEth_;
        stEthPriceFeed = stEthPriceFeed_;

        stalePriceDelay = stalePriceDelay_;
    }

    /**
     * @notice Set the time delay after which the price feed is considered stale.
     * @param _stalePriceDelay the time delay in seconds.
     */
    function setStalePriceDelay(uint _stalePriceDelay) external onlyOwner {
        stalePriceDelay = _stalePriceDelay;
    }
}
