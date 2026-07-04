// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { BalanceDelta, toBalanceDelta } from "@uniswap/v4-core/src/types/BalanceDelta.sol";

/// @notice Pure helpers for extracting amounts from BalanceDelta
library BalanceDeltaLib {
  /// @notice Extract positive amounts from BalanceDelta
  /// @dev Used for negative deltas (from mint) or positive deltas (from burn)
  ///      No need to clamp to 0 - caller ensures delta is non-negative in desired direction
  /// @param delta The BalanceDelta to extract from
  /// @return amount0 The amount0 value cast to uint128
  /// @return amount1 The amount1 value cast to uint128
  function getPositiveAmounts(BalanceDelta delta) internal pure returns (uint128 amount0, uint128 amount1) {
    amount0 = uint128(delta.amount0());
    amount1 = uint128(delta.amount1());
  }

  /// @notice Lane-wise negate of a BalanceDelta
  /// @dev Avoids cross-lane borrow from packed two's-complement negation.
  function neg(BalanceDelta delta) internal pure returns (BalanceDelta) {
    return toBalanceDelta(-delta.amount0(), -delta.amount1());
  }

  /// @notice Check whether both lanes are zero (sentinel)
  function isZero(BalanceDelta delta) internal pure returns (bool) {
    return delta.amount0() == 0 && delta.amount1() == 0;
  }

  /// @notice Lane-wise absolute value
  function abs(BalanceDelta delta) internal pure returns (BalanceDelta) {
    int128 a0 = delta.amount0();
    int128 a1 = delta.amount1();
    return toBalanceDelta(a0 < 0 ? -a0 : a0, a1 < 0 ? -a1 : a1);
  }

  /// @notice Construct BalanceDelta from signed lane values
  function fromInt(int128 amount0, int128 amount1) internal pure returns (BalanceDelta) {
    return toBalanceDelta(amount0, amount1);
  }

  /// @notice Construct BalanceDelta from unsigned lane values
  function fromUint(uint128 amount0, uint128 amount1) internal pure returns (BalanceDelta) {
    // Ensure values fit in int128; tests should only pass safe ranges
    require(amount0 <= uint128(uint128(type(int128).max)), "amount0 too large");
    require(amount1 <= uint128(uint128(type(int128).max)), "amount1 too large");
    // Safe two-step cast: uint128 -> uint256 -> int256 -> int128
    // forge-lint: disable-next-line(unsafe-typecast) -- amounts validated to fit in int128 by require checks above
    return toBalanceDelta(int128(int256(uint256(amount0))), int128(int256(uint256(amount1))));
  }

  /// @notice Return lanes as a tuple for convenience
  function toTuple(BalanceDelta delta) internal pure returns (int128 amount0, int128 amount1) {
    amount0 = delta.amount0();
    amount1 = delta.amount1();
  }
}
