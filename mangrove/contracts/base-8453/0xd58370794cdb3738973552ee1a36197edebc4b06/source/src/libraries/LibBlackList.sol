// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title LibBlackList
library LibBlackList {
  /// @notice Thrown when a caller is blacklisted.
  /// @dev will be used on the lock itself
  error Blacklisted();

  /// @notice Emitted when a user is blacklisted.
  /// @param user The user who is blacklisted.
  /// @param value The value of the blacklisted flag.
  event SetBlacklisted(address indexed user, bool value);

  /**
   * @dev The black list slot of (`caller`) is given by:
   * ```
   *     mstore(0x20, caller)
   *     mstore(0x04, _BLACK_LIST_SEED)
   *     let blackListSlot := keccak256(0x20, 0x20)
   * ```
   * bytes4(keccak256("Blacklisted()"))
   */
  uint256 private constant _BLACK_LIST_SEED = 0x09550c77;

  /// @dev keccak256("SetBlacklisted(address,bool)")
  uint256 private constant _BLACK_LIST_EVENT_SIGNATURE =
    0x1419b35ce324d7ecb9c6de0a648dc50d3ea421644bddd98935012f8c4013e809;

  /// @notice Sets the blacklisted flag for (`user`).
  /// @param user The user to set the blacklisted flag for.
  /// @param value The value of the blacklisted flag.
  function setBlacklisted(address user, bool value) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, user)
      mstore(0x04, _BLACK_LIST_SEED)
      sstore(keccak256(0x20, 0x20), value)
      mstore(0x00, value)
      log2(0x00, 0x20, _BLACK_LIST_EVENT_SIGNATURE, user)
    }
  }

  /// @notice Reverts if the user is blacklisted.
  /// @param user The user to check the blacklisted flag for.
  function checkNotBlacklisted(address user) internal view {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, user)
      mstore(0x04, _BLACK_LIST_SEED)
      if sload(keccak256(0x20, 0x20)) {
        mstore(0x00, 0x09550c77) // Blacklisted()
        revert(0x1c, 0x04)
      }
    }
  }
}
