// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

interface YSWEth {
    function convertToAssets(uint256 amount) external view returns (uint256);
}

contract TermYSWEthPriceFeed is AggregatorV3Interface {
    AggregatorV3Interface immutable wethPriceFeed;
    YSWEth immutable ySWEth;

    uint8 immutable feedDecimals;

    constructor(AggregatorV3Interface wethPriceFeed_, YSWEth ySWEth_) {
        wethPriceFeed = wethPriceFeed_;
        ySWEth = ySWEth_;
        feedDecimals = wethPriceFeed.decimals();
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
        (, int256 wethPrice, , uint256 wethUpdatedAt, ) = wethPriceFeed.latestRoundData();

        if (wethPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        int256 ySWEthPrice = (wethPrice * int256(ySWEth.convertToAssets(10 ** 18))) /
            int256(1e18);

        return (0, ySWEthPrice, 0, wethUpdatedAt, 0);
    }
}
