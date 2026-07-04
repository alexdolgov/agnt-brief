// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

contract ThUSDOFT is OFT {
    constructor(
        address _lzEndpoint,
        address _delegate
    ) OFT("thUSD", "thUSD", _lzEndpoint, _delegate) Ownable(_delegate) {}

    function decimals() public pure override returns (uint8) {
        return 6;
    }
}
