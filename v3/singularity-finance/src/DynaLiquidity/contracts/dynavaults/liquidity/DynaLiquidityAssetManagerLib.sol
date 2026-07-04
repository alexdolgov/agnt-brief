// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "../utils/Clonable.sol";
import "../interfaces/DynaLiquidityProxyAssetManagerAPI.sol";
import "../interfaces/DynaLiquidityAssetManagerAPI.sol";

library DynaLiquidityAssetManagerLib {
	/// @dev The storage slot follows EIP1967 to avoid storage collision
	bytes32 private constant LIQUIDITY_AsSET_MANAGER_STORAGE_POSITION = bytes32(uint256(keccak256("DynaLiquidity.LiquidityAssetManagerStorage")) - 1);
	bytes32 private constant LIQUIDITY_GOVERNANCE = keccak256("LIQUIDITY_GOVERNANCE");
	bytes32 private constant ASSET_MANAGEMENT = keccak256("ASSET_MANAGEMENT");

	struct LiquidityAssetManagerStorage {
		address proxyAssetManagerImplementation;
	}

	event UpdatedDynaLiquidityAssetManager(address tokenAddress, address assetManager);

	error MissingProxyAssetManagerImplementation();

	/**
	 * @notice returns the liquidity storage
	 * @return lams storage pointer for accessing the state variables
	 */
	function liquidityAssetManagerStorage() private pure returns (LiquidityAssetManagerStorage storage lams) {
		bytes32 position = LIQUIDITY_AsSET_MANAGER_STORAGE_POSITION;
		assembly {
			lams.slot := position
		}
	}

	/**
	 * @notice Initializes the asset manager library
	 * @param proxyAssetManagerImplementationAddress The address of the proxy asset manager implementation
	 */
	function initialize(address proxyAssetManagerImplementationAddress) external {
		if (proxyAssetManagerImplementationAddress == address(0)) revert MissingProxyAssetManagerImplementation();
		liquidityAssetManagerStorage().proxyAssetManagerImplementation = proxyAssetManagerImplementationAddress;
	}

	/**
	 * @notice Gets a new proxy implementation of the asset manager
	 * @return newProxyAssetManager The address of the new proxy asset manager implementation
	 */
	function getNewProxyAssetManager() external returns (address) {
		address proxyAssetManagerImplementationAddress = liquidityAssetManagerStorage().proxyAssetManagerImplementation;
		address newInstance = address(Clonable(proxyAssetManagerImplementationAddress).getClone());
		return newInstance;
	}

	function initializeProxyAssetManager(
		address proxyAssetManager,
		address vault,
		bytes32 poolId,
		address asset,
		address liquidityGovernance,
		address liquidityManagement
	) external {
		DynaLiquidityProxyAssetManagerAPI(proxyAssetManager).initialize(vault, poolId, asset, liquidityGovernance, liquidityManagement);
	}

	function invest(address assetManager, uint256 amount) external {
		DynaLiquidityAssetManagerAPI(assetManager).invest(amount);
	}

	function liquidate(address assetManager, uint256 amount) external {
		DynaLiquidityAssetManagerAPI(assetManager).liquidate(amount);
	}

	/**
	 * @notice Returns the address of the proxy asset manger implementation
	 * @return proxyAssetManager The address of the proxy asset manager implementation
	 */
	function proxyAssetManagerImplementation() external view returns (address) {
		return liquidityAssetManagerStorage().proxyAssetManagerImplementation;
	}
}
