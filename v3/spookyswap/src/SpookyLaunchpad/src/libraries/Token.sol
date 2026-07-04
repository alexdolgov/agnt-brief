// SPDX-License-Identifier: UNKNOWN
pragma solidity ^0.8.18;

import { ERC20 } from "./ERC20.sol";

contract Token is ERC20 {

	string private _name;
	string private _symbol;

	string public junk = "junkdata";

	address internal owner;
	bool internal launched = false;

	function name() public view virtual override returns (string memory) {
		return _name;
	}

	function symbol() public view virtual override returns (string memory) {
		return _symbol;
	}

	function emboss(string calldata n, string calldata s, uint256 supply, address d) external {
		require(totalSupply() == 0);
		owner = d;

		_name = n;
		_symbol = s;

		_mint(msg.sender, supply);
	}

	function launch() external {
		require(msg.sender == owner && launched == false);
		launched = true;
	}

	function _beforeTokenTransfer(address from, address to, uint256 /*amount*/) internal view override {
		if (!launched) {
			require(from == owner || to == owner, "transfer not allowed before launch");
		}
	}

}