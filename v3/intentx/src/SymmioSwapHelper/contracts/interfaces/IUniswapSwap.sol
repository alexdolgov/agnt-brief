// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

interface IUniSwapSwap {
	struct UniSwapConfig {
		address pairA;
		address pairB;
		uint24 fee;
		address recipient;
		uint160 sqrtPriceLimitX96;
		uint256 slippage;
		address router;
	}

	function swapWithConfigUniSwap(uint256 amount, UniSwapConfig memory config) external;
}
