// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

interface IhTokenOracle {
    function exchangeRate() external view returns (uint256);
}


contract TermHEthPriceFeedV1 is AggregatorV3Interface {
    address public immutable referenceToken = 0x270B7748CdF8243bFe68FaCE7230ef0fCE695389;
    IhTokenOracle immutable hTokenOracle = IhTokenOracle(0x0Bc5D46b202EfCaAed5b8cf10bDBBA9E036CCf53);
    AggregatorV3Interface immutable ethPriceFeed;
    constructor(AggregatorV3Interface ethPriceFeed_) {
        require(
            address(ethPriceFeed_) != address(0),
            "ETH price feed address cannot be zero"
        );
        ethPriceFeed = ethPriceFeed_;
    }
    
    function decimals() external view returns (uint8) {
        return ethPriceFeed.decimals();
    }

    function description() external pure returns (string memory) {
        return "Term Finance hEth USD price feed";
    }

    function version() external pure returns (uint256) {
        return 1;
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
        (,int256 ethUSDPrice,, uint256 ethUpdatedAt, ) = ethPriceFeed.latestRoundData();
        uint256 hTokenExchangeRate = hTokenOracle.exchangeRate();
        if (ethUSDPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }
        if (hTokenExchangeRate <= 0) {
            return (0, 0, 0, 0, 0);
        }
        int256 price = (int256(hTokenExchangeRate) * ethUSDPrice) / 1e18;

        return (0, price, 0, ethUpdatedAt, 0);
    }
}
