// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "oz/contracts/token/ERC20/ERC20.sol";

contract MockUsdc is ERC20 {
    uint8 public _decimals;

    constructor(uint8 decimals_) ERC20("MockUsdc", "MU") {
        _decimals = decimals_;
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
