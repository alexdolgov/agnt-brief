//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../upgrades/DeployerUUPSUpgradeable.sol";
import "../../interfaces/ILYTPoolServiceConfiguration.sol";

contract DeployerUUPSUpgradeableMock is DeployerUUPSUpgradeable {
  function foo() external pure virtual returns (string memory) {
    return "bar";
  }

  function initialize(address serviceConfiguration) public initializer {
    _serviceConfiguration = ILYTPoolServiceConfiguration(serviceConfiguration);
  }
}

contract DeployerUUPSUpgradeableMockV2 is DeployerUUPSUpgradeableMock {
  function foo() external pure override returns (string memory) {
    return "baz";
  }
}
