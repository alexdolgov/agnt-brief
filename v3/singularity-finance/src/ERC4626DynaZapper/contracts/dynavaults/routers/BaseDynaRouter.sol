// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IDynaRouterAPI.sol";

/**
 * @title Abstract Base DynaRouter contract
 * @notice This is a role based abstract base implementation of the DynaRouter API
 */
abstract contract BaseDynaRouter is IDynaRouterAPI, AccessControl {
	using SafeERC20 for IERC20;

	error NotImplemented();

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	/**
	 * @notice Gets the spender address of the router
	 * @return spender The address of this contract for approval purposes
	 */
	function getSpender() external view virtual override returns (address spender) {
		return address(this);
	}

	/**
	 * @notice Gets the token allowance for a spender
	 * @param token The token to check
	 * @return allowed The amount of token allowed to spend
	 */
	function spenderAllowance(address token) external view virtual override returns (uint256 allowed) {
		allowed = IERC20(token).allowance(_msgSender(), address(this));
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view virtual override returns (uint256 amountOut) {
		(amountOut, , ) = previewSwap(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Previews swap between tokens
	 * #param tokenIn The address of the tokenIn
	 * #param amountIn The amount of tokenIn
	 * #param tokenOut The address of the token wanted
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The swap data with the token path
	 */
	function previewSwap(
		address /*tokenIn*/,
		uint256 /*amountIn*/,
		address /*tokenOut*/
	) public view virtual override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		return (0, address(this), new bytes32[](0));
	}

	/**
	 * @notice Previews swap between tokens using a specified route
	 * #param tokenIn The address of the tokenIn
	 * #param amountIn The amount of tokenIn
	 * #param tokenOut The address of the token wanted
	 * #param previewRoute The route to be used
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The encoded swap data
	 */
	function previewSwapRoute(
		address /*tokenIn*/,
		uint256 /*amountIn*/,
		address /*tokenOut*/,
		bytes32[] memory /*previewRoute*/
	) public view virtual override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		return (0, address(this), new bytes32[](0));
	}

	/**
	 * @notice Swaps between tokens
	 * #param tokenIn The address of the tokenIn
	 * #param amountIn The amount of tokenIn
	 * #param tokenOut The address of the tokenOut
	 * #param minAmountOut The minimum amount out expected
	 * #param to The address of the receiver
	 * #param swapData The encoded swap data
	 */
	function swap(
		address /*tokenIn*/,
		uint256 /*amountIn*/,
		address /*tokenOut*/,
		uint256 /*minAmountOut*/,
		address /*to*/,
		bytes32[] memory /*swapData*/
	) external virtual override {
		revert NotImplemented();
	}

	/**
	 * @notice Approves tokens if needed
	 * @param token The address of the token
	 * @param spender The address of the spender
	 * @param amount The amount of tokens to approve
	 */
	function _approveTokenIfNeeded(address token, address spender, uint256 amount) internal {
		if (IERC20(token).allowance(address(this), spender) < amount) {
			IERC20(token).safeIncreaseAllowance(spender, amount);
		}
	}
}
