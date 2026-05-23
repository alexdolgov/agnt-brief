// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title LibDeltas
/// @notice Transient per-token debts/credits used to implement flash accounting.
/// @dev Uses EIP-1153 transient storage.
library LibDeltas {
  /// @notice Error thrown when deltas are not fully settled at the end of a lock.
  /// @dev Error signature: 0x21144228 (`DeltasNotSettled()`).
  error DeltasNotSettled();

  /// @notice Error thrown when a delta overflows.
  /// @dev Error signature: 0xea4527c8 (`DeltaOverflow()`).
  error DeltaOverflow();

  /**
   * @dev The transient storage slot for the deltas is given by:
   * ```
   *     mstore(0x20, _DELTAS_SEED)
   *     let slot := keccak256(0x00, 0x20)
   * ```
   * @dev The transient storage slot for the deltas of `token` is given by:
   * ```
   *     mstore(0x00, token)
   *     mstore(0x20, DELTAS_SLOT)
   *     let slot := keccak256(0x00, 0x40)
   * ```
   * keccak256("Deltas()")
   */
  uint256 private constant DELTAS_SLOT = 0xcc263e4ff5555355de7add1bddab8dc0ce9bc67601caa5513579ca11cb397905;

  /// @notice Sentinel for the native token (Ether) when tracking deltas.
  address internal constant NATIVE = address(0);

  /// @notice Reverts unless all deltas are settled (no outstanding per-token balances).
  /// @dev Checks the global counter of non-zero token deltas in transient storage.
  function ensureSettled() internal view {
    /// @solidity memory-safe-assembly
    assembly {
      if gt(tload(DELTAS_SLOT), 0) {
        mstore(0x00, 0x21144228) // `DeltasNotSettled()`.
        revert(0x1c, 0x04)
      }
    }
  }

  /// @notice Applies a signed `delta` to the transient balance of `token`.
  /// @dev Maintains a global count of tokens with non-zero deltas to enable
  /// branchless checks in {ensureSettled}. Increments the count when a per-token
  /// delta transitions from zero to non-zero, and decrements when it returns to zero.
  /// @param token The token whose transient delta to modify (`address(0)` for native).
  /// @param delta The signed change to apply to the current delta.
  function applyDelta(address token, int256 delta) internal {
    // bytes32 slot = _slot(token);
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x00, token)
      mstore(0x20, DELTAS_SLOT)
      let slot := keccak256(0x00, 0x40)
      let current := tload(slot)
      let next := add(current, delta)
      // if delta is positive and next is less than current, or delta is negative and next is greater than current, overflow
      if xor(slt(delta, 0), slt(next, current)) {
        mstore(0x00, 0xea4527c8) // `DeltaOverflow()`.
        revert(0x1c, 0x04)
      }
      // store the new value
      tstore(slot, next)
      // decrement if next value is zero
      // increment if previous value was zero
      let deltaDiff := sub(iszero(current), iszero(next))
      if deltaDiff {
        current := tload(DELTAS_SLOT)
        next := add(current, deltaDiff)
        // if deltaDiff is positive and next is less than current, or deltaDiff is negative and next is greater than current, overflow
        if xor(slt(deltaDiff, 0), lt(next, current)) {
          mstore(0x00, 0xea4527c8) // `DeltaOverflow()`.
          revert(0x1c, 0x04)
        }
        tstore(DELTAS_SLOT, next)
      }
    }
  }
}
