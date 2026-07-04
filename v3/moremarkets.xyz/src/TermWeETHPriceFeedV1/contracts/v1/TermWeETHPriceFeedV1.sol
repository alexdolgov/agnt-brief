// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {
    AggregatorV3Interface
} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

/// @notice weETH vault interface for getting exchange rate to Eth
interface IWeETH {
    
    function getRate() external view returns (uint256);
}

contract TermWeETHPriceFeedV1 is AggregatorV3Interface {
    address public immutable referenceToken;

    AggregatorV3Interface immutable assetPriceFeed;
    IWeETH immutable referenceTokenWeETH;

    uint8 immutable feedDecimals;

    string internal _description;

    constructor(
        address referenceToken_,
        string memory description_,
        AggregatorV3Interface assetPriceFeed_
    ) {
        require(
            referenceToken_ != address(0),
            "reference token address cannot be zero"
        );
        require(
            address(assetPriceFeed_) != address(0),
            "feed address cannot be zero"
        );
        referenceToken = referenceToken_;
        referenceTokenWeETH = IWeETH(referenceToken);
        assetPriceFeed = assetPriceFeed_;
        feedDecimals = assetPriceFeed.decimals();
        _description = description_;
    }

    function decimals() external view returns (uint8) {
        return feedDecimals;
    }

    function description() external view override returns (string memory) {
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
        (, int256 assetPrice, , uint256 assetPriceUpdatedAt, ) = assetPriceFeed
            .latestRoundData();

        if (assetPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        uint256 fundamentalRatio  = referenceTokenWeETH.getRate();

        int256 price = (assetPrice *
            int256(
                fundamentalRatio
            )) / int256(1e18);


        return (0, price, 0, assetPriceUpdatedAt, 0);
    }
}
