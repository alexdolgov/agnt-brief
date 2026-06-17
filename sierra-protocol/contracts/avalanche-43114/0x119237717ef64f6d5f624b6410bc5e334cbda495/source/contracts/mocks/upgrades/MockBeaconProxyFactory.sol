//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../upgrades/BeaconProxyFactory.sol";
import "../../interfaces/ILYTPoolServiceConfiguration.sol";
import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "./MockBeaconImplementation.sol";

contract MockBeaconProxyFactory is BeaconProxyFactory {
  event Created(address proxy);

  constructor(address serviceConfig) {
    _serviceConfiguration = ILYTPoolServiceConfiguration(serviceConfig);
  }

  function create() external returns (address) {
    BeaconProxy proxy = new BeaconProxy(
      address(this),
      abi.encodeWithSelector(MockBeaconImplementation.initialize.selector)
    );
    emit Created(address(proxy));
    return address(proxy);
  }
}
