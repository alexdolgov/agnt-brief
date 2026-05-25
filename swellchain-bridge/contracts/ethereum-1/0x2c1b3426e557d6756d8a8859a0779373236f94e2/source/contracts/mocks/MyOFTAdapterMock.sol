// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { OFTAdapterSwETH } from "../MyOFTAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTAdapterMock is OFTAdapterSwETH {
    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) OFTAdapterSwETH(_token, _lzEndpoint, _delegate) {}
}
