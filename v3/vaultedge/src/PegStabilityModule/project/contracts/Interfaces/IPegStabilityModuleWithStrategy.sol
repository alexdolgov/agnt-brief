// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

import { IDebtToken } from "./IDebtToken.sol";
import { IPegStabilityModulePriceProtection } from "./IPegStabilityModulePriceProtection.sol";
import { ITimelockable2Step } from "./ITimelockable2Step.sol";

import { IPSMStrategy } from "./IPSMStrategy.sol";

/// @title IPegStabilityModuleWithStrategy
/// @notice Interface for PSM with external yield strategy support
/// @dev Inherits ITimelockable2Step - setStrategy is protected by onlyTimelock
interface IPegStabilityModuleWithStrategy is ITimelockable2Step {
    /// @notice Current utilization cap for strategy exposure (1e18 = 100%)
    function strategyUtilizationCap() external view returns (uint256 utilizationCap);

    /// @notice Current utilization ratio of deployed strategy funds (1e18 = 100%)
    function strategyUtilization() external view returns (uint256 utilization);

    /// @notice Last peg token deposit amount into the strategy (not including harvested yield)
    function strategyPegTokenDeposits() external view returns (uint256 depositAmount);

    /// @notice Drift threshold that triggers rebalances (1e18 = 100%)
    function strategyRebalanceThreshold() external view returns (uint256 threshold);

    /// @notice Sets or clears the active strategy implementation (use address(0) to disable)
    /// @dev Can only be called by the timelock address (onlyTimelock modifier)
    function setStrategy(IPSMStrategy strategy) external;

    /// @notice Updates the utilization cap for strategy allocation (1e18 = 100%)
    function setStrategyUtilizationCap(uint256 utilizationCap) external;

    /// @notice Updates the utilization drift threshold that triggers rebalances (1e18 = 100%)
    function setStrategyRebalanceThreshold(uint256 newThreshold) external;

    /// @notice Harvests realized yield from the strategy into the PSM treasury policy
    function harvestStrategyYield() external;

    /// @notice Withdraws peg tokens from the strategy back to the PSM
    function withdrawFromStrategy(uint256 amount) external;

    /// @notice Deposits peg tokens from the PSM into the strategy
    function depositIntoStrategy(uint256 amount) external;

    /// @notice Aligns strategy holdings with the configured utilization cap
    function rebalanceStrategy() external;
}
