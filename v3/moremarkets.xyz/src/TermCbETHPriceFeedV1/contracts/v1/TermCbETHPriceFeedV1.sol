// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {
    AggregatorV3Interface
} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

interface ICbETH {
    function exchangeRate() external view returns (uint256);
}

contract TermCbETHPriceFeedV1 is AggregatorV3Interface {
    address public immutable referenceToken;
    AggregatorV3Interface immutable ethPriceFeed;
    string internal _description;

    constructor(address referenceToken_, string memory description_, AggregatorV3Interface ethPriceFeed_) {
        require(
            address(ethPriceFeed_) != address(0),
            "ETH price feed address cannot be zero"
        );
        require(
            referenceToken_ != address(0),
            "Reference token address cannot be zero"
        );
        referenceToken = referenceToken_;
        _description = description_;
        ethPriceFeed = ethPriceFeed_;
    }

    function decimals() external view returns (uint8) {
        return ethPriceFeed.decimals();
    }

    function description() external view returns (string memory) {
        return _description;
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
        (, int256 ethUSDPrice, , uint256 ethUpdatedAt, ) = ethPriceFeed
            .latestRoundData();
        uint256 cbETHExchangeRate = ICbETH(referenceToken).exchangeRate();
        if (ethUSDPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }
        if (cbETHExchangeRate <= 0) {
            return (0, 0, 0, 0, 0);
        }
        int256 price = (int256(cbETHExchangeRate) * ethUSDPrice) / 1e18;

        return (0, price, 0, ethUpdatedAt, 0);
    }
}
