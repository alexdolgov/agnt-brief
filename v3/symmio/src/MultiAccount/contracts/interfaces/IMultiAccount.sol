// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IMultiAccount {
	struct Account {
		address accountAddress;
		string name;
	}
	struct BoundedAccount {
		address accountAddress;
		string name;
		address boundedPartyB; // The PartyB address bound to this account (address(0) if not bound)
	}
	event SetAccountImplementation(bytes oldAddress, bytes newAddress);
	event SetAccountsAdmin(address oldAddress, address newAddress);
	event SetSymmioAddress(address oldAddress, address newAddress);
	event DeployContract(address sender, address contractAddress);
	event AddAccount(address user, address account, string name);
	event EditAccountName(address user, address account, string newName);
	event DepositForAccount(address user, address account, uint256 amount);
	event AllocateForAccount(address user, address account, uint256 amount);
	event WithdrawFromAccount(address user, address account, uint256 amount);
	event Call(address user, address account, bytes _callData, bool _success, bytes _resultData);
	event DelegateAccess(address account, address target, bytes4 selector, bool state);
	event DelegateAccesses(address account, address target, bytes4[] selector, bool state);
	event ProposeToRevokeAccesses(address account, address target, bytes4[] selector);
	event SetRevokeCooldown(uint256 oldCooldown, uint256 newCooldown);
	event BindToPartyB(address account, address partyB);

	function _call(address account, bytes[] memory _callDatas) external;
	function owners(address account) external view returns (address);
}
