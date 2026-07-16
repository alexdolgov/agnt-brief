// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../WrappedToken.sol";

contract kTUK is WrappedToken {
    constructor() WrappedToken("KillSwitch-Peg TUK Token", "kTUK", 18) {}
}
