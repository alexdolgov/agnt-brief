// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ICurveCryptoPool, ICurveStableSwapNG} from "../interfaces/ICurvePool.sol";

/// @title CurveAdapter
/// @author BTCD Labs
/// @notice Library for reading prices from Curve AMM pools used as oracles.
///
/// @dev Two pool families are supported, each with different oracle mechanics:
///
///      CryptoSwap (TwoCrypto, TriCrypto)
///      =================================
///      These pools have a built-in EMA oracle: `price_oracle(k)` returns the
///      exponentially-weighted moving average price of coin(k+1) in terms of coin(0).
///      The EMA half-life is configurable at pool deployment (typically 10 minutes).
///      This makes the oracle manipulation-resistant across blocks, but NOT within
///      the same block as a large trade (the EMA updates retroactively).
///
///      Use case: WBTC/crvUSD pools where WBTC price can be read as crvUSD-denominated.
///      The caller chains this with a crvUSD/USD price to get WBTC/USD.
///
///      StableSwap NG
///      =============
///      StableSwap pools do NOT have `price_oracle()`. Instead, we use `get_dy(1 unit)`
///      to compute the spot rate for a negligible swap amount. For rate-bearing tokens
///      (sUSDS, sUSDe), the pool automatically applies `stored_rates()` internally,
///      so get_dy already accounts for the underlying exchange rate.
///
///      Use case: sUSDe/sUSDS pools where 1 sUSDS → X sUSDe gives a relative price,
///      or USDC/sUSDS pools for direct USD pricing.
///
///      The caller must normalize the result to WAD and to USD terms.
///
///      IMPORTANT: Curve oracle prices are 18-decimal. The caller must handle
///      any necessary USD conversion (e.g., multiply by crvUSD/USD from Chainlink).
library CurveAdapter {
    error CurveOracleZeroPrice(address pool);

    uint256 internal constant WAD = 1e18;

    /// @notice Read the EMA oracle from a CryptoSwap pool.
    /// @param pool    The Curve CryptoSwap pool address.
    /// @param index   The price_oracle index (0 = coin(1)/coin(0), etc.).
    /// @return priceWad  The EMA price in 18 decimals (coin terms, not USD).
    function readCryptoOracle(address pool, uint256 index) internal view returns (uint256 priceWad) {
        priceWad = ICurveCryptoPool(pool).price_oracle(index);
        if (priceWad == 0) revert CurveOracleZeroPrice(pool);
    }

    /// @notice Read a spot price from a StableSwap NG pool via get_dy.
    /// @param pool       The Curve StableSwap NG pool address.
    /// @param fromIndex  Source coin index (int128).
    /// @param toIndex    Destination coin index (int128).
    /// @param fromDecimals Decimals of the source coin (to compute 1-unit input).
    /// @param toDecimals   Decimals of the destination coin (to normalize output).
    /// @return priceWad  The quoted price in WAD (1 unit of `from` → X units of `to`).
    function readStableSwapSpot(address pool, int128 fromIndex, int128 toIndex, uint8 fromDecimals, uint8 toDecimals)
        internal
        view
        returns (uint256 priceWad)
    {
        uint256 oneUnit = 10 ** uint256(fromDecimals);
        uint256 dy = ICurveStableSwapNG(pool).get_dy(fromIndex, toIndex, oneUnit);

        // Normalize to WAD: dy is in toDecimals
        if (toDecimals == 18) {
            priceWad = dy;
        } else if (toDecimals < 18) {
            priceWad = dy * (10 ** (18 - toDecimals));
        } else {
            priceWad = dy / (10 ** (toDecimals - 18));
        }

        if (priceWad == 0) revert CurveOracleZeroPrice(pool);
    }
}
