//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../../interfaces/IPoolFlexStructures.sol";

/**
 * @title Interface for the PoolController factory.
 */
interface IPoolControllerFactoryFlex {
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
    IPoolConfigurableSettingsFlex memory poolSettings
  ) external returns (address);
}
