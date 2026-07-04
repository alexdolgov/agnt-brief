// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibBit} from "../LibBit.sol";

/// @title LibFlags
/// @notice Packed flags for a three-level tree index and dirty markers.
/// @dev Layout (LSB → MSB):
/// - [0..7]   level2Index (uint8)
/// - [8..15]  level1Index (uint8)
/// - [16..23] rootIndex (uint8)
/// - [24]     rootDirty (bool)
/// - [25]     level1Dirty (bool)
/// - [26]     level2Dirty (bool)
/// Higher bits are reserved.
library LibFlags {
  using LibBit for uint256;
  using LibFlags for uint256;

  /// @notice Extracts the 3 tree indices from `flags`.
  /// @param flags The packed flags word.
  /// @return _rootIndex Root index [16..23].
  /// @return _level1Index Level-1 index [8..15].
  /// @return _level2Index Level-2 index [0..7].
  function indexes(uint256 flags) internal pure returns (uint8 _rootIndex, uint8 _level1Index, uint8 _level2Index) {
    /// @solidity memory-safe-assembly
    assembly {
      _level2Index := and(flags, 0xff)
      _level1Index := and(shr(8, flags), 0xff)
      _rootIndex := and(shr(16, flags), 0xff)
    }
  }

  /// @notice Sets the 3 tree indices in `flags`.
  /// @param flags The original flags word.
  /// @param _rootIndex Root index [16..23].
  /// @param _level1Index Level-1 index [8..15].
  /// @param _level2Index Level-2 index [0..7].
  /// @return r The updated flags word with indices set (other bits preserved).
  function setIndexes(uint256 flags, uint8 _rootIndex, uint8 _level1Index, uint8 _level2Index)
    internal
    pure
    returns (uint256 r)
  {
    /// @solidity memory-safe-assembly
    assembly {
      r := or(shl(16, _rootIndex), or(shl(8, _level1Index), _level2Index))
      r := or(and(flags, not(0xffffff)), r)
    }
  }

  /// @notice Returns the dirty markers contained in `flags`.
  /// @param flags The packed flags word.
  /// @return rootDirty Whether root is dirty (bit 24).
  /// @return level1Dirty Whether level-1 is dirty (bit 25).
  /// @return level2Dirty Whether level-2 is dirty (bit 26).
  function dirtyIndexes(uint256 flags) internal pure returns (bool rootDirty, bool level1Dirty, bool level2Dirty) {
    /// @solidity memory-safe-assembly
    assembly {
      rootDirty := and(flags, 0x1000000)
      level1Dirty := and(flags, 0x2000000)
      level2Dirty := and(flags, 0x4000000)
    }
  }

  /// @notice Sets the root dirty bit in `flags`.
  /// @param flags The packed flags word.
  /// @param dirty The desired boolean value.
  /// @return r The updated flags word.
  function setRootDirty(uint256 flags, bool dirty) internal pure returns (uint256 r) {
    unchecked {
      r = flags.setBit(24, dirty);
    }
  }

  /// @notice Sets the level-1 dirty bit in `flags`.
  /// @param flags The packed flags word.
  /// @param dirty The desired boolean value.
  /// @return r The updated flags word.
  function setLevel1Dirty(uint256 flags, bool dirty) internal pure returns (uint256 r) {
    unchecked {
      r = flags.setBit(25, dirty);
    }
  }

  /// @notice Sets the level-2 dirty bit in `flags`.
  /// @param flags The packed flags word.
  /// @param dirty The desired boolean value.
  /// @return r The updated flags word.
  function setLevel2Dirty(uint256 flags, bool dirty) internal pure returns (uint256 r) {
    unchecked {
      r = flags.setBit(26, dirty);
    }
  }
}
