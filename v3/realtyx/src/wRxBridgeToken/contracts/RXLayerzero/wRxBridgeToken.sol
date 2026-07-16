// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;
import {OFT} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";


contract wRxBridgeToken is OFT {
    constructor(
        address _lzEndpoint,
        address _delegate
    ) OFT("RealtyX", "RX", _lzEndpoint, _delegate) Ownable(){}

}
