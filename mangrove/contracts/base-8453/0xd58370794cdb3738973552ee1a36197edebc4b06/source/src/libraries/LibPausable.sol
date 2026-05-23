// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title LibPausable
library LibPausable {
  /// @notice Thrown when the contract is paused.
  error Paused();

  /// @notice Emitted when the paused state of the contract is set.
  /// @param paused The new paused state.
  event SetPaused(bool paused);

  /// @dev keccak256("SetPaused(bool)")
  uint256 private constant _SET_PAUSED_EVENT_SIGNATURE =
    0x3c70af01296aef045b2f5c9d3c30b05d4428fd257145b9c7fcd76418e65b5980;

  /// @notice The slot of the paused flag.
  uint256 private constant _PAUSED_SLOT = 0x6e65766572207061757365206d6178656e636572622e65746820616e79776179;

  /// @notice Pauses the contract.
  function setPaused(bool paused) internal {
    /// @solidity memory-safe-assembly
    assembly {
      sstore(_PAUSED_SLOT, iszero(iszero(paused)))
      mstore(0x00, paused)
      log1(0x00, 0x20, _SET_PAUSED_EVENT_SIGNATURE)
    }
  }

  /// @notice reverts if the contract is paused.
  function checkNotPaused() internal view {
    /// @solidity memory-safe-assembly
    assembly {
      if sload(_PAUSED_SLOT) {
        mstore(0x00, 0x9e87fac8) // `Paused()`.
        revert(0x1c, 0x04)
      }
    }
  }

  /// @notice Returns whether the contract is paused.
  /// @return result True if paused.
  function isPaused() internal view returns (bool result) {
    /// @solidity memory-safe-assembly
    assembly {
      result := sload(_PAUSED_SLOT)
    }
  }
}
