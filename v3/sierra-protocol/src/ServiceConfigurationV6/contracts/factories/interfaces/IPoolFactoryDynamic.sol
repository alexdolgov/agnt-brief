//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../interfaces/IPoolDynamic.sol";

/**
 * @title Interface for the PoolFactory.
 */
interface IPoolFactoryDynamic {
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
    IPoolConfigurableSettingsDynamic calldata,
    string calldata,
    string calldata
  ) external returns (address);

  function getPoolControllerFactoryDynamic() external view returns (address);

  function getPoolAccessControlFactory() external view returns (address);
}
