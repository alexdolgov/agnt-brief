// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IMultiTokenDynaRouterAPI {
	function getSpender() external view returns (address);

	function spenderAllowance(address token) external view returns (uint256 allowance);

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
		address to,
		bytes32[] memory swapData
	) external;
}
