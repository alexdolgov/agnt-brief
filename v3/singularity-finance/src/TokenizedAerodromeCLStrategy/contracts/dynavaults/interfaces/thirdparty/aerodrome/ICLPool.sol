// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.26;

/// @title The interface for a Uniswap V3 Pool
/// @notice A Uniswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface ICLPool {
	function lastUpdated() external returns (uint32);

	function slot0()
		external
		view
		returns (
			uint160 sqrtPriceX96,
			int24 tick,
			uint16 observationIndex,
			uint16 observationCardinality,
			uint16 observationCardinalityNext,
			uint8 feeProtocol,
			bool unlocked
		);

	/// @notice The first of the two tokens of the pool, sorted by address
	/// @return The token contract address
	function token0() external view returns (address);

	/// @notice The second of the two tokens of the pool, sorted by address
	/// @return The token contract address
	function token1() external view returns (address);

	function nft() external view returns (address);

	function gauge() external view returns (address);

	function tickSpacing() external view returns (int24);

	function fee() external view returns (uint24);

	/// @notice Swap token0 for token1, or token1 for token0
	/// @dev The caller of this method receives a callback in the form of IUniswapV3SwapCallback#uniswapV3SwapCallback
	/// @param recipient The address to receive the output of the swap
	/// @param zeroForOne The direction of the swap, true for token0 to token1, false for token1 to token0
	/// @param amountSpecified The amount of the swap, which implicitly configures the swap as exact input (positive), or exact output (negative)
	/// @param sqrtPriceLimitX96 The Q64.96 sqrt price limit. If zero for one, the price cannot be less than this
	/// value after the swap. If one for zero, the price cannot be greater than this value after the swap
	/// @param data Any data to be passed through to the callback
	/// @return amount0 The delta of the balance of token0 of the pool, exact when negative, minimum when positive
	/// @return amount1 The delta of the balance of token1 of the pool, exact when negative, minimum when positive
	function swap(
		address recipient,
		bool zeroForOne,
		int256 amountSpecified,
		uint160 sqrtPriceLimitX96,
		bytes calldata data
	) external returns (int256 amount0, int256 amount1);

	function syncReward(uint256 rewardRate, uint256 rewardReserve, uint256 periodFinish) external;

	function periodFinish() external returns (uint256);

	function liquidity() external view returns (uint128);
}
