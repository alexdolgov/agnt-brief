// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "./DynaVaultErrors.sol";
import "./VaultGovernanceLib.sol";
import "./VaultFeesLib.sol";
import "./VaultTokensLib.sol";
import "./VaultStrategiesLib.sol";
import "./VaultManagerSimulatorLib.sol";
import "./interfaces/IDynaVaultAPI.sol";

/**
 * @notice The VaultManagerLib sub-module is the main DynaVaultManager sub-module which uses all other submodule libraries.
 * @notice DynaVaultManager is essentially necessary for vault management:
 * - Logic such as allocating funds towards a strategy / withdrawing from a strategy
 * - Reporting potential losses which occur during withdrawals
 * - Allocating the fees and transferring them to the desired recipients
 * - Registering potential gains and losses during the report functionality
 * - Transferring funds from/to a strategy during the report functionality
 * - Calculating the lockedProfit and accounting it
 * - Reporting and updating reserve balances after changes in amount (due to swaps or assets movements on deposit/withdraw/investStrategy/liquidateStrategy)
 *   and to calculate potential profit/loss after changes in value (in reference assset value versus previous report or watermark)
 * - Rebalancing reserve assets when vault management sees an imbalance between tokens deposited/withdrawn in vault and target deposit debt ratio of each asset.
 */
library VaultManagerLib {
	using Math for uint256;
	using SafeERC20 for IERC20;

	struct ReserveFees {
		uint256 managementFee;
		uint256 totalFees;
		uint256 profit;
	}

	struct StrategyFees {
		uint256 vaultManagementFee;
		uint256 vaultPerformanceFee;
		uint256 strategyManagementFee;
		uint256 strategistFee;
		uint256 totalFees;
	}

	/// @dev The storage slot follows EIP1967 to avoid storage collision
	bytes32 private constant MANAGER_STORAGE_POSITION = bytes32(uint256(keccak256("VaultManager.ManagerStorage")) - 1);
	uint256 private constant MAX_TOKEN_DEBT_RATIO = 100e16; // 100.00% (debt ratio)
	uint256 private constant MAX_BPS = 100e2; // 100.00% (fees)
	uint256 private constant SECS_PER_WEEK = 7 days;
	// this seconds per year value is based on the average seconds of 4 years with one of them being a leap year
	uint256 private constant SECS_PER_YEAR = 31_556_952;
	// this profit degradation coefficient
	uint256 private constant DEGRADATION_COEFFICIENT = 10 ** 18;
	// this minimum profit degradation coefficient per second limits profit locking to max 1 year
	uint256 private constant MIN_DEGRADATION_COEFFICIENT = DEGRADATION_COEFFICIENT / SECS_PER_YEAR;
	// the default profit degradation coefficient unlocks 15.00% per week
	uint256 private constant DEFAULT_DEGRADATION_COEFFICIENT = (DEGRADATION_COEFFICIENT * 15) / SECS_PER_WEEK / 100;
	uint256 private constant updateFeesLastReportLimit = 1 hours;

	struct ManagerStorage {
		uint256 activation; //  block.timestamp of contract deployment
		uint256 lastLockedProfitRatio; // ratio of how much profit was locked during last report
		uint256 lockedProfitDegradationRate; // rate per second of degradation. DEGRADATION_COEFFICIENT is 100% per second
		uint256 lastLockedProfitDegradation; //  block.timestamp of last locked profit degradation
		uint256 extraLockedProfitDegradationRate; // extra rate per second of degradation. DEGRADATION_COEFFICIENT is 100% per second
	}

	event LockedProfitDegradationUpdated(address indexed caller, uint256 amount);
	event UpdateDepositLimit(address indexed caller, uint256 depositLimit);

	/**
	 * @notice returns the manager storage
	 * @return ms a storage pointer for accessing the state variables
	 */
	function managerStorage() private pure returns (ManagerStorage storage ms) {
		bytes32 position = MANAGER_STORAGE_POSITION;
		assembly {
			ms.slot := position
		}
	}

	/**
	 * @notice Initializes the library
	 * @param vaultAddress The address of the vault
	 * @param tokenAddress The address of the token
	 * @param managementAddress The address of manager
	 * @param guardianAddress The address of guardian
	 * @param managementFeeWalletAddress The address of management fee wallet
	 * @param performanceFeeWalletAddress The address of performance fee wallet
	 */
	function initialize(
		address vaultAddress,
		address tokenAddress,
		address governanceAddress,
		address managementAddress,
		address guardianAddress,
		address managementFeeWalletAddress,
		address performanceFeeWalletAddress
	) external {
		VaultGovernanceLib.initializeGovernance(vaultAddress, governanceAddress, managementAddress, guardianAddress);
		VaultFeesLib.initializeFees(managementFeeWalletAddress, performanceFeeWalletAddress);
		VaultTokensLib.initializeTokens(tokenAddress);
		ManagerStorage storage _storage = managerStorage();
		_storage.lastLockedProfitDegradation = block.timestamp;
		_storage.activation = block.timestamp;
		_storage.lockedProfitDegradationRate = DEFAULT_DEGRADATION_COEFFICIENT;
	}

	/**
	 * @notice Returns amount of locked profit
	 * @return lockedProfit The  amount of locked profit denominated in deposit token
	 */
	function lockedProfit() public view returns (uint256) {
		return lockedProfitWithGivenAssets(VaultTokensLib.totalAssets());
	}

	/**
	 * @notice Returns amount of locked profit with given assets for calculation
	 * @param totalAssets The amount of assets to use in calculation
	 * @return calculatedLockedProfit The amount of locked profit calculated based on the give assets
	 */
	function lockedProfitWithGivenAssets(uint256 totalAssets) public view returns (uint256 calculatedLockedProfit) {
		uint256 _currentLockedProfitRatio = _calculateCurrentLockedProfitRatio();
		calculatedLockedProfit = (_currentLockedProfitRatio > 0)
			? FixedPointMathLib.fullMulDiv(_currentLockedProfitRatio, totalAssets, DEGRADATION_COEFFICIENT)
			: 0;
	}

	/**
	 * @notice Returns the last locked profit ratio
	 * @return lastLockedProfitRatio
	 */
	function lastLockedProfitRatio() external view returns (uint256) {
		return managerStorage().lastLockedProfitRatio;
	}

	/**
	 * @notice Returns the last time locked profit was degraded
	 * @return lastLockedProfitDegradation The timestamp of the last time locked profit was degraded
	 */
	function lastLockedProfitDegradation() external view returns (uint256) {
		return managerStorage().lastLockedProfitDegradation;
	}

	/**
	 * @notice Returns the locked profit degradation rates
	 * @return lockedProfitDegradationRates
	 */
	function lockedProfitDegradationRates() external pure returns (uint256, uint256) {
		ManagerStorage memory _storage = managerStorage();
		return (_storage.lockedProfitDegradationRate, _storage.extraLockedProfitDegradationRate);
	}

	/**
	 * @notice External function to report loss in strategy
	 * @param strategy The address of strategy with loss
	 * @param loss The amount of loss denominated in the strategy want token
	 */
	function reportLoss(address strategy, uint256 loss) external {
		VaultGovernanceLib.onlyVault();
		_reportLoss(strategy, loss);
	}

	/**
	 * @notice Private function to report loss in strategy
	 * @param strategy The address of strategy with loss
	 * @param loss The amount of loss denominated in the strategy want token
	 */
	function _reportLoss(address strategy, uint256 loss) private {
		VaultStrategiesLib.registerLoss(strategy, loss);
	}

	/**
	 * @notice A vault manager can increase debtRatio indirectly by specifying how much of tokenIdle he would like to transfer to strategy debt.
	 * This is a desired amount, the investStrategy harvest call might not invest/liquidate the passed amount instantly,
	 * given the strategy is limited by minDebtPerHarvest/maxDebtPerHarvest to either postpone the adjustedPosition call
	 * or split it over multiple report calls (respecting the atomic operational range configured in the strategy).
	 * @param strategy The address of the strategy
	 * @param amount The amount denominated in the strategy want token
	 */
	function investStrategy(address strategy, uint256 amount) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		VaultStrategiesLib.increaseStrategyDebtRatioByInvestmentAmount(strategy, amount);
		// call harvest to report, assess fees and adjust position
		IDynaStrategyAPI(strategy).harvest();
	}

	/**
	 * @notice Liquidate amount of want token from strategy
	 * @param strategy The address of strategy
	 * @param amount The amount denominated in the strategy want token to liquidate
	 */
	function liquidateStrategy(address strategy, uint256 amount) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		uint256 tokenTotalAssets = VaultManagerSimulatorLib.simulateTotalAssetsForToken(
			VaultStrategiesLib.want(strategy),
			IDynaVaultAPI(VaultGovernanceLib.vault()).takeSnapshot()
		);
		// instead of VaultTokensLib.totalTokenAssets(_want);
		VaultStrategiesLib.decreaseStrategyDebtRatioByInvestmentAmount(strategy, amount, tokenTotalAssets);
		// call harvest to free funds, report and assess fees
		IDynaStrategyAPI(strategy).harvest();
	}

	/**
	 * @notice Should calculate the fresh profit and fees in depositTokens
	 * @notice Passes gain and totalFees in profitToken decimals
	 * @param profitToken The address of the token with profit
	 * @param deltaTotalAssets Updates total assets in fee shares calculation
	 */
	function calculateProfitAndFeesInDepositToken(
		address profitToken,
		uint256 deltaTotalAssets,
		uint256 totalFees
	) private view returns (uint256 deltaProfitInDepositToken, uint256 deltaFeesInDepositToken) {
		address _depositToken = VaultTokensLib.token();
		// convert gain and totalFees to deposit tokens for locked profit calculation
		uint256 _profitTokenUnit = 10 ** IERC20Metadata(profitToken).decimals();
		uint256 _profitTokenUnitInDeposit = (profitToken != _depositToken)
			? IDynaVaultAPI(VaultGovernanceLib.vault()).tokenValueInQuoteAsset(profitToken, _profitTokenUnit, _depositToken)
			: _profitTokenUnit;
		deltaProfitInDepositToken = FixedPointMathLib.fullMulDiv(deltaTotalAssets, _profitTokenUnitInDeposit, _profitTokenUnit);
		deltaFeesInDepositToken = FixedPointMathLib.fullMulDiv(totalFees, _profitTokenUnitInDeposit, _profitTokenUnit);
	}

	/**
	 * @notice Should update locked profit ratio based on delta profit and fees in deposit tokens
	 * @notice Passes delta profit and delta fees in depositToken decimals
	 */
	function _updateLockedProfitRatio(uint256 deltaProfitInDepositToken, uint256 deltaFeesInDepositToken) private {
		uint256 currentLockedProfitRatio = _calculateCurrentLockedProfitRatio();

		// compensate deltaProfit for current locked profit ratio
		uint256 _unlockedDeltaProfitInDepositToken = FixedPointMathLib.fullMulDiv(
			deltaProfitInDepositToken,
			DEGRADATION_COEFFICIENT - currentLockedProfitRatio,
			DEGRADATION_COEFFICIENT
		);
		uint256 _totalAssets = VaultTokensLib.totalAssetsCached();
		uint256 _deltaProfitRatio = _totalAssets != 0
			? FixedPointMathLib.fullMulDivUp(_unlockedDeltaProfitInDepositToken, DEGRADATION_COEFFICIENT, _totalAssets)
			: 0;
		uint256 _deltaFeesRatio = _totalAssets != 0 ? FixedPointMathLib.fullMulDiv(deltaFeesInDepositToken, DEGRADATION_COEFFICIENT, _totalAssets) : 0;
		uint256 _newLockedProfitRatio = (currentLockedProfitRatio + _deltaProfitRatio > _deltaFeesRatio)
			? currentLockedProfitRatio + _deltaProfitRatio - _deltaFeesRatio
			: 0;

		// calculate the new locked profit ratio based on the total delta ratio from reporting one or more reserves
		ManagerStorage storage _storage = managerStorage();
		uint256 _remainingLockedProfitPeriod;
		if (currentLockedProfitRatio != 0) {
			uint256 _expectedLockedProfitPeriod = DEGRADATION_COEFFICIENT / (_storage.lockedProfitDegradationRate + _storage.extraLockedProfitDegradationRate);
			uint256 _timePassed = (block.timestamp > _storage.lastLockedProfitDegradation) ? block.timestamp - _storage.lastLockedProfitDegradation : 0;
			_remainingLockedProfitPeriod = (_expectedLockedProfitPeriod > _timePassed) ? _expectedLockedProfitPeriod - _timePassed : 0;
		}
		uint256 _newRemainingLockedProfitPeriod = DEGRADATION_COEFFICIENT / _storage.lockedProfitDegradationRate;
		uint256 _newExtraLockedProfitDegradationRate = FixedPointMathLib.fullMulDiv(
			_storage.lockedProfitDegradationRate,
			_remainingLockedProfitPeriod,
			_newRemainingLockedProfitPeriod
		);

		// update state
		_storage.extraLockedProfitDegradationRate = _newExtraLockedProfitDegradationRate;
		_storage.lastLockedProfitRatio = _newLockedProfitRatio;
		_storage.lastLockedProfitDegradation = block.timestamp;
	}

	/**
	 * @notice Reduces the locked profit ratio to avoid locking new deposits.
	 * @param depositAmountWithoutFees The deposit amount
	 */
	function _reduceLockedProfitRatioForDeposit(uint256 depositAmountWithoutFees) private {
		ManagerStorage storage _storage = managerStorage();
		uint256 _lockedProfitRatioBeforeDeposit = _storage.lastLockedProfitRatio;
		uint256 _totalAssets = VaultTokensLib.totalAssetsCached();
		// depositAmountWithoutFees is already included in the total assets
		uint256 _totalAssetsBeforeDeposit = _totalAssets - depositAmountWithoutFees;
		uint256 _lockedAmount = FixedPointMathLib.fullMulDiv(_totalAssetsBeforeDeposit, _lockedProfitRatioBeforeDeposit, DEGRADATION_COEFFICIENT);
		uint256 _newLockedProfitRatio = (_lockedAmount != 0 && _totalAssets != 0)
			? FixedPointMathLib.fullMulDiv(DEGRADATION_COEFFICIENT, _lockedAmount, _totalAssets)
			: 0;
		_storage.lastLockedProfitRatio = _newLockedProfitRatio;
	}

	/**
	 * @notice Increase the locked profit ratio to avoid unlocking too soon and changing the price per share.
	 * @param withdrawalAmountIncludingFees The withdrawal amount
	 */
	function _increaseLockedProfitRatioForWithdraw(uint256 withdrawalAmountIncludingFees) private {
		ManagerStorage storage _storage = managerStorage();
		uint256 _lockedProfitRatioBeforeWithdrawal = _storage.lastLockedProfitRatio;
		uint256 _totalAssetsAfterWithdrawal = VaultTokensLib.totalAssetsCached();
		uint256 _totalAssetsBeforeWithdrawal = _totalAssetsAfterWithdrawal + withdrawalAmountIncludingFees;
		uint256 _lockedAmount = FixedPointMathLib.fullMulDiv(_totalAssetsBeforeWithdrawal, _lockedProfitRatioBeforeWithdrawal, DEGRADATION_COEFFICIENT);
		uint256 _newLockedProfitRatio = (_lockedAmount != 0 && _totalAssetsAfterWithdrawal != 0)
			? FixedPointMathLib.fullMulDiv(DEGRADATION_COEFFICIENT, _lockedAmount, _totalAssetsAfterWithdrawal)
			: 0;
		if (_newLockedProfitRatio > DEGRADATION_COEFFICIENT) _newLockedProfitRatio = DEGRADATION_COEFFICIENT;
		_storage.lastLockedProfitRatio = _newLockedProfitRatio;
	}

	/**
	 * @notice Gets fees from strategies lib, updates locked profit ratio and registers gain in strategy.
	 * @param strategy The address of strategy
	 * @param want The address of the strategy want token
	 * @param gain The amount of profit in strategy denominated in want token
	 * @return strategyFees The calculated fees for the strategy
	 */
	function _registerStrategyFees(address strategy, address want, uint256 gain) private returns (StrategyFees memory strategyFees) {
		address _strategy = strategy;
		uint256 _gain = gain; // in want token
		(uint256 strategyManagementFee, uint256 vaultManagementFee, uint256 strategistFee, uint256 vaultPerformanceFee) = VaultStrategiesLib.calcFees(
			_strategy,
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
		// TODO: refactor to use new pattern
		// _updateLockedProfitRatio(want, _gain, totalFees, true);

		VaultStrategiesLib.registerGain(_strategy, _gain);
		return strategyFees;
	}

	/**
	 * @notice Issues shares for fees of a strategy
	 * @param vault The address of the vault
	 * @param strategy The address of the strategy
	 * @param want The address of the strategy want token
	 * @param deltaTotalAssets Updates total assets in fee shares calculation
	 * @param reserveFees The amount of fees from reserves
	 * @param strategyFees The amount of fees from strategy
	 */
	function _issueStrategyFeeShares(
		address vault,
		address strategy,
		address want,
		uint256 deltaTotalAssets,
		ReserveFees memory reserveFees,
		StrategyFees memory strategyFees
	) private {
		uint256 totalFees = reserveFees.totalFees +
			strategyFees.strategistFee +
			strategyFees.strategyManagementFee +
			strategyFees.vaultManagementFee +
			strategyFees.vaultPerformanceFee;
		uint256 reward = IDynaVaultAPI(vault).issueSharesForFeeAmount(vault, totalFees, want, deltaTotalAssets);
		VaultFeesLib.FeesStorage memory fees = VaultFeesLib.getFees();
		// vault management
		uint256 totalVaultManagementFee = reserveFees.managementFee + strategyFees.vaultManagementFee;
		if (totalVaultManagementFee != 0) {
			uint256 vault_management_reward = FixedPointMathLib.fullMulDiv(totalVaultManagementFee, reward, totalFees);
			IDynaVaultAPI(vault).feeTransfer(fees.managementFeeWallet, vault_management_reward);
		}
		// strategy management
		if (strategyFees.strategyManagementFee != 0) {
			uint256 strategy_management_reward = FixedPointMathLib.fullMulDiv(strategyFees.strategyManagementFee, reward, totalFees);
			IDynaVaultAPI(vault).feeTransfer(IDynaStrategyAPI(strategy).strategist(), strategy_management_reward);
		}

		// strategist
		if (strategyFees.strategistFee != 0) {
			uint256 strategist_reward = FixedPointMathLib.fullMulDiv(strategyFees.strategistFee, reward, totalFees);
			IDynaVaultAPI(vault).feeTransfer(IDynaStrategyAPI(strategy).strategist(), strategist_reward);
		}

		// vault performance fee
		uint256 vaultPerformanceFee = IDynaVaultAPI(vault).balanceOf(address(vault));
		if (vaultPerformanceFee != 0) {
			IDynaVaultAPI(vault).feeTransfer(fees.performanceFeeWallet, vaultPerformanceFee);
		}
	}

	/**
	 * @notice Reports loss and profit from both strategy and reserves
	 * @dev Called by strategy
	 * @param gain The gain amount denominated in strategy want token
	 * @param loss The loss amount denominated in strategy want token
	 * @param debtPaymentAmount The amount of debt to decrease
	 */
	function reportStrategy(uint256 gain, uint256 loss, uint256 debtPaymentAmount) external returns (uint256) {
		address vault = VaultGovernanceLib.vault();
		address reporter = msg.sender;
		VaultStrategiesLib.requireActive(reporter);
		address want = VaultStrategiesLib.want(reporter);
		uint256 strategyBalance = IERC20(want).balanceOf(reporter);
		if (strategyBalance < gain + debtPaymentAmount) {
			revert DynaVaultErrors.IncorrectStrategyReport(strategyBalance, gain, debtPaymentAmount);
		}
		if (loss != 0) _reportLoss(reporter, loss);
		// make sure reportReserve runs before we increase/decrease tokenIdle or tokenDebt
		// TODO: not refactored for locked profit ratio changes
		(ReserveFees memory reserveFees, , ) = _reportReserveCalculateFeesToMintAndDeltaProfit(want); // updates locked profit ratio, calculates fees

		// updates locked profit ratio, calculates, returns fees in want token
		StrategyFees memory strategyFees = _registerStrategyFees(reporter, want, gain);
		// convert from want to reference asset
		strategyFees.strategistFee = VaultTokensLib.tokenReferenceValue(want, strategyFees.strategistFee);
		strategyFees.strategyManagementFee = VaultTokensLib.tokenReferenceValue(want, strategyFees.strategyManagementFee);
		strategyFees.vaultManagementFee = VaultTokensLib.tokenReferenceValue(want, strategyFees.vaultManagementFee);
		strategyFees.vaultPerformanceFee = VaultTokensLib.tokenReferenceValue(want, strategyFees.vaultPerformanceFee);
		uint256 totalStrategyFeesInReferenceAsset = strategyFees.strategistFee +
			strategyFees.strategyManagementFee +
			strategyFees.vaultManagementFee +
			strategyFees.vaultPerformanceFee;
		if (totalStrategyFeesInReferenceAsset + reserveFees.totalFees != 0) {
			uint256 gainInReferenceToken = VaultTokensLib.tokenReferenceValue(want, gain);
			_issueStrategyFeeShares(vault, reporter, VaultTokensLib.referenceAsset(), gainInReferenceToken, reserveFees, strategyFees);
		}
		uint256 credit = VaultStrategiesLib.creditAvailable(reporter);
		uint256 debt = VaultStrategiesLib.debtOutstanding(reporter);
		uint256 debtPayment = Math.min(debtPaymentAmount, debt);
		if (debtPayment != 0) {
			VaultStrategiesLib.decreaseDebt(reporter, debtPayment);
			VaultTokensLib.decreaseTokenDebt(want, debtPayment);
			debt -= debtPayment;
		}
		if (credit != 0) {
			VaultStrategiesLib.increaseDebt(reporter, credit);
			VaultTokensLib.increaseTokenDebt(want, credit);
		}
		uint256 _gain = gain;
		uint256 totalAvail = _gain + debtPayment;
		if (totalAvail < credit) {
			VaultTokensLib.decreaseTokenIdle(want, credit - totalAvail);
			IERC20(want).safeTransferFrom(vault, reporter, credit - totalAvail);
		} else if (totalAvail > credit) {
			VaultTokensLib.increaseTokenIdle(want, totalAvail - credit);
			IERC20(want).safeTransferFrom(reporter, address(vault), totalAvail - credit);
		}
		VaultStrategiesLib.updateLastReport(reporter);
		if (VaultStrategiesLib.debtRatio(reporter) == 0 || VaultStrategiesLib.isEmergencyShutdown()) {
			return IDynaStrategyAPI(reporter).estimatedTotalAssets();
		} else {
			return debt;
		}
	}

	/**
	 * @notice Returns the current unlocked funds ratio
	 * @return unlockedFundsRatio Current unlocked funds ratio
	 */
	function unlockedFundsRatio() external view returns (uint256) {
		uint256 _currentLockedProfitRatio = _calculateCurrentLockedProfitRatio();
		return DEGRADATION_COEFFICIENT - _currentLockedProfitRatio;
	}

	/**
	 * @notice Calculates the current locked profit ratio
	 * @return calculatedLockedProfitRatio The current locked profit ratio
	 */
	function _calculateCurrentLockedProfitRatio() private view returns (uint256 calculatedLockedProfitRatio) {
		ManagerStorage memory _storage = managerStorage();
		uint256 _lastLockedProfitDegradation = _storage.lastLockedProfitDegradation;
		if (block.timestamp == _lastLockedProfitDegradation) return _storage.lastLockedProfitRatio;
		uint256 _lastLockedProfitRatio = _storage.lastLockedProfitRatio;
		uint256 _timePassed = block.timestamp - _lastLockedProfitDegradation;
		uint256 _lockedProfitRatioDegradation = _timePassed * (_storage.lockedProfitDegradationRate + _storage.extraLockedProfitDegradationRate);
		uint256 _lockedProfitRatioDelta = FixedPointMathLib.fullMulDivUp(_lastLockedProfitRatio, _lockedProfitRatioDegradation, DEGRADATION_COEFFICIENT);
		calculatedLockedProfitRatio = _lastLockedProfitRatio > _lockedProfitRatioDelta ? _lastLockedProfitRatio - _lockedProfitRatioDelta : 0;
	}

	/**
	 * @notice Calculates the amount of free funds
	 * @return freeFundsAmount The amount of free funds
	 */
	function freeFunds() public view returns (uint256 freeFundsAmount) {
		uint256 _totalAssets = VaultTokensLib.totalAssets();
		uint256 _lockedProfit = lockedProfitWithGivenAssets(_totalAssets);
		freeFundsAmount = _lockedProfit < _totalAssets ? _totalAssets - _lockedProfit : 0;
	}

	/**
	 * @notice Private function to report profit and loss for a reserve token
	 * @param vault The address of the vault
	 * @param tokenAddress The address of the reserve token
	 * @param lastReportedValue The last reported value of the token denominated in reference assets
	 * @param watermark The watermark value of the token denominated in reference asset
	 */
	function _reportProfitLoss(
		address vault,
		address tokenAddress,
		uint256 lastReportedValue,
		uint256 watermark
	) private returns (uint256 reserveProfitInReferenceAsset, uint256 reserveLossInReferenceAsset, uint256 reserveValue) {
		address referenceAsset = VaultTokensLib.referenceAsset();
		uint256 reservePrecision = 10 ** IERC20Metadata(tokenAddress).decimals();
		uint256 reserveBalance = IERC20(tokenAddress).balanceOf(vault);
		uint256 baselineValue = Math.max(lastReportedValue, watermark);
		reserveValue = (reserveBalance != 0) ? VaultTokensLib.tokenReferenceValue(tokenAddress, reservePrecision) : 0;
		if (tokenAddress != referenceAsset) {
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
			: IDynaVaultAPI(vault).tokenValueInQuoteAsset(referenceAsset, reserveLossInReferenceAsset, depositToken);
		VaultTokensLib.reportProfitLossBalance(
			tokenAddress,
			reserveBalance,
			reserveProfitInReferenceAsset,
			reserveLossInReferenceAsset,
			reserveLossInDepositToken
		);
	}

	/**
	 * @notice Calculates fees for a reserve token
	 * @param tokenAddress The address of the reserve token
	 * @param tokenIdle The amount of token idle for the reserve
	 * @param reserveProfitInReferenceAsset profit of the reserve token denominated in reference asset
	 * @param managementFeePct The management fee ratio
	 * @param performanceFeePct The performance fee ratio
	 * @param elapsed The time in seconds since last report
	 */
	function _calculateReserveFees(
		address tokenAddress,
		uint256 tokenIdle,
		uint256 reserveProfitInReferenceAsset,
		uint256 managementFeePct,
		uint256 performanceFeePct,
		uint256 elapsed
	) private view returns (uint256 managementFee, uint256 totalFees) {
		// calculate all fees in reference asset to be able to sum them
		uint256 management_fee_in_reserve_asset = FixedPointMathLib.fullMulDiv(
			FixedPointMathLib.fullMulDiv(tokenIdle, managementFeePct, MAX_BPS),
			elapsed,
			SECS_PER_YEAR
		);
		managementFee = VaultTokensLib.tokenReferenceValue(tokenAddress, management_fee_in_reserve_asset);
		uint256 performanceFeeYields = FixedPointMathLib.fullMulDiv(reserveProfitInReferenceAsset, performanceFeePct, MAX_BPS);
		uint256 netPerformance_Fee = (performanceFeeYields > managementFee) ? performanceFeeYields - managementFee : 0;
		totalFees = netPerformance_Fee + managementFee;
	}

	/**
	 * @notice Issues fee shares for reserve token fees
	 * @notice deltaTotalAssets is not passed since we don't change the asset balances when there are profits in reserves
	 * @param vault The address of the vault
	 * @param reserveFees The amounts of fees
	 * @return reward The amount of shares minted for fees
	 */
	function _issueReserveTokenFees(address vault, ReserveFees memory reserveFees) private returns (uint256 reward) {
		reward = IDynaVaultAPI(vault).issueSharesForFeeAmount(vault, reserveFees.totalFees, VaultTokensLib.referenceAsset(), 0); // no delta
		VaultFeesLib.FeesStorage memory fees = VaultFeesLib.getFees();
		if (reserveFees.managementFee != 0) {
			uint256 management_reward = FixedPointMathLib.fullMulDiv(reserveFees.managementFee, reward, reserveFees.totalFees);
			IDynaVaultAPI(vault).feeTransfer(fees.managementFeeWallet, management_reward);
		}
		uint256 performanceFees = IDynaVaultAPI(vault).balanceOf(vault);
		if (performanceFees != 0) {
			IDynaVaultAPI(vault).feeTransfer(fees.performanceFeeWallet, performanceFees);
		}
	}

	/**
	 * @notice Private function to report for a reserve token
	 * @param tokenAddress The address of the reserve token to report
	 * @return reserveFees The amounts of fees for token
	 * @return reserveDeltaProfitInDepositToken The profit for given reserve token denominated in deposit tokens
	 * @return reserveFeesInDepositToken The total fees for given reserve token denominated in deposit tokens
	 */
	function _reportReserveCalculateFeesToMintAndDeltaProfit(
		address tokenAddress
	) private returns (ReserveFees memory reserveFees, uint256 reserveDeltaProfitInDepositToken, uint256 reserveFeesInDepositToken) {
		address vault = VaultGovernanceLib.vault();
		VaultTokensLib.TokenStats memory stats = VaultTokensLib.stats(tokenAddress);
		if (stats.lastReport == block.timestamp) {
			// make sure we always update tokenIdle
			VaultTokensLib.reportTokenIdle(tokenAddress, IERC20(tokenAddress).balanceOf(vault));
			return (reserveFees, 0, 0);
		}
		// 1. calc and report profit/loss
		(uint256 reserveProfitInReferenceAsset, , uint256 reserveValue) = _reportProfitLoss(vault, tokenAddress, stats.lastReportedValue, stats.watermark);
		reserveFees.profit = reserveProfitInReferenceAsset;
		// 2. assess fees
		VaultFeesLib.FeesStorage memory fees = VaultFeesLib.getFees();
		uint256 elapsed = block.timestamp - stats.lastReport;
		uint256 managementFeePct = fees.managementFee;
		uint256 performanceFeePct = fees.performanceFee;
		stats = VaultTokensLib.stats(tokenAddress);
		(uint256 managementFeeInReferenceAsset, uint256 totalFeesInReferenceAsset) = _calculateReserveFees(
			tokenAddress,
			stats.tokenIdle,
			reserveProfitInReferenceAsset,
			managementFeePct,
			performanceFeePct,
			elapsed
		);
		reserveFees.managementFee = managementFeeInReferenceAsset;
		reserveFees.totalFees = totalFeesInReferenceAsset;
		// 3. update locked profit with reference asset, since we pass profit and fees in reference asset token units, exclude profit since we updated token stats
		(reserveDeltaProfitInDepositToken, reserveFeesInDepositToken) = calculateProfitAndFeesInDepositToken(
			VaultTokensLib.referenceAsset(),
			reserveProfitInReferenceAsset,
			totalFeesInReferenceAsset
		);
		// 4. record report timestamp
		VaultTokensLib.updateLastReport(tokenAddress, reserveValue);
	}

	/**
	 * @notice External function to report for a reserve token
	 * @param tokenAddress The address of the reserve token
	 * @return reward The amount of fee shares minted
	 */
	function reportReserve(address tokenAddress) public returns (uint256 reward) {
		VaultGovernanceLib.onlyManagementOrGovernance();
		if (!(VaultTokensLib.tokenExists(tokenAddress))) revert DynaVaultErrors.InvalidToken();
		(
			ReserveFees memory reserveFees,
			uint256 reserveDeltaProfitInDepositToken,
			uint256 reserveFeesInDepositToken
		) = _reportReserveCalculateFeesToMintAndDeltaProfit(tokenAddress);
		_updateLockedProfitRatio(reserveDeltaProfitInDepositToken, reserveFeesInDepositToken);
		if (reserveFees.totalFees != 0) reward = _issueReserveTokenFees(VaultGovernanceLib.vault(), reserveFees);
	}

	/**
	 * @notice Report multiple reserve tokens
	 * @param tokens Array with the addresses of the reserve tokens to report
	 * @return reward The amount of fee shares minted
	 */
	function reportReserves(address[] memory tokens) external returns (uint256 reward) {
		VaultGovernanceLib.onlyManagementOrGovernance();
		ReserveFees memory totalReserveFees;
		uint256 totalDeltaProfitInDepositToken;
		uint256 totalFeesInDepositToken;
		for (uint256 i = 0; i < tokens.length; ++i) {
			if (!(VaultTokensLib.tokenExists(tokens[i]))) revert DynaVaultErrors.InvalidToken();
			(
				ReserveFees memory reserveFees,
				uint256 reserveDeltaProfitInDepositToken,
				uint256 reserveFeesInDepositToken
			) = _reportReserveCalculateFeesToMintAndDeltaProfit(tokens[i]);
			totalDeltaProfitInDepositToken += reserveDeltaProfitInDepositToken;
			totalFeesInDepositToken += reserveFeesInDepositToken;
			totalReserveFees.managementFee += reserveFees.managementFee;
			totalReserveFees.totalFees += reserveFees.totalFees;
		}
		// apply totalDeltaLockedProfitRatio
		_updateLockedProfitRatio(totalDeltaProfitInDepositToken, totalFeesInDepositToken);

		address vault = VaultGovernanceLib.vault();
		if (totalReserveFees.totalFees != 0) reward = _issueReserveTokenFees(vault, totalReserveFees);
	}

	/**
	 * @notice Report a reserve token called by vault
	 * @param tokenAddress The address of the reserve token to report
	 * @return reward The amount of fee shares minted
	 */
	function reportReserveFromVault(address tokenAddress) external returns (uint256 reward) {
		VaultGovernanceLib.onlyVault();
		(
			ReserveFees memory reserveFees,
			uint256 reserveDeltaProfitInDepositToken,
			uint256 reserveFeesInDepositToken
		) = _reportReserveCalculateFeesToMintAndDeltaProfit(tokenAddress);
		_updateLockedProfitRatio(reserveDeltaProfitInDepositToken, reserveFeesInDepositToken);

		if (reserveFees.totalFees != 0) reward = _issueReserveTokenFees(msg.sender, reserveFees); //  assuming vault is caller
	}

	/**
	 * @notice Report all reserve tokens called by vault
	 * @return reportedFreeFunds The amount of free funds after reporting
	 */
	function reportAllReservesFromVault() external returns (uint256 reportedFreeFunds) {
		VaultGovernanceLib.onlyVault();
		address[] memory tokens = VaultTokensLib.allTokens();
		uint256 nrOfTokens = tokens.length;
		ReserveFees memory totalReserveFees;
		VaultTokensLib.enablePriceCache();
		uint256 totalDeltaProfitInDepositToken;
		uint256 totalFeesInDepositToken;

		for (uint256 i = 0; i < nrOfTokens; ++i) {
			(
				ReserveFees memory reserveFees,
				uint256 reserveDeltaProfitInDepositToken,
				uint256 reserveFeesInDepositToken
			) = _reportReserveCalculateFeesToMintAndDeltaProfit(tokens[i]);
			totalDeltaProfitInDepositToken += reserveDeltaProfitInDepositToken;
			totalFeesInDepositToken += reserveFeesInDepositToken;
			totalReserveFees.managementFee += reserveFees.managementFee;
			totalReserveFees.totalFees += reserveFees.totalFees;
		}
		// apply totalDeltaLockedProfitRatio
		_updateLockedProfitRatio(totalDeltaProfitInDepositToken, totalFeesInDepositToken);

		address vault = VaultGovernanceLib.vault();
		if (totalReserveFees.totalFees != 0) {
			_issueReserveTokenFees(vault, totalReserveFees);
		}
		// calculate freeFunds using cached prices in totalAssets
		uint256 _totalAssets = VaultTokensLib.totalAssetsCached();
		uint256 _lockedProfit = lockedProfitWithGivenAssets(_totalAssets);
		reportedFreeFunds = _lockedProfit < _totalAssets ? _totalAssets - _lockedProfit : 0;
		VaultTokensLib.disablePriceCache();
	}

	/**
	 * @notice Deposit an amount of deposit token into the vault
	 * @param depositAmountIncludingFees The amount of tokens to deposit
	 * @param feeAmount The amount of fees
	 */
	function depositDepositToken(uint256 depositAmountIncludingFees, uint256 feeAmount) external {
		VaultGovernanceLib.onlyVault();
		address depositToken = VaultTokensLib.token();
		VaultTokensLib.reportTokenIdle(depositToken, IERC20(depositToken).balanceOf(VaultGovernanceLib.vault()));
		VaultTokensLib.increaseDepositDebt(depositAmountIncludingFees, feeAmount);
		_reduceLockedProfitRatioForDeposit(depositAmountIncludingFees - feeAmount);
	}

	/**
	 * @notice Withdraw deposit token from vault
	 * @param withdrawAmountIncludingFees The amount of tokens to withdraw
	 */
	function withdrawDepositToken(uint256 withdrawAmountIncludingFees) external {
		VaultGovernanceLib.onlyVault();
		address depositToken = VaultTokensLib.token();
		VaultTokensLib.reportTokenIdle(depositToken, IERC20(depositToken).balanceOf(VaultGovernanceLib.vault()));
		VaultTokensLib.decreaseTokenIdle(depositToken, withdrawAmountIncludingFees);
		VaultTokensLib.decreaseDepositDebt(withdrawAmountIncludingFees);
		_increaseLockedProfitRatioForWithdraw(withdrawAmountIncludingFees);
	}

	/**
	 * @notice Swap checking slippage
	 * @param tokenIn The address of token to swap
	 * @param amountIn The amount of token to swap
	 * @param tokenOut The address of the token wanted
	 * @param minAmountOut The minimum amount wanted from from swap
	 */
	function _doSwapCheckSlippage(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut) private {
		IDynaVaultAPI(VaultGovernanceLib.vault()).doSwap(tokenIn, amountIn, tokenOut, minAmountOut);
	}

	/**
	 * @notice Re-balances reserve tokens
	 * @param minAmountsOut An array with the min amounts out expected in swaps during rebalance
	 */
	function rebalance(uint256[] memory minAmountsOut) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		// 1. report reserves
		address[] memory tokens = VaultTokensLib.allTokens();
		for (uint256 i = 0; i < tokens.length; ++i) {
			reportReserve(tokens[i]); // report and mint fees
		}
		// 2. calculate total and target depositDebt
		uint256 totalDepositDebt = VaultTokensLib.totalDepositDebt();
		address depositToken = tokens[0];
		uint256 targetDepositDebtRatio = VaultTokensLib.targetDepositDebtRatio(depositToken);
		uint256 targetDepositDebt = FixedPointMathLib.fullMulDiv(totalDepositDebt, targetDepositDebtRatio, MAX_TOKEN_DEBT_RATIO);
		uint256 depositDebt = VaultTokensLib.depositDebt(depositToken);
		// 3. rebalance
		if (depositDebt > targetDepositDebt) {
			// we have excess depositTokens to swap to reserves
			uint256 totalToSwap = depositDebt - targetDepositDebt;
			uint256 reserveDebtRatio = MAX_TOKEN_DEBT_RATIO - targetDepositDebtRatio;
			VaultTokensLib.TokenStats memory stats = VaultTokensLib.stats(depositToken);
			if (stats.tokenIdle < totalToSwap) {
				// fetch from strategies
				(, uint256 tokenWithdrawn) = IDynaVaultAPI(VaultGovernanceLib.vault()).withdrawTokenDebtFromStrategies(
					depositToken,
					totalToSwap - stats.tokenIdle
				);
				// update tokenIdle after withdrawal
				VaultTokensLib.depositIdle(depositToken, tokenWithdrawn);
			}
			// swap excess deposit to reserve
			for (uint256 i = 1; i < tokens.length; ++i) {
				targetDepositDebtRatio = VaultTokensLib.targetDepositDebtRatio(tokens[i]);
				uint256 toSwap = (reserveDebtRatio != 0) ? FixedPointMathLib.fullMulDiv(totalToSwap, targetDepositDebtRatio, reserveDebtRatio) : 0;
				if (toSwap != 0) {
					// swap and update token stats
					_doSwapCheckSlippage(depositToken, toSwap, tokens[i], minAmountsOut[i - 1]);
				}
			}
		} else if (targetDepositDebt > depositDebt) {
			// we need to swap reserves into depositTokens
			uint256 nrOfTokens = VaultTokensLib.nrOfTokens();
			// uint256 totalLoss;
			for (uint256 i = 1; i < nrOfTokens; ++i) {
				address tokenAddress = tokens[i];
				VaultTokensLib.TokenStats memory stats = VaultTokensLib.stats(tokenAddress);
				uint256 tokenIdle = stats.tokenIdle;
				uint256 tokenDepositDebt = stats.depositDebt;
				uint256 minAmountOut = minAmountsOut[i - 1];
				targetDepositDebt = FixedPointMathLib.fullMulDiv(totalDepositDebt, stats.depositDebtRatio, MAX_TOKEN_DEBT_RATIO);
				if (tokenDepositDebt > targetDepositDebt) {
					uint256 toSwap = (tokenDepositDebt != 0)
						? FixedPointMathLib.fullMulDiv(tokenIdle + stats.tokenDebt, tokenDepositDebt - targetDepositDebt, tokenDepositDebt)
						: 0;
					if (toSwap != 0) {
						if (tokenIdle < toSwap) {
							// fetch from strategies
							(, uint256 tokenWithdrawn) = IDynaVaultAPI(VaultGovernanceLib.vault()).withdrawTokenDebtFromStrategies(
								tokenAddress,
								toSwap - tokenIdle
							);
							// update tokenIdle after withdrawal
							VaultTokensLib.depositIdle(tokenAddress, tokenWithdrawn);
						}
						// swap and update token stats
						_doSwapCheckSlippage(tokenAddress, toSwap, depositToken, minAmountOut);
					}
				}
			}
		}
	}

	/**
	 * @notice Updates the locked profit degradation coefficient
	 * @param newLockedProfitDegradation The new locked profit degradation coefficient
	 */
	function updateLockedProfitDegradation(uint256 newLockedProfitDegradation) external {
		VaultGovernanceLib.onlyGovernance();
		if (newLockedProfitDegradation < MIN_DEGRADATION_COEFFICIENT || newLockedProfitDegradation > DEGRADATION_COEFFICIENT) {
			revert DynaVaultErrors.LockedProfitDegradationCoefficient(newLockedProfitDegradation, MIN_DEGRADATION_COEFFICIENT, DEGRADATION_COEFFICIENT);
		}
		managerStorage().lockedProfitDegradationRate = newLockedProfitDegradation;
		emit LockedProfitDegradationUpdated(msg.sender, newLockedProfitDegradation);
	}

	/**
	 * @notice Checks if tokens and strategies were reported within a time limit
	 */
	function requireRecentReport() internal view {
		uint256 nrOfTokens = VaultTokensLib.nrOfTokens();
		for (uint256 i = 0; i < nrOfTokens; i++) {
			// check lastReport of token
			address token = VaultTokensLib.tokens(i);
			address[] memory strategyList = VaultTokensLib.getTokenStrategies(token);
			VaultTokensLib.TokenStats memory stats = VaultTokensLib.stats(token);
			if (block.timestamp - stats.lastReport > updateFeesLastReportLimit) {
				revert DynaVaultErrors.UpdateFeeOverTimeLimit();
			}
			// check lastReport of strategies for token
			uint256 nrOfStrategies = strategyList.length;
			for (uint8 j = 0; j < nrOfStrategies; ++j) {
				address strategy = strategyList[j];
				if (strategy == address(0)) break; // end of list
				if (block.timestamp - VaultStrategiesLib.lastReport(strategy) > updateFeesLastReportLimit) {
					revert DynaVaultErrors.UpdateFeeOverTimeLimit();
				}
			}
		}
	}
}
