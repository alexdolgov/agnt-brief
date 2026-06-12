// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

/* solhint-disable */

import {NativeRizeToken} from "../NativeRizeToken.sol";

// No receive or fallback function, making it unable to accept Ether.
contract TEST_FailTransfer {
    NativeRizeToken _token;

    constructor(address token) {
        _token = NativeRizeToken(payable(token));
    }

    function withdraw(uint256 amount) external {
        _token.withdraw(amount);
    }
}
