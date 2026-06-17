//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../upgrades/BeaconImplementation.sol";

contract MockBeaconImplementation is BeaconImplementation {
  function foo() external pure virtual returns (string memory) {
    return "bar";
  }

  function initialize() public initializer {}
}

contract MockBeaconImplementationV2 is MockBeaconImplementation {
  function foo() external pure override returns (string memory) {
    return "baz";
  }
}
