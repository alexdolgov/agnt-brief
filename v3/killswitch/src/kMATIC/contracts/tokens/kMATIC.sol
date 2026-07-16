// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../WrappedToken.sol";

contract kMATIC is WrappedToken {
    constructor() WrappedToken("KillSwitch-Peg MATIC Token", "kMATIC", 18) {}
}
