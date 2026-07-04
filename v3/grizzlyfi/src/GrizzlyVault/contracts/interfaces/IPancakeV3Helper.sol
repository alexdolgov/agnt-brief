// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

import { IPancakeV3Pool } from "@pancakeswap/v3-core/contracts/interfaces/IPancakeV3Pool.sol";
import { IGrizzlyVaultStorage } from "contracts/interfaces/IGrizzlyVaultStorage.sol";
import { IGrizzlyVault } from "contracts/interfaces/IGrizzlyVault.sol";

interface IPancakeV3Helper {
	function estimateFees(
		IPancakeV3Pool pool,
		IGrizzlyVaultStorage.Ticks memory ticks,
		uint256 tokenId
	) external view returns (uint256 token0Fee, uint256 token1Fee);

	function computeFeesEarned(
		IPancakeV3Pool pool,
		bool isZero,
		uint256 feeGrowthInsideLast,
		int24 tick,
		uint128 liquidity,
		IGrizzlyVaultStorage.Ticks memory ticks
	) external view returns (uint256 fee);

	function amountsForLiquidity(
		uint128 liquidity,
		IGrizzlyVaultStorage.Ticks memory ticks,
		uint160 sqrtRatioX96
	) external view returns (uint256, uint256);

	function liquidityForAmounts(
		IGrizzlyVaultStorage.Ticks memory ticks,
		uint160 sqrtRatioX96,
		uint256 amount0,
		uint256 amount1
	) external view returns (uint128);

	function computeMintAmounts(
		address grizzlyVault,
		uint256 totalSupply,
		uint256 amount0Max,
		uint256 amount1Max
	) external view returns (uint256 amount0, uint256 amount1, uint256 mintAmount);

	function amountsDirection(
		uint256 amount0Desired,
		uint256 amount1Desired,
		uint256 amount0,
		uint256 amount1
	) external pure returns (bool zeroGreaterOne);

	function checkPriceSlippage(
		IPancakeV3Pool pool,
		uint32 oracleSlippageInterval,
		uint24 oracleSlippage,
		uint24 basisOne,
		uint16 basisOneSqrt
	) external view returns (bool);
}

