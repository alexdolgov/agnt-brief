// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../v3-core/libraries/TickMath.sol";
import "./PRBMathSD59x18.sol";
// import "forge-std/console.sol";

library RateMath {
    using PRBMathSD59x18 for int256;

    function getMaturity(uint256 startTimestamp, uint256 expireTimestamp) internal pure returns (uint256) {
        require(expireTimestamp > startTimestamp, "Invalid timestamps");
        return expireTimestamp - startTimestamp;
    }

    function calculateTickIndexFromImpliedRate(
        uint256 maturity,
        uint256 impliedRate,
        int24 tickSpacing,
        bool isLower
    ) internal pure returns (int24) {
        uint256 sqrtPrice = calculateSqrtPrice(maturity, impliedRate);
        int24 rawIndex = TickMath.getTickAtSqrtRatio(uint160(sqrtPrice) * (1 << 96) / 1e18); // Convert to X96
        return ceilOrFloorTickIndex(rawIndex, tickSpacing, isLower);
    }

    function calculateSqrtPrice(uint256 maturity, uint256 impliedRate) internal pure returns (uint256) {
        int256 exponent = int256(uint256(maturity)) * 1e18 / 31536000;
        int256 base = 1e18 + int256(uint256(impliedRate));
        int256 power = base.pow(exponent);
        int256 inverse = 1e18 * 1e18 / power;
        int256 price = 1e18 - inverse;
        int256 sqrtPrice = price.sqrt();
        
        return uint256(sqrtPrice);
    }

    function ceilOrFloorTickIndex(
        int24 tickIndex,
        int24 tickSpacing,
        bool isLower
    ) internal pure returns (int24) {
        if (isLower) {
            if (tickIndex % tickSpacing == 0 || tickIndex > 0) {
                return (tickIndex / tickSpacing) * tickSpacing;
            } else {
                return ((tickIndex / tickSpacing) - 1) * tickSpacing;
            }
        } else {
            if (tickIndex % tickSpacing == 0) {
                return tickIndex;
            } else {
                int24 temp = tickIndex > 0 ? int24(1) : int24(0);
                return ((tickIndex / tickSpacing) + temp) * tickSpacing;
            }
        }
    }

    function calculateImpliedRate(uint256 maturity, uint160 sqrtPriceX96) internal pure returns (uint256) {
        int256 exponent = (31536000 * 1e18) / int256(uint256(maturity));
        int256 priceX96 = (int256(uint256(sqrtPriceX96)) ** 2) >> 96;
        int256 price = (priceX96 * 1e18) >> 96;
        int256 base = 1e18 * 1e18 / (1e18 - price);
        int256 result = base.pow(exponent) - 1e18;
        return uint256(result);
    }


} 