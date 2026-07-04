// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { fDOGAdapter } from "../fDOGAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTAdapterMock is fDOGAdapter {
    constructor(address _token, address _lzEndpoint, address _delegate) fDOGAdapter(_token, _lzEndpoint, _delegate) {}
}
