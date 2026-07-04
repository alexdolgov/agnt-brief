// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { DoubleEndedQueue } from "@openzeppelin/contracts/utils/structs/DoubleEndedQueue.sol";

/**
 * @title SlidingWindow: Performs rate limiting using a sliding window algorithm
 */
library SlidingWindow {
    uint256 constant SKIP_RATE_LIMIT_CHECK = 0;
    struct Storage {
        // Limit configuration
        LimitConfig limitConfig;
        // Current amount for the time period
        uint256 currentAmount;
        // Pointer for the latest transactions
        uint256 key;
        //Queue where the byte32 value is the key of the `transactions` map
        DoubleEndedQueue.Bytes32Deque queue;
        /**
         * Map of transactions.  This is separate from the `queue` since
         * `timestamp` and `amount` are 64 bytes total and therefore cannot be converted
         * into a byte32 element like is required in Bytes32Deque.
         * The key is tracked by the `queue` object.
         */
        mapping(uint256 => Transaction) transactions;
    }

    struct LimitConfig {
        // Limit per transaction
        uint256 limitAmountPerTx;
        // Limit per time period
        uint256 limitAmountPerTimePeriod;
        // Limit time period (in seconds)
        uint256 limitTimePeriod;
    }

    struct Transaction {
        uint256 timestamp;
        uint256 amount;
    }

    error RateLimitExceeded();
    error OldTimestamp(uint256 timestamp, uint256 expected);
    error ExceedsPerTransactionLimit(uint256 amount, uint256 limit);

    /**
     * @dev Uses a sliding window algorithm to determine if the new event is allowed or not.
     * High level steps:
     *   1. Iterate through queue and remove old events that are no longer in the window
     *   2. Recalculate `currentAmount` and check if the new event is allowed or not
     *   3. Add new event into the queue and update other variables
     *
     * @param timestamp Timestamp of the new event
     * @param amount Amount of the new event
     * @param swStorage Storage data specific to the sliding window check
     */
    function checkNewEvent(uint256 timestamp, uint256 amount, Storage storage swStorage) internal {
        //Limit time period of 0 is a special value indicating we should skip rate limit checking
        if (swStorage.limitConfig.limitTimePeriod == SKIP_RATE_LIMIT_CHECK) {
            return;
        }
        if (amount > swStorage.limitConfig.limitAmountPerTx) {
            revert ExceedsPerTransactionLimit(amount, swStorage.limitConfig.limitAmountPerTx);
        }
        uint256 currentAmountCache = swStorage.currentAmount;

        //Iterate through current window. Updates current amount and removes old events
        while (
            !DoubleEndedQueue.empty(swStorage.queue) &&
            timestamp - swStorage.transactions[uint256(DoubleEndedQueue.front(swStorage.queue))].timestamp >
            swStorage.limitConfig.limitTimePeriod
        ) {
            uint256 oldKey = uint256(DoubleEndedQueue.popFront(swStorage.queue));
            currentAmountCache -= swStorage.transactions[oldKey].amount;
            delete swStorage.transactions[oldKey]; //Removing old events refunds gas
        }

        //Recalculate amount and check if the new event is allowed or not
        uint256 totalAmount = currentAmountCache + amount;
        if (totalAmount > swStorage.limitConfig.limitAmountPerTimePeriod) {
            revert RateLimitExceeded();
        }

        //Add new event into the queue
        DoubleEndedQueue.pushBack(swStorage.queue, bytes32(swStorage.key));
        swStorage.transactions[swStorage.key] = Transaction(timestamp, amount);
        //Using unchecked as a gas optimization since this will never overflow
        unchecked {
            swStorage.key++;
        }
        swStorage.currentAmount = totalAmount;
    }

    /**
     * @dev Gets remaining amount that can be added for the window.
     * `timestamp` cannot be older than any events timestamp.
     * @param timestamp Timestamp to check remaining amount for
     * @param swStorage Storage data specific to the sliding window check
     */
    function getRemainingAmount(uint256 timestamp, Storage storage swStorage) internal view returns (uint256) {
        // Limit time period of 0 is a special value indicating we should skip rate limit checking
        if (swStorage.limitConfig.limitTimePeriod == SKIP_RATE_LIMIT_CHECK) {
            return type(uint256).max;
        }
        uint256 currentAmountCache = swStorage.currentAmount;

        //Return immediately if no events
        if (DoubleEndedQueue.empty(swStorage.queue)) {
            return swStorage.limitConfig.limitAmountPerTimePeriod;
        }

        uint256 latestTimestamp = swStorage.transactions[uint256(DoubleEndedQueue.back(swStorage.queue))].timestamp;
        if (latestTimestamp > timestamp) {
            revert OldTimestamp(timestamp, latestTimestamp);
        }

        uint256 oldKey = uint256(DoubleEndedQueue.front(swStorage.queue));

        //Iterate through current window.  Updates current amount without removing events.
        while (
            swStorage.transactions[oldKey].timestamp != 0 && //Checks we aren't out of events
            timestamp - swStorage.transactions[oldKey].timestamp >
            swStorage.limitConfig.limitTimePeriod
        ) {
            currentAmountCache -= swStorage.transactions[oldKey].amount;
            oldKey++;
        }

        return swStorage.limitConfig.limitAmountPerTimePeriod - currentAmountCache;
    }
}
