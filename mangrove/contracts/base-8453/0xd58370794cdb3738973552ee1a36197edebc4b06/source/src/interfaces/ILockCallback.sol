// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

interface ILockCallback {
  /// @notice Callback function to be implemented by the caller.
  /// @param data The data passed to the callback.
  /// @return result The result of the callback.
  function lockCallback(bytes calldata data) external returns (bytes memory result);
}
