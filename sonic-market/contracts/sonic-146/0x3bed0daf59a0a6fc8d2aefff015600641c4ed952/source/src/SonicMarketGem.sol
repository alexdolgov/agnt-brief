// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract SonicMarketGem is ERC20, ERC20Permit {
    address public immutable minter;

    constructor(uint256 initialSupply) ERC20("Sonic Market Gem", "SGEM") ERC20Permit("Sonic Market Gem") {
        _mint(msg.sender, initialSupply);
    }
}
