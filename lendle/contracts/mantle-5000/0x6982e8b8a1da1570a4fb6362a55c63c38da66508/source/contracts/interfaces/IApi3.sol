// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;

interface IApi3Proxy {
  function read() external view returns (int224 value, uint32 timestamp);

  function api3ServerV1() external view returns (address);
}

interface IApi3AggregatorAdaptor {
  function getPrice() external view returns (int256 price, uint256 timestamp, uint32 decimals);
}