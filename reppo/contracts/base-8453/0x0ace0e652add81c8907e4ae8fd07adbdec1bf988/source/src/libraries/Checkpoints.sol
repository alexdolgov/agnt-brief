// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/structs/Checkpoints.sol)
// This file was procedurally generated from scripts/generate/templates/Checkpoints.js.

pragma solidity ^0.8.20;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {Balance} from "../base/VeReppo/PointsTracker.sol";

/**
 * @dev This library defines the `Trace*` struct, for checkpointing values as they change at different points in
 * time, and later looking up past values by block number. See {Votes} as an example.
 *
 * To create a history of checkpoints define a variable type `Checkpoints.Trace*` in your contract, and store a new
 * checkpoint for the current transaction block using the {push} function.
 */
library Checkpoints {
    /**
     * @dev A value was attempted to be inserted on a past checkpoint.
     */
    error CheckpointUnorderedInsertion();

    struct Trace {
        Checkpoint[] _checkpoints;
    }

    struct Checkpoint {
        uint48 timestamp;
        Balance balance;
    }

    /**
     * @dev Pushes a (`key`, `value`) pair into a Trace so that it is stored as the checkpoint.
     *
     * Returns previous value and new value.
     *
     * IMPORTANT: Never accept `key` as a user input, since an arbitrary `type(uint256).max` key set will disable the
     * library.
     */
    function push(Trace storage self, uint48 timestamp, Balance memory balance)
        internal
        returns (Balance memory oldBalance, Balance memory newBalance)
    {
        return _insert(self._checkpoints, timestamp, balance);
    }

    /**
     * @dev Returns the value in the first (oldest) checkpoint with key greater or equal than the search key, or zero if
     * there is none.
     */
    function lowerLookup(Trace storage self, uint48 timestamp) internal view returns (Balance memory balance) {
        uint256 len = self._checkpoints.length;
        uint256 pos = _lowerBinaryLookup(self._checkpoints, timestamp, 0, len);
        return pos == len ? Balance(0, 0) : _unsafeAccess(self._checkpoints, pos).balance;
    }

    /**
     * @dev Returns the value in the last (most recent) checkpoint with key lower or equal than the search key, or zero
     * if there is none.
     */
    function upperLookup(Trace storage self, uint48 timestamp) internal view returns (Balance memory balance) {
        uint256 len = self._checkpoints.length;
        uint256 pos = _upperBinaryLookup(self._checkpoints, timestamp, 0, len);
        return pos == 0 ? Balance(0, 0) : _unsafeAccess(self._checkpoints, pos - 1).balance;
    }

    /**
     * @dev Returns the value in the last (most recent) checkpoint with key lower or equal than the search key, or zero
     * if there is none.
     *
     * NOTE: This is a variant of {upperLookup} that is optimised to find "recent" checkpoint (checkpoints with high
     * keys).
     */
    function upperLookupRecent(Trace storage self, uint48 timestamp) internal view returns (Balance memory balance) {
        uint256 len = self._checkpoints.length;

        uint256 low = 0;
        uint256 high = len;

        if (len > 5) {
            uint256 mid = len - Math.sqrt(len);
            if (timestamp < _unsafeAccess(self._checkpoints, mid).timestamp) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }

        uint256 pos = _upperBinaryLookup(self._checkpoints, timestamp, low, high);

        return pos == 0 ? Balance(0, 0) : _unsafeAccess(self._checkpoints, pos - 1).balance;
    }

    /**
     * @dev Returns the value in the most recent checkpoint, or zero if there are no checkpoints.
     */
    function latest(Trace storage self) internal view returns (Balance memory balance) {
        uint256 pos = self._checkpoints.length;
        return pos == 0 ? Balance(0, 0) : _unsafeAccess(self._checkpoints, pos - 1).balance;
    }

    /**
     * @dev Returns whether there is a checkpoint in the structure (i.e. it is not empty), and if so the key and value
     * in the most recent checkpoint.
     */
    function latestCheckpoint(Trace storage self)
        internal
        view
        returns (bool exists, uint48 timestamp, Balance memory balance)
    {
        uint256 pos = self._checkpoints.length;
        if (pos == 0) {
            return (false, 0, Balance(0, 0));
        } else {
            Checkpoint storage ckpt = _unsafeAccess(self._checkpoints, pos - 1);
            return (true, ckpt.timestamp, ckpt.balance);
        }
    }

    /**
     * @dev Returns the number of checkpoint.
     */
    function length(Trace storage self) internal view returns (uint256) {
        return self._checkpoints.length;
    }

    /**
     * @dev Returns checkpoint at given position.
     */
    function at(Trace storage self, uint256 pos) internal view returns (Checkpoint memory) {
        return self._checkpoints[pos];
    }

    /**
     * @dev Pushes a (`key`, `value`) pair into an ordered list of checkpoints, either by inserting a new checkpoint,
     * or by updating the last one.
     */
    function _insert(Checkpoint[] storage self, uint48 timestamp, Balance memory balance)
        private
        returns (Balance memory oldBalance, Balance memory newBalance)
    {
        uint256 pos = self.length;

        if (pos > 0) {
            Checkpoint storage last = _unsafeAccess(self, pos - 1);
            uint256 lastBlockNumber = last.timestamp;
            Balance memory lastValue = last.balance;

            // Checkpoint keys must be non-decreasing.
            if (lastBlockNumber > timestamp) {
                revert CheckpointUnorderedInsertion();
            }

            // Update or push new checkpoint
            if (lastBlockNumber == timestamp) {
                last.balance = balance;
            } else {
                self.push(Checkpoint({timestamp: timestamp, balance: balance}));
            }
            return (lastValue, balance);
        } else {
            self.push(Checkpoint({timestamp: timestamp, balance: balance}));
            return (Balance(0, 0), balance);
        }
    }

    /**
     * @dev Return the index of the first (oldest) checkpoint with key strictly bigger than the search key, or `high`
     * if there is none. `low` and `high` define a section where to do the search, with inclusive `low` and exclusive
     * `high`.
     *
     * WARNING: `high` should not be greater than the array's length.
     */
    function _upperBinaryLookup(Checkpoint[] storage self, uint48 timestamp, uint256 low, uint256 high)
        private
        view
        returns (uint256)
    {
        while (low < high) {
            uint256 mid = Math.average(low, high);
            if (_unsafeAccess(self, mid).timestamp > timestamp) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }
        return high;
    }

    /**
     * @dev Return the index of the first (oldest) checkpoint with key greater or equal than the search key, or `high`
     * if there is none. `low` and `high` define a section where to do the search, with inclusive `low` and exclusive
     * `high`.
     *
     * WARNING: `high` should not be greater than the array's length.
     */
    function _lowerBinaryLookup(Checkpoint[] storage self, uint48 timestamp, uint256 low, uint256 high)
        private
        view
        returns (uint256)
    {
        while (low < high) {
            uint256 mid = Math.average(low, high);
            if (_unsafeAccess(self, mid).timestamp < timestamp) {
                low = mid + 1;
            } else {
                high = mid;
            }
        }
        return high;
    }

    /**
     * @dev Access an element of the array without performing bounds check. The position is assumed to be within bounds.
     */
    function _unsafeAccess(Checkpoint[] storage self, uint256 pos) private pure returns (Checkpoint storage result) {
        assembly {
            mstore(0, self.slot)
            // the checkpoint takes up 3 storage slots (uint48 timestamp, uint256 points, uint256 relockingAmount), therefore the position is multiplied by 3
            result.slot := add(keccak256(0, 0x20), mul(pos, 3))
        }
    }
}
