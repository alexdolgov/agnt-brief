// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import {ICauldronV4, ICauldronV3} from "interfaces/ICauldronV4.sol";
import {Address} from "openzeppelin-contracts/utils/Address.sol";

contract CauldronZodiacActions  {
    address public immutable cauldron;

    constructor(address _cauldron) {
        cauldron = _cauldron;
    }

    function doit() public {
        Address.functionDelegateCall(cauldron, abi.encodeCall(ICauldronV3.changeBorrowLimit, (0, 0)));
    }
}
