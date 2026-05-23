// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import '../utils/ExtendedAccessControl.sol';

contract ConcreteAccessControl is ExtendedAccessControl {
  constructor() {
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }
}
