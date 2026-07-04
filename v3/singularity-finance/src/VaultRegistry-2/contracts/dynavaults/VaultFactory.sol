// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./VaultRegistry.sol";
import "./utils/Clonable.sol";
import "./interfaces/IDynaVaultAPI.sol";
import "./interfaces/IVaultManagerAPI.sol";

/// @title vault factory
contract VaultFactory is Ownable {
	bytes32 private constant PERMISSION_ADMIN = keccak256("PERMISSION_ADMIN");

	address public vaultRegistry;
	address public vaultImplementation;
	address public permissionedVaultImplementation;
	address public vaultManagerImplementation;
	address public vaultSimulatorImplementation;

	event CreatedVault(address indexed caller, address newVault);

	/**
	 * @notice Sets address of vault implementation
	 * @param vaultImplementationAddress The address of the vault implementation
	 */
	function setVaultImplementation(address vaultImplementationAddress) external onlyOwner {
		vaultImplementation = vaultImplementationAddress;
	}

	/**
	 * @notice Sets address of permissioned vault implementation
	 * @param permissionedVaultImplementationAddress The address of the permissioned vault implementation
	 */
	function setPermissionedVaultImplementation(address permissionedVaultImplementationAddress) external onlyOwner {
		permissionedVaultImplementation = permissionedVaultImplementationAddress;
	}

	/**
	 * @notice Sets the address of the vault manager implementation
	 * @param vaultManagerImplementationAddress The address of the vault manager implementation
	 */
	function setVaultManagerImplementation(address vaultManagerImplementationAddress) external onlyOwner {
		vaultManagerImplementation = vaultManagerImplementationAddress;
	}

	/**
	 * @notice Sets the address of the vault simulator implementation
	 * @param vaultSimulatorImplementationAddress The address of the vault simulator implementation
	 */
	function setVaultSimulatorImplementation(address vaultSimulatorImplementationAddress) external onlyOwner {
		vaultSimulatorImplementation = vaultSimulatorImplementationAddress;
	}

	/**
	 * @notice Sets vault registry address
	 * @param vaultRegistryAddress The address of the vault registry
	 */
	function setVaultRegistry(address vaultRegistryAddress) external onlyOwner {
		vaultRegistry = vaultRegistryAddress;
	}

	/**
	 * @notice Initializes vault parameters
	 * @param  name The name of vault
	 * @param  symbol The symbol of vault
	 * @param  asset The address of the deposit token
	 * @param  governance The address of the governance
	 * @param  management The address of the management
	 * @param  guardian The address of the guardian
	 * @param  managementFeeWallet The address of the management fee wallet
	 * @param  performanceFeeWallet The address of the performance fee wallet
	 * @param  referenceAssetOracle The address of the reference asset oracle
	 * @param  dynaRouterRegistry The address of the DynaRouter registry
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
		address dynaRouterRegistry
	) external onlyOwner returns (IDynaVaultAPI) {
		address vault = Clonable(vaultImplementation).clone(address(this));
		address manager = Clonable(vaultManagerImplementation).clone(address(this));
		address simulator = Clonable(vaultSimulatorImplementation).clone(address(this));
		IVaultManagerAPI(manager).initialize(vault, asset, governance, management, guardian, managementFeeWallet, performanceFeeWallet, msg.sender);
		IDynaVaultAPI(vault).initialize(name, symbol, manager, referenceAssetOracle, dynaRouterRegistry, msg.sender, simulator);
		VaultRegistry(vaultRegistry).registerVault(vault);
		emit CreatedVault(msg.sender, vault);
		return IDynaVaultAPI(vault);
	}

	/**
	 * @notice Initializes vault parameters
	 * @param  name The name of vault
	 * @param  symbol The symbol of vault
	 * @param  asset The address of the deposit token
	 * @param  governance The address of the governance
	 * @param  management The address of the management
	 * @param  guardian The address of the guardian
	 * @param  managementFeeWallet The address of the management fee wallet
	 * @param  performanceFeeWallet The address of the performance fee wallet
	 * @param  referenceAssetOracle The address of the reference asset oracle
	 * @param  dynaRouterRegistry The address of the DynaRouter registry
	 */
	function initPermissionedVault(
		string memory name,
		string memory symbol,
		address asset,
		address governance,
		address management,
		address guardian,
		address managementFeeWallet,
		address performanceFeeWallet,
		address referenceAssetOracle,
		address dynaRouterRegistry
	) external onlyOwner returns (IDynaVaultAPI) {
		address vault = Clonable(permissionedVaultImplementation).clone(address(this));
		address manager = Clonable(vaultManagerImplementation).clone(address(this));
		address simulator = Clonable(vaultSimulatorImplementation).clone(address(this));
		IVaultManagerAPI(manager).initialize(vault, asset, governance, management, guardian, managementFeeWallet, performanceFeeWallet, msg.sender);
		IDynaVaultAPI(vault).initialize(name, symbol, manager, referenceAssetOracle, dynaRouterRegistry, msg.sender, simulator);
		VaultRegistry(vaultRegistry).registerVault(vault);
		emit CreatedVault(msg.sender, vault);
		return IDynaVaultAPI(vault);
	}
}
