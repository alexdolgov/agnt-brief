// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {DispatchResult} from "../../libraries/periphery/Types.sol";

/// @title IVifRouter
/// @notice Router interface for the Vif protocol.
/// @dev Handles the execution of commands, this should be designed as a pausable contract, and be ownable for this sole purpose.
interface IVifRouter {
  /// @notice Execute a set of commands with the given arguments.
  /// @param commands The commands to execute.
  /// @param args The arguments to the commands.
  /// @return result The result of the commands.
  function execute(bytes calldata commands, bytes[] calldata args)
    external
    payable
    returns (DispatchResult[] memory result);

  /// @notice Execute a set of commands with the given arguments and a deadline.
  /// @param commands The commands to execute.
  /// @param args The arguments to the commands.
  /// @param deadline The deadline for the transaction.
  /// @return result The result of the commands.
  function execute(bytes calldata commands, bytes[] calldata args, uint256 deadline)
    external
    payable
    returns (DispatchResult[] memory result);

  /// @notice Set the paused state of the router (owner-only).
  /// @param paused The new paused state.
  function setPaused(bool paused) external;

  /// @notice Returns whether the router is paused.
  /// @return result True if paused.
  function isPaused() external view returns (bool result);
}
