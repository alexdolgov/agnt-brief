//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title An interface for a factory that creates LYTPoolAccessControl contracts.
 */
interface ILYTPoolAccessControlFactory {
  /**
   * @dev Creates a new LYTPoolAccessControl.
   */
  function create(address pool) external returns (address);
}
