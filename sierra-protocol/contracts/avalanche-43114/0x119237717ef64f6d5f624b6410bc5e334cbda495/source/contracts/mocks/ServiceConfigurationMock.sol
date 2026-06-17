//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../LYTPoolServiceConfiguration.sol";
import "./MockUpgrade.sol";

/**
 * @dev Simulated new ServiceConfiguration implementation
 */
contract ServiceConfigurationMock is LYTPoolServiceConfiguration, MockUpgrade {}
