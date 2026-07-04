// SPDX-License-Identifier: MIT
pragma solidity >=0.6.11 <0.9;

/// @notice Interface for Autopilot SystemRegistry.sol contract.
interface IAutopilotSystemRegistry {
  
  /// @notice Check if an additional contract of type is valid in the system
  /// @return True if the contract is a valid for the given type
  function isValidContract(bytes32 contractType, address contractAddress) external view returns (bool);
}