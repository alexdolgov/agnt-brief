// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

interface IPExchangeRateOracle {
  function getExchangeRate() external view returns (uint256);
}
