// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";

/**
 * @title RizeAccessList
 * @author michael.duchesne@t-rize.io
 * @notice 
 * 
 * Contains addresses of system contracts and roles
 * 
 */
interface IAccessList is IAccessControl {
  function setRoleAdmin(bytes32 role, bytes32 admin) external;
  function isCommittee(address addrezz) external view returns(bool);
  function isBridge(address addrezz) external view returns(bool);
  function getBonds() external view returns(address);
  function getToken() external view returns(address);
  function getGovernanceBonding() external view returns(address);
  function getTreasury() external view returns(address);
}