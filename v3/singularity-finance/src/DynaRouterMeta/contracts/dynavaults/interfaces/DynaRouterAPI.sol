// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface DynaRouterAPI {
	function getSpender() external view returns (address);

	function spenderAllowance(address selectedRouter, address token) external view returns (address spender, uint256 allowed);

	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view returns (uint256 amountOut);

	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) external view returns (uint256 amountOut, address router, bytes32[] memory swapData);

	function previewSwapRoute(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		bytes32[] memory previewRoute
	) external view returns (uint256 amountOut, address router, bytes32[] memory swapData);

	function swap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		uint256 minAmountOut,
		address router,
		address from,
		address to,
		bytes32[] memory swapData
	) external;
}
