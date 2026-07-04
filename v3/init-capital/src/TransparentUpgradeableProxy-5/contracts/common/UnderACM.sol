// SPDX-License-Identifier: None
pragma solidity ^0.8.19;

import './ClaimableGas.sol';

import {IAccessControlManager} from '../interfaces/common/IAccessControlManager.sol';

abstract contract UnderACM is ClaimableGas {
    // immutables
    IAccessControlManager public immutable ACM; // access control manager

    // constructor
    constructor(address _acm) {
        ACM = IAccessControlManager(_acm);
    }
}
