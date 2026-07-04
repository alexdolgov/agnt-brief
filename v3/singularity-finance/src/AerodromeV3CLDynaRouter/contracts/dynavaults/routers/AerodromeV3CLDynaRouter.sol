// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";
import {SqrtPriceMath} from "@uniswap/v3-core/contracts/libraries/SqrtPriceMath.sol";
import "../interfaces/thirdparty/aerodrome/ICLPool.sol";
import "../interfaces/thirdparty/aerodrome/ICLFactory.sol";
import "./BaseDynaRouter.sol";
import "../interfaces/IMetaDynaRouterAPI.sol";
import "../interfaces/thirdparty/aerodrome/ISwapRouter.sol";
import "../utils/Clonable.sol";
import "../utils/Checks.sol";

/**
 * @title Aerodrome V3 DynaRouter
 * @notice This supports multi-hop swaps in Aerodrome V3 style routers
 * @notice You can configure a general defaultTickSpacing for automatic route building when undefined
 */
contract AerodromeV3CLDynaRouter is BaseDynaRouter, Clonable {
	using Checks for address;
	using SafeERC20 for IERC20;

	bytes32[] private UNDEFINED_ROUTE = new bytes32[](0);
	uint256 private constant FEE_PRECISION = 1e6;

	address public aerodromeCLFactory;
	address public swapRouter;
	address public wrappedNative;
	int24 public defaultTickSpacing;

	struct RouteStep {
		address tokenIn;
		address tokenOut;
		int24 tickSpacing;
	}

	struct PoolState {
		uint160 sqrtPriceX96;
		uint128 liquidity;
		int24 tickSpacing;
		uint24 fee;
		bool isSwapFromFirstToSecondToken;
	}

	mapping(address => mapping(address => int24)) public defaultTickSpacingForPair;
	mapping(address => mapping(address => bool)) public directRoute;

	error IncorrectPath();

	/**
	 * @notice Initializes the contract
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param swapRouterAddress The address of the swap router
	 * @param aerodromeCLFactoryAddress The address of the aerodrome CL factory
	 * @param wrappedNativeAddress The address of the wrapped native token
	 */
	function initialize(address swapRouterAddress, address aerodromeCLFactoryAddress, address wrappedNativeAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		swapRouter.isNotAlreadyInitialized();
		swapRouterAddress.requireNonZeroAddress();
		aerodromeCLFactoryAddress.requireNonZeroAddress();
		wrappedNativeAddress.requireNonZeroAddress();
		swapRouter = swapRouterAddress;
		aerodromeCLFactory = aerodromeCLFactoryAddress;
		wrappedNative = wrappedNativeAddress;
		defaultTickSpacing = 100;
	}

	/**
	 * @notice Set the default  tick spacing
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param newTickSpacing The new default tick spacing value
	 */
	function setDefaultTickSpacing(int24 newTickSpacing) external onlyRole(DEFAULT_ADMIN_ROLE) {
		defaultTickSpacing = newTickSpacing;
	}

	/**
	 * @notice Set a direct route for a token
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param tokenIn The address of the token in
	 * @param tokenOut The address of the token out
	 * @param hasDirectRoute Indicates if the token pair has a direct route
	 */
	function setDirectRoute(address tokenIn, address tokenOut, bool hasDirectRoute) external onlyRole(DEFAULT_ADMIN_ROLE) {
		directRoute[tokenIn][tokenOut] = hasDirectRoute;
		directRoute[tokenOut][tokenIn] = hasDirectRoute;
	}

	/**
	 * @notice Retrieves the liquidity of a Aerodrome V3 pool for a specified token pair and fee tier.
	 * @dev The function queries the Aerodrome V3 Factory for the pool address corresponding to the given tokens and fee.
	 * If the pool exists, it returns an array containing the liquidity (token balances) held by the pool.
	 * If the pool does not exist (i.e., the returned address is zero), an array with default zero values is returned.
	 *
	 * @param firstToken The address of the first token in the pool.
	 * @param secondToken The address of the second token in the pool.
	 * @param tickSpacing The tickSpacing of the pool.
	 * @return liquidity A two-element array where:
	 *         - liquidity[0] is the balance of the first token argument.
	 *         - liquidity[1] is the balance of the second token argument.
	 */
	function lookupPoolLiquidity(address firstToken, address secondToken, int24 tickSpacing) external view returns (uint256[] memory liquidity) {
		liquidity = new uint256[](2);
		address pool = ICLFactory(aerodromeCLFactory).getPool(firstToken, secondToken, tickSpacing);
		if (pool != address(0)) {
			liquidity[0] = IERC20(firstToken).balanceOf(pool);
			liquidity[1] = IERC20(secondToken).balanceOf(pool);
		}
	}

	/**
	 * @notice Encodes a route
	 * @param route Array of RouteSteps in the swap path
	 * @return previewRoute The encoded pool
	 */
	function encodePreviewRoute(RouteStep[] memory route) public view returns (bytes32[] memory previewRoute) {
		previewRoute = new bytes32[](route.length);
		for (uint256 i = 0; i < route.length; ++i) {
			RouteStep memory step = route[i];
			address pool = ICLFactory(aerodromeCLFactory).getPool(step.tokenIn, step.tokenOut, step.tickSpacing);
			previewRoute[i] = bytes32(uint256(uint160(pool)));
		}
	}

	/**
	 * @notice Decodes a route
	 * @param previewRoute The encoded pool
	 * @return path The decoded pool addresses of the swap route
	 */
	function decodePreviewRoute(bytes32[] memory previewRoute) public pure returns (address[] memory path) {
		path = new address[](previewRoute.length);
		for (uint256 i = 0; i < previewRoute.length; ++i) {
			path[i] = address(uint160(uint256(previewRoute[i])));
		}
	}

	/**
	 * @notice Previews swap between tokens
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The encoded swap data
	 */
	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		return previewSwapRoute(tokenIn, amountIn, tokenOut, UNDEFINED_ROUTE);
	}

	/**
	 * @notice Previews swap between tokens using a specified route
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @param previewRoute The route to be used
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The encoded swap data
	 */
	function previewSwapRoute(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		bytes32[] memory previewRoute
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		address[] memory path = (previewRoute.length != 0) ? decodePreviewRoute(previewRoute) : _buildPath(tokenIn, tokenOut);
		PoolState memory state;

		address currentTokenIn = tokenIn;

		for (uint256 i = 0; i < path.length; ++i) {
			// Load pool state
			address pool = path[i];
			address token0 = ICLPool(pool).token0();
			bool isSwapFromFirstToSecond = currentTokenIn == token0;

			state.isSwapFromFirstToSecondToken = isSwapFromFirstToSecond;
			state.sqrtPriceX96 = _safeGetSlot0(pool);
			state.liquidity = ICLPool(pool).liquidity();
			state.tickSpacing = ICLPool(pool).tickSpacing();
			state.fee = ICLPool(pool).fee();

			// use route step expected amount out as new amount in
			amountIn = calculateSingleHopOutput(state, amountIn);

			// set up next token
			currentTokenIn = isSwapFromFirstToSecond ? ICLPool(pool).token1() : token0;
		}

		amountOut = amountIn;
		router = address(this);
		swapData = _encodeSwapData(path);
	}

	/**
	 * @notice Calculates the output amount for a single hop swap
	 * @dev Optimized single-hop output calculation using SqrtPriceMath
	 * @param state Pool state containing price, liquidity, tick spacing, and fee information
	 * @param amountIn The amount of input tokens
	 * @return The expected amount of output tokens after fees
	 */
	function calculateSingleHopOutput(PoolState memory state, uint256 amountIn) private pure returns (uint256) {
		uint160 nextPrice = SqrtPriceMath.getNextSqrtPriceFromInput(state.sqrtPriceX96, state.liquidity, amountIn, state.isSwapFromFirstToSecondToken);

		uint256 output = state.isSwapFromFirstToSecondToken
			? SqrtPriceMath.getAmount1Delta(nextPrice, state.sqrtPriceX96, state.liquidity, true)
			: SqrtPriceMath.getAmount0Delta(state.sqrtPriceX96, nextPrice, state.liquidity, true);
		// Inline fee calculation
		unchecked {
			return (output * (FEE_PRECISION - state.fee)) / FEE_PRECISION;
		}
	}

	/**
	 * @notice Swaps between tokens
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @param minAmountOut The minimum amount out expected
	 * @param to The address of the receiver
	 * @param swapData The encoded swap data
	 */
	function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, address to, bytes32[] memory swapData) external override {
		address[] memory path = _decodeSwapData(swapData);
		IERC20(tokenIn).transferFrom(msg.sender, address(this), amountIn);
		_approveTokenIfNeeded(tokenIn, swapRouter, amountIn);
		if (path.length == 1) {
			int24 tickSpacing = ICLPool(path[0]).tickSpacing();
			ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
				tokenIn: tokenIn,
				tokenOut: tokenOut,
				tickSpacing: tickSpacing,
				recipient: to,
				deadline: block.timestamp,
				amountIn: amountIn,
				amountOutMinimum: minAmountOut,
				sqrtPriceLimitX96: 0
			});
			ISwapRouter(swapRouter).exactInputSingle(params);
		} else {
			// Build path for multi-hop swap
			bytes memory encodedPath = abi.encodePacked(tokenIn);
			address currentTokenIn = tokenIn;
			address currentTokenOut;
			for (uint256 i = 0; i < path.length; i++) {
				address pool = path[i];
				int24 tickSpacing = ICLPool(pool).tickSpacing();
				address token0 = ICLPool(pool).token0();
				address token1 = ICLPool(pool).token1();
				currentTokenOut = (token0 == currentTokenIn) ? token1 : token0;

				encodedPath = abi.encodePacked(encodedPath, tickSpacing, currentTokenOut);
				currentTokenIn = currentTokenOut;
			}
			if (currentTokenOut != tokenOut) revert IncorrectPath();
			// Perform multi-hop swap
			ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
				path: encodedPath,
				recipient: to,
				deadline: block.timestamp,
				amountIn: amountIn,
				amountOutMinimum: minAmountOut
			});
			ISwapRouter(swapRouter).exactInput(params);
		}
	}

	/**
	 * @notice Set the default tick spacing for a pair of tokens
	 * @param base The address of the base token
	 * @param quote The address of the quote token
	 * @param tickSpacing The default tick spacing for this token pair
	 */ function setDefaultTickSpacingForPair(address base, address quote, int24 tickSpacing) external onlyRole(DEFAULT_ADMIN_ROLE) {
		defaultTickSpacingForPair[base][quote] = tickSpacing;
		defaultTickSpacingForPair[quote][base] = tickSpacing;
	}

	/**
	 * @notice Encodes the swap data
	 * @param path The token path for the swap
	 * @return swapData The encoded path
	 */
	function _encodeSwapData(address[] memory path) internal pure returns (bytes32[] memory swapData) {
		uint256 length = path.length;
		swapData = new bytes32[](length);
		for (uint256 i = 0; i < length; ++i) {
			swapData[i] = bytes32(uint256(uint160(path[i])));
		}
		return swapData;
	}

	/**
	 * @notice Decodes the swap data
	 * @param swapData The encoded path
	 * @return path The token path for the swap
	 */
	function _decodeSwapData(bytes32[] memory swapData) internal pure returns (address[] memory path) {
		uint256 length = swapData.length;
		path = new address[](length);
		for (uint256 i = 0; i < length; ++i) {
			path[i] = address(uint160(uint256(swapData[i])));
		}
		return path;
	}

	/**
	 * @notice Builds the swap path
	 * @param tokenIn The tokenIn for the swap
	 * @param tokenOut The tokenOut for the swap
	 * @return path The encoded path of pool addresses
	 */
	function _buildPath(address tokenIn, address tokenOut) internal view returns (address[] memory path) {
		int24 tickSpacing;
		bool hasDirectRoute = (tokenIn == wrappedNative || tokenOut == wrappedNative || directRoute[tokenIn][tokenOut]);
		path = new address[](hasDirectRoute ? 1 : 2);
		if (hasDirectRoute) {
			tickSpacing = (defaultTickSpacingForPair[tokenIn][tokenOut] != 0) ? defaultTickSpacingForPair[tokenIn][tokenOut] : defaultTickSpacing;
			path[0] = ICLFactory(aerodromeCLFactory).getPool(tokenIn, tokenOut, tickSpacing);
		} else {
			tickSpacing = (defaultTickSpacingForPair[tokenIn][wrappedNative] != 0) ? defaultTickSpacingForPair[tokenIn][wrappedNative] : defaultTickSpacing;
			path[0] = ICLFactory(aerodromeCLFactory).getPool(tokenIn, wrappedNative, tickSpacing);

			tickSpacing = (defaultTickSpacingForPair[wrappedNative][tokenOut] != 0) ? defaultTickSpacingForPair[wrappedNative][tokenOut] : defaultTickSpacing;
			path[1] = ICLFactory(aerodromeCLFactory).getPool(wrappedNative, tokenOut, tickSpacing);
		}
	}

	/**
	 * @notice Fetches the slot0 info in a safe way to avoid reverts
	 * @param pool The pool address
	 * @return sqrtPriceX96 The square root price
	 */
	function _safeGetSlot0(address pool) private view returns (uint160 sqrtPriceX96) {
		(bool success, bytes memory data) = pool.staticcall(abi.encodeWithSignature("slot0()"));

		if (!success || data.length != 192) {
			revert("Failed to read slot0()");
		}

		// slot0 returns 6 fields: uint160, int24, uint16, uint16, uint16, bool
		// Total size: 160+24+16+16+16+8 = 240 bits, but padded to 192 bytes in ABI encoding
		(sqrtPriceX96, , , , , ) = abi.decode(data, (uint160, int24, uint16, uint16, uint16, bool));
	}
}
