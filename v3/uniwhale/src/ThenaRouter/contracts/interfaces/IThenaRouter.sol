// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

interface IThenaRouter {
  struct route {
    address from;
    address to;
    bool stable;
  }

  function getAmountOut(
    uint amountIn,
    address tokenIn,
    address tokenOut
  ) external view returns (uint amount, bool stable);

  function swapExactTokensForTokens(
    uint amountIn,
    uint amountOutMin,
    route[] calldata routes,
    address to,
    uint deadline
  ) external returns (uint[] memory amounts);
}
