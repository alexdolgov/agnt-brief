// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

contract Lynex is ERC20Permit, Ownable2Step {

    // Initial mint: total 100M
    uint256 mintAmount = 100 * 1e6 * 1e18;
    bool public initialMinted;

    constructor() ERC20("Lynex", "LYNX") ERC20Permit("Lynex") { }

    function initialMint(address _recipient) external onlyOwner {
        require(!initialMinted, "Already executed initial mint");
        initialMinted = true;
        _mint(_recipient, mintAmount);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}