/**
 * VNX Transfer Provider Smart Contract
 * Updated:   23.07.2025
 * (c) Copyright by VNX S.A, Luxembourg.
 **/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ITransferProvider.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/* Any transfer provider: allows any transfer */
contract VNXAnyTransferProvider is Ownable, ITransferProvider {

  constructor() Ownable(){}
  /*
     Function in its simplest form just emits Approve event and returns true.
  */
  function approveTransfer(address from, address to, uint256 value, address spender) external pure override returns(bool)
  {
      return true;
  }

  /*
     Function in its simplest form just returns true.
  */
  function considerTransfer(address from, address to, uint256 value) external pure override returns(bool)
  {  
      return true;
  }
}
