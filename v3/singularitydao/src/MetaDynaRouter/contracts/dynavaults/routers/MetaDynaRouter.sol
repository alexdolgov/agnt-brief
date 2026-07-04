// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/DynaRouterAPI.sol";
import "../interfaces/MetaDynaRouterAPI.sol";
import "../interfaces/NativeDynaRouterAPI.sol";
import "../interfaces/MultiTokenDynaRouterAPI.sol";
import "../interfaces/DynaRouterRegistryAPI.sol";

/**
 * @title Meta DynaRouter
 * @notice This supports calling of general, native and multi-token style DynaRouters
 * @notice This supports connectors to route over multiple DynaRouters in a single transaction
 * @notice This uses the DynaRouter Registry to use the default router for a pair when no route has been specified
 */
contract MetaDynaRouter is MetaDynaRouterAPI, AccessControl {
	using SafeERC20 for IERC20;

	address public constant USE_NATIVE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
	address public routerRegistry;

	error ArrayMismatch();
	error IncorrectNativeAmountIn();

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	receive() external payable {}

	/**
	 * @notice Sets the router registry
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param registryAddress The address of the router registry
	 */
	function setRouterRegistry(address registryAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		routerRegistry = registryAddress;
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view returns (uint256 amountOut) {
		address[] memory routers = DynaRouterRegistryAPI(routerRegistry).getPairRouters(tokenIn, tokenOut);
		amountOut = DynaRouterAPI(routers[0]).estimateConversion(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut allowing wrapping native token
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversionNative(address tokenIn, uint256 amountIn, address tokenOut) external view returns (uint256 amountOut) {
		address[] memory routers = DynaRouterRegistryAPI(routerRegistry).getNativeRouters();
		amountOut = NativeDynaRouterAPI(routers[0]).estimateConversion(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Estimate proportional conversion of a pool or vault token
	 * @param tokensIn The addresses of the tokensIn
	 * @param amountsIn The amounts of tokensIn
	 * @param tokensOut The addresses of the tokensOut
	 * @return amountsOut Estimates of tokens returned
	 */
	function estimateConversionMulti(
		address[] memory tokensIn,
		uint256[] memory amountsIn,
		address[] memory tokensOut
	) external view returns (uint256[] memory amountsOut) {
		address router = DynaRouterRegistryAPI(routerRegistry).getMultiTokenRouters()[0];
		amountsOut = MultiTokenDynaRouterAPI(router).estimateConversion(tokensIn, amountsIn, tokensOut);
	}

	/**
	 * @notice Estimate conversions of tokens using connectors
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param connectors List of connectors to use
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversionConnectors(address tokenIn, uint256 amountIn, Connector[] memory connectors) external view returns (uint256 amountOut) {
		uint256 numConnectors = connectors.length;
		for (uint256 i = 0; i < numConnectors; ++i) {
			amountIn = DynaRouterAPI(connectors[i].router).estimateConversion(tokenIn, amountIn, connectors[i].tokenOut);
			tokenIn = connectors[i].tokenOut;
		}
		amountOut = amountIn;
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
	) external view returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		router = DynaRouterRegistryAPI(routerRegistry).getPairRouters(tokenIn, tokenOut)[0];
		(amountOut, , swapData) = DynaRouterAPI(router).previewSwap(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Previews swap between tokens allowing wrapping of native token
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The encoded swap data
	 */
	function previewSwapNative(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) external view returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		router = DynaRouterRegistryAPI(routerRegistry).getNativeRouters()[0];
		(amountOut, , swapData) = NativeDynaRouterAPI(router).previewSwap(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Previews swapping between pools and tokens
	 * @param tokensIn The addresses of tokensIn
	 * @param amountsIn The amounts of tokensIn
	 * @param tokensOut The addresses of tokensOut
	 * @return amountsOut A preview of tokens received from swap
	 * @return router The address of the selected router
	 * @return swapData The encoded swapDatas
	 */
	function previewSwapMulti(
		address[] memory tokensIn,
		uint256[] memory amountsIn,
		address[] memory tokensOut
	) external view returns (uint256[] memory amountsOut, address router, bytes32[] memory swapData) {
		router = DynaRouterRegistryAPI(routerRegistry).getMultiTokenRouters()[0];
		(amountsOut, , swapData) = MultiTokenDynaRouterAPI(router).previewSwap(tokensIn, amountsIn, tokensOut);
	}

	/**
	 * @notice Previews swap between tokens using connectors
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param connectors List of connectors to use for swap
	 * @param amountIn The amount of tokenIn
	 * @return amountOut An estimate of tokens received from swap
	 * @return swapDataList The encoded swapDatas
	 */
	function previewSwapConnectors(
		address tokenIn,
		uint256 amountIn,
		Connector[] memory connectors
	) external view override returns (uint256 amountOut, bytes32[][] memory swapDataList) {
		uint256 nrOfConnectors = connectors.length;
		swapDataList = new bytes32[][](nrOfConnectors);
		Connector memory connector;
		for (uint256 i = 0; i < nrOfConnectors; ++i) {
			connector = connectors[i];
			if (connector.route.length != 0)
				(amountIn, , swapDataList[i]) = DynaRouterAPI(connector.router).previewSwapRoute(tokenIn, amountIn, connector.tokenOut, connector.route);
			else (amountIn, , swapDataList[i]) = DynaRouterAPI(connector.router).previewSwap(tokenIn, amountIn, connector.tokenOut);
			tokenIn = connector.tokenOut;
		}
		amountOut = amountIn;
	}

	/**
	 * @notice Swaps between tokens
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @param minAmountOut The minimum amount out expected
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapData The encoded swap data
	 */
	function swap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		uint256 minAmountOut,
		address router,
		address from,
		address to,
		bytes32[] memory swapData
	) external {
		DynaRouterAPI(router).swap(tokenIn, amountIn, tokenOut, minAmountOut, router, from, to, swapData);
	}

	/**
	 * @notice Swaps between tokens allowing wrapping of native token
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @param minAmountOut The minimum amount out expected
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapData The encoded swap data
	 */
	function swapNative(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		uint256 minAmountOut,
		address router,
		address from,
		address to,
		bytes32[] memory swapData
	) external payable {
		NativeDynaRouterAPI(router).swap{value: msg.value}(tokenIn, amountIn, tokenOut, minAmountOut, router, from, to, swapData);
	}

	/**
	 * @notice Swaps between tokens
	 * @param tokensIn The addresses of tokensIn
	 * @param amountsIn The amounts of tokensIn
	 * @param tokensOut The addresses of tokensOut
	 * @param minAmountsOut The minimum amounts out expected
	 * @param router The address of the selected router
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapData The encoded swapData
	 */
	function swapMulti(
		address[] memory tokensIn,
		uint256[] memory amountsIn,
		address[] memory tokensOut,
		uint256[] memory minAmountsOut,
		address router,
		address from,
		address to,
		bytes32[] memory swapData
	) external {
		MultiTokenDynaRouterAPI(router).swap(tokensIn, amountsIn, tokensOut, minAmountsOut, router, from, to, swapData);
	}

	/**
	 * @notice Swaps between tokens using connectors
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param connectors List of connectors to use for swap
	 * @param minAmountsOut The minimum amounts out expected
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapDatas The encoded swapDatas
	 */
	function swapConnectors(
		address tokenIn,
		uint256 amountIn,
		Connector[] memory connectors,
		uint256[] memory minAmountsOut,
		address from,
		address to,
		bytes32[][] memory swapDatas
	) external payable {
		if (tokenIn != USE_NATIVE) IERC20(tokenIn).safeTransferFrom(from, address(this), amountIn);
		else if (msg.value != amountIn) revert IncorrectNativeAmountIn();
		uint256 numConnectors = connectors.length;
		if (numConnectors != swapDatas.length) revert ArrayMismatch();
		for (uint256 i = 0; i < numConnectors; ++i) {
			uint256 balanceBefore = connectors[i].tokenOut == USE_NATIVE ? address(this).balance : IERC20(connectors[i].tokenOut).balanceOf(address(this));
			if (tokenIn != USE_NATIVE) {
				uint256 allowanceIn = IERC20(tokenIn).allowance(address(this), connectors[i].router);
				if (allowanceIn < amountIn) IERC20(tokenIn).approve(connectors[i].router, amountIn - allowanceIn);
			}
			NativeDynaRouterAPI(connectors[i].router).swap{value: tokenIn == USE_NATIVE ? msg.value : 0}(
				tokenIn,
				amountIn,
				connectors[i].tokenOut,
				minAmountsOut[i],
				connectors[i].router,
				address(this),
				address(this),
				swapDatas[i]
			);
			amountIn = connectors[i].tokenOut == USE_NATIVE
				? address(this).balance - balanceBefore
				: IERC20(connectors[i].tokenOut).balanceOf(address(this)) - balanceBefore;
			tokenIn = connectors[i].tokenOut;
		}
		if (tokenIn != USE_NATIVE) IERC20(tokenIn).safeTransfer(to, amountIn);
		else payable(to).transfer(amountIn);
	}
}
