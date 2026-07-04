// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract VaultRegistry is AccessControl {
	bytes32 public constant REGISTRY_ADMIN = keccak256(abi.encode("REGISTRY_ADMIN"));

	enum VaultType {
		UNDEFINED,
		DEV,
		UAT,
		BETA,
		PRODUCTION
	}
	struct VaultRecord {
		address vault;
		VaultType vaultType;
		bool active;
	}
	VaultRecord[] public vaults;
	mapping(address => bool) private isRegistered;
	mapping(address => uint256) public vaultIndex;

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
		_grantRole(REGISTRY_ADMIN, msg.sender);
	}

	/**
	 * @notice returns the number of vaults registered
	 * @return number of vaults registered
	 */ function nrOfVaults() external view returns (uint256) {
		return vaults.length;
	}

	/**
	 * @notice returns all vaults
	 * @return vaults array of vault records
	 */ function allVaults() external view returns (VaultRecord[] memory) {
		return vaults;
	}

	/**
	 * @notice check if vault has a record
	 * @param vaultaddress address of vault
	 */ function requireRecord(address vaultaddress) internal view {
		require(vaults[vaultIndex[vaultaddress]].vault == vaultaddress, "ERR_NOT_REGISTERED");
	}

	/**
	 * @notice check if vault is registered
	 * @param vaultaddress address of vault
	 */ function isVaultRegistered(address vaultaddress) public view returns (bool) {
		return isRegistered[vaultaddress];
	}

	/**
	 * @notice toggle vault enabled
	 * @param vaultaddress address of vault
	 * @param enabled enable or disable vault
	 */ function setVaultEnabled(address vaultaddress, bool enabled) external onlyRole(REGISTRY_ADMIN) {
		requireRecord(vaultaddress);
		vaults[vaultIndex[vaultaddress]].active = enabled;
	}

	/**
	 * @notice sets type of vault
	 * @param vaultaddress address of vault
	 * @param vaultType vault type
	 */ function setVaultType(address vaultaddress, VaultType vaultType) external onlyRole(REGISTRY_ADMIN) {
		requireRecord(vaultaddress);
		vaults[vaultIndex[vaultaddress]].vaultType = vaultType;
	}

	/**
	 * @notice registers vault
	 * @param vaultaddress address of the vault to register
	 */
	function registerVault(address vaultaddress) external onlyRole(REGISTRY_ADMIN) {
		require(!isRegistered[vaultaddress], "ERR_REGISTERED");
		require(vaultaddress != address(0), "ERR_ZERO_ADDRESS");
		VaultRecord memory record = VaultRecord({vault: vaultaddress, vaultType: VaultType.UNDEFINED, active: false});
		isRegistered[vaultaddress] = true;
		vaultIndex[vaultaddress] = vaults.length;
		vaults.push(record);
	}
}
