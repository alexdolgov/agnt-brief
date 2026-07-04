// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "./VaultTokensLib.sol";
import "./VaultFeesLib.sol";
import "./VaultStrategiesLib.sol";
import "./interfaces/IVaultSimulatorAPI.sol";
import "./interfaces/IVaultManagerAPI.sol";
import "./interfaces/IDynaVaultAPI.sol";

library VaultManagerSimulatorLib {
	using FixedPointMathLib for uint256;

	bytes32 private constant VAULT_MANAGER_SIMULATOR_LIB_STORAGE_POSITION = bytes32(uint256(keccak256("VaultManager.SimulatorLibStorage")) - 1);
	uint256 private constant MAX_TOKEN_DEBT_RATIO = 100e16; // 100.00% (debt ratio)
	uint256 private constant MAX_BPS = 100e2; // 100.00% (fees)
	uint256 private constant PRECISION = 10 ** 18;
	uint256 private constant SECS_PER_YEAR = 31_556_952;
	uint256 private constant DEGRADATION_COEFFICIENT = 10 ** 18;

	struct VaultManagerSimulatorLibStorage {
		address vault;
	}

	/**
	 * @notice returns the library storage
	 * @return ms storage pointer for accessing the state variables
	 */
	function vaultManagerSimulatorLibStorage() private pure returns (VaultManagerSimulatorLibStorage storage ms) {
		bytes32 position = VAULT_MANAGER_SIMULATOR_LIB_STORAGE_POSITION;
		assembly {
			ms.slot := position
		}
	}

	/**
	 * @notice initializes the vault simulator library setting the address of the vault
	 * @param vaultAddress address of vault
	 */
	function initialize(address vaultAddress) public {
		VaultManagerSimulatorLibStorage storage _storage = vaultManagerSimulatorLibStorage();
		_storage.vault = vaultAddress;
	}

	/**
	 * @notice simulates the current locked profit calculation using a snapshot
	 * @param snapshot The vault snapshot used in the simulation
	 * @return calculatedLockedProfitRatio should return current locked profit expressed as a ratio
	 */
	function _simulatedCalculateCurrentLockedProfitRatio(
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) private pure returns (uint256 calculatedLockedProfitRatio) {
		uint256 _lastLockedProfitDegradation = snapshot.lastLockedProfitDegradation;
		if (snapshot.timestamp == _lastLockedProfitDegradation) return snapshot.lastLockedProfitRatio;
		uint256 _lastLockedProfitRatio = snapshot.lastLockedProfitRatio;
		uint256 _timePassed = snapshot.timestamp - _lastLockedProfitDegradation;
		uint256 _lockedProfitRatioDegradation = _timePassed * (snapshot.lockedProfitDegradationRate + snapshot.extraLockedProfitDegradationRate);
		uint256 _lockedProfitRatioDelta = FixedPointMathLib.fullMulDiv(_lastLockedProfitRatio, _lockedProfitRatioDegradation, DEGRADATION_COEFFICIENT);
		calculatedLockedProfitRatio = _lastLockedProfitRatio > _lockedProfitRatioDelta ? _lastLockedProfitRatio - _lockedProfitRatioDelta : 0;
	}

	/**
	 * @notice simulates locked profit calculation using a snapshot
	 * @param snapshot The vault snapshot used in the simulation
	 * @return lockedProfit in deposit token
	 */
	function _simulatedLockedProfit(IVaultSimulatorAPI.VaultSnapshot memory snapshot) private pure returns (uint256 lockedProfit) {
		uint256 totalAssets = snapshot.totalAssets;
		uint256 currentLockedProfitRatio = _simulatedCalculateCurrentLockedProfitRatio(snapshot);
		lockedProfit = (currentLockedProfitRatio > 0) ? FixedPointMathLib.fullMulDivUp(currentLockedProfitRatio, totalAssets, DEGRADATION_COEFFICIENT) : 0;
	}

	/**
	 * @notice Simulates the amount of free funds in the vault
	 * @param snapshot The vault snapshot used  used in the simulation
	 * @return freeFunds Simulated amount of free funds in the vault
	 */
	function simulatedFreeFunds(IVaultSimulatorAPI.VaultSnapshot memory snapshot) public pure returns (uint256 freeFunds) {
		uint256 totalAssets = snapshot.totalAssets;
		uint256 lockedProfit = _simulatedLockedProfit(snapshot);
		freeFunds = totalAssets - lockedProfit;
	}

	/**
	 * @notice simulates unlocked profit calculation using a snapshot
	 * @param snapshot The vault snapshot used in the simulation
	 * @return ratio of unlocked funds
	 */
	function simulateUnlockedFundsRatio(IVaultSimulatorAPI.VaultSnapshot memory snapshot) external pure returns (uint256) {
		uint256 currentLockedProfitRatio = _simulatedCalculateCurrentLockedProfitRatio(snapshot);
		return DEGRADATION_COEFFICIENT - currentLockedProfitRatio;
	}

	/**
	 * @notice should update locked profit in depositToken decimals
	 * @notice passes gain and totalFees in profitToken decimals
	 * @param profitToken address of token with profit
	 * @param deltaTotalAssets updates total assets in fee shares calculation
	 * @param totalFees amount of fees to mint shares for
	 * @param useDelta indicates if we need to compensate for a delta in total assets
	 * @param snapshot The vault snapshot used in the simulation
	 * @return snapshot with updated values
	 */
	function _simulatedUpdateLockedProfitRatio(
		address profitToken,
		uint256 deltaTotalAssets,
		uint256 totalFees,
		bool useDelta,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) private view returns (IVaultSimulatorAPI.VaultSnapshot memory) {
		address _depositToken = VaultTokensLib.token();
		uint256 _totalAssets = snapshot.totalAssets;
		uint256 _currentLockedProfitRatio = _simulatedCalculateCurrentLockedProfitRatio(snapshot);
		// convert gain and totalFees in deposit tokens for locked profit calculation
		uint256 _profitTokenUnit = 10 ** IERC20Metadata(profitToken).decimals();
		uint256 _profitTokenUnitInDeposit = (profitToken != _depositToken)
			? IDynaVaultAPI(VaultGovernanceLib.vault()).tokenValueInQuoteAsset(profitToken, _profitTokenUnit, _depositToken)
			: _profitTokenUnit;
		uint256 _deltaInDepositToken = FixedPointMathLib.fullMulDiv(deltaTotalAssets, _profitTokenUnitInDeposit, _profitTokenUnit);
		if (useDelta) _totalAssets += _deltaInDepositToken;
		uint256 _deltaRatio = _totalAssets != 0 ? FixedPointMathLib.fullMulDiv(_deltaInDepositToken, DEGRADATION_COEFFICIENT, _totalAssets) : 0;
		uint256 _totalFeesInDepositToken = FixedPointMathLib.fullMulDiv(totalFees, _profitTokenUnitInDeposit, _profitTokenUnit);
		uint256 _totalFeesRatio = _totalAssets != 0 ? FixedPointMathLib.fullMulDiv(_totalFeesInDepositToken, DEGRADATION_COEFFICIENT, _totalAssets) : 0;
		uint256 _remainingLockedProfitPeriod;
		if (_currentLockedProfitRatio != 0) {
			uint256 _expectedLockedProfitPeriod = DEGRADATION_COEFFICIENT / (snapshot.lockedProfitDegradationRate + snapshot.extraLockedProfitDegradationRate);
			uint256 _timePassed = (snapshot.timestamp > snapshot.lastLockedProfitDegradation) ? snapshot.timestamp - snapshot.lastLockedProfitDegradation : 0;
			_remainingLockedProfitPeriod = (_expectedLockedProfitPeriod > _timePassed) ? _expectedLockedProfitPeriod - _timePassed : 0;
		}
		uint256 _newLockedProfitRatio = (_currentLockedProfitRatio + _deltaRatio > _totalFeesRatio)
			? _currentLockedProfitRatio + _deltaRatio - _totalFeesRatio
			: 0;
		uint256 _newRemainingLockedProfitPeriod = DEGRADATION_COEFFICIENT / snapshot.lockedProfitDegradationRate;
		snapshot.extraLockedProfitDegradationRate = FixedPointMathLib.fullMulDiv(
			snapshot.lockedProfitDegradationRate,
			_remainingLockedProfitPeriod,
			_newRemainingLockedProfitPeriod
		);
		snapshot.lastLockedProfitRatio = _newLockedProfitRatio;
		snapshot.lastLockedProfitDegradation = snapshot.timestamp;
		return snapshot;
	}

	/**
	 * @notice Simulates calculation of profit and loss of a reserve token
	 * @param tokenIndex The reserve token index
	 * @param snapshot The snapshot
	 * @return reserveProfitInReferenceAsset Profit denominated in reference asset
	 * @return reserveLossInReferenceAsset Loss denominated in reference asset
	 */
	function _simulatedReportProfitLoss(
		uint256 tokenIndex,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	)
		private
		view
		returns (uint256 reserveProfitInReferenceAsset, uint256 reserveLossInReferenceAsset, uint256 reserveValue, IVaultSimulatorAPI.VaultSnapshot memory)
	{
		IVaultSimulatorAPI.VaultTokenSnapshot memory stats = snapshot.tokens[tokenIndex];
		address referenceAsset = VaultTokensLib.referenceAsset();
		uint256 reservePrecision = 10 ** IERC20Metadata(stats.tokenAddress).decimals();
		uint256 reserveBalance = stats.balance;
		uint256 baselineValue = Math.max(stats.lastReportedValue, stats.watermark);
		reserveValue = (reserveBalance != 0) ? VaultTokensLib.tokenReferenceValue(stats.tokenAddress, reservePrecision) : 0;
		if (stats.tokenAddress != referenceAsset) {
			reserveProfitInReferenceAsset = (baselineValue != 0 && reserveValue > baselineValue)
				? FixedPointMathLib.fullMulDiv((reserveValue - baselineValue), reserveBalance, reservePrecision)
				: 0;
			reserveLossInReferenceAsset = (reserveValue < baselineValue)
				? FixedPointMathLib.fullMulDiv((baselineValue - reserveValue), reserveBalance, reservePrecision)
				: 0;
		}
		// 2. report loss
		address depositToken = VaultTokensLib.token();
		uint reserveLossInDepositToken = (depositToken == referenceAsset)
			? reserveLossInReferenceAsset
			: IDynaVaultAPI(vaultManagerSimulatorLibStorage().vault).tokenValueInQuoteAsset(referenceAsset, reserveLossInReferenceAsset, depositToken);
		stats.totalProfit += reserveProfitInReferenceAsset;
		stats.totalLoss += reserveLossInReferenceAsset;
		stats.tokenIdle = reserveBalance;
		if (reserveProfitInReferenceAsset != 0) {
			uint256 deltaDebt = (reserveLossInDepositToken <= stats.depositDebt) ? reserveLossInDepositToken : stats.depositDebt;
			stats.depositDebt -= deltaDebt;
			if (stats.tokenAddress != snapshot.tokens[0].tokenAddress) snapshot.reserveDebt -= deltaDebt;
		}
		snapshot.tokens[tokenIndex] = stats;
		return (reserveProfitInReferenceAsset, reserveLossInReferenceAsset, reserveValue, snapshot);
	}

	/**
	 * @notice simulates calculation of reserve fees
	 * @param tokenAddress address of reserve token
	 * @param tokenIdle amount of token idle of reserve
	 * @param reserveProfitInReferenceAsset profit to report denominated in reference asset
	 * @param managementFeePct management fee ratio
	 * @param performanceFeePct performance fee ratio
	 * @param elapsed time since last report in seconds
	 */
	function _simulatedCalculateReserveFees(
		address tokenAddress,
		uint256 tokenIdle,
		uint256 reserveProfitInReferenceAsset,
		uint256 managementFeePct,
		uint256 performanceFeePct,
		uint256 elapsed
	) private view returns (uint256 managementFee, uint256 totalFees) {
		// calculate all fees in reference asset to be able to sum them
		uint256 managementFeeInReserveAsset = FixedPointMathLib.fullMulDiv(
			FixedPointMathLib.fullMulDiv(tokenIdle, managementFeePct, MAX_BPS),
			elapsed,
			SECS_PER_YEAR
		);
		managementFee = VaultTokensLib.tokenReferenceValue(tokenAddress, managementFeeInReserveAsset);
		uint256 performanceFeeYields = FixedPointMathLib.fullMulDiv(reserveProfitInReferenceAsset, performanceFeePct, MAX_BPS);
		uint256 netPerformanceFee = (performanceFeeYields > managementFee) ? performanceFeeYields - managementFee : 0;
		totalFees = netPerformanceFee + managementFee;
	}

	/**
	 * @notice deltaTotalAssets is not passed since we don't change the asset balances when there are profits in reserves
	 * @param snapshot The vault snapshot used in the simulation
	 * @param reserveFees amount of fees from reserves
	 * @return snapshot with updated values
	 */
	function _simulatedIssueReserveTokenFees(
		IVaultSimulatorAPI.VaultSnapshot memory snapshot,
		IVaultSimulatorAPI.ReserveFees memory reserveFees
	) private view returns (IVaultSimulatorAPI.VaultSnapshot memory) {
		// update snapshot
		snapshot = IDynaVaultAPI(snapshot.vault).simulatedIssueSharesForFeeAmount(
			reserveFees.totalFees,
			VaultTokensLib.referenceAsset(),
			0, // token stats have been updated so we do not need to compensate for the delta in total assets
			snapshot
		);
		return snapshot;
	}

	function simulateTotalAssetsForToken(address token, IVaultSimulatorAPI.VaultSnapshot memory snapshot) external view returns (uint256) {
		uint256 tokenIndex = VaultTokensLib.tokenIndex(token);
		(, snapshot) = _simulatedReportReserveAndCalculateFeesToMint(tokenIndex, snapshot);
		// TODO: add _simulateHarvestStrategy which uses simulateReport(Strategy)
		return snapshot.tokens[tokenIndex].tokenIdle + snapshot.tokens[tokenIndex].tokenDebt;
	}

	/**
	 * @notice simulates reporting for a reserve token
	 * @param tokenIndex index of token to report
	 * @param snapshot The vault snapshot used in the simulation
	 */
	function _simulatedReportReserveAndCalculateFeesToMint(
		uint256 tokenIndex,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) private view returns (IVaultSimulatorAPI.ReserveFees memory reserveFees, IVaultSimulatorAPI.VaultSnapshot memory) {
		// 1. calc profit/loss
		uint256 reserveValue;
		uint256 reserveProfitInReferenceAsset;
		(reserveProfitInReferenceAsset, , reserveValue, snapshot) = _simulatedReportProfitLoss(tokenIndex, snapshot);
		reserveFees.profit = reserveProfitInReferenceAsset;
		// 2. assess fees
		VaultFeesLib.FeesStorage memory fees = VaultFeesLib.getFees();
		IVaultSimulatorAPI.VaultTokenSnapshot memory stats = snapshot.tokens[tokenIndex];
		uint256 elapsed = snapshot.timestamp - stats.lastReport;
		uint256 managementFeePct = fees.managementFee;
		uint256 performanceFeePct = fees.performanceFee;
		(uint256 managementFeeInReferenceAsset, uint256 totalFeesInReferenceAsset) = _simulatedCalculateReserveFees(
			snapshot.tokens[tokenIndex].tokenAddress,
			stats.tokenIdle,
			reserveProfitInReferenceAsset,
			managementFeePct,
			performanceFeePct,
			elapsed
		);
		reserveFees.managementFee = managementFeeInReferenceAsset;
		uint256 _tokenIndex = tokenIndex; // stack too deep
		reserveFees.totalFees = totalFeesInReferenceAsset;
		IVaultSimulatorAPI.VaultSnapshot memory _snapshot = snapshot; // stack too deep
		if (totalFeesInReferenceAsset != 0) _snapshot.totalFees += totalFeesInReferenceAsset;
		// 3. update locked profit in deposit token denomination, but we pass profit and fees in reference asset token units
		address referenceAsset = VaultTokensLib.referenceAsset();
		_snapshot = _simulatedUpdateLockedProfitRatio(referenceAsset, reserveProfitInReferenceAsset, totalFeesInReferenceAsset, false, _snapshot);
		_snapshot.lockedProfit = _simulatedLockedProfit(_snapshot);
		// 4. record report timestamp
		_snapshot.tokens[_tokenIndex] = _updateLastReport(stats, reserveValue, _snapshot.timestamp);
		_snapshot.totalProfit += reserveProfitInReferenceAsset;
		return (reserveFees, _snapshot);
	}

	/** @dev Updates the last report timestamp and potentially updates the watermark for a given token
	 * @param stats The snapshot token stats
	 * @param referenceValue Reference value for the token
	 */
	function _updateLastReport(
		IVaultSimulatorAPI.VaultTokenSnapshot memory stats,
		uint256 referenceValue,
		uint256 snapShotTimestamp
	) private pure returns (IVaultSimulatorAPI.VaultTokenSnapshot memory) {
		stats.lastReportedValue = referenceValue;
		if (snapShotTimestamp - stats.lastWatermark >= stats.watermarkDuration) {
			stats.watermark = referenceValue;
			stats.lastWatermark = snapShotTimestamp;
		}
		stats.lastReport = snapShotTimestamp;
		return stats;
	}

	/**
	 * @notice Simulates reporting all reserve tokens
	 * @param snapshot The vault snapshot used in the simulation
	 * @return totalReserveFees with the simulated fee values, snapshot with the simulated values
	 * @return snapshot with updated values
	 */
	function simulatedReportAllReserves(
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) public view returns (IVaultSimulatorAPI.ReserveFees memory totalReserveFees, IVaultSimulatorAPI.VaultSnapshot memory) {
		uint256 nrOfTokens = snapshot.tokens.length;
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			IVaultSimulatorAPI.ReserveFees memory reserveFees;
			(reserveFees, snapshot) = _simulatedReportReserveAndCalculateFeesToMint(i, snapshot);
			totalReserveFees.managementFee += reserveFees.managementFee;
			totalReserveFees.totalFees += reserveFees.totalFees;
		}
		if (totalReserveFees.totalFees != 0) snapshot = _simulatedIssueReserveTokenFees(snapshot, totalReserveFees);
		return (totalReserveFees, snapshot);
	}

	/**
	 * @notice Returns expected amount out from a token swap using the DynaRouter registry
	 * @param tokenIn address of the token to swap
	 * @param amountIn amount of the token to swap
	 * @param tokenOut address of the token wanted
	 * @return estimatedAmountOut expected amount received from from swap
	 */
	function getExpectedAmountOut(address tokenIn, uint256 amountIn, address tokenOut) private view returns (uint256) {
		(uint256 estimatedAmountOut, , ) = IDynaVaultAPI(vaultManagerSimulatorLibStorage().vault).previewSwap(tokenIn, amountIn, tokenOut);
		return estimatedAmountOut;
	}

	/**
	 * @notice simulates rebalance
	 * @param snapshot The vault snapshot used in the simulation
	 */
	function simulatedRebalance(
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view returns (uint256[] memory expectedAmountsOut, IVaultSimulatorAPI.VaultSnapshot memory updatedSnapshot) {
		uint256 nrOfTokens = snapshot.tokens.length;
		expectedAmountsOut = new uint256[](nrOfTokens - 1);
		// 1. report reserves
		(, updatedSnapshot) = simulatedReportAllReserves(snapshot);
		// 2. calculate total and target depositDebt
		uint256 targetDepositDebtRatio = updatedSnapshot.tokens[0].depositDebtRatio;
		uint256 targetDepositDebt = FixedPointMathLib.fullMulDiv(updatedSnapshot.totalDepositDebt, targetDepositDebtRatio, MAX_TOKEN_DEBT_RATIO);
		uint256 depositDebt = updatedSnapshot.tokens[0].depositDebt;
		// 3. rebalance
		address depositToken = updatedSnapshot.tokens[0].tokenAddress;
		if (depositDebt > targetDepositDebt) {
			// we have excess depositTokens to swap to reserves
			uint256 totalToSwap = depositDebt - targetDepositDebt;
			uint256 reserveDebtRatio = MAX_TOKEN_DEBT_RATIO - targetDepositDebtRatio;
			// TODO: withdraw from strategies here
			// swap excess deposit to reserve
			for (uint256 i = 1; i < nrOfTokens; ++i) {
				targetDepositDebtRatio = updatedSnapshot.tokens[i].depositDebtRatio;
				uint256 toSwap = (reserveDebtRatio != 0) ? FixedPointMathLib.fullMulDiv(totalToSwap, targetDepositDebtRatio, reserveDebtRatio) : 0;
				if (toSwap != 0) {
					expectedAmountsOut[i - 1] = getExpectedAmountOut(depositToken, toSwap, updatedSnapshot.tokens[i].tokenAddress);
				}
				bool reverted; // we don't want to revert in a preview so in the case we need to revert we want to return the original state
				(updatedSnapshot, reverted) = _updateDebtAfterSwap(0, toSwap, i, expectedAmountsOut[i - 1], updatedSnapshot);
				if (reverted) return (new uint256[](nrOfTokens - 1), snapshot); // return zero amounts and original state
			}
		} else if (targetDepositDebt > depositDebt) {
			// we need to swap reserves into depositTokens
			for (uint256 i = 1; i < nrOfTokens; ++i) {
				IVaultSimulatorAPI.VaultTokenSnapshot memory stats = updatedSnapshot.tokens[i];
				targetDepositDebt = FixedPointMathLib.fullMulDiv(updatedSnapshot.totalDepositDebt, stats.depositDebtRatio, MAX_TOKEN_DEBT_RATIO);
				if (stats.depositDebt > targetDepositDebt) {
					uint256 toSwap = (stats.depositDebt != 0)
						? FixedPointMathLib.fullMulDiv(stats.tokenIdle + stats.tokenDebt, stats.depositDebt - targetDepositDebt, stats.depositDebt)
						: 0;
					if (toSwap != 0) expectedAmountsOut[i - 1] = getExpectedAmountOut(updatedSnapshot.tokens[i].tokenAddress, toSwap, depositToken);
					bool reverted;
					(updatedSnapshot, reverted) = _updateDebtAfterSwap(i, toSwap, 0, expectedAmountsOut[i - 1], updatedSnapshot);
					if (reverted) return (new uint256[](nrOfTokens - 1), snapshot);
				}
			}
		}
		return (expectedAmountsOut, updatedSnapshot);
	}

	function _updateDebtAfterSwap(
		uint256 tokenInIndex,
		uint256 amountIn,
		uint256 tokenOutIndex,
		uint256 amountOut,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) private view returns (IVaultSimulatorAPI.VaultSnapshot memory, bool) {
		IVaultSimulatorAPI.VaultTokenSnapshot memory statsTokenIn = snapshot.tokens[tokenInIndex];
		if (amountIn > statsTokenIn.tokenIdle) return (snapshot, true);
		IVaultSimulatorAPI.VaultTokenSnapshot memory statsTokenOut = snapshot.tokens[tokenOutIndex];
		if (tokenInIndex == 0) {
			// swap deposit token into reserve asset
			uint256 invested = amountIn;
			uint256 allAssets = statsTokenIn.tokenIdle + statsTokenIn.tokenDebt + snapshot.reserveDebt;
			uint256 deltaDebtRatio = Math.min(FixedPointMathLib.fullMulDiv(invested, MAX_BPS, allAssets), statsTokenIn.depositDebtRatio);
			snapshot.reserveDebt += invested;
			statsTokenIn.depositDebt -= Math.min(invested, statsTokenIn.depositDebt);
			statsTokenOut.depositDebt += invested;
			statsTokenOut.depositDebtRatio += deltaDebtRatio;
			statsTokenIn.depositDebtRatio -= deltaDebtRatio;
		} else if (tokenOutIndex == 0) {
			// swap reserve asset into deposit token
			uint256 deltaDebt;
			uint256 deltaDebtRatio;
			{
				// avoid stack too deep
				uint256 sold = amountIn;
				uint256 curDepositDebt = statsTokenIn.depositDebt;
				uint256 tokenAssets = statsTokenIn.tokenIdle + statsTokenIn.tokenDebt;
				uint256 soldRatio = (tokenAssets != 0) ? FixedPointMathLib.fullMulDiv(sold, MAX_BPS, tokenAssets) : MAX_BPS;
				deltaDebt = FixedPointMathLib.fullMulDiv(curDepositDebt, soldRatio, MAX_BPS);
				uint256 allAssets = statsTokenOut.tokenIdle + statsTokenOut.tokenDebt + snapshot.reserveDebt;
				deltaDebtRatio = Math.min(FixedPointMathLib.fullMulDiv(deltaDebt, MAX_BPS, allAssets), statsTokenIn.depositDebtRatio);
			}
			uint256 paidBack = amountOut;
			if (paidBack < deltaDebt) {
				uint256 loss = deltaDebt - paidBack;
				statsTokenIn.totalLoss += loss;
			}
			snapshot.reserveDebt -= deltaDebt;
			statsTokenIn.depositDebt -= deltaDebt;
			// if we have a loss, do not increase tokenOut depositDebt for tokens which have not been paid back
			statsTokenOut.depositDebt += deltaDebt > paidBack ? paidBack : deltaDebt;
			statsTokenIn.depositDebtRatio -= deltaDebtRatio;
			statsTokenOut.depositDebtRatio += deltaDebtRatio;
		} else {
			// swap reserve asset into another reserve asset
			uint256 sold = amountIn;
			uint256 curDepositDebt = statsTokenIn.depositDebt;
			uint256 tokenAssets = statsTokenIn.tokenIdle + statsTokenIn.tokenDebt;
			uint256 deltaDebt = (tokenAssets != 0) ? Math.min(FixedPointMathLib.fullMulDiv(curDepositDebt, sold, tokenAssets), statsTokenIn.depositDebt) : 0;
			uint256 deltaDebtRatio = (curDepositDebt != 0)
				? Math.min(FixedPointMathLib.fullMulDiv(statsTokenIn.depositDebtRatio, deltaDebt, curDepositDebt), statsTokenIn.depositDebtRatio)
				: 0;
			statsTokenIn.depositDebt -= deltaDebt;
			statsTokenOut.depositDebt += deltaDebt;
			statsTokenIn.depositDebtRatio -= deltaDebtRatio;
			statsTokenOut.depositDebtRatio += deltaDebtRatio;
		}
		// update available tokens in vault
		statsTokenIn.tokenIdle -= amountIn;
		statsTokenOut.tokenIdle += amountOut;
		snapshot.tokens[tokenInIndex] = statsTokenIn;
		snapshot.tokens[tokenOutIndex] = statsTokenOut;
		uint256 tokenInPrecision = 10 ** IERC20Metadata(statsTokenIn.tokenAddress).decimals();
		uint256 tokenInReferenceValue = (statsTokenIn.tokenIdle != 0) ? VaultTokensLib.tokenReferenceValue(statsTokenIn.tokenAddress, tokenInPrecision) : 0;
		statsTokenIn = _updateLastReport(statsTokenIn, tokenInReferenceValue, snapshot.timestamp);
		uint256 tokenOutPrecision = 10 ** IERC20Metadata(statsTokenIn.tokenAddress).decimals();
		uint256 tokenOutReferenceValue = (statsTokenIn.tokenIdle != 0) ? VaultTokensLib.tokenReferenceValue(statsTokenOut.tokenAddress, tokenOutPrecision) : 0;
		statsTokenOut = _updateLastReport(statsTokenOut, tokenOutReferenceValue, snapshot.timestamp);
		snapshot.tokens[tokenInIndex] = statsTokenIn;
		snapshot.tokens[tokenOutIndex] = statsTokenOut;
		return (snapshot, false);
	}

	/**
	 * @notice gets fees from strategies lib, updates locked profit ratio and registers gain in strategy.
	 * @param want token  of strategy
	 * @param gain from strategy in want token
	 * @param snapshot The vault snapshot used in the simulation
	 * @return strategyFees amount of fees from strategy
	 * @return snapshot with updated values
	 */
	function _simulatedRegisterStrategyFees(
		address strategy,
		address want,
		uint256 gain,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) private view returns (IVaultSimulatorAPI.StrategyFees memory strategyFees, IVaultSimulatorAPI.VaultSnapshot memory) {
		(uint256 strategyManagementFee, uint256 vaultManagementFee, uint256 strategistFee, uint256 vaultPerformanceFee) = VaultStrategiesLib.calcFees(
			strategy,
			gain,
			gain > 0
		);
		// all in want token
		uint256 totalFees = strategyFees.strategistFee +
			strategyFees.strategyManagementFee +
			strategyFees.vaultManagementFee +
			strategyFees.vaultPerformanceFee;
		strategyFees.strategistFee = strategistFee;
		strategyFees.strategyManagementFee = strategyManagementFee;
		strategyFees.vaultManagementFee = vaultManagementFee;
		strategyFees.vaultPerformanceFee = vaultPerformanceFee;
		strategyFees.totalFees = totalFees;
		snapshot = _simulatedUpdateLockedProfitRatio(want, gain, totalFees, true, snapshot);
		return (strategyFees, snapshot);
	}

	/**
	 * @notice simulates fee shares issuing during report
	 * @param deltaTotalAssets updates total assets in fee shares calculation
	 * @param strategyFees amount of fees from strategy
	 * @param snapshot The vault snapshot used in the simulation
	 */
	function _simulatedIssueStrategyFeeShares(
		uint256 deltaTotalAssets,
		IVaultSimulatorAPI.StrategyFees memory strategyFees,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) private view returns (IVaultSimulatorAPI.VaultSnapshot memory) {
		uint256 totalFees = strategyFees.strategistFee +
			strategyFees.strategyManagementFee +
			strategyFees.vaultManagementFee +
			strategyFees.vaultPerformanceFee;
		snapshot = IDynaVaultAPI(snapshot.vault).simulatedIssueSharesForFeeAmount(totalFees, VaultTokensLib.referenceAsset(), deltaTotalAssets, snapshot);
		return snapshot;
	}

	/**
	 * @notice simulates reportStrategy
	 * @param reporter address of reporter, typically a strategy
	 * @param gain amount of gain in strategy
	 * @param debtPayment amount of debt to pay
	 * @param snapshot The vault snapshot used in the simulation
	 */
	function simulatedReportStrategy(
		address reporter,
		uint256 gain,
		uint256 debtPayment,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) public view returns (IVaultSimulatorAPI.VaultSnapshot memory) {
		address want = VaultStrategiesLib.want(reporter);
		IVaultSimulatorAPI.ReserveFees memory reserveFees;
		// issue shares for reserve fees
		(reserveFees, snapshot) = simulatedReportAllReserves(snapshot);
		IVaultSimulatorAPI.StrategyFees memory strategyFees;
		(strategyFees, snapshot) = _simulatedRegisterStrategyFees(reporter, want, gain, snapshot);
		// convert from want to reference asset
		strategyFees.strategistFee = VaultTokensLib.tokenReferenceValue(want, strategyFees.strategistFee);
		strategyFees.strategyManagementFee = VaultTokensLib.tokenReferenceValue(want, strategyFees.strategyManagementFee);
		strategyFees.vaultManagementFee = VaultTokensLib.tokenReferenceValue(want, strategyFees.vaultManagementFee);
		strategyFees.vaultPerformanceFee = VaultTokensLib.tokenReferenceValue(want, strategyFees.vaultPerformanceFee);
		uint256 totalStrategyFeesInReferenceAsset = strategyFees.strategistFee +
			strategyFees.strategyManagementFee +
			strategyFees.vaultManagementFee +
			strategyFees.vaultPerformanceFee;
		// stack too deep
		IVaultSimulatorAPI.VaultSnapshot memory _snapshot = snapshot;
		uint256 _gain = gain;
		address strategy = reporter;
		// issue shares for strategy fees
		if (totalStrategyFeesInReferenceAsset != 0) {
			uint256 gainInReferenceToken = VaultTokensLib.tokenReferenceValue(want, _gain);
			_simulatedIssueStrategyFeeShares(gainInReferenceToken, strategyFees, _snapshot);
		}
		uint256 credit = VaultStrategiesLib.creditAvailable(strategy);
		uint256 debt = VaultStrategiesLib.debtOutstanding(strategy);
		debtPayment = Math.min(debtPayment, debt);
		IVaultManagerAPI manager = IVaultManagerAPI(vaultManagerSimulatorLibStorage().vault);
		uint256 wantTokenIndex = manager.tokenIndex(want);
		if (debtPayment != 0) {
			// simulate decreaseTokenDebt
			uint256 tokenDebtAmount = snapshot.tokens[wantTokenIndex].tokenDebt;
			if (tokenDebtAmount > debtPayment) snapshot.tokens[wantTokenIndex].tokenDebt = tokenDebtAmount - debtPayment;
			debt -= debtPayment;
		}
		if (credit != 0) snapshot.tokens[wantTokenIndex].tokenDebt += credit; // simulate increaseTokenDebt
		uint256 totalAvail = _gain + debtPayment;
		if (totalAvail < credit) _snapshot.tokens[wantTokenIndex].tokenIdle -= credit - totalAvail;
		else if (totalAvail > credit) _snapshot.tokens[wantTokenIndex].tokenIdle += credit - totalAvail;
		return _snapshot;
	}

	/**
	 * @notice Takes a snapshot of a token's strategies current state
	 * @return snapshots A list of VaultStrategySnapshot structs with strategy information for simulating reporting and withdraws
	 */
	function takeStrategiesSnapshot(address tokenAddress) public view returns (IVaultSimulatorAPI.VaultStrategySnapshot[] memory snapshots) {
		IVaultManagerAPI manager = IVaultManagerAPI(IDynaVaultAPI(vaultManagerSimulatorLibStorage().vault).manager());
		address[] memory strategyList = manager.getTokenStrategies(tokenAddress);
		uint256 nrOfStrategies;
		for (; nrOfStrategies < strategyList.length && strategyList[nrOfStrategies] != address(0); ) nrOfStrategies++;
		snapshots = new IVaultSimulatorAPI.VaultStrategySnapshot[](nrOfStrategies);
		if (nrOfStrategies == 0) return snapshots;
		for (uint256 i = 0; i < nrOfStrategies; ++i) {
			StrategyParams memory strategyParams = manager.strategies(strategyList[i]);
			snapshots[i].debtRatio = strategyParams.debtRatio;
			snapshots[i].totalDebt = strategyParams.totalDebt;
		}
	}
}
