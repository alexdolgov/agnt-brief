// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "../interfaces/IERC4626.sol";
import "../interfaces/IMetaDynaRouterAPI.sol";
import "../interfaces/ITokenWhitelistRegistryAPI.sol";
import "../routers/BaseDynaRouter.sol";
import "../utils/Checks.sol";

/**
 * @title ERC4626DynaZapper
 * @notice Allows users to swap between erc20 tokens and dyna vault shares
 */
contract ERC4626DynaZapper is BaseDynaRouter {
	using Checks for address;
	using SafeERC20 for IERC20;

	address public metaRouter;
	address public whitelistRegistry;
	mapping(address => bool) public isERC4626;

	event Deposit(address indexed depositor, uint256 amount);
	event Redeem(address indexed redeemer, uint256 amount);
	event RegisteredERC4626(address indexed erc4626, bool enabled);

	error NotWhitelisted();
	error MissingSwapData();
	error SlippageProtection();

	/**
	 * @notice Initializes the contract
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param metaRouterAddress The address of the meta router
	 * @param whitelistRegistryAddress The address of the token whitelist registry
	 */
	function initialize(address metaRouterAddress, address whitelistRegistryAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		metaRouterAddress.requireNonZeroAddress();
		whitelistRegistryAddress.requireNonZeroAddress();
		metaRouter.isNotAlreadyInitialized();
		metaRouter = metaRouterAddress;
		whitelistRegistry = whitelistRegistryAddress;
	}

	/**
	 * @notice register an ERC4626 vault
	 */
	function registerERC4626(address erc4626, bool enabled) external onlyRole(DEFAULT_ADMIN_ROLE) {
		isERC4626[erc4626] = enabled;
		emit RegisteredERC4626(erc4626, enabled);
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view override returns (uint256 amountOut) {
		bool tokenInIsERC4626 = isERC4626[tokenIn];
		bool tokenOutIsERC4626 = isERC4626[tokenOut];
		if (tokenInIsERC4626 && !tokenOutIsERC4626) {
			address vault = tokenIn;
			uint256 previewRedeem = IERC4626(vault).previewRedeem(amountIn);
			address depositToken = IERC4626(vault).asset();
			if (tokenOut == depositToken) return previewRedeem;
			return IMetaDynaRouterAPI(metaRouter).estimateConversion(depositToken, previewRedeem, tokenOut);
		}
		if (!tokenInIsERC4626 && tokenOutIsERC4626) {
			address vault = tokenOut;
			address depositToken = IERC4626(vault).asset();
			uint256 amountDeposit = amountIn;
			if (tokenIn != depositToken) {
				amountDeposit = IMetaDynaRouterAPI(metaRouter).estimateConversion(tokenIn, amountIn, depositToken);
			}
			return IERC4626(vault).previewDeposit(amountDeposit);
		}
	}

	/**
	 * @notice Previews swap between tokens
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
		bool tokenInIsERC4626 = isERC4626[tokenIn];
		bool tokenOutIsERC4626 = isERC4626[tokenOut];
		bytes32[] memory swapRouterSwapData;
		uint256 swapAmountOut;
		address swapRouter;
		router = address(this);
		if (tokenInIsERC4626 && !tokenOutIsERC4626) {
			address depositToken = IERC4626(tokenIn).asset();
			amountOut = IERC4626(tokenIn).previewRedeem(amountIn);
			if (tokenOut != depositToken) {
				(swapAmountOut, swapRouter, swapRouterSwapData) = IMetaDynaRouterAPI(metaRouter).previewSwap(depositToken, amountOut, tokenOut);
				swapData = _encodeSwapData(swapRouter, swapRouterSwapData);
				amountOut = swapAmountOut; // return value of redeem in tokenOut
			}
			return (amountOut, router, swapData);
		}
		if (!tokenInIsERC4626 && tokenOutIsERC4626) {
			address depositToken = IERC4626(tokenOut).asset();
			uint256 amountDeposit = amountIn;
			if (tokenIn != depositToken) {
				(amountDeposit, swapRouter, swapRouterSwapData) = IMetaDynaRouterAPI(metaRouter).previewSwap(tokenIn, amountDeposit, depositToken);
			}
			amountOut = IERC4626(tokenOut).previewDeposit(amountDeposit);
			swapData = _encodeSwapData(swapRouter, swapRouterSwapData);
			return (amountOut, router, swapData);
		}
	}

	/**
	 * @notice Previews swap between tokens with given route
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 * @return router The address of the selected router
	 * @return swapData The encoded swap data
	 */
	function previewSwapRoute(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		bytes32[] memory /*previewRoute*/
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		bool tokenInIsERC4626 = isERC4626[tokenIn];
		bool tokenOutIsERC4626 = isERC4626[tokenOut];
		bytes32[] memory swapRouterSwapData;
		uint256 swapAmountOut;
		address swapRouter;
		router = address(this);
		if (tokenInIsERC4626 && !tokenOutIsERC4626) {
			address depositToken = IERC4626(tokenIn).asset();
			amountOut = IERC4626(tokenIn).previewRedeem(amountIn);
			if (tokenOut != depositToken) {
				(swapAmountOut, swapRouter, swapRouterSwapData) = IMetaDynaRouterAPI(metaRouter).previewSwap(depositToken, amountOut, tokenOut);
				swapData = _encodeSwapData(swapRouter, swapRouterSwapData);
				amountOut = swapAmountOut; // return value of redeem in tokenOut
			}
			return (amountOut, router, swapData);
		}
		if (!tokenInIsERC4626 && tokenOutIsERC4626) {
			address depositToken = IERC4626(tokenOut).asset();
			uint256 amountDeposit = amountIn;
			if (tokenIn != depositToken) {
				(amountDeposit, swapRouter, swapRouterSwapData) = IMetaDynaRouterAPI(metaRouter).previewSwap(tokenIn, amountDeposit, depositToken);
			}
			amountOut = IERC4626(tokenOut).previewDeposit(amountDeposit);
			swapData = _encodeSwapData(swapRouter, swapRouterSwapData);
			return (amountOut, router, swapData);
		}
	}

	/**
	 * @notice Swaps (Deposits or redeems) between tokens and vault shares using the DynaRouter framework
	 * @dev We don't accept two vault tokens, migration is done in a separate contract
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @param minAmountOut The minimum amount out expected
	 * @param to The address of the receiver
	 * @param swapData The encoded swap data
	 */
	function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, address to, bytes32[] memory swapData) external override {
		if (!ITokenWhitelistRegistryAPI(whitelistRegistry).isTokenAllowedForUser(tokenOut, msg.sender)) revert NotWhitelisted();
		IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
		bool tokenInIsERC4626 = isERC4626[tokenIn];
		bool tokenOutIsERC4626 = isERC4626[tokenOut];
		address vault;
		if (tokenInIsERC4626 && !tokenOutIsERC4626) {
			vault = tokenIn;
			_redeem(amountIn, tokenOut, minAmountOut, to, vault, swapData);
			return;
		}
		if (!tokenInIsERC4626 && tokenOutIsERC4626) {
			vault = tokenOut;
			_deposit(tokenIn, amountIn, minAmountOut, to, vault, swapData);
		}
	}

	/**
	 * @notice Deposits an amount of tokenIn in a DynaERC4626
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param receiver The address of the receiver
	 * @param swapData The encode swap data
	 */
	function _deposit(address tokenIn, uint256 amountIn, uint256 minAmountOut, address receiver, address vault, bytes32[] memory swapData) private {
		uint256 amountDeposit = amountIn;
		address depositToken = IERC4626(vault).asset();
		if (tokenIn != depositToken) {
			if (swapData.length == 0) revert MissingSwapData();
			uint256 initialBalanceDeposit = IERC20(depositToken).balanceOf(address(this));
			(address router, bytes32[] memory routerSwapData) = _decodeSwapData(swapData);
			_approveTokenIfNeeded(tokenIn, metaRouter, amountIn);
			IMetaDynaRouterAPI(metaRouter).swap(tokenIn, amountIn, depositToken, 0, router, address(this), routerSwapData);
			amountDeposit = IERC20(depositToken).balanceOf(address(this)) - initialBalanceDeposit;
		}
		_approveTokenIfNeeded(depositToken, vault, amountDeposit);
		uint256 balanceBefore = IERC20(vault).balanceOf(receiver);
		IERC4626(vault).deposit(amountDeposit, receiver);
		if (IERC20(vault).balanceOf(receiver) - balanceBefore < minAmountOut) revert SlippageProtection();
		emit Deposit(receiver, amountDeposit);
	}

	/**
	 * @notice Redeems an amount of vault shares to a token
	 * @param sharesIn The amount of shares to redeem
	 * @param tokenOut The address of the tokenOut
	 * @param minAmountOut The minimum amount out expected
	 * @param receiver The address of the receiver
	 * @param swapData The encode swap data
	 * @return amountDeposit the amount of deposit token received
	 */
	function _redeem(
		uint256 sharesIn,
		address tokenOut,
		uint256 minAmountOut,
		address receiver,
		address vault,
		bytes32[] memory swapData
	) private returns (uint256 amountDeposit) {
		address depositToken = IERC4626(vault).asset();
		if (tokenOut == depositToken) {
			uint256 balanceBefore = IERC20(depositToken).balanceOf(receiver);
			amountDeposit = IERC4626(vault).redeem(sharesIn, receiver, address(this));
			if (IERC20(depositToken).balanceOf(receiver) - balanceBefore < minAmountOut) revert SlippageProtection();
			return amountDeposit;
		}
		(address router, bytes32[] memory routerSwapData) = _decodeSwapData(swapData);
		amountDeposit = IERC4626(vault).redeem(sharesIn, address(this), address(this));
		_approveTokenIfNeeded(depositToken, metaRouter, amountDeposit);
		IMetaDynaRouterAPI(metaRouter).swap(depositToken, amountDeposit, tokenOut, minAmountOut, router, receiver, routerSwapData);
		emit Redeem(receiver, sharesIn);
	}

	/**
	 * @notice Encodes the swap data
	 * @param router The address of the router for token swaps
	 * @param routerSwapData The encoded swapData from token swaps
	 * @return swapData The encoded swapData for token swaps
	 */
	function _encodeSwapData(address router, bytes32[] memory routerSwapData) internal pure returns (bytes32[] memory swapData) {
		uint256 length = routerSwapData.length;
		swapData = new bytes32[](length + 1);
		swapData[0] = bytes32(uint256(uint160(router)));
		if (length > 1) {
			for (uint256 i = 0; i < length; ++i) {
				swapData[i + 1] = routerSwapData[i];
			}
		}
	}

	/**
	 * @notice Decodes the swap data
	 * @param swapData The encoded path
	 * @return router The address of the router for token swaps
	 * @return routerSwapData The encoded swapData from token swaps
	 */
	function _decodeSwapData(bytes32[] memory swapData) internal pure returns (address router, bytes32[] memory routerSwapData) {
		if (swapData.length > 0) {
			router = address(uint160(uint256(swapData[0])));
			uint256 dataLength = swapData.length - 1;
			routerSwapData = new bytes32[](dataLength);
			for (uint256 i = 0; i < dataLength; ++i) {
				routerSwapData[i] = swapData[i + 1];
			}
		}
	}
}
