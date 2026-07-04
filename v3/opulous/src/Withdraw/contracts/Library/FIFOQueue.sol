// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import '@openzeppelin/contracts/utils/math/SafeCast.sol';
import 'hardhat/console.sol';

library FIFOQueue {
  struct Exchange {
    uint256 LPAmount;
    uint256 Rate;
    bool processed;
  }
  struct WithdrawItem {
    address userWallet;
    Exchange[] exchanges;
    uint256 entryTime;
    uint256 accumulatedLPAmount;
    uint128 ID;
  }
  struct WithdrawDeque {
    int128 QueueBegin;
    int128 QueueEnd;
    mapping(int128 => WithdrawItem) _data;
  }

  error QueueIsEmpty();
  error OutOfBounds();
  error ItemAlreadyProcessed();
  error ItemNotFound();

  function initialize(WithdrawDeque storage deque) internal {
    deque.QueueBegin = 1;
    deque.QueueEnd = 1;
  }

  /**
   * @dev Adds a new item to the queue.
   * @param deque The queue.
   * @param LPAmount The amount of LP tokens to be withdrawn.
   * @param accumulatedLPAmount The accumulated amount of LP tokens to be withdrawn.
   * @return ID The ID of the new item.
   * @notice The `accumulatedLPAmount` of the new item must be greater than the `accumulatedLPAmount` of the last item.
   */

  function addToQueue(
    WithdrawDeque storage deque,
    uint256 LPAmount,
    uint256 accumulatedLPAmount
  ) internal returns (uint256 ID) {
    int128 backIndex = deque.QueueEnd;
    deque._data[backIndex].userWallet = msg.sender;
    deque._data[backIndex].exchanges.push(
      Exchange({ LPAmount: LPAmount, processed: false, Rate: 0 })
    );
    deque._data[backIndex].entryTime = block.timestamp;
    deque._data[backIndex].ID = uint128(backIndex);
    deque._data[backIndex].accumulatedLPAmount = accumulatedLPAmount;
    unchecked {
      deque.QueueEnd = backIndex + 1;
    }
    ID = SafeCast.toUint256(backIndex);
  }

  /**
   * @dev Removes an item from the queue.
   * @param deque The queue.
   * @param ID The ID of the item to be removed.
   * @return LPAmount The amount of LP tokens to be withdrawn.
   * @notice The item must not be processed.
   */
  function removeFromQueue(
    WithdrawDeque storage deque,
    uint256 ID
  ) internal returns (uint256 LPAmount, bool doNotDelete) {
    if (emptyQueue(deque)) revert QueueIsEmpty();
    WithdrawItem storage value = deque._data[SafeCast.toInt128(int256(ID))];
    for (uint256 i = 0; i < value.exchanges.length; i++) {
      if (value.exchanges[i].processed == false) {
        LPAmount += value.exchanges[i].LPAmount;
        delete value.exchanges[i];
      } else {
        doNotDelete = true;
      }
    }
  }

  /**
   * @dev Moves the beginning of the queue to a new value.
   * @param deque The queue.
   * @param newValue The new value.
   * @notice The `newValue` must be less than or equal to the `QueueEnd`.
   */
  function moveBeginningOfQueue(WithdrawDeque storage deque, uint256 newValue) internal {
    if (emptyQueue(deque)) revert QueueIsEmpty();
    int128 _newValue = SafeCast.toInt128(int256(newValue));
    if (_newValue > deque.QueueEnd) revert OutOfBounds();
    deque.QueueBegin = SafeCast.toInt128(int256(_newValue));
  }

  /**
   * @dev Updates an item in the queue.
   * @param deque The queue.
   * @param ID The ID of the item to be updated.
   * @param ItemNonProcessedLP The amount of LP tokens to be withdrawn.
   * @return LeftOverLPAmount The leftover amount of LP tokens to be withdrawn.
   * @notice The item must not be processed.
   */
  function updateItem(
    WithdrawDeque storage deque,
    uint256 ID,
    uint256 ItemNonProcessedLP,
    uint256 CurrentRate
  ) internal returns (uint256 LeftOverLPAmount, uint256 lastExchangeIndex) {
    if (emptyQueue(deque)) revert QueueIsEmpty();
    WithdrawItem storage item = deque._data[SafeCast.toInt128(int256(ID))];
    lastExchangeIndex = item.exchanges.length - 1;
    Exchange storage lastExchange = item.exchanges[lastExchangeIndex];

    if (lastExchange.processed) revert ItemAlreadyProcessed();
    // If the item covers the amount, mark it as processed and return 0
    if (ItemNonProcessedLP == 0) {
      lastExchange.processed = true;
      lastExchange.Rate = CurrentRate;
      return (0, lastExchangeIndex);
    }

    if (lastExchange.LPAmount > ItemNonProcessedLP) {
      // If the item covers more than the amount, split it into two items
      lastExchange.LPAmount -= ItemNonProcessedLP;
      lastExchange.processed = true;
      lastExchange.Rate = CurrentRate;
      item.exchanges.push(Exchange({ LPAmount: ItemNonProcessedLP, processed: false, Rate: 0 }));
    } else if (lastExchange.LPAmount == ItemNonProcessedLP) {
      // If the item covers exactly the amount, mark it as processed
      lastExchange.processed = true;
      lastExchange.Rate = CurrentRate;
    } else {
      // If the item covers less than the amount, mark it as processed and return the leftover amount
      LeftOverLPAmount = ItemNonProcessedLP - lastExchange.LPAmount;
      lastExchange.processed = true;
      lastExchange.Rate = CurrentRate;
    }
  }

  /**
   * @dev Finds the last item in the queue that covers the given amount.
   * @param deque The queue.
   * @param accumulatedLPAmount The accumulated amount of LP tokens to be withdrawn.
   * @return The ID of the last item that covers the given amount.
   * @notice The `accumulatedLPAmount` must be less than or equal to the `accumulatedLPAmount` of the last item.
   */
  function findLastCoveringItem(
    WithdrawDeque storage deque,
    uint256 accumulatedLPAmount
  ) internal view returns (uint256) {
    int128 low = deque.QueueBegin;
    int128 high = deque.QueueEnd;
    while (low < high) {
      int128 mid = low + (high - low) / 2;
      WithdrawItem storage item = deque._data[mid];

      if (item.accumulatedLPAmount >= accumulatedLPAmount) {
        // If the amount covers, move right to find the last item that it covers
        high = mid;
      } else {
        // If not, move left in the deque
        low = mid + 1;
      }
    }
    if (deque._data[high].accumulatedLPAmount < accumulatedLPAmount) revert ItemNotFound();
    return uint128(high);
  }

  /**
   * @dev Returns the item at the given index.
   * @param deque The queue.
   * @param index The index of the item.
   * @return value The item at the given index.
   * @notice The `index` must be less than the `QueueEnd`.
   */
  function at(
    WithdrawDeque storage deque,
    int128 index
  ) internal view returns (WithdrawItem storage value) {
    if (index >= deque.QueueEnd) revert OutOfBounds();
    return deque._data[index];
  }

  /**
   * @dev Returns the item with the given ID.
   * @param deque The queue.
   * @param ID The ID of the item.
   * @return value The item with the given ID.
   * @notice The `ID` must be less than or equal to the `QueueEnd`.
   */
  function get(
    WithdrawDeque storage deque,
    uint256 ID
  ) internal view returns (WithdrawItem storage value) {
    int128 idx = SafeCast.toInt128(SafeCast.toInt256(ID));
    if (idx > deque.QueueEnd) revert OutOfBounds();
    return deque._data[idx];
  }

  /**
   * @dev Returns whether the queue is empty.
   * @param deque The queue.
   * @return Whether the queue is empty.
   */
  function emptyQueue(WithdrawDeque storage deque) internal view returns (bool) {
    return deque.QueueEnd <= deque.QueueBegin;
  }
}
