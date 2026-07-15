// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Ailey is ERC20, Ownable, ERC20Permit {
    constructor(address recipient, address initialOwner)
        ERC20("Ailey", "ALE")
        Ownable(initialOwner)
        ERC20Permit("Ailey") {
        _mint(recipient, 1000000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
