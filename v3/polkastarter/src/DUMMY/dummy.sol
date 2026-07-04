// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity 0.8.26;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Permit.sol";

contract DUMMY is ERC20, ERC20Permit {
    constructor() ERC20("DUMMY", "DUMMY") ERC20Permit("DUMMY") {
        _mint(msg.sender, 1e9 * 10 ** decimals());
    }
}
