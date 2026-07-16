// SPDX-License-Identifier: MIT
pragma solidity >=0.8.29 <0.9.0;

/// @title ICustomStrategyHelper
/// @notice Interface for custom strategy withdrawal helpers
/// @dev Implementations generate calldata for CustomStrategy.submitExecution()
///      to withdraw funds from external protocols back to the strategy's idle balance
interface ICustomStrategyHelper {
    /// @notice Generate calldata to withdraw funds from external protocols to strategy's idle balance
    /// @param strategy The custom strategy address
    /// @param amount The desired withdrawal amount in denomination token
    /// @return targets Array of target addresses for submitExecution
    /// @return calldatas Array of encoded function calls for submitExecution
    function getWithdrawCalldata(
        address strategy,
        uint256 amount
    ) external view returns (address[] memory targets, bytes[] memory calldatas);
}
