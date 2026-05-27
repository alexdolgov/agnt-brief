// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

interface IWrappedAgToken {

  function deposit(uint256 amount) external;

  function withdraw(uint256 amount) external;

  function flashLoanOpen(address _receiver, uint256 _amount) external;

  function flashLoanClose() external;

  function FeeRate() external view returns (uint256);

  function underlyingAgToken() external view returns (address);
}