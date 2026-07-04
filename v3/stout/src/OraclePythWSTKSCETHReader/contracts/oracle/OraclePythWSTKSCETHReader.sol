// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {PythAggregatorV3} from "./PythAggregatorV3.sol";

/// @title OraclePythWSTKSCETHReader
/// @notice A contract that reads WSTKSCETH/USD price data using Pyth oracles
/// @dev Implements a Chainlink-compatible interface using two Pyth oracles
contract OraclePythWSTKSCETHReader {
    /// @notice The Pyth oracle for SCETH/USD price
    PythAggregatorV3 public immutable oracleSCETH;

    /// @notice The Pyth oracle for WSTKSCETH/SCETH price
    PythAggregatorV3 public immutable oracleWSTKSCETH;

    /// @notice The decimals for this oracle's output (standard for USD price feeds)
    uint8 private constant DECIMALS = 8;

    /// @notice Initializes the contract with the Pyth oracle addresses
    /// @param _oracleSCETH The address of the SCETH/USD Pyth oracle
    /// @param _oracleWSTKSCETH The address of the WSTKSCETH/SCETH Pyth oracle
    constructor(address _oracleSCETH, address _oracleWSTKSCETH) {
        oracleSCETH = PythAggregatorV3(_oracleSCETH);
        oracleWSTKSCETH = PythAggregatorV3(_oracleWSTKSCETH);
    }

    /// @notice Gets the latest WSTKSCETH/USD price data in a Chainlink-compatible format
    /// @return roundId The timestamp of the latest update
    /// @return answer The latest price value of WSTKSCETH/USD
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
        // Get SCETH/USD price data
        (
            ,
            // uint80 scethRoundId (unused)
            int256 scethAnswer, // uint256 scethStartedAt (unused)
            ,
            uint256 scethUpdatedAt, // uint80 scethAnsweredInRound (unused)

        ) = oracleSCETH.latestRoundData();

        // Get WSTKSCETH/SCETH price data
        (
            ,
            // uint80 wstkscethRoundId (unused)
            int256 wstkscethAnswer, // uint256 wstkscethStartedAt (unused)
            ,
            uint256 wstkscethUpdatedAt, // uint80 wstkscethAnsweredInRound (unused)

        ) = oracleWSTKSCETH.latestRoundData();

        // Use the latest timestamp between the two oracles
        uint256 timestamp = scethUpdatedAt >= wstkscethUpdatedAt
            ? scethUpdatedAt
            : wstkscethUpdatedAt;

        // Calculate WSTKSCETH/USD price
        // Need to handle decimals correctly
        uint8 scethDecimals = oracleSCETH.decimals();
        uint8 wstkscethDecimals = oracleWSTKSCETH.decimals();

        // Calculate WSTKSCETH/USD = WSTKSCETH/SCETH * SCETH/USD, adjusting for decimal differences
        int256 wstkscethUSDPrice = (wstkscethAnswer * scethAnswer) /
            int256(10 ** uint256(scethDecimals + wstkscethDecimals - DECIMALS));

        return (
            uint80(timestamp), // Use timestamp as roundId like in PythAggregatorV3
            wstkscethUSDPrice,
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
        return "Pyth Oracle for WSTKSCETH/USD price";
    }
}
