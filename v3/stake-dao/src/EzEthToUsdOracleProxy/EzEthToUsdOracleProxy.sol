// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

interface AggregatorInterface {
  function decimals() external view returns(uint8);
  function latestAnswer() external view returns (int256);
}

contract EzEthToUsdOracleProxy {
  AggregatorInterface immutable ETH_TO_USD_FEED;
  AggregatorInterface immutable EZ_ETH_TO_ETH_FEED;

  error ZeroAddressNotAllowed();
  error InvalidOraclePrice();

  constructor() {
    ETH_TO_USD_FEED = AggregatorInterface(0x3c6Cd9Cc7c7a4c2Cf5a82734CD249D7D593354dA);
    EZ_ETH_TO_ETH_FEED = AggregatorInterface(0xB1d9A4Fe9331E28C5588B63343BF064A397aadB8);
  }

  function latestAnswer() external view returns (int256 ezEthToUsd) {
    int256 ethToUsd = ETH_TO_USD_FEED.latestAnswer();
    int256 ezEthToEth = EZ_ETH_TO_ETH_FEED.latestAnswer();

    if (ethToUsd < 0 || ezEthToEth < 0) revert InvalidOraclePrice();

    ezEthToUsd = (ethToUsd * ezEthToEth) / int256(10 ** EZ_ETH_TO_ETH_FEED.decimals());
  }
}