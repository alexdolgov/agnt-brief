// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "openzeppelin/token/ERC20/ERC20.sol";
import {ERC20Permit} from "openzeppelin/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "openzeppelin/access/Ownable.sol";

contract ArcadeMemecoin is ERC20, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Arcade Memecoin", "ARCADE")
        ERC20Permit("Arcade Memecoin")
    {
        _mint(initialOwner, 100000 * 10 ** decimals());
        _transferOwnership(initialOwner);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}