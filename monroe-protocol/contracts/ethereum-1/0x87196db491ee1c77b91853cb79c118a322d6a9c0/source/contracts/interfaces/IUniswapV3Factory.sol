// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/// @notice Single Uniswap v3 factory function needed
interface IUniswapV3Factory {
  function getPool(address tokenA, address tokenB, uint24 fee) external view returns (address pool);
}