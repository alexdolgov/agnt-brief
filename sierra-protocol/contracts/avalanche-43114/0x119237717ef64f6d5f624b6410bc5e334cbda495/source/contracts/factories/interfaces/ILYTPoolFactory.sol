//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../interfaces/ILYTPool.sol";

/**
 * @title Interface for the LYTPoolFactory.
 */
interface ILYTPoolFactory {
  /**
   * @dev Emitted when a pool is created.
   */
  event PoolCreated(address indexed addr);

  /**
   * @dev Creates a Pool.
   * @dev Emits `PoolCreated` event.
   */
  function createPool(
    address,
    ILYTPoolConfigurableSettings calldata,
    string calldata,
    string calldata
  ) external returns (address);

  function getLYTPoolControllerFactory() external view returns (address);

  function getLYTPoolAccessControlFactory() external view returns (address);
}
