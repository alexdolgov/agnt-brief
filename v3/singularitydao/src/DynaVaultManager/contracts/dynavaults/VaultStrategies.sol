// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./VaultTokens.sol";
import "./VaultStrategiesLib.sol";

/**
 * @title VaultStrategies
 * @notice This contract extends VaultTokens and provides functionality for managing strategies within the vault.
 */
contract VaultStrategies is VaultTokens {
	/**
	 * @notice Checks if the vault is in emergency shutdown mode
	 * @return bool True if emergency shutdown is active, false otherwise
	 */
	function isEmergencyShutdown() public view returns (bool) {
		return VaultStrategiesLib.isEmergencyShutdown();
	}

	/**
	 * @notice Retrieves the parameters for a given strategy
	 * @param strategy The address of the strategy
	 * @return params The StrategyParams struct containing strategy details
	 */
	function strategies(address strategy) public view returns (VaultStrategiesLib.StrategyParams memory params) {
		return VaultStrategiesLib.strategyParams(strategy);
	}

	/**
	 * @notice Gets the debt ratio for a specific token
	 * @param token The address of the token
	 * @return uint256 The debt ratio of the token
	 */
	function tokenDebtRatio(address token) public view returns (uint256) {
		return VaultStrategiesLib.tokenDebtRatio(token);
	}

	/**
	 * @notice Updates the debt ratio for a strategy
	 * @param strategy The address of the strategy
	 * @param strategyDebtRatio The new debt ratio to set
	 */
	function updateStrategyDebtRatio(address strategy, uint256 strategyDebtRatio) external {
		VaultStrategiesLib.updateStrategyDebtRatio(strategy, strategyDebtRatio);
	}

	/**
	 * @notice Updates the minimum and maximum debt per harvest for a strategy
	 * @param strategy The address of the strategy
	 * @param minDebtPerHarvest The new minimum debt per harvest
	 * @param maxDebtPerHarvest The new maximum debt per harvest
	 */
	function updateStrategyMinMaxDebtPerHarvest(address strategy, uint256 minDebtPerHarvest, uint256 maxDebtPerHarvest) external {
		VaultStrategiesLib.updateStrategyMinMaxDebtPerHarvest(strategy, minDebtPerHarvest, maxDebtPerHarvest);
	}

	/**
	 * @notice Updates the performance fee for a strategy
	 * @param strategy The address of the strategy
	 * @param strategyPerformanceFee The new performance fee to set
	 */
	function updateStrategyPerformanceFee(address strategy, uint256 strategyPerformanceFee) external {
		VaultStrategiesLib.updateStrategyPerformanceFee(strategy, strategyPerformanceFee);
	}

	/**
	 * @notice Updates the management fee for a strategy
	 * @param strategy The address of the strategy
	 * @param strategyManagementFee The new management fee to set
	 */
	function updateStrategyManagementFee(address strategy, uint256 strategyManagementFee) external {
		VaultStrategiesLib.updateStrategyManagementFee(strategy, strategyManagementFee);
	}

	/**
	 * @notice Adds a new strategy to the vault
	 * @param _strategy The address of the strategy to add
	 * @param _minDebtPerHarvest The minimum debt per harvest for the strategy
	 * @param _maxDebtPerHarvest The maximum debt per harvest for the strategy
	 * @param _performanceFee The performance fee for the strategy
	 */
	function addStrategy(address _strategy, uint256 _minDebtPerHarvest, uint256 _maxDebtPerHarvest, uint256 _performanceFee) external {
		VaultStrategiesLib.addStrategy(_strategy, _minDebtPerHarvest, _maxDebtPerHarvest, _performanceFee);
	}

	/**
	 * @notice Migrates funds from an old strategy version to a new one
	 * @param oldVersion The address of the old strategy
	 * @param newVersion The address of the new strategy
	 */
	function migrateStrategy(address oldVersion, address newVersion) external {
		VaultStrategiesLib.migrateStrategy(oldVersion, newVersion);
	}

	/**
	 * @notice Revokes a strategy, removing it from the vault
	 * @param strategy The address of the strategy to revoke
	 */
	function revokeStrategy(address strategy) external {
		VaultStrategiesLib.revokeStrategy(strategy);
	}

	/**
	 * @notice Adds a strategy to the withdrawal queue
	 * @param strategy The address of the strategy to add
	 */
	function addStrategyToList(address strategy) external {
		VaultStrategiesLib.addStrategyToList(strategy);
	}

	/**
	 * @notice Removes a strategy from the token strategies list
	 * @param strategy The address of the strategy to remove
	 */
	function removeStrategyFromList(address strategy) external {
		VaultStrategiesLib.removeStrategyFromList(strategy);
	}

	/**
	 * @notice Decreases the debt of a strategy
	 * @param strategy The address of the strategy
	 * @param withdrawn The amount of debt to decrease
	 */
	function decreaseStrategyDebt(address strategy, uint256 withdrawn) external {
		VaultStrategiesLib.decreaseStrategyDebt(strategy, withdrawn);
	}

	/**
	 * @notice Gets the current debt of a strategy
	 * @param strategy The address of the strategy
	 * @return uint256 The current debt of the strategy
	 */
	function strategyDebt(address strategy) external view returns (uint256) {
		return VaultStrategiesLib.strategyDebt(strategy);
	}

	/**
	 * @notice Gets the credit available for a specific strategy
	 *  had to rename to creditAvailableForStrategy due to TypeChain bug which does not allow overloading
	 * @param strategy The address of the strategy
	 * @return uint256 The amount of credit available
	 */
	function creditAvailableForStrategy(address strategy) external view returns (uint256) {
		return VaultStrategiesLib.creditAvailable(strategy);
	}

	/**
	 * @notice Gets the credit available for the calling strategy
	 * @return uint256 The amount of credit available
	 */
	function creditAvailable() external view returns (uint256) {
		return VaultStrategiesLib.creditAvailable(msg.sender);
	}

	/**
	 * @notice Gets the outstanding debt for a specific strategy
	 * had to rename to debtOutstandingForStrategy due to TypeChain bug which does not allow overloading
	 * @param strategy The address of the strategy
	 * @return uint256 The amount of outstanding debt
	 */
	function debtOutstandingForStrategy(address strategy) external view returns (uint256) {
		return VaultStrategiesLib.debtOutstanding(strategy);
	}

	/**
	 * @notice Gets the outstanding debt for the calling strategy
	 * @return uint256 The amount of outstanding debt
	 */
	function debtOutstanding() external view returns (uint256) {
		return VaultStrategiesLib.debtOutstanding(msg.sender);
	}

	/**
	 * @notice Sets the emergency shutdown status of the vault
	 * In the extreme scenario that the Vault needs to be put into "Emergency Exit"
	 * mode in order for it to exit all strategies as quickly as possible. This scenario
	 * could be for any reason that is considered "critical" that the Strategies
	 * exits its position as fast as possible, such as a sudden change in market
	 * conditions leading to losses, or an imminent failure in an external dependency.
	 * @param shutdown True to activate emergency shutdown, false to deactivate
	 */
	function setEmergencyShutdown(bool shutdown) external {
		VaultStrategiesLib.setEmergencyShutdown(shutdown);
	}

	/**
	 * @notice Converts an amount of ETH to the equivalent amount of want token
	 * @param amount The amount of ETH to convert
	 * @param wethAddress The address of the WETH contract
	 * @return uint256 The equivalent amount in want token
	 */
	function ethToWant(uint256 amount, address wethAddress) external view returns (uint256) {
		return VaultStrategiesLib.ethToWant(amount, wethAddress, msg.sender);
	}
}
