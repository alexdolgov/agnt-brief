// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

library PancakeLib {
  uint256 private constant E96 = 2 ** 96;
  uint256 private constant HALF_PRECISION = 1e9;

  function calculatePrice(uint256 sqrtPriceX96, bool reverse) internal pure returns (uint256 price) {
    if (reverse) {
      sqrtPriceX96 = (E96 * E96) / sqrtPriceX96;
    }

    price = (sqrtPriceX96 * HALF_PRECISION) / E96;
    price = (price * price);
  }

  function calculateSqrtX96(uint256 price, bool reverse) internal pure returns (uint256 sqrtPriceX96) {
    if (reverse) {
      sqrtPriceX96 = (E96 * E96) / price;
    } else {
      sqrtPriceX96 = (price * E96) / HALF_PRECISION;
    }
    return sqrtPriceX96;
  }
}
