// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {OFTAdapter} from "@layerzerolabs/oft-evm/OFTAdapter.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title NethOFTAdapter Contract
 * @dev For existing ERC20 tokens, this can be used to convert the token to crosschain compatibility.
 */
contract NethOFTAdapter is OFTAdapter {
    constructor(address _token, address _lzEndpoint, address _delegate)
        OFTAdapter(_token, _lzEndpoint, _delegate)
        Ownable(_delegate)
    {}
}
