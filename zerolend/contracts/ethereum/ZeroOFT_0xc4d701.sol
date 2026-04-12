// SPDX-License-Identifier: EXTRACTED
// Contract: ZeroOFT
// Address: 0xc4d70105af3904a90649323ef34c8b58fc19634f
// Compiler: v0.8.22+commit.4fc1097e
// Classification: zerolend_custom
// Source: Etherscan verified (project files only, libraries excluded)
// Extracted: 2026-04-13

// ======================================================================
// FILE: contracts/ZeroOFT.sol
// ======================================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";

contract ZeroOFT is OFT {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) OFT(_name, _symbol, _lzEndpoint, _delegate) Ownable(_delegate) {
    }
}
