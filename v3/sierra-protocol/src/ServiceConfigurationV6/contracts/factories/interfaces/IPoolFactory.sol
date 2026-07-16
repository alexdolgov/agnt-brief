//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../interfaces/IPool.sol";

/**
 * @title Interface for the PoolFactory.
 */
interface IPoolFactory {
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
    IPoolConfigurableSettings calldata,
    string calldata,
    string calldata
  ) external returns (address);

  function getPoolControllerFactory() external view returns (address);

  function getWithdrawControllerFactory() external view returns (address);

  function getVaultFactory() external view returns (address);

  function getPoolAccessControlFactory() external view returns (address);

  function version() external pure returns (uint16);
}
