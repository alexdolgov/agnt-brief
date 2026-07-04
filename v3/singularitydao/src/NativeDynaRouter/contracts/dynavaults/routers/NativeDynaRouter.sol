// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/thirdparty/IWETH.sol";
import "../interfaces/NativeDynaRouterAPI.sol";
import "../interfaces/MetaDynaRouterAPI.sol";

/**
 * @title Native DynaRouter
 * @notice Supports wrapping and unwrapping native gas tokens into/from Wrapped ERC20
 */
contract NativeDynaRouter is NativeDynaRouterAPI, AccessControl {
	using SafeERC20 for IERC20;

	error MissingAddress();
	error AlreadyInitialized();
	error WrongAmount();
	error MinAmountOut();
	error ETHTransferFailed();

	address public metaRouter;
	address public WRAPPED_NATIVE;
	address public USE_NATIVE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	receive() external payable {}

	/**
	 * @notice Initializes the contract
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param wrappedNativeAddress The address of the wrapped native token
	 * @param metaRouterAddress The address of the meta router
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
	 * @param token The token to check
	 * @return spender The address fo the spender
	 * @return allowed The amount of token allowed to spend
	 */
	function spenderAllowance(address /* selectedRouter */, address token) external view override returns (address spender, uint256 allowed) {
		spender = address(this);
		allowed = IERC20(token).allowance(_msgSender(), spender);
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view override returns (uint256 amountOut) {
		(amountOut, , ) = previewSwap(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice Previews swap between tokens allowing wrapping of native token
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The encoded swap data
	 */
	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		bool wrap = tokenIn == USE_NATIVE && tokenOut == WRAPPED_NATIVE;
		bool unwrap = tokenIn == WRAPPED_NATIVE && tokenOut == USE_NATIVE;
		router = address(this);
		bytes32[] memory routerSwapData;
		if (wrap || unwrap) return (amountIn, address(this), swapData);
		address swapRouter;
		if (tokenIn == USE_NATIVE && tokenOut != WRAPPED_NATIVE) {
			(amountOut, swapRouter, routerSwapData) = MetaDynaRouterAPI(metaRouter).previewSwap(WRAPPED_NATIVE, amountIn, tokenOut);
			swapData = _encodeSwapData(amountOut, swapRouter, routerSwapData);
			return (amountOut, router, swapData);
		}
		if (tokenIn != WRAPPED_NATIVE && tokenOut == USE_NATIVE) {
			(amountOut, swapRouter, routerSwapData) = MetaDynaRouterAPI(metaRouter).previewSwap(tokenIn, amountIn, WRAPPED_NATIVE);
			swapData = _encodeSwapData(amountOut, swapRouter, routerSwapData);
			return (amountOut, router, swapData);
		}
	}

	/**
	 * @notice Swaps between tokens allowing wrapping of native token
	 * @dev We use the vault router instead of the given
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @param minAmountOut The minimum amount out expected
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapData The encoded swap data
	 */
	function swap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		uint256 minAmountOut,
		address /* router */,
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
			(bool sent, ) = to.call{value: amountIn}("");
			if (!sent) revert ETHTransferFailed();
		}
		// wrap native and swap to token
		if (tokenIn == USE_NATIVE && tokenOut != WRAPPED_NATIVE) {
			if (msg.value != amountIn) revert WrongAmount();
			IWETH(WRAPPED_NATIVE).deposit{value: msg.value}();
			(uint256 minAmountOutRouter, address tokenRouter, bytes32[] memory routerSwapData) = _decodeSwapData(swapData);
			_approveTokenIfNeeded(WRAPPED_NATIVE, tokenRouter, amountIn);
			uint256 tokenBalanceBefore = IERC20(tokenOut).balanceOf(address(this));
			MetaDynaRouterAPI(metaRouter).swap(
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
			MetaDynaRouterAPI(metaRouter).swap(
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
			(bool sent, ) = to.call{value: received}("");
			if (!sent) revert ETHTransferFailed();
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
