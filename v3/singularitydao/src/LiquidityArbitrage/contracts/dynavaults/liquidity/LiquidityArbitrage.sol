// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/MetaDynaRouterAPI.sol";
import "../interfaces/DynaLiquidityAPI.sol";
import "../interfaces/DynaLiquidityProxyAssetManagerAPI.sol";
import "../utils/Clonable.sol";

// @title DynaLiquidity Arbitrage contract
contract LiquidityArbitrage is Clonable {
	using SafeERC20 for IERC20;

	bytes32 public constant ARBITRAGE_ROLE = keccak256("ARBITRAGE_ROLE");

	address public metaRouter;
	address public asset;
	address public assetManager;
	address public dynaLiquidity;
	bool public isSwapDisabled;

	error MissingMetaRouterAddress();
	error MissingAssetAddress();
	error MissingAssetManagerAddress();
	error MissingDynaLiqudityAddress();
	error AlreadyInitialized();
	error IncorrectRoute();
	error NotProfitable();

	function initialize(address metaRouterAddress, address assetAddress, address dynaLiquidityAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (metaRouterAddress == address(0)) revert MissingMetaRouterAddress();
		if (assetAddress == address(0)) revert MissingAssetAddress();
		if (dynaLiquidityAddress == address(0)) revert MissingDynaLiqudityAddress();
		if (metaRouter != address(0)) revert AlreadyInitialized();
		metaRouter = metaRouterAddress;
		asset = assetAddress;
		(, assetManager) = DynaLiquidityAPI(dynaLiquidityAddress).getAssetManager(assetAddress);
		dynaLiquidity = dynaLiquidityAddress;
		_grantRole(ARBITRAGE_ROLE, msg.sender);
		isSwapDisabled = true;
	}

	function setSwapDisabled(bool disableSwap) external onlyRole(DEFAULT_ADMIN_ROLE) {
		isSwapDisabled = disableSwap;
	}

	function collect(address token, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
		IERC20(token).safeTransfer(msg.sender, amount);
	}

	function measureOpportunity(
		address tokenIn,
		uint256 amountIn,
		MetaDynaRouterAPI.Connector[] memory connectors
	) public view returns (uint256 expectedAmountOut) {
		if (tokenIn != connectors[connectors.length - 1].tokenOut) revert IncorrectRoute();
		(expectedAmountOut, ) = MetaDynaRouterAPI(metaRouter).previewSwapConnectors(tokenIn, amountIn, connectors);
	}

	function prepareArbitrage(
		address tokenIn,
		uint256 amountIn,
		MetaDynaRouterAPI.Connector[] memory connectors
	) public view returns (uint256 amountOut, bytes32[][] memory swapDataList) {
		if (tokenIn != connectors[connectors.length - 1].tokenOut) revert IncorrectRoute();
		(amountOut, swapDataList) = MetaDynaRouterAPI(metaRouter).previewSwapConnectors(tokenIn, amountIn, connectors);
	}

	function executeArbitrage(
		address tokenIn,
		uint256 amountIn,
		MetaDynaRouterAPI.Connector[] memory connectors,
		uint256[] memory minAmountsOut,
		bytes32[][] memory swapDataList
	) public onlyRole(ARBITRAGE_ROLE) {
		if (tokenIn != connectors[connectors.length - 1].tokenOut) revert IncorrectRoute();
		if (isSwapDisabled) DynaLiquidityAPI(dynaLiquidity).setSwapEnabled(true);
		address spender = metaRouter;
		uint256 allowance = IERC20(tokenIn).allowance(address(this), spender);
		if (allowance < amountIn) {
			IERC20(tokenIn).safeIncreaseAllowance(spender, amountIn - allowance);
		}
		MetaDynaRouterAPI(metaRouter).swapConnectors(tokenIn, amountIn, connectors, minAmountsOut, address(this), address(this), swapDataList);
		if (isSwapDisabled) DynaLiquidityAPI(dynaLiquidity).setSwapEnabled(false);
	}

	function arbToLiquidity(
		uint256 amountIn,
		MetaDynaRouterAPI.Connector[] memory connectors,
		uint256[] memory minAmountsOut,
		bytes32[][] memory swapDataList
	) public {
		uint256 initialBalance = IERC20(asset).balanceOf(address(this));
		executeArbitrage(asset, amountIn, connectors, minAmountsOut, swapDataList);
		uint256 finalBalance = IERC20(asset).balanceOf(address(this));
		if (finalBalance <= initialBalance) revert NotProfitable();
		uint256 gain = finalBalance - initialBalance;
		IERC20(asset).transfer(assetManager, gain);
		DynaLiquidityAPI(dynaLiquidity).liquidate(asset, gain);
	}
}
