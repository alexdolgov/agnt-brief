// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../v3-core/libraries/TickMath.sol";
import "../v3-core/libraries/FullMath.sol";

library LiquidityMath {
    uint256 constant ONE_X64 = 1 << 64;

    
    /// @notice Convert sqrt price X96 to decimal price (1e18)
    /// @param sqrtPriceX96 Square root price with 96 bits precision
    /// @return price Price with 18 decimals
    function sqrtPriceX96ToPrice(uint160 sqrtPriceX96) internal pure returns (uint256) {
        return uint256(sqrtPriceX96) * uint256(sqrtPriceX96) * 1e18 >> (96 * 2);
    }

    /// @notice Convert decimal price (1e18) to sqrtPriceX96
    /// @param price Price with 18 decimals
    /// @return sqrtPriceX96 Square root price with 96 bits precision
    function priceToSqrtPriceX96(uint256 price) internal pure returns (uint160) {
        // price * 2^192 = sqrtPriceX96^2
        // sqrtPriceX96 = sqrt(price * 2^192 / 1e18)
        uint256 shiftedPrice = price << 192;  // price * 2^192
        shiftedPrice = shiftedPrice / 1e18;   // Adjust for decimals
        
        // Calculate square root
        uint256 z = (shiftedPrice + 1) / 2;
        uint256 y = shiftedPrice;
        while (z < y) {
            y = z;
            z = (shiftedPrice / z + z) / 2;
        }
        
        return uint160(y);
    }


    function sqrtPriceX96ToPriceX96(uint160 sqrtPriceX96) internal pure returns (uint160) {
        return uint160(uint256(sqrtPriceX96) * uint256(sqrtPriceX96) >> 96);
    }

    function priceX96ToSqrtPriceX96(uint160 priceX96) internal pure returns (uint160) {
        uint256 shiftedPrice = uint256(priceX96) << 96;
        uint256 z = (shiftedPrice + 1) / 2;
        uint256 y = shiftedPrice;
        while (z < y) {
            y = z;
            z = (shiftedPrice / z + z) / 2;
        }
        
        return uint160(y);
    }   

    /// @notice Calculate liquidity amount from maximum quote token amount
    /// @param quoteAmountMax Maximum amount of quote token to provide
    /// @param lowerTickIndex Lower tick of the position
    /// @param upperTickIndex Upper tick of the position
    /// @return liquidity The calculated liquidity amount based on quote token
    function calculateLiquidityFromQuoteMax(
        uint256 quoteAmountMax,
        int24 lowerTickIndex,
        int24 upperTickIndex
    ) internal pure returns (uint128) {
        require(upperTickIndex > lowerTickIndex, "Invalid price range");
        uint160 lowerSqrtPrice = TickMath.getSqrtRatioAtTick(lowerTickIndex);
        uint160 upperSqrtPrice = TickMath.getSqrtRatioAtTick(upperTickIndex);
        uint256 liquidity = (quoteAmountMax << 96) /(upperSqrtPrice - lowerSqrtPrice);
        require(liquidity <= type(uint128).max, "Liquidity overflow");
        return uint128(liquidity);
    }

    /// @notice Calculates liquidity amount from maximum base token amount
    /// @param baseAmountMax Maximum amount of base token
    /// @param lowerTickIndex Lower tick of the position
    /// @param upperTickIndex Upper tick of the position
    /// @return liquidity The calculated liquidity amount
    function calculateLiquidityFromBaseMax(
        uint256 baseAmountMax,
        int24 lowerTickIndex,
        int24 upperTickIndex
    ) internal pure returns (uint128) {
        require(upperTickIndex > lowerTickIndex, "Invalid price range");
        uint160 lowerSqrtPrice = TickMath.getSqrtRatioAtTick(lowerTickIndex);
        uint160 upperSqrtPrice = TickMath.getSqrtRatioAtTick(upperTickIndex);

        uint256 numerator = (uint256(lowerSqrtPrice) * uint256(upperSqrtPrice)) >> 96;
        uint256 denominator = upperSqrtPrice - lowerSqrtPrice;

        uint256 liquidity = baseAmountMax * numerator / denominator;
        require(liquidity <= type(uint128).max, "Liquidity overflow");
        return uint128(liquidity);
    }

    /// @notice Calculate maximum quote token amount based on current price and active ratio coefficient
    /// @dev Formula: quoteMax = amount * currentPrice * activeRatioCoef
    /// @param curSqrtPriceX96 Current square root price in X96 format
    /// @param amount Base token amount
    /// @param activeRatioCoef Active ratio coefficient (1e18 = 1.0)
    /// @return quoteMax Maximum quote token amount that can be used
    function calculateQuoteMax(
        uint128 curSqrtPriceX96,
        uint256 amount,
        uint256 activeRatioCoef
    ) internal pure returns (uint128) {
        int256 curPriceX96 = (int256(uint256(curSqrtPriceX96)) ** 2) >> 96;
        int256 curPrice = (curPriceX96 * 1e18) >> 96;
        uint128 quoteMax = uint128(uint256(curPrice)) * uint128(amount) / 1e18 * uint128(activeRatioCoef) / 1e18;
        return quoteMax;
    }

    function maxSqrtPrice(uint256 activeRatioCoef) internal pure returns (uint160) {
        uint256 priceMax = 1e36 / activeRatioCoef;
        return priceToSqrtPriceX96(priceMax);
    }

} 