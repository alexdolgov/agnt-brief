//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title The interface for interacting with Terms of Service Acceptance Registry.
 */
interface IPoolRegistry {
  function version() external pure returns (uint16);

  function addPool(address pool) external;

  function pools() external returns (address[] memory);

  function updatePoolData(address poolAddr) external;

  function isPoolRegistered(address poolAddr) external view returns (bool);
}
