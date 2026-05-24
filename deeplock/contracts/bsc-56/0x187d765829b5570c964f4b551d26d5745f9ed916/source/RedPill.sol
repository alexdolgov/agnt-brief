//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "./Token.sol";

contract RedPill is Token {
    constructor() Token(
        "Red Pill",
        "RDPL",
        6500000000,
        10, 0, 0, 10) {
    }
}