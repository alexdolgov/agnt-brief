// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OFT} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";

contract Blub is OFT {
    constructor(uint256 _mintSupply, address _lzEndpoint, address _delegate)
        OFT("Blub", "BLUB", _lzEndpoint, _delegate)
        Ownable(_delegate)
    {
        _mint(_delegate, _mintSupply);
    }
}
