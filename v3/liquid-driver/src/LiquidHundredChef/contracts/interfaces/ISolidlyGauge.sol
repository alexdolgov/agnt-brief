// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface ISolidlyGauge{
  function notifyRewardAmount(address token, uint amount) external;
  function getReward(address account, address[] memory tokens) external;
  function claimFees() external returns (uint claimed0, uint claimed1);
  function left(address token) external view returns (uint);
  function isForPair() external view returns (bool);
  function earned(address token, address account) external view returns (uint);
  function stake() external view returns (address);
  function depositAll(uint tokenId) external;
  function deposit(uint amount, uint tokenId) external;
  function withdrawAll() external;
  function withdraw(uint amount) external;
  function balanceOf(address) external view returns(uint256);
  function derivedBalances(address) external view returns(uint256);
  function derivedBalance(address) external view returns(uint256);
}