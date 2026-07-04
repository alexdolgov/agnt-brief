// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Token is ERC20, ERC20Burnable {
    constructor(
        string memory name,
        string memory symbol,
        address initialMinter,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        _mint(initialMinter, initialSupply * 10 ** decimals());
    }
} 