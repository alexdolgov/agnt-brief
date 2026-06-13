// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

interface IManager {
  function asset() external view returns (address);
  function deposit(uint256 amount) external;
  function withdraw(uint256 amount, address receiver) external;
  function totalBalance() external view returns (uint256);
}
