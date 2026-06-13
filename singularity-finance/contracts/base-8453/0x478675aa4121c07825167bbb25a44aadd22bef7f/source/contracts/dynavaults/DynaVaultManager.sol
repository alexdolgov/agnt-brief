// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./VaultStrategies.sol";
import "./VaultManagerLib.sol";
import "./VaultManagerSimulatorLib.sol";

/**
 * @title The DynaVaultManager uses the main sub-module DynaVaultManager and inherits all necessary contracts and libraries.
 */
contract DynaVaultManager is VaultStrategies {
	/**
	 * @notice Initialized vault manager parameters
	 * @param vault The address of the vault
	 * @param tokenAddress the address of the deposit token
	 * @param governance The address of governance
	 * @param management The address of management
	 * @param guardian The address of guardian
	 * @param managementFeeWallet The address of management fee wallet
	 * @param performanceFeeWallet The address of performance fee wallet
	 * @param owner The address of owner
	 */
	function initialize(
		address vault,
		address tokenAddress,
		address governance,
		address management,
		address guardian,
		address managementFeeWallet,
		address performanceFeeWallet,
		address owner
	) external {
		// grantRole is reverting when executed by user without admin role
		_grantRole(DEFAULT_ADMIN_ROLE, owner);
		VaultManagerLib.initialize(vault, tokenAddress, governance, management, guardian, managementFeeWallet, performanceFeeWallet);
		VaultManagerSimulatorLib.initialize(vault);
	}

	/**
	 * @notice Private function to report loss in strategy
	 * @param strategy The address of strategy with loss
	 * @param loss The amount of loss denominated in the strategy want token
	 */
	function reportLoss(address strategy, uint256 loss) external {
		VaultManagerLib.reportLoss(strategy, loss);
	}

	/**
	 * @notice A vault manager can increase debtRatio indirectly by specifying how much of tokenIdle he would like to transfer to strategy debt.
	 * This is a desired amount, the investStrategy harvest call might not invest/liquidate the passed amount instantly,
	 * given the strategy is limited by minDebtPerHarvest/maxDebtPerHarvest to either postpone the adjustedPosition call
	 * or split it over multiple report calls (respecting the atomic operational range configured in the strategy).
	 * @param strategy The address of the strategy
	 * @param amount The amount to invest denominated in the strategy want token
	 */
	function investStrategy(address strategy, uint256 amount) external {
		VaultManagerLib.investStrategy(strategy, amount);
	}

	/**
	 * @notice Liquidate amount of want token from strategy
	 * @param strategy The address of strategy
	 * @param amount The amount to liquidate denominated in the strategy want token to liquidate
	 */
	function liquidateStrategy(address strategy, uint256 amount) external {
		VaultManagerLib.liquidateStrategy(strategy, amount);
	}

	/**
	 * @dev Calculates the expected return for a strategy
	 * @param strategy Address of the strategy
	 * @return uint256 Expected return for the strategy
	 */
	function expectedReturn(address strategy) external view returns (uint256) {
		return VaultStrategiesLib.expectedReturn(strategy);
	}

	/**
	 * @notice Reports loss and profit from both strategy and reserves
	 * @dev Called by strategy
	 * @param gain The gain amount denominated in strategy want token
	 * @param loss The loss amount denominated in strategy want token
	 * @param debtPayment The amount of debt to decrease
	 */
	function reportStrategy(uint256 gain, uint256 loss, uint256 debtPayment) external returns (uint256) {
		return VaultManagerLib.reportStrategy(gain, loss, debtPayment);
	}

	/**
	 * @notice Calculates the amount of free funds
	 * @return _freeFunds The amount of free funds
	 */
	function freeFunds() external view returns (uint256) {
		return VaultManagerLib.freeFunds();
	}

	/**
	 * @notice External function to report for a reserve token
	 * @param tokenAddress The address of the reserve token
	 */
	function reportReserve(address tokenAddress) external {
		VaultManagerLib.reportReserve(tokenAddress);
	}

	/**
	 * @notice Report multiple reserve tokens
	 * @param tokens The array with the addresses of the reserve tokens to report
	 */
	function reportReserves(address[] memory tokens) external {
		VaultManagerLib.reportReserves(tokens);
	}

	/**
	 * @notice Report a reserve token called by vault
	 * @param tokenAddress The address of the reserve token to report
	 */
	function reportReserveFromVault(address tokenAddress) external {
		VaultManagerLib.reportReserveFromVault(tokenAddress);
	}

	/**
	 * @notice Report all reserves tokens called by vault
	 */
	function reportAllReservesFromVault() external returns (uint256 reportedFreeFunds) {
		reportedFreeFunds = VaultManagerLib.reportAllReservesFromVault();
	}

	/**
	 * @notice Returns the current unlocked funds ratio
	 * @return unlockedFundsRatio The current unlocked funds ratio
	 */
	function unlockedFundsRatio() external view returns (uint256) {
		return VaultManagerLib.unlockedFundsRatio();
	}

	/**
	 * @notice Returns the last time locked profit was degradated
	 * @return lastLockedProfitDegradation timestamp
	 */
	function lastLockedProfitDegradation() external view returns (uint256) {
		return VaultManagerLib.lastLockedProfitDegradation();
	}

	/**
	 * @notice Returns amount of locked profit
	 * @return lockedProfit The locked profit amount denominated in deposit token
	 */
	function lockedProfit() external view returns (uint256) {
		return VaultManagerLib.lockedProfit();
	}

	/**
	 * @notice Returns the last locked profit ratio
	 * @return lastLockedProfitRatio
	 */
	function lastLockedProfitRatio() external view returns (uint256) {
		return VaultManagerLib.lastLockedProfitRatio();
	}

	/**
	 * @notice Returns the locked profit degradation rates
	 * @return lockedProfitDegradationRates
	 */
	function lockedProfitDegradationRates() external pure returns (uint256, uint256) {
		return VaultManagerLib.lockedProfitDegradationRates();
	}

	/**
	 * @notice Updates the locked profit degradation coefficient
	 * @param newLockedProfitDegradation The new locked profit degradation coefficient
	 */
	function updateLockedProfitDegradation(uint256 newLockedProfitDegradation) external {
		VaultManagerLib.updateLockedProfitDegradation(newLockedProfitDegradation);
	}

	/**
	 * @dev Updates the fee structure
	 * @param managementFee New management fee
	 * @param performanceFee New performance fee
	 * @param depositFee New deposit fee
	 * @param redemptionFee New redemption fee
	 */
	function updateFees(uint256 managementFee, uint256 performanceFee, uint256 depositFee, uint256 redemptionFee) external override {
		VaultManagerLib.requireRecentReport();
		VaultFeesLib.updateFees(managementFee, performanceFee, depositFee, redemptionFee);
	}

	/**
	 * @notice Deposit deposit token into the vault
	 * @param depositAmount The amount of tokens to deposit
	 * @param feeAmount The amount of fees
	 */
	function depositDepositToken(uint256 depositAmount, uint256 feeAmount) external {
		VaultManagerLib.depositDepositToken(depositAmount, feeAmount);
	}

	/**
	 * @notice Withdraw deposit token from vault
	 * @param withdrawAmount The amount of tokens to withdraw
	 */
	function withdrawDepositToken(uint256 withdrawAmount) external {
		VaultManagerLib.withdrawDepositToken(withdrawAmount);
	}

	/**
	 * @notice Returns a simulated preview of rebalance
	 * @param snapshot The vault snapshot used in simulation
	 * @return expectedAmountsOut An array with expected amounts out from rebalance
	 */
	function previewRebalance(
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view returns (uint256[] memory expectedAmountsOut, IVaultSimulatorAPI.VaultSnapshot memory) {
		return VaultManagerSimulatorLib.simulatedRebalance(snapshot);
	}

	/**
	 * @notice Re-balances vault reserve tokens
	 * @param minAmountsOut An array with min amounts out expected in swaps during rebalance
	 */
	function rebalance(uint256[] memory minAmountsOut) external {
		VaultManagerLib.rebalance(minAmountsOut);
	}

	/**
	 * @notice Checks if a token exists in the vault
	 * @param tokenAddress The address of the token
	 * @return exists Indicates if the token exists in the vault
	 */
	function tokenExists(address tokenAddress) external view returns (bool) {
		return VaultTokensLib.tokenExists(tokenAddress);
	}

	/**
	 * @notice Returns a simulated unlocked funds ratio
	 * @param snapshot The vault snapshot used in simulation
	 * @return unlockedFundsRatio The ratio of simulated unlocked funds
	 */
	function simulateUnlockedFundsRatio(IVaultSimulatorAPI.VaultSnapshot memory snapshot) external pure returns (uint256) {
		return VaultManagerSimulatorLib.simulateUnlockedFundsRatio(snapshot);
	}

	/**
	 * @notice Returns a simulated amount of free funds
	 * @param snapshot The vault snapshot used in simulation
	 * @return freeFunds The amount of simulated free funds
	 */
	function simulatedFreeFunds(IVaultSimulatorAPI.VaultSnapshot memory snapshot) external pure returns (uint256) {
		return VaultManagerSimulatorLib.simulatedFreeFunds(snapshot);
	}

	/**
	 * @notice Returns snapshot with simulated values of reporting all reserve tokens
	 *  @param snapshot The vault snapshot used in the simulations
	 */
	function simulatedReportAllReserves(IVaultSimulatorAPI.VaultSnapshot memory snapshot) external view returns (IVaultSimulatorAPI.VaultSnapshot memory) {
		(, snapshot) = VaultManagerSimulatorLib.simulatedReportAllReserves(snapshot);
		return snapshot;
	}

	/**
	 * @notice Takes snapshots of the strategies of a token
	 * @param tokenAddress The address of the token
	 */
	function takeStrategiesSnapshot(address tokenAddress) public view returns (IVaultSimulatorAPI.VaultStrategySnapshot[] memory snapshots) {
		return VaultManagerSimulatorLib.takeStrategiesSnapshot(tokenAddress);
	}
}
