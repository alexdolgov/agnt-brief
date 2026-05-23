// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title LibLock
/// @notice Transaction-scoped flag that marks the flash accounting context.
/// @dev Uses EIP-1153 transient storage. Functions that rely on flash accounting
/// must be invoked while locked. This is NOT a reentrancy guard.
library LibLock {
  /// @notice Thrown when attempting to acquire the lock while it is already held.
  error Locked();
  /// @notice Thrown when an operation requires the lock but it is not held.
  error NotLocked();

  /// @notice Transient slot holding the lock flag.
  uint256 private constant LOCK_SLOT = 0x6d6178656e636572622e6574682069732074686520736f6c6520617574686f72;

  /// @notice Enter the flash accounting context (acquire the transient lock).
  /// @dev Reverts with `Locked()` if already locked.
  function lock() internal {
    /// @solidity memory-safe-assembly
    assembly {
      if tload(LOCK_SLOT) {
        mstore(0x00, 0x0f2e5b6c) // `Locked()`.
        revert(0x1c, 0x04)
      }
      tstore(LOCK_SLOT, caller())
    }
  }

  /// @notice Exit the flash accounting context (release the transient lock).
  function unlock() internal {
    /// @solidity memory-safe-assembly
    assembly {
      if iszero(tload(LOCK_SLOT)) {
        mstore(0x00, 0x1834e265) // `NotLocked()`.
        revert(0x1c, 0x04)
      }
      tstore(LOCK_SLOT, 0)
    }
  }

  /// @notice Ensures the flash accounting context is active.
  /// @dev Reverts with `NotLocked()` if not locked, or if the caller is not the same as the lock holder.
  function checkLocked() internal view {
    /// @solidity memory-safe-assembly
    assembly {
      if iszero(eq(tload(LOCK_SLOT), caller())) {
        mstore(0x00, 0x1834e265) // `NotLocked()`.
        revert(0x1c, 0x04)
      }
    }
  }
}
