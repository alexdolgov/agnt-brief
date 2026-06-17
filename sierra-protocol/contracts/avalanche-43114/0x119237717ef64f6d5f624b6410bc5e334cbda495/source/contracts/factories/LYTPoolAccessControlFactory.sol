//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./interfaces/ILYTPoolAccessControlFactory.sol";
import "../interfaces/ILYTPoolServiceConfiguration.sol";
// import "../factories/LoanFactory.sol";
import "../LYTPoolAccessControl.sol";
import "../upgrades/BeaconProxyFactory.sol";
import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

/**
 * @title LYTPoolAccessControlFactory
 * @dev Allows permissioning of pool participants through trusted verifications of
 */
contract LYTPoolAccessControlFactory is ILYTPoolAccessControlFactory, BeaconProxyFactory {
  /**
   * @dev Constructor
   * @param serviceConfiguration Reference to the permissioned version
   * of the service configuration.
   */
  constructor(address serviceConfiguration) {
    _serviceConfiguration = ILYTPoolServiceConfiguration(serviceConfiguration);
  }

  /**
   * @inheritdoc ILYTPoolAccessControlFactory
   */
  function create(address pool) external virtual override returns (address) {
    require(_serviceConfiguration.paused() == false, "LYTPoolAccessControlFactory: Protocol paused");
    require(implementation != address(0), "LYTPoolAccessControlFactory: no impl");
    BeaconProxy proxy = new BeaconProxy(
      address(this),
      abi.encodeWithSelector(LYTPoolAccessControl.initialize.selector, pool)
    );
    return address(proxy);
  }
}
