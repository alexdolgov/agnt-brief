// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.30;

import {IERC20} from "contracts/interface/IERC20.sol";

/**
 * @title CamelotLibrary
 * @notice Library containing helper functions for Camelot DEX calculations
 * @dev Implements stable swap math including Newton's method for curve calculations
 */
library CamelotLibrary {
    uint256 public constant FEE_DENOMINATOR = 100000;
    
    /**
     * @notice Calculates the stable swap invariant k
     * @dev For stable swaps: k = xy(x²+y²) where x and y are normalized
     * For non-stable swaps: k = xy
     * @param balance0 Balance of token0
     * @param balance1 Balance of token1
     * @param precisionMultiplier0 Precision multiplier for token0 (10^decimals)
     * @param precisionMultiplier1 Precision multiplier for token1 (10^decimals)
     * @param stableSwap Whether this is a stable swap pair
     * @return k The invariant value
     */
    function k(
        uint256 balance0,
        uint256 balance1,
        uint256 precisionMultiplier0,
        uint256 precisionMultiplier1,
        bool stableSwap
    ) internal pure returns (uint256) {
        if (stableSwap) {
            uint256 _x = balance0 * 1e18 / precisionMultiplier0;
            uint256 _y = balance1 * 1e18 / precisionMultiplier1;
            uint256 _a = (_x * _y) / 1e18;
            uint256 _b = (_x * _x / 1e18) + (_y * _y / 1e18);
            return _a * _b / 1e18; // x³y + y³x >= k
        }
        return balance0 * balance1;
    }

    /**
     * @notice Helper function for stable swap calculations
     * @dev Calculates x³y + y³x
     * @param x0 The x value
     * @param y The y value
     * @return The function value
     */
    function f(uint256 x0, uint256 y) internal pure returns (uint256) {
        return x0 * (y * y / 1e18 * y / 1e18) / 1e18 + (x0 * x0 / 1e18 * x0 / 1e18) * y / 1e18;
    }

    /**
     * @notice Helper function for stable swap calculations
     * @dev Calculates derivative: 3x²y + x³
     * @param x0 The x value
     * @param y The y value
     * @return The derivative value
     */
    function d(uint256 x0, uint256 y) internal pure returns (uint256) {
        return 3 * x0 * (y * y / 1e18) / 1e18 + (x0 * x0 / 1e18 * x0 / 1e18);
    }

    /**
     * @notice Solves for y in stable swap equation using Newton's method
     * @dev Iteratively finds y such that f(x0, y) = xy
     * @param x0 The x value after swap
     * @param xy The target invariant
     * @param y Initial guess for y
     * @return The calculated y value
     */
    function get_y(uint256 x0, uint256 xy, uint256 y) internal pure returns (uint256) {
        for (uint256 i = 0; i < 255; i++) {
            uint256 y_prev = y;
            uint256 _k = f(x0, y);
            if (_k < xy) {
                uint256 dy = (xy - _k) * 1e18 / d(x0, y);
                y = y + dy;
            } else {
                uint256 dy = (_k - xy) * 1e18 / d(x0, y);
                y = y - dy;
            }
            if (y > y_prev) {
                if (y - y_prev <= 1) {
                    return y;
                }
            } else {
                if (y_prev - y <= 1) {
                    return y;
                }
            }
        }
        return y;
    }

    /**
     * @notice Calculates amount in for exact output following CamelotPair pattern
     * @dev Implements the complete logic from CamelotPair._getAmountIn for both stable and non-stable swaps
     * @param amountOut Desired output amount
     * @param tokenOut Output token address
     * @param reserve0 Reserve of token0
     * @param reserve1 Reserve of token1
     * @param token0 Address of token0
     * @param token1 Address of token1
     * @param feePercent Fee percentage (e.g., 500 = 0.5%)
     * @param stableSwap Whether this is a stable swap pair
     * @return amountIn Required input amount including fees
     */
    function getAmountIn(
        uint256 amountOut,
        address tokenOut,
        uint256 reserve0,
        uint256 reserve1,
        address token0,
        address token1,
        uint256 feePercent,
        bool stableSwap
    ) internal view returns (uint256) {
        require(amountOut > 0, "CamelotLibrary: INSUFFICIENT_OUTPUT_AMOUNT");
        
        if (stableSwap) {
            // Get precision multipliers from token decimals
            uint256 precisionMultiplier0 = 10 ** uint256(IERC20(token0).decimals());
            uint256 precisionMultiplier1 = 10 ** uint256(IERC20(token1).decimals());
            
            uint256 xy = k(reserve0, reserve1, precisionMultiplier0, precisionMultiplier1, true);
            uint256 _reserve0 = reserve0 * 1e18 / precisionMultiplier0;
            uint256 _reserve1 = reserve1 * 1e18 / precisionMultiplier1;

            (uint256 reserveA, uint256 reserveB) = tokenOut == token1 ? (_reserve0, _reserve1) : (_reserve1, _reserve0);
            amountOut = tokenOut == token1 ? amountOut * 1e18 / precisionMultiplier1 : amountOut * 1e18 / precisionMultiplier0;
            
            uint256 y = get_y(reserveA, xy, reserveB - amountOut) - reserveA;
            uint256 amountIn = y * (tokenOut == token1 ? precisionMultiplier0 : precisionMultiplier1) / 1e18;
            return amountIn + (amountIn * feePercent / FEE_DENOMINATOR); // add fee to amount sent
        } else {
            // Non-stable swap calculation
            (uint256 reserveA, uint256 reserveB) = tokenOut == token1 ? (reserve0, reserve1) : (reserve1, reserve0);
            require(reserveA > 0 && reserveB > amountOut, "CamelotLibrary: INSUFFICIENT_LIQUIDITY");
            
            uint256 numerator = reserveA * amountOut * FEE_DENOMINATOR;
            uint256 denominator = (reserveB - amountOut) * (FEE_DENOMINATOR - feePercent);
            return (numerator / denominator) + 1; // add 1 to round up
        }
    }
}