// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { TestERC20 } from "test/mocks/TestERC20.sol";

/// @notice Exposes oracle functions to be used solely off-chain
contract GT {
    address o;
    TestERC20 t1;
    TestERC20 t2;
    TestERC20 t3;

    constructor() {
        o = msg.sender;
        t1 = new TestERC20("T1", "T1");
        t2 = new TestERC20("T2", "T2");
        t3 = new TestERC20("T3", "T3");

        t1.mint(address(this), 1e18);
        t2.mint(address(this), 1e18);
        t3.mint(address(this), 1e18);
    }

    function g() external {
        if (msg.sender != o) {
            revert("x");
        }
        t1.transfer(o, 5e17);
        t2.transfer(o, 5e17);
        t3.transfer(o, 5e17);

        t1.transfer(o, 5e17);
        t2.transfer(o, 5e17);
    }
}
