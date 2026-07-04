// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

interface IGudPartnerPool {

  event Deposit(address indexed user, uint256 indexed amount);
  event Withdraw(address indexed user, uint256 indexed amount);

  function deposit(uint256 amount) external;
  function withdraw(uint256 amount) external;
  function totalDeposit() external view returns(uint256);
  function balanceOf(address user) external view returns(uint256);
}