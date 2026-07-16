// SPDX-License-Identifier: UNLICENSED
//solhint-disable
pragma solidity 0.8.18;

import { IPancakeV3Pool } from "@pancakeswap/v3-core/contracts/interfaces/IPancakeV3Pool.sol";
import { IUniswapV3PositionsNFT } from "contracts/interfaces/IUniswapV3PositionsNFT.sol";
import { IMasterChefV3 } from "contracts/interfaces/IMasterChefV3.sol";
import { IPancakeV3 } from "contracts/interfaces/IPancakeV3.sol";
import { IGrizzlyVaultStorage } from "contracts/interfaces/IGrizzlyVaultStorage.sol";
import { IGrizzlyVault } from "contracts/interfaces/IGrizzlyVault.sol";
import { TickMath } from "./pancakeswap/TickMath.sol";
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { prbSqrt } from "@prb/math/src/Common.sol";
import { FullMath, LiquidityAmounts, FixedPoint96 } from "./pancakeswap/LiquidityAmounts.sol";

contract PancakeV3Helper {
	using SafeERC20 for IERC20;
	using TickMath for int24;

	address public constant nftManager = 0x46A15B0b27311cedF172AB29E4f4766fbE7F4364;
	address public constant masterChef = 0x556B9306565093C855AEA9AE92A594704c2Cd59e;

	struct LocalVariablesFees {
		uint256 feeGrowthOutsideLower;
		uint256 feeGrowthOutsideUpper;
		uint256 feeGrowthGlobal;
		uint256 feeGrowthBelow;
		uint256 feeGrowthAbove;
		uint256 feeGrowthInside;
	}

	// --- External view functions --- //

	function estimateFees(
		IPancakeV3Pool pool,
		IGrizzlyVaultStorage.Ticks memory ticks,
		uint256 tokenId
	) external view returns (uint256 token0Fee, uint256 token1Fee) {
		(, int24 currentTick, , , , , ) = pool.slot0();

		IGrizzlyVaultStorage.LocalVariablesPosition memory vars;

		(
			,
			,
			,
			,
			,
			,
			,
			vars.liquidity,
			vars.feeGrowthInside0Last,
			vars.feeGrowthInside1Last,
			vars.tokensOwed0,
			vars.tokensOwed1
		) = IUniswapV3PositionsNFT(nftManager).positions(tokenId);

		// Compute current fees earned
		token0Fee =
			computeFeesEarned(
				pool,
				true,
				vars.feeGrowthInside0Last,
				currentTick,
				vars.liquidity,
				ticks
			) +
			vars.tokensOwed0;
		token1Fee =
			computeFeesEarned(
				pool,
				false,
				vars.feeGrowthInside1Last,
				currentTick,
				vars.liquidity,
				ticks
			) +
			vars.tokensOwed1;
	}

	/// @notice Computes the token0 and token1 value for a given amount of liquidity
	function amountsForLiquidity(
		uint128 liquidity,
		IGrizzlyVaultStorage.Ticks memory ticks,
		uint160 sqrtRatioX96
	) external view returns (uint256, uint256) {
		return
			LiquidityAmounts.getAmountsForLiquidity(
				sqrtRatioX96,
				ticks.lowerTick.getSqrtRatioAtTick(),
				ticks.upperTick.getSqrtRatioAtTick(),
				liquidity
			);
	}

	/// @notice Gets the liquidity for the available amounts of token0 and token1
	function liquidityForAmounts(
		IGrizzlyVaultStorage.Ticks memory ticks,
		uint160 sqrtRatioX96,
		uint256 amount0,
		uint256 amount1
	) external view returns (uint128) {
		return
			LiquidityAmounts.getLiquidityForAmounts(
				sqrtRatioX96,
				ticks.lowerTick.getSqrtRatioAtTick(),
				ticks.upperTick.getSqrtRatioAtTick(),
				amount0,
				amount1
			);
	}

	/// @notice Gives the amount to swap in order to obtain balanced amounts
	/// @dev either amount0 our amount1 should be 0 or 1 wei
	function getSwapAmount(
		uint160 sqrtRatioX96,
		IGrizzlyVaultStorage.Ticks memory ticks,
		uint256 amount0,
		uint256 amount1,
		uint24 swapFee,
		uint24 basisOne
	) external view returns (uint256 amountToSwap) {
		uint160 sqrtRatioAX96 = ticks.lowerTick.getSqrtRatioAtTick();
		uint160 sqrtRatioBX96 = ticks.upperTick.getSqrtRatioAtTick();

		if (sqrtRatioX96 <= sqrtRatioAX96) {
			// if we still have 0, do not swap
			// if we still have 1, then swap everything for 0
			amountToSwap = amount0 > amount1 ? 0 : amount1;
		} else if (sqrtRatioX96 < sqrtRatioBX96) {
			uint256 intermediate1 = FullMath.mulDiv(sqrtRatioX96, sqrtRatioBX96, FixedPoint96.Q96);
			uint256 intermediate2 = FullMath.mulDiv(
				sqrtRatioX96 - sqrtRatioAX96,
				intermediate1,
				FixedPoint96.Q96
			);
			if (amount0 > amount1) {
				uint256 numerator = intermediate2 * basisOne;
				uint256 denominator = numerator +
					(sqrtRatioBX96 - sqrtRatioX96) *
					(basisOne - swapFee);

				amountToSwap = FullMath.mulDiv(amount0, numerator, denominator);
			} else {
				uint256 numerator = (sqrtRatioBX96 - sqrtRatioX96) * basisOne;
				uint256 denominator = numerator + intermediate2 * (basisOne - swapFee);

				amountToSwap = FullMath.mulDiv(amount1, numerator, denominator);
			}
		} else {
			// if we still have 1, do not swap
			// if we still have 0, then swap everything for 1
			amountToSwap = amount1 > amount0 ? 0 : amount0;
		}
	}

	function computeMintAmounts(
		address grizzlyVault,
		uint256 totalSupply,
		uint256 amount0Max,
		uint256 amount1Max
	) external view returns (uint256 amount0, uint256 amount1, uint256 mintAmount) {
		(uint256 amount0Current, uint256 amount1Current) = IGrizzlyVault(grizzlyVault)
			.getUnderlyingBalances();

		// Compute proportional amount of tokens to mint
		if (amount0Current == 0 && amount1Current > 0) {
			mintAmount = FullMath.mulDiv(amount1Max, totalSupply, amount1Current);
		} else if (amount1Current == 0 && amount0Current > 0) {
			mintAmount = FullMath.mulDiv(amount0Max, totalSupply, amount0Current);
		} else if (amount0Current == 0 && amount1Current == 0) {
			revert("no balances");
		} else {
			// Only if both are non-zero
			uint256 amount0Mint = FullMath.mulDiv(amount0Max, totalSupply, amount0Current);
			uint256 amount1Mint = FullMath.mulDiv(amount1Max, totalSupply, amount1Current);
			require(amount0Mint > 0 && amount1Mint > 0, "mint 0");

			mintAmount = amount0Mint < amount1Mint ? amount0Mint : amount1Mint;
		}

		// Compute amounts owed to contract
		amount0 = FullMath.mulDivRoundingUp(mintAmount, amount0Current, totalSupply);
		amount1 = FullMath.mulDivRoundingUp(mintAmount, amount1Current, totalSupply);
	}

	// solhint-disable-next-line function-max-lines
	function computeFeesEarned(
		IPancakeV3Pool pool,
		bool isZero,
		uint256 feeGrowthInsideLast,
		int24 tick,
		uint128 liquidity,
		IGrizzlyVaultStorage.Ticks memory ticks
	) public view returns (uint256 fee) {
		LocalVariablesFees memory vars;

		if (isZero) {
			vars.feeGrowthGlobal = pool.feeGrowthGlobal0X128();
			(, , vars.feeGrowthOutsideLower, , , , , ) = pool.ticks(ticks.lowerTick);
			(, , vars.feeGrowthOutsideUpper, , , , , ) = pool.ticks(ticks.upperTick);
		} else {
			vars.feeGrowthGlobal = pool.feeGrowthGlobal1X128();
			(, , , vars.feeGrowthOutsideLower, , , , ) = pool.ticks(ticks.lowerTick);
			(, , , vars.feeGrowthOutsideUpper, , , , ) = pool.ticks(ticks.upperTick);
		}

		unchecked {
			// Calculate fee growth below
			vars.feeGrowthBelow;
			if (tick >= ticks.lowerTick) {
				vars.feeGrowthBelow = vars.feeGrowthOutsideLower;
			} else {
				vars.feeGrowthBelow = vars.feeGrowthGlobal - vars.feeGrowthOutsideLower;
			}

			// Calculate fee growth above
			vars.feeGrowthAbove;
			if (tick < ticks.upperTick) {
				vars.feeGrowthAbove = vars.feeGrowthOutsideUpper;
			} else {
				vars.feeGrowthAbove = vars.feeGrowthGlobal - vars.feeGrowthOutsideUpper;
			}

			vars.feeGrowthInside = vars.feeGrowthGlobal - vars.feeGrowthBelow - vars.feeGrowthAbove;
			fee = FullMath.mulDiv(
				liquidity,
				vars.feeGrowthInside - feeGrowthInsideLast,
				0x100000000000000000000000000000000
			);
		}
	}

	/// @dev Needed in case token0 and token1 have different decimals
	function amountsDirection(
		uint256 amount0Desired,
		uint256 amount1Desired,
		uint256 amount0,
		uint256 amount1
	) external pure returns (bool zeroGreaterOne) {
		zeroGreaterOne = (amount0Desired - amount0) * amount1Desired >
			(amount1Desired - amount1) * amount0Desired
			? true
			: false;
	}

	function checkPriceSlippage(
		IPancakeV3Pool pool,
		uint32 oracleSlippageInterval,
		uint24 oracleSlippage,
		uint24 basisOne,
		uint16 basisOneSqrt
	) external view returns (bool) {
		uint32[] memory secondsAgo = new uint32[](2);
		secondsAgo[0] = oracleSlippageInterval;
		secondsAgo[1] = 0;

		(int56[] memory tickCumulatives, ) = pool.observe(secondsAgo);

		require(tickCumulatives.length == 2, "array length");
		uint160 avgSqrtRatioX96;
		unchecked {
			int24 avgTick = int24(
				(tickCumulatives[1] - tickCumulatives[0]) / int56(uint56(oracleSlippageInterval))
			);
			avgSqrtRatioX96 = avgTick.getSqrtRatioAtTick();
		}

		(uint160 sqrtPriceX96, , , , , , ) = pool.slot0();

		uint256 oracleSlippageSqrt = avgSqrtRatioX96 < sqrtPriceX96
			? prbSqrt(basisOne + oracleSlippage)
			: prbSqrt(basisOne - oracleSlippage);

		uint160 limitSqrtRatioX96 = uint160((avgSqrtRatioX96 * oracleSlippageSqrt) / basisOneSqrt);

		bool correctBound = avgSqrtRatioX96 < sqrtPriceX96
			? sqrtPriceX96 < limitSqrtRatioX96
			: sqrtPriceX96 > limitSqrtRatioX96;

		return correctBound;
	}
}

