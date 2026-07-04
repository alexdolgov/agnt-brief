// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import { CPOOLCore } from "../CPOOLCore.sol";

// @dev WARNING: This is for testing purposes only
contract CPOOLMock is CPOOLCore {
    constructor() CPOOLCore() {}

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }
}
