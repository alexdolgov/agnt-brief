//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title An interface for a factory that creates PoolAccessControl contracts.
 */
interface IPoolAccessControlFactory {
  /**
   * @dev Creates a new PoolAccessControl.
   */
  function create(address pool) external returns (address);
}
