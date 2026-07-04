// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract TermAdapterPriceFeedV1 is AggregatorV3Interface {

    address public immutable referenceToken;
    
    AggregatorV3Interface immutable tokenPriceFeed;

    string internal _description;

    constructor(address referenceToken_, string memory description_, AggregatorV3Interface tokenPriceFeed_) {
        require(
            referenceToken_ != address(0),
            "reference token address cannot be zero"
        );
        require(
            address(tokenPriceFeed_) != address(0),
            "feed address cannot be zero"
        );
        referenceToken = referenceToken_;
        tokenPriceFeed = tokenPriceFeed_;
        _description = description_;
    }

    function decimals() external view returns (uint8) {
        return tokenPriceFeed.decimals();
    }

    function description() external view override returns (string memory) {
        return _description;
    }

    function version() external pure returns (uint256) {
        return 1;
    }

    function getRoundData(
        uint80 roundId_
    )
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
                (roundId, answer, startedAt, updatedAt, answeredInRound ) = tokenPriceFeed.getRoundData(roundId_);

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
        (roundId, answer, startedAt, updatedAt, answeredInRound ) = tokenPriceFeed.latestRoundData();
    }
}
