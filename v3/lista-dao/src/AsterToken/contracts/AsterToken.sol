// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract AsterToken is ERC20Permit {
    string internal constant _NAME = "Aster";
    string internal constant _SYMBOL = "ASTER";

    constructor(address owner) ERC20(_NAME, _SYMBOL) ERC20Permit(_NAME) {
        _mint(owner, 8_000_000_000 * 10 ** decimals());
    }
}
