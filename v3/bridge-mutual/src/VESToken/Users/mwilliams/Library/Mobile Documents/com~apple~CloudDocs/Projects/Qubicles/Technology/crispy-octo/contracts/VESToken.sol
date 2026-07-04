// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "./lib/ERC20.sol";

contract VESToken is ERC20 {
    constructor() public ERC20("START Vesting", "VEST") {
        _mint(msg.sender, 100000 * (10**uint256(decimals())));
    }
}
