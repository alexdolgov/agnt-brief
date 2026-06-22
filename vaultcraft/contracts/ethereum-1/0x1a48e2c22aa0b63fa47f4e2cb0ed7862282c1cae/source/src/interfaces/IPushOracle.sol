// SPDX-License-Identifier: GPL-3.0
// Docgen-SOLC: 0.8.25

pragma solidity ^0.8.25;

import {IPriceOracle} from "./IPriceOracle.sol";

struct Price {
    uint256 price;
    uint256 targetPrice;
    uint256 changePerBlock;
    uint256 lastUpdatedBlock;
    bool increase;
}

interface IPushOracle is IPriceOracle {
    function setPrice(
        address base,
        address quote,
        uint256 bqPrice,
        uint256 qbPrice
    ) external;

    function setPrices(
        address[] memory bases,
        address[] memory quotes,
        uint256[] memory bqPrices,
        uint256[] memory qbPrices
    ) external;

    function prices(
        address base,
        address quote
    ) external view returns (Price memory);

    function setPriceOverTime(
        address base,
        address quote,
        uint256 bqTargetPrice,
        uint256 qbTargetPrice,
        uint256 changePerBlock,
        bool increase
    ) external;

    function setPricesOverTime(
        address[] memory bases,
        address[] memory quotes,
        uint256[] memory bqTargetPrices,
        uint256[] memory qbTargetPrices,
        uint256[] memory changePerBlocks,
        bool[] memory increases
    ) external;

    function getCurrentPrice(
        address base,
        address quote
    ) external view returns (uint256);
}
