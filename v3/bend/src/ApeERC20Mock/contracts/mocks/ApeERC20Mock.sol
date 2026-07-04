// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// @dev WARNING: This is for testing purposes only
contract ApeERC20Mock is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 100 ether);
    }
    
    // @dev WARNING: This is for testing purposes only
    // production OApps should add access controls
    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }
}