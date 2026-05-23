// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";

/// @notice Read-only external view into transient deltas using an EIP-2330 style loader.
/// Mimics the layout and behavior of `LibDeltas`, but reads state from a target contract
/// via `exttload` using `LibExtLoader`.
library LibDeltasExt {
  using LibExtLoader for address;

  /// @notice The slot of the deltas of the target contract.
  uint256 private constant DELTAS_SLOT = 0xcc263e4ff5555355de7add1bddab8dc0ce9bc67601caa5513579ca11cb397905;

  address internal constant NATIVE = address(0);

  /// @notice Returns the number of tokens with non-zero delta on the target.
  function deltasCount(address target) internal view returns (uint256 result) {
    result = target.tload(DELTAS_SLOT);
  }

  /// @notice Computes the transient storage slot for a token's delta, mirroring `LibDeltas`.
  function _slot(address token) internal pure returns (uint256 result) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x00, token)
      mstore(0x20, DELTAS_SLOT)
      result := keccak256(0x00, 0x40)
    }
  }

  /// @notice Reads the delta for `token` from the target contract's transient storage.
  function deltaOf(address target, address token) internal view returns (int256 delta) {
    uint256 raw = target.tload(_slot(token));
    /// @solidity memory-safe-assembly
    assembly {
      delta := raw
    }
  }
}
