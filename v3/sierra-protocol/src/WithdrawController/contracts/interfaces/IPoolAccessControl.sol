//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title The interface for controlling access to Pools
 */
interface IPoolAccessControl {
  /**
   * @dev Check if an address is allowed as a participant in the pool
   * @param addr The address to verify
   * @return whether the address is allowed as a participant
   */
  function isAllowed(address addr) external view returns (bool);
}
