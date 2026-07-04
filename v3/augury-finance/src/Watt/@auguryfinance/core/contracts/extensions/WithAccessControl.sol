// SPDX-License-Identifier: BUSL1

pragma solidity ^0.8.0;

import "../IAccessControl.sol";

contract WithAccessControl {

  IAccessControl public access;

  constructor(IAccessControl initialAccess) {
    access = initialAccess;
  }

  modifier root() {
    require(access.isRoot(msg.sender), "expected requestor to be root");
    _;
  }

  modifier permission(uint256 required) {
    require(access.isRoot(msg.sender) || access.isPermitted(msg.sender, required), "expected requestor to have permission");
    _;
  }
}
