pragma solidity 0.8.13;

// SPDX-License-Identifier: MIT

import "ERC20PresetMinterPauser.sol";

contract ZooMock is ERC20PresetMinterPauser{
	constructor(string memory name, string memory symbol) ERC20PresetMinterPauser(name, symbol)
	{
	}
}