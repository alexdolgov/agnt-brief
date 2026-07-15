// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

/// @title IRateProvider
/// @notice Oracle interface that converts savings token amounts into pmUSD-equivalent values.
/// @dev All return values are 18 decimals. The rate represents: "how many pmUSD (18 decimals)
///      is 1 full unit (10^tokenDecimals) of this token worth?"
interface IRateProvider {
    /// @notice Returns the pmUSD price of one full unit of the token, rounded DOWN (Floor).
    /// @dev Used when the rate is a multiplier (valuing assets conservatively):
    ///      totalAssets() computation, deposit valuation, incoming swap valuation.
    ///      A lower rate = less value credited = vault benefits.
    /// @param token The token address to price (savings token or base asset).
    /// @return priceInPmUSD The price in 18-decimal pmUSD terms. Always > 0.
    function getRate(address token) external view returns (uint256 priceInPmUSD);

    /// @notice Returns the pmUSD price of one full unit of the token, rounded UP (Ceil).
    /// @dev Used when the rate appears as a denominator (converting pmUSD back to savings token amounts):
    ///      swap Direction 1 output, proportional withdrawal savingsTokenOut.
    ///      A higher rate in the denominator = fewer tokens sent out = vault benefits.
    /// @param token The token address to price (savings token or base asset).
    /// @return priceInPmUSD The price in 18-decimal pmUSD terms. Always > 0.
    function getRateRoundUp(address token) external view returns (uint256 priceInPmUSD);

    /// @notice Returns the Chainlink underlying/USD price, scaled to 18 decimals.
    /// @dev Includes staleness checks. Since pmUSD = $1, this is equivalently underlying/pmUSD.
    /// @return price The underlying asset price in 18-decimal USD terms. Always > 0.
    function getUnderlyingPrice() external view returns (uint256 price);

    /// @notice Returns the base asset (pmUSD) address.
    function baseAsset() external view returns (address);

    /// @notice Returns the savings token address.
    function savingsToken() external view returns (address);
}
