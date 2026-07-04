// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./DynaVaultErrors.sol";
import "./utils/Checks.sol";

/**
 * @title The VaultGovernance sub-module is part of the manager contract and is a simple access control contract with different functions and privileges.
 * @notice It keeps track of the following addresses:
 * - Vault: Represents the address of the vault, cannot be changed.
 * - Governance: A privileged address, can be changed by itself.
 *   Governance is authorized to add/remove tokens and strategies.
 * - Management: A privileged address, can be changed by governance.
 *   Management is authorized to swap assets and invest/liquidate into/from strategies.
 * - Guardian: A privileged address, can be changed by governance.
 *   Guardian is authorized to signal a security risk and put the vault in an emergencyShutdown,
 *   but doesn't immediately liquidate funds in strategies.
 */
library VaultGovernanceLib {
	using Checks for address;

	/// @dev The storage slot follows EIP1967 to avoid storage collision
	bytes32 private constant GOVERNANCE_STORAGE_POSITION = bytes32(uint256(keccak256("VaultGovernance.GovernanceStorage")) - 1);
	address private constant ZERO_ADDRESS = address(0);

	/**
	 * @dev Struct to store governance-related addresses
	 * @param vault Address of the vault
	 * @param governance Address of the governance
	 * @param management Address of the management
	 * @param guardian Address of the guardian
	 */
	struct GovernanceStorage {
		address vault;
		address governance;
		address management;
		address guardian;
	}

	/**
	 * @dev Emitted when the governance address is updated
	 * @param caller Address of the account that called the function
	 * @param governance New governance address
	 */
	event UpdatedGovernance(address indexed caller, address governance);

	/**
	 * @dev Emitted when the management address is updated
	 * @param caller Address of the account that called the function
	 * @param management New management address
	 */
	event UpdatedManagement(address indexed caller, address management);

	/**
	 * @dev Emitted when the guardian address is updated
	 * @param caller Address of the account that called the function
	 * @param guardian New guardian address
	 */
	event UpdatedGuardian(address indexed caller, address guardian);

	/**
	 * @dev Returns a storage pointer to the GovernanceStorage struct
	 * @return gs Storage pointer to GovernanceStorage
	 */
	function governanceStorage() private pure returns (GovernanceStorage storage gs) {
		bytes32 position = GOVERNANCE_STORAGE_POSITION;
		assembly {
			gs.slot := position
		}
	}

	/**
	 * @dev Initializes the governance structure with provided addresses
	 * @param vaultAddress Address of the vault
	 * @param governanceAddress Address of the governance
	 * @param managementAddress Address of the management
	 * @param guardianAddress Address of the guardian
	 */
	function initializeGovernance(address vaultAddress, address governanceAddress, address managementAddress, address guardianAddress) external {
		vaultAddress.requireNonZeroAddress();
		governanceAddress.requireNonZeroAddress();
		managementAddress.requireNonZeroAddress();
		guardianAddress.requireNonZeroAddress();
		GovernanceStorage storage _storage = governanceStorage();
		_storage.vault.isNotAlreadyInitialized();
		_storage.vault = vaultAddress;
		_storage.governance = governanceAddress;
		_storage.management = managementAddress;
		_storage.guardian = guardianAddress;
	}

	/**
	 * @dev Returns the address of the vault
	 * @return Address of the vault
	 */
	function vault() public view returns (address) {
		return governanceStorage().vault;
	}

	/**
	 * @dev Returns the address of the governance
	 * @return Address of the governance
	 */
	function governance() public view returns (address) {
		return governanceStorage().governance;
	}

	/**
	 * @dev Returns the address of the management
	 * @return Address of the management
	 */
	function management() public view returns (address) {
		return governanceStorage().management;
	}

	/**
	 * @dev Returns the address of the guardian
	 * @return Address of the guardian
	 */
	function guardian() public view returns (address) {
		return governanceStorage().guardian;
	}

	/**
	 * @dev Sets a new governance address
	 * @param _governance New governance address
	 */
	function setGovernance(address _governance) external {
		onlyGovernance();
		_governance.requireNonZeroAddress();
		governanceStorage().governance = _governance;
		emit UpdatedGovernance(msg.sender, _governance);
	}

	/**
	 * @dev Sets a new management address
	 * @param _management New management address
	 */
	function setManagement(address _management) external {
		onlyGovernance();
		_management.requireNonZeroAddress();
		governanceStorage().management = _management;
		emit UpdatedManagement(msg.sender, _management);
	}

	/**
	 * @dev Sets a new guardian address
	 * @param _guardian New guardian address
	 */
	function setGuardian(address _guardian) external {
		onlyGovernance();
		_guardian.requireNonZeroAddress();
		governanceStorage().guardian = _guardian;
		emit UpdatedGuardian(msg.sender, _guardian);
	}

	/**
	 * @dev Modifier to restrict access to only the vault
	 */
	function onlyVault() external view {
		if (msg.sender != governanceStorage().vault) {
			revert DynaVaultErrors.NotAuthorized();
		}
	}

	/**
	 * @dev Modifier to restrict access to only the governance
	 */
	function onlyGovernance() public view {
		if (msg.sender != governanceStorage().governance) {
			revert DynaVaultErrors.NotAuthorized();
		}
	}

	/**
	 * @dev Checks if the given address is the governance
	 * @param user Address to check
	 */
	function checkGovernance(address user) public view {
		if (user != governanceStorage().governance) {
			revert DynaVaultErrors.NotAuthorized();
		}
	}

	/**
	 * @dev Modifier to restrict access to only the governance or a specific strategy
	 * @param strategy Address of the strategy
	 */
	function onlyGovernanceOrStrategy(address strategy) public view {
		if (!(msg.sender == governanceStorage().governance || msg.sender == strategy)) {
			revert DynaVaultErrors.NotAuthorized();
		}
	}

	/**
	 * @dev Modifier to restrict access to only the management or governance
	 */
	function onlyManagementOrGovernance() external view {
		GovernanceStorage storage _storage = governanceStorage();
		if (!(msg.sender == _storage.governance || msg.sender == _storage.management)) {
			revert DynaVaultErrors.NotAuthorized();
		}
	}

	/**
	 * @dev Modifier to restrict access to only the vault or management
	 */
	function onlyVaultOrManagement() external view {
		GovernanceStorage storage _storage = governanceStorage();
		if (!(msg.sender == _storage.vault || msg.sender == _storage.management)) {
			revert DynaVaultErrors.NotAuthorized();
		}
	}

	/**
	 * @dev Checks if the given address is the management or governance
	 * @param user Address to check
	 */
	function checkManagementOrGovernance(address user) external view {
		GovernanceStorage storage _storage = governanceStorage();
		if (!(user == _storage.governance || user == _storage.management)) {
			revert DynaVaultErrors.NotAuthorized();
		}
	}

	/**
	 * @dev Modifier to restrict access to only addresses authorized for emergency actions
	 */
	function onlyEmergencyAuthorized() external view {
		GovernanceStorage storage _storage = governanceStorage();
		if (!(msg.sender == _storage.management || msg.sender == _storage.governance || msg.sender == _storage.guardian)) {
			revert DynaVaultErrors.NotAuthorized();
		}
	}
}
