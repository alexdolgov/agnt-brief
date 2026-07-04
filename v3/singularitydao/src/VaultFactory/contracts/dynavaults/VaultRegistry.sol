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
	 * @param vaultAddress address of vault
	 */ function requireRecord(address vaultAddress) internal view {
		require(vaults[vaultIndex[vaultAddress]].vault == vaultAddress, "ERR_NOT_REGISTERED");
	}

	/**
	 * @notice check if vault is registered
	 * @param vaultAddress address of vault
	 */ function isVaultRegistered(address vaultAddress) public view returns (bool) {
		return isRegistered[vaultAddress];
	}

	/**
	 * @notice toggle vault enabled
	 * @param vaultAddress address of vault
	 * @param enabled enable or disable vault
	 */ function setVaultEnabled(address vaultAddress, bool enabled) external onlyRole(REGISTRY_ADMIN) {
		requireRecord(vaultAddress);
		vaults[vaultIndex[vaultAddress]].active = enabled;
	}

	/**
	 * @notice sets type of vault
	 * @param vaultAddress address of vault
	 * @param vaultType vault type
	 */ function setVaultType(address vaultAddress, VaultType vaultType) external onlyRole(REGISTRY_ADMIN) {
		requireRecord(vaultAddress);
		vaults[vaultIndex[vaultAddress]].vaultType = vaultType;
	}

	/**
	 * @notice registers vault
	 * @param vaultAddress address of the vault to register
	 */
	function registerVault(address vaultAddress) external onlyRole(REGISTRY_ADMIN) {
		require(!isRegistered[vaultAddress], "ERR_REGISTERED");
		require(vaultAddress != address(0), "ERR_ZERO_ADDRESS");
		VaultRecord memory record = VaultRecord({vault: vaultAddress, vaultType: VaultType.UNDEFINED, active: false});
		isRegistered[vaultAddress] = true;
		vaultIndex[vaultAddress] = vaults.length;
		vaults.push(record);
	}
}
