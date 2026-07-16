// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract WagmiOFTV2Adapter is OFTAdapter {
    constructor (
        address _token,
        address _lzEndpoint,
        address _owner
    ) OFTAdapter(_token, _lzEndpoint, _owner) Ownable(_owner) {}
}
