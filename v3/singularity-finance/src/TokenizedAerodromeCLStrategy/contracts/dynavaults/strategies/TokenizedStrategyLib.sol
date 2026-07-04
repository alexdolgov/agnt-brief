// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./thirdparty/aerodrome/LiquidityAmounts.sol";
import "./thirdparty/aerodrome/TickMath.sol";
import "solady/src/utils/FixedPointMathLib.sol";

/**
 * @title TokenizedStrategyLib
 * @notice A helper library for the tokenized aerodrome cl strategy
 */
library TokenizedStrategyLib {
	uint256 private constant PRECISION = 1e18;

	/**
	 * @notice Exposes sqrt ratio at tick as a external function
	 */
	function sqrtRatioAtTick(int24 tick) public pure returns (uint160) {
		return TickMath.getSqrtRatioAtTick(tick);
	}

	/**
	 * @notice Computes the maximum liquidity for the given token amounts within [tickLower, tickUpper]
	 * @param sqrtPriceX96 The current sqrt price of the pool
	 * @param tickLower The lower tick of the position
	 * @param tickUpper The upper tick of the position
	 * @param amount0 The amount of token0 provided
	 * @param amount1 The amount of token1 provided
	 * @return liquidity The amount of liquidity for the provided amounts
	 */
	function getLiquidityForAmounts(
		uint160 sqrtPriceX96,
		int24 tickLower,
		int24 tickUpper,
		uint256 amount0,
		uint256 amount1
	) external pure returns (uint128 liquidity) {
		return
			LiquidityAmounts.getLiquidityForAmounts(
				sqrtPriceX96,
				TickMath.getSqrtRatioAtTick(tickLower),
				TickMath.getSqrtRatioAtTick(tickUpper),
				amount0,
				amount1
			);
	}

	/**
	 * @notice Computes the token0 and token1 amounts for a given liquidity within [tickLower, tickUpper]
	 * @param sqrtPriceX96 The current sqrt price of the pool
	 * @param tickLower The lower tick of the position
	 * @param tickUpper The upper tick of the position
	 * @param liquidity The liquidity amount
	 * @return amount0 The amount of token0 represented by the liquidity
	 * @return amount1 The amount of token1 represented by the liquidity
	 */
	function getAmountsForLiquidity(
		uint160 sqrtPriceX96,
		int24 tickLower,
		int24 tickUpper,
		uint128 liquidity
	) external pure returns (uint256 amount0, uint256 amount1) {
		return LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, TickMath.getSqrtRatioAtTick(tickLower), TickMath.getSqrtRatioAtTick(tickUpper), liquidity);
	}

	/**
	 *@notice calculates amount of tokenIn to swap to token0 and token1 based on currentPrice and lower and upper ticks
	 */
	function calculateTokensToSwap(
		uint256 amountIn,
		uint160 currentPrice, // sqrtPriceX96 token1/token0
		int24 tickLower,
		int24 tickUpper
	) external pure returns (uint256 amountInToToken0, uint256 amountInToToken1) {
		uint160 lowerPrice = sqrtRatioAtTick(tickLower);
		uint160 upperPrice = sqrtRatioAtTick(tickUpper);
		uint256 ratio = (
			currentPrice >= lowerPrice && currentPrice <= upperPrice
				? FixedPointMathLib.fullMulDiv((currentPrice - lowerPrice), PRECISION, upperPrice - lowerPrice)
				: (currentPrice < lowerPrice ? 0 : PRECISION)
		);
		amountInToToken1 = FixedPointMathLib.fullMulDiv(amountIn, ratio, PRECISION);
		amountInToToken0 = amountIn - amountInToToken1;
	}

	/**
	 * @notice Sets The name of the strategy
	 * @param tickSpacing The tickSpacing of the pool
	 */

	function strategyName(address token0, address token1, int24 tickLower, int24 tickUpper, int24 tickSpacing) external view returns (string memory) {
		string[3] memory chars = ["/", ":", " "];
		return _formatStrategyString(token0, token1, tickLower, tickUpper, tickSpacing, chars);
	}

	/**
	 * @notice Sets The symbol of the strategy
	 * @param tickSpacing The tickSpacing of the pool
	 */
	function strategySymbol(address token0, address token1, int24 tickLower, int24 tickUpper, int24 tickSpacing) external view returns (string memory) {
		string[3] memory chars = ["_", "_", "_"];
		return _formatStrategyString(token0, token1, tickLower, tickUpper, tickSpacing, chars);
	}

	/**
	 * @notice Helper function for formatting the stragey name and symbol
	 * @param tickSpacing The tickSpacing of the pool
	 * @param separators The separators wanted
	 */
	function _formatStrategyString(
		address token0,
		address token1,
		int24 tickLower,
		int24 tickUpper,
		int24 tickSpacing,
		string[3] memory separators
	) private view returns (string memory) {
		string memory tokenNames = _addSeparator(IERC20Metadata(token0).symbol(), IERC20Metadata(token1).symbol(), separators[0]);
		string memory tokenNamesSpacing = _addSeparator(tokenNames, Strings.toString(tickSpacing), separators[1]);
		string memory namesWithLowerTick = _addSeparator(tokenNamesSpacing, Strings.toString(tickLower), separators[2]);

		return _addSeparator(namesWithLowerTick, Strings.toString(tickUpper), separators[2]);
	}

	/**
	 * @notice Helper function used to add separator characters in the name an symbol string
	 * @param one The first string
	 * @param two The first string
	 * @param separator The separator character
	 */
	function _addSeparator(string memory one, string memory two, string memory separator) private pure returns (string memory) {
		string memory oneSeparator = string(abi.encodePacked(one, separator));

		return string(abi.encodePacked(oneSeparator, two));
	}
}
