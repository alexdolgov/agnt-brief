// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract JonesTestnet is ERC20("Jones", "JONES") {
    constructor() {
        _mint(msg.sender, 1_000_000 ether);
    }

    function faucet() external {
        _mint(msg.sender, 1_000 ether);
    }
}
