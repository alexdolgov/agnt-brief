// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { ApeOFTAdapter } from "../ApeOFTAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract ApeOFTAdapterMock is ApeOFTAdapter {
    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) ApeOFTAdapter(_token, _lzEndpoint, _delegate) {}
}
