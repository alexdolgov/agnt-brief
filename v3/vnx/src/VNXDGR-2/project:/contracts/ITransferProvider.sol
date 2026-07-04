// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITransferProvider {
  event TransferApproved(address indexed from, address indexed to, uint256 value);
  event TransferDeclined(address indexed from, address indexed to, uint256 value);

  /* function approve transfer upon its own rules and return true or false */
  function approveTransfer(address from, address to, uint256 value, address spender) external returns(bool);

  /* function to inform provider about transfer on admin behalf to take it into providers account */
  function considerTransfer(address from, address to, uint256 value) external returns(bool);
}
