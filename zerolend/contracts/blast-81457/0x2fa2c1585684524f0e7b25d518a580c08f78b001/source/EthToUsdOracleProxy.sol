/**
 *Submitted for verification at lineascan.build/ on 2024-04-24
*/

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

interface AggregatorInterface {
  function decimals() external view returns(uint8);
  function latestAnswer() external view returns (int256);
}

contract EthToUsdOracleProxy {
  AggregatorInterface immutable ETH_TO_USD_FEED;
  AggregatorInterface immutable EZ_ETH_TO_ETH_FEED;

  error ZeroAddressNotAllowed();
  error InvalidOraclePrice();

  constructor() {
    ETH_TO_USD_FEED = AggregatorInterface(0x0af23B08bcd8AD35D1e8e8f2D2B779024Bd8D24A);
    EZ_ETH_TO_ETH_FEED = AggregatorInterface(0xcD96262Df56127f298b452FA40759632868A472a);
  }

  function latestAnswer() external view returns (int256 ezEthToUsd) {
    int256 ethToUsd = ETH_TO_USD_FEED.latestAnswer();
    int256 ezEthToEth = EZ_ETH_TO_ETH_FEED.latestAnswer();

    if (ethToUsd < 0 || ezEthToEth < 0) revert InvalidOraclePrice();

    ezEthToUsd = (ethToUsd * ezEthToEth) / int256(10 ** EZ_ETH_TO_ETH_FEED.decimals());
  }
}