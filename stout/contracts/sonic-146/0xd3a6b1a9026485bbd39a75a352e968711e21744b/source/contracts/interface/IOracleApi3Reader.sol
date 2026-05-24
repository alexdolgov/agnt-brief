// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/// @title IOracleApi3Reader Interface
/// @notice Interface for interacting with Api3 Network's Chainlink price feed adapter
interface IOracleApi3Reader {
    /// @notice Get the latest price data from the Chainlink oracle
    /// @return roundId The round ID from the underlying price feed
    /// @return answer The price answer from the oracle
    /// @return startedAt Timestamp of when the round started
    /// @return updatedAt Timestamp of when the round was updated
    /// @return answeredInRound The round ID in which the answer was computed
    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

    /// @notice Get the number of decimals in the price feed's response
    /// @return The number of decimals used in the price feed
    function decimals() external view returns (uint8);
}
