// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ICbEth} from "./interfaces/ICbEth.sol";
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract TermCbEthPriceFeed is AggregatorV3Interface {
    AggregatorV3Interface immutable ethPriceFeed;
    ICbEth immutable cbEth;

    uint8 immutable feedDecimals;

    constructor(AggregatorV3Interface ethPriceFeed_, ICbEth cbEth_) {
        ethPriceFeed = ethPriceFeed_;
        cbEth = cbEth_;
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
        (, int256 cbEthEthPrice, , uint256 cbEthUpdatedAt, ) = ethPriceFeed.latestRoundData();

        if (cbEthEthPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        int256 cbUSDEthPrice = (cbEthEthPrice * int256(cbEth.exchangeRate())) /
            int256(1e18);

        return (0, cbUSDEthPrice, 0, cbEthUpdatedAt, 0);
    }
}
