// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

interface LevelReserveLens {
    function getReservePrice() external view returns (uint256);
    function getReservePriceDecimals() external view returns (uint8);
}


contract TermLvlUSDPriceFeed is AggregatorV3Interface {
    LevelReserveLens immutable levelReserveLens = LevelReserveLens(0x29759944834e08acE755dcEA71491413f7e2CBAD);

    function decimals() external view returns (uint8) {
        return levelReserveLens.getReservePriceDecimals();
    }

    function description() external pure returns (string memory) {
        return "Term Finance Lvl USD price feed";
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
        int256 levelUSDPrice = int256(levelReserveLens.getReservePrice());

        return (0, levelUSDPrice, 0, 0, 0);
    }
}
