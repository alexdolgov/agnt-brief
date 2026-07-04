// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DummyToken is ERC20("DummyToken", "DummyToken") {

    constructor() {
        _mint(msg.sender, 1000e18);
    }

}