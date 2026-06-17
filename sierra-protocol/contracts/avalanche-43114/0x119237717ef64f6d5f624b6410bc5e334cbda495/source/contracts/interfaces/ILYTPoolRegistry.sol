//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title The interface for interacting with Terms of Service Acceptance Registry.
 */
interface ILYTPoolRegistry {
  function addPool(address pool) external;

  function pools() external returns (address[] memory);

  function isPoolRegistered(address poolAddr) external view returns (bool);
}
