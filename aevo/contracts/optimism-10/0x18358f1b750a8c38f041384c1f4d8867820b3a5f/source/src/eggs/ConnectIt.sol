// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./EggBase.sol";

interface IPlug {
    function msgArrived() external view returns (bool);
}

contract ConnectIt is EggBase {
    IPlug public immutable plug__;

    constructor(address plug_) {
        plug__ = IPlug(plug_);
    }

    function egg(
        address msgSender,
        bytes calldata
    ) external view override returns (bool) {
        return plug__.msgArrived();
    }
}
