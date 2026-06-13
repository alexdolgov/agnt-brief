// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

interface IListaCDPPool {
  function token() external view returns (address);
  function exchangeRate() external view returns (uint256);
  function RATE_DENOMINATOR() external view returns (uint256);

  function userLp(address user) external view returns (uint256);
  function userLpRate() external view returns (uint256);
  function delegation(address user) external view returns (address, uint256);

  function provide(uint256 amount) external returns (uint256);
  function provide(uint256 amount, address delegateTo) external returns (uint256);
  function delegateAllTo(address newDelegateTo) external;

  function release(address recipient, uint256 amount) external returns (uint256);
}
