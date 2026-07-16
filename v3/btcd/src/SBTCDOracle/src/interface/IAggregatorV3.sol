// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface AggregatorV3Interface {
    function decimals() external view returns (uint8);
    function description() external view returns (string memory);
    function version() external view returns (uint256);

    // getRoundData and latestRoundData should both raise "No data present"
    // if they do not have data to report, instead of returning unset values
    // which could be misinterpreted as actual reported values.
    function getRoundData(uint80 _roundId)
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

/// Morpho Blue oracle interface: price of 1 collateral asset quoted in 1 loan asset, scaled by 1e36.
/// (Precision: 36 + loanDecimals - collateralDecimals) :contentReference[oaicite:3]{index=3}
interface IOracle {
    function price() external view returns (uint256);
}

/// @title IPriceOracle
/// @notice Extended oracle interface for Morpho Blue + IPOR compatibility.
/// @dev Extends Morpho's IOracle with staleness inspection helpers.
///      `price()` MUST NOT revert due to stale data (Morpho requirement).
///      `lastUpdate()` and `isStale()` expose feed freshness for off-chain
///      monitoring and IPOR risk parameter validation.
interface IPriceOracle is IOracle {
    /// @notice Returns the number of decimals of the price
    /// @return The number of decimals of the price
    function decimals() external view returns (uint8);

    /// @notice Returns the latest price of an asset, expressed in USD
    /// @return roundId The round ID from which the data was retrieved
    /// @return price The latest price of the asset, expressed in USD, with 8 decimals
    /// @return startedAt Timestamp of the start of the round
    /// @return time Timestamp of the data of the round
    /// @return answeredInRound The round ID from which the answer was retrieved
    /// @dev Notice! The price is expressed always in 8 decimals.
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 price, uint256 startedAt, uint256 time, uint80 answeredInRound);
}

