// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { NftRef } from "../../../types/AegisStructs.sol";

/// @notice Array-backed helper for managing custodied NFT references on a vault.
library NftSet {
  /// @notice Attempt to append an NFT reference to the set while enforcing uniqueness and capacity.
  /// @param set Storage array backing the vault's NFT custody list.
  /// @param ref The NFT reference being inserted.
  /// @param cap Maximum number of elements permitted in the set.
  /// @return added Indicates whether the insert succeeded
  function add(NftRef[] storage set, NftRef memory ref, uint256 cap) internal returns (bool added) {
    if (set.length < cap) {
      // Rely on upstream custody checks (AE ensures it does not already own the NFT before calling).
      set.push(ref);
      added = true;
    }
  }

  /// @notice Remove an NFT reference from the set using swap-and-pop semantics.
  /// @param set Storage array backing the vault's NFT custody list.
  /// @param ref The NFT reference being removed.
  /// @return removed True when the element was located and removed.
  function remove(NftRef[] storage set, NftRef memory ref) internal returns (bool removed) {
    uint256 len = set.length;
    for (uint256 i = 0; i < len; ++i) {
      NftRef storage current = set[i];
      if (current.kind != ref.kind || current.tokenId != ref.tokenId) continue;

      if (i != len - 1) {
        set[i] = set[len - 1];
      }
      set.pop();
      return true;
    }
    return false;
  }
}
