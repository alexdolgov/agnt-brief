// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title IAaveOracle
/// @notice Minimal interface for the Aave V3 Oracle contract.
interface IAaveOracle {
    /// @notice Get the price of an asset in the base currency (USD).
    /// @param asset The address of the asset
    /// @return The price in base currency units (8 decimals for USD)
    function getAssetPrice(address asset) external view returns (uint256);

    /// @notice Get the base currency unit (1e8 for USD).
    /// @return The base currency unit
    function BASE_CURRENCY_UNIT() external view returns (uint256);
}
