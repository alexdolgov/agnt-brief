// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFTAdapter } from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";

contract GUDOFTAdapter is OFTAdapter {
    address public constant GUD_ADDRESS = 0xA608512BBC9934E4b1DDeCF0F5Fb38b6Ad93308D;

    constructor(
        address _lzEndpoint,
        address _delegate
    ) OFTAdapter(GUD_ADDRESS, _lzEndpoint, _delegate) Ownable(_delegate) {}
}