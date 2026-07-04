// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title Silver
/// @author github.com/SifexPro
/// @notice ERC20 token for SilverSwap
contract Silver is ERC20, Ownable {
	// Constructor
	constructor() ERC20("Silver", "$AG") Ownable(msg.sender) {}

	/**
	 * @dev Mint function (onlyOwner -> SilverMint)
	 * @param _to Address of user
	 * @param _amount Amount of tokens to mint
	 */
	function mint(address _to, uint256 _amount) public onlyOwner {
		_mint(_to, _amount);
	}
}