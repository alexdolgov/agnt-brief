// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "./IUniswapV3.sol";

interface IUniswapV3Getter is IUniswapV3 {
  function getAmountGivenIn(
    ExactInputSingleParams calldata params
  ) external view returns (uint256);

  function getAmountGivenOut(
    ExactOutputSingleParams calldata params
  ) external view returns (uint256);
}
