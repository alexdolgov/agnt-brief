// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import {EggBase} from "./EggBase.sol";

interface IPlug {
    function king() external view returns (address);
}

contract King is EggBase {
    IPlug public immutable plug__;

    constructor(address plug_) {
        plug__ = IPlug(plug_);
    }

    function egg(
        address msgSender,
        bytes calldata
    ) external view override returns (bool) {
        return msgSender == plug__.king();
    }
}
