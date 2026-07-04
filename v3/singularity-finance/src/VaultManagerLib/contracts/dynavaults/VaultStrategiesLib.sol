// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "./interfaces/IDynaStrategyAPI.sol";
import "./interfaces/IReferenceAssetOracle.sol";
import "./utils/Checks.sol";
import "./VaultGovernanceLib.sol";
import "./VaultTokensLib.sol";
import "./VaultFeesLib.sol";

/**
 * @title The VaultStrategies/Lib sub-module is part of the VaultManager module and essentially handles all strategy-related parameters.
 * @notice Vault governance can add a new strategy, migrate a strategy and revoke a strategy.
 * WithdrawalQueue sequence for a want token can be updated.
 * Also existing strategies can be removed and re-added from the tokenStrategies for their corresponding want token.
 * Each strategy has its own debtRatio which represents how many assets a strategy can have under management,
 * prorated on the whole present amount of want tokens (idle+debt), which is then recorded by the totalDebt parameter.
 * The debtRatio basically handles all deposits and withdrawals to the strategy contract via its increase/decrease by governance.
 * Unlike regular vaults, there is no direct deposit execution but only an increase or decrease of said variable.
 * The debtRatio (expressed in 18 decimals; 100e16 = 100.00%) of a strategy is either directly (updateStrategyDebtRatio)
 * or indirectly (investStrategy/liquidateStrategy) configured by a vault manager,
 * dictating how much of the strategy want token from the totalAssets in vault (tokenIdle) and strategies (tokenDebt)
 * should ideally be allocated to a specific strategy. A strategy can do debtPayments during harvest calls to signal
 * a desire to pay back debt to the vault in it's report call. During this report call the vault will wind down excess debt
 * or invest excess credit available from/to the strategy.
 * However, as a little safeguard, the variables minDebtPerHarvest and maxDebtPerHarvest have been introduced
 * which can limit the transfer amount from the vault to a strategy contract per harvest.
 * The sum of the strategy debtRatios with same want token is kept in tokenDebtRatio.
 * The tokenDebtRatio is a desired tokenIdle/(tokenIdle + tokenDebt) ratio for a certain want token,
 * where tokenDebt is the sum of all want tokens given to all strategies using that want token.
 * Each strategy also implements an emergencyShutdown function which withdraws all tokens from the strategy in a harvest scenario.
 * Additionally, a strategy performance fee and strategy management fee can be set which is applied during report.
 * While the other fees are set within the VaultFees sub-module, the fee calculation logic for assets in the strategies is still done inside this module.
 */
library VaultStrategiesLib {
	using Checks for address;
	using Math for uint256;

	/// @dev The storage slot follows EIP1967 to avoid storage collision
	bytes32 private constant STRATEGY_STORAGE_POSITION = bytes32(uint256(keccak256("VaultStrategies.StrategyStorage")) - 1);
	// seconds per year value is based on average seconds per year based on 4 years, one of them being a leap year
	uint256 private constant SECS_PER_YEAR = 31_556_952;
	uint256 private constant MAX_DEBT_RATIO = 100e16; // 100.00%
	uint256 private constant MAX_MANAGEMENT_FEE = 10e2; //  10.00%
	uint256 private constant MAX_PERFORMANCE_FEE = 50e2; //  50.00%
	uint256 private constant MAX_BPS = 100e2; // 100.00%

	/**
	 * @dev Struct to store parameters for each strategy
	 * @param want Address of the token the strategy wants to maximize
	 * @param performanceFee Performance fee percentage for the strategy
	 * @param activation Timestamp when the strategy was activated
	 * @param debtRatio Debt ratio of the strategy (in 18 decimals)
	 * @param minDebtPerHarvest Minimum debt per harvest for the strategy
	 * @param maxDebtPerHarvest Maximum debt per harvest for the strategy
	 * @param lastReport Timestamp of the last report from the strategy
	 * @param totalDebt Total debt of the strategy
	 * @param totalGain Total gain of the strategy
	 * @param totalLoss Total loss of the strategy
	 * @param managementFee Management fee percentage for the strategy
	 */
	struct StrategyParams {
		address want;
		uint256 performanceFee;
		uint256 activation;
		uint256 debtRatio;
		uint256 minDebtPerHarvest;
		uint256 maxDebtPerHarvest;
		uint256 lastReport;
		uint256 totalDebt;
		uint256 totalGain;
		uint256 totalLoss;
		uint256 managementFee;
		bool revoked;
	}

	/**
	 * @dev Struct to store strategy-related storage variables
	 * @notice This struct is used to organize strategy-related data in a single storage slot
	 */
	struct StrategyStorage {
		mapping(address => StrategyParams) strategies;
		//  Debt ratio per token for the Vault across all strategies for that token
		mapping(address => uint256) tokenDebtRatio;
		bool emergencyShutdown;
	}

	/**
	 * @dev Emitted when a strategy's debt ratio is updated
	 * @param caller Address of the account that initiated the update
	 * @param strategy Address of the strategy
	 * @param strategyDebtRatio New debt ratio for the strategy
	 */
	event UpdatedStrategyDebtRatio(address indexed caller, address strategy, uint256 strategyDebtRatio);

	/**
	 * @dev Emitted when a new strategy is added
	 * @param want Address of the want token
	 * @param strategy Address of the strategy
	 */
	event StrategyAdded(address want, address strategy);

	/**
	 * @dev Emitted when a strategy is removed
	 * @param strategy Address of the strategy
	 */
	event RemovedStrategyFromList(address strategy);

	/**
	 * @dev Emitted when a strategy's min/max debt per harvest is updated
	 * @param caller Address of the account that initiated the update
	 * @param strategy Address of the strategy
	 * @param minDebtPerHarvest New minimum debt per harvest
	 * @param maxDebtPerHarvest New maximum debt per harvest
	 */
	event UpdatedStrategyMinMaxDebtPerHarvest(address indexed caller, address strategy, uint256 minDebtPerHarvest, uint256 maxDebtPerHarvest);

	/**
	 * @dev Emitted when a strategy's performance fee is updated
	 * @param caller Address of the account that initiated the update
	 * @param strategy Address of the strategy
	 * @param performanceFee New performance fee for the strategy
	 */
	event UpdatedStrategyPerformanceFee(address indexed caller, address strategy, uint256 performanceFee);

	/**
	 * @dev Emitted when a strategy's management fee is updated
	 * @param caller Address of the account that initiated the update
	 * @param strategy Address of the strategy
	 * @param managementFee New management fee for the strategy
	 */
	event UpdatedStrategyManagementFee(address indexed caller, address strategy, uint256 managementFee);

	/**
	 * @dev Emitted when a strategy is added to the token strategies list
	 * @param caller Address of the account that initiated the addition
	 * @param strategy Address of the strategy added to the queue
	 */
	event AddedStrategyToQueue(address indexed caller, address strategy);

	/**
	 * @dev Emitted when a strategy is migrated
	 * @param caller Address of the account that initiated the migration
	 * @param oldVersion Address of the old strategy version
	 * @param newVersion Address of the new strategy version
	 */
	event MigratedStrategy(address indexed caller, address oldVersion, address newVersion);

	/**
	 * @dev Emitted when a strategy is revoked
	 * @param caller Address of the account that initiated the revocation
	 * @param strategy Address of the revoked strategy
	 */
	event RevokedStrategy(address indexed caller, address strategy);

	/**
	 * @dev Emitted when a strategy is resurrected
	 * @param caller Address of the account that initiated the resurrection
	 * @param strategy Address of the resurrected strategy
	 */
	event ResurrectStrategy(address indexed caller, address strategy);

	/**
	 * @dev Emitted when emergency shutdown status is changed
	 * @param caller Address of the account that initiated the change
	 * @param shutdown New emergency shutdown status
	 */
	event EmergencyShutdown(address indexed caller, bool shutdown);

	error DuplicateStrategy();

	/**
	 * @dev Returns the storage slot for strategy-related data
	 * @return ss StrategyStorage struct pointer
	 */
	function strategyStorage() private pure returns (StrategyStorage storage ss) {
		bytes32 position = STRATEGY_STORAGE_POSITION;
		assembly {
			ss.slot := position
		}
	}

	/**
	 * @dev Returns the want token address for a given strategy (deposit token for strategy)
	 * @param strategy Address of the strategy
	 * @return Address of the want token
	 */
	function want(address strategy) public view returns (address) {
		return strategyStorage().strategies[strategy].want;
	}

	/**
	 * @dev Returns the token debt ratio for a given token
	 * @param token Address of the token
	 * @return Token debt ratio
	 */
	function tokenDebtRatio(address token) external view returns (uint256) {
		return strategyStorage().tokenDebtRatio[token];
	}

	/**
	 * @dev Returns the debt ratio for a given strategy
	 * @param strategy Address of the strategy
	 * @return Debt ratio of the strategy
	 */
	function debtRatio(address strategy) external view returns (uint256) {
		return strategyStorage().strategies[strategy].debtRatio;
	}

	/**
	 * @dev Returns the strategy parameters for a given strategy
	 * @param strategy Address of the strategy
	 * @return StrategyParams struct containing strategy parameters
	 */
	function strategyParams(address strategy) external view returns (StrategyParams memory) {
		return strategyStorage().strategies[strategy];
	}

	/**
	 * @dev Checks if a strategy is active
	 * @param strategy Address of the strategy to check
	 * @notice Reverts if the strategy is not active
	 */
	function requireActive(address strategy) public view {
		require(strategyStorage().strategies[strategy].activation != 0, "ERR_INACTIVE");
	}

	/**
	 * @dev Returns the emergency shutdown status
	 * @return Boolean indicating if emergency shutdown is active
	 */
	function isEmergencyShutdown() external view returns (bool) {
		return strategyStorage().emergencyShutdown;
	}

	/**
	 * @dev Updates the debt ratio for a given strategy
	 * @param strategy Address of the strategy
	 * @param strategyDebtRatio New debt ratio for the strategy
	 */
	function updateStrategyDebtRatio(address strategy, uint256 strategyDebtRatio) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		requireActive(strategy);
		StrategyStorage storage _storage = strategyStorage();

		address token = _storage.strategies[strategy].want;

		// cache storage values
		uint256 _updatedTokenDebtRatio = _storage.tokenDebtRatio[token] + strategyDebtRatio - _storage.strategies[strategy].debtRatio;
		require(_updatedTokenDebtRatio <= MAX_DEBT_RATIO, "ERR_MAX_DEBT_RATIO");

		// update storage
		_storage.strategies[strategy].debtRatio = strategyDebtRatio;
		_storage.tokenDebtRatio[token] = _updatedTokenDebtRatio;

		emit UpdatedStrategyDebtRatio(msg.sender, strategy, strategyDebtRatio);
	}

	/**
	 * @dev Updates the minimum and maximum debt per harvest for a given strategy
	 * @param strategy Address of the strategy
	 * @param minDebtPerHarvest New minimum debt per harvest
	 * @param maxDebtPerHarvest New maximum debt per harvest
	 */
	function updateStrategyMinMaxDebtPerHarvest(address strategy, uint256 minDebtPerHarvest, uint256 maxDebtPerHarvest) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		requireActive(strategy);
		require(minDebtPerHarvest <= maxDebtPerHarvest, "ERR_MINMAX_DEBT_PER_HARVEST");
		StrategyStorage storage _storage = strategyStorage();
		_storage.strategies[strategy].minDebtPerHarvest = minDebtPerHarvest;
		_storage.strategies[strategy].maxDebtPerHarvest = maxDebtPerHarvest;
		emit UpdatedStrategyMinMaxDebtPerHarvest(msg.sender, strategy, minDebtPerHarvest, maxDebtPerHarvest);
	}

	/**
	 * @dev Updates the performance fee for a given strategy
	 * @param strategy Address of the strategy
	 * @param strategyPerformanceFee New performance fee for the strategy
	 */
	function updateStrategyPerformanceFee(address strategy, uint256 strategyPerformanceFee) external {
		VaultGovernanceLib.onlyGovernance();
		requireActive(strategy);
		require(strategyPerformanceFee <= MAX_PERFORMANCE_FEE, "ERR_MAX_PERFORMANCE_FEE");
		strategyStorage().strategies[strategy].performanceFee = strategyPerformanceFee;
		emit UpdatedStrategyPerformanceFee(msg.sender, strategy, strategyPerformanceFee);
	}

	/**
	 * @dev Updates the management fee for a given strategy
	 * @param strategy Address of the strategy
	 * @param strategyManagementFee New management fee for the strategy
	 */
	function updateStrategyManagementFee(address strategy, uint256 strategyManagementFee) external {
		VaultGovernanceLib.onlyGovernance();
		requireActive(strategy);
		require(strategyManagementFee <= MAX_MANAGEMENT_FEE, "ERR_MAX_MANAGEMENT_FEE");
		strategyStorage().strategies[strategy].managementFee = strategyManagementFee;
		emit UpdatedStrategyManagementFee(msg.sender, strategy, strategyManagementFee);
	}

	/**
	 * @dev Revokes a strategy, setting its debt ratio to 0
	 * @param strategy Address of the strategy to revoke
	 */
	function _revokeStrategy(address strategy) private {
		StrategyStorage storage _storage = strategyStorage();
		_storage.tokenDebtRatio[_storage.strategies[strategy].want] -= _storage.strategies[strategy].debtRatio;
		_storage.strategies[strategy].debtRatio = 0;
		_storage.strategies[strategy].revoked = true;
		emit RevokedStrategy(msg.sender, strategy);
	}

	/**
	 * @dev Adds a new strategy to the vault
	 * @param strategy Address of the strategy to add
	 * @param minDebtPerHarvest Minimum debt per harvest for the strategy
	 * @param maxDebtPerHarvest Maximum debt per harvest for the strategy
	 * @param performanceFee Performance fee for the strategy
	 */
	function addStrategy(address strategy, uint256 minDebtPerHarvest, uint256 maxDebtPerHarvest, uint256 performanceFee) external {
		VaultGovernanceLib.onlyGovernance();
		strategy.requireNonZeroAddress();
		require(minDebtPerHarvest <= maxDebtPerHarvest, "ERR_MINMAX_DEBT_PER_HARVEST");
		require(performanceFee <= MAX_PERFORMANCE_FEE, "ERR_MAX_PERFORMANCE_FEE");
		StrategyStorage storage _storage = strategyStorage();
		if (_storage.strategies[strategy].activation != 0) revert DuplicateStrategy();
		address _want = IDynaStrategyAPI(strategy).want();
		VaultTokensLib.tokenExists(_want);
		_storage.strategies[strategy] = StrategyParams({
			want: _want,
			performanceFee: performanceFee,
			activation: block.timestamp,
			debtRatio: 0,
			minDebtPerHarvest: minDebtPerHarvest,
			maxDebtPerHarvest: maxDebtPerHarvest,
			lastReport: block.timestamp,
			totalDebt: 0,
			totalGain: 0,
			totalLoss: 0,
			managementFee: 0,
			revoked: false
		});
		// Add strategy to the end of the token strategies list
		VaultTokensLib.addToTokenStrategies(_want, strategy);
		emit StrategyAdded(_want, strategy);
	}

	/**
	 * @dev Migrates a strategy from an old version to a new version
	 * @notice Strategy must successfully migrate all capital and positions to new Strategy,
	 * or else this will upset the balance of the Vault.
	 * The new Strategy should be "empty" e.g. have no prior commitments to this Vault, otherwise it could have issues.
	 * @param oldVersion Address of the old strategy version
	 * @param newVersion Address of the new strategy version
	 */
	function migrateStrategy(address oldVersion, address newVersion) external {
		VaultGovernanceLib.onlyGovernance();
		newVersion.requireNonZeroAddress();
		StrategyStorage storage _storage = strategyStorage();
		StrategyParams memory strategyOldVersion = _storage.strategies[oldVersion];
		require(strategyOldVersion.activation != 0, "!old.active");
		require(_storage.strategies[newVersion].activation == 0, "new.active");
		require(strategyOldVersion.want == IDynaStrategyAPI(newVersion).want(), "!want");
		_revokeStrategy(oldVersion);

		//  _revokeStrategy will lower the debtRatio
		_storage.tokenDebtRatio[strategyOldVersion.want] += strategyOldVersion.debtRatio;
		_storage.strategies[oldVersion].totalDebt = 0;

		_storage.strategies[newVersion] = StrategyParams({
			want: strategyOldVersion.want,
			performanceFee: strategyOldVersion.performanceFee,
			activation: strategyOldVersion.lastReport,
			debtRatio: strategyOldVersion.debtRatio,
			minDebtPerHarvest: strategyOldVersion.minDebtPerHarvest,
			maxDebtPerHarvest: strategyOldVersion.maxDebtPerHarvest,
			lastReport: strategyOldVersion.lastReport,
			totalDebt: strategyOldVersion.totalDebt,
			totalGain: 0,
			totalLoss: 0,
			managementFee: strategyOldVersion.managementFee,
			revoked: false
		});

		IDynaStrategyAPI(oldVersion).migrate(newVersion);

		VaultTokensLib.replaceInTokenStrategies(want(oldVersion), oldVersion, newVersion);
		emit MigratedStrategy(msg.sender, oldVersion, newVersion);
	}

	/**
	 * @dev Revoke a Strategy, setting its debt limit to 0 and preventing any
	 *     future deposits.
	 *
	 *     This function should only be used in the scenario where the Strategy is
	 *     being retired but no migration of the positions are possible, or in the
	 *     extreme scenario that the Strategy needs to be put into "Emergency Exit"
	 *     mode in order for it to exit as quickly as possible. The latter scenario
	 *     could be for any reason that is considered "critical" that the Strategy
	 *     exits its position as fast as possible, such as a sudden change in market
	 *     conditions leading to losses, or an imminent failure in an external
	 *     dependency.
	 *
	 *     This may only be called by governance, the guardian, or the Strategy
	 *     itself. Note that a Strategy will only revoke itself during emergency
	 *     shutdown.
	 * @param strategy Address of the strategy to revoke
	 */
	function revokeStrategy(address strategy) external {
		VaultGovernanceLib.onlyEmergencyAuthorized();
		require(strategyStorage().strategies[strategy].debtRatio != 0, "ERR_DEBT_RATIO");
		_revokeStrategy(strategy);
	}

	/**
	 * @dev Resurrects a strategy by undoing a revoke
	 */
	function resurrectStrategy(address strategy) external {
		VaultGovernanceLib.onlyGovernance();
		strategyStorage().strategies[strategy].revoked = false;
		emit ResurrectStrategy(msg.sender, strategy);
	}

	/**
	 * @dev Adds a strategy to the token strategies list
	 * @param strategy Address of the strategy to add to the queue
	 */
	function addStrategyToList(address strategy) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		requireActive(strategy);
		VaultTokensLib.addToTokenStrategies(want(strategy), strategy);
		emit AddedStrategyToQueue(msg.sender, strategy);
	}

	/**
	 * @dev Removes a strategy from the token strategies list
	 * @param strategy Address of the strategy to remove from the token strategies list
	 */
	function removeStrategyFromList(address strategy) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		VaultTokensLib.removeFromTokenStrategies(want(strategy), strategy);
		emit RemovedStrategyFromList(strategy);
	}

	/**
	 * @dev Sets the new debt ratio for a strategy
	 * @notice Reverts when a strategy has been revoked to avoid changing its debt ratio
	 * @param strategy Address of the strategy to check
	 */
	function _setNewStrategyDebtRatio(address strategy, uint256 newStrategyDebtRatio) private {
		if (strategyStorage().strategies[strategy].revoked) revert DynaVaultErrors.UnableToChangeDebtRatioOnRevokedStrategy();
		StrategyStorage storage _storage = strategyStorage();
		uint256 oldStrategyDebtRatio = _storage.strategies[strategy].debtRatio;
		_storage.strategies[strategy].debtRatio = newStrategyDebtRatio;
		address _want = _storage.strategies[strategy].want;
		uint256 _newTokenDebtRatio = _storage.tokenDebtRatio[_want] + newStrategyDebtRatio - oldStrategyDebtRatio;
		require(_newTokenDebtRatio <= MAX_DEBT_RATIO, "ERR_MAX_DEBT_RATIO");
		_storage.tokenDebtRatio[_want] = _newTokenDebtRatio;
	}

	/** @notice amount is in deposit token decimals */
	function increaseStrategyDebtRatioByInvestmentAmount(address strategy, uint256 amount) internal {
		StrategyStorage storage _storage = strategyStorage();
		address _want = _storage.strategies[strategy].want;
		uint256 _tokenIdle = VaultTokensLib.tokenIdle(_want); // want token decimals
		require(_tokenIdle >= amount, "!tokenIdle");
		uint256 _tokenDebt = VaultTokensLib.tokenDebt(_want); // in deposit token decimals
		uint256 tokenTotalAssets = _tokenIdle + _tokenDebt;
		uint256 strategyDebtLimit = FixedPointMathLib.fullMulDiv(_storage.strategies[strategy].debtRatio, tokenTotalAssets, MAX_DEBT_RATIO);
		uint256 newStrategyDebtRatio = FixedPointMathLib.fullMulDiv(strategyDebtLimit + amount, MAX_DEBT_RATIO, tokenTotalAssets);
		// update debt ratio
		_setNewStrategyDebtRatio(strategy, newStrategyDebtRatio);
	}

	/**
	 * @dev Decreases the debt of a strategy
	 * @param strategy Address of the strategy
	 * @param amount Amount of tokens withdrawn from the strategy
	 * @param givenTokenTotalAssets Amount of total assets to use
	 * @notice This function can only be called by the vault
	 */
	function decreaseStrategyDebtRatioByInvestmentAmount(address strategy, uint256 amount, uint256 givenTokenTotalAssets) internal {
		StrategyStorage storage _storage = strategyStorage();
		require(_storage.strategies[strategy].totalDebt >= amount, "!strategy.totalDebt");
		uint256 strategyDebtLimit = Math.max(
			FixedPointMathLib.fullMulDiv(_storage.strategies[strategy].debtRatio, givenTokenTotalAssets, MAX_DEBT_RATIO),
			amount
		);
		// update debt ratio
		_setNewStrategyDebtRatio(strategy, ((strategyDebtLimit - amount) * MAX_DEBT_RATIO) / givenTokenTotalAssets);
	}

	/**
	 * @dev Decreases the debt of a strategy
	 * @param strategy Address of the strategy
	 * @param withdrawn Amount of tokens withdrawn from the strategy
	 * @notice This function can only be called by the vault
	 */
	function decreaseStrategyDebt(address strategy, uint256 withdrawn) external {
		VaultGovernanceLib.onlyVault();
		StrategyStorage storage _storage = strategyStorage();
		_storage.strategies[strategy].totalDebt -= withdrawn;
		VaultTokensLib.decreaseTokenDebt(_storage.strategies[strategy].want, withdrawn);
	}

	/**
	 * @dev Returns the total debt of a strategy
	 * @param strategy Address of the strategy
	 * @return uint256 Total debt of the strategy
	 */
	function strategyDebt(address strategy) external view returns (uint256) {
		return strategyStorage().strategies[strategy].totalDebt;
	}

	/**
	 * @dev Calculates the outstanding debt of a strategy
	 * @param strategy Address of the strategy
	 * @return uint256 Outstanding debt of the strategy
	 */
	function debtOutstanding(address strategy) public view returns (uint256) {
		StrategyStorage storage _storage = strategyStorage();
		if (_storage.tokenDebtRatio[_storage.strategies[strategy].want] == 0 || _storage.emergencyShutdown) {
			return _storage.strategies[strategy].totalDebt;
		}
		uint256 strategyDebtLimit = (_storage.strategies[strategy].debtRatio * VaultTokensLib.totalTokenAssets(_storage.strategies[strategy].want)) / MAX_DEBT_RATIO;
		//
		uint256 strategyTotalDebt = _storage.strategies[strategy].totalDebt;

		if (strategyTotalDebt <= strategyDebtLimit) {
			return 0;
		} else {
			return strategyTotalDebt - strategyDebtLimit;
		}
	}

	/**
	 * @dev Calculates the available credit for a strategy
	 * @param strategy Address of the strategy
	 * @return uint256 Available credit for the strategy
	 */
	function creditAvailable(address strategy) public view returns (uint256) {
		StrategyStorage storage _storage = strategyStorage();
		if (_storage.strategies[strategy].activation == 0) return 0;
		if (_storage.emergencyShutdown) return 0;
		address _want = _storage.strategies[strategy].want;
		uint256 vaultTokenDebt = VaultTokensLib.tokenDebt(_want);
		uint256 vaultTotalAssets = VaultTokensLib.tokenIdle(_want) + vaultTokenDebt;
		uint256 vaultDebtLimit = FixedPointMathLib.fullMulDiv(_storage.tokenDebtRatio[_want], vaultTotalAssets, MAX_DEBT_RATIO);
		uint256 strategyDebtLimit = FixedPointMathLib.fullMulDiv(_storage.strategies[strategy].debtRatio, vaultTotalAssets, MAX_DEBT_RATIO);
		uint256 strategyTotalDebt = _storage.strategies[strategy].totalDebt;
		uint256 strategyMinDebtPerHarvest = _storage.strategies[strategy].minDebtPerHarvest;
		uint256 strategyMaxDebtPerHarvest = _storage.strategies[strategy].maxDebtPerHarvest;
		// Exhausted credit line
		if (strategyDebtLimit <= strategyTotalDebt || vaultDebtLimit <= vaultTokenDebt) return 0;
		// Start with debt limit left for the Strategy
		uint256 available = strategyDebtLimit - strategyTotalDebt;
		// Adjust by the global debt limit left
		available = Math.min(available, vaultDebtLimit - vaultTokenDebt);
		// Can only borrow up to what the contract has in reserve
		available = Math.min(available, VaultTokensLib.tokenIdle(_want));
		// Adjust by min and max borrow limits (per harvest)
		if (available < strategyMinDebtPerHarvest) return 0;
		else return Math.min(available, strategyMaxDebtPerHarvest);
	}

	/**
	 * @dev Sets the emergency shutdown status
	 * @notice In the extreme scenario that the Vault needs to be put into "Emergency Exit"
	 * mode in order for it to exit all strategies as quickly as possible. This scenario
	 * could be for any reason that is considered "critical" that the Strategies
	 * exits its position as fast as possible, such as a sudden change in market
	 * conditions leading to losses, or an imminent failure in an external dependency.
	 * @param shutdown Boolean indicating whether to activate or deactivate emergency shutdown
	 * @notice Only emergency authorized accounts can activate shutdown, only governance can deactivate
	 */
	function setEmergencyShutdown(bool shutdown) external {
		if (shutdown) {
			VaultGovernanceLib.onlyEmergencyAuthorized();
		} else {
			VaultGovernanceLib.onlyGovernance();
		}
		strategyStorage().emergencyShutdown = shutdown;
		emit EmergencyShutdown(msg.sender, shutdown);
	}

	/**
	 * @dev Registers a loss for a strategy
	 * @param strategyAddress Address of the strategy
	 * @param loss Amount of loss to register
	 */
	function registerLoss(address strategyAddress, uint256 loss) external {
		StrategyStorage storage _storage = strategyStorage();
		uint256 strategyTotalDebt = _storage.strategies[strategyAddress].totalDebt;
		if (loss > strategyTotalDebt) loss = strategyTotalDebt;
		address _want = _storage.strategies[strategyAddress].want;
		if (_storage.strategies[strategyAddress].debtRatio != 0) {
			// NOTE: This calculation is more precise than yearn
			uint256 newDebtRatio = ((strategyTotalDebt - loss) * MAX_DEBT_RATIO) / (VaultTokensLib.totalTokenAssets(_want) - loss);
			uint256 debtRatioChange = (_storage.strategies[strategyAddress].debtRatio > newDebtRatio)
				? _storage.strategies[strategyAddress].debtRatio - newDebtRatio
				: 0;
			_storage.strategies[strategyAddress].debtRatio -= debtRatioChange;
			if (_storage.tokenDebtRatio[_want] > debtRatioChange) {
				_storage.tokenDebtRatio[_want] -= debtRatioChange;
			} else {
				_storage.tokenDebtRatio[_want] = 0;
			}
		}
		_storage.strategies[strategyAddress].totalLoss += loss;
		_storage.strategies[strategyAddress].totalDebt = strategyTotalDebt - loss;
		VaultTokensLib.decreaseTokenDebt(_want, loss);
	}

	/**
	 * @dev Calculates the expected return for a strategy
	 * @param strategy Address of the strategy
	 * @return uint256 Expected return for the strategy
	 */
	function expectedReturn(address strategy) external view returns (uint256) {
		StrategyStorage storage _storage = strategyStorage();
		uint256 strategy_lastReport = _storage.strategies[strategy].lastReport;
		uint256 timeSinceLastHarvest = block.timestamp - strategy_lastReport;
		uint256 totalHarvestTime = strategy_lastReport - _storage.strategies[strategy].activation;

		if (
			timeSinceLastHarvest != 0 &&
			totalHarvestTime != 0 &&
			_storage.strategies[strategy].activation != 0 &&
			_storage.strategies[strategy].totalGain > _storage.strategies[strategy].totalLoss
		) {
			uint256 totalReturns = _storage.strategies[strategy].totalGain - _storage.strategies[strategy].totalLoss;
			return FixedPointMathLib.fullMulDiv(totalReturns, timeSinceLastHarvest, totalHarvestTime);
		} else {
			return 0;
		}
	}

	/**
	 * @dev Calculates various fees for a strategy
	 * @param strategy Address of the strategy
	 * @param gainAmount Amount of gain
	 * @param performance Boolean indicating whether to calculate performance fees
	 * @return strategy_management_fee Management fee for the strategy
	 * @return vault_management_fee Management fee for the vault
	 * @return strategist_fee Fee for the strategist
	 * @return vault_performance_fee Performance fee for the vault
	 */
	function calcFees(
		address strategy,
		uint256 gainAmount,
		bool performance
	) external view returns (uint256 strategy_management_fee, uint256 vault_management_fee, uint256 strategist_fee, uint256 vault_performance_fee) {
		// fix stack too deep
		address strategyAddress = strategy;
		uint256 gain = gainAmount;
		bool _performance = performance;
		VaultFeesLib.FeesStorage memory fees = VaultFeesLib.getFees();
		StrategyParams storage _strategyParams = strategyStorage().strategies[strategyAddress];
		uint256 duration = block.timestamp - _strategyParams.lastReport;

		if (duration == 0) {
			return (0, 0, 0, 0);
		}

		{
			// fix stack too deep
			uint256 vaultManagementFeePct = fees.managementFee;
			uint256 strategyManagementFeePct = _strategyParams.managementFee;
			uint256 _strategyDebt = _strategyParams.totalDebt;
			// delegated assets are already paying management fee elsewhere
			uint256 delegatedAssets = IDynaStrategyAPI(strategyAddress).delegatedAssets();
			// we subtract delegated assets from assetsUnderManagement to avoid double tax
			uint256 assetsUnderManagement = (_strategyDebt > delegatedAssets) ? (_strategyDebt - delegatedAssets) : 0;

			vault_management_fee = FixedPointMathLib.fullMulDiv(
				FixedPointMathLib.fullMulDiv(assetsUnderManagement, vaultManagementFeePct, MAX_BPS), // ratio of assets
				duration,
				SECS_PER_YEAR // ratio of year
			);

			strategy_management_fee = FixedPointMathLib.fullMulDiv(
				FixedPointMathLib.fullMulDiv(assetsUnderManagement, strategyManagementFeePct, MAX_BPS), // ratio of assets
				duration,
				SECS_PER_YEAR // ratio of year
			);
		}

		if (_performance) {
			uint256 vaultPerformanceFeePct = fees.performanceFee;
			uint256 strategyPerformanceFeePct = _strategyParams.performanceFee;
			strategist_fee = FixedPointMathLib.fullMulDiv(gain, strategyPerformanceFeePct, MAX_BPS);
			vault_performance_fee = FixedPointMathLib.fullMulDiv(gain, vaultPerformanceFeePct, MAX_BPS);
			// apply management fee seniority principle
			strategist_fee = (strategist_fee > strategy_management_fee) ? strategist_fee - strategy_management_fee : 0;
			vault_performance_fee = (vault_performance_fee > vault_management_fee) ? vault_performance_fee - vault_management_fee : 0;
		}
	}

	/**
	 * @dev Updates the last report timestamp for a strategy
	 * @param strategyAddress Address of the strategy
	 */
	function updateLastReport(address strategyAddress) external {
		strategyStorage().strategies[strategyAddress].lastReport = block.timestamp;
	}

	/**
	 * @dev returns the last report timestamp for a strategy
	 * @param strategyAddress Address of the strategy
	 */
	function lastReport(address strategyAddress) external view returns (uint256) {
		return strategyStorage().strategies[strategyAddress].lastReport;
	}

	/**
	 * @dev Registers a gain for a strategy
	 * @param strategyAddress Address of the strategy
	 * @param gain Amount of gain to register
	 */
	function registerGain(address strategyAddress, uint256 gain) external {
		strategyStorage().strategies[strategyAddress].totalGain += gain;
	}

	/**
	 * @dev Decreases the debt of a strategy
	 * @param strategyAddress Address of the strategy
	 * @param debtPayment Amount of debt to decrease
	 */
	function decreaseDebt(address strategyAddress, uint256 debtPayment) external {
		strategyStorage().strategies[strategyAddress].totalDebt -= debtPayment;
	}

	/**
	 * @dev Increases the debt of a strategy
	 * @param strategyAddress Address of the strategy
	 * @param _debt Amount of debt to increase
	 */
	function increaseDebt(address strategyAddress, uint256 _debt) external {
		strategyStorage().strategies[strategyAddress].totalDebt += _debt;
	}

	/**
	 * @dev Converts ETH amount to want token amount
	 * @param amount Amount of ETH to convert
	 * @param wethAddress Address of the WETH token
	 * @param strategyAddress Address of the strategy
	 * @return value Amount in want token
	 */
	function ethToWant(uint256 amount, address wethAddress, address strategyAddress) external view returns (uint256 value) {
		address _want = strategyStorage().strategies[strategyAddress].want;
		if (_want == wethAddress) return amount;
		(uint256 price, ) = IReferenceAssetOracle(IDynaVaultAPI(VaultGovernanceLib.vault()).referenceAssetOracle()).getPrice(wethAddress, _want);
		return (amount * price) / 1e18;
	}
}
