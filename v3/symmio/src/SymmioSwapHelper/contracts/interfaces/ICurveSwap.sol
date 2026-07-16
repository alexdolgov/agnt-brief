// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;


interface ICurveSwap {
	
	struct CurveConfig {
		uint256 pairA_index;
		uint256 pairB_index;
		uint256 slippage;
		address pool;
	}

	function swapWithConfigCurve(uint256 amount, CurveConfig memory config) external;
}