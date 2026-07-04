// SPDX-License-Identifier: BUSL1

pragma solidity ^0.8.0;

interface IAccessControl {
  function isRoot(address id) external view returns (bool);
  function isPermitted(address id, uint256 permission) external view returns (bool);
}
