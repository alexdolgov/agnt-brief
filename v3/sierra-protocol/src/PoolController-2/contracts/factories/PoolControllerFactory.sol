//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../controllers/PoolController.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "../factories/interfaces/IPoolControllerFactory.sol";
import "../upgrades/BeaconProxyFactory.sol";
import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

/**
 * @title A factory that emits PoolController contracts.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */
contract PoolControllerFactory is IPoolControllerFactory, BeaconProxyFactory {
  /**
   * @dev Constructor
   * @param serviceConfiguration Reference to the global service configuration.
   */
  constructor(address serviceConfiguration) {
    _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration);
  }

  /**
   * @inheritdoc IPoolControllerFactory
   */
  function createController(
    address pool,
    address serviceConfiguration,
    address admin,
    address liquidityAsset,
    IPoolConfigurableSettings memory poolSettings
  ) public virtual returns (address addr) {
    require(_serviceConfiguration.paused() == false, "PoolControllerFactory: Protocol paused");
    require(implementation != address(0), "PoolControllerFactory: no impl");

    BeaconProxy proxy = new BeaconProxy(
      address(this),
      abi.encodeWithSelector(
        PoolController.initialize.selector,
        pool,
        serviceConfiguration,
        admin,
        liquidityAsset,
        poolSettings
      )
    );
    addr = address(proxy);
    emit PoolControllerCreated(addr, admin);
  }
}
