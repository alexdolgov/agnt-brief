// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

// solhint-disable
import { IPancakeV3SwapCallback } from "@pancakeswap/v3-core/contracts/interfaces/callback/IPancakeV3SwapCallback.sol";
import { IUniswapV3PositionsNFT } from "contracts/interfaces/IUniswapV3PositionsNFT.sol";
import { IMasterChefV3 } from "contracts/interfaces/IMasterChefV3.sol";
import { IPancakeV3 } from "contracts/interfaces/IPancakeV3.sol";
import { IPancakeV3Helper } from "contracts/interfaces/IPancakeV3Helper.sol";
import { GrizzlyVaultStorage } from "./abstract/GrizzlyVaultStorage.sol";
import { TickMath } from "./pancakeswap/TickMath.sol";
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { prbSqrt } from "@prb/math/src/Common.sol";
import { FullMath } from "./pancakeswap/FullMath.sol";

contract GrizzlyVault is IPancakeV3SwapCallback, GrizzlyVaultStorage {
	using SafeERC20 for IERC20;
	using TickMath for int24;

	address public constant nftManager = 0x46A15B0b27311cedF172AB29E4f4766fbE7F4364;

	address internal constant cake = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82;

	address internal constant weth = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

	address internal constant uniRouter = 0x1b81D678ffb9C0263b24A97847620C99d213eB14;

	uint256 public tokenId;

	uint24 public cakeWethFee;
	uint24 public wethToken0Fee;
	uint24 public wethToken1Fee;

	IMasterChefV3 public constant masterChef =
		IMasterChefV3(0x556B9306565093C855AEA9AE92A594704c2Cd59e);

	event Minted(
		address receiver,
		uint256 mintAmount,
		uint256 amount0In,
		uint256 amount1In,
		uint128 liquidityMinted
	);

	event Burned(
		address receiver,
		uint256 burnAmount,
		uint256 amount0Out,
		uint256 amount1Out,
		uint128 liquidityBurned
	);

	event Rebalance(
		uint256 newTokenId,
		int24 lowerTick_,
		int24 upperTick_,
		uint128 liquidityBefore,
		uint128 liquidityAfter
	);

	event FeesEarned(uint256 feesEarned0, uint256 feesEarned1);

	// --- UniV3 callback functions --- //

	/// @notice Pancake v3 callback function, called back on pool.swap
	function pancakeV3SwapCallback(
		int256 amount0Delta,
		int256 amount1Delta,
		bytes calldata /*data*/
	) external override {
		require(msg.sender == address(pool), "CC"); //callback caller

		if (amount0Delta > 0) token0.safeTransfer(msg.sender, uint256(amount0Delta));
		if (amount1Delta > 0) token1.safeTransfer(msg.sender, uint256(amount1Delta));
	}

	// --- User functions --- //

	/// @notice Mint fungible Grizzly Vault tokens, fractional shares of a Uniswap V3 position
	/// @dev To compute the amount of tokens necessary to mint `mintAmount` see getMintAmounts
	/// @param mintAmount The number of Grizzly Vault tokens to mint
	/// @param receiver The account to receive the minted tokens
	/// @return amount0 Amount of token0 transferred from msg.sender to mint `mintAmount`
	/// @return amount1 Amount of token1 transferred from msg.sender to mint `mintAmount`
	/// @return liquidityMinted Amount of liquidity added to the underlying Uniswap V3 position
	// solhint-disable-next-line function-max-lines, code-complexity
	function mint(
		uint256 mintAmount,
		address receiver
	) external nonReentrant returns (uint256 amount0, uint256 amount1, uint128 liquidityMinted) {
		require(mintAmount > 0, "M0"); //mint 0

		uint256 totalSupply = totalSupply();

		Ticks memory ticks = baseTicks;
		(uint160 sqrtRatioX96, , , , , , ) = pool.slot0();

		if (totalSupply > 0) {
			(uint256 amount0Current, uint256 amount1Current) = getUnderlyingBalances();

			amount0 = FullMath.mulDivRoundingUp(amount0Current, mintAmount, totalSupply);
			amount1 = FullMath.mulDivRoundingUp(amount1Current, mintAmount, totalSupply);
		} else {
			// Prevent first staker from stealing funds of subsequent stakers
			// solhint-disable-next-line max-line-length
			// https://code4rena.com/reports/2022-01-sherlock/#h-01-first-user-can-steal-everyone-elses-tokens
			require(mintAmount > MIN_INITIAL_SHARES, "MS"); //min shares

			// If supply is 0 mintAmount == liquidity to deposit
			(amount0, amount1) = IPancakeV3Helper(pancakeV3HelperAddress).amountsForLiquidity(
				SafeCast.toUint128(mintAmount),
				ticks,
				sqrtRatioX96
			);
		}

		// Transfer amounts owed to contract
		if (amount0 > 0) {
			token0.safeTransferFrom(msg.sender, address(this), amount0);
		}
		if (amount1 > 0) {
			token1.safeTransferFrom(msg.sender, address(this), amount1);
		}

		// Deposit as much new liquidity as possible
		liquidityMinted = IPancakeV3Helper(pancakeV3HelperAddress).liquidityForAmounts(
			ticks,
			sqrtRatioX96,
			amount0,
			amount1
		);

		if (tokenId != 0) {
			// NFT existing, just increase liquidity via masterchef
			masterChef.increaseLiquidity(
				IMasterChefV3.IncreaseLiquidityParams({
					tokenId: tokenId,
					amount0Desired: amount0,
					amount1Desired: amount1,
					amount0Min: 0,
					amount1Min: 0,
					deadline: block.timestamp
				})
			);
		} else {
			// This only is called once, approve masterChef to spend token0 & token1
			token0.safeApprove(address(masterChef), type(uint256).max);
			token1.safeApprove(address(masterChef), type(uint256).max);

			// This only is called once, approve nftManager to spend token0 & token1
			token0.safeApprove(address(nftManager), type(uint256).max);
			token1.safeApprove(address(nftManager), type(uint256).max);

			// Also approve UniV3 router for processing rewards
			_giveRouterAllowances();

			// Need to mint a NFT
			(tokenId, , , ) = IUniswapV3PositionsNFT(nftManager).mint(
				IUniswapV3PositionsNFT.MintParams({
					token0: address(token0),
					token1: address(token1),
					fee: pool.fee(),
					tickLower: ticks.lowerTick,
					tickUpper: ticks.upperTick,
					amount0Desired: amount0,
					amount1Desired: amount1,
					amount0Min: 0,
					amount1Min: 0,
					recipient: address(this),
					deadline: block.timestamp
				})
			);

			// Right after minting we transfer the NFT to Pancake masterChef
			IUniswapV3PositionsNFT(nftManager).safeTransferFrom(
				address(this),
				address(masterChef),
				tokenId
			);
		}

		_mint(receiver, mintAmount);

		emit Minted(receiver, mintAmount, amount0, amount1, liquidityMinted);
	}

	/// @notice Burn Grizzly Vault tokens (fractional shares of a UniV3 position) and receive tokens
	/// @param burnAmount The number of Grizzly Vault tokens to burn
	/// @param receiver The account to receive the underlying amounts of token0 and token1
	/// @return amount0 Amount of token0 transferred to receiver for burning `burnAmount`
	/// @return amount1 Amount of token1 transferred to receiver for burning `burnAmount`
	/// @return liquidityBurned Amount of liquidity removed from the underlying Uniswap V3 position
	// solhint-disable-next-line function-max-lines
	function burn(
		uint256 burnAmount,
		address receiver
	) external nonReentrant returns (uint256 amount0, uint256 amount1, uint128 liquidityBurned) {
		require(burnAmount > 0, "B0"); //burn 0

		LocalVariablesBurn memory vars;

		vars.totalSupply = totalSupply();

		Ticks memory ticks = baseTicks;

		(uint160 sqrtRatioX96, , , , , , ) = pool.slot0();

		uint128 liquidity = liquidityOfPool(tokenId);

		_burn(msg.sender, burnAmount);

		vars.liquidityBurnt = FullMath.mulDiv(burnAmount, liquidity, vars.totalSupply);

		(uint256 amount0Expect, uint256 amount1Expect) = IPancakeV3Helper(pancakeV3HelperAddress)
			.amountsForLiquidity(uint128(vars.liquidityBurnt), ticks, sqrtRatioX96);

		(amount0, amount1) = masterChef.decreaseLiquidity(
			IMasterChefV3.DecreaseLiquidityParams({
				tokenId: tokenId,
				liquidity: uint128(vars.liquidityBurnt),
				amount0Min: amount0Expect,
				amount1Min: amount1Expect,
				deadline: block.timestamp
			})
		);

		// Only collect decreasedLiquidity, not trading fees
		masterChef.collect(
			IMasterChefV3.CollectParams({
				tokenId: tokenId,
				recipient: address(this),
				amount0Max: uint128(amount0),
				amount1Max: uint128(amount1)
			})
		);

		_transferAmounts(amount0, amount1, receiver);

		emit Burned(receiver, burnAmount, amount0, amount1, liquidityBurned);
	}

	// --- External manager functions --- // Called by Pool Manager

	/// @notice Change the range of underlying UniswapV3 position, only manager can call
	/// @dev When changing the range the inventory of token0 and token1 may be rebalanced
	/// with a swap to deposit as much liquidity as possible into the new position.
	/// Swap a proportion of this leftover to deposit more liquidity into the position,
	/// since any leftover will be unused and sit idle until the next rebalance
	/// @param newLowerTick The new lower bound of the position's range
	/// @param newUpperTick The new upper bound of the position's range
	/// @param minLiquidity Minimum liquidity of the new position in order to not revert
	// solhint-disable-next-line function-max-lines
	function executiveRebalance(
		int24 newLowerTick,
		int24 newUpperTick,
		uint128 minLiquidity
	) external onlyManager {
		// Validate new ticks
		require(_validateTickSpacing(address(pool), newLowerTick, newUpperTick), "TM"); // tickSpacing mismatch

		// First check pool health
		require(
			IPancakeV3Helper(pancakeV3HelperAddress).checkPriceSlippage(
				pool,
				oracleSlippageInterval,
				oracleSlippage,
				basisOne,
				basisOneSqrt
			),
			"HS"
		); // high slippage

		uint256 _tokenId = tokenId;

		uint128 liquidity;

		Ticks memory newTicks = Ticks(newLowerTick, newUpperTick);

		if (_tokenId != 0) {
			// Claim Cake rewards from masterChef
			masterChef.harvest(_tokenId, address(this));

			_processCake();

			uint256 initBalToken0 = token0.balanceOf(address(this));
			uint256 initBalToken1 = token1.balanceOf(address(this));

			liquidity = liquidityOfPool(_tokenId);

			(uint256 liqAmount0, uint256 liqAmount1) = masterChef.decreaseLiquidity(
				IMasterChefV3.DecreaseLiquidityParams({
					tokenId: _tokenId,
					liquidity: liquidity,
					amount0Min: 0,
					amount1Min: 0,
					deadline: block.timestamp
				})
			);

			// This has to be done after decreaseLiquidity to collect the tokens from liquidity and fees
			masterChef.collect(
				IMasterChefV3.CollectParams({
					tokenId: _tokenId,
					recipient: address(this),
					amount0Max: type(uint128).max,
					amount1Max: type(uint128).max
				})
			);

			// Transfers the full amount of a token held by masterChef to this contract
			masterChef.sweepToken(address(token0), 0, address(this));
			masterChef.sweepToken(address(token1), 0, address(this));
			masterChef.burn(_tokenId);

			_applyFees(
				token0.balanceOf(address(this)) - liqAmount0 - initBalToken0,
				token1.balanceOf(address(this)) - liqAmount1 - initBalToken1
			);
		}

		uint256 reinvest0 = token0.balanceOf(address(this)) - managerBalance0;
		uint256 reinvest1 = token1.balanceOf(address(this)) - managerBalance1;

		(uint256 finalAmount0, uint256 finalAmount1) = _balanceAmounts(
			newTicks,
			reinvest0,
			reinvest1
		);

		(uint256 newTokenId, , , ) = IUniswapV3PositionsNFT(nftManager).mint(
			IUniswapV3PositionsNFT.MintParams({
				token0: address(token0),
				token1: address(token1),
				fee: pool.fee(),
				tickLower: newLowerTick,
				tickUpper: newUpperTick,
				amount0Desired: finalAmount0,
				amount1Desired: finalAmount1,
				amount0Min: 0,
				amount1Min: 0,
				recipient: address(this),
				deadline: block.timestamp
			})
		);

		// Right after minting we transfer the NFT to Pancake masterChef
		IUniswapV3PositionsNFT(nftManager).safeTransferFrom(
			address(this),
			address(masterChef),
			newTokenId
		);

		// Update storage variables
		tokenId = newTokenId;
		baseTicks = newTicks;

		uint128 newLiquidity = liquidityOfPool(newTokenId);

		require(newLiquidity > minLiquidity, "ML"); //min liquidity

		emit Rebalance(newTokenId, newLowerTick, newUpperTick, liquidity, newLiquidity);
	}

	// --- External authorized functions --- //  Can be automated

	/// @notice Reinvest fees earned into underlying position, only authorized executors can call
	/// @dev As the ticks do not change, liquidity must increase, otherwise will revert
	/// Position bounds CANNOT be altered, only manager may via executiveRebalance
	function rebalance() external onlyAuthorized {
		// First check pool health
		require(
			IPancakeV3Helper(pancakeV3HelperAddress).checkPriceSlippage(
				pool,
				oracleSlippageInterval,
				oracleSlippage,
				basisOne,
				basisOneSqrt
			),
			"HS"
		); // high slippage

		Ticks memory ticks = baseTicks;

		uint256 _tokenId = tokenId;

		uint128 liquidity = liquidityOfPool(_tokenId);

		// Claim Cake rewards from masterChef
		masterChef.harvest(_tokenId, address(this));

		_processCake();

		(uint256 feesEarned0, uint256 feesEarned1) = masterChef.collect(
			IMasterChefV3.CollectParams({
				tokenId: _tokenId,
				recipient: address(this),
				amount0Max: type(uint128).max,
				amount1Max: type(uint128).max
			})
		);

		_applyFees(feesEarned0, feesEarned1);

		uint256 leftover0 = token0.balanceOf(address(this)) - managerBalance0;
		uint256 leftover1 = token1.balanceOf(address(this)) - managerBalance1;

		if (leftover0 > 0 && leftover1 > 0) {
			masterChef.increaseLiquidity(
				IMasterChefV3.IncreaseLiquidityParams({
					tokenId: _tokenId,
					amount0Desired: leftover0,
					amount1Desired: leftover1,
					amount0Min: 0,
					amount1Min: 0,
					deadline: block.timestamp
				})
			);
		}

		uint128 newLiquidity = liquidityOfPool(_tokenId);
		require(newLiquidity > liquidity, "LI"); //liquidity must increase

		emit Rebalance(_tokenId, ticks.lowerTick, ticks.upperTick, liquidity, newLiquidity);
	}

	/// @notice Withdraw manager fees accrued, only authorized executors can call
	/// Target account to receive fees is managerTreasury, alterable by only manager
	function withdrawManagerBalance() external onlyAuthorized {
		uint256 amount0 = managerBalance0;
		uint256 amount1 = managerBalance1;

		managerBalance0 = 0;
		managerBalance1 = 0;

		_transferAmounts(amount0, amount1, managerTreasury);
	}

	// --- External view functions --- //

	/// @notice Compute max Grizzly Vault tokens that can be minted from `amount0Max` & `amount1Max`
	/// @param amount0Max The maximum amount of token0 to forward on mint
	/// @param amount0Max The maximum amount of token1 to forward on mint
	/// @return amount0 Actual amount of token0 to forward when minting `mintAmount`
	/// @return amount1 Actual amount of token1 to forward when minting `mintAmount`
	/// @return mintAmount Maximum number of Grizzly Vault tokens to mint
	function getMintAmounts(
		uint256 amount0Max,
		uint256 amount1Max
	) external view returns (uint256 amount0, uint256 amount1, uint256 mintAmount) {
		uint256 totalSupply = totalSupply();

		if (totalSupply > 0) {
			(amount0, amount1, mintAmount) = IPancakeV3Helper(pancakeV3HelperAddress)
				.computeMintAmounts(address(this), totalSupply, amount0Max, amount1Max);
		} else {
			Ticks memory ticks = baseTicks;
			(uint160 sqrtRatioX96, , , , , , ) = pool.slot0();

			uint128 newLiquidity = IPancakeV3Helper(pancakeV3HelperAddress).liquidityForAmounts(
				ticks,
				sqrtRatioX96,
				amount0Max,
				amount1Max
			);

			mintAmount = uint256(newLiquidity);

			if (mintAmount < MIN_INITIAL_SHARES) return (0, 0, 0);

			(amount0, amount1) = IPancakeV3Helper(pancakeV3HelperAddress).amountsForLiquidity(
				newLiquidity,
				ticks,
				sqrtRatioX96
			);
		}
	}

	// /// @notice Checks where our NFT is, either here or in Pancake masterChef
	// function ownerOfNft() public view returns (address) {
	// 	return IUniswapV3PositionsNFT(nftManager).ownerOf(tokenId);
	// }

	function liquidityOfPool(uint256 nftId) public view returns (uint128 liquidity) {
		(, , , , , , , liquidity, , , , ) = IUniswapV3PositionsNFT(nftManager).positions(nftId);
	}

	/// @notice Provides the pending rewards generated by the strategy
	function pendingCake() external view returns (uint256 pendingRewards) {
		pendingRewards = masterChef.pendingCake(tokenId);
	}

	/// @notice Compute total underlying holdings of the Grizzly Vault token supply
	/// Includes current liquidity invested in uniswap position, current fees earned
	/// and any uninvested leftover (but does not include manager or Grizzly fees accrued)
	/// @return amount0Current current total underlying balance of token0
	/// @return amount1Current current total underlying balance of token1
	function getUnderlyingBalances()
		public
		view
		returns (uint256 amount0Current, uint256 amount1Current)
	{
		(uint160 sqrtRatioX96, int24 tick, , , , , ) = pool.slot0();
		return _getUnderlyingBalances(sqrtRatioX96, tick);
	}

	function getUnderlyingBalancesAtPrice(
		uint160 sqrtRatioX96
	) external view returns (uint256 amount0Current, uint256 amount1Current) {
		(, int24 tick, , , , , ) = pool.slot0();
		return _getUnderlyingBalances(sqrtRatioX96, tick);
	}

	function estimateFees() external view returns (uint256 token0Fee, uint256 token1Fee) {
		(token0Fee, token1Fee) = IPancakeV3Helper(pancakeV3HelperAddress).estimateFees(
			pool,
			baseTicks,
			tokenId
		);
	}

	// --- Internal core functions --- //

	function _giveRouterAllowances() internal {
		IERC20(cake).safeApprove(uniRouter, 0);
		IERC20(cake).safeApprove(uniRouter, type(uint256).max);

		IERC20(weth).safeApprove(uniRouter, 0);
		IERC20(weth).safeApprove(uniRouter, type(uint256).max);
	}

	function _processCake() internal {
		uint256 cakeBal = IERC20(cake).balanceOf(address(this));

		uint256 amountWethOut;

		if (cakeBal > 0) {
			amountWethOut = IPancakeV3(uniRouter).exactInput(
				IPancakeV3.ExactInputParams({
					path: abi.encodePacked(cake, cakeWethFee, weth),
					recipient: address(this),
					deadline: block.timestamp,
					amountIn: cakeBal,
					amountOutMinimum: 0
				})
			);
		}

		if (amountWethOut > 0) {
			if (address(token0) != weth) {
				IPancakeV3(uniRouter).exactInput(
					IPancakeV3.ExactInputParams({
						path: abi.encodePacked(weth, wethToken0Fee, address(token0)),
						recipient: address(this),
						deadline: block.timestamp,
						amountIn: amountWethOut / 2,
						amountOutMinimum: 0
					})
				);
			}
			if (address(token1) != weth) {
				IPancakeV3(uniRouter).exactInput(
					IPancakeV3.ExactInputParams({
						path: abi.encodePacked(weth, wethToken1Fee, address(token1)),
						recipient: address(this),
						deadline: block.timestamp,
						amountIn: amountWethOut / 2,
						amountOutMinimum: 0
					})
				);
			}
		}
	}

	function _balanceAmounts(
		Ticks memory ticks,
		uint256 amount0Desired,
		uint256 amount1Desired
	) internal returns (uint256 finalAmount0, uint256 finalAmount1) {
		(uint160 sqrtRatioX96, , , , , , ) = pool.slot0();

		// Get max liquidity for amounts available
		uint128 liquidity = IPancakeV3Helper(pancakeV3HelperAddress).liquidityForAmounts(
			ticks,
			sqrtRatioX96,
			amount0Desired,
			amount1Desired
		);
		// Get correct amounts of each token for the liquidity we have
		(uint256 amount0, uint256 amount1) = IPancakeV3Helper(pancakeV3HelperAddress)
			.amountsForLiquidity(liquidity, ticks, sqrtRatioX96);

		// Determine the trade direction
		bool _zeroForOne;
		if (amount1Desired == 0) {
			_zeroForOne = true;
		} else {
			_zeroForOne = IPancakeV3Helper(pancakeV3HelperAddress).amountsDirection(
				amount0Desired,
				amount1Desired,
				amount0,
				amount1
			);
		}

		// Determine the amount to swap, it is not 100% precise but is a very good approximation
		uint256 _amountSpecified = _zeroForOne
			? ((amount0Desired - amount0) * (basisOne + uniPoolFee)) / (2 * basisOne + uniPoolFee)
			: ((amount1Desired - amount1) * (basisOne + uniPoolFee)) / (2 * basisOne + uniPoolFee);

		if (_amountSpecified > 0) {
			(int256 amount0Delta, int256 amount1Delta) = _swap(
				_amountSpecified,
				_zeroForOne,
				slippageRebalanceMax
			);
			finalAmount0 = uint256(SafeCast.toInt256(amount0Desired) - amount0Delta);
			finalAmount1 = uint256(SafeCast.toInt256(amount1Desired) - amount1Delta);
		} else {
			return (amount0, amount1);
		}
	}

	function _addLiquidity(Ticks memory ticks, uint256 amount0, uint256 amount1) internal {
		// As we have made a swap in the pool sqrtRatioX96 changes
		(uint160 sqrtRatioX96, , , , , , ) = pool.slot0();

		uint128 liquidityAfterSwap = IPancakeV3Helper(pancakeV3HelperAddress).liquidityForAmounts(
			ticks,
			sqrtRatioX96,
			amount0,
			amount1
		);

		if (liquidityAfterSwap > 0) {
			pool.mint(address(this), ticks.lowerTick, ticks.upperTick, liquidityAfterSwap, "");
		}
	}

	/// @notice slippageMax variable as argument to differentiate between user and rebalance swaps
	function _swap(
		uint256 amountIn,
		bool zeroForOne,
		uint256 slippageMax
	) internal returns (int256, int256) {
		(uint160 _sqrtPriceX96, , , , , , ) = pool.slot0();

		uint256 _slippageMax = slippageMax == 0 ? slippageUserMax : slippageMax;
		uint256 _slippageSqrt = zeroForOne
			? prbSqrt(basisOne - _slippageMax)
			: prbSqrt(basisOne + _slippageMax);

		return
			pool.swap(
				address(this),
				zeroForOne, // Swap direction, true: token0 -> token1, false: token1 -> token0
				SafeCast.toInt256(amountIn),
				uint160(uint256((_sqrtPriceX96 * _slippageSqrt) / basisOneSqrt)), // sqrtPriceLimitX96
				abi.encode(0)
			);
	}

	function _transferAmounts(uint256 amount0, uint256 amount1, address receiver) internal {
		if (amount0 > 0) {
			token0.safeTransfer(receiver, amount0);
		}

		if (amount1 > 0) {
			token1.safeTransfer(receiver, amount1);
		}
	}

	function _applyFees(
		uint256 rawFee0,
		uint256 rawFee1
	) internal returns (uint256 fee0, uint256 fee1) {
		uint256 managerFee0 = (rawFee0 * managerFee) / basisOne;
		uint256 managerFee1 = (rawFee1 * managerFee) / basisOne;

		managerBalance0 += managerFee0;
		managerBalance1 += managerFee1;

		fee0 = rawFee0 - managerFee0;
		fee1 = rawFee1 - managerFee1;

		emit FeesEarned(fee0, fee1);
	}

	// --- Internal view functions --- //

	function _getUnderlyingBalances(
		uint160 sqrtRatioX96,
		int24 tick
	) internal view returns (uint256 amount0Current, uint256 amount1Current) {
		Ticks memory ticks = baseTicks;
		LocalVariablesPosition memory vars;

		(
			,
			,
			,
			,
			,
			,
			,
			vars.liquidity,
			vars.feeGrowthInside0Last,
			vars.feeGrowthInside1Last,
			vars.tokensOwed0,
			vars.tokensOwed1
		) = IUniswapV3PositionsNFT(nftManager).positions(tokenId);

		// Compute current holdings from liquidity
		(amount0Current, amount1Current) = IPancakeV3Helper(pancakeV3HelperAddress)
			.amountsForLiquidity(vars.liquidity, ticks, sqrtRatioX96);

		// Compute current fees earned
		uint256 fee0 = IPancakeV3Helper(pancakeV3HelperAddress).computeFeesEarned(
			pool,
			true,
			vars.feeGrowthInside0Last,
			tick,
			vars.liquidity,
			ticks
		) + uint256(vars.tokensOwed0);
		uint256 fee1 = IPancakeV3Helper(pancakeV3HelperAddress).computeFeesEarned(
			pool,
			false,
			vars.feeGrowthInside1Last,
			tick,
			vars.liquidity,
			ticks
		) + uint256(vars.tokensOwed1);

		fee0 = (fee0 * (basisOne - managerFee)) / basisOne;
		fee1 = (fee1 * (basisOne - managerFee)) / basisOne;

		// Add any leftover in contract to current holdings
		amount0Current += fee0 + token0.balanceOf(address(this)) - managerBalance0;
		amount1Current += fee1 + token1.balanceOf(address(this)) - managerBalance1;
	}

	/// @notice This is here so our contract can receive ERC721 tokens
	function onERC721Received(
		address,
		address,
		uint256,
		bytes calldata
	) public pure virtual returns (bytes4) {
		return this.onERC721Received.selector;
	}
}
