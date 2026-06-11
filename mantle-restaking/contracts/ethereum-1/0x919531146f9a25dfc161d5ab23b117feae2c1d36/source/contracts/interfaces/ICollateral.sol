/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

interface ICollateral {

  function totalDebt() external view returns (uint256);
  
  function deposit(address recipient, uint256 amount) external returns (uint256);
  
  function withdraw(address recipient, uint256 amount) external;

  function limit() external view returns (uint256);
  
  function totalSupply() external view returns (uint256);
  
}
