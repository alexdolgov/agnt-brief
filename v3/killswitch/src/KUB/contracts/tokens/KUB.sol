// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../WrappedToken.sol";

contract KUB is WrappedToken {
    constructor() WrappedToken("KillSwitch-Peg KUB Token", "KUB", 18) {}
}
