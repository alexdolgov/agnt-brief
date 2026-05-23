// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {IExtLoad} from "../interfaces/eip2330/IExtLoad.sol";

/// @title ExtLoader
/// @notice The contract implementing the IExtLoad interface.
/// @dev Implements the IExtLoad interface.
/// @dev Handles the loading of transient and storage slots according to EIP-2330.
contract ExtLoader is IExtLoad {
  /// @inheritdoc IExtLoad
  function exttload(bytes32) external view returns (bytes32) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x00, tload(calldataload(0x04)))
      return(0x00, 0x20)
    }
  }

  /// @inheritdoc IExtLoad
  function extsload(bytes32) external view returns (bytes32) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x00, sload(calldataload(0x04)))
      return(0x00, 0x20)
    }
  }
}
