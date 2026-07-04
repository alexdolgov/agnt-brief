// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "../interfaces/DynaVaultAPI.sol";
import "../interfaces/DynaRouterMetaAPI.sol";
import "../interfaces/IVaultRegistry.sol";
import "../interfaces/TokenWhitelistRegistryAPI.sol";
import "../routers/BaseDynaRouter.sol";

import "hardhat/console.sol";

/**
 * @title VaultZapper
 * @notice Allows users to swap between erc20 tokens and dynavault shares
 */
contract VaultZapper is BaseDynaRouter {
	using SafeERC20 for IERC20;

	event Deposit(address indexed depositor, uint256 amount);
	event Redeem(address indexed redeemer, uint256 amount);

	error NotWhitelisted();
	error MissingVaultRegistry();
	error MissingMetaRouter();
	error MissingWhitelistRegistry();
	error AlreadyInitialized();

	address public metaRouter;
	address public vaultRegistry;
	address public whitelistRegistry;

	/**
	 * @notice Initializes the vault zapper
	 * @param metaRouterAddress The address of the meta router
	 * @param vaultRegistryAddress The address of the vault registry
	 */
	function initialize(address vaultRegistryAddress, address metaRouterAddress, address whitelistRegistryAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (vaultRegistryAddress == address(0)) revert MissingVaultRegistry();
		if (metaRouterAddress == address(0)) revert MissingMetaRouter();
		if (whitelistRegistryAddress == address(0)) revert MissingWhitelistRegistry();
		if (vaultRegistry != address(0)) revert AlreadyInitialized();
		vaultRegistry = vaultRegistryAddress;
		metaRouter = metaRouterAddress;
		whitelistRegistry = whitelistRegistryAddress;
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @dev We only give estimations for conversions from or to dyna vault shares
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of input token to zap
	 * @param tokenOut The address of the deposit token
	 * @return amountOut An estimate of shares returned from zapping into vault
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view override returns (uint256 amountOut) {
		bool tokenInIsVault = isVault(tokenIn);
		bool tokenOutIsVault = isVault(tokenOut);
		if (tokenInIsVault && !tokenOutIsVault) {
			address vault = tokenIn;
			uint256 previewRedeem = DynaVaultAPI(vault).previewRedeem(amountIn);
			address depositToken = DynaVaultAPI(vault).asset();
			if (tokenOut == depositToken) return previewRedeem;
			return DynaRouterMetaAPI(metaRouter).estimateConversion(depositToken, previewRedeem, tokenOut);
		}
		if (!tokenInIsVault && tokenOutIsVault) {
			address vault = tokenOut;
			address depositToken = DynaVaultAPI(vault).asset();
			uint256 amountDeposit = amountIn;
			if (tokenIn != depositToken) {
				amountDeposit = DynaRouterMetaAPI(metaRouter).estimateConversion(tokenIn, amountIn, depositToken);
			}
			return DynaVaultAPI(vault).previewDeposit(amountDeposit);
		}
	}

	/**
	 * @notice Previews swap between tokens and vault shares
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn to swap
	 * @param tokenOut The token wanted
	 */
	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		bool tokenInIsVault = isVault(tokenIn);
		console.log("vault zapper:  previewSwap : tokenInIsVault: %s", tokenInIsVault);
		bool tokenOutIsVault = isVault(tokenOut);
		bytes32[] memory swapRouterSwapData;
		uint256 swapAmountOut;
		address swapRouter;
		DynaVaultAPI vault;
		// redeem
		if (tokenInIsVault && !tokenOutIsVault) {
			vault = DynaVaultAPI(tokenIn);
			address depositToken = vault.asset();
			amountOut = vault.previewRedeem(amountIn);
			console.log("vault zapper: previewSwap: previewRedeem : amountOut: %s", amountOut);
			if (tokenOut != depositToken) {
				(swapAmountOut, swapRouter, swapRouterSwapData) = DynaRouterMetaAPI(metaRouter).previewSwap(depositToken, amountOut, tokenOut);
				swapData = _encodeSwapData(swapRouter, swapRouterSwapData);
				amountOut = swapAmountOut; // return value of redeem in tokenOut
			}
			console.log("vault zapper: preview swap  zap out amount out: %s", amountOut);
			return (amountOut, address(this), swapData);
		}
		// deposit
		if (!tokenInIsVault && tokenOutIsVault) {
			vault = DynaVaultAPI(tokenOut);
			address depositToken = vault.asset();
			uint256 amountDeposit = amountIn;
			if (tokenIn != depositToken) {
				(amountDeposit, swapRouter, swapRouterSwapData) = DynaRouterMetaAPI(metaRouter).previewSwap(tokenIn, amountDeposit, depositToken);
			}
			amountOut = vault.previewDeposit(amountDeposit);
			swapData = _encodeSwapData(swapRouter, swapRouterSwapData);
			return (amountOut, address(this), swapData);
		}
	}

	/**
	 * @notice Swaps (Deposits or redeems) between tokens and vault shares using the dyna router framework
	 * @dev We dont accept two vault tokens, migration is done in a separate contract
	 * @param tokenIn The address of the token to swap from
	 * @param amountIn The amount of tokenIn to swap
	 * @param tokenOut The address of the token to swap to
	 * @param minAmountOut The minimum amount of tokens to receive from swap
	 * @param from The address of the sender
	 * @param to The address of the receiver
	 * @param swapData The swap data with the token path
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
	) external override {
		if (!TokenWhitelistRegistryAPI(whitelistRegistry).isTokenAllowedForUser(tokenOut, msg.sender)) revert NotWhitelisted();
		IERC20(tokenIn).safeTransferFrom(from, address(this), amountIn);
		bool tokenInIsVault = isVault(tokenIn);
		bool tokenOutIsVault = isVault(tokenOut);
		address vault;
		if (tokenInIsVault && !tokenOutIsVault) {
			vault = tokenIn;
			_redeem(amountIn, tokenOut, minAmountOut, from, to, vault, swapData);
			return;
		}
		if (!tokenInIsVault && tokenOutIsVault) {
			vault = tokenOut;
			_deposit(tokenIn, amountIn, minAmountOut, to, vault, swapData);
		}
	}

	/**
	 * @notice Deposits an amount of tokenInin a Dyna Vault by zapping into the deposit token of the vault
	 * @param tokenIn The address of the token to zap into the the dyna vault
	 * @param amountIn The amount in tokenIn to deposit
	 * @param receiver The address of the receiver to deposit for
	 * @param swapData The swap data with the token path
	 */
	function _deposit(address tokenIn, uint256 amountIn, uint256 minAmountOut, address receiver, address vault, bytes32[] memory swapData) private {
		uint256 amountDeposit = amountIn;
		address depositToken = DynaVaultAPI(vault).asset();
		address _tokenIn = tokenIn;
		uint256 _amountIn = amountIn;
		if (tokenIn != depositToken) {
			uint256 intitialBalanceDeposit = IERC20(depositToken).balanceOf(address(this));
			(address router, bytes32[] memory routerSwapData) = _decodeSwapData(swapData);
			_approveTokenIfNeeded(_tokenIn, router, _amountIn);
			console.log("vaultZapper._deposit calling swap %s %s -> %s", _amountIn, _tokenIn, depositToken);
			DynaRouterMetaAPI(metaRouter).swap(_tokenIn, _amountIn, depositToken, 0, router, address(this), address(this), routerSwapData);
			amountDeposit = IERC20(depositToken).balanceOf(address(this)) - intitialBalanceDeposit;
		}
		console.log("vaultZapper._deposit : amountDeposit: %s", amountDeposit);
		_approveTokenIfNeeded(depositToken, vault, amountDeposit);
		DynaVaultAPI(vault).depositCheckSlippage(amountDeposit, receiver, minAmountOut);
		emit Deposit(receiver, amountDeposit);
	}

	/**
	 * @notice Redeems an amount of vault shares to a token
	 * @param sharesIn The amount of shares to redeem
	 * @param tokenOut The address of the token wanted
	 * @param minAmountOut The minumium amount out expected
	 * @param receiver The address of the receiver to deposit for
	 * @param swapData The swap data with the token path
	 * @return amountDeposit the amount of deposit token received
	 */
	function _redeem(
		uint256 sharesIn,
		address tokenOut,
		uint256 minAmountOut,
		address owner,
		address receiver,
		address vault,
		bytes32[] memory swapData
	) private returns (uint256 amountDeposit) {
		address depositToken = DynaVaultAPI(vault).asset();
		if (tokenOut == depositToken) return DynaVaultAPI(vault).redeemCheckSlippage(sharesIn, receiver, owner, minAmountOut);
		(address router, bytes32[] memory routerSwapData) = _decodeSwapData(swapData);
		_approveTokenIfNeeded(vault, vault, sharesIn); // vault is the shares token
		amountDeposit = DynaVaultAPI(vault).redeemCheckSlippage(sharesIn, address(this), address(this), 0);
		_approveTokenIfNeeded(depositToken, router, amountDeposit);
		DynaRouterMetaAPI(metaRouter).swap(depositToken, amountDeposit, tokenOut, minAmountOut, router, address(this), receiver, routerSwapData);
		emit Redeem(receiver, sharesIn);
	}

	/**
	 * @notice Checks if a token is a vault
	 * @param token The address of the token to check
	 * @return isTokenVault Boolean
	 */
	function isVault(address token) private view returns (bool) {
		return IVaultRegistry(vaultRegistry).isVaultRegistered(token);
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
		router = address(uint160(uint256(swapData[0])));
		if (swapData.length > 1) {
			uint256 length = swapData.length - 1;
			routerSwapData = new bytes32[](length);
			for (uint256 i = 0; i < length; ++i) {
				routerSwapData[i] = swapData[i + 1];
			}
		}
	}
}
