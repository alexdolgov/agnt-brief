// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

contract DESK is OFT {
    constructor(
        address _lzEndpoint,
        address _delegate,
        uint256 _totalSupply
    ) OFT("DESK", "DESK", _lzEndpoint, _delegate) Ownable(_delegate) {
        if (block.chainid == 1 || block.chainid == 11155111) _mint(msg.sender, _totalSupply);
    }
}
