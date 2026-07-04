// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface INativeDynaRouterAPI {
	function getSpender() external view returns (address spender);

	function spenderAllowance(address token) external view returns (uint256 allowance);

	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view returns (uint256 amountOut);

	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) external view returns (uint256 amountOut, address router, bytes32[] memory swapData);

	function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, address to, bytes32[] memory swapData) external payable;
}
