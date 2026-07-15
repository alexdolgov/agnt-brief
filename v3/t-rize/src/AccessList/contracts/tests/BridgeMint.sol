// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IAccessList} from "../interfaces/IAccessList.sol";
import {AccessRestricted} from "../configuration/AccessRestricted.sol";
import {RizeToken} from "../RizeToken.sol";


contract BridgeMint is AccessRestricted {
  constructor(address accessList) AccessRestricted(accessList) {}

  function mint(address account, uint256 amount) public onlyBridge(){
    IAccessList accessList = IAccessList(getAccessList());
    RizeToken token = RizeToken(payable(accessList.getToken()));
    token.mint(amount);
    token.transfer(account, amount);
  }
}