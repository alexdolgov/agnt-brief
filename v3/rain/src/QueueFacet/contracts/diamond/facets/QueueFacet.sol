// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IQueue } from "../interfaces/IQueue.sol";
import { LibQueue } from "../libraries/LibQueue.sol";
import { Types } from "../shared/Types.sol";

/**
 * @title QueueFacet
 * @author Rain Team
 * @notice Exposes activity queue state, filtering utilities, and cleanup operations for external consumers.
 * @dev Acts as an interface to the activity queue, delegating all logic to {LibQueue}. Provides methods to query raw
 * queue contents, check queue membership, retrieve filtered views of active items, and perform queue cleanup across all
 * market types. The cleanup functionality is designed to maintain queue health without requiring dedicated maintenance
 * operations.
 */
contract QueueFacet is IQueue {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IQueue
     */
    function cleanQueue() external {
        LibQueue.cleanQueue(Types.MarketType(type(uint8).max));
    }

    /**
     * @inheritdoc IQueue
     */
    function getActivityQueue() external view returns (Types.ActivityQueueData[] memory) {
        return LibQueue.getActivityQueue();
    }

    /**
     * @inheritdoc IQueue
     */
    function getActivityQueueLength() external view returns (uint256) {
        return LibQueue.getActivityQueueLength();
    }

    /**
     * @inheritdoc IQueue
     */
    function isActivityQueued(bytes32 queueId) external view returns (bool) {
        return LibQueue.isActivityQueued(queueId);
    }

    /**
     * @inheritdoc IQueue
     */
    function areActivitiesQueued(
        Types.ActivityQueueData[] memory activities
    ) external view returns (bool, Types.ActivityQueueData memory) {
        return LibQueue.areActivitiesQueued(activities);
    }

    /**
     * @inheritdoc IQueue
     */
    function filteredActivityQueue() external view returns (Types.ActivityQueueData[] memory) {
        return LibQueue.filteredActivityQueue();
    }
}
