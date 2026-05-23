// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

interface IOffPlanFactory{
  function isOffPlan(address _address) external view returns (bool);
  function getPointers() external view returns (address[] memory);
}
