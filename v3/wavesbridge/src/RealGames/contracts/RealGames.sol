// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract RealGames is ERC20, ERC20Burnable {
    
    constructor(address initialOwner, uint256 _supply)
        ERC20("Real Games", "RG")
    {
        require(initialOwner != address(0), "zero address");
        _mint(initialOwner, _supply);
    }
}