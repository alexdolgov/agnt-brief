// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {IWstETH} from "./interfaces/IWstETH.sol";
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract TermWstEthPriceFeed is AggregatorV3Interface {
    AggregatorV3Interface immutable stEthPriceFeed;
    AggregatorV3Interface immutable ethPriceFeed;
    IWstETH immutable wstEth;

    uint8 immutable feedDecimals;

    constructor(AggregatorV3Interface stEthPriceFeed_, AggregatorV3Interface ethPriceFeed_, IWstETH wstEth_) {
        stEthPriceFeed = stEthPriceFeed_;
        ethPriceFeed = ethPriceFeed_;

        wstEth = wstEth_;
        feedDecimals = ethPriceFeed.decimals();
    }

    function decimals() external view returns (uint8) {
        return feedDecimals;
    }

    function description() external pure returns (string memory) {
        return "Term Finance price feed";
    }

    function version() external pure returns (uint256) {
        return 0;
    }

    function getRoundData(
        uint80 /* _roundId */
    )
        external
        pure
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (0, 0, 0, 0, 0);
    }

    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        // slither-disable-next-line unused-return
        (, int256 stEthPrice, , uint256 stEthUpdatedAt, ) = stEthPriceFeed.latestRoundData();
        (, int256 ethPrice, , uint256 ethUpdatedAt, ) = ethPriceFeed.latestRoundData();

        if (stEthPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        int256 priceInEth = (stEthPrice * int256(wstEth.stEthPerToken())) /
            int256(1e18);

        int256 wstEthPrice = (priceInEth * ethPrice) / int256(1e18);

        return (0, wstEthPrice, 0, stEthUpdatedAt > ethUpdatedAt ? stEthUpdatedAt: ethUpdatedAt, 0);
    }
}
