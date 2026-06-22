// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OFT} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";

contract QuackOFT is OFT {
    constructor(
        address _lzEndpoint
    )
    OFT("Quack OFT Token", "QUACK", _lzEndpoint, msg.sender)
    Ownable()
    {
        // Quack OFT
    }
}