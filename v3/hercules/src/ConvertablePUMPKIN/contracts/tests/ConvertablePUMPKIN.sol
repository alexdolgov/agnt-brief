// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ConvertablePUMPKIN is ERC20 {
    constructor() ERC20("Convertable PUMPKIN", "cPUMP") {
        _mint(msg.sender, 62500000 * 10 ** decimals());
    }
}
