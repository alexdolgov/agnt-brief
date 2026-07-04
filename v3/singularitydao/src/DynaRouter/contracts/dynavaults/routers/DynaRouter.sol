// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./BaseDynaRouter.sol";
import "../interfaces/MetaDynaRouterAPI.sol";

/**
 * @title Default DynaRouter
 * @notice This routes over the default registered routers for usage from inside DynaVault contracts
 **/
contract DynaRouter is BaseDynaRouter {
	address public metaRouter;

	error MissingMetaRouterAddress();

	/**
	 * @notice Gets the DynaRouter registry address
	 * @return routerRegistry The address of the DynaRouter registry
	 */
	function getRegistry() external view returns (address routerRegistry) {
		return MetaDynaRouterAPI(metaRouter).routerRegistry();
	}

	/**
	 * @notice Sets the meta router address
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param metaRouterAddress The address of the meta router
	 */
	function setMetaRouter(address metaRouterAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (metaRouterAddress == address(0)) revert MissingMetaRouterAddress();
		metaRouter = metaRouterAddress;
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view override returns (uint256 amountOut) {
		if (tokenIn == tokenOut) return amountIn;
		amountOut = MetaDynaRouterAPI(metaRouter).estimateConversion(tokenIn, amountIn, tokenOut);
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
		(amountOut, router, swapData) = MetaDynaRouterAPI(metaRouter).previewSwap(tokenIn, amountIn, tokenOut);
		return (amountOut, router, swapData);
	}

	/**
	 * @notice Swaps between tokens
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @param minAmountOut The minimum amount out expected
	 * @param router The address of the selected router
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
	) external override {
		DynaRouterAPI(router).swap(tokenIn, amountIn, tokenOut, minAmountOut, router, from, to, swapData);
	}
}
