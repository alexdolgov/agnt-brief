// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./DynaVaultErrors.sol";
import "./utils/Checks.sol";

contract VaultRegistry is AccessControl {
	using Checks for address;

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
	 * @notice Returns the number of vaults registered
	 * @return number The number of vaults registered
	 */
	function nrOfVaults() external view returns (uint256) {
		return vaults.length;
	}

	/**
	 * @notice Returns all vaults
	 * @return vaults An array of vault records
	 */
	function allVaults() external view returns (VaultRecord[] memory) {
		return vaults;
	}

	/**
	 * @notice Check if vault has a record
	 * @param vaultAddress The address of the vault
	 */
	function requireRecord(address vaultAddress) internal view {
		if (vaults[vaultIndex[vaultAddress]].vault != vaultAddress) {
			revert DynaVaultErrors.NotRegistered();
		}
	}

	/**
	 * @notice Check if vault is registered
	 * @param vaultAddress The address of the vault
	 */
	function isVaultRegistered(address vaultAddress) public view returns (bool) {
		return isRegistered[vaultAddress];
	}

	/**
	 * @notice Check if vault is enabled
	 * @param vaultAddress The address of vault
	 */
	function isVaultEnabled(address vaultAddress) external view returns (bool) {
		return isRegistered[vaultAddress] && vaults[vaultIndex[vaultAddress]].active;
	}

	/**
	 * @notice Toggle vault enabled
	 * @param vaultAddress The address of the vault
	 * @param enabled Enable or disable vault
	 */
	function setVaultEnabled(address vaultAddress, bool enabled) external onlyRole(REGISTRY_ADMIN) {
		requireRecord(vaultAddress);
		vaults[vaultIndex[vaultAddress]].active = enabled;
	}

	/**
	 * @notice Sets type of vault
	 * @param vaultAddress The address of the vault
	 * @param vaultType The vault type
	 */
	function setVaultType(address vaultAddress, VaultType vaultType) external onlyRole(REGISTRY_ADMIN) {
		requireRecord(vaultAddress);
		vaults[vaultIndex[vaultAddress]].vaultType = vaultType;
	}

	/**
	 * @notice Registers vault
	 * @param vaultAddress The address of the vault to register
	 */
	function registerVault(address vaultAddress) external onlyRole(REGISTRY_ADMIN) {
		if (isRegistered[vaultAddress]) {
			revert DynaVaultErrors.AlreadyRegistered();
		}
		vaultAddress.requireNonZeroAddress();
		VaultRecord memory record = VaultRecord({vault: vaultAddress, vaultType: VaultType.UNDEFINED, active: true});
		isRegistered[vaultAddress] = true;
		vaultIndex[vaultAddress] = vaults.length;
		vaults.push(record);
	}
}
