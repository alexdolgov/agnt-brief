// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { SwellOFTAdapter } from "../MyOFTAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTAdapterMock is SwellOFTAdapter {
    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) SwellOFTAdapter(_token, _lzEndpoint, _delegate) {}
}
