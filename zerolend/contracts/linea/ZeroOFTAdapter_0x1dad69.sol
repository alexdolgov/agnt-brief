// SPDX-License-Identifier: EXTRACTED
// Contract: ZeroOFTAdapter
// Address: 0x1dad693787c5817ef3102f513025fa6a66039e8e
// Compiler: v0.8.22+commit.4fc1097e
// Classification: zerolend_custom
// Source: Etherscan verified (project files only, libraries excluded)
// Extracted: 2026-04-13

// ======================================================================
// FILE: contracts/ZeroOFTAdapter.sol
// ======================================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { OFT } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";
import { OFTAdapter } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTAdapter.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract ZeroOFTAdapter is OFTAdapter {
    constructor(
        address _token, // a deployed, already existing ERC20 token address
        address _layerZeroEndpoint // local endpoint address
    ) OFTAdapter(_token, _layerZeroEndpoint, msg.sender) Ownable(msg.sender) {}

    function recall(address _token) external onlyOwner {
        IERC20(_token).transfer(msg.sender, IERC20(_token).balanceOf(address(this)));
    }
}
