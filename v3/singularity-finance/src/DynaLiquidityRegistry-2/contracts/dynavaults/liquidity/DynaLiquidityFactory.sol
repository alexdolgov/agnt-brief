// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./DynaLiquidityRegistry.sol";
import "../utils/Clonable.sol";
import "../interfaces/DynaLiquidityAPI.sol";
import "../interfaces/MinimalBalancerAPI.sol";

/**
 * @title DynaLiquidity Factory
 */
contract DynaLiquidityFactory is AccessControl {
	bytes32 public constant FACTORY_GOVERNANCE = keccak256(abi.encode("FACTORY_GOVERNANCE"));
	bytes32 public constant FACTORY_USER = keccak256(abi.encode("FACTORY_USER"));

	uint256 private constant DEFAULT_SWAP_FEE_PERCENTAGE = 0.30e16; // 0.30%
	bool private constant DEFAULT_SWAP_ENABLED_ON_START = true;
	bool private constant DEFAULT_MUST_ALLOWLIST_LPS = true;
	uint256 private constant DEFAULT_AUM_FEE_PERCENTAGE = 0.0e18; // 0.00% default Assets Under Management Fee
	uint256 private constant BALANCER_AUM_FEE_ID = 3; // Assets Under Management Fee ID

	address public dynaLiquidityRegistry;
	address public dynaLiquidityImplementation;
	address public managedPoolFactory;
	address public proxyAssetManagerImplementation;

	event CreatedDynaLiquidity(address indexed caller, address newDynaLiquidity);

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
		_grantRole(FACTORY_GOVERNANCE, msg.sender);
		_grantRole(FACTORY_USER, msg.sender);
	}

	error MissingAddress();

	/**
	 * @notice sets dynaLiquidity registry address
	 * @param dynaLiquidityRegistryAddress address of the dynaLiquidity registry
	 */
	function setDynaLiquidityRegistry(address dynaLiquidityRegistryAddress) external onlyRole(FACTORY_GOVERNANCE) {
		if (dynaLiquidityRegistryAddress == address(0)) revert MissingAddress();
		dynaLiquidityRegistry = dynaLiquidityRegistryAddress;
	}

	/**
	 * @notice sets address of dynaLiquidity implementation
	 * @param dynaLiquidityImplementationAddress address of the dynaLiquidity implementation
	 */
	function setDynaLiquidityImplementation(address dynaLiquidityImplementationAddress) external onlyRole(FACTORY_GOVERNANCE) {
		if (dynaLiquidityImplementationAddress == address(0)) revert MissingAddress();
		dynaLiquidityImplementation = dynaLiquidityImplementationAddress;
	}

	/**
	 * @notice sets address of the managed pool factory
	 * @param managedPoolFactoryAddress address of the managed pool factory
	 */
	function setManagedPoolFactory(address managedPoolFactoryAddress) external onlyRole(FACTORY_GOVERNANCE) {
		if (managedPoolFactoryAddress == address(0)) revert MissingAddress();
		managedPoolFactory = managedPoolFactoryAddress;
	}

	/**
	 * @notice sets address of the asset manager proxy implementation
	 * @param proxyAssetManagerImplementationAddress address of the asset manager proxy implementation
	 */
	function setProxyAssetManagerImplementation(address proxyAssetManagerImplementationAddress) external onlyRole(FACTORY_GOVERNANCE) {
		if (proxyAssetManagerImplementationAddress == address(0)) revert MissingAddress();
		proxyAssetManagerImplementation = proxyAssetManagerImplementationAddress;
	}

	/**
	 * @notice initializes dynaLiquidity parameters
	 * @param name The name of the dynaLiquidity instance
	 * @param symbol The symbol of the dynaLiquidity
	 * @param tokenAddresses Array of the pool tokens
	 * @param tokenWeights Array of the pool token weights
	 * @param liquidityGovernance The address of the liquidity govnernance
	 * @param liquidityManagement The address of the liquidity management
	 * @param feeManager The address of the fee manager
	 * @param feeRecipient The address of the fee recipient
	 * @param salt Salt
	 * @return dynaLiquidity An instance of DynaLiquidity
	 */
	function initDynaLiquidity(
		string memory name,
		string memory symbol,
		address[] memory tokenAddresses,
		uint256[] memory tokenWeights,
		address liquidityGovernance,
		address liquidityManagement,
		address feeManager,
		address feeRecipient,
		bytes32 salt
	) external onlyRole(FACTORY_USER) returns (DynaLiquidityAPI) {
		address dynaLiquidity = Clonable(dynaLiquidityImplementation).clone(address(this));
		AccessControl(dynaLiquidity).grantRole(DynaLiquidityAPI(dynaLiquidity).LIQUIDITY_GOVERNANCE(), address(this));
		DynaLiquidityAPI(dynaLiquidity).setupLiquidity(
			managedPoolFactory,
			proxyAssetManagerImplementation,
			liquidityGovernance,
			liquidityManagement,
			feeManager,
			feeRecipient
		);
		ManagedPoolSettingsParams memory settingsParams = ManagedPoolSettingsParams({
			tokens: tokenAddresses,
			normalizedWeights: tokenWeights,
			swapFeePercentage: DEFAULT_SWAP_FEE_PERCENTAGE,
			swapEnabledOnStart: DEFAULT_SWAP_ENABLED_ON_START,
			mustAllowlistLPs: DEFAULT_MUST_ALLOWLIST_LPS,
			managementAumFeePercentage: DEFAULT_AUM_FEE_PERCENTAGE,
			aumFeeId: BALANCER_AUM_FEE_ID
		});
		DynaLiquidityAPI(dynaLiquidity).createManagedPool(name, symbol, settingsParams, salt);
		DynaLiquidityRegistry(dynaLiquidityRegistry).registerDynaLiquidity(dynaLiquidity, DynaLiquidityRegistry.DynaLiquidityType.BALANCER_V2);
		emit CreatedDynaLiquidity(msg.sender, dynaLiquidity);
		return DynaLiquidityAPI(dynaLiquidity);
	}
}
