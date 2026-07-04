// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ITransferProvider.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/* Any transfer provider: allows any transfer */
contract VNXAnyTransferProvider is Ownable, ITransferProvider {
  /*
     Function in its simplest form just emits Approve event and returns true.
  */
  function approveTransfer(address from, address to, uint256 value, address spender) external override returns(bool)
  {
      emit TransferApproved(from, to, value);
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
