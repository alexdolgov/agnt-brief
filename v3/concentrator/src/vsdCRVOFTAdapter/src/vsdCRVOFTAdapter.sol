// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@lz/oft/OFTAdapter.sol";

/// @title vsdCRVOFTAdapter
/// @notice This contract serve as the token pool to lock vsdTokens and mint vsdCRV in destination chains.
contract vsdCRVOFTAdapter is OFTAdapter {
    constructor(address token, address _layerZeroEndpoint, address _owner)
        OFTAdapter(token, _layerZeroEndpoint, _owner)
    {}
}
