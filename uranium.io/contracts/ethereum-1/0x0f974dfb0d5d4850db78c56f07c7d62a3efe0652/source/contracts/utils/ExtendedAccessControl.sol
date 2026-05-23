// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';

abstract contract ExtendedAccessControl is Initializable, AccessControlUpgradeable {
  // Batch grant a role to multiple accounts
  function batchGrantRole(bytes32 role, address[] calldata accounts) public onlyRole(getRoleAdmin(role)) {
    for (uint256 i = 0; i < accounts.length; ++i) {
      _grantRole(role, accounts[i]);
    }
  }

  // Batch revoke a role from multiple accounts
  function batchRevokeRole(bytes32 role, address[] calldata accounts) public onlyRole(getRoleAdmin(role)) {
    for (uint256 i = 0; i < accounts.length; ++i) {
      _revokeRole(role, accounts[i]);
    }
  }
}
