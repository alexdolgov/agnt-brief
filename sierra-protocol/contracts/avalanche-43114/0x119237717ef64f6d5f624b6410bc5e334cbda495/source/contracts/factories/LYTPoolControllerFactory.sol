//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "../controllers/LYTPoolController.sol";
import "../interfaces/ILYTPoolServiceConfiguration.sol";
import "./interfaces/ILYTPoolControllerFactory.sol";
import "../upgrades/BeaconProxyFactory.sol";
import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

/**
 * @title A factory that emits PoolController contracts.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */
contract LYTPoolControllerFactory is ILYTPoolControllerFactory, BeaconProxyFactory {
  /**
   * @dev Constructor
   * @param serviceConfiguration Reference to the global service configuration.
   */
  constructor(address serviceConfiguration) {
    _serviceConfiguration = ILYTPoolServiceConfiguration(serviceConfiguration);
  }

  /**
   * @inheritdoc ILYTPoolControllerFactory
   */
  function createController(
    address pool,
    address serviceConfiguration,
    address admin,
    ILYTPoolConfigurableSettings memory poolSettings
  ) public virtual returns (address addr) {
    require(_serviceConfiguration.paused() == false, "PoolControllerFactory: Protocol paused");
    require(implementation != address(0), "PoolControllerFactory: no impl");
    require(admin != address(0), "admin no impl");
    require(
      serviceConfiguration == address(_serviceConfiguration),
      "PoolControllerFactory: Invalid serviceConfiguration"
    );

    BeaconProxy proxy = new BeaconProxy(
      address(this),
      abi.encodeWithSelector(LYTPoolController.initialize.selector, pool, serviceConfiguration, admin, poolSettings)
    );
    addr = address(proxy);
    emit PoolControllerCreated(addr, admin);
  }
}