// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "./interfaces/DynaStrategyAPI.sol";
import "./interfaces/DynaRouterAPI.sol";
import "./interfaces/VaultManagerAPI.sol";
import "./interfaces/IReferenceAssetOracle.sol";
import "./utils/Checks.sol";
import "./VaultConfigLib.sol";
import "./VaultRouterLib.sol";

/**
 * @title DynaVault library
 * @notice contains logic to implement EIP4626, EIP5143 vault standards including our redeemProportional extensions.
 * https://eips.ethereum.org/EIPS/eip-4626
 * https://eips.ethereum.org/EIPS/eip-5143
 */
library DynaVaultLib {
	using Checks for address;
	using FixedPointMathLib for uint256;
	using SafeERC20 for IERC20;

	/// @dev The storage slot follows EIP1967 to avoid storage collision
	bytes32 private constant VAULT_STORAGE_POSITION = bytes32(uint256(keccak256("DynaVault.VaultStorage")) - 1);
	address private constant ZERO_ADDRESS = address(0);
	uint256 private constant DEFAULT_MAX_TOTAL_ASSETS = type(uint256).max >> 64;
	uint256 private constant MAX_BPS = 100e2;
	uint256 private constant PRECISION = 1e18;
	uint8 private constant FEE_CALC_ITERATIONS = 10;

	struct VaultStorage {
		uint256 depositPrecision;
		uint256 minDepositAssets /* Minimum depositAmount in assets a user can deposit */;
		uint256 maxTotalAssets /* Limit for totalAssets the Vault can hold */;
	}

	event Deposit(address indexed caller, address indexed owner, uint256 assets, uint256 shares);

	event Withdraw(address indexed caller, address indexed receiver, address indexed owner, uint256 assets, uint256 shares);

	event WithdrawFromStrategy(address strategy, uint256 strategyTotalDebt, uint256 loss);

	error LossProtection(uint256 toWithdraw, uint256 totalLoss, uint256 maxLoss);

	/**
	 * @notice returns the vault storage
	 * @return vs storage pointer for accessing the state variables
	 */
	function vaultStorage() private pure returns (VaultStorage storage vs) {
		bytes32 position = VAULT_STORAGE_POSITION;
		assembly {
			vs.slot := position
		}
	}

	/** @notice initializes the dyna vault library */
	function initialize() external {
		VaultStorage storage _storage = vaultStorage();
		require(_storage.maxTotalAssets == 0, "ERR_REINIT");
		_storage.depositPrecision = 10 ** VaultConfigLib.depositDecimals();
		_storage.maxTotalAssets = DEFAULT_MAX_TOTAL_ASSETS;
	}

	/**
	 * @notice returns the vault manager API for interactions
	 * @return vaultManagerAPI vault manager API instance that can be used for interactions
	 */
	function manager() private view returns (VaultManagerAPI) {
		return VaultManagerAPI(VaultConfigLib.manager());
	}

	/**
	 * @notice returns the address of the deposit token
	 * @return asset address of the deposit token
	 */
	function asset() private view returns (address) {
		return VaultConfigLib.asset();
	}

	/**
	 * @notice returns total value of the vault tokens in deposit token
	 * @return totalAssets total value of vault tokens in deposit token
	 */
	function totalAssets() internal view returns (uint256) {
		address depositToken = asset();
		VaultManagerAPI _manager = manager();
		uint256 total = 0;
		uint256 nrOfTokens = _manager.nrOfTokens();
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			address tokenAddress = _manager.tokens(i);
			TokenStats memory stats = _manager.tokenStats(tokenAddress);
			uint256 tokenAmount = stats.tokenIdle + stats.tokenDebt;
			if (tokenAddress == depositToken) {
				total += tokenAmount;
			} else if (tokenAmount != 0) {
				uint256 amountOut = tokenValueInQuoteAsset(tokenAddress, tokenAmount, depositToken);
				total += amountOut;
			}
		}
		return total;
	}

	/**
	 * @notice private function that calculates the value of shares in assets given total supply
	 * @param shares amount of shares
	 * @param givenTotalSupply  total shares supply to use in calculation
	 * @param rounding Math lib rounding either Up or Down
	 * @return assets value of shares in assets
	 */
	function _convertToAssetsGivenTotalSupply(uint256 shares, uint256 givenTotalSupply, Math.Rounding rounding) private view returns (uint256 assets) {
		if (shares == 0) return 0;
		uint256 _freeFunds = manager().freeFunds();
		if (givenTotalSupply == 0) {
			return _fullMulDiv(shares, vaultStorage().depositPrecision, PRECISION, rounding);
		} else {
			return _fullMulDiv(shares, _freeFunds, givenTotalSupply, rounding);
		}
	}

	/**
	 * @notice private function that calculates the value of assets in shares given total supply
	 * @param assets amount of assets
	 * @param givenTotalSupply total shares supply to use in calculation
	 * @param rounding Math lib rounding either Up or Down
	 * @return shares value of assets in shares
	 */
	function _convertToSharesGivenTotalSupply(uint256 assets, uint256 givenTotalSupply, Math.Rounding rounding) private view returns (uint256 shares) {
		if (assets == 0) return 0;
		uint256 _freeFunds = manager().freeFunds();
		if (_freeFunds == 0) {
			return _fullMulDiv(assets, PRECISION, vaultStorage().depositPrecision, rounding);
		} else {
			return _fullMulDiv(assets, givenTotalSupply, _freeFunds, rounding);
		}
	}

	/**
	 * @notice converts assets to shares
	 * @param shares amount of shares to convert
	 * @return assets value of shares in assets
	 */
	function convertToAssets(uint256 shares) internal view returns (uint256 assets) {
		uint256 givenTotalSupply = totalSupply();
		assets = _convertToAssetsGivenTotalSupply(shares, givenTotalSupply, Math.Rounding.Down);
	}

	/**
	 * @notice converts assets to shares
	 * @param assets amount of assets to convert
	 * @return shares value of assets in shares
	 */
	function convertToShares(uint256 assets) internal view returns (uint256 shares) {
		return _convertToSharesGivenTotalSupply(assets, totalSupply(), Math.Rounding.Down);
	}

	/**
	 * @notice returns the value of one share in deposit token
	 * @return assetsPerShare value of one share in deposit token
	 */
	function assetsPerShare() external view returns (uint256) {
		return convertToAssets(PRECISION);
	}

	/** @notice returns the total supply of shares */
	function totalSupply() private view returns (uint256) {
		return IERC20(address(this)).totalSupply();
	}

	/**
	 * @notice set deposit limits
	 * @param newMinDepositAssets new minimum deposit amount limit
	 * @param newMaxTotalAssets new max total assets limit
	 */
	function setDepositLimits(uint256 newMinDepositAssets, uint256 newMaxTotalAssets) external {
		VaultManagerAPI _manager = VaultManagerAPI(VaultConfigLib.manager());
		_manager.checkGovernance(msg.sender);
		// avoid maxMint from overflowing on convertToAssets
		require(newMaxTotalAssets <= DEFAULT_MAX_TOTAL_ASSETS && newMaxTotalAssets != 0, "ERR_MAX_TOTAL_ASSETS");
		require(newMinDepositAssets < newMaxTotalAssets, "ERR_MIN_ABOVE_MAX");
		vaultStorage().minDepositAssets = newMinDepositAssets;
		vaultStorage().maxTotalAssets = newMaxTotalAssets;
	}

	/** @notice returns the minimum amount possible to deposit */
	function minDepositLimit() external view returns (uint256) {
		return vaultStorage().minDepositAssets;
	}

	/** @notice returns the max amount possible to deposit */
	function maxDepositLimit() internal view returns (uint256) {
		if (vaultStorage().maxTotalAssets > totalAssets()) {
			return vaultStorage().maxTotalAssets - totalAssets();
		} else {
			return 0;
		}
	}

	/** @notice returns the max amount of total assets possible */
	function maxTotalAssets() external view returns (uint256) {
		return vaultStorage().maxTotalAssets;
	}

	/**
	 * @notice checks if an amount of assets are above the max amount possible to deposit
	 * @param assets amount of assets to check
	 */
	function checkMaxDeposit(uint256 assets) internal view {
		require(assets <= maxDepositLimit(), "ERR_MAX_DEPOSIT");
	}

	/**
	 * @notice checks if an amount of assets is below the min deposit limit
	 * @param assets amount of assets to check
	 */
	function checkMinDeposit(uint256 assets) internal view {
		require(assets > vaultStorage().minDepositAssets, "ERR_MIN_DEPOSIT");
	}

	/** @notice returns the max amount of shares that can be minted */
	function maxMint() internal view returns (uint256) {
		uint256 maxDepositAssets = maxDepositLimit();
		return (maxDepositAssets == type(uint256).max) ? type(uint256).max : convertToShares(maxDepositAssets);
	}

	/**
	 * @notice checks if an amount of shares exceeds the max amount possible
	 * @param shares amount of shares to check
	 */
	function checkMaxMint(uint256 shares) external view {
		require(shares <= maxMint(), "ERR_MAX_MINT");
	}

	/**
	 * Maximum amount of the underlying asset that can be withdrawn from the owner balance in the Vault,
	 * through a withdraw call.
	 * @notice This does not include fees to allow exiting the vault withdrawing the asset value of the entire balance.
	 * @param owner The address of the owner of the shares to withdraw.
	 * @return The maximum amount of assets that can be withdrawn.
	 */
	function maxWithdraw(address owner) internal view returns (uint256) {
		return _convertToAssetsGivenTotalSupply(sharesOf(owner), totalSupply(), Math.Rounding.Down);
	}

	/**
	 * @dev Check if withdrawal of assets is within limits.
	 * @param assets The amount of assets to withdraw.
	 * @param owner The address of the owner.
	 */
	function checkWithdraw(uint256 assets, address owner) internal view returns (uint256 maxAssets) {
		maxAssets = maxWithdraw(owner);
		require(assets <= maxAssets, "ERR_MAX_WITHDRAW");
		uint256 remainingAssets = maxAssets - assets;
		if (remainingAssets != 0) {
			require(remainingAssets >= vaultStorage().minDepositAssets, "ERR_MIN_WITHDRAW");
		}
	}

	/**
	 * @notice Wraps erc20 balanceOf
	 * @param user The address of the user.
	 * @return Shares balance of user.
	 */
	function sharesOf(address user) internal view returns (uint256) {
		return IERC20(address(this)).balanceOf(user);
	}

	/** @notice Allows vault to report reserves during withdraw and redeem */
	function reportAllReserves() internal {
		VaultManagerAPI _manager = manager();
		_manager.reportAllReservesFromVault();
	}

	/**
	 * Maximum amount of shares that can be withdrawn from the owner balance in the Vault,
	 * through a redeem call.
	 * @notice This does not include fees to allow exiting the vault redeeming entire balance.
	 * @param owner The address of the owner of the shares to redeem.
	 * @return The maximum amount of assets that can be withdrawn.
	 */
	function maxRedeem(address owner) internal view returns (uint256) {
		return sharesOf(owner);
	}

	/**
	 * @dev Check if redeem of shares is within limits.
	 * @param shares The amount of assets to withdraw.
	 * @param owner The address of the owner.
	 */
	function checkRedeem(uint256 shares, address owner) external view {
		uint256 maxShares = maxRedeem(owner);
		require(shares <= maxShares, "ERR_MAX_REDEEM");
		uint256 remainingShares = maxShares - shares;
		if (remainingShares != 0) {
			require(_convertToAssetsGivenTotalSupply(remainingShares, totalSupply(), Math.Rounding.Down) >= vaultStorage().minDepositAssets, "ERR_MIN_REDEEM");
		}
	}

	/**
	 * @notice returns a preview of deposit
	 * @param assets amount to deposit
	 * @return shares amount of shares received for deposit
	 */
	function previewDeposit(uint256 assets) external view returns (uint256) {
		uint256 depositFee = manager().getFees().depositFee;
		uint256 fee = _feeOnTotal(assets, depositFee);
		return _convertToSharesGivenTotalSupply(assets - fee, totalSupply(), Math.Rounding.Down);
	}

	/**
	 * @notice previews value of amount of shares to mint
	 * @param shares amount of shares minted
	 * @return assets value of shares including fees
	 */
	function previewMint(uint256 shares) internal view returns (uint256) {
		uint256 depositFee = manager().getFees().depositFee;
		uint256 assets = _convertToAssetsGivenTotalSupply(shares, totalSupply(), Math.Rounding.Up);
		return assets + _feeOnRaw(assets, depositFee);
	}

	/**
	 * @notice return preview of withdraw
	 * @param assets amount of assets to withdraw
	 */
	function previewWithdraw(uint256 assets) internal view returns (uint256) {
		return convertToShares(assets + _calculateRedemptionFee(assets));
	}

	/**
	 * @notice returns shares ratio based on unlocked funds and of total supply
	 * @param shares amount of shares to convert
	 * @return ratio in PRECISION decimals
	 */
	function _convertToRatio(uint256 shares) private view returns (uint256 ratio) {
		ratio = FixedPointMathLib.fullMulDiv(shares, manager().unlockedFundsRatio(), totalSupply());
	}

	/**
	 * @notice calculates amounts for redeem proportional
	 * @param shares amount of shares to redeem
	 * @return toRedeem array of proportional amounts to redeem
	 */
	function calcRedeemProportional(uint256 shares) external returns (uint256[] memory) {
		VaultManagerAPI _manager = manager();
		uint256 ratio = _convertToRatio(shares);
		uint256 nrOfTokens = _manager.nrOfTokens();
		uint256[] memory toRedeem = new uint256[](nrOfTokens);
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			address tokenAddress = _manager.tokens(i);
			TokenStats memory stats = _manager.tokenStats(tokenAddress);
			uint256 tokenTotal = stats.tokenIdle + stats.tokenDebt;
			toRedeem[i] = FixedPointMathLib.fullMulDiv(tokenTotal, ratio, PRECISION);
			if (toRedeem[i] > stats.tokenIdle) {
				// fetch from strategies
				(uint256 totalLoss, uint256 totalWithdrawn) = _withdrawTokenDebtFromStrategies(tokenAddress, toRedeem[i] - stats.tokenIdle);
				// adjust toRedeem based on loss incurred during withdrawal
				if (totalLoss > 0) {
					toRedeem[i] -= Math.min(toRedeem[i], totalLoss);
				}
				// update amountIdle after withdrawal
				_manager.depositIdle(tokenAddress, totalWithdrawn);
			}
		}
		return toRedeem;
	}

	/**
	 * @notice transfer proportional amounts of reserve tokens
	 * @param receiver address of receiver
	 * @param toRedeem array of token amounts to redeem
	 */
	function transferProportional(address receiver, uint256[] memory toRedeem) external {
		VaultManagerAPI _manager = manager();
		uint256 redemptionFee = _manager.getFees().redemptionFee;
		address feeRecipient = _manager.getFees().redemptionFeeWallet;
		uint256 nrOfTokens = _manager.nrOfTokens();
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			address token = _manager.tokens(i);
			uint256 fee = 0;
			if (toRedeem[i] != 0 && redemptionFee != 0) {
				fee = _feeOnTotal(toRedeem[i], redemptionFee);
			}
			IERC20(token).safeTransfer(receiver, toRedeem[i] - fee);
			if (fee != 0 && feeRecipient != address(this)) {
				IERC20(token).safeTransfer(feeRecipient, fee);
			}
			_manager.withdrawIdle(token, toRedeem[i]);
		}
	}

	/**
	 * @notice returns value of token in quote asset
	 * @param base address of base token
	 * @param amount amount of token
	 * @param quote address of quote token
	 * @return value value of amount in quote token
	 */
	function tokenValueInQuoteAsset(address base, uint256 amount, address quote) internal view returns (uint256 value) {
		IReferenceAssetOracle _referenceAssetOracle = IReferenceAssetOracle(VaultConfigLib.referenceAssetOracle());
		(uint256 price, ) = _referenceAssetOracle.getPrice(base, quote);
		return FixedPointMathLib.fullMulDiv(price, amount, (10 ** IERC20Metadata(base).decimals()));
	}

	/* ==========  Vault functions   ========== */
	/**
	 * @notice
	 * feeShares is approximated instead of being computed with the formula amount * supply / (assets - amount)
	 * Minting shares increases the supply, so if you don't correct for this dilution during the calculation,
	 * your shares would be worth a lot less than the intended fees.
	 * @param feeAmount amount for fees
	 * @param feeToken address of fee token
	 * @param deltaTotalAssets updates total assets in fee shares calculation
	 * @return feeShares amount of shares to mint for fees
	 */
	function calcSharesForFeeAmount(uint256 feeAmount, address feeToken, uint256 deltaTotalAssets) internal view returns (uint256 feeShares) {
		feeShares = calcSharesForFeeAmountUsingGivenTotalSupplyAndTotalAssets(feeAmount, feeToken, deltaTotalAssets, totalSupply(), totalAssets());
	}

	/**
	 * @notice calculates shares for fees with given values for total supply and total assets
	 * @param feeAmount amount for fees
	 * @param feeToken address of fee token
	 * @param deltaTotalAssets updates total assets in fee shares calculation
	 * @param givenTotalSupply amount of total supply to use in calculation
	 * @param givenTotalAssets amount of total assets to use in calculation
	 * @return feeShares amount of shares to mint for fees
	 */
	function calcSharesForFeeAmountUsingGivenTotalSupplyAndTotalAssets(
		uint256 feeAmount,
		address feeToken,
		uint256 deltaTotalAssets,
		uint256 givenTotalSupply,
		uint256 givenTotalAssets
	) internal view returns (uint256 feeShares) {
		address depositToken = asset();
		uint256 feeAmountInDepositToken = (feeToken == depositToken) ? feeAmount : tokenValueInQuoteAsset(feeToken, feeAmount, depositToken);
		uint256 _freeFunds = givenTotalAssets;
		uint256 unlockedRatio = manager().unlockedFundsRatio();
		if (deltaTotalAssets != 0) {
			// calculate free amount with updated total assets when reporting from strategy
			uint256 deltaTotalAssetsInDeposit = tokenValueInQuoteAsset(feeToken, deltaTotalAssets, depositToken);
			_freeFunds = FixedPointMathLib.fullMulDiv(_freeFunds + deltaTotalAssetsInDeposit, unlockedRatio, PRECISION);
		} else {
			_freeFunds = FixedPointMathLib.fullMulDiv(_freeFunds, unlockedRatio, PRECISION);
		}
		if (_freeFunds != 0) {
			uint256 lastFeeSharesApproximation;
			for (uint8 i = 0; i < FEE_CALC_ITERATIONS; ++i) {
				// Calculate the Error Term and refine the approximation
				feeShares += ((feeAmountInDepositToken * (givenTotalSupply + feeShares)) / _freeFunds) - feeShares;
				if (feeShares == lastFeeSharesApproximation) break;
				lastFeeSharesApproximation = feeShares;
			}
		}
	}

	/**
	 * @dev Deposit/mint common workflow.
	 * @param caller address of caller
	 * @param assetsIncludingFees amount of assets including fees
	 * @return fee amount for fees
	 */
	function beforeMint(address caller, uint256 assetsIncludingFees) external returns (uint256 fee) {
		// If token is ERC777, `transferFrom` can trigger a reentrancy BEFORE the transfer happens through the
		// `tokensToSend` hook. On the other hand, the `tokenReceived` hook, that is triggered after the transfer,
		// calls the vault, which is assumed not malicious.
		//
		// Conclusion: we need to do the transfer before we mint so that any reentrancy would happen before the
		// assets are transferred and before the shares are minted, which is a valid state.
		VaultManagerAPI _manager = manager();
		address token = asset();
		require(IERC20(token).balanceOf(caller) >= assetsIncludingFees, "ERC20: insufficient balance");
		require(IERC20(token).allowance(caller, address(this)) >= assetsIncludingFees, "ERC20: insufficient allowance");

		uint256 depositFee = _manager.getFees().depositFee;
		fee = _feeOnTotal(assetsIncludingFees, depositFee);

		IERC20(token).safeTransferFrom(caller, address(this), assetsIncludingFees);
		_manager.depositDepositToken(assetsIncludingFees, fee);
	}

	/**
	 * @notice transfers fee to fee recipient
	 * @param caller address of the caller
	 * @param receiver address of the reciever
	 * @param assetsIncludingFees amount of assets including amount for fees
	 * @param _sharesWithoutFees amount of shares not including fees
	 * @param fee amount
	 */
	function afterMint(address caller, address receiver, uint256 assetsIncludingFees, uint256 _sharesWithoutFees, uint256 fee) external {
		emit Deposit(caller, receiver, assetsIncludingFees, _sharesWithoutFees);
		address feeRecipient = manager().getFees().depositFeeWallet;
		if (fee > 0 && feeRecipient != address(this)) {
			SafeERC20.safeTransfer(IERC20(asset()), feeRecipient, fee);
		}
	}

	/**
	 * @notice withdraw debt from strategy
	 * @param strategy address of strategy
	 * @param tokenAddress address of token
	 * @param amountNeeded amount wanted to withdraw
	 */
	function withdrawStrategyDebt(
		address strategy,
		address tokenAddress,
		uint256 amountNeeded
	) private returns (uint256 strategyDebt, uint256 loss, uint256 withdrawn) {
		// NOTE: Don't withdraw more than the debt so that Strategy can still
		//       continue to work based on the profits it has
		// NOTE: This means that user will lose out on any profits that each
		//       Strategy in the queue would return on next harvest, benefiting others
		strategyDebt = manager().strategyDebt(strategy);
		if (amountNeeded > strategyDebt) amountNeeded = strategyDebt;
		// Withdraw amount
		uint256 preBalance = IERC20(tokenAddress).balanceOf(address(this));
		loss = DynaStrategyAPI(strategy).withdraw(amountNeeded);
		withdrawn = IERC20(tokenAddress).balanceOf(address(this)) - preBalance;
	}

	/**
	 * @notice withdraw token debt from strategies
	 * @param tokenAddress address of token to withdraw
	 * @param valueToWithdraw amount of tokens to withdraw
	 */
	function withdrawTokenDebtFromStrategies(address tokenAddress, uint256 valueToWithdraw) internal returns (uint256 totalLoss, uint256 totalWithdrawn) {
		VaultConfigLib.onlyManager();
		return _withdrawTokenDebtFromStrategies(tokenAddress, valueToWithdraw);
	}

	/**
	 * @dev Withdraw/redeem common workflow.
	 * @param assetsNotIncludingFees assets that receiver will get
	 * @param sharesIncludingFees shares that are burned
	 * @return assetsToWithdraw amount of assets to withdraw
	 */
	function beforeBurn(uint256 assetsNotIncludingFees, uint256 sharesIncludingFees) external returns (uint256 assetsToWithdraw) {
		VaultManagerAPI _manager = manager();
		uint256 redemptionFee = _manager.getFees().redemptionFee;
		uint256 fee = _feeOnRaw(assetsNotIncludingFees, redemptionFee);

		(uint256 tokenIdle, uint256 tokenDebt) = _manager.tokenIdleDebt(VaultConfigLib.asset());
		// we must have enough tokens to send to both the withdrawer and the fee recipient
		if (tokenIdle >= assetsNotIncludingFees + fee) {
			assetsToWithdraw = assetsNotIncludingFees + fee;
		} else {
			// if deposit token vault idle balance is not sufficient,
			// start swapping reserve assets based on shares/totalSupply ratio
			uint256 nrOfTokens = _manager.nrOfTokens();
			uint256 ratio = FixedPointMathLib.fullMulDiv(sharesIncludingFees, PRECISION, totalSupply());
			uint256 totalLoss;
			uint256 depositTokensAllocatedForWithdraw;
			address _asset = asset();
			for (uint256 t = 0; t < nrOfTokens; t++) {
				address tokenAddress = _manager.tokens(t);
				(tokenIdle, tokenDebt) = _manager.tokenIdleDebt(tokenAddress);
				uint256 toRedeem = FixedPointMathLib.fullMulDiv((tokenIdle + tokenDebt), ratio, PRECISION);
				if (toRedeem == 0) continue;
				if (tokenIdle < toRedeem) {
					// fetch from strategies
					(uint256 tokenLoss, uint256 tokenWithdrawn) = _withdrawTokenDebtFromStrategies(tokenAddress, toRedeem - tokenIdle);
					// adjust toRedeem based on loss incurred during withdrawal
					if (tokenLoss != 0) {
						toRedeem = (tokenLoss < toRedeem) ? toRedeem - tokenLoss : 0;
						totalLoss += (t > 0 && tokenLoss > 0) ? tokenValueInQuoteAsset(tokenAddress, tokenLoss, _asset) : tokenLoss;
					}
					// update tokenIdle after withdrawal
					_manager.depositIdle(tokenAddress, tokenWithdrawn);
				}
				// no need to swap for deposit token
				if (t == 0) {
					depositTokensAllocatedForWithdraw = toRedeem;
					continue;
				}
				// swap reserve to deposit
				uint256 amountOut;
				{
					address dynaRouter = VaultConfigLib.dynaRouter();
					(uint256 estimatedAmountOut, address router, bytes32[] memory swapData) = DynaRouterAPI(dynaRouter).previewSwap(
						tokenAddress,
						toRedeem,
						_asset
					);
					(address spender, uint256 allowed) = DynaRouterAPI(router).spenderAllowance(router, tokenAddress);
					if (allowed < toRedeem) {
						IERC20(tokenAddress).safeIncreaseAllowance(spender, toRedeem);
					}
					uint256 tokenOutInitialBalance = IERC20(_asset).balanceOf(address(this));
					DynaRouterAPI(dynaRouter).swap(tokenAddress, toRedeem, _asset, estimatedAmountOut, router, address(this), address(this), swapData);
					amountOut = IERC20(_asset).balanceOf(address(this)) - tokenOutInitialBalance;
				}
				depositTokensAllocatedForWithdraw += amountOut;
				_manager.updateDebtAfterSwap(tokenAddress, toRedeem, _asset, amountOut, false);
			}
			_manager.setTotalIdle(_asset, IERC20(_asset).balanceOf(address(this)));
			// NOTE: This loss protection is put in place to revert if losses from
			//       withdrawing are more than what is considered acceptable.
			{
				// fix stack too deep
				uint256 depositTokensToWithdraw = assetsNotIncludingFees + fee;
				uint256 maxLoss = VaultConfigLib.maxLoss(); // max loss BPS for loss protection
				if (totalLoss > FixedPointMathLib.fullMulDiv(maxLoss, depositTokensToWithdraw, MAX_BPS)) {
					revert LossProtection(depositTokensToWithdraw, totalLoss, maxLoss);
				}
				assetsToWithdraw = Math.min(depositTokensAllocatedForWithdraw, depositTokensToWithdraw);
			}
		}
		address feeRecipient = _manager.getFees().redemptionFeeWallet;
		// we send to the fee recipient when needed and adjust the assetsToWithdraw amount for the remaining
		if (fee > 0 && feeRecipient != address(this)) {
			SafeERC20.safeTransfer(IERC20(asset()), feeRecipient, fee);
			assetsToWithdraw = assetsToWithdraw > fee ? assetsToWithdraw - fee : 0;
		}
	}

	/**
	 * @notice called during withdraw after burning of the users shares, is responsible to send assets to the receiver
	 * @param caller address of the caller
	 * @param receiver address of the receiver
	 * @param owner address of the owner
	 * @param assetsNotIncludingFees assets that receiver will get
	 * @param sharesIncludingFeesBurned shares that are burned
	 */
	function afterBurn(address caller, address receiver, address owner, uint256 assetsNotIncludingFees, uint256 sharesIncludingFeesBurned) external {
		manager().withdrawDepositToken(assetsNotIncludingFees);
		IERC20(asset()).safeTransfer(receiver, assetsNotIncludingFees);
		emit Withdraw(caller, receiver, owner, assetsNotIncludingFees, sharesIncludingFeesBurned);
	}

	/**
	 * @notice internal function returns a calculated redemption fee amount
	 * @param assets amount of assets to calculate amount on
	 * @return fees amount of fees on assets
	 */
	function _calculateRedemptionFee(uint256 assets) private view returns (uint256 fees) {
		uint256 redemptionFee = manager().getFees().redemptionFee;
		fees = _feeOnRaw(assets, redemptionFee);
	}

	/**
	 * @notice internal function returns max redemption without fee amount
	 * @param shares amount of shares to calculate amount on
	 * @return assetsNotIncludingFees assets without fees
	 */
	function _calculateMaxAssetsNotIncludingFees(uint256 shares) private view returns (uint256 assetsNotIncludingFees) {
		uint256 maxAssetsIncludingFees = convertToAssets(shares);
		uint256 fees = _calculateRedemptionFee(maxAssetsIncludingFees);
		return maxAssetsIncludingFees - fees;
	}

	function reportAndCalculateWithdraw(uint256 assetsNotIncludingFees, address owner) internal returns (uint256 sharesToBurn, uint256 assetsExcludingFees) {
		DynaVaultLib.reportAllReserves();
		uint256 sharesIncludingFees;
		if (assetsNotIncludingFees == type(uint256).max) {
			sharesIncludingFees = sharesOf(owner);
			assetsNotIncludingFees = _calculateMaxAssetsNotIncludingFees(sharesIncludingFees);
		} else {
			checkWithdraw(assetsNotIncludingFees, owner); // check without simulate
			sharesIncludingFees = previewWithdraw(assetsNotIncludingFees); // check without simulate
		}
		return (sharesIncludingFees, assetsNotIncludingFees);
	}

	/**
	 * @notice returns fee amount on the raw assets amount
	 * @param assets amount of assets
	 * @param feeBasePoint the fee base points
	 */
	function _feeOnRaw(uint256 assets, uint256 feeBasePoint) private pure returns (uint256) {
		return feeBasePoint > 0 ? FixedPointMathLib.fullMulDivUp(assets, feeBasePoint, MAX_BPS) : 0;
	}

	/**
	 * @notice returns fee amount on total
	 * @param assets amount of assets
	 * @param feeBasePoint the fee base points
	 */
	function _feeOnTotal(uint256 assets, uint256 feeBasePoint) private pure returns (uint256) {
		return feeBasePoint > 0 ? FixedPointMathLib.fullMulDivUp(assets, feeBasePoint, feeBasePoint + MAX_BPS) : 0;
	}

	/**
	 * @notice wraps fullMulDiv from FixedPointMathLib using a rounding passe as input
	 * @param x first factor of the dividend
	 * @param y second factor of the dividen
	 * @param z divisor
	 * @param rounding Math lib rounding either Up or Down
	 */
	function _fullMulDiv(uint256 x, uint256 y, uint256 z, Math.Rounding rounding) private pure returns (uint256) {
		if (rounding == Math.Rounding.Up) {
			return x.fullMulDivUp(y, z);
		} else {
			return x.fullMulDiv(y, z);
		}
	}

	/**
	 * @notice withdraw token debt from strategies
	 * @param tokenAddress address of token to withdraw
	 * @param valueToWithdraw amount of tokens to withdraw
	 */
	function _withdrawTokenDebtFromStrategies(address tokenAddress, uint256 valueToWithdraw) private returns (uint256 totalLoss, uint256 totalWithdrawn) {
		VaultManagerAPI _manager = manager();
		// We need to go get some from our strategies in the withdrawal queue
		// NOTE: This performs forced withdrawals from each Strategy. During
		//       forced withdrawal, a Strategy may realize a loss. That loss
		//       is reported back to the Vault, and the will affect the amount
		//       of tokens that the withdrawer receives for their shares. They
		//       can optionally specify the maximum acceptable loss (in BPS)
		//       to prevent excessive losses on their withdrawals (which may
		//       happen in certain edge cases where Strategies realize a loss)
		uint256 valueAllocatedForWithdraw;
		address[] memory tokenStrategies = _manager.getTokenStrategies(tokenAddress);
		for (uint256 s = 0; s < tokenStrategies.length; s++) {
			address strategy = tokenStrategies[s];
			if (strategy == ZERO_ADDRESS) break; // We've exhausted the queue
			if (valueToWithdraw <= valueAllocatedForWithdraw) break; // We're done withdrawing
			uint256 amountNeeded = valueToWithdraw - valueAllocatedForWithdraw;
			(uint256 strategyDebt, uint256 loss, uint256 withdrawn) = withdrawStrategyDebt(strategy, tokenAddress, amountNeeded);
			totalWithdrawn += withdrawn;
			valueAllocatedForWithdraw += withdrawn;

			// NOTE: Withdrawer incurs any losses from liquidation
			if (loss != 0) {
				valueToWithdraw -= loss;
				totalLoss += loss;
				_manager.reportLoss(strategy, loss);
			}
			// Reduce the Strategy's debt by the amount withdrawn ("realized returns")
			// NOTE: This doesn't add to returns as it's not earned by "normal means"
			_manager.decreaseStrategyDebt(strategy, withdrawn);

			emit WithdrawFromStrategy(strategy, strategyDebt, loss);
		}
	}
}
