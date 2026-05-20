// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { RSwellOFTAdapter } from "../MyOFTAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTAdapterMock is RSwellOFTAdapter {
    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) RSwellOFTAdapter(_token, _lzEndpoint, _delegate) {}
}
