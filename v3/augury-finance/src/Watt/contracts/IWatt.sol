// SPDX-License-Identifier: BUSL1

pragma solidity ^0.8.0;

interface IWatt {
  function mint(uint256 amount) external returns (uint256);
  function mintTo(uint256 amount, address to) external returns (uint256);
  function burn(uint256 amount) external returns (uint256);
}
