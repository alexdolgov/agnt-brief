// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

interface IATM {
  function deposit() external payable;

  function borrow(uint256 amount) external;
}
