// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {PythAggregatorV3} from "./PythAggregatorV3.sol";

/// @title OraclePythWSTKSCUSDReader
/// @notice A contract that reads WSTKSCUSD/USD price data using Pyth oracles
/// @dev Implements a Chainlink-compatible interface using two Pyth oracles
contract OraclePythWSTKSCUSDReader {
    /// @notice The Pyth oracle for SCUSD/USD price
    PythAggregatorV3 public immutable oracleSCUSD;

    /// @notice The Pyth oracle for WSTKSCUSD/SCUSD price
    PythAggregatorV3 public immutable oracleWSTKSCUSD;

    /// @notice The decimals for this oracle's output (standard for USD price feeds)
    uint8 private constant DECIMALS = 8;

    /// @notice Initializes the contract with the Pyth oracle addresses
    /// @param _oracleSCUSD The address of the SCUSD/USD Pyth oracle
    /// @param _oracleWSTKSCUSD The address of the WSTKSCUSD/SCUSD Pyth oracle
    constructor(address _oracleSCUSD, address _oracleWSTKSCUSD) {
        oracleSCUSD = PythAggregatorV3(_oracleSCUSD);
        oracleWSTKSCUSD = PythAggregatorV3(_oracleWSTKSCUSD);
    }

    /// @notice Gets the latest WSTKSCUSD/USD price data in a Chainlink-compatible format
    /// @return roundId The timestamp of the latest update
    /// @return answer The latest price value of WSTKSCUSD/USD
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
        // Get SCUSD/USD price data
        (
            ,
            // uint80 scusdRoundId (unused)
            int256 scusdAnswer, // uint256 scusdStartedAt (unused)
            ,
            uint256 scusdUpdatedAt, // uint80 scusdAnsweredInRound (unused)

        ) = oracleSCUSD.latestRoundData();

        // Get WSTKSCUSD/SCUSD price data
        (
            ,
            // uint80 wstkscusdRoundId (unused)
            int256 wstkscusdAnswer, // uint256 wstkscusdStartedAt (unused)
            ,
            uint256 wstkscusdUpdatedAt, // uint80 wstkscusdAnsweredInRound (unused)

        ) = oracleWSTKSCUSD.latestRoundData();

        // Use the latest timestamp between the two oracles
        uint256 timestamp = scusdUpdatedAt >= wstkscusdUpdatedAt
            ? scusdUpdatedAt
            : wstkscusdUpdatedAt;

        // Calculate WSTKSCUSD/USD price
        // Need to handle decimals correctly
        uint8 scusdDecimals = oracleSCUSD.decimals();
        uint8 wstkscusdDecimals = oracleWSTKSCUSD.decimals();

        // Calculate WSTKSCUSD/USD = WSTKSCUSD/SCUSD * SCUSD/USD, adjusting for decimal differences
        int256 wstkscusdUSDPrice = (wstkscusdAnswer * scusdAnswer) /
            int256(10 ** uint256(scusdDecimals + wstkscusdDecimals - DECIMALS));

        return (
            uint80(timestamp), // Use timestamp as roundId like in PythAggregatorV3
            wstkscusdUSDPrice,
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
        return "Pyth Oracle for WSTKSCUSD/USD price";
    }
}
