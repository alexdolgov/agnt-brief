// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IMultiAccount {
	struct Account {
		address accountAddress;
		string name;
	}

	function owners(address account) external view returns (address);

	function indexOfAccount(address account) external view returns (uint256);

	function accounts(address user, uint256 index) external view returns (Account memory);

	function getAccountsLength(address user) external view returns (uint256);

	function getAccounts(address user, uint256 start, uint256 size) external view returns (Account[] memory);
}
