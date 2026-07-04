// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "../interfaces/IDynaRouterRegistryAPI.sol";
/**
 * @title DynaRouter Registry
 * @notice Registers routers used in the DynaRouter framework with type specification.
 * DynaRouters by default need to implement ERC20 to ERC20 conversions which can be a swap/zap/wrap action.
 * DynaRouters can implement the native interface which is encoded with 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE address
 * DynaRouters can implement the multi token interface which can support either multi-token in or out
 * DynaRouters can be registered as a token router, pair router or even specify the specific routes to be used in a router
 */
contract DynaRouterRegistry is IDynaRouterRegistryAPI, AccessControl {
	address[] public allRouters;
	address[] public enabledRouters;
	address[] public nativeRouters;
	address[] public multiTokenRouters;

	mapping(address => bool) public enabled;
	mapping(address => uint256) private enabledIndex;
	mapping(address => address[]) public tokenRouters; // specific routers for a token fx. balancer zapper or vault zapper
	mapping(address => mapping(address => address[])) public pairRouters; // specific routers for a pair
	mapping(address => mapping(address => Route[])) public pairRoutes; // specific routes for a pair

	event UpdatedAllRouters(address[] newRouters);
	event AddedRouters(address[] newRouters);
	event UpdatedNativeRouters(address[] newRouters);
	event UpdatedTokenRouters(address token, address[] newRouters);
	event UpdatedMultiTokenRouters(address[] newRouters);
	event UpdatedPairRouters(address tokenIn, address tokenOut, address[] newRouters);
	event AddedPairRoute(address tokenIn, address tokenOut, Route newRoute);
	event AddedDirectionalPairRoute(address tokenIn, address tokenOut, Route newRoute);
	event UpdatedRouterEnabled(address router, bool isEnabled);

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	/**
	 * @notice Register routers
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param newRouters The addresses of the routers
	 */
	function setAllRouters(address[] memory newRouters) external onlyRole(DEFAULT_ADMIN_ROLE) {
		allRouters = newRouters;
		emit UpdatedAllRouters(newRouters);
	}

	/**
	 * @notice Adds and enables new routers
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param newRouters The addresses of the routers
	 */
	function addRouters(address[] memory newRouters, bool enableRouters) external onlyRole(DEFAULT_ADMIN_ROLE) {
		uint256 numberOfRouters = newRouters.length;
		for (uint256 i = 0; i < numberOfRouters; ++i) {
			allRouters.push(newRouters[i]);
			setEnableRouter(newRouters[i], enableRouters);
		}
		emit AddedRouters(newRouters);
	}

	/**
	 * @notice Sets the native routers
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param newRouters The addresses of the routers
	 */
	function setNativeRouters(address[] memory newRouters) external onlyRole(DEFAULT_ADMIN_ROLE) {
		nativeRouters = newRouters;
		emit UpdatedNativeRouters(newRouters);
	}

	/**
	 * @notice Sets the token routers
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param token The address of the token
	 * @param newRouters The addresses of the routers
	 */
	function setTokenRouters(address token, address[] memory newRouters) external onlyRole(DEFAULT_ADMIN_ROLE) {
		tokenRouters[token] = newRouters;
		emit UpdatedTokenRouters(token, newRouters);
	}

	/**
	 * @notice Sets the multi token routers
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param newRouters The addresses of the routers
	 */
	function setMultiTokenRouters(address[] memory newRouters) external onlyRole(DEFAULT_ADMIN_ROLE) {
		multiTokenRouters = newRouters;
		emit UpdatedMultiTokenRouters(newRouters);
	}

	/**
	 * @notice Sets the router to use for a specific token
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param tokenIn The address of the token
	 * @param tokenOut The address of the token
	 * @param newRouters The addresses of the routers
	 */
	function setPairRouters(address tokenIn, address tokenOut, address[] memory newRouters) external onlyRole(DEFAULT_ADMIN_ROLE) {
		pairRouters[tokenIn][tokenOut] = newRouters;
		pairRouters[tokenOut][tokenIn] = newRouters;
		emit UpdatedPairRouters(tokenIn, tokenOut, newRouters);
	}

	/**
	 * @notice Adds a bidirectional route to use for a specific token pair
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param tokenIn The address of the token
	 * @param tokenOut The address of the token
	 * @param newRoute The address of the new route to be added
	 */
	function addPairRoute(address tokenIn, address tokenOut, Route memory newRoute) external onlyRole(DEFAULT_ADMIN_ROLE) {
		pairRoutes[tokenIn][tokenOut].push(newRoute);
		pairRoutes[tokenOut][tokenIn].push(newRoute);
		emit AddedPairRoute(tokenIn, tokenOut, newRoute);
	}

	/**
	 * @notice Adds a route to use for a specific token pair only for the specified direction
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param tokenIn The address of the token
	 * @param tokenOut The address of the token
	 * @param newRoute The address of the new route to be added
	 */
	function addDirectionalPairRoute(address tokenIn, address tokenOut, Route memory newRoute) external onlyRole(DEFAULT_ADMIN_ROLE) {
		pairRoutes[tokenIn][tokenOut].push(newRoute);
		emit AddedDirectionalPairRoute(tokenIn, tokenOut, newRoute);
	}

	/**
	 * @notice Get the enabled state of a router
	 * @param router The router address
	 * @return isEnabled Router active state
	 */
	function getEnabledRouter(address router) external view returns (bool isEnabled) {
		return enabled[router];
	}

	/**
	 * @notice Toggle the active state of a router
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param router The router address
	 * @param isEnabled Router active state
	 */
	function setEnableRouter(address router, bool isEnabled) public onlyRole(DEFAULT_ADMIN_ROLE) {
		if (!enabled[router] && isEnabled) {
			enabledRouters.push(router);
			enabled[router] = isEnabled;
			enabledIndex[router] = enabledRouters.length - 1;
		}
		if (enabled[router] && !isEnabled) {
			uint256 lastIndex = enabledRouters.length - 1;
			uint256 routerIndex = enabledIndex[router];
			address lastRouter = enabledRouters[lastIndex];
			enabled[router] = false;
			enabledRouters[routerIndex] = lastRouter;
			enabledRouters.pop();
			enabledIndex[router] = 0;
			enabledIndex[lastRouter] = routerIndex;
		}
		emit UpdatedRouterEnabled(router, isEnabled);
	}

	/**
	 * @notice Returns all the registered routers
	 * @return allRouters The addresses of all the routers
	 */
	function getAllRouters() public view override returns (address[] memory) {
		return allRouters;
	}

	/**
	 * @notice Returns array of the enabled routers
	 * @return enabledRouters The addresses of the enabled routers
	 */
	function getEnabledRouters() external view returns (address[] memory) {
		return enabledRouters;
	}

	/**
	 * @notice Returns the registered router for a token
	 * @param token The address of the token
	 * @return selectedRouter The address of the selected token routers
	 */
	function getTokenRouter(address token, uint256 index) external view override returns (address selectedRouter) {
		return tokenRouters[token][index];
	}

	/**
	 * @notice Returns the registered router for a token
	 * @param token The address of the token
	 * @return defaultRouter The address of the default token routers
	 */
	function getDefaultTokenRouter(address token) external view override returns (address defaultRouter) {
		return tokenRouters[token][0];
	}

	/**
	 * @notice Returns the registered router for a token
	 * @param token The address of the token
	 * @return selectedRouters The addresses of the token routers
	 */
	function getTokenRouters(address token) external view override returns (address[] memory selectedRouters) {
		return tokenRouters[token];
	}

	/**
	 * @notice Returns the registered router for a token
	 * @return defaultRouter The address of the default multi token router
	 */
	function getDefaultMultiTokenRouter() external view override returns (address defaultRouter) {
		return multiTokenRouters[0];
	}

	/**
	 * @notice Returns the registered multi token routers
	 * @return selectedRouters The addresses of the multi token routers
	 */
	function getMultiTokenRouters() external view override returns (address[] memory selectedRouters) {
		return multiTokenRouters;
	}

	/**
	 * @notice Returns the default router to use for native swaps aka. wrapping
	 * @return defaultRouter The address of the default native router
	 */
	function getDefaultNativeRouter() external view override returns (address defaultRouter) {
		return nativeRouters[0];
	}

	/**
	 * @notice Returns the registered routers to use for native swaps aka. wrapping
	 * @return selectedRouters The addresses of the native routers
	 */
	function getNativeRouters() external view override returns (address[] memory selectedRouters) {
		return nativeRouters;
	}

	/**
	 * @notice Returns the registered router for a token pair
	 * @param tokenIn The address of the tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return selectedRouter The address of the selected token routers
	 */
	function getPairRouter(address tokenIn, address tokenOut, uint256 index) external view override returns (address selectedRouter) {
		return pairRouters[tokenIn][tokenOut][index];
	}

	/**
	 * @notice Returns the registered routers for a pair
	 * @param tokenIn The address of the tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return selectedRouters The addresses of the pair routers
	 */
	function getPairRouters(address tokenIn, address tokenOut) external view override returns (address[] memory selectedRouters) {
		selectedRouters = pairRouters[tokenIn][tokenOut];
		if (selectedRouters.length != 0 && selectedRouters[0] != address(0)) return selectedRouters;
		// if we don't have a path then we must check if one of the tokens needs a specific router fx. vault shares or a bpt
		selectedRouters = tokenRouters[tokenIn];
		if (selectedRouters.length != 0 && selectedRouters[0] != address(0)) return selectedRouters;
		selectedRouters = tokenRouters[tokenOut];
		if (selectedRouters.length != 0 && selectedRouters[0] != address(0)) return selectedRouters;
		selectedRouters = allRouters;
	}

	/**
	 * @notice Returns the registered routes for a pair
	 * @param tokenIn The address of the token In
	 * @param tokenOut The address of the tokenOut
	 * @return selectedRoutes The addresses of the pair routes
	 */
	function getPairRoutes(address tokenIn, address tokenOut) external view override returns (Route[] memory selectedRoutes) {
		selectedRoutes = pairRoutes[tokenIn][tokenOut];
	}

	/**
	 * @notice Returns the registered routes for a pair
	 * @param tokenIn The address of the token In
	 * @param tokenOut The address of the tokenOut
	 * @return defaultRoute The addresses of the pair routes
	 */
	function getDefaultPairRoute(address tokenIn, address tokenOut) external view returns (Route memory defaultRoute) {
		Route[] memory routes = pairRoutes[tokenIn][tokenOut];
		if (routes.length != 0) return routes[0];
		if (defaultRoute.router == address(0)) defaultRoute.router = getDefaultPairRouter(tokenIn, tokenOut);
	}

	/**
	 * @notice Returns the default router for a pair if any
	 * @param tokenIn The address of the tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return defaultRouter The address of the pair router
	 */
	function getDefaultPairRouter(address tokenIn, address tokenOut) public view override returns (address defaultRouter) {
		address[] memory selectedRouters = pairRouters[tokenIn][tokenOut];
		if (selectedRouters.length != 0 && selectedRouters[0] != address(0)) return selectedRouters[0];
		// if we don't have a path then we must check if one of the tokens needs a specific router fx. vault shares or a bpt
		selectedRouters = tokenRouters[tokenIn];
		if (selectedRouters.length != 0 && selectedRouters[0] != address(0)) return selectedRouters[0];
		selectedRouters = tokenRouters[tokenOut];
		if (selectedRouters.length != 0 && selectedRouters[0] != address(0)) return selectedRouters[0];
		defaultRouter = allRouters[0];
	}
}
