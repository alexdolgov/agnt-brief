// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { OFTAdapter } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTAdapter.sol";
import { OFT } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract waBtcOFTAdapter is OFTAdapter {
    constructor(
        address _token,
        address _lzEndpoint,
        address _owner
    ) OFTAdapter(_token, _lzEndpoint, _owner) Ownable(_owner) {}

    function sharedDecimals() public pure override returns (uint8) {
        return 8;
    }
}


contract waBtcOFT is OFT {
    constructor(
        address _lzEndpoint,
        address _owner
    ) OFT("Wrapped aBTC", "waBTC", _lzEndpoint, _owner) Ownable(_owner) {}

    function sharedDecimals() public pure override returns (uint8) {
        return 8;
    }
}