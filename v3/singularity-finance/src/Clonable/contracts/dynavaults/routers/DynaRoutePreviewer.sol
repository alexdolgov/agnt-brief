// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "../interfaces/IDynaRouterAPI.sol";
import "../interfaces/IDynaRouterRegistryAPI.sol";
import "../utils/Checks.sol";
import "../utils/Clonable.sol";

contract DynaRoutePreviewer is Clonable{
	using Checks for address;

	address private routerRegistry;

	event UpdatedRouterRegistry(address newDynaRouterRegistry);

	function setRouterRegistry(address routerRegistryAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		routerRegistryAddress.requireNonZeroAddress();
		routerRegistry = routerRegistryAddress;
		emit UpdatedRouterRegistry(routerRegistryAddress);
	}

	function getBestRoute(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) external view returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		IDynaRouterRegistryAPI.Route[] memory routes = IDynaRouterRegistryAPI(routerRegistry).getPairRoutes(tokenIn, tokenOut);

		uint256 numRoutes = routes.length;

		for (uint256 i = 0; i < numRoutes; ++i) {
			(uint256 amountOutRoute, , bytes32[] memory swapDataRoute) = IDynaRouterAPI(routes[i].router).previewSwapRoute(
				tokenIn,
				amountIn,
				tokenOut,
				routes[i].route
			);

			if (amountOutRoute > amountOut) {
				amountOut = amountOutRoute;
				router = routes[i].router;
				swapData = swapDataRoute;
			}
		}
	}
}
