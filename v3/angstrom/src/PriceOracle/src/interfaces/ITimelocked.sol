// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

/// @title ITimelocked
/// @notice Interface for the Timelocked vault submodule.
interface ITimelocked {
    /// @notice Mapping: function selector => timelock delay in seconds
    function timelockDelay(
        bytes4 functionSelector
    ) external view returns (uint256);

    /// @notice Mapping: action => UTC timestamp at which the action becomes executable
    /// @dev A return value of zero indicates that the action is not queued in the timelock
    function actionExecutableAt(
        bytes calldata action
    ) external view returns (uint256);
}
