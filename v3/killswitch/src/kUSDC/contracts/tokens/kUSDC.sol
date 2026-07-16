// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../WrappedToken.sol";

contract kUSDC is WrappedToken {
    constructor() WrappedToken("KillSwitch-Peg USDC Token", "kUSDC", 6) {}
}
