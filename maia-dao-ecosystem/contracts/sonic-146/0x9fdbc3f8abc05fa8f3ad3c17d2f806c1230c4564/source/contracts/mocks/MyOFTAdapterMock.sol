// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { GOGGLESAdapter } from "../GOGGLESAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTAdapterMock is GOGGLESAdapter {
    constructor(address _token, address _lzEndpoint, address _delegate) GOGGLESAdapter(_token, _lzEndpoint, _delegate) {}
}
