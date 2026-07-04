// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {EggBase} from "./EggBase.sol";


// deploy with exptected string as POLYGONARBITRUMBSCOPTIMISM or socket
interface IPlug {
    function assemble_assembledAddress(
        address
    ) external view returns (bytes32);
}

contract AddressAssemble is EggBase {
    IPlug public immutable plug__;
    address public immutable expectedAddress;

    constructor(address plug_, address expectedAddress_) {
        plug__ = IPlug(plug_);
        expectedAddress = expectedAddress_;
    }

    function egg(
        address msgSender,
        bytes calldata
    ) external view override returns (bool) {
        return uint256(plug__.assemble_assembledAddress(msgSender)) == uint256(uint160(expectedAddress));
    }
}
