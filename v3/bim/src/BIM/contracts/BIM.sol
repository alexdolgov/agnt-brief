// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract BIM is ERC20, ERC20Burnable, ERC20Permit {
    constructor(address recipient) ERC20("BIM", "BIM") ERC20Permit("BIM") {
        _mint(recipient, 30000000 * 10 ** decimals());
    }
}
