// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {MintBurnOFTAdapter} from "src/MintBurnOFTAdapter.sol";
import {IMintableBurnable} from "src/interfaces/IMintableBurnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract OBTCOFTAdapter is MintBurnOFTAdapter {
    constructor(address _token, IMintableBurnable _minterBurner, address _lzEndpoint, address _delegate)
        MintBurnOFTAdapter(_token, _minterBurner, _lzEndpoint, _delegate)
        Ownable(_delegate)
    {}
}
