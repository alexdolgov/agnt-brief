// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OFT} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";

contract DackieUSDOFT is OFT {
    constructor(
        address _lzEndpoint
    )
    OFT("Dackie USD OFT", "dckUSD", _lzEndpoint, msg.sender)
    Ownable()
    {
        // dckUSD OFT
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * @return The number of decimals.
     */
    function decimals() public pure override returns (uint8) {
        return 6;
    }
}