// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin-4.5.0/contracts/token/ERC20/ERC20.sol";

contract MockToken is ERC20 {
    constructor() ERC20("Aptos Emissions Dummy", "APTOS-MOCK") {
        _mint(0x21835332cBDf1b3530fAE9f6Cd66FEB9477dFC02, 1000 ether);
    }
}
