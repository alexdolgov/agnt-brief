// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol';

/**
 * @title StructuredLinkedList
 * @author Vittorio Minacori (https://github.com/vittominacori)
 * @dev An utility library for working with sorted linked list data structures in your Solidity project.
 */
library StructuredLinkedList {
  struct CancelWithdrawCheckPointData {
    uint256 CanceledAmount;
  }
  struct Node {
    uint256 id;
    CancelWithdrawCheckPointData value;
  }
  struct List {
    uint256 size;
    mapping(uint256 => mapping(bool => Node)) list;
  }

  uint256 private constant _NULL = 0;
  uint256 private constant _HEAD = 0;

  bool private constant _PREV = false;
  bool private constant _NEXT = true;

  /**
   * @dev Insert node `_new` beside existing node `_node` in direction `_PREV`.
   * @param self the list to insert into.
   * @param _node Existing node.
   * @param _new New node to insert.
   */
  function insertBefore(List storage self, Node memory _node, Node memory _new) internal {
    _insert(self, _node, _new, _PREV);
  }

  /**
   * @dev create a new node form `_id` and `_value` and insert it at the correct position in the list to keep it sorted based on the node id.
   * @param self the list to insert into.
   * @param _id Value to seek.
   * @param _value Value to insert.
   */
  function insert(
    List storage self,
    uint256 _id,
    CancelWithdrawCheckPointData memory _value
  ) internal {
    insertBefore(self, getSortedSpot(self, _id), Node(_id, _value));
  }

  /**
   * @dev Checks if the node exists.
   * @param self the list to insert into.
   * @param _node A node to search for.
   * @return bool True if node exists, false otherwise.
   */
  function nodeExists(List storage self, uint256 _node) internal view returns (bool) {
    if (self.list[_node][_PREV].id == _HEAD && self.list[_node][_NEXT].id == _HEAD) {
      return (self.list[_HEAD][_NEXT].id == _node);
    } else {
      return true;
    }
  }

  /**
   * @dev Returns the number of elements in the list.
   * @param self the list to insert into.
   * @return uint256 The size of the list.
   */
  function sizeOf(List storage self) internal view returns (uint256) {
    return self.size;
  }

  function accumulateValue(
    List storage self,
    uint256 fromID,
    uint256 toID
  ) internal view returns (uint256) {
    uint256 result = 0;
    uint256 currentID = fromID;
    while (currentID <= toID) {
      if (!nodeExists(self, currentID)) {
        currentID++;
        continue;
      }
      Node memory node = get(self, currentID);
      result += node.value.CanceledAmount;
      (, Node memory nextNode) = getAdjacent(self, currentID, _NEXT);
      if (nextNode.id == _HEAD || nextNode.id == currentID) {
        break;
      }
      currentID = nextNode.id;
    }
    return result;
  }

  /**
   * @dev Returns the node with id `_id`.
   * @param self the list to insert into.
   * @param _id The id of the node to be returned.
   * @return node The Node with id `_id`.
   */
  function get(List storage self, uint256 _id) internal view returns (Node memory node) {
    (bool found, Node memory prev) = getAdjacent(self, _id, _PREV);
    if (!found) {
      return Node(0, CancelWithdrawCheckPointData({ CanceledAmount: 0 }));
    }
    (, node) = getAdjacent(self, prev.id, _NEXT);
  }

  /**
   * @dev Returns the link of a node `_node` in direction `_direction`.
   * @param self the list to insert into.
   * @param _node Id of the node to step from.
   * @param _direction Direction to step in.
   * @return bool, uint256 True if node exists or false otherwise, node in _direction.
   */
  function getAdjacent(
    List storage self,
    uint256 _node,
    bool _direction
  ) internal view returns (bool, Node memory) {
    if (!nodeExists(self, _node)) {
      return (false, Node(0, CancelWithdrawCheckPointData({ CanceledAmount: 0 })));
    } else {
      return (true, self.list[_node][_direction]);
    }
  }

  /**
   * @dev returns the position that when the node with id `_id` should be inserted before to keep the list sorted.
   * @param self the list to insert into.
   * @param _id Value to seek.
   * @return Node The spot node.
   */
  function getSortedSpot(List storage self, uint256 _id) internal view returns (Node memory) {
    if (sizeOf(self) == 0) {
      return Node(0, CancelWithdrawCheckPointData({ CanceledAmount: 0 }));
    }

    Node memory next;
    (, next) = getAdjacent(self, _HEAD, _NEXT);
    while ((next.id != 0) && ((_id < next.id) != _NEXT)) {
      next = self.list[next.id][_NEXT];
    }
    return next;
  }

  /**
   * @dev Insert node `_new` beside existing node `_node` in direction `_direction`.
   * @param self the list to insert into.
   * @param _node Existing node.
   * @param _new New node to insert.
   * @param _direction Direction to insert node in.
   */
  function _insert(
    List storage self,
    Node memory _node,
    Node memory _new,
    bool _direction
  ) private {
    if (!nodeExists(self, _new.id) && nodeExists(self, _node.id)) {
      _createLink(self, _new, self.list[_node.id][_direction], _direction);
      _createLink(self, _node, _new, _direction);

      self.size += 1;
    }
  }

  /**
   * @dev Creates a bidirectional link between two nodes on direction `_direction`.
   * @param self the list to insert into.
   * @param _node Existing node.
   * @param _link Node to link to in the _direction.
   * @param _direction Direction to insert node in.
   */
  function _createLink(
    List storage self,
    Node memory _node,
    Node memory _link,
    bool _direction
  ) private {
    self.list[_link.id][!_direction] = _node;
    self.list[_node.id][_direction] = _link;
  }
}

library Checkpoints {
  using StructuredLinkedList for StructuredLinkedList.List;
  struct ProcessWithdrawTracer {
    // CheckpointElement[] _checkpoints;
    mapping(uint256 => ProcessWithdrawCheckpointElement) _checkpoints;
    uint256 _checkpointsLength;
  }
  struct ProcessWithdrawCheckPointData {
    uint256 Rate;
  }

  struct ProcessWithdrawCheckPointExchanges {
    uint256 exchangesIndex;
    ProcessWithdrawCheckPointData _value;
  }
  struct ProcessWithdrawCheckpointElement {
    uint256 exchangesLength;
    uint256 LastID;
    mapping(uint256 => ProcessWithdrawCheckPointExchanges) exchangesIndex;
  }

  /**
   * @dev Pushes a new checkpoint to the ProcessWithdrawTracer.
   * @param self The ProcessWithdrawTracer.
   * @param LastID The last ID of the checkpoint.
   * @param value The value of the checkpoint.
   * @notice The `LastID` of the checkpoint must be greater than the `LastID` of the last checkpoint.
   */
  function push(
    ProcessWithdrawTracer storage self,
    uint256 LastID,
    uint256 exchangesIndex,
    ProcessWithdrawCheckPointData memory value
  ) internal {
    _insert(self, LastID, exchangesIndex, value);
  }

  /**
   * @dev Returns the value of the checkpoint with the `LastID` that is less than or equal to the given `key`.
   * @param self The ProcessWithdrawTracer.
   * @param key The key to search for.
   * @return The value of the checkpoint.
   * @notice If the given `key` is less than the `LastID` of the first checkpoint, the function returns the default value of the checkpoint.
   */
  function upperLookup(
    ProcessWithdrawTracer storage self,
    uint256 key,
    uint256 exchangesIndex
  ) internal view returns (ProcessWithdrawCheckPointData memory) {
    uint256 pos = _lowerBinaryLookup(self, key, 0, self._checkpointsLength);
    if (pos == self._checkpointsLength) return ProcessWithdrawCheckPointData({ Rate: 0 });
    else {
      if (self._checkpoints[pos].LastID < key)
        return self._checkpoints[pos].exchangesIndex[self._checkpoints[pos].exchangesLength]._value;
      else if (self._checkpoints[pos].LastID > key)
        return self._checkpoints[pos].exchangesIndex[0]._value;
      // if same LastID then find the exchange
      uint256 exchangePos = _lowerBinaryLookupForExchanges(
        self,
        pos,
        0,
        self._checkpoints[pos].exchangesLength,
        exchangesIndex
      );
      if (exchangePos == self._checkpoints[pos].exchangesLength)
        return ProcessWithdrawCheckPointData({ Rate: 0 });
      return self._checkpoints[pos].exchangesIndex[exchangePos]._value;
    }
  }

  /**
   * @dev Inserts a new checkpoint to the ProcessWithdrawTracer.
   * @param self The ProcessWithdrawTracer.
   * @param key The last ID of the checkpoint.
   * @param value The value of the checkpoint.
   * @notice The `LastID` of the checkpoint must be greater than the `LastID` of the last checkpoint.
   */
  function _insert(
    ProcessWithdrawTracer storage self,
    uint256 key,
    uint256 exchangesIndex,
    ProcessWithdrawCheckPointData memory value
  ) private {
    uint256 pos = self._checkpointsLength;
    uint256 lastExchangesIndex;
    if (pos > 0) {
      uint256 lastID;
      if (exchangesIndex == 0) {
        lastExchangesIndex = self
          ._checkpoints[pos - 1]
          .exchangesIndex[self._checkpoints[pos - 1].exchangesLength - 1]
          .exchangesIndex;
        lastID = self._checkpoints[pos - 1].LastID;
      } else {
        lastExchangesIndex = self
          ._checkpoints[pos]
          .exchangesIndex[exchangesIndex - 1]
          .exchangesIndex;
        lastID = self._checkpoints[pos].LastID;
      }
      // Checkpoint keys must be non-decreasing.
      require(
        lastID < key || (lastID == key && lastExchangesIndex <= exchangesIndex),
        'key must be increasing'
      );
      // Update or push new checkpoint
      if (lastID == key) {
        self
          ._checkpoints[pos - 1]
          .exchangesIndex[self._checkpoints[pos - 1].exchangesLength - 1]
          ._value = value;
      } else {
        push(
          self,
          key,
          ProcessWithdrawCheckPointExchanges({ exchangesIndex: exchangesIndex, _value: value })
        );
      }
    } else {
      push(
        self,
        key,
        ProcessWithdrawCheckPointExchanges({
          exchangesIndex: exchangesIndex,
          _value: ProcessWithdrawCheckPointData({ Rate: value.Rate })
        })
      );
    }
  }

  /**
   * @dev Returns the index of the checkpoint with the lowest `LastID` that is greater than or equal to the given `key`.
   * @param self The ProcessWithdrawTracer.
   * @param key The key to search for.
   * @param low The lower bound of the search.
   * @param high The upper bound of the search.
   * @return The index of the checkpoint.
   * @notice If the given `key` is less than the `LastID` of the first checkpoint, the function returns 0.
   */
  function _lowerBinaryLookup(
    ProcessWithdrawTracer storage self,
    uint256 key,
    uint256 low,
    uint256 high
  ) private view returns (uint256) {
    while (low < high) {
      uint256 mid = MathUpgradeable.average(low, high);
      if (self._checkpoints[mid].LastID <= key) {
        low = mid + 1;
      } else {
        high = mid;
      }
    }
    return high;
  }

  function _lowerBinaryLookupForExchanges(
    ProcessWithdrawTracer storage self,
    uint256 key,
    uint256 low,
    uint256 high,
    uint256 exchangesIndex
  ) private view returns (uint256) {
    while (low < high) {
      uint256 mid = MathUpgradeable.average(low, high);
      if (self._checkpoints[key].exchangesIndex[mid].exchangesIndex <= exchangesIndex) {
        low = mid + 1;
      } else {
        high = mid;
      }
    }
    return high;
  }

  /**
   * @dev Pushes a new checkpoint to the ProcessWithdrawTracer.
   * @param self The ProcessWithdrawTracer.
   * @param value The value of the checkpoint.
   * @return The value of the checkpoint.
   */
  function push(
    ProcessWithdrawTracer storage self,
    uint256 lastID,
    ProcessWithdrawCheckPointExchanges memory value
  ) private returns (ProcessWithdrawCheckPointExchanges memory) {
    uint256 pos = self._checkpointsLength;
    uint256 exchangePos = self._checkpoints[pos].exchangesLength;
    self._checkpoints[pos].LastID = lastID;
    self._checkpoints[pos].exchangesIndex[exchangePos] = value;
    self._checkpointsLength = pos + 1;
    self._checkpoints[pos].exchangesLength = exchangePos + 1;
    return value;
  }

  /**
   * @dev Pushes a new checkpoint to the StructuredLinkedList.
   * @param self The StructuredLinkedList.
   * @param LastID The last ID of the checkpoint.
   * @param value The value of the checkpoint.
   * @notice The `LastID` of the checkpoint must be greater than the `LastID` of the last checkpoint.
   */
  function push(
    StructuredLinkedList.List storage self,
    uint256 LastID,
    StructuredLinkedList.CancelWithdrawCheckPointData memory value
  ) internal {
    self.insert(LastID, value);
  }

  /**
   * @dev Returns the value of the checkpoint with the `LastID` that is less than or equal to the given `key`.
   * @param self The StructuredLinkedList.
   * @param key The key to search for.
   * @return The value of the checkpoint.
   * @notice If the given `key` is less than the `LastID` of the first checkpoint, the function returns the default value of the checkpoint.
   */
  function upperLookup(
    StructuredLinkedList.List storage self,
    uint256 key
  ) internal view returns (StructuredLinkedList.CancelWithdrawCheckPointData memory) {
    int256 l = -1;
    int256 r = int256(self.sizeOf()) - 1;
    while (l < r) {
      int256 mid = (l + r + 1) / 2;
      if (self.get(uint256(mid)).id <= key) {
        l = mid;
      } else {
        r = mid - 1;
      }
    }
    return self.get(uint256(l)).value;
  }

  function lowerLookup(
    StructuredLinkedList.List storage self,
    uint256 key
  ) internal view returns (StructuredLinkedList.CancelWithdrawCheckPointData memory) {
    int256 l = 0;
    int256 r = int256(self.sizeOf());
    while (l < r) {
      int256 mid = (l + r) / 2;
      if (self.get(uint256(mid)).id < key) {
        l = mid + 1;
      } else {
        r = mid;
      }
    }
    return self.get(uint256(l)).value;
  }

  function accumulateValue(
    StructuredLinkedList.List storage self,
    uint256 fromID,
    uint256 toID
  ) internal view returns (uint256) {
    return self.accumulateValue(fromID, toID);
  }

  function get(
    StructuredLinkedList.List storage self,
    uint256 _id
  ) internal view returns (StructuredLinkedList.CancelWithdrawCheckPointData memory) {
    return self.get(_id).value;
  }
}
