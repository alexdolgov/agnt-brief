// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import {EggBase} from "./EggBase.sol";

interface IPlug {
    function gated_count() external view returns (uint256);
}

contract GatedCount is EggBase {
    IPlug public immutable plug__;
    uint256 public immutable finalCount; 

    constructor(address plug_, uint256 finalCount_) {
        plug__ = IPlug(plug_);
        finalCount = finalCount_;
    }

    function egg(
        address,
        bytes calldata
    ) external view override returns (bool) {
        return plug__.gated_count() >= finalCount;
    }
}
