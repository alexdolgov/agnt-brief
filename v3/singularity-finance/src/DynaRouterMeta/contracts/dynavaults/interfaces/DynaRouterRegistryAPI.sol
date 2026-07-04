// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface DynaRouterRegistryAPI {
	struct Route {
		address router;
		bytes32[] route;
	}

	function getAllRouters() external view returns (address[] memory selectedRouters);

	function getEnabledRouter(address router) external view returns (bool isEnabled);

	function getEnabledRouters() external view returns (address[] memory selectedRouters);

	function getNativeRouters() external view returns (address[] memory selectedRouters);

	function getTokenRouters(address tokenIn) external view returns (address[] memory selectedRouters);

	function getMultiTokenRouters() external view returns (address[] memory selectedRouters);

	function getPairRouters(address tokenIn, address tokenOut) external view returns (address[] memory selectedRouters);

	function getPairRoutes(address tokenIn, address tokenOut) external view returns (Route[] memory selectedRoutes);

	function getDefaultPairRouter(address tokenIn, address tokenOut) external view returns (address defaultRouter);
}
