// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { Types } from "../shared/Types.sol";

/**
 * @title IQueue
 * @author Rain Team
 * @notice Interface for managing and querying the activity queue.
 * @dev Provides view functions to access queue state, filter active items, and perform queue cleanup operations. The
 * activity queue tracks both termination markets and threshold positions, allowing external consumers to monitor
 * ongoing activities across market types. Includes opportunistic cleanup mechanisms to maintain queue health without
 * dedicated maintenance calls.
 */
interface IQueue {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Performs queue cleanup by removing all stale items across all market types.
     * @dev This function is unbounded and will clean all stale items it finds. Can be called by anyone to help
     * maintain queue health, though it is primarily designed to be called opportunistically during normal market
     * operations.
     */
    function cleanQueue() external;

    /**
     * @notice Gets the items in the activity queue.
     * @return activityQueue Array of queue items.
     */
    function getActivityQueue() external view returns (Types.ActivityQueueData[] memory);

    /**
     * @notice Gets the number of items in the activity queue.
     * @return activityQueueLength Number of queue items.
     */
    function getActivityQueueLength() external view returns (uint256);

    /**
     * @notice Checks if the item with `queueId` exists in the activity queue and is not expired.
     * @param queueId Unique queue identifier.
     * @return queued Whether the item is in the queue and not expired.
     */
    function isActivityQueued(bytes32 queueId) external view returns (bool);

    /**
     * @dev Checks if any activities from the given array are still queued and active.
     *
     * NOTE: Returns immediately upon finding the first active item and returns en empty struct if none were found.
     *
     * @param activities Array of activity queue data to check.
     * @return anyActive Whether any of the activities are still active in the queue.
     * @return firstActive First active item found.
     */
    function areActivitiesQueued(
        Types.ActivityQueueData[] memory activities
    ) external view returns (bool, Types.ActivityQueueData memory);

    /**
     * @dev Filters the items in the activity queue.
     *
     * NOTE: This function performs double iteration and is gas-intensive. This is expected behavior. This function does
     * not modify storage. Stale items remain in the queue and are simply not returned in the filtered result. The
     * filtration logic for each market type is as follows:
     * - filters out termination markets older than the maximum termination market duration.
     * - filters out threshold positions that are expired.
     *
     * @return filteredQueue Array of active queue items.
     */
    function filteredActivityQueue() external view returns (Types.ActivityQueueData[] memory);
}
