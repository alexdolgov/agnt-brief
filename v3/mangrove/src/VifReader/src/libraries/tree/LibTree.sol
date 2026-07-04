// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibBit} from "../LibBit.sol";
import {LibFlags} from "./LibFlags.sol";

/// @title LibTree
/// @notice Three-level compressed bitmap for tracking active indices (root/level1/level2).
/// @dev Storage layout per market:
/// - root: 256-bit word at `tree.slot`
/// - level1: 256 contiguous 256-bit words at `tree.slot + 1 + rootIndex`
/// - level2: 256×256 contiguous 256-bit words at
///   `tree.slot + 257 + rootIndex * 256 + level1Index`
///
/// Each word is a 256-bit bitmap where bit `i` signals activity for index `i`.
/// A full 24-bit index is encoded as: `(rootIndex << 16) | (level1Index << 8) | level2Index`.
///
/// Traversal uses `ctz` to find the next least-significant set bit and bit flips to advance.
/// `Cursor` carries the current three bitmaps and a packed `flags` word (see `LibFlags`).
/// @dev In an environment where tick spacing is not 1, the max populated index will be type(uint24).max / tickSpacing rounded towards 0.
library LibTree {
  using LibBit for uint256;
  using LibFlags for uint256;
  using LibTree for *;

  /// @dev tree length 65793 = 1 + 256 + 256 * 256

  /**
   * @dev The tree slot of (`market`) is given by:
   * ```
   *     mstore(0x20, _TREE_SEED)
   *     mstore(0x00, market)
   *     let treeSlot := keccak256(0x00, 0x40)
   * ```
   */
  uint256 private constant _TREE_SEED = 0x6d61706c65203a206d6178656e636572622e6574682062697274682074726565;

  /// @dev Tree storage.
  /// @dev this should be used in a mapping, not directly
  /// @dev this will use the give slot as well as the following 256 + 256 * 256 (65,792) slots
  struct Tree {
    uint256 spacer;
  }

  /// @notice In-memory traversal state for the tree.
  /// @dev Holds the current bitmaps and the packed indices/dirty flags in `flags`.
  struct Cursor {
    uint256 root;
    uint256 level1;
    uint256 level2;
    uint256 flags;
  }

  /// @notice Returns the storage pointer for a market's tree.
  /// @param marketId The market identifier.
  /// @return _tree A storage reference to the tree.
  function treeFor(bytes32 marketId) internal pure returns (Tree storage _tree) {
    assembly {
      mstore(0x20, _TREE_SEED)
      mstore(0x00, marketId)
      _tree.slot := keccak256(0x00, 0x40)
    }
  }

  /// @notice Loads the root bitmap.
  /// @param self The tree storage reference.
  /// @return r The 256-bit root bitmap.
  function root(Tree storage self) internal view returns (uint256 r) {
    /// @solidity memory-safe-assembly
    assembly {
      r := sload(self.slot)
    }
  }

  /// @notice Stores the root bitmap.
  /// @param self The tree storage reference.
  /// @param root_ The new root bitmap value.
  function setRoot(Tree storage self, uint256 root_) internal {
    /// @solidity memory-safe-assembly
    assembly {
      sstore(self.slot, root_)
    }
  }

  /// @notice Loads the level1 bitmap for `rootIndex`.
  /// @param self The tree storage reference.
  /// @param rootIndex The root index in [0, 255].
  /// @return r The 256-bit level1 bitmap.
  function level1(Tree storage self, uint8 rootIndex) internal view returns (uint256 r) {
    /// @solidity memory-safe-assembly
    assembly {
      r := sload(add(self.slot, add(1, rootIndex)))
    }
  }

  /// @notice Stores the level1 bitmap for `rootIndex`.
  /// @param self The tree storage reference.
  /// @param rootIndex The root index in [0, 255].
  /// @param level1_ The new level1 bitmap value.
  function setLevel1(Tree storage self, uint8 rootIndex, uint256 level1_) internal {
    /// @solidity memory-safe-assembly
    assembly {
      sstore(add(self.slot, add(1, rootIndex)), level1_)
    }
  }

  /// @notice Loads the level2 bitmap for (`rootIndex`, `level1Index`).
  /// @param self The tree storage reference.
  /// @param rootIndex The root index in [0, 255].
  /// @param level1Index The level1 index in [0, 255].
  /// @return r The 256-bit level2 bitmap.
  function level2(Tree storage self, uint8 rootIndex, uint8 level1Index) internal view returns (uint256 r) {
    /// @solidity memory-safe-assembly
    assembly {
      r := sload(add(self.slot, add(add(257, mul(rootIndex, 256)), level1Index)))
    }
  }

  /// @notice Stores the level2 bitmap for (`rootIndex`, `level1Index`).
  /// @param self The tree storage reference.
  /// @param rootIndex The root index in [0, 255].
  /// @param level1Index The level1 index in [0, 255].
  /// @param level2_ The new level2 bitmap value.
  function setLevel2(Tree storage self, uint8 rootIndex, uint8 level1Index, uint256 level2_) internal {
    /// @solidity memory-safe-assembly
    assembly {
      sstore(add(self.slot, add(add(257, mul(rootIndex, 256)), level1Index)), level2_)
    }
  }

  /// @notice Returns a cursor at the smallest active index, if any.
  /// @param tree The tree storage reference.
  /// @return cursor The initialized cursor at the first index.
  /// @return found True if an active index exists.
  function first(LibTree.Tree storage tree) internal view returns (Cursor memory cursor, bool found) {
    unchecked {
      cursor.root = tree.root();
      uint256 _rootIndex = cursor.root.ctz();
      if (_rootIndex < 256) {
        // forge-lint: disable-next-line(unsafe-typecast)
        cursor.level1 = tree.level1(uint8(_rootIndex));
        // assumed to be lower than 256 since branch is active
        uint256 _level1Index = cursor.level1.ctz();

        // forge-lint: disable-next-line(unsafe-typecast)
        cursor.level2 = tree.level2(uint8(_rootIndex), uint8(_level1Index));
        // assumed to be lower than 256 since branch is active
        uint256 _level2Index = cursor.level2.ctz();

        cursor.flags = (_rootIndex << 16) | (_level1Index << 8) | _level2Index;
        found = true;
      }
    }
  }

  /// @notice Advances a cursor to the next active index and persists necessary writes.
  /// @dev Writes zeros when abandoning empty subtrees and marks dirty bits for a final flush.
  /// @param self The current cursor.
  /// @param tree The tree storage reference.
  /// @return found True if a next index exists.
  function next(Cursor memory self, LibTree.Tree storage tree) internal returns (bool found) {
    unchecked {
      (uint8 rootIndex, uint8 level1Index, uint8 level2Index) = self.flags.indexes();

      // remove the current index and get the next smallest index
      self.level2 = self.level2.flipBit(level2Index);
      self.flags = self.flags.setLevel2Dirty(true);
      uint256 nextIndex2 = self.level2.ctz();

      // if no index is found, go up the tree
      if (nextIndex2 == 256) {
        // write the 0 to the abandoned level2 before moving up
        tree.setLevel2(rootIndex, level1Index, 0);
        self.flags = self.flags.setLevel2Dirty(false);

        // remove the current branch and get the next smallest index
        self.level1 = self.level1.flipBit(level1Index);
        self.flags = self.flags.setLevel1Dirty(true);
        uint256 nextIndex1 = self.level1.ctz();

        // if no index is found, go up the tree
        if (nextIndex1 == 256) {
          // write the 0 to the abandoned level1 before moving up
          tree.setLevel1(rootIndex, 0);
          self.flags = self.flags.setLevel1Dirty(false);

          // remove the current branch and get the next smallest index
          self.root = self.root.flipBit(rootIndex);
          self.flags = self.flags.setRootDirty(true);
          uint256 nextRootIndex = self.root.ctz();

          // if no index is found, there is no remaining offers to consume
          if (nextRootIndex == 256) return false;

          // save the next root index
          // forge-lint: disable-next-line(unsafe-typecast)
          rootIndex = uint8(nextRootIndex);
          // get the next smallest index at level 1
          self.level1 = tree.level1(rootIndex);
          nextIndex1 = self.level1.ctz();
        }
        // save the next level1 index
        // forge-lint: disable-next-line(unsafe-typecast)
        level1Index = uint8(nextIndex1);
        // get the next smallest index at level 2
        self.level2 = tree.level2(rootIndex, level1Index);
        nextIndex2 = self.level2.ctz();
      }

      // save the next level2 index
      // forge-lint: disable-next-line(unsafe-typecast)
      level2Index = uint8(nextIndex2);
      self.flags = self.flags.setIndexes(rootIndex, level1Index, level2Index);
      found = true;
    }
  }

  /// @notice Flushes pending cursor writes to storage based on dirty flags.
  /// @param self The cursor whose state to flush.
  /// @param tree The tree storage reference.
  function flush(Cursor memory self, LibTree.Tree storage tree) internal {
    unchecked {
      (uint8 rootIndex, uint8 level1Index,) = self.flags.indexes();
      (bool rootDirty, bool level1Dirty, bool level2Dirty) = self.flags.dirtyIndexes();
      if (rootDirty) tree.setRoot(self.root);
      if (level1Dirty) tree.setLevel1(rootIndex, self.level1);
      if (level2Dirty) tree.setLevel2(rootIndex, level1Index, self.level2);
    }
  }

  /// @notice Marks a 24-bit index as active (sets the corresponding bits).
  /// @param tree The tree storage reference.
  /// @param _index Packed 24-bit index: `(root<<16)|(level1<<8)|level2`.
  function setIndexActive(LibTree.Tree storage tree, uint24 _index) internal {
    unchecked {
      Cursor memory cursor;
      cursor.flags = _index;
      (uint8 rootIndex, uint8 level1Index, uint8 level2Index) = cursor.flags.indexes();
      // get the root, level1, and level2 for the index
      cursor.root = tree.root();
      cursor.level1 = tree.level1(rootIndex);
      cursor.level2 = tree.level2(rootIndex, level1Index);

      // if the level index is not active, flip it and set the dirty flag
      if (!cursor.root.isActive(rootIndex)) {
        cursor.root = cursor.root.flipBit(rootIndex);
        cursor.flags = cursor.flags.setRootDirty(true);
      }
      if (!cursor.level1.isActive(level1Index)) {
        cursor.level1 = cursor.level1.flipBit(level1Index);
        cursor.flags = cursor.flags.setLevel1Dirty(true);
      }
      if (!cursor.level2.isActive(level2Index)) {
        cursor.level2 = cursor.level2.flipBit(level2Index);
        cursor.flags = cursor.flags.setLevel2Dirty(true);
      }

      // flush the cursor to the tree
      cursor.flush(tree);
    }
  }

  /// @notice Removes a 24-bit index (clears the corresponding bits and prunes empty subtrees).
  /// @param tree The tree storage reference.
  /// @param _index Packed 24-bit index: `(root<<16)|(level1<<8)|level2`.
  function removeIndex(LibTree.Tree storage tree, uint24 _index) internal {
    unchecked {
      Cursor memory cursor;
      cursor.flags = _index;
      (uint8 rootIndex, uint8 level1Index, uint8 level2Index) = cursor.flags.indexes();

      // get the level2 bitmap
      cursor.level2 = tree.level2(rootIndex, level1Index);

      // if the level2 index is not active, the index is already removed
      if (!cursor.level2.isActive(level2Index)) return;

      // flip the level2 index
      cursor.level2 = cursor.level2.flipBit(level2Index);
      cursor.flags = cursor.flags.setLevel2Dirty(true);
      // if level2 is now zero, remove the level1 bit above
      if (cursor.level2 == 0) {
        cursor.level1 = tree.level1(rootIndex).flipBit(level1Index);
        cursor.flags = cursor.flags.setLevel1Dirty(true);
        // if level1 is now zero, remove the root bit above
        if (cursor.level1 == 0) {
          cursor.root = tree.root().flipBit(rootIndex);
          cursor.flags = cursor.flags.setRootDirty(true);
        }
      }

      // flush the cursor to the tree
      cursor.flush(tree);
    }
  }

  /// @notice Returns the packed 24-bit index from a cursor.
  /// @param self The cursor.
  /// @return r The packed index: `(root<<16)|(level1<<8)|level2`.
  function index(Cursor memory self) internal pure returns (uint24 r) {
    unchecked {
      r = uint24(self.flags & 0xffffff);
    }
  }
}
