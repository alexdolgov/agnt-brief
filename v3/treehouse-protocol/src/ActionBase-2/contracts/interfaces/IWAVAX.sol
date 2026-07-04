// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

/// @dev https://snowtrace.io/token/0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7/contract/code?chainid=43114
interface IWAVAX {
  function deposit() external payable;

  function withdraw(uint wad) external;
}
