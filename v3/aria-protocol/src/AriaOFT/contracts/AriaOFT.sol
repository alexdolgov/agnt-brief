// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OFT} from "@layerzerolabs/oft-evm/contracts/OFT.sol";

contract AriaOFT is OFT {
    constructor(address _lzEndpoint, address _delegate)
        OFT("Aria", "ARIAIP", _lzEndpoint, _delegate)
        Ownable(_delegate)
    {}
}
