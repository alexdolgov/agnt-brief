// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "../interfaces/DynaRouterMetaAPI.sol";
import "./BaseDynaRouter.sol";

import "hardhat/console.sol";

contract DynaRouter is BaseDynaRouter {
	address public metaRouter;

	error MissingMetaRouterAddress();

	/**
	 * @notice Gets the DynaRouter registry address
	 * @return routerRegistry The address of the DynaRouter registry
	 */
	function getRegistry() external view returns (address routerRegistry) {
		return DynaRouterMetaAPI(metaRouter).routerRegistry();
	}

	/**
	 * @notice Sets the dyna router meta address
	 * @dev Only the owner can set the meta router
	 * @param metaRouterAddress The address of the dyna router meta
	 */
	function setMetaRouter(address metaRouterAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (metaRouterAddress == address(0)) revert MissingMetaRouterAddress();
		metaRouter = metaRouterAddress;
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @dev We only give estimations for conversions to or from bpts
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view override returns (uint256 amountOut) {
		if (tokenIn == tokenOut) return amountIn;
		amountOut = DynaRouterMetaAPI(metaRouter).estimateConversion(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Previews swap between tokens
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The swap data with the token path
	 */
	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		(amountOut, router, swapData) = DynaRouterMetaAPI(metaRouter).previewSwap(tokenIn, amountIn, tokenOut);
		return (amountOut, router, swapData);
	}

	/**
	 * @notice Swaps between tokens
	 * @dev We use the vault router instead of the given
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @param minAmountOut The minimum amount of tokens to receive
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapData The swap data with the token path
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
	) external override {
		_approveTokenIfNeeded(tokenIn, router, amountIn);
		DynaRouterAPI(router).swap(tokenIn, amountIn, tokenOut, minAmountOut, router, from, to, swapData);
	}
}
