// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "./interfaces/IDynaRouter.sol";
import "./interfaces/DynaRouterRegistryAPI.sol";
import "./interfaces/VaultManagerAPI.sol";

import "./utils/Checks.sol";
import "./VaultConfigLib.sol";

/**
 * @title DynaVault library
 * @notice VaultRouterLib is part of DynaVault
 * and is responsible for the estimating and executing token conversions by using a ReferenceAssetOracle and DynaRouter.
 * It contains logic to check oracle deviation when doing token conversion estimations to avoid flash-loan/sandwich style attacks.
 */
library VaultRouterLib {
	using Checks for address;
	using Math for uint256;
	using SafeERC20 for IERC20;

	error DynaRouterInactive(address router);
	error DynaVaultSwapUnsupportedToken(address token);
	error DynaVaultSwapLackingAmountIn(address tokenIn, uint256 amountIn, uint256 tokenInbalance);
	error DynaVaultSwapSlippageProtection(address tokenIn, uint256 amountIn, address tokenOut, uint256 amountOut, uint256 minAmountOut);

	/**
	 * @notice used to fetch swap data used when calling swap
	 * @param tokenIn the input token
	 * @param amountIn amount to swap
	 * @param tokenOut output token
	 * @return amountOut expected amountOut
	 * @return selectedRouter address of router to use
	 * @return swapData data used in swap
	 */
	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) external view returns (uint256 amountOut, address selectedRouter, bytes32[] memory swapData) {
		return DynaRouterAPI(VaultConfigLib.dynaRouter()).previewSwap(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice this a swap function to be called by vault management to swap and change target weights
	 * @param tokenIn input token
	 * @param amountIn amount to swap
	 * @param tokenOut output token
	 * @param minAmountOut min expected amount from swap
	 * @param swapData data used for the swap
	 */
	function _swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, address selectedRouter, bytes32[] memory swapData) private {
		address manager = VaultConfigLib.manager();
		VaultManagerAPI(manager).checkManagementOrGovernance(msg.sender);
		address dynaRouter = VaultConfigLib.dynaRouter();
		if (!DynaRouterRegistryAPI(IDynaRouter(dynaRouter).getRegistry()).getEnabledRouter(selectedRouter)) {
			revert DynaRouterInactive(selectedRouter);
		}
		if (!VaultManagerAPI(manager).tokenExists(tokenIn)) {
			revert DynaVaultSwapUnsupportedToken(tokenIn);
		}
		if (!VaultManagerAPI(manager).tokenExists(tokenOut)) {
			revert DynaVaultSwapUnsupportedToken(tokenOut);
		}
		uint256 tokenInBalance = IERC20(tokenIn).balanceOf(address(this));
		if (tokenInBalance < amountIn) {
			revert DynaVaultSwapLackingAmountIn(tokenIn, amountIn, tokenInBalance);
		}
		(address spender, uint256 allowed) = DynaRouterAPI(selectedRouter).spenderAllowance(selectedRouter, tokenIn);
		if (allowed < amountIn) {
			IERC20(tokenIn).safeIncreaseAllowance(spender, amountIn);
		}
		uint256 tokenOutInitialBalance = IERC20(tokenOut).balanceOf(address(this));
		DynaRouterAPI(selectedRouter).swap(tokenIn, amountIn, tokenOut, minAmountOut, selectedRouter, address(this), address(this), swapData);
		uint256 _amountOut = IERC20(tokenOut).balanceOf(address(this)) - tokenOutInitialBalance;
		if (_amountOut < minAmountOut) {
			revert DynaVaultSwapSlippageProtection(tokenIn, amountIn, tokenOut, _amountOut, minAmountOut);
		}
		VaultManagerAPI(manager).updateDebtAfterSwap(tokenIn, amountIn, tokenOut, _amountOut, true);
	}

	/**
	 * @notice wrapper for the private swap function
	 * @notice this a swap function to be called by vault management to swap and change target weights
	 * @param tokenIn input token
	 * @param amountIn amount to swap
	 * @param tokenOut output token
	 * @param minAmountOut min expected amount from swap
	 * @param selectedRouter address of router to use
	 * @param swapData data used for the swap
	 */
	function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, address selectedRouter, bytes32[] memory swapData) external {
		_swap(tokenIn, amountIn, tokenOut, minAmountOut, selectedRouter, swapData);
	}

	/**
	 * @notice swap with reporting of the tokens swapped
	 * @param tokenIn the input token
	 * @param amountIn of input token to swap
	 * @param tokenOut the output token
	 * @param minAmountOut of output from swap
	 * @param selectedRouter address of router to use
	 * @param swapData from previewSwap
	 */
	function swapAndReport(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		uint256 minAmountOut,
		address selectedRouter,
		bytes32[] memory swapData
	) external {
		address referenceAsset = VaultConfigLib.referenceAsset();
		if (referenceAsset != tokenIn) {
			VaultManagerAPI(VaultConfigLib.manager()).reportReserveFromVault(tokenIn);
		}
		_swap(tokenIn, amountIn, tokenOut, minAmountOut, selectedRouter, swapData);
		if (referenceAsset != tokenOut) {
			VaultManagerAPI(VaultConfigLib.manager()).reportReserveFromVault(tokenOut);
		}
	}

	/**
	 * @notice this a swap function to be called by the vault manager contract to rebalance, which does not change target depositDebtRatio weights
	 * @param tokenIn token address of input token
	 * @param amountIn token in amount to swap
	 * @param tokenOut token address of output token
	 * @param minAmountOut token out min expected amount from swap
	 * @return amountOut the amount of tokenOut from swap
	 */
	function doSwap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut) external returns (uint256 amountOut) {
		VaultConfigLib.onlyManager();
		address dynaRouter = VaultConfigLib.dynaRouter();
		(uint256 estimatedAmountOut, address router, bytes32[] memory swapData) = DynaRouterAPI(dynaRouter).previewSwap(tokenIn, amountIn, tokenOut);
		(address spender, uint256 allowed) = DynaRouterAPI(router).spenderAllowance(router, tokenIn);
		if (allowed < amountIn) {
			IERC20(tokenIn).safeIncreaseAllowance(spender, amountIn);
		}
		uint256 tokenOutInitialBalance = IERC20(tokenOut).balanceOf(address(this));
		DynaRouterAPI(router).swap(tokenIn, amountIn, tokenOut, estimatedAmountOut, router, address(this), address(this), swapData);
		amountOut = IERC20(tokenOut).balanceOf(address(this)) - tokenOutInitialBalance;
		if (amountOut < minAmountOut) {
			revert DynaVaultSwapSlippageProtection(tokenIn, amountIn, tokenOut, amountOut, minAmountOut);
		}
		VaultManagerAPI(VaultConfigLib.manager()).updateDebtAfterSwap(tokenIn, amountIn, tokenOut, amountOut, false);
	}
}
