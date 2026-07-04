// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "../interfaces/IDynaVaultAPI.sol";
import "../interfaces/IMetaDynaRouterAPI.sol";
import "../interfaces/IVaultRegistry.sol";
import "../interfaces/ITokenWhitelistRegistryAPI.sol";
import "../routers/BaseDynaRouter.sol";
import "../utils/Checks.sol";

/**
 * @title VaultZapper
 * @notice Allows users to swap between erc20 tokens and dyna vault shares
 */
contract VaultDynaZapper is BaseDynaRouter {
	bytes32 private constant PERMITTED_USER = keccak256("PERMITTED_USER");

	using Checks for address;
	using SafeERC20 for IERC20;

	address public metaRouter;
	address public vaultRegistry;
	address public whitelistRegistry;

	event Deposit(address indexed depositor, uint256 amount);
	event Redeem(address indexed redeemer, uint256 amount);

	error NotWhitelisted();
	error MissingSwapData();
	error VaultNotAllowed();

	/**
	 * @notice Initializes the contract
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param metaRouterAddress The address of the meta router
	 * @param vaultRegistryAddress The address of the vault registry
	 */
	function initialize(address vaultRegistryAddress, address metaRouterAddress, address whitelistRegistryAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		vaultRegistryAddress.requireNonZeroAddress();
		metaRouterAddress.requireNonZeroAddress();
		whitelistRegistryAddress.requireNonZeroAddress();
		vaultRegistry.isNotAlreadyInitialized();
		vaultRegistry = vaultRegistryAddress;
		metaRouter = metaRouterAddress;
		whitelistRegistry = whitelistRegistryAddress;
	}

	/**
	 * @notice Checks if Vault is enabled and in case of a permissioned vault, checks if caller is permitted
	 * @param vaultAddress THe address of the vault
	 */
	function checkVaultAllowed(address vaultAddress) public view returns (bool) {
		// disabled vaults are not allowed
		if (!IVaultRegistry(vaultRegistry).isVaultEnabled(vaultAddress)) return false;
		// permissionless vaults are allowed
		if (!AccessControl(vaultAddress).hasRole(PERMITTED_USER, address(this))) return true;
		// caller has to be permitted to call permissioned vaults
		return AccessControl(vaultAddress).hasRole(PERMITTED_USER, msg.sender);
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view override returns (uint256 amountOut) {
		bool tokenInIsVault = isVault(tokenIn);
		bool tokenOutIsVault = isVault(tokenOut);
		if ((tokenInIsVault || tokenOutIsVault) && !checkVaultAllowed(tokenInIsVault ? tokenIn : tokenOut)) {
			return 0;
		}
		if (tokenInIsVault && !tokenOutIsVault) {
			address vault = tokenIn;
			uint256 previewRedeem = IDynaVaultAPI(vault).previewRedeem(amountIn);
			address depositToken = IDynaVaultAPI(vault).asset();
			if (tokenOut == depositToken) return previewRedeem;
			return IMetaDynaRouterAPI(metaRouter).estimateConversion(depositToken, previewRedeem, tokenOut);
		}
		if (!tokenInIsVault && tokenOutIsVault) {
			address vault = tokenOut;
			address depositToken = IDynaVaultAPI(vault).asset();
			uint256 amountDeposit = amountIn;
			if (tokenIn != depositToken) {
				amountDeposit = IMetaDynaRouterAPI(metaRouter).estimateConversion(tokenIn, amountIn, depositToken);
			}
			return IDynaVaultAPI(vault).previewDeposit(amountDeposit);
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
		bool tokenInIsVault = isVault(tokenIn);
		bool tokenOutIsVault = isVault(tokenOut);
		bytes32[] memory swapRouterSwapData;
		uint256 swapAmountOut;
		address swapRouter;
		IDynaVaultAPI vault;
		router = address(this);
		if ((tokenInIsVault || tokenOutIsVault) && !checkVaultAllowed(tokenInIsVault ? tokenIn : tokenOut)) {
			return (0, router, new bytes32[](0));
		}
		if (tokenInIsVault && !tokenOutIsVault) {
			vault = IDynaVaultAPI(tokenIn);
			address depositToken = vault.asset();
			amountOut = vault.previewRedeem(amountIn);
			if (tokenOut != depositToken) {
				(swapAmountOut, swapRouter, swapRouterSwapData) = IMetaDynaRouterAPI(metaRouter).previewSwap(depositToken, amountOut, tokenOut);
				swapData = _encodeSwapData(swapRouter, swapRouterSwapData);
				amountOut = swapAmountOut; // return value of redeem in tokenOut
			}
			return (amountOut, router, swapData);
		}
		if (!tokenInIsVault && tokenOutIsVault) {
			vault = IDynaVaultAPI(tokenOut);
			address depositToken = vault.asset();
			uint256 amountDeposit = amountIn;
			if (tokenIn != depositToken) {
				(amountDeposit, swapRouter, swapRouterSwapData) = IMetaDynaRouterAPI(metaRouter).previewSwap(tokenIn, amountDeposit, depositToken);
			}
			amountOut = vault.previewDeposit(amountDeposit);
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
		bool tokenInIsVault = isVault(tokenIn);
		bool tokenOutIsVault = isVault(tokenOut);
		address vault;
		if ((tokenInIsVault || tokenOutIsVault) && !checkVaultAllowed(tokenInIsVault ? tokenIn : tokenOut)) {
			revert VaultNotAllowed();
		}
		if (tokenInIsVault && !tokenOutIsVault) {
			vault = tokenIn;
			_redeem(amountIn, tokenOut, minAmountOut, to, vault, swapData);
			return;
		}
		if (!tokenInIsVault && tokenOutIsVault) {
			vault = tokenOut;
			_deposit(tokenIn, amountIn, minAmountOut, to, vault, swapData);
		}
	}

	/**
	 * @notice Deposits an amount of tokenIn in a DynaVault
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param receiver The address of the receiver
	 * @param swapData The encode swap data
	 */
	function _deposit(address tokenIn, uint256 amountIn, uint256 minAmountOut, address receiver, address vault, bytes32[] memory swapData) private {
		uint256 amountDeposit = amountIn;
		address depositToken = IDynaVaultAPI(vault).asset();
		address _tokenIn = tokenIn;
		uint256 _amountIn = amountIn;
		if (tokenIn != depositToken) {
			if (swapData.length == 0) revert MissingSwapData();
			uint256 initialBalanceDeposit = IERC20(depositToken).balanceOf(address(this));
			(address router, bytes32[] memory routerSwapData) = _decodeSwapData(swapData);
			_approveTokenIfNeeded(_tokenIn, metaRouter, _amountIn);
			IMetaDynaRouterAPI(metaRouter).swap(_tokenIn, _amountIn, depositToken, 0, router, address(this), routerSwapData);
			amountDeposit = IERC20(depositToken).balanceOf(address(this)) - initialBalanceDeposit;
		}
		_approveTokenIfNeeded(depositToken, vault, amountDeposit);
		IDynaVaultAPI(vault).depositCheckSlippage(amountDeposit, receiver, minAmountOut);
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
		address depositToken = IDynaVaultAPI(vault).asset();
		if (tokenOut == depositToken) return IDynaVaultAPI(vault).redeemCheckSlippage(sharesIn, receiver, address(this), minAmountOut);
		(address router, bytes32[] memory routerSwapData) = _decodeSwapData(swapData);
		amountDeposit = IDynaVaultAPI(vault).redeemCheckSlippage(sharesIn, address(this), address(this), 0);
		_approveTokenIfNeeded(depositToken, metaRouter, amountDeposit);
		IMetaDynaRouterAPI(metaRouter).swap(depositToken, amountDeposit, tokenOut, minAmountOut, router, receiver, routerSwapData);
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
