// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.15;

import {SwapRouter, ISwapRouter, IUniswapV3Pool, Path} from "../../../dependencies/uniswap/contracts/v3/SwapRouter.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface ICLFactory {
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

contract VelodromeSwapRouter is SwapRouter, Ownable {
	using Path for bytes;

	/// VelodromeSwapRouter Events
	event FeeToTickSpacingSet(uint24 indexed fee, int24 indexed tickSpacing);

	/// VelodromeSwapRouter Errors
	error VelodromeSwapRouter_zeroAddress();
	error VelodromeSwapRouter_arrayLengthMismatch();
	error VelodromeSwapRouter_noFeeToTickSpacing();
	error VelodromeSwapRouter_invalidPool();
	error VelodromeSwapRouter_badSwapCallback();

	// fee => tickSpacing,
	// NOTE: this is required because Velodrome uses tickSpacing instead of fee
	// to create pools and get pool address.
	// There may be multiple tickSpacing for the same fee, map the most common one
	mapping(uint24 => int24) public feeToTickSpacing;

	constructor(address factory_, address weth9_) SwapRouter(factory_, weth9_) {
		if (factory_ == address(0)) revert VelodromeSwapRouter_zeroAddress();
		ICLFactory factoryCL = ICLFactory(factory_);
		int24[] memory tickSpacings = factoryCL.tickSpacings();
		uint256 length = tickSpacings.length;
		uint24[] memory fees = new uint24[](length);
		for (uint256 i = 0; i < length; i++) {
			fees[i] = factoryCL.tickSpacingToFee(tickSpacings[i]);
		}
		_setFeeToTickSpacing(fees, tickSpacings);
	}

	function getPool(address tokenA, address tokenB, uint24 fee) internal view override returns (IUniswapV3Pool) {
		ICLFactory factoryCL = ICLFactory(factory);
		int24 tickSpacing = feeToTickSpacing[fee];
		if (tickSpacing == 0) revert VelodromeSwapRouter_noFeeToTickSpacing();
		IUniswapV3Pool pool = IUniswapV3Pool(factoryCL.getPool(tokenA, tokenB, tickSpacing));
		if (!factoryCL.isPool(address(pool))) revert VelodromeSwapRouter_invalidPool();
		return pool;
	}

	function setFeeToTickSpacing(uint24[] memory fees, int24[] memory tickSpacings) external onlyOwner {
		if (fees.length != tickSpacings.length) revert VelodromeSwapRouter_arrayLengthMismatch();
		_setFeeToTickSpacing(fees, tickSpacings);
	}

	function _setFeeToTickSpacing(uint24[] memory fees, int24[] memory tickSpacings) internal {
		uint256 length = fees.length;
		for (uint256 i = 0; i < length; i++) {
			feeToTickSpacing[fees[i]] = tickSpacings[i];
			emit FeeToTickSpacingSet(fees[i], tickSpacings[i]);
		}
	}

	function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata _data) external override {
		require(amount0Delta > 0 || amount1Delta > 0); // swaps entirely within 0-liquidity regions are not supported
		SwapCallbackData memory data = abi.decode(_data, (SwapCallbackData));
		(address tokenIn, address tokenOut, uint24 fee) = data.path.decodeFirstPool();

		// Verify the callback
		IUniswapV3Pool pool = getPool(tokenIn, tokenOut, fee);
		if (msg.sender != address(pool)) revert VelodromeSwapRouter_badSwapCallback();

		(bool isExactInput, uint256 amountToPay) = amount0Delta > 0
			? (tokenIn < tokenOut, uint256(amount0Delta))
			: (tokenOut < tokenIn, uint256(amount1Delta));
		if (isExactInput) {
			pay(tokenIn, data.payer, msg.sender, amountToPay);
		} else {
			// either initiate the next swap or pay
			if (data.path.hasMultiplePools()) {
				data.path = data.path.skipToken();
				exactOutputInternal(amountToPay, msg.sender, 0, data);
			} else {
				amountInCached = amountToPay;
				tokenIn = tokenOut; // swap in/out because exact output swaps are reversed
				pay(tokenIn, data.payer, msg.sender, amountToPay);
			}
		}
	}
}
