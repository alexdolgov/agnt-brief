// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/thirdparty/IWETH.sol";
import "../interfaces/DynaRouterNativeAPI.sol";
import "../interfaces/DynaRouterMetaAPI.sol";
import "../interfaces/DynaRouterAPI.sol";

contract DynaRouterNative is DynaRouterNativeAPI, AccessControl {
	using SafeERC20 for IERC20;

	error MissingAddress();
	error AlreadyInitialized();
	error WrongAmount();
	error MinAmountOut();

	address public metaRouter;
	address public WRAPPED_NATIVE;
	address public USE_NATIVE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

	receive() external payable {}

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	/**
	 * @notice Initializes the native router
	 * @dev Only the admin can initialize
	 * @param wrappedNativeAddress The address of the wrapped native token
	 * @param metaRouterAddress The address of the dyna router meta
	 */
	function initialize(address wrappedNativeAddress, address metaRouterAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (WRAPPED_NATIVE != address(0)) revert AlreadyInitialized();
		if (metaRouterAddress == address(0)) revert MissingAddress();
		if (wrappedNativeAddress == address(0)) revert MissingAddress();
		WRAPPED_NATIVE = wrappedNativeAddress;
		metaRouter = metaRouterAddress;
	}

	/**
	 * @notice Gets the spender address of the router
	 * @return spender The address of this contract for approval purposes
<	 */
	function getSpender() external view override returns (address spender) {
		spender = address(this);
	}

	/**
	 * @notice Gets the token allowance for a spender
	 * @dev we dont use the input arguments because we only wrap
	 * @return allowed The amount of token allowed to spend
	 */
	function spenderAllowance(address /* selectedRouter */, address token) external view override returns (uint256 allowed) {
		allowed = IERC20(token).allowance(msg.sender, address(this));
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @dev we dont use the tokens from the arguments because we only wrap
	 * @param amountIn The amount of tokenIn
	 * @return amountOut An estimate of tokens out
	 */
	function estimateConversion(address /* tokenIn */, uint256 amountIn, address /* tokenOut */) external pure override returns (uint256 amountOut) {
		amountOut = amountIn;
	}

	/**
	 * @notice Previews swap between bpts and tokens
	 * @dev we dont use the tokens from the arguments because we only wrap
	 * @param amountIn The amount of tokenIn
	 * @return amountOut An estimate of tokens out
	 * @return router The address of the selected router
	 * @return swapData The swap data with the token path
	 */
	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) external view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		bool wrap = tokenIn == USE_NATIVE && tokenOut == WRAPPED_NATIVE;
		bool unwrap = tokenIn == WRAPPED_NATIVE && tokenOut == USE_NATIVE;
		bytes32[] memory routerSwapData;

		if (wrap || unwrap) return (amountIn, address(this), swapData);
		// swap to token
		if (tokenIn == USE_NATIVE && tokenOut != WRAPPED_NATIVE) {
			(amountOut, router, routerSwapData) = DynaRouterMetaAPI(metaRouter).previewSwap(WRAPPED_NATIVE, amountIn, tokenOut);
			swapData = _encodeSwapData(amountOut, router, routerSwapData);
			return (amountOut, address(this), swapData);
		}
		// swap from token
		if (tokenIn != WRAPPED_NATIVE && tokenOut == USE_NATIVE) {
			(amountOut, router, routerSwapData) = DynaRouterMetaAPI(metaRouter).previewSwap(tokenIn, amountIn, WRAPPED_NATIVE);
			swapData = _encodeSwapData(amountOut, router, routerSwapData);
			return (amountOut, address(this), swapData);
		}
	}

	/**
	 * @notice Swaps between bpts and tokens
	 * @dev We dont use minAmountOut, router or swapData because we only wrap
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the token wanted
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 */
	function swap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		uint256 minAmountOut,
		address /* router */, // router is address(this), router for token swaps is incoded in swapData
		address from,
		address to,
		bytes32[] memory swapData
	) external payable override {
		// wrap native
		if (tokenIn == USE_NATIVE && tokenOut == WRAPPED_NATIVE) {
			if (msg.value != amountIn) revert WrongAmount();
			IWETH(WRAPPED_NATIVE).deposit{value: msg.value}();
			IWETH(WRAPPED_NATIVE).transfer(to, msg.value);
		}
		// unwrap native
		if (tokenIn == WRAPPED_NATIVE && tokenOut == USE_NATIVE) {
			IWETH(WRAPPED_NATIVE).transferFrom(from, address(this), amountIn);
			IWETH(WRAPPED_NATIVE).withdraw(amountIn);
			payable(to).transfer(amountIn);
		}
		// wrap native and swap to token
		if (tokenIn == USE_NATIVE && tokenOut != WRAPPED_NATIVE) {
			if (msg.value != amountIn) revert WrongAmount();
			IWETH(WRAPPED_NATIVE).deposit{value: msg.value}();
			(uint256 minAmountOutRouter, address tokenRouter, bytes32[] memory routerSwapData) = _decodeSwapData(swapData);
			_approveTokenIfNeeded(WRAPPED_NATIVE, tokenRouter, amountIn);
			uint256 tokenBalanceBefore = IERC20(tokenOut).balanceOf(address(this));
			DynaRouterMetaAPI(metaRouter).swap(
				WRAPPED_NATIVE,
				amountIn,
				tokenOut,
				minAmountOutRouter,
				tokenRouter,
				address(this),
				address(this),
				routerSwapData
			);
			uint256 tokenReceived = IERC20(tokenOut).balanceOf(address(this)) - tokenBalanceBefore;
			if (tokenReceived < minAmountOut) revert MinAmountOut();
			IERC20(tokenOut).transfer(to, tokenReceived);
		}
		// swap token to wrapped native and unwrap
		if (tokenIn != WRAPPED_NATIVE && tokenOut == USE_NATIVE) {
			IERC20(tokenIn).safeTransferFrom(from, address(this), amountIn);
			uint256 balanceBefore = IERC20(WRAPPED_NATIVE).balanceOf(address(this));
			(uint256 minAmountOutRouter, address tokenRouter, bytes32[] memory routerSwapData) = _decodeSwapData(swapData);
			IERC20(tokenIn).approve(tokenRouter, amountIn);
			DynaRouterMetaAPI(metaRouter).swap(
				tokenIn,
				amountIn,
				WRAPPED_NATIVE,
				minAmountOutRouter,
				tokenRouter,
				address(this),
				address(this),
				routerSwapData
			);
			uint256 received = IERC20(WRAPPED_NATIVE).balanceOf(address(this)) - balanceBefore;
			if (received < minAmountOut) revert MinAmountOut();
			IWETH(WRAPPED_NATIVE).withdraw(received);
			payable(to).transfer(received);
		}
	}

	/**
	 * @notice Approves tokens if needed
	 * @param token The address of the token
	 * @param spender The address of the spender
	 * @param amount The amount of tokens to approve
	 */
	function _approveTokenIfNeeded(address token, address spender, uint256 amount) private {
		if (IERC20(token).allowance(address(this), spender) < amount) {
			IERC20(token).safeIncreaseAllowance(spender, amount);
		}
	}

	/**
	 * @notice Encodes the swap data
	 * @param amountOut The amount out from token swaps
	 * @param router The address of the router for token swaps
	 * @param routerSwapData The encoded swapData from token swaps
	 * @return swapData The encoded swapData for token swaps
	 */
	function _encodeSwapData(uint256 amountOut, address router, bytes32[] memory routerSwapData) internal pure returns (bytes32[] memory swapData) {
		uint256 length = routerSwapData.length;
		swapData = new bytes32[](length + 2);
		swapData[0] = bytes32(uint256(uint160(amountOut)));
		swapData[1] = bytes32(uint256(uint160(router)));
		for (uint256 i = 0; i < length; ++i) {
			swapData[i + 2] = routerSwapData[i];
		}
	}

	/**
	 * @notice Decodes the swap data
	 * @param swapData The encoded path
	 * @return amountOut The amount out from token swaps
	 * @return router The address of the router for token swaps
	 * @return routerSwapData The encoded swapData from token swaps
	 */
	function _decodeSwapData(bytes32[] memory swapData) internal pure returns (uint256 amountOut, address router, bytes32[] memory routerSwapData) {
		uint256 length = swapData.length - 2;
		routerSwapData = new bytes32[](length);
		amountOut = uint256(uint160(uint256(swapData[0])));
		router = address(uint160(uint256(swapData[1])));
		for (uint256 i = 0; i < length; ++i) {
			routerSwapData[i] = swapData[i + 2];
		}
	}
}
