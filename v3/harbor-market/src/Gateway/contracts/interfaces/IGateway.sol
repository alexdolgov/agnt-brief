// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.8.0;

interface IGateway {
  function depositBNB(
    uint256 minUsdtAmountOut
  ) external payable;
}