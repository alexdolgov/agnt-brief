// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";

library LibPausableExt {
  using LibExtLoader for address;

  /// @notice The slot of the paused flag.
  uint256 private constant _PAUSED_SLOT = 0x6e65766572207061757365206d6178656e636572622e65746820616e79776179;

  /// @notice Returns whether the contract is paused.
  /// @param target The target contract to check.
  /// @return result True if the contract is paused.
  function isPaused(address target) internal view returns (bool result) {
    result = target.sload(_PAUSED_SLOT) > 0;
  }
}
