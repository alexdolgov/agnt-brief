// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";
import {LibBit} from "../LibBit.sol";
import {LibFlags} from "../tree/LibFlags.sol";

library LibTreeExt {
  using LibBit for uint256;
  using LibExtLoader for address;
  using LibFlags for uint256;
  using LibTreeExt for *;

  /**
   * @dev The tree slot of (`market`) is given by:
   * ```
   *     mstore(0x20, _TREE_SEED)
   *     mstore(0x00, market)
   *     let treeSlot := keccak256(0x00, 0x40)
   * ```
   */
  uint256 private constant _TREE_SEED = 0x6d61706c65203a206d6178656e636572622e6574682062697274682074726565;

  struct Tree {
    address target;
    uint256 baseSlot;
  }

  struct Cursor {
    uint256 root;
    uint256 level1;
    uint256 level2;
    uint256 flags;
  }

  /// @notice Returns the tree for `marketId` from the target contract.
  /// @param target The target contract to load the tree from.
  /// @param marketId The id of the market to load.
  /// @return _tree The loaded tree.
  function treeFor(address target, bytes32 marketId) internal pure returns (Tree memory _tree) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(_tree, target)
      mstore(0x20, _TREE_SEED)
      mstore(0x00, marketId)
      mstore(add(_tree, 0x20), keccak256(0x00, 0x40))
    }
  }

  /// @notice Returns the root of the tree.
  /// @param self The tree storage reference.
  /// @return r The root of the tree.
  function root(Tree memory self) internal view returns (uint256) {
    return self.target.sload(self.baseSlot);
  }

  /// @notice Returns the level1 of the tree.
  /// @param self The tree storage reference.
  /// @param rootIndex The index of the root.
  /// @return r The level1 of the tree.
  function level1(Tree memory self, uint8 rootIndex) internal view returns (uint256) {
    return self.target.sload(self.baseSlot + 1 + rootIndex);
  }

  /// @notice Returns the level2 of the tree.
  /// @param self The tree storage reference.
  /// @param rootIndex The index of the root.
  /// @param level1Index The index of the level1.
  /// @return r The level2 of the tree.
  function level2(Tree memory self, uint8 rootIndex, uint8 level1Index) internal view returns (uint256) {
    return self.target.sload(self.baseSlot + 257 + rootIndex * 256 + level1Index);
  }

  /// @notice Returns the first cursor of the tree.
  /// @param tree The tree storage reference.
  /// @return cursor The first cursor of the tree.
  /// @return found True if the first cursor is found.
  function first(Tree memory tree) internal view returns (Cursor memory cursor, bool found) {
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

  /// @notice Returns the first index after `_index`.
  /// @dev If the index passed is active, it will return the same index.
  /// @param self The tree storage reference.
  /// @param _index The index to start from.
  /// @return cursor The first cursor after the index.
  /// @return found True if the first cursor after the index is found.
  function firstAfter(Tree memory self, uint24 _index) internal view returns (Cursor memory cursor, bool found) {
    unchecked {
      cursor.flags = _index;
      (uint8 rootIndex, uint8 level1Index, uint8 level2Index) = cursor.flags.indexes();

      // remove all previous bits and set the current bit
      cursor.root = ((self.root() >> rootIndex) | 0x01) << rootIndex;
      cursor.level1 = ((self.level1(rootIndex) >> level1Index) | 0x01) << level1Index;
      cursor.level2 = (self.level2(rootIndex, level1Index) >> level2Index) << level2Index;

      // if the index on level 2 is already set, then we can return the current index
      if (cursor.level2.isActive(level2Index)) {
        found = true;
      } else {
        // active the index on level 2
        cursor.level2 = cursor.level2.flipBit(level2Index);
        // find the next index
        found = cursor.next(self);
      }
    }
  }

  /// @notice Returns the next cursor of the tree.
  /// @param self The cursor storage reference.
  /// @param tree The tree storage reference.
  /// @return found True if the next cursor is found.
  function next(Cursor memory self, Tree memory tree) internal view returns (bool found) {
    unchecked {
      (uint8 rootIndex, uint8 level1Index, uint8 level2Index) = self.flags.indexes();

      // remove the current index and get the next smallest index
      self.level2 = self.level2.flipBit(level2Index);
      uint256 nextIndex2 = self.level2.ctz();

      // if no index is found, go up the tree
      if (nextIndex2 == 256) {
        // remove the current branch and get the next smallest index
        self.level1 = self.level1.flipBit(level1Index);
        uint256 nextIndex1 = self.level1.ctz();

        // if no index is found, go up the tree
        if (nextIndex1 == 256) {
          // remove the current branch and get the next smallest index
          self.root = self.root.flipBit(rootIndex);
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

  /// @notice Returns the index of the cursor.
  /// @param self The cursor storage reference.
  /// @return r The index of the cursor.
  function index(Cursor memory self) internal pure returns (uint24) {
    unchecked {
      return uint24(self.flags & 0xffffff);
    }
  }
}
