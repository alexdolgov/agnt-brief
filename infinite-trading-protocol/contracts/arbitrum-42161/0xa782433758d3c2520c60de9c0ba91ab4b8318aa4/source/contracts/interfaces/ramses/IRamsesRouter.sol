// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;

interface IRamsesRouter {
  function pairFor(
    address tokenA,
    address tokenB,
    bool stable
  ) external view returns (address pair);
}
