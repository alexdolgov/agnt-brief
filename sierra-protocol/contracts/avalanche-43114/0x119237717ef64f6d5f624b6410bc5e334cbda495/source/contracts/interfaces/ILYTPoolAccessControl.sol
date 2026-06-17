//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title The interface for controlling access to Pools
 */
interface ILYTPoolAccessControl {
  /**
   * @dev Check if an address is allowed as a participant in the pool
   * @param addr The address to verify
   * @return whether the address is allowed as a participant
   */
  function isAllowed(address addr) external view returns (bool);
}
