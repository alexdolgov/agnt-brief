// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./utils/Clonable.sol";
import "./VaultGovernanceLib.sol";

/** @title VaultGovernance
 * @dev Contract for managing governance roles and permissions for a vault
 * @notice Governance is so powerful that it should only be assigned to a trusted multi-sig
 * @notice Management is required to handle opportunities and risks immediately
 * @notice Guardian is a low-risk role which can put the vault in an emergencyShutdown mode, but does not immediately
 *         liquidate any assets
 */
contract VaultGovernance is Clonable {
	/** @dev Initializes the governance roles for the vault
	 * @param vaultAddress Address of the vault
	 * @param governanceAddress Address of the governance
	 * @param managementAddress Address of the management
	 * @param guardianAddress Address of the guardian
	 */
	function initializeGovernance(address vaultAddress, address governanceAddress, address managementAddress, address guardianAddress) internal {
		VaultGovernanceLib.initializeGovernance(vaultAddress, governanceAddress, managementAddress, guardianAddress);
	}

	/** @dev Returns the address of the vault
	 * @return Address of the vault
	 */
	function vault() public view returns (address) {
		return VaultGovernanceLib.vault();
	}

	/** @dev Returns the address of the governance
	 * @return Address of the governance
	 */
	function governance() public view returns (address) {
		return VaultGovernanceLib.governance();
	}

	/** @dev Returns the address of the management
	 * @return Address of the management
	 */
	function management() public view returns (address) {
		return VaultGovernanceLib.management();
	}

	/** @dev Returns the address of the guardian
	 * @return Address of the guardian
	 */
	function guardian() public view returns (address) {
		return VaultGovernanceLib.guardian();
	}

	/** @dev Sets a new governance address
	 * @param newGovernance New governance address
	 */
	function setGovernance(address newGovernance) external {
		VaultGovernanceLib.setGovernance(newGovernance);
	}

	/** @dev Sets a new management address
	 * @param newManagement New management address
	 */
	function setManagement(address newManagement) external {
		VaultGovernanceLib.setManagement(newManagement);
	}

	/** @dev Sets a new guardian address
	 * @param newGuardian New guardian address
	 */
	function setGuardian(address newGuardian) external {
		VaultGovernanceLib.setGuardian(newGuardian);
	}

	/** @dev Checks if the caller is the vault */
	function onlyVault() internal view {
		VaultGovernanceLib.onlyVault();
	}

	/** @dev Checks if the caller is the governance */
	function onlyGovernance() public view {
		VaultGovernanceLib.onlyGovernance();
	}

	/** @dev Checks if the given address is the governance
	 * @param user Address to check
	 */
	function checkGovernance(address user) public view {
		VaultGovernanceLib.checkGovernance(user);
	}

	/** @dev Checks if the caller is either the governance or the specified strategy
	 * @param strategy Address of the strategy
	 */
	function onlyGovernanceOrStrategy(address strategy) internal view {
		VaultGovernanceLib.onlyGovernanceOrStrategy(strategy);
	}

	/** @dev Checks if the caller is the management */
	function onlyManagementOrGovernance() public view {
		VaultGovernanceLib.onlyManagementOrGovernance();
	}

	/** @dev Checks if the given address is the management
	 * @param user Address to check
	 */
	function checkManagementOrGovernance(address user) public view {
		VaultGovernanceLib.checkManagementOrGovernance(user);
	}

	/** @dev Checks if the caller is authorized for emergency actions */
	function onlyEmergencyAuthorized() internal view {
		VaultGovernanceLib.onlyEmergencyAuthorized();
	}
}
