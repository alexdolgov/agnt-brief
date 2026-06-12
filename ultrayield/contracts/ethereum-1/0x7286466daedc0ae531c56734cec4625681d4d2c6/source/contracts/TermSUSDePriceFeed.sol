// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ISUSDe} from "./interfaces/ISUSDe.sol";
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract TermSUSDePriceFeed is AggregatorV3Interface {
    AggregatorV3Interface immutable usdEPriceFeed;
    ISUSDe immutable sUSDe;

    uint8 immutable feedDecimals;

    constructor(AggregatorV3Interface usdEPriceFeed_, ISUSDe sUSDe_) {
        usdEPriceFeed = usdEPriceFeed_;
        sUSDe = sUSDe_;
        feedDecimals = usdEPriceFeed.decimals();
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
        (, int256 usdePrice, , uint256 stEthUpdatedAt, ) = usdEPriceFeed.latestRoundData();

        if (usdePrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        int256 sUSDePrice = (usdePrice * int256(sUSDe.convertToAssets(10 ** 18))) /
            int256(1e18);

        return (0, sUSDePrice, 0, stEthUpdatedAt, 0);
    }
}
