// SPDX-License-Identifier: None
pragma solidity ^0.8.19;

import {TransparentUpgradeableProxy} from '@openzeppelin-contracts/proxy/transparent/TransparentUpgradeableProxy.sol';

import {ClaimableGas} from './ClaimableGas.sol';

contract TransparentUpgradeableProxyBlast is TransparentUpgradeableProxy, ClaimableGas {
    constructor(address _logic, address admin_, bytes memory _data)
        payable
        TransparentUpgradeableProxy(_logic, admin_, _data)
    {}
}
