// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { SwETHOFTAdapter } from "../MyOFTAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTAdapterMock is SwETHOFTAdapter {
    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) SwETHOFTAdapter(_token, _lzEndpoint, _delegate) {}
}
