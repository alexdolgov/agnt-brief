// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFTAdapter } from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";

contract ZrcOFTAdapter is OFTAdapter {
    constructor(
        address _lzEndpoint,
        address _delegate
    ) OFTAdapter(0xfd418e42783382E86Ae91e445406600Ba144D162, _lzEndpoint, _delegate) Ownable(_delegate) {}
}