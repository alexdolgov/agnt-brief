// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TrenToken is ERC20 {
    uint256 public constant TOTAL_SUPPLY = 1_000_000_000 * 10**18; // 1 billion tokens with 18 decimals

    constructor(address initialHolder) ERC20("Tren Finance Protocol Token", "TREN") {
        require(initialHolder != address(0), "TrenToken: initial holder is the zero address");
        _mint(initialHolder, TOTAL_SUPPLY);
    }
}