//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../controllers/PoolControllerDynamic.sol";
import "../interfaces/IServiceConfigurationV5.sol";
import "../factories/interfaces/IPoolControllerFactoryDynamic.sol";
import "../upgrades/BeaconProxyFactory.sol";
import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

/**
 * @title A factory that emits PoolController contracts.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */
contract PoolControllerFactoryDynamic is IPoolControllerFactoryDynamic, BeaconProxyFactory {
  /**
   * @dev Constructor
   * @param serviceConfiguration Reference to the global service configuration.
   */
  constructor(address serviceConfiguration) {
    _serviceConfiguration = IServiceConfigurationV5(serviceConfiguration);
  }

  function version() public pure returns (uint16) {
    return 256 * 1 + 0;
  }

  /**
   * @inheritdoc IPoolControllerFactoryDynamic
   */
  function createController(
    address pool,
    address serviceConfiguration,
    address admin,
    IPoolConfigurableSettingsDynamic memory poolSettings
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
      abi.encodeWithSelector(PoolControllerDynamic.initialize.selector, pool, serviceConfiguration, admin, poolSettings)
    );
    addr = address(proxy);
    emit PoolControllerCreated(addr, admin);
  }
}
