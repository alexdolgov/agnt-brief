// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title IOracle
/// @notice Morpho Blue oracle interface.
interface IOracle {
    /// @notice Price of 1 collateral asset quoted in loan asset, scaled by Morpho convention.
    function price() external view returns (uint256);
}

/// @title IPriceOracle
/// @notice Extended oracle interface for Morpho Blue + Chainlink compatibility.
/// @dev Our PriceOracle implements both IOracle.price() for Morpho and
///      latestRoundData() for sBTCD USD pricing.
interface IPriceOracle is IOracle {
    /// @notice Number of decimals for the USD price (always 8).
    function decimals() external view returns (uint8);

    /// @notice Chainlink-compatible sBTCD price in USD (8 decimals).
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}
