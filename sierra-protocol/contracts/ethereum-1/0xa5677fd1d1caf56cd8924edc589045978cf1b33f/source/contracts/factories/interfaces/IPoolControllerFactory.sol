//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../../interfaces/IPoolStructures.sol";

/**
 * @title Interface for the PoolController factory.
 */
interface IPoolControllerFactory {
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
    address liquidityAsset,
    IPoolConfigurableSettings memory poolSettings
  ) external returns (address);
}
