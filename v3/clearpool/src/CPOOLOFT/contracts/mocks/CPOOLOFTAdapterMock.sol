// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { CPOOLOFTAdapter } from "../CPOOLOFTAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract CPOOLOFTAdapterMock is CPOOLOFTAdapter {
    constructor(address _token, address _lzEndpoint, address _delegate) CPOOLOFTAdapter(_token, _lzEndpoint, _delegate) {}
}
