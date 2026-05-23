// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { OFTAdapter } from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract OFTAdapterImplementation is OFTAdapter {
    /**
     * @dev Constructor for the OFTAdapter contract.
     * @param _token The token contract to adapt for cross-chain functionality
     * @param _lzEndpoint The LayerZero endpoint address
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint
     */
    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) OFTAdapter(_token, _lzEndpoint, _delegate) Ownable(_delegate) {}
}