// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract MockERC20Token is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 100000000 ether);
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}
