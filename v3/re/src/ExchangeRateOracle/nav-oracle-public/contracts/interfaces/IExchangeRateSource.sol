// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

interface IExchangeRateSource {
  function getSharePrice() external view returns (uint256);
}