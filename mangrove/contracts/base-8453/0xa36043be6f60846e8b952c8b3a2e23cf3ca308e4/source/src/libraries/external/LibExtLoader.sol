// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

// assuming the contract is implmenting eip2330 style ext load functions

library LibExtLoader {
  /// @dev error signature: 0xadc986ae
  error ExtLoadFailed();

  /// @dev function exttload(bytes32 slot) external view returns (bytes32 value);
  uint256 private constant _EXT_TLOAD_SIGNATURE = 0xf135baaa;
  /// @dev function extsload(bytes32 slot) external view returns (bytes32 value);
  uint256 private constant _EXT_SLOAD_SIGNATURE = 0x1e2eaeaf;

  /// @notice Reads a transient storage slot value according to EIP-2330
  /// @param target The target contract to load the value from.
  /// @param slot The slot to read.
  /// @return result The value at the given slot.
  function tload(address target, uint256 slot) internal view returns (uint256 result) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x00, _EXT_TLOAD_SIGNATURE)
      mstore(0x20, slot)
      if iszero(staticcall(gas(), target, 0x1c, 0x24, 0x00, 0x20)) {
        mstore(0x00, 0xadc986ae) // ExtLoadFailed()
        revert(0x1c, 0x04)
      }
      result := mload(0x00)
    }
  }

  /// @notice Reads a storage slot value according to EIP-2330
  /// @param target The target contract to load the value from.
  /// @param slot The slot to read.
  /// @return result The value at the given slot.
  function sload(address target, uint256 slot) internal view returns (uint256 result) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x00, _EXT_SLOAD_SIGNATURE)
      mstore(0x20, slot)
      if iszero(staticcall(gas(), target, 0x1c, 0x24, 0x00, 0x20)) {
        mstore(0x00, 0xadc986ae) // ExtLoadFailed()
        revert(0x1c, 0x04)
      }
      result := mload(0x00)
    }
  }
}
