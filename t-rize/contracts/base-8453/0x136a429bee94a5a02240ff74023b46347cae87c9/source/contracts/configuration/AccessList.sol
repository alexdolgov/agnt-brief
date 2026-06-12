// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

//solhint
import {AccessControlDefaultAdminRules } from "@openzeppelin/contracts/access/extensions/AccessControlDefaultAdminRules.sol"; // solhint-disable-line 

import { IAccessList } from "contracts/interfaces/IAccessList.sol";

/**
 * @title RizeAccessList
 * @author michael.duchesne@t-rize.io
 * @notice 
 * 
 * Contains addresses of system contracts and roles
 * 
 * The committee address holds a lot of power and should be a 
 * strong multi-signature wallet
 */
contract AccessList is AccessControlDefaultAdminRules, IAccessList {

  bytes32 public constant BRIDGE_ROLE = keccak256("BRIDGE");

  address private _governanceBonding;
  address private _bonds;
  address private _token;
  address private _treasury;

  event GovernanceBondingUpdated(address old, address newGov);
  event BondsUpdated(address old, address newBonds);
  event TokenUpdated(address old, address newToken);
  event TreasuryUpdated(address old, address newTreasury);

  error CannotBeZeroAddress();

  modifier onlyCommittee() {
    _checkRole(COMMITTEE_ROLE());
    _;
  }

  constructor(address committee) AccessControlDefaultAdminRules(3 days, committee) {
    _treasury = committee; // avoid sending funds to zero address
  }

  function setRoleAdmin(bytes32 role, bytes32 admin) public onlyCommittee {
    _setRoleAdmin(role, admin);
  }

  function setGovernanceBonding(address governance) public onlyCommittee {
    if(governance == address(0)) {
      revert CannotBeZeroAddress();
    }
    emit GovernanceBondingUpdated(_governanceBonding, governance);
    _governanceBonding = governance;
  }

  function setBonds(address bonds) public onlyCommittee {
    if(bonds == address(0)) {
      revert CannotBeZeroAddress();
    }
    emit BondsUpdated(_bonds, bonds);
    _bonds = bonds;
  }

  function setToken(address token) public onlyCommittee {
    if(token == address(0)) {
      revert CannotBeZeroAddress();
    }
    emit TokenUpdated(_token, token);
    _token = token;
  }

  function setTreasury(address treasury) public onlyCommittee {
    if(treasury == address(0)) {
      revert CannotBeZeroAddress();
    }
    emit TreasuryUpdated(_treasury, treasury);
    _treasury = treasury;
  }

  function isCommittee(address addrezz) public view returns (bool) {
    return hasRole(COMMITTEE_ROLE(), addrezz);
  }

  function isBridge(address addrezz) public view returns(bool) {
    return hasRole(BRIDGE_ROLE, addrezz);
  }

  function getGovernanceBonding() public view returns(address) {
    return _governanceBonding;
  }

  function getBonds() public view returns(address){
    return _bonds;
  }

  function getToken() public view returns(address) {
    return _token;
  }

  function getTreasury() public view returns(address) {
    return _treasury;
  }

  function COMMITTEE_ROLE() public pure returns (bytes32) { // solhint-disable-line 
    return DEFAULT_ADMIN_ROLE;
  }

}