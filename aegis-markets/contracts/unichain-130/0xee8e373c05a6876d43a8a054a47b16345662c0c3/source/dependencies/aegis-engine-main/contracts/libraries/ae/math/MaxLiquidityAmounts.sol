// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { SqrtPriceMath } from "@uniswap/v4-core/src/libraries/SqrtPriceMath.sol";

/// @notice Utility library for calculating maximum token amounts across a concentrated liquidity price range.
/// @dev Wrapper around Uniswap V4's SqrtPriceMath for full-range position calculations.
library MaxLiquidityAmounts {
  /// @notice Calculate maximum token amounts required for a given liquidity across a price range.
  /// @dev Returns the maximum amount of each token needed when price moves across the full range:
  ///      - maxAmount0: Maximum token0 (when price is at/below lower bound, position is 100% token0)
  ///      - maxAmount1: Maximum token1 (when price is at/above upper bound, position is 100% token1)
  ///      Used for calculating range constants in collateral floor calculations and limit order sizing.
  /// @param sqrtPriceLowerX96 Lower sqrt price bound (Q64.96 format)
  /// @param sqrtPriceUpperX96 Upper sqrt price bound (Q64.96 format)
  /// @param liquidity The liquidity amount
  /// @param roundUp Whether to round up (true) or down (false) - use false for conservative collateral calculations
  /// @return maxAmount0 Maximum amount of token0 across the full range
  /// @return maxAmount1 Maximum amount of token1 across the full range
  function getMaxAmountsForLiquidity(
    uint160 sqrtPriceLowerX96,
    uint160 sqrtPriceUpperX96,
    uint128 liquidity,
    bool roundUp
  ) internal pure returns (uint256 maxAmount0, uint256 maxAmount1) {
    maxAmount0 = SqrtPriceMath.getAmount0Delta(sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity, roundUp);
    maxAmount1 = SqrtPriceMath.getAmount1Delta(sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity, roundUp);
  }
}
