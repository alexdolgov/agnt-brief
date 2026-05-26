// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.15;

import {QuoterV2, IQuoterV2, IUniswapV3Pool, Path} from "../../../dependencies/uniswap/contracts/v3/QuoterV2.sol";
import {ICLFactory} from "../../../interfaces/velodrome/ICLFactory.sol";
import {ICLPool} from "../../../interfaces/velodrome/ICLPool.sol";
import {VelodromeSwapRouter} from "./VelodromeSwapRouter.sol";

contract VelodromeQuoterV2 is QuoterV2 {
	using Path for bytes;

	/// Errors
	error VelodromeQuoterV2_zeroAddress();
	error VelodromeQuoterV2_noFeeToTickSpacing();
	error VelodromeQuoterV2_badSwapCallback();
	error VelodromeQuoterV2_invalidPool();

	address public velodromeSwapRouter;

	constructor(address _factory, address _WETH9, address _velodromeSwapRouter) QuoterV2(_factory, _WETH9) {
		if (_velodromeSwapRouter == address(0)) revert VelodromeQuoterV2_zeroAddress();
		velodromeSwapRouter = _velodromeSwapRouter;
	}

	function getPool(address tokenA, address tokenB, uint24 fee) internal view override returns (IUniswapV3Pool) {
		ICLFactory factoryCL = ICLFactory(factory);
		int24 tickSpacing = VelodromeSwapRouter(payable(velodromeSwapRouter)).feeToTickSpacing(fee);
		if (tickSpacing == 0) revert VelodromeQuoterV2_noFeeToTickSpacing();
		IUniswapV3Pool pool = IUniswapV3Pool(factoryCL.getPool(tokenA, tokenB, tickSpacing));
		if (!factoryCL.isPool(address(pool))) revert VelodromeQuoterV2_invalidPool();
		return pool;
	}

	function quoteExactInputSingle(
		IQuoterV2.QuoteExactInputSingleParams memory params
	) public returns (uint256 amountOut) {
		(amountOut, , , ) = _quoteExactInputSingle(params);
	}

	function quoteExactInput(bytes memory path, uint256 amountIn) public returns (uint256 amountOut) {
		(amountOut, , , ) = _quoteExactInput(path, amountIn);
	}

	function quoteExactOutputSingle(
		IQuoterV2.QuoteExactOutputSingleParams memory params
	) public returns (uint256 amountIn) {
		(amountIn, , , ) = _quoteExactOutputSingle(params);
	}

	function quoteExactOutput(bytes memory path, uint256 amountOut) public returns (uint256 amountIn) {
		(amountIn, , , ) = _quoteExactOutput(path, amountOut);
	}

	/// @inheritdoc QuoterV2
	function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes memory path) external view override {
		require(amount0Delta > 0 || amount1Delta > 0); // swaps entirely within 0-liquidity regions are not supported
		(address tokenIn, address tokenOut, uint24 fee) = path.decodeFirstPool();

		(bool isExactInput, uint256 amountToPay, uint256 amountReceived) = amount0Delta > 0
			? (tokenIn < tokenOut, uint256(amount0Delta), uint256(-amount1Delta))
			: (tokenOut < tokenIn, uint256(amount1Delta), uint256(-amount0Delta));

		ICLPool pool = ICLPool(address(getPool(tokenIn, tokenOut, fee)));
		if (msg.sender != address(pool)) revert VelodromeQuoterV2_badSwapCallback();

		(uint160 sqrtPriceX96After, int24 tickAfter, , , , ) = pool.slot0();

		if (isExactInput) {
			assembly {
				let ptr := mload(0x40)
				mstore(ptr, amountReceived)
				mstore(add(ptr, 0x20), sqrtPriceX96After)
				mstore(add(ptr, 0x40), tickAfter)
				revert(ptr, 96)
			}
		} else {
			// if the cache has been populated, ensure that the full output amount has been received
			if (amountOutCached != 0) require(amountReceived == amountOutCached);
			assembly {
				let ptr := mload(0x40)
				mstore(ptr, amountToPay)
				mstore(add(ptr, 0x20), sqrtPriceX96After)
				mstore(add(ptr, 0x40), tickAfter)
				revert(ptr, 96)
			}
		}
	}
}
