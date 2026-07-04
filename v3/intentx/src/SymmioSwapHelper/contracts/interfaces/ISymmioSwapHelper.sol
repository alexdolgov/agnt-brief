// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import "./ICurveSwap.sol";
import "./IUniswapSwap.sol";

interface ISymmioSwapHelper is ICurveSwap, IUniSwapSwap {
	event SwapThresholdSet(uint256 percent);

	event SwappedWithCurve(uint256 amount, uint256 amountOut, CurveConfig config);
	event CurvePoolAdded(address[] tokens, address pool);

	event SwappedWithUniSwap(uint256 amountIn, uint256 amountOut, UniSwapConfig config);

	function addCurvePoolTokens(address[] memory tokens, address pool) external;

	function checkUniSwapConfig(UniSwapConfig memory config) external view;

	function checkCurveConfig(CurveConfig memory config) external view;
}
