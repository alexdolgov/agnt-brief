// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import {EggBase} from "./EggBase.sol";

interface IPlug {
    function window_startBlock() external view returns (uint256);
}

contract Window is EggBase {
    IPlug public immutable plug__;
    uint256 public immutable windowBlock;

    constructor(address plug_, uint256 windowBlock_) {
        plug__ = IPlug(plug_);
        windowBlock = windowBlock_;
    }

    function egg(
        address,
        bytes calldata
    ) external view override returns (bool) {
        uint256 startBlock = plug__.window_startBlock();
        if (startBlock == 0) return false;
        return
            block.number >= startBlock + 5000 &&
            block.number <= (startBlock + 5000 + windowBlock);
    }
}
