//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../controllers/WithdrawController.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "./interfaces/IWithdrawControllerFactory.sol";
import "../upgrades/BeaconProxyFactory.sol";
import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

/**
 * @title Factory that emits WithdrawControllers.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */
contract WithdrawControllerFactory is IWithdrawControllerFactory, BeaconProxyFactory {
  /**
   * @dev Constructor
   * @param serviceConfiguration Reference to the global service configuration.
   */
  constructor(address serviceConfiguration) {
    _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration);
  }

  /**
   * @inheritdoc IWithdrawControllerFactory
   */
  function createController(
    address pool,
    address vaultFactory,
    address borrowerWalletAddress
  ) public virtual returns (address addr) {
    require(_serviceConfiguration.paused() == false, "WithdrawControllerFactory: Protocol paused");
    require(implementation != address(0), "WithdrawControllerFactory: no impl");

    BeaconProxy proxy = new BeaconProxy(
      address(this),
      abi.encodeWithSelector(WithdrawController.initialize.selector, pool, vaultFactory, borrowerWalletAddress)
    );

    addr = address(proxy);
    emit WithdrawControllerCreated(addr);
  }
}
