// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title IExtLoad
/// @notice Interface for loading storage and transient storage slots according to EIP-2330
/// @dev Provides standardized methods to read from storage and transient storage
interface IExtLoad {
  /// @notice Reads a transient storage slot value according to EIP-2330
  /// @param slot The storage slot to read
  /// @return value The 32-byte value at the given slot
  /// @dev function signature: 0xf135baaa
  function exttload(bytes32 slot) external view returns (bytes32 value);

  /// @notice Reads a storage slot value according to EIP-2330
  /// @param slot The storage slot to read
  /// @return value The 32-byte value at the given slot
  /// @dev function signature: 0x1e2eaeaf
  function extsload(bytes32 slot) external view returns (bytes32 value);
}
