// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "./VaultTokensLib.sol";
import "./VaultFeesLib.sol";
import "./VaultStrategiesLib.sol";
import "./interfaces/VaultSimulatorAPI.sol";
import "./interfaces/VaultManagerAPI.sol";
import "./interfaces/DynaVaultAPI.sol";

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
	 * @param snapshot used in simulation
	 * @return calculatedLockedProfitRatio should return current locked profit expressed as a ratio
	 */
	function _simulatedCalculateCurrentLockedProfitRatio(
		VaultSimulatorAPI.VaultSnapshot memory snapshot
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
	 * @param snapshot used in simulation
	 * @return lockedProfit in deposit token
	 */
	function _simulatedLockedProfit(VaultSimulatorAPI.VaultSnapshot memory snapshot) private pure returns (uint256 lockedProfit) {
		uint256 _totalAssets = snapshot.totalAssets;
		uint256 _currentLockedProfitRatio = _simulatedCalculateCurrentLockedProfitRatio(snapshot);
		lockedProfit = (_currentLockedProfitRatio > 0) ? FixedPointMathLib.fullMulDivUp(_currentLockedProfitRatio, _totalAssets, DEGRADATION_COEFFICIENT) : 0;
	}

	/**
	 * @notice Simulates the amount of free funds in the vault
	 * @param snapshot The snapshot used for simulation
	 * @return freeFunds Simulated amount of free funds in the vault
	 */
	function simulatedFreeFunds(VaultSimulatorAPI.VaultSnapshot memory snapshot) public pure returns (uint256 freeFunds) {
		uint256 _totalAssets = snapshot.totalAssets;
		uint256 _lockedProfit = _simulatedLockedProfit(snapshot);
		freeFunds = _totalAssets - _lockedProfit;
	}

	/**
	 * @notice simulates unlocked profit calculation using a snapshot
	 * @param snapshot used in simulation
	 * @return ratio of unlocked funds
	 */
	function simulateUnlockedFundsRatio(VaultSimulatorAPI.VaultSnapshot memory snapshot) external pure returns (uint256) {
		uint256 _currentLockedProfitRatio = _simulatedCalculateCurrentLockedProfitRatio(snapshot);
		return DEGRADATION_COEFFICIENT - _currentLockedProfitRatio;
	}

	/**
	 * @notice should update locked profit in depositToken decimals
	 * @notice passes gain and totalFees in profitToken decimals
	 * @param profitToken address of token with profit
	 * @param deltaTotalAssets updates total assets in fee shares calculation
	 * @param totalFees amount of fees to mint shares for
	 * @param useDelta indicates if we need to compensate for a delta in total assets
	 * @param snapshot used in simulation
	 * @return snapshot with updated values
	 */
	function _simulatedUpdateLockedProfitRatio(
		address profitToken,
		uint256 deltaTotalAssets,
		uint256 totalFees,
		bool useDelta,
		VaultSimulatorAPI.VaultSnapshot memory snapshot
	) private view returns (VaultSimulatorAPI.VaultSnapshot memory) {
		address _depositToken = VaultTokensLib.token();
		uint256 _totalAssets = snapshot.totalAssets;
		uint256 _currentLockedProfitRatio = _simulatedCalculateCurrentLockedProfitRatio(snapshot);
		// convert gain and totalFees in deposit tokens for locked profit calculation
		uint256 _profitTokenUnit = 10 ** IERC20Metadata(profitToken).decimals();
		uint256 _profitTokenUnitInDeposit = (profitToken != _depositToken)
			? DynaVaultAPI(VaultGovernanceLib.vault()).tokenValueInQuoteAsset(profitToken, _profitTokenUnit, _depositToken)
			: _profitTokenUnit;
		uint256 _deltaInDepositToken = FixedPointMathLib.fullMulDiv(deltaTotalAssets, _profitTokenUnitInDeposit, _profitTokenUnit);
		if (useDelta) {
			_totalAssets += _deltaInDepositToken;
		}
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
	 * @notice simulates calculation of profit and loss of a reserve token
	 * @param tokenAddress address of reserve token
	 * @param stats reserve token stats
	 * @return reserveProfitInReferenceAsset profit denominated in reference asset
	 * @return reserveLossInReferenceAsset loss denominated in reference asset
	 */
	function _simulatedReportProfitLoss(
		address tokenAddress,
		VaultSimulatorAPI.VaultTokenSnapshot memory stats
	) private view returns (uint256 reserveProfitInReferenceAsset, uint256 reserveLossInReferenceAsset) {
		address referenceAsset = VaultTokensLib.referenceAsset();
		uint256 reservePrecision = 10 ** IERC20Metadata(tokenAddress).decimals();
		uint256 reserveBalance = stats.balance;
		uint256 baselineValue = Math.max(stats.lastReportedValue, stats.watermark);
		uint256 reserveValue = (reserveBalance != 0) ? VaultTokensLib.tokenReferenceValue(tokenAddress, reservePrecision) : 0;
		if (tokenAddress != referenceAsset) {
			reserveProfitInReferenceAsset = (baselineValue != 0 && reserveValue > baselineValue)
				? FixedPointMathLib.fullMulDiv((reserveValue - baselineValue), reserveBalance, reservePrecision)
				: 0;
			reserveLossInReferenceAsset = (reserveValue < baselineValue)
				? FixedPointMathLib.fullMulDiv((baselineValue - reserveValue), reserveBalance, reservePrecision)
				: 0;
		}
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
	 * @param snapshot used in simulation
	 * @param reserveFees amount of fees from reserves
	 * @return snapshot with updated values
	 */
	function _simulatedIssueReserveTokenFees(
		VaultSimulatorAPI.VaultSnapshot memory snapshot,
		VaultSimulatorAPI.ReserveFees memory reserveFees
	) private view returns (VaultSimulatorAPI.VaultSnapshot memory) {
		// update snapshot
		snapshot = DynaVaultAPI(snapshot.vault).simulatedIssueSharesForFeeAmount(
			reserveFees.totalFees,
			VaultTokensLib.referenceAsset(),
			0, // token stats have been updated so we do not need to compensate for the delta in total assets
			snapshot
		);
		return snapshot;
	}

	function simulateTotalAssetsForToken(address token, VaultSimulatorAPI.VaultSnapshot memory snapshot) external view returns (uint256) {
		uint256 tokenIndex = VaultTokensLib.tokenIndex(token);
		(, snapshot) = _simulatedReportReserve(tokenIndex, snapshot);
		//TODO: add _simulateHarvestStrategy which uses simulateReport(Strategy)
		return snapshot.tokens[tokenIndex].tokenIdle + snapshot.tokens[tokenIndex].tokenDebt;
	}

	/**
	 * @notice simulates reporting for a reserve token
	 * @param tokenIndex index of token to report
	 * @param snapshot used in simulation
	 */
	function _simulatedReportReserve(
		uint256 tokenIndex,
		VaultSimulatorAPI.VaultSnapshot memory _snapshot
	) private view returns (VaultSimulatorAPI.ReserveFees memory reserveFees, VaultSimulatorAPI.VaultSnapshot memory snapshot) {
		snapshot = _snapshot;
		VaultSimulatorAPI.VaultTokenSnapshot memory stats = _snapshot.tokens[tokenIndex];
		address tokenAddress = VaultTokensLib.tokens(tokenIndex);
		address referenceAsset = VaultTokensLib.referenceAsset();
		// 1. calc profit/loss
		(uint256 reserveProfitInReferenceAsset, ) = _simulatedReportProfitLoss(tokenAddress, stats);
		reserveFees.profit = reserveProfitInReferenceAsset;
		snapshot.totalProfit += reserveProfitInReferenceAsset;
		// 2. assess fees
		VaultFeesLib.FeesStorage memory fees = VaultFeesLib.getFees();
		uint256 elapsed = snapshot.timestamp - stats.lastReport;
		uint256 managementFeePct = fees.managementFee;
		uint256 performanceFeePct = fees.performanceFee;
		(uint256 managementFeeInReferenceAsset, uint256 totalFeesInReferenceAsset) = _simulatedCalculateReserveFees(
			tokenAddress,
			stats.tokenIdle,
			reserveProfitInReferenceAsset,
			managementFeePct,
			performanceFeePct,
			elapsed
		);
		reserveFees.managementFee = managementFeeInReferenceAsset;
		reserveFees.totalFees = totalFeesInReferenceAsset;
		// 3. update locked profit in deposit token denomination, but we pass profit and fees in reference asset token units
		snapshot = _simulatedUpdateLockedProfitRatio(referenceAsset, reserveProfitInReferenceAsset, totalFeesInReferenceAsset, false, snapshot);
		snapshot.lockedProfit = _simulatedLockedProfit(snapshot);
		if (totalFeesInReferenceAsset != 0) snapshot.totalFees += totalFeesInReferenceAsset;
		return (reserveFees, snapshot);
	}

	/**
	 * @notice Simulates reporting all reserve tokens
	 * @param snapshot used in simulation
	 * @return totalReserveFees with the simulated fee values, snapshot with the simulated values
	 * @return snapshot with updated values
	 */
	function simulatedReportAllReserves(
		VaultSimulatorAPI.VaultSnapshot memory snapshot
	) public view returns (VaultSimulatorAPI.ReserveFees memory totalReserveFees, VaultSimulatorAPI.VaultSnapshot memory) {
		uint256 nrOfTokens = VaultTokensLib.nrOfTokens();
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			VaultSimulatorAPI.ReserveFees memory reserveFees;
			(reserveFees, snapshot) = _simulatedReportReserve(i, snapshot);
			totalReserveFees.managementFee += reserveFees.managementFee;
			totalReserveFees.totalFees += reserveFees.totalFees;
		}
		if (totalReserveFees.totalFees != 0) {
			snapshot = _simulatedIssueReserveTokenFees(snapshot, totalReserveFees);
		}
		return (totalReserveFees, snapshot);
	}

	/**
	 * @notice Returns expected amount out from a token swap using the dyna router
	 * @param tokenIn address of the token to swap
	 * @param amountIn amount of the token to swap
	 * @param tokenOut address of the token wanted
	 * @return estimatedAmountOut expected amount received from from swap
	 */
	function getExpectedAmountOut(address tokenIn, uint256 amountIn, address tokenOut) private view returns (uint256) {
		(uint256 estimatedAmountOut, , ) = DynaVaultAPI(vaultManagerSimulatorLibStorage().vault).dynaRouter().previewSwap(tokenIn, amountIn, tokenOut);
		return estimatedAmountOut;
	}

	/**
	 * @notice simulates rebalance
	 * @param _snapshot used in simulation
	 */
	function simulatedRebalance(VaultSimulatorAPI.VaultSnapshot memory _snapshot) external view returns (uint256[] memory expectedAmountsOut) {
		VaultSimulatorAPI.VaultSnapshot memory snapshot = _snapshot;
		address[] memory tokens = VaultTokensLib.allTokens();
		expectedAmountsOut = new uint256[](tokens.length - 1);
		// 1. report reserves
		(, snapshot) = simulatedReportAllReserves(snapshot);
		// 2. calculate total and target depositDebt
		uint256 totalDepositDebt = VaultTokensLib.totalDepositDebt();
		uint256 targetDepositDebtRatio = VaultTokensLib.targetDepositDebtRatio(tokens[0]);
		uint256 targetDepositDebt = FixedPointMathLib.fullMulDiv(totalDepositDebt, targetDepositDebtRatio, MAX_TOKEN_DEBT_RATIO);
		uint256 depositDebt = VaultTokensLib.depositDebt(tokens[0]);
		// 3. rebalance
		if (depositDebt > targetDepositDebt) {
			// we have excess depositTokens to swap to reserves
			uint256 totalToSwap = depositDebt - targetDepositDebt;
			uint256 reserveDebtRatio = MAX_TOKEN_DEBT_RATIO - targetDepositDebtRatio;
			// swap excess deposit to reserve
			for (uint256 i = 1; i < tokens.length; ++i) {
				targetDepositDebtRatio = VaultTokensLib.targetDepositDebtRatio(tokens[i]);
				uint256 toSwap = (reserveDebtRatio != 0) ? FixedPointMathLib.fullMulDiv(totalToSwap, targetDepositDebtRatio, reserveDebtRatio) : 0;
				if (toSwap != 0) {
					expectedAmountsOut[i - 1] = getExpectedAmountOut(tokens[0], toSwap, tokens[i]);
				}
			}
		} else if (targetDepositDebt > depositDebt) {
			// we need to swap reserves into depositTokens
			for (uint256 i = 1; i < tokens.length; ++i) {
				VaultSimulatorAPI.VaultTokenSnapshot memory stats = snapshot.tokens[i];
				targetDepositDebt = FixedPointMathLib.fullMulDiv(totalDepositDebt, stats.depositDebtRatio, MAX_TOKEN_DEBT_RATIO);
				if (stats.depositDebt > targetDepositDebt) {
					uint256 toSwap = (stats.depositDebt != 0)
						? FixedPointMathLib.fullMulDiv(stats.tokenIdle + stats.tokenDebt, stats.depositDebt - targetDepositDebt, stats.depositDebt)
						: 0;
					if (toSwap != 0) {
						expectedAmountsOut[i - 1] = getExpectedAmountOut(tokens[i], toSwap, tokens[0]);
					}
				}
			}
		}
	}

	/**
	 * @notice gets fees from strategies lib, updates locked profit ratio and registers gain in strategy.
	 * @param want token  of strategy
	 * @param gain from strategy in want token
	 * @param snapshot used in simulation
	 * @return strategyFees amount of fees from strategy
	 * @return snapshot with updated values
	 */
	function _simulatedRegisterStrategyFees(
		address strategy,
		address want,
		uint256 gain,
		VaultSimulatorAPI.VaultSnapshot memory snapshot
	) private view returns (VaultSimulatorAPI.StrategyFees memory strategyFees, VaultSimulatorAPI.VaultSnapshot memory) {
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
	 * @param reserveFees amount of fees from reserves
	 * @param strategyFees amount of fees from strategy
	 * @param snapshot used in simulation
	 */
	function _simulatedIssueStrategyFeeShares(
		uint256 deltaTotalAssets,
		VaultSimulatorAPI.ReserveFees memory reserveFees,
		VaultSimulatorAPI.StrategyFees memory strategyFees,
		VaultSimulatorAPI.VaultSnapshot memory snapshot
	) private view returns (VaultSimulatorAPI.VaultSnapshot memory) {
		uint256 totalFees = reserveFees.totalFees +
			strategyFees.strategistFee +
			strategyFees.strategyManagementFee +
			strategyFees.vaultManagementFee +
			strategyFees.vaultPerformanceFee;
		snapshot = DynaVaultAPI(snapshot.vault).simulatedIssueSharesForFeeAmount(totalFees, VaultTokensLib.referenceAsset(), deltaTotalAssets, snapshot);
		return snapshot;
	}

	/**
	 * @notice simulates report
	 * @param reporter address of reporter, typically a strategy
	 * @param gain amount of gain in strategy
	 * @param debtPayment amount of debt to pay
	 * @param snapshot used in simulation
	 */
	function simulatedReport(
		address reporter,
		uint256 gain,
		uint256 debtPayment,
		VaultSimulatorAPI.VaultSnapshot memory snapshot
	) public view returns (VaultSimulatorAPI.VaultSnapshot memory) {
		address want = VaultStrategiesLib.want(reporter);
		VaultSimulatorAPI.ReserveFees memory reserveFees;
		(reserveFees, snapshot) = simulatedReportAllReserves(snapshot);
		VaultSimulatorAPI.StrategyFees memory strategyFees;
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
		VaultSimulatorAPI.VaultSnapshot memory _snapshot = snapshot;
		uint256 _gain = gain;
		address strategy = reporter;
		if (totalStrategyFeesInReferenceAsset + reserveFees.totalFees != 0) {
			uint256 gainInReferenceToken = VaultTokensLib.tokenReferenceValue(want, _gain);
			_simulatedIssueStrategyFeeShares(gainInReferenceToken, reserveFees, strategyFees, _snapshot);
		}
		uint256 credit = VaultStrategiesLib.creditAvailable(strategy);
		uint256 debt = VaultStrategiesLib.debtOutstanding(strategy);
		debtPayment = Math.min(debtPayment, debt);
		uint256 totalAvail = _gain + debtPayment;
		VaultManagerAPI manager = VaultManagerAPI(vaultManagerSimulatorLibStorage().vault);
		uint256 wantTokenIndex = manager.tokenIndex(want);
		if (totalAvail < credit) {
			_snapshot.tokens[wantTokenIndex].tokenIdle -= credit - totalAvail;
		} else if (totalAvail > credit) {
			_snapshot.tokens[wantTokenIndex].tokenIdle += credit - totalAvail;
		}
		return _snapshot;
	}

	function takeStrategiesSnapshot(address tokenAddress) public view returns (VaultSimulatorAPI.VaultStrategySnapshot[] memory snapshots) {
		VaultManagerAPI manager = VaultManagerAPI(DynaVaultAPI(vaultManagerSimulatorLibStorage().vault).manager());
		address[] memory strategyList = manager.getTokenStrategies(tokenAddress);
		uint256 nrOfStrategies;
		for (; nrOfStrategies < strategyList.length && strategyList[nrOfStrategies] != address(0); ) nrOfStrategies++;
		snapshots = new VaultSimulatorAPI.VaultStrategySnapshot[](nrOfStrategies);
		for (uint256 i = 0; i < nrOfStrategies; ++i) {
			StrategyParams memory strategyParams = manager.strategies(strategyList[i]);
			snapshots[i].debtRatio = strategyParams.debtRatio;
			snapshots[i].totalDebt = strategyParams.totalDebt;
		}
	}
}
