// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";

library LibFeesExt {
  using LibExtLoader for address;

  /**
   * @dev The fees slot of (`token`) is given by:
   * ```
   *     mstore(0x20, _FEES_SEED)
   *     mstore(0x1c, token)
   *     let feesSlot := keccak256(0x20, 0x20)
   * ```
   * bytes4(keccak256("fees()"))
   */
  uint256 private constant _FEES_SEED = 0x9af1d35a;

  /// @notice Returns the fees for `token` from the target contract.
  /// @param target The target contract to load the fees from.
  /// @param token The token whose fees are returned.
  /// @return result The fees for `token`.
  function fees(address target, address token) internal view returns (uint256) {
    uint256 slot;
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _FEES_SEED)
      mstore(0x1c, token)
      slot := keccak256(0x20, 0x20)
    }
    return target.sload(slot);
  }
}
