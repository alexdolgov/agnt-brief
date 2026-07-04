// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AggregatorV3Interface} from "../interfaces/AggregatorV3Interface.sol";


/// @title Chainlink compatible constant oracle for USD/MONEY
/// @author Some IMFer
/// @notice Capture a fixed conversion rate between USD and MONEY, used by pricining oracles within the money markets
///         with a chainlink compatible interface
contract ChainlinkUsdMoneyConstantOracle is AggregatorV3Interface {
    uint8 public constant decimals = 18;
    string public constant description = "Chainlink compatible fixed price oracle for USD/MONEY";
    uint256 public constant version = 1;
    int256 public constant rate = 0.14492753623188406e18;

    uint256 public immutable createdAt;

    constructor() {
        createdAt = block.timestamp;
    }

    function getRoundData(uint80 _roundId) 
        external 
        view 
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) {
            return (_roundId, rate, createdAt + _roundId, createdAt + _roundId, _roundId);
    }

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) {
            uint80 _roundId = uint80(block.timestamp - createdAt);
            return (_roundId, rate, block.timestamp, block.timestamp, _roundId);
    }
}