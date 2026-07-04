// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./MinimalBalancerAPI.sol";

interface DynaLiquidityAPI {
	function LIQUIDITY_GOVERNANCE() external pure returns (bytes32);

	function setupLiquidity(
		address managedPoolFactoryAddress,
		address proxyAssetManagerImplementationAddress,
		address liquidityGovernance,
		address liquidityManagement,
		address feeManager,
		address aumFeeRecipient
	) external;

	function createManagedPool(string memory name, string memory symbol, ManagedPoolSettingsParams memory settingsParams, bytes32 salt) external;

	function proxyAssetManagerImplementation() external view returns (address);

	function tokens() external view returns (address[] memory assetsWithBPT);

	function tokensAndBalances() external view returns (address[] memory tokensWithBpt, uint256[] memory tokenBalances);

	function poolId() external view returns (bytes32);

	function vault() external view returns (address);

	function pool() external view returns (address);

	function getCurrentWeights() external view returns (uint256[] memory);

	function getGradualWeightUpdateParams()
		external
		view
		returns (uint256 startTime, uint256 endTime, uint256[] memory startWeights, uint256[] memory endWeights);

	function getAssetManager(address tokenAddress) external view returns (uint256 managedAmount, address proxyAssetManager);

	function getSwapEnabled() external view returns (bool);

	function setSwapEnabled(bool swapEnabled) external;

	function liquidate(address tokenAddress, uint256 amount) external;

	function invest(address tokenAddress, uint256 amount) external;
}
