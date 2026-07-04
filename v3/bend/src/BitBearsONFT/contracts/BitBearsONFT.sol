// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { ONFT721Enumerable } from "@layerzerolabs/onft-evm/contracts/onft721/ONFT721Enumerable.sol";

contract BitBearsONFT is ONFT721Enumerable {
    constructor(address _lzEndpoint, address _delegate) ONFT721Enumerable("Bit Bears", "BITB", _lzEndpoint, _delegate) {}
}
