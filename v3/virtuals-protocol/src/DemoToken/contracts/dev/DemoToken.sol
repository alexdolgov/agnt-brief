// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract DemoToken is ERC20, ERC20Permit {
    constructor(
        uint256 initialAmount,
        address initialOwner
    ) ERC20("DemoToken", "DEMO") ERC20Permit("DemoToken") {
        _mint(initialOwner, initialAmount);
    }
}
