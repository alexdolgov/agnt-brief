//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../interfaces/IPoolDynamicStructures.sol";

/**
 * @title Interface for the PoolController factory.
 */
interface IPoolControllerFactoryDynamic {
  /**
   * @dev Emitted when a pool is created.
   */
  event PoolControllerCreated(address indexed pool, address indexed addr);

  /**
   * @dev Creates a pool's PoolAdmin controller
   * @dev Emits `PoolControllerCreated` event.
   */
  function createController(
    address pool,
    address serviceConfiguration,
    address admin,
    IPoolConfigurableSettingsDynamic memory poolSettings
  ) external returns (address);
}
