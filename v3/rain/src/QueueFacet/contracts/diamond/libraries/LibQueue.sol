// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { Types } from "../shared/Types.sol";

import { LibAppStorage } from "./LibAppStorage.sol";
import { LibConstants } from "./LibConstants.sol";
import { LibMarketTermination } from "./LibMarketTermination.sol";
import { LibUtilsTime } from "./LibUtilsTime.sol";

/**
 * @title LibQueue
 * @author Rain Team
 * @notice Utility library for managing active queue operations.
 */
library LibQueue {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev Adds a market to the active queue.
     * @param marketType Type of market.
     * @param marketIndex Market index.
     */
    function addMarket(Types.MarketType marketType, uint256 marketIndex) internal {
        Types.ActivityQueueData memory queueData = Types.ActivityQueueData({
            marketType: marketType,
            marketIndex: marketIndex,
            positionId: bytes32(0)
        });

        _add(queueData);
    }

    /**
     * @dev Removes a market from the active queue.
     * @param marketType Type of market.
     * @param marketIndex Market index.
     */
    function removeMarket(Types.MarketType marketType, uint256 marketIndex) internal {
        Types.ActivityQueueData memory queueData = Types.ActivityQueueData({
            marketType: marketType,
            marketIndex: marketIndex,
            positionId: bytes32(0)
        });

        _remove(queueData);
    }

    /**
     * @dev Adds a position to the active queue.
     * @param marketType Type of market.
     * @param positionId Position's unique identifier.
     */
    function addPosition(Types.MarketType marketType, bytes32 positionId) internal {
        Types.ActivityQueueData memory queueData = Types.ActivityQueueData({
            marketType: marketType,
            marketIndex: 0,
            positionId: positionId
        });

        _add(queueData);
    }

    /**
     * @dev Removes a position from the active queue.
     * @param marketType Type of market.
     * @param positionId Position's unique identifier.
     */
    function removePosition(Types.MarketType marketType, bytes32 positionId) internal {
        Types.ActivityQueueData memory queueData = Types.ActivityQueueData({
            marketType: marketType,
            marketIndex: 0,
            positionId: positionId
        });

        _remove(queueData);
    }

    /**
     * @dev Performs queue cleanup by removing stale items from all market types except the excluded type.
     *
     * NOTE: Use `Types.MarketType(type(uint8).max)` to clean all types. This function is unbounded and will clean all
     * stale items it finds. It is designed to be called opportunistically during normal market operations to distribute
     * cleanup costs across users. The cleanup logic for each market type is as follows:
     * - clean termination markets older than the maximum termination market duration.
     * - clean threshold positions that are expired.
     *
     * @param excludeMarketType Market type to exclude from cleanup.
     */
    function cleanQueue(Types.MarketType excludeMarketType) internal {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        for (uint256 i = s._activityQueue.items.length; i > 0; ) {
            unchecked {
                --i;
            }

            Types.ActivityQueueData memory queueData = s._activityQueue.items[i];

            if (queueData.marketType == excludeMarketType) {
                continue;
            }

            if (!_isItemActive(queueData)) {
                bytes32 queueId = generateQueueId(queueData);

                _removeAtIndex(i, queueId);
            }
        }
    }

    /**
     * @dev See {IQueue-getActivityQueue}.
     */
    function getActivityQueue() internal view returns (Types.ActivityQueueData[] memory) {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        return s._activityQueue.items;
    }

    /**
     * @dev See {IQueue-getActivityQueueLength}.
     */
    function getActivityQueueLength() internal view returns (uint256) {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        return s._activityQueue.items.length;
    }

    /**
     * @dev See {IQueue-isActivityQueued}.
     */
    function isActivityQueued(bytes32 queueId) internal view returns (bool) {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        uint256 indexPlusOne = s._activityQueue.indexOf[queueId];

        if (indexPlusOne == 0) {
            return false;
        }

        uint256 index;

        unchecked {
            index = indexPlusOne - 1;
        }

        Types.ActivityQueueData memory queueData = s._activityQueue.items[index];

        return _isItemActive(queueData);
    }

    /**
     * @dev See {IQueue-areActivitiesQueued}.
     */
    function areActivitiesQueued(
        Types.ActivityQueueData[] memory activities
    ) internal view returns (bool, Types.ActivityQueueData memory) {
        uint256 activitiesLength = activities.length;

        for (uint256 i; i < activitiesLength; ) {
            bytes32 queueId = generateQueueId(activities[i]);

            if (isActivityQueued(queueId)) {
                return (true, activities[i]);
            }

            unchecked {
                ++i;
            }
        }

        return (false, Types.ActivityQueueData(Types.MarketType(0), 0, bytes32(0)));
    }

    /**
     * @dev See {IQueue-filteredActivityQueue}.
     */
    function filteredActivityQueue() internal view returns (Types.ActivityQueueData[] memory) {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        uint256 queueLength = s._activityQueue.items.length;
        uint256[] memory activeIndexes = new uint256[](queueLength);

        uint256 activeCount;

        for (uint256 i; i < queueLength; ) {
            Types.ActivityQueueData memory queueData = s._activityQueue.items[i];

            if (_isItemActive(queueData)) {
                activeIndexes[activeCount] = i;

                unchecked {
                    ++activeCount;
                }
            }

            unchecked {
                ++i;
            }
        }

        Types.ActivityQueueData[] memory filteredQueue = new Types.ActivityQueueData[](activeCount);

        for (uint256 i; i < activeCount; ) {
            filteredQueue[i] = s._activityQueue.items[activeIndexes[i]];

            unchecked {
                ++i;
            }
        }

        return filteredQueue;
    }

    /**
     * @dev Generates a unique queue identifier from activity queue data.
     * @param queueData Activity queue data.
     * @return queueId Generated unique queue identifier.
     */
    function generateQueueId(Types.ActivityQueueData memory queueData) internal pure returns (bytes32) {
        return keccak256(abi.encode(queueData));
    }

    /**
     * @dev Adds queue data to the active queue.
     * @param queueData Activity queue data to add.
     */
    function _add(Types.ActivityQueueData memory queueData) private {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        bytes32 queueId = generateQueueId(queueData);

        if (s._activityQueue.indexOf[queueId] != 0) {
            return;
        }

        s._activityQueue.items.push(queueData);
        s._activityQueue.indexOf[queueId] = s._activityQueue.items.length;
    }

    /**
     * @dev Removes queue data from the active queue.
     * @param queueData Activity queue data to remove.
     */
    function _remove(Types.ActivityQueueData memory queueData) private {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        bytes32 queueId = generateQueueId(queueData);
        uint256 indexPlusOne = s._activityQueue.indexOf[queueId];

        if (indexPlusOne == 0) {
            return;
        }

        uint256 indexToRemove;

        unchecked {
            indexToRemove = indexPlusOne - 1;
        }

        _removeAtIndex(indexToRemove, queueId);
    }

    /**
     * @dev Removes item at the given index using swap-and-pop pattern.
     * @param indexToRemove The index to remove.
     * @param queueId The queue identifier being removed.
     */
    function _removeAtIndex(uint256 indexToRemove, bytes32 queueId) private {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        uint256 lastIndex;

        unchecked {
            lastIndex = s._activityQueue.items.length - 1;
        }

        if (indexToRemove != lastIndex) {
            Types.ActivityQueueData memory lastQueueData = s._activityQueue.items[lastIndex];
            bytes32 lastQueueId = generateQueueId(lastQueueData);

            s._activityQueue.items[indexToRemove] = lastQueueData;

            unchecked {
                s._activityQueue.indexOf[lastQueueId] = indexToRemove + 1;
            }
        }

        s._activityQueue.items.pop();

        delete s._activityQueue.indexOf[queueId];
    }

    /**
     * @dev Checks if a queue item is active and not expired.
     *
     * NOTE: A termination market is considered active when its:
     * - start time is `0`, i.e. its state is `INITIALIZED`.
     * - time elapsed is less than the maximum termination market duration, i.e. its state is `STARTED`.
     * A threshold position is considered active when its:
     * - current time is less than the expiry time.
     *
     * @param queueData Queue item to check.
     * @return active Whether the queue item is active.
     */
    function _isItemActive(Types.ActivityQueueData memory queueData) private view returns (bool) {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();
        LibMarketTermination.MarketTerminationStorage storage mts = LibMarketTermination.getMarketTerminationStorage();

        if (queueData.marketType == Types.MarketType.TERMINATION) {
            if (queueData.positionId == bytes32(0)) {
                uint256 marketStartTime = mts._marketTermination[queueData.marketIndex].startTime;

                if (marketStartTime == 0) {
                    return true;
                }

                uint256 maxMarketDuration = LibUtilsTime.toSeconds(LibConstants.MAX_MARKET_TERMINATION_DURATION_MS);

                uint256 timeElapsed;

                unchecked {
                    timeElapsed = block.timestamp - marketStartTime;
                }

                return timeElapsed <= maxMarketDuration;
            }
        } else if (queueData.marketType == Types.MarketType.THRESHOLD) {
            if (queueData.positionId != bytes32(0)) {
                uint256 positionExpiryTime = s._positionData[queueData.positionId].expiryTime;

                return block.timestamp <= positionExpiryTime;
            }
        }

        return false;
    }
}
