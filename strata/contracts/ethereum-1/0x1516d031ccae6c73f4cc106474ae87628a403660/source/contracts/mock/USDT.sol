// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockUSDT is ERC20 {
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        _mint(msg.sender, 1000000 * 10 ** 6);
    }    
    /**
     * @dev Mint tokens for testing purposes.
     */
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }

    /**
     * @dev Override transfer to mimic USDT's non-standard behavior if necessary.
     * Currently behaves like a standard ERC20.
     */
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        super.transfer(recipient, amount);
        return true;
    }

    function transferFrom(
        address sender, 
        address recipient, 
        uint256 amount
    ) public override returns (bool) {
        super.transferFrom(sender, recipient, amount);
        return true;
    }
}