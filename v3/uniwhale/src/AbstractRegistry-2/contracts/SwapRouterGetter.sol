// SPDX-License-Identifier: GPL-2.0-or-later

import "./interfaces/AbstractSwapRouter.sol";
import "./interfaces/IUniswapV3Getter.sol";

pragma solidity ^0.8.17;
pragma abicoder v2;

contract SwapRouterGetter is AbstractSwapRouter {
  IUniswapV3Getter immutable uniswapV3Getter;

  constructor(
    address _owner,
    IUniswapV3Getter _uniswapV3Getter,
    AbstractRegistry _registry
  ) AbstractSwapRouter(_owner, _uniswapV3Getter, _registry) {
    uniswapV3Getter = _uniswapV3Getter;
  }

  function getAmountGivenOut(
    SwapGivenOutInput memory input
  ) external view override returns (uint256) {
    IUniswapV3.ExactOutputSingleParams memory params = IUniswapV3
      .ExactOutputSingleParams({
        tokenIn: input.tokenIn,
        tokenOut: input.tokenOut,
        fee: input.poolFee,
        recipient: msg.sender,
        deadline: block.timestamp,
        amountOut: input.amountOut /
          (10 ** (18 - ERC20(input.tokenOut).decimals())),
        amountInMaximum: input.amountInMaximum /
          (10 ** (18 - ERC20(input.tokenIn).decimals())),
        sqrtPriceLimitX96: 0
      });
    return uniswapV3Getter.getAmountGivenOut(params);
  }

  function getAmountGivenIn(
    SwapGivenInInput memory input
  ) external view override returns (uint256) {
    IUniswapV3.ExactInputSingleParams memory params = IUniswapV3
      .ExactInputSingleParams({
        tokenIn: input.tokenIn,
        tokenOut: input.tokenOut,
        fee: input.poolFee,
        recipient: msg.sender,
        deadline: block.timestamp,
        amountIn: input.amountIn /
          (10 ** (18 - ERC20(input.tokenIn).decimals())),
        amountOutMinimum: input.amountOutMinimum /
          (10 ** (18 - ERC20(input.tokenOut).decimals())),
        sqrtPriceLimitX96: 0
      });
    return uniswapV3Getter.getAmountGivenIn(params);
  }
}
