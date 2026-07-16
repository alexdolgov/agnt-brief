// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { SwBtcOFTAdapter } from "../MyOFTAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTAdapterMock is SwBtcOFTAdapter {
    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) SwBtcOFTAdapter(_token, _lzEndpoint, _delegate) {}
}
