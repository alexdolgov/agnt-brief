// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {PythAggregatorV3} from "./PythAggregatorV3.sol";

/// @title OraclePythStSUSDReader
/// @notice A contract that reads stS/USD price data using Pyth oracles
/// @dev Implements a Chainlink-compatible interface using two Pyth oracles
contract OraclePythStSUSDReader {
    /// @notice The Pyth oracle for S/USD price
    PythAggregatorV3 public immutable oracleSUSD;

    /// @notice The Pyth oracle for stS/S price
    PythAggregatorV3 public immutable oracleStSS;

    /// @notice The decimals for this oracle's output (standard for USD price feeds)
    uint8 private constant DECIMALS = 8;

    /// @notice Initializes the contract with the Pyth oracle addresses
    /// @param _oracleSUSD The address of the S/USD Pyth oracle
    /// @param _oracleStSS The address of the stS/S Pyth oracle
    constructor(address _oracleSUSD, address _oracleStSS) {
        oracleSUSD = PythAggregatorV3(_oracleSUSD);
        oracleStSS = PythAggregatorV3(_oracleStSS);
    }

    /// @notice Gets the latest stS/USD price data in a Chainlink-compatible format
    /// @return roundId The timestamp of the latest update
    /// @return answer The latest price value of stS/USD
    /// @return startedAt The timestamp of the latest price update
    /// @return updatedAt The timestamp of the latest price update
    /// @return answeredInRound The timestamp of the latest update
    function latestRoundData()
        public
        view
        virtual
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        // Get S/USD price data
        (
            ,
            // uint80 sRoundId (unused)
            int256 sAnswer, // uint256 sStartedAt (unused)
            ,
            uint256 sUpdatedAt, // uint80 sAnsweredInRound (unused)

        ) = oracleSUSD.latestRoundData();

        // Get stS/S price data
        (
            ,
            // uint80 stSRoundId (unused)
            int256 stSAnswer, // uint256 stSStartedAt (unused)
            ,
            uint256 stSUpdatedAt, // uint80 stSAnsweredInRound (unused)

        ) = oracleStSS.latestRoundData();

        // Use the latest timestamp between the two oracles
        uint256 timestamp = sUpdatedAt >= stSUpdatedAt
            ? sUpdatedAt
            : stSUpdatedAt;

        // Calculate stS/USD price
        // Need to handle decimals correctly
        uint8 sDecimals = oracleSUSD.decimals();
        uint8 stSDecimals = oracleStSS.decimals();

        // Calculate stS/USD = stS/S * S/USD, adjusting for decimal differences
        int256 stSUSDPrice = (stSAnswer * sAnswer) /
            int256(10 ** uint256(sDecimals + stSDecimals - DECIMALS));

        return (
            uint80(timestamp), // Use timestamp as roundId like in PythAggregatorV3
            stSUSDPrice,
            timestamp,
            timestamp,
            uint80(timestamp)
        );
    }

    /// @notice Returns the number of decimal places in the oracle's price data
    /// @return The number of decimal places (8 for USD price feeds)
    function decimals() public pure virtual returns (uint8) {
        return DECIMALS;
    }

    /// @notice Returns a description of this oracle
    /// @return A string description
    function description() public pure returns (string memory) {
        return "Pyth Oracle for stS/USD price";
    }
}
