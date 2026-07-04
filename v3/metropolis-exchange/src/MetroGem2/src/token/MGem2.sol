// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import {ERC20} from "openzeppelin/token/ERC20/ERC20.sol";
import {ERC20Permit} from "openzeppelin/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "openzeppelin/access/Ownable.sol";

contract MetroGem2 is ERC20, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Metropolis Sonic GEM 2", "MGEM2")
        Ownable(initialOwner)
        ERC20Permit("Metropolis Sonic GEM 2")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}