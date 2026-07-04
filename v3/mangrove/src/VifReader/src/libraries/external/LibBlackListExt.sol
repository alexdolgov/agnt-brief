// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";

library LibBlackListExt {
  using LibExtLoader for address;

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

  /// @notice Returns whether the user is blacklisted.
  /// @param target The target contract to load the blacklisted flag from.
  /// @param user The user to check the blacklisted flag for.
  /// @return result True if the user is blacklisted.
  function isBlacklisted(address target, address user) internal view returns (bool result) {
    uint256 slot;
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, user)
      mstore(0x04, _BLACK_LIST_SEED)
      slot := keccak256(0x20, 0x20)
    }
    result = target.sload(slot) > 0;
  }
}
