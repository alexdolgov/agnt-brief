// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract DemoV2 {
	string public name;

	function version() public pure returns (string memory) {
		return "2.0.0";
	}

	function setName(string memory newName) public {
		name = newName;
	}
}
