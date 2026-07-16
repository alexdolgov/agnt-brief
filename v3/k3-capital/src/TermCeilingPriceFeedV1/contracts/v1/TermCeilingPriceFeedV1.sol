// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {
    AggregatorV3Interface
} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";


contract TermCeilingPriceFeedV1 is AggregatorV3Interface {
    address public immutable referenceToken;

    AggregatorV3Interface immutable underlyingPriceFeed;
    uint256 public immutable ceilingPrice;

    uint8 immutable feedDecimals;

    string internal _description;

    constructor(
        address referenceToken_,
        string memory description_,
        AggregatorV3Interface underlyingPriceFeed_,
        uint256 ceilingPrice_
    ) {
        require(
            referenceToken_ != address(0),
            "reference token address cannot be zero"
        );
        require(
            address(underlyingPriceFeed_) != address(0),
            "feed address cannot be zero"
        );
        require(ceilingPrice_ > 0, "ceiling price must be greater than zero");
        referenceToken = referenceToken_;
        underlyingPriceFeed = underlyingPriceFeed_;
        feedDecimals = underlyingPriceFeed.decimals();
        ceilingPrice = ceilingPrice_;
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
        (, int256 underlyingPrice, , uint256 underlyingPriceFeedUpdatedAt, ) = underlyingPriceFeed
            .latestRoundData();

        if (underlyingPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        if (uint256(underlyingPrice) >= ceilingPrice) {
            return (0, int256(ceilingPrice), 0, underlyingPriceFeedUpdatedAt, 0);
        } else {
            return (0, underlyingPrice, 0, underlyingPriceFeedUpdatedAt, 0);
        }
    }
}
