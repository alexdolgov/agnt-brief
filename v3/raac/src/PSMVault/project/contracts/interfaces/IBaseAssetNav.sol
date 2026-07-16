// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

/// @title IBaseAssetNav
/// @notice Interface for base asset (pmUSD) NAV reporting.
/// @dev Used by the NAV circuit breaker to check collateral health.
///      Source: https://etherscan.io/address/0xc0c17dd08263c16f6b64e772fb9b723bf1344ddf#code (proxy)
///      Implementation: https://etherscan.io/address/0x32d93b015562cc8da0ef3ccbccc3f8e1da8541d8#code
interface IBaseAssetNav {
    /// @notice Returns the current Net Asset Value of the base asset.
    /// @return nav The NAV in 18 decimals (e.g., 1e18 = $1.00).
    function getNav(int256 multiplier) external view returns (uint256 nav);
}
