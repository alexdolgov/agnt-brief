// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/automation/AutomationCompatible.sol";
import "../../altitude-v2/contracts/interfaces/internal/misc/incentives/rebalance/IRebalanceIncentivesController.sol";

/// @title RebalanceAutomation
/// @author Altitude Labs
/// @notice Chainlink Automation-compatible contract for rebalancing incentives
/// @dev Implements the AutomationCompatibleInterface to allow Chainlink nodes to check and perform rebalances

/// @dev This contract checks if the rebalance incentives controller can rebalance and performs the rebalance if needed
contract RebalanceAutomation is AutomationCompatibleInterface {

    /// @notice Chainlink Automation-compatible check
    /// @dev Chainlink nodes call this off-chain to decide if upkeep is needed
    /// @param checkData Encoded address of the RebalanceIncentivesController
    /// @return upkeepNeeded Boolean indicating if upkeep is needed
    /// @return performData Encoded address of the RebalanceIncentivesController to be used in performUpkeep
    function checkUpkeep(bytes calldata checkData) external view override returns (bool upkeepNeeded, bytes memory performData) {
        address _target = abi.decode(checkData, (address));
        upkeepNeeded = IRebalanceIncentivesController(_target).canRebalance();
        performData = abi.encode(_target);
    }

    /// @notice Chainlink Automation-compatible perform
    /// @dev Called on-chain if checkUpkeep returns true
    /// @param performData Encoded address of the RebalanceIncentivesController to be used for rebalancing
    /// @dev Reverts if the rebalance is not needed
    function performUpkeep(bytes calldata performData) external override {
        address _target = abi.decode(performData, (address));
        IRebalanceIncentivesController(_target).rebalance();
    }
}
