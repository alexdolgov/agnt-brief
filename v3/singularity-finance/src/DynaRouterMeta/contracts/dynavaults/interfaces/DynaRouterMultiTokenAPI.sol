// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface DynaRouterMultiTokenAPI {
	function getSpender() external view returns (address);

	function spenderAllowance(address selectedRouter, address token) external view returns (address spender, uint256 allowance);

	function estimateConversion(
		address[] memory tokensIn,
		uint256[] memory amountsIn,
		address[] memory tokensOut
	) external view returns (uint256[] memory amountsOut);

	function previewSwap(
		address[] memory tokensIn,
		uint256[] memory amountsIn,
		address[] memory tokensOut
	) external view returns (uint256[] memory amountsOut, address router, bytes32[] memory swapData);

	function swap(
		address[] memory tokensIn,
		uint256[] memory amountsIn,
		address[] memory tokensOut,
		uint256[] memory minAmountsOut,
		address router,
		address from,
		address to,
		bytes32[] memory swapData
	) external;
}
