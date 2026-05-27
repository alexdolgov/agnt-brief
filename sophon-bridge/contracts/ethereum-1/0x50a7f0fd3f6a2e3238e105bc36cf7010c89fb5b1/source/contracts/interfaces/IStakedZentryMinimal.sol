// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IStakedZentryMinimal {
  function asset() external view returns (address);

  function deposit(uint256 _assets, address _receiver) external returns (uint256);
}
