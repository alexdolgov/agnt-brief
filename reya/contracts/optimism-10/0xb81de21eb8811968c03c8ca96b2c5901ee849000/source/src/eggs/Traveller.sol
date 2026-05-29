// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import {EggBase} from "./EggBase.sol";


// deploy with exptected string as POLYGONARBITRUMBSCOPTIMISM or socket
interface IPlug {
    function traveller_messages(
        address traveller
    ) external view returns (string memory);
}

contract Traveller is EggBase {
    IPlug public immutable plug__;
    bytes32 public immutable expected;

    constructor(address plug_, string memory expectedString_) {
        plug__ = IPlug(plug_);
        expected = keccak256(abi.encode(expectedString_));
    }

    function egg(
        address msgSender,
        bytes calldata
    ) external view override returns (bool) {
        return expected == keccak256(abi.encode(plug__.traveller_messages(msgSender)));
    }
}
