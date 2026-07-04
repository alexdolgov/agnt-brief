// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "lib/solmate/src/tokens/ERC20.sol";

contract baoDummy is ERC20 {
    constructor() public ERC20("Dummy token", "Dummy", 18) {
        _mint(msg.sender, 100000000000000000000000);
    }
}