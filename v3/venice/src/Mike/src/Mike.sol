// SPDX-License-Identifier: MIT
pragma solidity =0.8.26;

import {ERC20} from "solmate/src/tokens/ERC20.sol";
import {Owned} from "solmate/src/auth/Owned.sol";

contract Mike is ERC20, Owned {

    constructor(address treasury)
        ERC20("Mike Token", "MMM", 18)
        Owned(msg.sender)
    {
        _mint(treasury, 100_000_000 * 10**decimals);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}