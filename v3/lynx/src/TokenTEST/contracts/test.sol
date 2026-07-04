// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract TokenTEST is ERC20, Ownable {
	// Constructor
	constructor() ERC20('Test', 'TT') Ownable(msg.sender) {
		_mint(msg.sender, 1000000000000000000000000); // 1,000,000 tokens
    }

	// Mint
	function mint(uint256 _amount) public {
		_mint(msg.sender, _amount);
	}
}