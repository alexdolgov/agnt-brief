// SPDX-License-Identifier: None
pragma solidity ^0.8.19;

import {IBlast} from '../interfaces/common/blast/IBlast.sol';

abstract contract ClaimableGas {
    constructor() {
        IBlast blast = IBlast(0x4300000000000000000000000000000000000002);
        blast.configureClaimableGas();
        blast.configureGovernor(msg.sender);
    }
}
