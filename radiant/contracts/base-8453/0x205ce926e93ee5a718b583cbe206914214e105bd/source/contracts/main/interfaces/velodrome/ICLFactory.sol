// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

interface ICLFactory {
	/// @notice creates and initializes a pool for the given two tokens, fee, tickSpacing, and sqrtPriceX96
	function createPool(
		address tokenA,
		address tokenB,
		int24 tickSpacing,
		uint160 sqrtPriceX96
	) external returns (address pool);

	/// @notice Returns a default fee for a tick spacing.
	/// @dev Use getFee for the most up to date fee for a given pool.
	/// A tick spacing can never be removed, so this value should be hard coded or cached in the calling context
	/// @param tickSpacing The enabled tick spacing. Returns 0 if not enabled
	/// @return fee The default fee for the given tick spacing
	function tickSpacingToFee(int24 tickSpacing) external view returns (uint24 fee);

	/// @notice Returns a list of enabled tick spacings. Used to iterate through pools created by the factory
	/// @dev Tick spacings cannot be removed. Tick spacings are not ordered
	/// @return List of enabled tick spacings
	function tickSpacings() external view returns (int24[] memory);

	/// @notice Returns the pool address for a given pair of tokens and a tick spacing, or address 0 if it does not exist
	/// @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
	/// @param tokenA The contract address of either token0 or token1
	/// @param tokenB The contract address of the other token
	/// @param tickSpacing The tick spacing of the pool
	/// @return pool The pool address
	function getPool(address tokenA, address tokenB, int24 tickSpacing) external view returns (address pool);

	/// @notice Used in VotingEscrow to determine if a contract is a valid pool of the factory
	/// @param pool The address of the pool to check
	/// @return Whether the pool is a valid pool of the factory
	function isPool(address pool) external view returns (bool);
}
