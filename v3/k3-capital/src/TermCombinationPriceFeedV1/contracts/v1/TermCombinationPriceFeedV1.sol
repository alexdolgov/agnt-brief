// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract TermCombinationPriceFeedV1 is AggregatorV3Interface {
    address public immutable referenceToken;
    string internal _description;
    AggregatorV3Interface immutable assetToPegAggregator;
    AggregatorV3Interface immutable pegToBaseAggregator;

    uint8 immutable feedDecimals;
    int256 immutable denominator;

    constructor(
        address referenceToken_,
        string memory description_,
        AggregatorV3Interface assetToPegAggregator_,
        AggregatorV3Interface pegToBaseAggregator_,
        uint8 decimals_
    ) {
        require(
            referenceToken_ != address(0),
            "reference token address cannot be zero"
        );
        require(
            address(assetToPegAggregator_) != address(0),
            "asset to peg aggregator address cannot be zero"
        );
        require(
            address(pegToBaseAggregator_) != address(0),
            "peg to base aggregator address cannot be zero"
        );
        referenceToken = referenceToken_;
        _description = description_;
        assetToPegAggregator = assetToPegAggregator_;
        pegToBaseAggregator = pegToBaseAggregator_;
        feedDecimals = decimals_;
        denominator = int256(
            10 **
                (assetToPegAggregator_.decimals() +
                    pegToBaseAggregator_.decimals())
        );
    }

    function decimals() external view returns (uint8) {
        return feedDecimals;
    }

    function description() external override view returns (string memory) {
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
        (, int256 assetToPegAggregatorPrice, , uint256 assetToPegAggregatorUpdatedAt, ) = assetToPegAggregator
            .latestRoundData();

        // slither-disable-next-line unused-return
        (, int256 pegToBaseAggregatorPrice, , uint256 pegToBaseAggregatorUpdatedAt, ) = pegToBaseAggregator
            .latestRoundData();

        if (assetToPegAggregatorPrice <= 0 || pegToBaseAggregatorPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        int256 assetToBasePrice = (assetToPegAggregatorPrice *
            pegToBaseAggregatorPrice *
            int256(10 ** feedDecimals)) / (denominator);

        return (0, assetToBasePrice, 0, pegToBaseAggregatorUpdatedAt < assetToPegAggregatorUpdatedAt ? pegToBaseAggregatorUpdatedAt : assetToPegAggregatorUpdatedAt, 0);
    }
}
