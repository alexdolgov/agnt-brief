// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title ICurveCryptoPool
/// @notice Minimal interface for Curve CryptoSwap / TwoCrypto / TriCrypto pools.
/// @dev These pools have built-in EMA oracles via `price_oracle()` that track
///      internal prices smoothed over time. Unlike spot prices, EMA oracles
///      are resistant to single-block manipulation.
///
///      Token ordering: coin(0) is the base asset, coin(1..N) are priced relative to coin(0).
///      price_oracle(k) returns the EMA price of coin(k+1) in units of coin(0).
interface ICurveCryptoPool {
    /// @notice EMA-smoothed oracle price of coin(k+1) relative to coin(0).
    /// @param k Index (0-based): k=0 gives price of coin(1)/coin(0).
    /// @return Price in 18 decimals.
    function price_oracle(uint256 k) external view returns (uint256);

    /// @notice Last raw trade price of coin(k+1) relative to coin(0).
    /// @param k Index (0-based).
    /// @return Price in 18 decimals.
    function last_prices(uint256 k) external view returns (uint256);

    /// @notice Internal price scale used by the AMM invariant.
    /// @param k Index (0-based).
    /// @return Price in 18 decimals.
    function price_scale(uint256 k) external view returns (uint256);

    /// @notice Virtual price of the LP token (18 decimals).
    function get_virtual_price() external view returns (uint256);

    /// @notice Address of coin at index i.
    function coins(uint256 i) external view returns (address);
}

/// @title ICurveStableSwapNG
/// @notice Minimal interface for Curve StableSwap NG pools.
/// @dev StableSwap NG pools (e.g., sUSDe/sUSDS) have `get_dy()` for quoted swaps
///      and `stored_rates()` for rate-adjusted oracle reads. They do NOT have
///      `price_oracle()` — use `get_dy(1 unit)` as a spot oracle instead.
///
///      For pools with rate-bearing tokens (e.g., sUSDS), `stored_rates()` reflects
///      the exchange rate of the underlying yield-bearing token.
interface ICurveStableSwapNG {
    /// @notice Calculate the output for swapping dx of coin i to coin j.
    /// @param i From coin index.
    /// @param j To coin index.
    /// @param dx Input amount.
    /// @return Output amount.
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);

    /// @notice Rate multipliers for all coins (accounts for rate-bearing tokens).
    /// @return Array of rate multipliers (18 decimals).
    function stored_rates() external view returns (uint256[] memory);

    /// @notice Virtual price of the LP token (18 decimals).
    function get_virtual_price() external view returns (uint256);

    /// @notice Address of coin at index i.
    function coins(uint256 i) external view returns (address);
}
