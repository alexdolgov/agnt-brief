// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./BaseDynaRouter.sol";
import "../utils/Clonable.sol";
import "../interfaces/thirdparty/velodrome/IPool.sol";
import "../interfaces/thirdparty/velodrome/IRouter.sol";
import "../utils/Checks.sol";

/**
 * @title Aerodrome DynaRouter
 * @notice This supports multi-hop, volatile/stable pairs and Aerodrome Factories
 */
contract AerodromeDynaRouter is BaseDynaRouter, Clonable {
	using Checks for address;
	using SafeERC20 for IERC20;

	bytes32[] private UNDEFINED_ROUTE = new bytes32[](0);
	bytes32 private constant SWAPDATA_STABLE_POOL = bytes32(bytes1(uint8(1)));
	bytes32 private constant SWAPDATA_VOLATILE_POOL = bytes32(bytes1(uint8(0)));

	address public aerodromeRouter;
	address public defaultFactory;

	error WrongTokenOut();
	error WrongSwapData();

	/**
	 * @notice Initializes the vault zapper
	 * @param routerAddress The address of the aerodrome router
	 * @param defaultFactoryAddress The address of the default aerodrome factory to use
	 */
	function initialize(address routerAddress, address defaultFactoryAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		aerodromeRouter.isNotAlreadyInitialized();
		routerAddress.requireNonZeroAddress();
		defaultFactoryAddress.requireNonZeroAddress();
		aerodromeRouter = routerAddress;
		defaultFactory = defaultFactoryAddress;
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view override returns (uint256 amountOut) {
		if (tokenIn == tokenOut) return amountIn;
		IRouter.Route[] memory routes = _selectRoute(tokenIn, tokenOut, UNDEFINED_ROUTE);
		uint256[] memory expectedOutput = IRouter(aerodromeRouter).getAmountsOut(amountIn, routes);
		amountOut = expectedOutput[1];
	}

	/**
	 * @notice Encodes a route
	 * @param routes The routes
	 * @return previewRoutes The encoded routes
	 */
	function encodePreviewRoute(IRouter.Route[] memory routes) public pure returns (bytes32[] memory previewRoutes) {
		return _encodeSwapData(routes);
	}

	/**
	 * @notice Decodes the swap routes
	 * @param previewRoutes The encoded pool
	 * @return routes The decoded address of the pool
	 */
	function decodePreviewRoute(bytes32[] memory previewRoutes) public pure returns (IRouter.Route[] memory routes) {
		return _decodeSwapData(previewRoutes);
	}

	/**
	 * @notice Previews swap between tokens
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The encoded swap data
	 */
	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		IRouter.Route[] memory routes = _selectRoute(tokenIn, tokenOut, UNDEFINED_ROUTE);
		router = address(this);
		swapData = _encodeSwapData(routes);
		amountOut = _previewSwapWithRoute(amountIn, routes);
	}

	/**
	 * @notice Previews swap between tokens using a specified route
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @param previewRoutes The routes to be used
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The encoded swap data
	 */
	function previewSwapRoute(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		bytes32[] memory previewRoutes
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		IRouter.Route[] memory routes = _selectRoute(tokenIn, tokenOut, previewRoutes);
		router = address(this);
		swapData = previewRoutes;
		amountOut = _previewSwapWithRoute(amountIn, routes);
	}

	/**
	 * @notice Swaps between tokens
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param minAmountOut The minimum amount of tokenOut to receive
	 * @param to The address of the receiver
	 * @param swapData The encoded swap data
	 */
	function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, address to, bytes32[] memory swapData) external override {
		IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
		_approveTokenIfNeeded(tokenIn, aerodromeRouter, amountIn);
		IRouter.Route[] memory routes = _selectRoute(tokenIn, tokenOut, swapData);
		if (tokenOut != routes[routes.length - 1].to) revert WrongTokenOut();
		IRouter(aerodromeRouter).swapExactTokensForTokens(amountIn, minAmountOut, routes, to, block.timestamp);
	}

	/**
	 * @notice Previews swap between tokens using a specified route
	 * @param amountIn The amount of tokenIn
	 * @param routes The routes to be used
	 * @return amountOut An estimate of tokens returned
	 */
	function _previewSwapWithRoute(uint256 amountIn, IRouter.Route[] memory routes) private view returns (uint256 amountOut) {
		uint256[] memory expectedOutput = IRouter(aerodromeRouter).getAmountsOut(amountIn, routes);
		amountOut = expectedOutput[routes.length];
	}

	/**
	 * @notice Select a pool for swapping
	 * @param tokenIn The address fo the tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @param swapData The encoded routes
	 * @return routes The pool address
	 */
	function _selectRoute(address tokenIn, address tokenOut, bytes32[] memory swapData) private view returns (IRouter.Route[] memory routes) {
		uint256 numberOfRoutes = swapData.length / 4;
		if (numberOfRoutes != 0) {
			routes = new IRouter.Route[](numberOfRoutes);
			routes = _decodeSwapData(swapData);
		} else {
			routes = new IRouter.Route[](1);
			routes[0] = IRouter.Route(tokenIn, tokenOut, false, defaultFactory); // default to volatile
		}
	}

	/**
	 * @notice Encodes swap data
	 * @param routes The swap route
	 * @return swapData The encoded swap data
	 */
	function _encodeSwapData(IRouter.Route[] memory routes) private pure returns (bytes32[] memory swapData) {
		uint256 numberOfRoutes = routes.length;
		swapData = new bytes32[](numberOfRoutes * 4);
		for (uint256 i = 0; i < numberOfRoutes; ++i) {
			uint256 baseIndex = i * 4;
			swapData[baseIndex] = bytes32(bytes20(routes[i].from));
			swapData[baseIndex + 1] = bytes32(bytes20(routes[i].to));
			swapData[baseIndex + 2] = routes[i].stable ? SWAPDATA_STABLE_POOL : SWAPDATA_VOLATILE_POOL;
			swapData[baseIndex + 3] = bytes32(bytes20(routes[i].factory));
		}
	}

	/**
	 * @notice Encodes swap data
	 * @param swapData The encoded swap data
	 * @return routes The swap route
	 */
	function _decodeSwapData(bytes32[] memory swapData) private pure returns (IRouter.Route[] memory routes) {
		uint256 swapDataLength = swapData.length;
		if (swapDataLength != 0) {
			if (swapDataLength % 4 != 0) revert WrongSwapData();
			uint256 numberOfRoutes = swapDataLength / 4;
			routes = new IRouter.Route[](numberOfRoutes);
			for (uint256 i = 0; i < numberOfRoutes; ++i) {
				uint256 baseIndex = i * 4;
				IRouter.Route memory route;
				route.from = address(bytes20(swapData[baseIndex]));
				route.to = address(bytes20(swapData[baseIndex + 1]));
				route.stable = (swapData[baseIndex + 2] == SWAPDATA_STABLE_POOL);
				route.factory = address(bytes20(swapData[baseIndex + 3]));
				routes[i] = route;
			}
		}
	}
}
