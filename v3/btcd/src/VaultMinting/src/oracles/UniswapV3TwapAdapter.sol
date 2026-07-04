// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {TickMath} from "@uniswap/v4-core/libraries/TickMath.sol";
import {FullMath} from "@uniswap/v4-core/libraries/FullMath.sol";
import {FixedPoint96} from "@uniswap/v4-core/libraries/FixedPoint96.sol";
import {IUniswapV3Pool} from "../interfaces/IUniswapV3Pool.sol";

/// @title UniswapV3TwapAdapter
/// @author BTCD Labs
/// @notice Library for reading Uniswap V3 TWAP prices from pool observation accumulators.
///
/// @dev Price derivation:
///      1. Call pool.observe() with [twapWindow, 0] to get tick cumulatives
///      2. Compute arithmetic mean tick over the window
///      3. Convert mean tick → sqrtPriceX96 via Uniswap V4's TickMath
///      4. Convert sqrtPriceX96 → WAD price using FullMath for overflow-safe squaring
///
///      The returned price is token1/token0 (Uniswap convention).
///      Callers must account for token ordering and decimal normalization.
///
///      IMPORTANT: TWAP windows should be long enough to resist manipulation.
///      For production use, 30 minutes (1800s) is the minimum recommendation.
///      Shorter windows are vulnerable to multi-block MEV attacks.
library UniswapV3TwapAdapter {
    error TwapWindowTooShort(uint32 window);
    error TwapObservationFailed(address pool);

    /// @notice Minimum TWAP window to resist multi-block MEV manipulation.
    /// @dev 30 minutes is the recommended minimum for mainnet (12s blocks = 150 blocks).
    uint32 internal constant MIN_TWAP_WINDOW = 1800; // 30 minutes

    uint256 internal constant WAD = 1e18;
    uint256 internal constant Q192 = 2 ** 192;


    /// @notice Read a Uniswap V3 pool's TWAP price over the specified window.
    /// @param pool       The Uniswap V3 pool address.
    /// @param twapWindow Observation window in seconds (must be >= MIN_TWAP_WINDOW).
    /// @param baseDecimals  Decimals of the base token (token0 or token1 depending on ordering).
    /// @param quoteDecimals Decimals of the quote token.
    /// @param invertPrice   If true, return token0/token1 instead of token1/token0.
    /// @return priceWad   The TWAP price in WAD.
    function readTwap(address pool, uint32 twapWindow, uint8 baseDecimals, uint8 quoteDecimals, bool invertPrice)
        internal
        view
        returns (uint256 priceWad)
    {
        if (twapWindow < MIN_TWAP_WINDOW) revert TwapWindowTooShort(twapWindow);

        int24 avgTick = _getAverageTick(pool, twapWindow);
        uint160 sqrtPriceX96 = TickMath.getSqrtPriceAtTick(avgTick);

        // sqrtPriceX96 = sqrt(token1/token0) * 2^96
        // price(token1/token0) = sqrtPriceX96^2 / 2^192
        // Use FullMath.mulDiv for overflow safety
        uint256 price;
        if (sqrtPriceX96 <= type(uint128).max) {
            // Common path: sqrtPrice fits in uint128, square directly
            uint256 ratioX192 = uint256(sqrtPriceX96) * uint256(sqrtPriceX96);
            price = invertPrice ? FullMath.mulDiv(Q192, WAD, ratioX192) : FullMath.mulDiv(ratioX192, WAD, Q192);
        } else {
            // Large sqrtPrice: use FullMath to avoid overflow
            uint256 ratioX128 = FullMath.mulDiv(uint256(sqrtPriceX96), uint256(sqrtPriceX96), 1 << 64);
            price = invertPrice ? FullMath.mulDiv(1 << 128, WAD, ratioX128) : FullMath.mulDiv(ratioX128, WAD, 1 << 128);
        }

        // Adjust for token decimal differences
        // The raw price is in token1_raw_units / token0_raw_units
        // We need to normalize to a common scale
        if (!invertPrice) {
            // price is token1/token0 raw. Adjust decimals: price * 10^baseDecimals / 10^quoteDecimals
            if (baseDecimals > quoteDecimals) {
                priceWad = price / (10 ** (baseDecimals - quoteDecimals));
            } else if (quoteDecimals > baseDecimals) {
                priceWad = price * (10 ** (quoteDecimals - baseDecimals));
            } else {
                priceWad = price;
            }
        } else {
            // price is token0/token1 raw. Adjust opposite direction.
            if (quoteDecimals > baseDecimals) {
                priceWad = price / (10 ** (quoteDecimals - baseDecimals));
            } else if (baseDecimals > quoteDecimals) {
                priceWad = price * (10 ** (baseDecimals - quoteDecimals));
            } else {
                priceWad = price;
            }
        }
    }

    /// @dev Compute the arithmetic mean tick over a TWAP window.
    function _getAverageTick(address pool, uint32 twapWindow) private view returns (int24) {
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = twapWindow;
        secondsAgos[1] = 0;

        (int56[] memory tickCumulatives,) = IUniswapV3Pool(pool).observe(secondsAgos);

        int56 tickDelta = tickCumulatives[1] - tickCumulatives[0];
        int24 avgTick = int24(tickDelta / int56(int32(twapWindow)));

        // Round towards negative infinity (match Uniswap convention)
        if (tickDelta < 0 && (tickDelta % int56(int32(twapWindow)) != 0)) {
            avgTick--;
        }

        return avgTick;
    }
}
