// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

interface ISwapperUtils {

  function priceCondition(address tokenIn, address tokenOut, uint256 priceOutOverIn) external view returns(bool);
  function priceView(address tokenIn, address tokenOut) external view returns(uint256);
}