// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract POLLEN is ERC20 {
    constructor() ERC20("POLLEN", "POLLEN") {
        _mint(msg.sender, 420_000_000e18);
    }
}
