// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import {EggBase} from "./EggBase.sol";

interface IPlug {
    function poisonPill_codes(
        address sender,
        address pill
    ) external view returns (bool);
}

contract PoisonPill is EggBase {
    IPlug public immutable plug__;

    constructor(address plug_) {
        plug__ = IPlug(plug_);
    }

    function egg(
        address sender,
        bytes calldata data
    ) external view override returns (bool) {
        (address pill) = abi.decode(data, (address));
        if (plug__.poisonPill_codes(sender, pill)) {
            uint256 size;
            assembly {
                size := extcodesize(pill)
            }
            return size == 0;
        }
        return false;
    }
}
