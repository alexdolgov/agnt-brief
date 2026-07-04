// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title LibBit
/// @notice Bit-level utilities for counting trailing zeros and manipulating bits.
/// @dev Implementations are inspired by Solady (`https://github.com/Vectorized/solady`).
library LibBit {
  /// @notice Returns the index of the least-significant set bit in `x`.
  /// @dev Uses a De Bruijn-like lookup. If `x` is 0, returns 256.
  /// @param x The input value to inspect.
  /// @return r The index of the lowest set bit in `x`.
  function ctz(uint256 x) internal pure returns (uint256 r) {
    /// @solidity memory-safe-assembly
    assembly {
      // Isolate the least significant bit.
      x := and(x, add(not(x), 1))
      // For the upper 3 bits of the result, use a De Bruijn-like lookup.
      // Credit to adhusson: https://blog.adhusson.com/cheap-find-first-set-evm/
      // forgefmt: disable-next-item
      r := shl(5, shr(252, shl(shl(2, shr(250, mul(x,
                0xb6db6db6ddddddddd34d34d349249249210842108c6318c639ce739cffffffff))),
                0x8040405543005266443200005020610674053026020000107506200176117077)))
      // For the lower 5 bits of the result, use a De Bruijn lookup.
      // forgefmt: disable-next-item
      r := or(r, byte(and(div(0xd76453e0, shr(r, x)), 0x1f),
                0x001f0d1e100c1d070f090b19131c1706010e11080a1a141802121b1503160405))
    }
  }

  /// @notice Toggles the bit at position `pos` in `x`.
  /// @param x The input bitfield.
  /// @param pos The bit position to flip (0-based).
  /// @return r The result with the bit flipped.
  function flipBit(uint256 x, uint256 pos) internal pure returns (uint256 r) {
    /// @solidity memory-safe-assembly
    assembly {
      r := xor(x, shl(pos, 1))
    }
  }

  /// @notice Returns whether the bit at position `pos` in `x` is set.
  /// @param x The input bitfield.
  /// @param pos The bit position to test (0-based).
  /// @return r True if the bit is set, false otherwise.
  function isActive(uint256 x, uint256 pos) internal pure returns (bool r) {
    /// @solidity memory-safe-assembly
    assembly {
      r := and(shr(pos, x), 1)
    }
  }

  /// @notice Sets or clears the bit at position `pos` in `x` to `value`.
  /// @param x The input bitfield.
  /// @param pos The bit position to update (0-based).
  /// @param value The boolean value to set at `pos`.
  /// @return r The updated bitfield.
  function setBit(uint256 x, uint256 pos, bool value) internal pure returns (uint256 r) {
    /// @solidity memory-safe-assembly
    assembly {
      r := or(and(x, not(shl(pos, 1))), shl(pos, value))
    }
  }

  /// @notice Returns `y` if both `x` and `y` are non-zero; otherwise returns 0.
  /// @dev Branchless selection; inspired by Solady-style idioms.
  /// @param x Control value.
  /// @param y Value returned when both `x` and `y` are non-zero.
  /// @return r `y` if `x` and `y` are non-zero; otherwise 0.
  function decoalesce(uint256 x, uint256 y) internal pure returns (uint256 r) {
    /// @solidity memory-safe-assembly
    assembly {
      r := mul(y, and(gt(x, 0), gt(y, 0)))
    }
  }
}
