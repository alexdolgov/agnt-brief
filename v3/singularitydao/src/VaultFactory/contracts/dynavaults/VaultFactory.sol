// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./VaultRegistry.sol";
import "./utils/Clonable.sol";
import "./interfaces/DynaVaultAPI.sol";
import "./interfaces/VaultManagerAPI.sol";

// vault factory
contract VaultFactory is Ownable {
	address public vaultRegistry;
	address public vaultImplementation;
	address public vaultManagerImplementation;
	address public vaultSimulatorImplementation;

	event CreatedVault(address indexed caller, address newVault);

	/**
	 * @notice sets address of vault implementation
	 * @param vaultImplementationAddress address of the vault implementation
	 */
	function setVaultImplementation(address vaultImplementationAddress) external onlyOwner {
		vaultImplementation = vaultImplementationAddress;
	}

	/**
	 * @notice sets the address of the vault manager implementation
	 * @param vaultManagerImplementationAddress address of the vault manager implementation
	 */
	function setVaultManagerImplementation(address vaultManagerImplementationAddress) external onlyOwner {
		vaultManagerImplementation = vaultManagerImplementationAddress;
	}

	/**
	 * @notice sets the address of the vault simulator implementation
	 * @param vaultSimulatorImplementationAddress address of the vault simulator implementation
	 */
	function setVaultSimulatorImplementation(address vaultSimulatorImplementationAddress) external onlyOwner {
		vaultSimulatorImplementation = vaultSimulatorImplementationAddress;
	}

	/**
	 * @notice sets vault registry address
	 * @param vaultRegistryAddress address of the vault registry
	 */
	function setVaultRegistry(address vaultRegistryAddress) external onlyOwner {
		vaultRegistry = vaultRegistryAddress;
	}
	/**
	 * @notice initializes vault parameters
	 * @param  name name of vault
	 * @param  symbol symbol of vault
	 * @param  asset deposit token
	 * @param  governance address of governance
	 * @param  management address of management
	 * @param  guardian address of guardian
	 * @param  managementFeeWallet address of management fee wallet
	 * @param  performanceFeeWallet address of performance fee wallet
	 * @param  referenceAssetOracle address of reference asset oracle
	 * @param  dynaRouter address of dyna router
	 */
	function initVault(
		string memory name,
		string memory symbol,
		address asset,
		address governance,
		address management,
		address guardian,
		address managementFeeWallet,
		address performanceFeeWallet,
		address referenceAssetOracle,
		address dynaRouter
	) external onlyOwner returns (DynaVaultAPI) {
		address vault = Clonable(vaultImplementation).clone(address(this));
		address manager = Clonable(vaultManagerImplementation).clone(address(this));
		address simulator = Clonable(vaultSimulatorImplementation).clone(address(this));
		VaultManagerAPI(manager).initialize(vault, asset, governance, management, guardian, managementFeeWallet, performanceFeeWallet, msg.sender);
		DynaVaultAPI(vault).initialize(name, symbol, manager, referenceAssetOracle, dynaRouter, msg.sender, simulator);
		VaultRegistry(vaultRegistry).registerVault(vault);
		emit CreatedVault(msg.sender, vault);
		return DynaVaultAPI(vault);
	}
}
