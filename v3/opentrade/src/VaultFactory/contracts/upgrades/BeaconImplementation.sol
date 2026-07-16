//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @title BeaconImplementation base contract
 * @dev Base contract that overrides the constructor to disable initialization.
 */
abstract contract BeaconImplementation is Initializable {
  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }
}
