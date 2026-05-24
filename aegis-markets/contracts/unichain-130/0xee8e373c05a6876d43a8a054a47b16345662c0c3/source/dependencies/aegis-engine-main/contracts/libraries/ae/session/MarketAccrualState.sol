// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";

/// @notice Tracks whether a market has accrued interest within the current AE session.
library MarketAccrualState {
  // bytes32(uint256(keccak256("Aegis.Accrued")) - 1)
  bytes32 internal constant BASE_SLOT = 0x21dc2aafbaff3c22cadb95fe7d065fcd291a5ddc25d588c7fcefd6ae2c3c0daf;

  function slot(PoolId id) internal pure returns (bytes32 slotKey) {
    slotKey = keccak256(abi.encodePacked(BASE_SLOT, PoolId.unwrap(id)));
  }

  function mark(PoolId id) internal {
    bytes32 slotKey = slot(id);
    assembly ("memory-safe") {
      tstore(slotKey, true)
    }
  }

  function isMarked(PoolId id) internal view returns (bool marked) {
    bytes32 slotKey = slot(id);
    assembly ("memory-safe") {
      marked := tload(slotKey)
    }
  }
}
