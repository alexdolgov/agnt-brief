// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

// solhint-disable-next-line max-line-length
import { IPancakeV3SwapCallback } from "@pancakeswap/v3-core/contracts/interfaces/callback/IPancakeV3SwapCallback.sol";
import { IPancakeV3Pool } from "@pancakeswap/v3-core/contracts/interfaces/IPancakeV3Pool.sol";
import { IGrizzlyVault } from "./interfaces/IGrizzlyVault.sol";
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IWETH } from "./interfaces/IWETH.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { prbSqrt } from "@prb/math/src/Common.sol";
import { FullMath, FixedPoint96 } from "./pancakeswap/LiquidityAmounts.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract ZapContract is IPancakeV3SwapCallback, Ownable {
	using SafeERC20 for IERC20;

	struct CallbackData {
		address token0;
		address token1;
		address pool;
	}

	// Needed to avoid error compiler stack too deep
	struct LocalVariablesSwapAndStake {
		address pool;
		uint256 intermediateAmount0;
		uint256 intermediateAmount1;
		uint256 mintAmount;
		bytes data;
	}

	struct LocalVariablesWithdrawAndSwap {
		address pool;
		bytes data;
		int256 amount0Delta;
		int256 amount1Delta;
	}

	struct LocalVariablesBalanceAmounts {
		uint160 sqrtRatioX96;
		uint24 uniPoolFee;
		bool zeroForOne;
		int256 amount0Delta;
		int256 amount1Delta;
		uint256 amountSpecified;
	}

	string public constant NAME = "GrizzlyVaultZapContract";
	string public constant VERSION = "1.0.0";

	/* solhint-disable */
	uint256 internal constant basisOne = 1000000;
	uint256 internal constant basisOneSqrt = 1000;
	/* solhint-enable */

	// How much slippage we allow between swaps -> 5000 = 0.5% slippage
	uint24 public slippageUserMax = 10000;

	event ZapInVault(address sender, address vault, uint256 shares);
	event ZapOutVault(address sender, address grizzlyVault, uint256 amount0, uint256 amount1);
	event SetSlippageUserMax(uint24 slippageUserMax);

	// solhint-disable-next-line var-name-mixedcase
	address public immutable WETH = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

	receive() external payable {
		assert(msg.sender == WETH);
	}

	// --- UniV3 callback functions --- //

	/// @notice Pancake v3 callback function, called back on pool.swap
	function pancakeV3SwapCallback(
		int256 amount0Delta,
		int256 amount1Delta,
		bytes calldata data
	) external override {
		CallbackData memory info = abi.decode(data, (CallbackData));

		require(msg.sender == info.pool, "callback caller");

		if (amount0Delta > 0) IERC20(info.token0).safeTransfer(msg.sender, uint256(amount0Delta));
		if (amount1Delta > 0) IERC20(info.token1).safeTransfer(msg.sender, uint256(amount1Delta));
	}

	// --- User functions --- //

	/// @notice zapIn lets user to provide liquidity to a pool  paired with WETH via a Grizzly vault
	/// @param vault the Grizzly vault chosen to deposit the tokens
	/// @param amountTokenDesired amount of the non native token to deposit
	/// @param maxSwapSlippage maximum slippage authorized for eventual swaps in liquidity
	/// provision. Accepts values from 0 to 1000000 (e.g. 5000 <-> 0.5%)
	function zapInETH(
		address vault,
		uint256 amountTokenDesired,
		uint24 maxSwapSlippage
	) external payable {
		require(maxSwapSlippage < basisOne, "max slippage too high");

		address token0 = address(IGrizzlyVault(vault).token0());
		address token1 = address(IGrizzlyVault(vault).token1());

		require(address(token0) == WETH || address(token1) == WETH, "Not a WETH pair");

		// Wrap ETH
		IWETH(WETH).deposit{ value: msg.value }();

		if (address(token0) == WETH) {
			if (amountTokenDesired > 0) {
				IERC20(token1).safeTransferFrom(msg.sender, address(this), amountTokenDesired);
			}
			_swapAndStake(vault, token0, token1, msg.value, amountTokenDesired, maxSwapSlippage);
		} else {
			if (amountTokenDesired > 0) {
				IERC20(token0).safeTransferFrom(msg.sender, address(this), amountTokenDesired);
			}
			_swapAndStake(vault, token0, token1, amountTokenDesired, msg.value, maxSwapSlippage);
		}

		address[] memory tokens = new address[](2);
		tokens[0] = token0;
		tokens[1] = token1;

		_returnAssets(tokens, true);
	}

	/// @notice zapIn lets user to provide liquidity to a pool via a Grizzly vault
	/// with any amount of tokens
	/// @param vault the Grizzly vault chosen to deposit the tokens
	/// @param amount0Desired amount of token0 the user wants to invest into the vault
	/// @param amount1Desired amount of token1 the user wants to invest into the vault
	/// @param maxSwapSlippage maxSlippage allowed for the underlying swap, values
	/// from 0 to 1000000, e.g. 5000 <-> 0.5%
	function zapIn(
		address vault,
		uint256 amount0Desired,
		uint256 amount1Desired,
		uint24 maxSwapSlippage
	) external {
		require(maxSwapSlippage < basisOne, "max slippage too high");

		address token0 = address(IGrizzlyVault(vault).token0());
		address token1 = address(IGrizzlyVault(vault).token1());

		// Transfer desired amounts to contract
		if (amount0Desired > 0) {
			IERC20(token0).safeTransferFrom(msg.sender, address(this), amount0Desired);
		}
		if (amount1Desired > 0) {
			IERC20(token1).safeTransferFrom(msg.sender, address(this), amount1Desired);
		}

		_swapAndStake(vault, token0, token1, amount0Desired, amount1Desired, maxSwapSlippage);

		address[] memory tokens = new address[](2);
		tokens[0] = token0;
		tokens[1] = token1;

		_returnAssets(tokens, false);
	}

	/// @notice function to zap out with ERC20 tokens or native tokens from Hypervisor vault
	/// @param vault address of the Grizzly Vault to zap out from
	/// @param withdrawAmount amount of the Grizzly Vault LP token to burn in order to zap out
	/// @param maxSwapSlippage maximum slippage authorized for eventual swaps in withdrawal
	/// process. Accepts values from 0 to 1000000 (e.g. 5000 <-> 0.5%)
	/// @param outputToken if 0 zaps out with only token 0, if 1 zaps out with only token 1,
	/// if everything else it zaps out with both tokens without swapping
	/// @param unwrap if true, it will unwrap wrapped native tokens when zapping out.
	/// Ignored in other pairs.
	// solhint-disable-next-line function-max-lines
	function zapOut(
		address vault,
		uint256 withdrawAmount,
		uint24 maxSwapSlippage,
		uint8 outputToken,
		bool unwrap
	) external returns (uint256 amount0, uint256 amount1) {
		require(withdrawAmount > 0, "burn 0");
		require(maxSwapSlippage < basisOne, "max slippage too high");

		IERC20(vault).safeTransferFrom(msg.sender, address(this), withdrawAmount);

		address token0 = IGrizzlyVault(vault).pool().token0();
		address token1 = IGrizzlyVault(vault).pool().token1();

		if (outputToken > 1) {
			if ((token0 == WETH || token1 == WETH) && unwrap) {
				// Send amounts to this contract
				(amount0, amount1, ) = IGrizzlyVault(vault).burn(withdrawAmount, address(this));
			} else {
				// Send ERC20 tokens directly to user
				(amount0, amount1, ) = IGrizzlyVault(vault).burn(withdrawAmount, msg.sender);

				emit ZapOutVault(msg.sender, vault, amount0, amount1);
				return (amount0, amount1);
			}
		} else {
			(amount0, amount1) = _withdrawAndSwap(
				vault,
				token0,
				token1,
				withdrawAmount,
				maxSwapSlippage,
				outputToken
			);
		}

		address[] memory tokens = new address[](2);
		tokens[0] = token0;
		tokens[1] = token1;

		_returnAssets(tokens, unwrap);

		emit ZapOutVault(msg.sender, vault, amount0, amount1);
	}

	// --- Internal core functions --- //

	// solhint-disable-next-line function-max-lines
	function _swapAndStake(
		address vault,
		address token0,
		address token1,
		uint256 amount0Desired,
		uint256 amount1Desired,
		uint24 maxSwapSlippage
	) internal {
		LocalVariablesSwapAndStake memory vars;

		vars.pool = address(IGrizzlyVault(vault).pool());

		vars.data = abi.encode(CallbackData({ token0: token0, token1: token1, pool: vars.pool }));

		(vars.intermediateAmount0, vars.intermediateAmount1) = _balanceAmounts(
			vars.pool,
			vault,
			amount0Desired,
			amount1Desired,
			maxSwapSlippage,
			vars.data
		);

		(, , vars.mintAmount) = IGrizzlyVault(vault).getMintAmounts(
			vars.intermediateAmount0,
			vars.intermediateAmount1
		);

		// Approvals, called only once for each vault
		_approveTokenIfNeeded(token0, vault);
		_approveTokenIfNeeded(token1, vault);

		IGrizzlyVault(vault).mint(vars.mintAmount, msg.sender);

		emit ZapInVault(msg.sender, vault, vars.mintAmount);
	}

	// solhint-disable-next-line function-max-lines
	function _withdrawAndSwap(
		address vault,
		address token0,
		address token1,
		uint256 withdrawAmount,
		uint24 maxSwapSlippage,
		uint8 outputToken
	) internal returns (uint256 amount0, uint256 amount1) {
		LocalVariablesWithdrawAndSwap memory vars;

		(amount0, amount1, ) = IGrizzlyVault(vault).burn(withdrawAmount, address(this));

		vars.pool = address(IGrizzlyVault(vault).pool());

		vars.data = abi.encode(CallbackData({ token0: token0, token1: token1, pool: vars.pool }));

		if (outputToken == 0) {
			(vars.amount0Delta, vars.amount1Delta) = _swap(
				vars.pool,
				amount1,
				false,
				maxSwapSlippage,
				vars.data
			);
			amount0 = uint256(SafeCast.toInt256(amount0) - vars.amount0Delta);
			amount1 = uint256(SafeCast.toInt256(amount1) - vars.amount1Delta);
		} else if (outputToken == 1) {
			(vars.amount0Delta, vars.amount1Delta) = _swap(
				vars.pool,
				amount0,
				true,
				maxSwapSlippage,
				vars.data
			);
			amount0 = uint256(SafeCast.toInt256(amount0) - vars.amount0Delta);
			amount1 = uint256(SafeCast.toInt256(amount1) - vars.amount1Delta);
		}
	}

	/// @notice _balanceAmounts makes a swap to balance the input amount in the
	/// right proportion to add liquidity to a pool
	// solhint-disable-next-line function-max-lines
	function _balanceAmounts(
		address pool,
		address vault,
		uint256 amount0Desired,
		uint256 amount1Desired,
		uint256 maxSwapSlippage,
		bytes memory data
	) internal returns (uint256 finalAmount0, uint256 finalAmount1) {
		LocalVariablesBalanceAmounts memory vars;

		(vars.sqrtRatioX96, , , , , , ) = IPancakeV3Pool(pool).slot0();

		vars.uniPoolFee = IPancakeV3Pool(pool).fee();

		// Determine the amount and direction to swap.
		// It is not 100% precise but is a very good approximation
		(vars.amountSpecified, vars.zeroForOne) = _getSwapAmount(
			vault,
			amount0Desired,
			amount1Desired,
			vars.sqrtRatioX96,
			vars.uniPoolFee
		);

		if (vars.amountSpecified > 0) {
			(vars.amount0Delta, vars.amount1Delta) = _swap(
				pool,
				vars.amountSpecified,
				vars.zeroForOne,
				maxSwapSlippage,
				data
			);
			finalAmount0 = uint256(SafeCast.toInt256(amount0Desired) - vars.amount0Delta);
			finalAmount1 = uint256(SafeCast.toInt256(amount1Desired) - vars.amount1Delta);
		} else {
			return (amount0Desired, amount1Desired);
		}
	}

	/// @notice maxSwapSlippage variable as argument to have flexibility with different liquidity pools
	function _swap(
		address pool,
		uint256 amountIn,
		bool zeroForOne,
		uint256 maxSwapSlippage,
		bytes memory data
	) internal returns (int256, int256) {
		// If the maxSwapSlippage argument is not provided we use default slippageUserMax state variable
		uint256 _slippageMax = maxSwapSlippage == 0 ? slippageUserMax : maxSwapSlippage;

		(uint160 _sqrtPriceX96, , , , , , ) = IPancakeV3Pool(pool).slot0();
		uint256 _slippageSqrt = zeroForOne
			? prbSqrt(basisOne - _slippageMax)
			: prbSqrt(basisOne + _slippageMax);

		return
			IPancakeV3Pool(pool).swap(
				address(this),
				zeroForOne, // Swap direction, true: token0 -> token1, false: token1 -> token0
				SafeCast.toInt256(amountIn),
				uint160(uint256((_sqrtPriceX96 * _slippageSqrt) / basisOneSqrt)), // sqrtPriceLimitX96
				data
			);
	}

	/// @dev Returns assets as ERC20 or native token
	function _returnAssets(address[] memory tokens, bool unwrap) private {
		uint256 balance;
		for (uint256 i; i < tokens.length; ) {
			balance = IERC20(tokens[i]).balanceOf(address(this));
			if (balance > 0) {
				if (tokens[i] == WETH && unwrap) {
					IWETH(WETH).withdraw(balance);
					(bool success, ) = msg.sender.call{ value: balance }(new bytes(0));
					require(success, "ETH transfer failed");
				} else {
					IERC20(tokens[i]).safeTransfer(msg.sender, balance);
				}
			}
			unchecked {
				++i;
			}
		}
	}

	/// @dev approves max amount to vault for the first time
	function _approveTokenIfNeeded(address token, address spender) private {
		if (IERC20(token).allowance(address(this), spender) == 0) {
			IERC20(token).safeApprove(spender, type(uint256).max);
		}
	}

	// --- Internal view functions --- //

	/// @notice Gives the amount and direction to swap in order to obtain balanced amounts
	/// @dev Can only be used after first mint, otherwise will revert
	// solhint-disable-next-line function-max-lines
	function _getSwapAmount(
		address vault,
		uint256 amount0,
		uint256 amount1,
		uint160 sqrtRatioX96,
		uint24 swapFee
	) internal view returns (uint256 amountToSwap, bool zeroForOne) {
		(uint256 amount0Current, uint256 amount1Current) = IGrizzlyVault(vault)
			.getUnderlyingBalances();
		uint256 totalSupply = IGrizzlyVault(vault).totalSupply();

		if (amount0Current == 0 && amount1Current > 0) {
			zeroForOne = true;
			amountToSwap = amount0;
		} else if (amount1Current == 0 && amount0Current > 0) {
			zeroForOne = false;
			amountToSwap = amount1;
		} else if (amount0Current == 0 && amount1Current == 0) {
			revert("no balances");
		} else {
			uint256 amount0Mint = FullMath.mulDiv(amount0, totalSupply, amount0Current);
			uint256 amount1Mint = FullMath.mulDiv(amount1, totalSupply, amount1Current);

			zeroForOne = amount0Mint > amount1Mint;

			if (zeroForOne) {
				uint256 intermediate1 = FullMath.mulDiv(
					amount0 * amount1Current - amount1 * amount0Current,
					sqrtRatioX96,
					FixedPoint96.Q96
				);
				uint256 numerator = FullMath.mulDiv(intermediate1, sqrtRatioX96, FixedPoint96.Q96);

				uint256 intermediate2 = FullMath.mulDiv(
					basisOne * amount1Current,
					sqrtRatioX96,
					FixedPoint96.Q96
				);
				uint256 denominator = amount0Current *
					(basisOne - swapFee) +
					FullMath.mulDiv(intermediate2, sqrtRatioX96, FixedPoint96.Q96);

				amountToSwap = FullMath.mulDiv(basisOne, numerator, denominator);
			} else {
				uint256 numerator = amount1 * amount0Current - amount0 * amount1Current;

				uint256 intermediate = FullMath.mulDiv(
					amount1Current * (basisOne - swapFee),
					sqrtRatioX96,
					FixedPoint96.Q96
				);
				uint256 denominator = amount0Current *
					basisOne +
					FullMath.mulDiv(intermediate, sqrtRatioX96, FixedPoint96.Q96);

				amountToSwap = FullMath.mulDiv(basisOne, numerator, denominator);
			}
		}
	}

	// --- External authorized functions --- //

	/// @notice setSlippageUserMax sets the default maximum slippage for users
	/// @param _slippageUserMax default maximum slippage for users when swapping is needed.
	/// Accepts values from 0 to 1000000, e.g. 5000 <-> 0.5%
	function setSlippageUserMax(uint24 _slippageUserMax) external onlyOwner {
		require(_slippageUserMax <= basisOne, "slippage too high");
		slippageUserMax = _slippageUserMax;
		emit SetSlippageUserMax(slippageUserMax);
	}
}
