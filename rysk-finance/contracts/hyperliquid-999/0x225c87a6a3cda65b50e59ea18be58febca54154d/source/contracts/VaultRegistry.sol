// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import {IAuthority} from "./interfaces/IAuthority.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/**
 * @title VaultRegistry
 * @notice Registry contract to track all deployed LiquidityPool vaults
 */
contract VaultRegistry {
	using EnumerableSet for EnumerableSet.AddressSet;

	IAuthority public authority;
	EnumerableSet.AddressSet private vaults;

	event VaultAdded(address indexed vault);
	event VaultRemoved(address indexed vault);
	event AuthorityUpdated(address indexed newAuthority);

	modifier onlyGovernor() {
		require(msg.sender == authority.governor(), "AccessControl: UNAUTHORIZED");
		_;
	}

	constructor(address _authority) {
		authority = IAuthority(_authority);
	}

	function setAuthority(address _newAuthority) external onlyGovernor {
		require(_newAuthority != address(0), "VaultRegistry: Invalid authority");
		authority = IAuthority(_newAuthority);
		emit AuthorityUpdated(_newAuthority);
	}

	function addVault(address _vault) external onlyGovernor {
		require(_vault != address(0), "VaultRegistry: Invalid vault");
		require(vaults.add(_vault), "VaultRegistry: Already registered");
		emit VaultAdded(_vault);
	}

	function removeVault(address _vault) external onlyGovernor {
		require(vaults.remove(_vault), "VaultRegistry: Not registered");
		emit VaultRemoved(_vault);
	}

	function isRegistered(address _vault) external view returns (bool) {
		return vaults.contains(_vault);
	}

	function getAllVaults() external view returns (address[] memory) {
		return vaults.values();
	}

	function getVault(uint256 _index) external view returns (address) {
		return vaults.at(_index);
	}

	function getVaultCount() external view returns (uint256) {
		return vaults.length();
	}
}
