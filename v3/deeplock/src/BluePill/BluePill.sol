//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "./Token.sol";

contract BluePill is Token {
    constructor() Token(
        "Blue Pill",
        "BLPL",
        6500000000,
        10, 0, 0, 10) {
    }
}