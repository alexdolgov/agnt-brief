// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IVaultRegistry {
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

	/**
	 * @notice returns the number of vaults registered
	 * @return number of vaults registered
	 */
	function nrOfVaults() external view returns (uint256);

	/**
	 * @notice returns all vaults
	 * @return vaults array of vault records
	 */ function allVaults() external view returns (VaultRecord[] memory);

	/**
	 * @notice check if vault is registered
	 * @param vaultaddress address of vault
	 */
	function isVaultRegistered(address vaultaddress) external view returns (bool);
}
