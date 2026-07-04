// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/DynaRouterRegistryAPI.sol";
import "../interfaces/DynaRouterMetaAPI.sol";
import "../interfaces/DynaRouterAPI.sol";
import "../interfaces/DynaRouterNativeAPI.sol";
import "../interfaces/DynaRouterMultiTokenAPI.sol";

import "hardhat/console.sol";

/**
 * @title DynaRouterMeta
 * @notice This works as the parent router of the framwork delegating calls to  other dyna router implementations.
 */
contract DynaRouterMeta is DynaRouterMetaAPI, AccessControl {
	address public constant USE_NATIVE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

	using SafeERC20 for IERC20;

	address public routerRegistry;

	error ArrayMisMatch();
	error IncorrectNativeAmountIn();

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	/**
	 * @notice Sets the router registry
	 * @dev Can only be called by default admin role
	 * @param registryAddress The address of the router registry
	 */
	function setRouterRegistry(address registryAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		routerRegistry = registryAddress;
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param tokenIn The address of the token in
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token out
	 * @return amountOut An estimate of tokenOut received from swap
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view returns (uint256 amountOut) {
		address[] memory routers = DynaRouterRegistryAPI(routerRegistry).getPairRouters(tokenIn, tokenOut);
		console.log("estimateConversion : routers: %s", routers[0]);
		amountOut = DynaRouterAPI(routers[0]).estimateConversion(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @dev We use a specified address to flag if we are wrappping
	 * @param tokenIn The address of the token in
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token out
	 * @return amountOut An estimate of tokenOut received from swap
	 */
	function estimateConversionNative(address tokenIn, uint256 amountIn, address tokenOut) external view returns (uint256 amountOut) {
		address[] memory routers = DynaRouterRegistryAPI(routerRegistry).getNativeRouters();
		amountOut = DynaRouterNativeAPI(routers[0]).estimateConversion(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Estimate proportional conversion of a pool or vault token
	 * @param tokensIn The address of the token in
	 * @param amountsIn The amount of tokenIn
	 * @param tokensOut The address of the token out
	 * @return amountsOut An estimate of tokens received from swap
	 */
	function estimateConversionMulti(
		address[] memory tokensIn,
		uint256[] memory amountsIn,
		address[] memory tokensOut
	) external view returns (uint256[] memory amountsOut) {
		address router = DynaRouterRegistryAPI(routerRegistry).getMultiTokenRouters()[0];
		amountsOut = DynaRouterMultiTokenAPI(router).estimateConversion(tokensIn, amountsIn, tokensOut);
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param connectors List of connectors to use for swap
	 * @param amountIn The amount of tokenIn
	 * @return amountOut An estimate of tokenOut received from swap
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
	 * @notice Previews swapping tokens
	 * @notice Uses the first router for tokenIn!
	 * @param amountIn The amount of tokenIn
	 * @return amountOut A preview of tokens received from swap
	 * @return router The address of the selected router
	 * @return swapData The swap data with the token path
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
	 * @notice Previews swap between bpts and tokens
	 * @param amountIn The amount of tokenIn
	 * @return amountOut A preview of tokens received from swap
	 * @return router The address of the selected router
	 * @return swapData The swap data with the token path
	 */
	function previewSwapNative(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) external view returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		router = DynaRouterRegistryAPI(routerRegistry).getNativeRouters()[0];
		(amountOut, , swapData) = DynaRouterNativeAPI(router).previewSwap(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Previews swap between bpts and tokens
	 * @param amountsIn The amount of tokenIn
	 * @return amountsOut A preview of tokens received from swap
	 * @return router The address of the selected router
	 * @return swapData The swap data with the token path
	 */
	function previewSwapMulti(
		address[] memory tokensIn,
		uint256[] memory amountsIn,
		address[] memory tokensOut
	) external view returns (uint256[] memory amountsOut, address router, bytes32[] memory swapData) {
		router = DynaRouterRegistryAPI(routerRegistry).getMultiTokenRouters()[0];
		(amountsOut, , swapData) = DynaRouterMultiTokenAPI(router).previewSwap(tokensIn, amountsIn, tokensOut);
	}

	/**
	 * @notice Previews swapping tokens
	 * @notice uses the first router for tokenIn!
	 * @param connectors List of connectors to use for swap
	 * @param amountIn The amount of tokenIn
	 * @return amountOut An estimate of tokens received from swap
	 * @return swapDataList The swap datas with the token paths
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
			console.log("previewSwapConnectors  :  connector.router: ", connector.router, connector.route.length);
			if (connector.route.length != 0) {
				(amountIn, , swapDataList[i]) = DynaRouterAPI(connector.router).previewSwapRoute(tokenIn, amountIn, connector.tokenOut, connector.route);
			} else {
				(amountIn, , swapDataList[i]) = DynaRouterAPI(connector.router).previewSwap(tokenIn, amountIn, connector.tokenOut);
			}
			tokenIn = connector.tokenOut;
		}
		amountOut = amountIn;
	}

	/**
	 * @notice Swaps between bpts and tokens
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapData The swapData containing the path
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
	 * @notice Swaps between bpts and tokens
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapData The swapData containing the path
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
		DynaRouterNativeAPI(router).swap{value: msg.value}(tokenIn, amountIn, tokenOut, minAmountOut, router, from, to, swapData);
	}

	/**
	 * @notice Swaps between bpts and tokens
	 * @param tokensIn The address of the tokenIn
	 * @param amountsIn The amount of tokenIn
	 * @param tokensOut The address of the token wanted
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapData The swapData containing the path
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
		DynaRouterMultiTokenAPI(router).swap(tokensIn, amountsIn, tokensOut, minAmountsOut, router, from, to, swapData);
	}

	/**
	 * @notice Swaps using connectors
	 * @param connectors List of connectors to use for swap
	 * @param amountIn The amount of the first tokenIn
	 * @param minAmountsOut The min amount out for each swap
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapDatas The swapDatas containing the path for each swap
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
		// get tokenIn required for swaps
		if (tokenIn != USE_NATIVE) {
			IERC20(tokenIn).safeTransferFrom(from, address(this), amountIn);
		} else {
			if (msg.value != amountIn) revert IncorrectNativeAmountIn();
		}
		// swap connectors
		uint256 numConnectors = connectors.length;
		if (numConnectors != swapDatas.length) revert ArrayMisMatch();
		for (uint256 i = 0; i < numConnectors; ++i) {
			uint256 balanceBefore = connectors[i].tokenOut == USE_NATIVE ? address(this).balance : IERC20(connectors[i].tokenOut).balanceOf(address(this));
			console.log("swapConnectors %s -> %s balanceBefore: %s", tokenIn, connectors[i].tokenOut, balanceBefore);
			uint256 allowanceIn = IERC20(tokenIn).allowance(address(this), connectors[i].router);
			console.log("tokenIn: %s allowanceIn: %s amountIn: %s", tokenIn, allowanceIn, amountIn);
			if (allowanceIn < amountIn) {
				IERC20(tokenIn).approve(connectors[i].router, amountIn - allowanceIn);
			}
			DynaRouterNativeAPI(connectors[i].router).swap{value: tokenIn == USE_NATIVE ? msg.value : 0}(
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
			console.log("tokenOut %s has increased by (new amountIn): %s", connectors[i].tokenOut, amountIn);
			tokenIn = connectors[i].tokenOut;
		}
		// transfer amountOut to destination
		if (tokenIn != USE_NATIVE) {
			IERC20(tokenIn).safeTransfer(to, amountIn);
		} else {
			payable(to).transfer(amountIn);
		}
	}
}
