// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./VaultStrategies.sol";
import "./VaultManagerLib.sol";
import "./VaultManagerSimulatorLib.sol";
import "./interfaces/DynaVaultAPI.sol";

/**
 * @title The DynaVaultManager uses the main sub-module DynaVaultManager and inherits all necessary contracts and libraries.
 */
contract DynaVaultManager is VaultStrategies {
	/**
	 * @notice initialized vault manager parameters
	 * @param vault address of the vault
	 * @param tokenAddress address of the deposit token
	 * @param governance address of governance
	 * @param management address of management
	 * @param guardian address of guardian
	 * @param managementFeeWallet address of management fee wallet
	 * @param performanceFeeWallet address of performance fee wallet
	 * @param owner address of owner
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
	 * @notice private function to report loss in strategy
	 * @param strategy address of strategy with loss
	 * @param loss amount of loss denominated in the strategy want token
	 */
	function reportLoss(address strategy, uint256 loss) external {
		VaultManagerLib.reportLoss(strategy, loss);
	}

	/**
	 * @notice A vault manager can increase debtRatio indirectly by specifying how much of tokenIdle he would like to transfer to strategy debt.
	 * This is a desired amount, the investStrategy harvest call might not invest/liquidate the passed amount instantly,
	 * given the strategy is limited by minDebtPerHarvest/maxDebtPerHarvest to either postpone the adjustedPosition call
	 * or split it over multiple report calls (respecting the atomic operational range configured in the strategy).
	 * @param strategy address of the strategy
	 * @param amount denominated in the strategy want token
	 */
	function investStrategy(address strategy, uint256 amount) external {
		VaultManagerLib.investStrategy(strategy, amount);
	}

	/**
	 * @notice liquidate amount of want token from strategy
	 * @param strategy address of strategy
	 * @param amount denominated in the strategy want token to liquidate
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
	 * @notice reports loss and profit from both strategy and reserves
	 * @dev called by strategy
	 * @param gain denominated in strategy want token
	 * @param loss denominated in strategy want token
	 * @param debtPayment amount of debt to decrease
	 */
	function report(uint256 gain, uint256 loss, uint256 debtPayment) external returns (uint256) {
		return VaultManagerLib.report(gain, loss, debtPayment);
	}

	/**
	 * @notice calculates the amount of free funds
	 * @return _freeFunds the amount of free funds
	 */
	function freeFunds() external view returns (uint256) {
		return VaultManagerLib.freeFunds();
	}

	/**
	 * @notice external function to report for a reserve token
	 * @param tokenAddress address of the reserve token
	 */
	function reportReserve(address tokenAddress) external {
		VaultManagerLib.reportReserve(tokenAddress);
	}

	/**
	 * @notice report multiple reserve tokens
	 * @param tokens array with the addresses of the reserve tokens to report
	 */
	function reportReserves(address[] memory tokens) external {
		VaultManagerLib.reportReserves(tokens);
	}

	/**
	 * @notice report a reserve token called by vault
	 * @param tokenAddress address of the reserve token to report
	 */
	function reportReserveFromVault(address tokenAddress) external {
		VaultManagerLib.reportReserveFromVault(tokenAddress);
	}

	/**
	 * @notice report all reserves tokens called by vault
	 */
	function reportAllReservesFromVault() external {
		VaultManagerLib.reportAllReservesFromVault();
	}

	/**
	 * @notice returns the current unlocked funds ratio
	 * @return unlockedFundsRatio current unlocked funds ratio
	 */
	function unlockedFundsRatio() external view returns (uint256) {
		return VaultManagerLib.unlockedFundsRatio();
	}

	/**
	 * @notice returns the last time locked profit was degradated
	 * @return lastLockedProfitDegradation timestamp
	 */
	function lastLockedProfitDegradation() external view returns (uint256) {
		return VaultManagerLib.lastLockedProfitDegradation();
	}

	/**
	 * @notice returns amount of locked profit
	 * @return lockedProfit denominated in deposit token
	 */
	function lockedProfit() external view returns (uint256) {
		return VaultManagerLib.lockedProfit();
	}

	/**
	 * @notice returns the last locked profit ratio
	 * @return lastLockedProfitRatio
	 */
	function lastLockedProfitRatio() external view returns (uint256) {
		return VaultManagerLib.lastLockedProfitRatio();
	}

	/**
	 * @notice returns the locked profit degradation rates
	 * @return lockedProfitDegradationRates
	 */
	function lockedProfitDegradationRates() external pure returns (uint256, uint256) {
		return VaultManagerLib.lockedProfitDegradationRates();
	}

	/**
	 * @notice updates the locked profit degradation coefficient
	 * @param newLockedProfitDegradation new locked profit degradation coefficient
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
	 * @notice deposit deposit token into the vault
	 * @param depositAmount amount of tokens to deposit
	 * @param feeAmount amount of fees
	 */
	function depositDepositToken(uint256 depositAmount, uint256 feeAmount) external {
		VaultManagerLib.depositDepositToken(depositAmount, feeAmount);
	}

	/**
	 * @notice withdraw deposit token from vault
	 * @param withdrawAmount amount of tokens to withdraw
	 */
	function withdrawDepositToken(uint256 withdrawAmount) external {
		VaultManagerLib.withdrawDepositToken(withdrawAmount);
	}

	/**
	 * @notice returns a simulated preview of rebalance
	 * @param snapshot used in simulation
	 * @return expectedAmountsOut array of expected amounts out from rebalance
	 */
	function previewRebalance(VaultSimulatorAPI.VaultSnapshot memory snapshot) external view returns (uint256[] memory expectedAmountsOut) {
		return VaultManagerSimulatorLib.simulatedRebalance(snapshot);
	}

	/**
	 * @notice rebalances vault reserve tokens
	 * @param minAmountsOut array of min amounts expected in swaps during rebalance
	 */
	function rebalance(uint256[] memory minAmountsOut) external {
		VaultManagerLib.rebalance(minAmountsOut);
	}

	/**
	 * @notice checks if a token exists in the vault
	 * @param tokenAddress address of the token
	 * @return exists true if the token exists in the vault, false otherwise.
	 */
	function tokenExists(address tokenAddress) external view returns (bool) {
		return VaultTokensLib.tokenExists(tokenAddress);
	}

	/**
	 * @notice returns a simulated unlocked funds ratio
	 * @param snapshot used in simulation
	 * @return unlockedFundsRatio simulated unlocked funds ratio
	 */
	function simulateUnlockedFundsRatio(VaultSimulatorAPI.VaultSnapshot memory snapshot) external pure returns (uint256) {
		return VaultManagerSimulatorLib.simulateUnlockedFundsRatio(snapshot);
	}

	/**
	 * @notice returns a simulated amount of free funds
	 * @param snapshot used in simulation
	 * @return freeFunds amount of simulated free funds
	 */
	function simulatedFreeFunds(VaultSimulatorAPI.VaultSnapshot memory snapshot) external pure returns (uint256) {
		return VaultManagerSimulatorLib.simulatedFreeFunds(snapshot);
	}

	/**
	 * @notice returns snapshot with simulated vaules of reporting all reserve tokens
	 * @param snapshot used in simulations
	 */
	function simulatedReportAllReserves(VaultSimulatorAPI.VaultSnapshot memory snapshot) external view returns (VaultSimulatorAPI.VaultSnapshot memory) {
		(, snapshot) = VaultManagerSimulatorLib.simulatedReportAllReserves(snapshot);
		return snapshot;
	}

	function takeStrategiesSnapshot(address tokenAddress) public view returns (VaultSimulatorAPI.VaultStrategySnapshot[] memory snapshots) {
		return VaultManagerSimulatorLib.takeStrategiesSnapshot(tokenAddress);
	}
}
