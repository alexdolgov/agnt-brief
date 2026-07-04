// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {OperatableV2} from "mixins/OperatableV2.sol";

contract MyContract is OperatableV2 {
    
    constructor(address _owner) OperatableV2(_owner) {

    }
}
