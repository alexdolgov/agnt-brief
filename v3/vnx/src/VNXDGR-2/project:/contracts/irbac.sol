/**
 * VNX Role Base Access Control Smart Contract
 * Updated:   17.07.2025
 * (c) Copyright by VNX S.A, Luxembourg.
 **/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IRBAC {
  event RoleCreated(uint256 role);
  event BearerAdded(address indexed account, uint256 role);
  event BearerRemoved(address indexed account, uint256 role);

  function addRootRole(string calldata roleDescription) external returns(uint256);
  function removeBearer(address account, uint256 role) external;
  function addRole(string calldata roleDescription, uint256 admin) external returns(uint256);
  function totalRoles() external view returns(uint256);
  function hasRole(address account, uint256 role) external view returns(bool);
  function addBearer(address account, uint256 role) external;
}
