// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "solady/src/tokens/ERC20.sol";
import "solady/src/accounts/Receiver.sol";

import "../interfaces/IDynaRouterAPI.sol";
import "../interfaces/IMetaDynaRouterAPI.sol";
import "../interfaces/IReferenceAssetOracle.sol";
import "../interfaces/ITokenWhitelistRegistryAPI.sol";
import "../interfaces/thirdparty/aerodrome/ICLGauge.sol"; // imports nftmanager and cl pool interfaces

import "./TokenizedStrategyLib.sol";

import "../routers/BaseDynaRouter.sol";
import "../utils/Clonable.sol";
import "../utils/Checks.sol";

/**
 * @title ERC20 Tokenized Aerodrome Concentrated Liquidity Strategy
 * @notice The contract only accepts swaps between deposit asset and shares,
 * for swaps to other tokens we rely on the DynaRouter framework.
 * @dev we dont invest or compound in swap in, but we divest in swap out
 */
contract TokenizedAerodromeCLStrategy is ERC20, BaseDynaRouter, Receiver, Clonable {
	using FixedPointMathLib for uint256;
	using SafeERC20 for IERC20;
	using Checks for address;

	uint256 private compoundThreshold; // minimum amount of reward token to swap
	uint256 private ASSET_PRECISION; // the asset token decimals
	uint256 private constant PRECISION = 1e18; // the decimals of the strategy shares

	address public asset; // the deposit(swap in/out) token of the strategy
	address private assetOracle;
	address private metaDynaRouter;
	address private rewardToken; // the token earned from staking in aerodrome is $AERO
	address private whitelistRegistry; // whitelist registry used to control who can swap in and out

	uint256 public lastCompound;
	uint256 public lastHarvest;

	// pool information
	address private gauge;
	address private nftManager;
	address private clPool;
	address private token0;
	address private token1;
	uint256 public tokenId; // the position nft id
	int24 private tickLower;
	int24 private tickUpper;
	bool private token0IsNotAsset;
	bool private token1IsNotAsset;

	bool public paused; // deposits(swap in) are not allowed when paused

	event Pause(bool);
	event Harvest();
	event Compound();
	event InitialMint();
	event LiquidateAll();
	event EmergencyExit();
	event UpdatedCompoundThreshold(uint256 newCompoundThreshold);
	event UpdatedWhitelistRegistry(address newWhitelistRegistry);

	error MissingSwapDatas();
	error MinAmountOut();
	error NotWhitelisted();
	error Slot0ReadFailed();
	error MissingSwapdata();

	/** @dev name override: construct string in lib */
	function name() public view override returns (string memory) {
		int24 tickSpacing = ICLGauge(gauge).tickSpacing();
		return TokenizedStrategyLib.strategyName(token0, token1, tickLower, tickUpper, tickSpacing);
	}

	/** @dev symbol override: construct string in lib */
	function symbol() public view override returns (string memory) {
		int24 tickSpacing = ICLGauge(gauge).tickSpacing();
		return TokenizedStrategyLib.strategySymbol(token0, token1, tickLower, tickUpper, tickSpacing);
	}

	/**
	 * @dev Returns the assets in the contract
	 * @notice Will normally be 0 as assets are always compounded
	 * @return assets The amount of assets available in the contract
	 */
	function assetBalance() public view returns (uint256 assets) {
		assets = IERC20(asset).balanceOf(address(this));
	}

	/// @dev we already add assets balance in totalAssets so we dont add it here if it is one of the underlying tokens
	function _underlyingAssetValue() private view returns (uint256 assets) {
		if (token0IsNotAsset) {
			uint256 amount0 = IERC20(token0).balanceOf(address(this));
			if (amount0 != 0) {
				(uint256 amountAssets0, ) = IReferenceAssetOracle(assetOracle).tokenReferenceValue(token0, amount0);
				assets += amountAssets0;
			}
		}

		if (token1IsNotAsset) {
			uint256 amount1 = IERC20(token1).balanceOf(address(this));
			if (amount1 != 0) {
				(uint256 amountAssets1, ) = IReferenceAssetOracle(assetOracle).tokenReferenceValue(token1, amount1);
				assets += amountAssets1;
			}
		}
	}

	/**
	 * @notice Returns the asset value of the liquidity in the gauge
	 * @return assets The amount of assets invested in the third party contract
	 */
	function thirdPartyAssets() public view returns (uint256 assets) {
		(uint256 assets0, uint256 assets1) = _getAssetsForLiquidityUsingOracle(_getCurrentPrice(clPool));
		assets = assets0 + assets1;
	}

	/**
	 * @notice We keep this from erc4626 for third party queries
	 * @dev See {IERC4626-totalAssets}.
	 */
	function totalAssets() public view returns (uint256 assets) {
		assets = assetBalance() + _underlyingAssetValue() + thirdPartyAssets();
	}

	/**
	 * @notice Returns the asset value of the pending yield in the guage
	 * @return pendingAssets The amount of pending yield in the third party contract converted to asset
	 */
	function thirdPartyPendingAssets() public view returns (uint256 pendingAssets) {
		uint256 pendingReward = ICLGauge(gauge).earned(address(this), tokenId);

		if (pendingReward != 0) {
			(pendingAssets, ) = IReferenceAssetOracle(assetOracle).tokenReferenceValue(rewardToken, pendingReward);
		}
	}

	/**
	 * @notice Previews swap between tokens and liquidity
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut A preview of tokens returned
	 * @return router not in use but left to satisfy base contract
	 * @return swapData The encoded swap data
	 */
	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		// zap in to the strategy
		if (tokenIn == asset && tokenOut == address(this)) return (_previewZapIn(amountIn), address(this), swapData);

		// zap out of the strategy
		if (tokenIn == address(this) && tokenOut == asset) return _previewZapOut(amountIn);
	}

	/**
	 * @notice Previews swap between tokens and liquidity for a given route
	 * @dev ignores route in this case, since only one route is supported
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut A preview of tokens returned
	 * @return router not in use but left to satisfy base contract
	 * @return swapData The encoded swap data
	 */
	function previewSwapRoute(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		bytes32[] memory /* previewRoute */
	) public view override returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		return previewSwap(tokenIn, amountIn, tokenOut);
	}

	/** @notice Initializes the contract and stakes the nft position in the gauge */
	function initialize(
		address assetAddress,
		address rewardTokenAddress,
		address assetOracleAddress,
		address metaDynaRouterAddress,
		address clPoolAddress,
		int24 mintTickLower,
		int24 mintTickUpper
	) external onlyRole(DEFAULT_ADMIN_ROLE) {
		asset.isNotAlreadyInitialized();

		assetAddress.requireNonZeroAddress();
		rewardTokenAddress.requireNonZeroAddress();
		assetOracleAddress.requireNonZeroAddress();
		metaDynaRouterAddress.requireNonZeroAddress();
		clPoolAddress.requireNonZeroAddress();

		asset = assetAddress;
		rewardToken = rewardTokenAddress;
		assetOracle = assetOracleAddress;
		metaDynaRouter = metaDynaRouterAddress;
		clPool = clPoolAddress;

		ASSET_PRECISION = 10 ** ERC20(asset).decimals();

		token0 = ICLPool(clPool).token0();
		token1 = ICLPool(clPool).token1();
		gauge = ICLPool(clPool).gauge();
		nftManager = ICLPool(clPool).nft();

		tickLower = mintTickLower;
		tickUpper = mintTickUpper;
		token0IsNotAsset = asset != token0;
		token1IsNotAsset = asset != token1;
	}

	function initialMint(uint256 assetsIn, uint128 minAmountLiquidity, bytes32[] memory swapData) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (totalSupply() != 0) revert Checks.AlreadyInitialized();

		_mintInitialPostition(assetsIn, minAmountLiquidity, swapData);

		// mint initial shares to 1:1 share to asset ratio
		uint256 shares = _convertToSharesGivenTotalAssets(totalAssets(), ASSET_PRECISION);

		_mint(msg.sender, shares);

		emit InitialMint();
	}

	/**
	 * @notice Allows pausing deposits
	 * @param pause The new pause state
	 */
	function setPaused(bool pause) external onlyRole(DEFAULT_ADMIN_ROLE) {
		paused = pause;
		emit Pause(pause);
	}

	/**
	 * @notice Sets the minimum amount of rewards to swap during compound
	 * @dev Only DEFAULT_ADMIN_ROLE role can call this
	 * @param newCompoundThreshold The minimum amount of rewards to swap
	 */
	function setCompoundThreshold(uint256 newCompoundThreshold) external onlyRole(DEFAULT_ADMIN_ROLE) {
		compoundThreshold = newCompoundThreshold;
		emit UpdatedCompoundThreshold(newCompoundThreshold);
	}

	/**
	 * @notice Sets the token whitelist registry used
	 * @param newWhitelistRegistry The new token whitelist registry
	 */
	function setWhitelistRegistry(address newWhitelistRegistry) external onlyRole(DEFAULT_ADMIN_ROLE) {
		newWhitelistRegistry.requireNonZeroAddress();
		whitelistRegistry = newWhitelistRegistry;
		emit UpdatedWhitelistRegistry(newWhitelistRegistry);
	}

	/**
	 * @notice Calculates the value of assets in shares
	 * @param assets The amount of assets
	 * @return shares The value of assets in shares
	 */

	function convertToShares(uint256 assets) external view returns (uint256 shares) {
		return _convertToSharesGivenTotalAssets(assets, totalAssets());
	}

	/**
	 * @notice Calculates the value of shares in assets
	 * @param shares The amount of shares
	 * @return assets value of shares in assets
	 */
	function convertToAssets(uint256 shares) external view returns (uint256 assets) {
		return _convertToAssets(shares);
	}

	/**
	 * @notice Estimate conversion of tokenIn to tokenOut
	 * @param tokenIn The address of tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @return amountOut An estimate of tokens returned
	 */
	function estimateConversion(address tokenIn, uint256 amountIn, address tokenOut) external view override returns (uint256 amountOut) {
		(amountOut, , ) = previewSwap(tokenIn, amountIn, tokenOut);
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
		// if a token whitelist is set then users must be whitelisted to swap
		if (!ITokenWhitelistRegistryAPI(whitelistRegistry).isTokenAllowedForUser(tokenOut, msg.sender)) revert NotWhitelisted();

		// zap in to strategy
		if (tokenIn == asset && tokenOut == address(this) && !paused) _zapIn(amountIn, minAmountOut, to);

		// zap out of strategy
		if (tokenIn == address(this) && tokenOut == asset) _zapOut(amountIn, minAmountOut, to, swapData);
	}

	/**
	 * @notice Preview of compound
	 * @return amountOut The expected amount of liquidity from the compound
	 * @return swapData The swapData for the swap of reward token to the underlying tokenss
	 */
	function previewCompound() external view returns (uint256 amountOut, bytes32[] memory swapData) {
		uint256 totalReward = IERC20(rewardToken).balanceOf(address(this)) + ICLGauge(gauge).earned(address(this), tokenId);

		address[] memory routers = new address[](3);
		bytes32[][] memory swapDatas = new bytes32[][](3);

		uint256 assets;
		uint256 amountAssetsForToken0;
		uint256 amountAssetsForToken1;

		if (totalReward > compoundThreshold && asset != rewardToken) {
			// if there is enough reward and we need to swap to asset
			(assets, routers[0], swapDatas[0]) = IMetaDynaRouterAPI(metaDynaRouter).previewSwap(rewardToken, totalReward, asset);
		}

		// add contract asset balance and calculate the amounts of assets needed for swaps to underlying tokens
		assets += IERC20(asset).balanceOf(address(this));
		(amountAssetsForToken0, amountAssetsForToken1) = _calcAssetRatiosfromPosition(assets);

		uint256 amount0 = amountAssetsForToken0;
		if (amountAssetsForToken0 != 0 && token0IsNotAsset) {
			(amount0, routers[1], swapDatas[1]) = IMetaDynaRouterAPI(metaDynaRouter).previewSwap(asset, amountAssetsForToken0, token0);
		}

		uint256 amount1 = amountAssetsForToken1;
		if (amountAssetsForToken1 != 0 && token1IsNotAsset) {
			(amount1, routers[2], swapDatas[2]) = IMetaDynaRouterAPI(metaDynaRouter).previewSwap(asset, amountAssetsForToken1, token1);
		}

		if (token0 != rewardToken && token0IsNotAsset) amount0 += IERC20(token0).balanceOf(address(this));
		if (token1 != rewardToken && token1IsNotAsset) amount1 += IERC20(token1).balanceOf(address(this));

		amountOut = TokenizedStrategyLib.getLiquidityForAmounts(_getCurrentPrice(clPool), tickLower, tickUpper, amount0, amount1);
		swapData = _encodeSwapData(routers, swapDatas);
	}

	/**
	 * @notice This compounds reward token in the contract and pending reward in the gauge
	 * @param minAmountOut The minimum amount of liquidity expected from the compound
	 * @param swapData The swapData from the preview used to swap reward to the underlying tokens
	 */
	function compound(uint256 minAmountOut, bytes32[] memory swapData) external onlyRole(DEFAULT_ADMIN_ROLE) {
		(, , , , , , , uint128 liquidityBefore, , , , ) = INonfungiblePositionManager(nftManager).positions(tokenId);

		_harvest();

		(address[] memory routers, bytes32[][] memory swapDatas) = _decodeSwapData(swapData);
		if (swapDatas.length == 0) revert MissingSwapDatas();

		uint256 rewardBalance = IERC20(rewardToken).balanceOf(address(this));
		if (rewardBalance > compoundThreshold) {
			address router = routers[0];
			if (router != address(0)) _approveAndSwap(rewardToken, rewardBalance, asset, router, swapDatas[0]);
		}

		(uint256 amountAssetsForToken0, uint256 amountAssetsForToken1) = _calcAssetRatiosfromPosition(assetBalance());

		// swap to tokens
		if (amountAssetsForToken0 != 0 && token0IsNotAsset) {
			address router0 = routers[1];
			if (router0 != address(0)) _approveAndSwap(asset, amountAssetsForToken0, token0, router0, swapDatas[1]);
		}

		if (amountAssetsForToken1 != 0 && token1IsNotAsset) {
			address router1 = routers[2];
			if (router1 != address(0)) _approveAndSwap(asset, amountAssetsForToken1, token1, router1, swapDatas[2]);
		}

		_increasePosition();

		(, , , , , , , uint128 liquidityAfter, , , , ) = INonfungiblePositionManager(nftManager).positions(tokenId);

		if ((liquidityAfter - liquidityBefore) < minAmountOut) revert MinAmountOut();

		lastCompound = block.timestamp;

		emit Compound();
	}

	/**
	 * @notice Preview the liquidation of all positions to the base asset
	 * @dev Only DEFAULT_ADMIN_ROLE can call this function
	 * @return amountOut The expected amount of assets from liquidating all positions
	 * @return swapData The encoded swap data needed for the liquidation
	 */
	function previewLiquidateAll() external view returns (uint256 amountOut, bytes32[] memory swapData) {
		(, , , , , , , uint128 liquidity, , , , ) = INonfungiblePositionManager(nftManager).positions(tokenId);

		(uint256 amount0, uint256 amount1) = TokenizedStrategyLib.getAmountsForLiquidity(_getCurrentPrice(clPool), tickLower, tickUpper, liquidity);

		address[] memory routers = new address[](2);
		bytes32[][] memory swapDatas = new bytes32[][](2);

		if (amount0 != 0 && token0IsNotAsset) {
			uint256 amountAssets0;
			(amountAssets0, routers[0], swapDatas[0]) = IMetaDynaRouterAPI(metaDynaRouter).previewSwap(token0, amount0, asset);
			amountOut = amountAssets0;
		} else {
			amountOut = amount0;
		}

		if (amount1 != 0 && token1IsNotAsset) {
			uint256 amountAssets1;
			(amountAssets1, routers[1], swapDatas[1]) = IMetaDynaRouterAPI(metaDynaRouter).previewSwap(token1, amount1, asset);
			amountOut += amountAssets1;
		} else {
			amountOut += amount1;
		}

		return (amountOut, _encodeSwapData(routers, swapDatas));
	}

	/**
	 * @notice Sweeps all underlying tokens in contract into the deposit asset
	 * @dev only admin can call
	 * @param minAmountOut The minimum amount of assets expected from liquidating the positions
	 * @param swapData The swapdata needed to swap the underlying tokens to asset
	 */
	function liquidateAll(uint256 minAmountOut, bytes32[] memory swapData) external onlyRole(DEFAULT_ADMIN_ROLE) {
		uint256 balanceBefore = IERC20(asset).balanceOf(address(this));

		(, , , , , , , uint128 liquidity, , , , ) = INonfungiblePositionManager(nftManager).positions(tokenId);

		_decreasePosition(liquidity - 1); // we need to leave 1 wei to keep the position

		uint256 balance0Before = IERC20(token0).balanceOf(address(this));
		uint256 balance1Before = IERC20(token1).balanceOf(address(this));

		(address[] memory routers, bytes32[][] memory swapDatas) = _decodeSwapData(swapData);

		if (balance0Before != 0 && token0IsNotAsset) _approveAndSwap(token0, balance0Before, asset, routers[0], swapDatas[0]);
		if (balance1Before != 0 && token1IsNotAsset) _approveAndSwap(token1, balance1Before, asset, routers[1], swapDatas[1]);

		uint256 balanceAfter = IERC20(asset).balanceOf(address(this));
		if ((balanceAfter - balanceBefore) < minAmountOut) revert MinAmountOut();

		emit LiquidateAll();
	}

	/**
	 * @notice Preview of swapping assets to shares
	 * @param assetsIn The amount of assets to swap
	 * @return amountOut The amount of shares expected from the swap
	 */
	function _previewZapIn(uint256 assetsIn) private view returns (uint256 amountOut) {
		amountOut = _convertToSharesGivenTotalAssets(assetsIn, totalAssets());
	}

	/**
	 * @notice Preview of swapping shares to assets
	 * @param sharesIn The amount of shares to swap
	 * @return amountOut The amount of assets expected from the swap
	 * @return router Not used but left to satisfy base contract
	 */
	function _previewZapOut(uint256 sharesIn) private view returns (uint256 amountOut, address router, bytes32[] memory swapData) {
		router = address(this);
		// convert shares to assets
		uint256 requestedAmountOfAssets = _convertToAssets(sharesIn);
		uint256 balance = IERC20(asset).balanceOf(address(this));

		// withdraw and swap when necessary
		if (requestedAmountOfAssets > balance) {
			uint256 amountToWithdrawFromLp = requestedAmountOfAssets - balance;
			// calculate the amounts needed based on the amounts passed , we always withdraw all to ensure less losses
			(uint256 amount0, uint256 amount1) = TokenizedStrategyLib.getAmountsForLiquidity(
				_getCurrentPrice(clPool),
				tickLower,
				tickUpper,
				_getLiquidityToWithdraw(amountToWithdrawFromLp)
			);

			address[] memory routers = new address[](2);
			bytes32[][] memory swapDatas = new bytes32[][](2);

			amountOut = balance;
			if (amount0 != 0 && token0IsNotAsset) {
				uint256 amountAssets0;
				(amountAssets0, routers[0], swapDatas[0]) = IMetaDynaRouterAPI(metaDynaRouter).previewSwap(token0, amount0, asset);
				amountOut += amountAssets0;
			} else {
				amountOut += amount0;
			}

			if (amount1 != 0 && token1IsNotAsset) {
				uint256 amountAssets1;
				(amountAssets1, routers[1], swapDatas[1]) = IMetaDynaRouterAPI(metaDynaRouter).previewSwap(token1, amount1, asset);
				amountOut += amountAssets1;
			} else {
				amountOut += amount1;
			}

			swapData = _encodeSwapData(routers, swapDatas);
		} else amountOut = requestedAmountOfAssets;
	}

	function previewInitialMint(uint256 assetsIn) external view returns (uint128 amountOut, bytes32[] memory swapData) {
		// preview swap assets to token0 and token1
		uint256 amount0;
		uint256 amount1;
		address[] memory routers = new address[](2);
		bytes32[][] memory swapDatas = new bytes32[][](2);

		uint160 currentPrice = _getCurrentPrice(clPool);
		(uint256 assetsInToToken0, uint256 assetsInToToken1) = TokenizedStrategyLib.calculateTokensToSwap(assetsIn, currentPrice, tickLower, tickUpper);

		if (token0IsNotAsset) {
			(amount0, routers[0], swapDatas[0]) = IMetaDynaRouterAPI(metaDynaRouter).previewSwap(asset, assetsInToToken0, token0);
		} else {
			amount0 = assetsInToToken0;
		}

		if (token1IsNotAsset) {
			(amount1, routers[1], swapDatas[1]) = IMetaDynaRouterAPI(metaDynaRouter).previewSwap(asset, assetsInToToken1, token1);
		} else {
			amount1 = assetsInToToken1;
		}

		// get amount liquidity out based on the calculated amounts
		amountOut = TokenizedStrategyLib.getLiquidityForAmounts(_getCurrentPrice(clPool), tickLower, tickUpper, amount0, amount1);
		swapData = _encodeSwapData(routers, swapDatas);
	}

	/**
	 * @notice Private function to swap assets for strategy shares (deposit)
	 * @dev Mints shares to the recipient after transferring assets from caller
	 * @param assetsIn The amount of assets to deposit
	 * @param minAmountOut The minimum amount of shares expected
	 * @param to The address to mint shares to
	 */
	function _zapIn(uint256 assetsIn, uint256 minAmountOut, address to) private {
		if (assetsIn != 0) {
			uint256 shares = _convertToSharesGivenTotalAssets(assetsIn, totalAssets());
			if (shares < minAmountOut) revert MinAmountOut();

			IERC20(asset).transferFrom(msg.sender, address(this), assetsIn);

			_mint(to, shares);
		}
	}

	/**
	 * @notice Private function to swap strategy shares for assets (withdrawal)
	 * @dev Burns shares and transfers equivalent assets to recipient
	 * @param sharesIn The amount of shares to burn
	 * @param minAmountOut The minimum amount of assets expected
	 * @param to The address to send assets to
	 * @param swapData The encoded swap data for converting underlying tokens to assets
	 */
	function _zapOut(uint256 sharesIn, uint256 minAmountOut, address to, bytes32[] memory swapData) private {
		if (sharesIn != 0) {
			(address[] memory routers, bytes32[][] memory swapDatas) = _decodeSwapData(swapData);

			uint256 requestedAmountOfAssets = _convertToAssets(sharesIn);
			uint256 amountToTransfer = requestedAmountOfAssets;
			uint256 idleAssets = assetBalance();
			if (requestedAmountOfAssets > idleAssets) {
				if (routers.length == 0) revert MissingSwapdata();
				uint256 stakedAssets = thirdPartyAssets();
				uint256 amountToWithdrawFromLp = requestedAmountOfAssets > stakedAssets ? stakedAssets : requestedAmountOfAssets - idleAssets;
				uint256 balance0Before = IERC20(token0).balanceOf(address(this));
				uint256 balance1Before = IERC20(token1).balanceOf(address(this));

				uint128 amountLiqudityToWithdraw = _getLiquidityToWithdraw(amountToWithdrawFromLp);

				_decreasePosition(amountLiqudityToWithdraw);

				uint256 received0 = IERC20(token0).balanceOf(address(this)) - balance0Before;
				uint256 received1 = IERC20(token1).balanceOf(address(this)) - balance1Before;

				if (received0 != 0 && token0IsNotAsset) _approveAndSwap(token0, received0, asset, routers[0], swapDatas[0]);
				if (received1 != 0 && token1IsNotAsset) _approveAndSwap(token1, received1, asset, routers[1], swapDatas[1]);

				// return received amount of assets
				uint256 withdrawnFromLp = assetBalance() - idleAssets;
				uint256 loss = amountToWithdrawFromLp > withdrawnFromLp ? amountToWithdrawFromLp - withdrawnFromLp : 0;
				amountToTransfer = requestedAmountOfAssets - loss;
			}

			if (amountToTransfer < minAmountOut) revert MinAmountOut();

			// burn shares and send assets
			if (amountToTransfer != 0) {
				_burn(msg.sender, sharesIn);
				IERC20(asset).safeTransfer(to, amountToTransfer);
			}
		}
	}

	/** @notice External function that harvest reward from third party strategy */
	function harvest() external onlyRole(DEFAULT_ADMIN_ROLE) {
		_harvest();
	}

	/** @dev Private function that harvests reward from third party strategy */
	function _harvest() private {
		ICLGauge(gauge).getReward(tokenId);

		lastHarvest = block.timestamp;

		emit Harvest();
	}

	/**
	 * @notice Private function to mint the initial NFT position and set strategy name
	 * @dev Creates the concentrated liquidity position, stakes it in gauge, and sets strategy metadata
	 */
	function _mintInitialPostition(uint256 assetsIn, uint128 minAmountLiquidity, bytes32[] memory swapData) private {
		IERC20(asset).safeTransferFrom(msg.sender, address(this), assetsIn);

		// swap mint amount assets to underlying tokens
		(address[] memory routers, bytes32[][] memory swapDatas) = _decodeSwapData(swapData);

		uint160 currentPrice = _getCurrentPrice(clPool);
		(uint256 assetsInToToken0, uint256 assetsInToToken1) = TokenizedStrategyLib.calculateTokensToSwap(assetsIn, currentPrice, tickLower, tickUpper);

		if (token0IsNotAsset && assetsInToToken0 != 0) _approveAndSwap(asset, assetsInToToken0, token0, routers[0], swapDatas[0]);
		if (token1IsNotAsset && assetsInToToken1 != 0) _approveAndSwap(asset, assetsInToToken1, token1, routers[1], swapDatas[1]);

		uint256 amount0 = ERC20(token0).balanceOf(address(this));
		uint256 amount1 = ERC20(token1).balanceOf(address(this));

		int24 tickSpacing = ICLGauge(gauge).tickSpacing();

		INonfungiblePositionManager.MintParams memory params = INonfungiblePositionManager.MintParams({
			token0: token0,
			token1: token1,
			tickSpacing: tickSpacing,
			tickLower: tickLower,
			tickUpper: tickUpper,
			recipient: address(this),
			amount0Desired: amount0,
			amount1Desired: amount1,
			amount0Min: 0,
			amount1Min: 0,
			deadline: block.timestamp,
			sqrtPriceX96: 0 // must be 0 or it will create a new pool
		});

		// mint
		IERC20(token0).safeIncreaseAllowance(nftManager, amount0);
		IERC20(token1).safeIncreaseAllowance(nftManager, amount1);
		(tokenId, , , ) = INonfungiblePositionManager(nftManager).mint(params);

		// check min amount
		(, , , , , , , uint128 positionLiquidity, , , , ) = INonfungiblePositionManager(nftManager).positions(tokenId);
		if (positionLiquidity < minAmountLiquidity) revert MinAmountOut();

		// stake NFT
		IERC721(nftManager).approve(gauge, tokenId);
		ICLGauge(gauge).deposit(tokenId);
	}

	/**
	 * @notice Private function to decrease liquidity from the NFT position
	 * @dev Withdraws NFT from gauge, decreases liquidity, collects fees, and re-stakes
	 * @param amount The amount of liquidity to remove
	 */
	function _decreasePosition(uint128 amount) private {
		// in order to decrease the position we must first withdraw the nft
		ICLGauge(gauge).withdraw(tokenId);

		INonfungiblePositionManager.DecreaseLiquidityParams memory params = INonfungiblePositionManager.DecreaseLiquidityParams(
			tokenId,
			amount,
			0,
			0,
			block.timestamp
		);

		INonfungiblePositionManager(nftManager).decreaseLiquidity(params);

		_collectFees();

		// ...and finally deposit the nft again
		IERC721(nftManager).approve(gauge, tokenId);
		ICLGauge(gauge).deposit(tokenId);
	}

	/**
	 * @notice Increases the position in the nft
	 * @dev Assumes that either of the token amounts is non zero
	 */
	function _increasePosition() private {
		// in order to increase the position we must first withdraw the nft
		ICLGauge(gauge).withdraw(tokenId);

		// collecting fees will change the balances
		_collectFees();

		// calculate the amounts needed
		uint256 amount0 = IERC20(token0).balanceOf(address(this));
		uint256 amount1 = IERC20(token1).balanceOf(address(this));
		uint160 sqrtPriceX96 = _getCurrentPrice(clPool);
		(uint256 usedAmount0, uint256 usedAmount1) = TokenizedStrategyLib.getAmountsForLiquidity(
			sqrtPriceX96,
			tickLower,
			tickUpper,
			TokenizedStrategyLib.getLiquidityForAmounts(sqrtPriceX96, tickLower, tickUpper, amount0, amount1)
		);

		_approveTokenIfNeeded(token0, nftManager, usedAmount0);
		_approveTokenIfNeeded(token1, nftManager, usedAmount1);

		// then
		INonfungiblePositionManager.IncreaseLiquidityParams memory params = INonfungiblePositionManager.IncreaseLiquidityParams(
			tokenId,
			usedAmount0,
			usedAmount1,
			0, // amount0min
			0, // amount1min
			block.timestamp // deadline
		);

		INonfungiblePositionManager(nftManager).increaseLiquidity(params);

		// ...and finally deposit the nft again
		IERC721(nftManager).approve(gauge, tokenId);
		ICLGauge(gauge).deposit(tokenId);
	}

	/**
	 * @notice Private function to collect accumulated fees from the NFT position
	 * @dev Collects all available fees from the concentrated liquidity position
	 */
	function _collectFees() private {
		INonfungiblePositionManager(nftManager).collect(
			INonfungiblePositionManager.CollectParams({
				tokenId: tokenId,
				recipient: address(this),
				amount0Max: type(uint128).max,
				amount1Max: type(uint128).max
			})
		);
	}

	/**
	 * @notice Approves and swaps in one call using a dynarouter
	 * @param tokenIn The address of the tokenIn
	 * @param amountIn The amount of tokenIn
	 * @param tokenOut The address of the tokenOut
	 * @param router The dynarouter used
	 * @param swapData The encoded swap data
	 */
	function _approveAndSwap(address tokenIn, uint256 amountIn, address tokenOut, address router, bytes32[] memory swapData) private {
		_approveTokenIfNeeded(tokenIn, router, amountIn);
		IDynaRouterAPI(router).swap(tokenIn, amountIn, tokenOut, 0, address(this), swapData);
	}

	/**
	 * @notice Fetches the slot0 info in a safe way to avoid reverts
	 * @param pool The pool address
	 * @return sqrtPriceX96 The square root price
	 */
	function _getCurrentPrice(address pool) private view returns (uint160 sqrtPriceX96) {
		(bool success, bytes memory data) = pool.staticcall(abi.encodeWithSignature("slot0()"));
		if (!success) {
			revert Slot0ReadFailed();
		}
		(sqrtPriceX96, , , , , ) = abi.decode(data, (uint160, int24, uint16, uint16, uint16, bool));
	}

	/**
	 * @notice Calculates the amount of liquidity to withdraw base on an amount of assets
	 * @param assets The amount of assets
	 * @return liquidity The amount of liquidity to withdraw based on the assets
	 */
	function _getLiquidityToWithdraw(uint256 assets) private view returns (uint128 liquidity) {
		uint256 stakedAssets = thirdPartyAssets();
		(, , , , , , , uint128 totalPositionLiquidity, , , , ) = INonfungiblePositionManager(nftManager).positions(tokenId);

		uint256 ratio = (assets > stakedAssets ? stakedAssets : assets).fullMulDiv(PRECISION, stakedAssets);
		uint256 liquidityToWithdraw = ratio.fullMulDiv(totalPositionLiquidity, PRECISION);

		liquidity = uint128(liquidityToWithdraw >= totalPositionLiquidity ? totalPositionLiquidity : liquidityToWithdraw);
	}

	function _getAssetsForLiquidityUsingOracle(uint160 sqrtPriceX96) private view returns (uint256 amountAssets0, uint256 amountAssets1) {
		(, , , , , , , uint128 liquidity, , , , ) = INonfungiblePositionManager(nftManager).positions(tokenId);
		(uint256 amount0, uint256 amount1) = TokenizedStrategyLib.getAmountsForLiquidity(sqrtPriceX96, tickLower, tickUpper, liquidity);

		amountAssets0 = amount0;
		if (token0IsNotAsset && amount0 != 0) {
			(amountAssets0, ) = IReferenceAssetOracle(assetOracle).tokenReferenceValue(token0, amount0);
		}

		amountAssets1 = amount1;
		if (token1IsNotAsset && amount1 != 0) {
			(amountAssets1, ) = IReferenceAssetOracle(assetOracle).tokenReferenceValue(token1, amount1);
		}
	}

	/**
	 * @notice Private function to calculate optimal token amounts from asset amount
	 * @dev Calculates the proper ratio of token0 and token1 based on current position
	 * @param amountAssets The amount of assets to convert
	 * @return amountAssetsForToken0 The amount of token0 needed
	 * @return amountAssetsForToken1 The amount of token1 needed
	 */
	function _calcAssetRatiosfromPosition(uint256 amountAssets) private view returns (uint256 amountAssetsForToken0, uint256 amountAssetsForToken1) {
		uint160 sqrtPriceX96 = _getCurrentPrice(clPool);
		(uint256 position0InAsset, uint256 position1InAsset) = _getAssetsForLiquidityUsingOracle(sqrtPriceX96);

		uint256 ratio0 = position0InAsset.fullMulDiv(PRECISION, position0InAsset + position1InAsset);

		amountAssetsForToken0 = amountAssets.fullMulDiv(ratio0, PRECISION);
		amountAssetsForToken1 = amountAssets - amountAssetsForToken0;
	}

	/**
	 * @notice Calculates the value of shares in assets
	 * @param shares The amount of shares
	 * @return assets value of shares in assets
	 */
	function _convertToAssets(uint256 shares) private view returns (uint256 assets) {
		if (shares == 0) return 0;
		uint256 _totalSupply = totalSupply();
		if (_totalSupply == 0) {
			return shares.fullMulDiv(ASSET_PRECISION, PRECISION);
		} else {
			return shares.fullMulDiv(totalAssets(), _totalSupply);
		}
	}

	/**
	 * @notice Calculates the value of assets in shares
	 * @param assets The amount of assets
	 * @param _totalAssets The total amount of assets for the calculation
	 * @return shares The value of assets in shares
	 */
	function _convertToSharesGivenTotalAssets(uint256 assets, uint256 _totalAssets) private view returns (uint256 shares) {
		if (assets == 0) return 0;
		uint256 _totalSupply = totalSupply();
		return assets.fullMulDiv(_totalSupply != 0 ? _totalSupply : PRECISION, _totalAssets);
	}

	/**
	 * @notice Encodes the swap data for all the swaps into one
	 * @param routers The routers used
	 * @param swapDatas The swap data for the swaps
	 * @return encoded The encoded swap data
	 */
	function _encodeSwapData(address[] memory routers, bytes32[][] memory swapDatas) private pure returns (bytes32[] memory encoded) {
		// Optimized for memory and loop efficiency
		uint256 numSwaps = routers.length;

		// Calculate total length in a single loop
		uint256 totalLength = 1; // 1 for numSwaps
		for (uint256 i = 0; i < numSwaps; ++i) {
			totalLength += 2 + swapDatas[i].length; // 2 for length and router, plus swap data length
		}

		encoded = new bytes32[](totalLength);
		encoded[0] = bytes32(numSwaps);

		uint256 index = 1;
		for (uint256 i = 0; i < numSwaps; ++i) {
			encoded[index++] = bytes32(swapDatas[i].length); // swap data length
			encoded[index++] = bytes32(uint256(uint160(routers[i]))); // router address
			for (uint256 k = 0; k < swapDatas[i].length; ++k) {
				encoded[index++] = swapDatas[i][k];
			}
		}
	}

	/**
	 * @notice Decodes the swap data for the swaps
	 * @param encodedSwapDatas The encoded swap data
	 * @return routers The routers for the swaps
	 * @return swapDatas The decoded swap data
	 */
	function _decodeSwapData(bytes32[] memory encodedSwapDatas) private pure returns (address[] memory routers, bytes32[][] memory swapDatas) {
		if (encodedSwapDatas.length == 0) return (routers, swapDatas);

		uint256 numSwaps = uint256(encodedSwapDatas[0]);

		routers = new address[](numSwaps);
		swapDatas = new bytes32[][](numSwaps);

		uint256 index = 1;
		for (uint256 s = 0; s < numSwaps; ++s) {
			uint256 len = uint256(encodedSwapDatas[index++]); // length of swap data
			routers[s] = address(uint160(uint256(encodedSwapDatas[index++]))); // router

			bytes32[] memory data = new bytes32[](len);
			for (uint256 k = 0; k < len; ++k) {
				data[k] = encodedSwapDatas[index++];
			}

			swapDatas[s] = data;
		}
	}
}
