// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFTAdapter } from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";

contract WsrusdOftAdapter is OFTAdapter {
    /// @param _token The address of the ERC-20 token to be adapted.
    /// @param _lzEndpoint The LayerZero endpoint address.
    /// @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) OFTAdapter(_token, _lzEndpoint, _delegate) Ownable(_delegate) {}
}
