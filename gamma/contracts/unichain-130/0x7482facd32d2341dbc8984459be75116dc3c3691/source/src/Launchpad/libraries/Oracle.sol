// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Fixed-size oracle array following Algebra's pattern
// uint16 max + 1 = 65536 slots (enough for 18+ hours of 1s blocks)
uint256 constant ORACLE_CARDINALITY = 65536;

/// @title Oracle
/// @notice Provides price data useful for a wide variety of system designs
/// @dev Fixed-size circular buffer oracle following Algebra's pattern
/// Array size is fixed at 65536 (uint16 max + 1) for automatic wraparound
/// Observations are lazily initialized - no upfront gas cost
library Oracle {

    /// @notice Thrown when trying to observe a price that is older than the oldest recorded price
    /// @param oldestTimestamp Timestamp of the oldest remaining observation
    /// @param targetTimestamp Invalid timestamp targeted to be observed
    error TargetPredatesOldestObservation(uint32 oldestTimestamp, uint32 targetTimestamp);

    /// @notice This is the max amount of ticks in either direction that the pool is allowed to move at one time
    int24 constant MAX_ABS_TICK_MOVE = 9116;

    struct Observation {
        // the block timestamp of the observation
        uint32 blockTimestamp;
        // the previous printed tick to calculate the change from time to time
        int24 prevTick;
        // the tick accumulator, i.e. tick * time elapsed since the pool was first initialized
        int56 tickCumulative;
        // whether or not the observation is initialized
        bool initialized;
    }

    /// @notice Transforms a previous observation into a new observation, given the passage of time and the current tick values
    /// @param last The specified observation to be transformed
    /// @param blockTimestamp The timestamp of the new observation
    /// @param tick The active tick at the time of the new observation
    /// @return Observation The newly populated observation
    function transform(Observation memory last, uint32 blockTimestamp, int24 tick)
        private
        pure
        returns (Observation memory)
    {
        unchecked {
            uint32 delta = blockTimestamp - last.blockTimestamp;

            // if the current tick moves more than the max abs tick movement
            // then we truncate it down
            if ((tick - last.prevTick) > MAX_ABS_TICK_MOVE) {
                tick = last.prevTick + MAX_ABS_TICK_MOVE;
            } else if ((tick - last.prevTick) < -MAX_ABS_TICK_MOVE) {
                tick = last.prevTick - MAX_ABS_TICK_MOVE;
            }

            return Observation({
                blockTimestamp: blockTimestamp,
                prevTick: tick,
                tickCumulative: last.tickCumulative + int56(tick) * int56(uint56(delta)),
                initialized: true
            });
        }
    }

    /// @notice Initialize the oracle array by writing the first slot
    /// @param self The stored oracle array
    /// @param time The time of the oracle initialization, via block.timestamp truncated to uint32
    /// @param tick The initial tick
    /// @return intermediate The intermediate observation
    /// @return index The starting index (always 0)
    function initialize(Observation[ORACLE_CARDINALITY] storage self, uint32 time, int24 tick)
        internal
        returns (Observation memory intermediate, uint16 index)
    {
        intermediate = Observation({blockTimestamp: time, prevTick: tick, tickCumulative: 0, initialized: true});
        self[0] = intermediate;
        return (intermediate, 0);
    }

    /// @notice Writes an oracle observation to the array
    /// @dev Writable at most once per block. Index automatically wraps at 65536 via uint16 overflow
    /// @param self The stored oracle array
    /// @param intermediate The intermediate observation. Always the most recent observation.
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param blockTimestamp The timestamp of the new observation
    /// @param tick The active tick at the time of the new observation
    /// @return intermediateUpdated The updated intermediate observation
    /// @return indexUpdated The new index of the most recently written element in the oracle array
    function write(
        Observation[ORACLE_CARDINALITY] storage self,
        Observation memory intermediate,
        uint16 index,
        uint32 blockTimestamp,
        int24 tick
    ) internal returns (Observation memory intermediateUpdated, uint16 indexUpdated) {
        unchecked {
            // early return if we've already written an observation this block
            if (intermediate.blockTimestamp == blockTimestamp) {
                return (intermediate, index);
            }

            // update the intermediate observation
            intermediateUpdated = transform(intermediate, blockTimestamp, tick);

            // increment index (uint16 automatically wraps at 65536)
            indexUpdated = index + 1;

            // write to array
            self[indexUpdated] = intermediateUpdated;
        }
    }

    /// @notice Returns the index of the oldest initialized observation
    /// @param self The stored oracle array
    /// @param lastIndex The index of the most recently written observation
    /// @return oldestIndex The index of the oldest observation (0 if array hasn't wrapped)
    function getOldestIndex(Observation[ORACLE_CARDINALITY] storage self, uint16 lastIndex)
        internal
        view
        returns (uint16 oldestIndex)
    {
        unchecked {
            uint16 nextIndex = lastIndex + 1;  // Will wrap if lastIndex = 65535
            // If next slot is initialized, array has wrapped around
            if (self[nextIndex].initialized) {
                oldestIndex = nextIndex;
            } else {
                oldestIndex = 0;
            }
        }
    }

    /// @notice Fetches the observations beforeOrAt and atOrAfter a target
    /// @param self The stored oracle array
    /// @param time The current block.timestamp
    /// @param target The timestamp at which the reserved observation should be for
    /// @param lastIndex The index of the observation that was most recently written
    /// @param oldestIndex The index of the oldest observation
    /// @return beforeOrAt The observation recorded before, or at, the target
    /// @return atOrAfter The observation recorded at, or after, the target
    function binarySearch(
        Observation[ORACLE_CARDINALITY] storage self,
        uint32 time,
        uint32 target,
        uint16 lastIndex,
        uint16 oldestIndex
    ) private view returns (Observation memory beforeOrAt, Observation memory atOrAfter) {
        unchecked {
            uint256 l = oldestIndex;
            uint256 r = lastIndex < oldestIndex ? lastIndex + ORACLE_CARDINALITY : lastIndex;
            uint256 i;
            while (true) {
                i = (l + r) / 2;

                beforeOrAt = self[uint16(i)];

                // we've landed on an uninitialized observation, keep searching higher
                if (!beforeOrAt.initialized) {
                    l = i + 1;
                    continue;
                }

                atOrAfter = self[uint16(i + 1)];

                bool targetAtOrAfter = lte(time, beforeOrAt.blockTimestamp, target);

                // check if we've found the answer!
                if (targetAtOrAfter && lte(time, target, atOrAfter.blockTimestamp)) break;

                if (!targetAtOrAfter) r = i - 1;
                else l = i + 1;
            }
        }
    }

    /// @notice Fetches the observations beforeOrAt and atOrAfter a given target
    /// @param self The stored oracle array
    /// @param intermediate The intermediate observation. Always the most recent observation.
    /// @param time The current block.timestamp
    /// @param target The timestamp at which the reserved observation should be for
    /// @param tick The active tick at the time of the returned or simulated observation
    /// @param lastIndex The index of the observation that was most recently written
    /// @param oldestIndex The index of the oldest observation
    /// @return beforeOrAt The observation which occurred at, or before, the given timestamp
    /// @return atOrAfter The observation which occurred at, or after, the given timestamp
    function getSurroundingObservations(
        Observation[ORACLE_CARDINALITY] storage self,
        Observation memory intermediate,
        uint32 time,
        uint32 target,
        int24 tick,
        uint16 lastIndex,
        uint16 oldestIndex
    ) private view returns (Observation memory beforeOrAt, Observation memory atOrAfter) {
        unchecked {
            // optimistically set before to the newest observation
            beforeOrAt = intermediate;

            // if the target is chronologically at or after the newest observation
            if (lte(time, beforeOrAt.blockTimestamp, target)) {
                if (beforeOrAt.blockTimestamp == target) {
                    return (beforeOrAt, atOrAfter);
                } else {
                    return (beforeOrAt, transform(beforeOrAt, target, tick));
                }
            }

            // now, set before to the newest *recorded* Observation
            beforeOrAt = self[lastIndex];
            atOrAfter = intermediate;

            // if the target is chronologically at or after the newest recorded observation
            if (lte(time, beforeOrAt.blockTimestamp, target)) {
                return (beforeOrAt, atOrAfter);
            }

            // now, set before to the oldest observation
            beforeOrAt = self[oldestIndex];

            // ensure that the target is chronologically at or after the oldest observation
            if (!lte(time, beforeOrAt.blockTimestamp, target)) {
                revert TargetPredatesOldestObservation(beforeOrAt.blockTimestamp, target);
            }

            // binary search
            return binarySearch(self, time, target, lastIndex, oldestIndex);
        }
    }

    /// @notice Observes a single tick cumulative value at a given time
    /// @param self The stored oracle array
    /// @param intermediate The intermediate observation. Always the most recent observation.
    /// @param time The current block timestamp
    /// @param secondsAgo The amount of time to look back, in seconds
    /// @param tick The current tick
    /// @param lastIndex The index of the observation that was most recently written
    /// @param oldestIndex The index of the oldest observation
    /// @return tickCumulative The tick * time elapsed since the pool was first initialized
    function observeSingle(
        Observation[ORACLE_CARDINALITY] storage self,
        Observation memory intermediate,
        uint32 time,
        uint32 secondsAgo,
        int24 tick,
        uint16 lastIndex,
        uint16 oldestIndex
    ) internal view returns (int56 tickCumulative) {
        unchecked {
            if (secondsAgo == 0) {
                if (intermediate.blockTimestamp != time) intermediate = transform(intermediate, time, tick);
                return intermediate.tickCumulative;
            }

            uint32 target = time - secondsAgo;

            (Observation memory beforeOrAt, Observation memory atOrAfter) =
                getSurroundingObservations(self, intermediate, time, target, tick, lastIndex, oldestIndex);

            if (target == beforeOrAt.blockTimestamp) {
                return beforeOrAt.tickCumulative;
            } else if (target == atOrAfter.blockTimestamp) {
                return atOrAfter.tickCumulative;
            } else {
                // interpolate
                uint32 observationTimeDelta = atOrAfter.blockTimestamp - beforeOrAt.blockTimestamp;
                uint32 targetDelta = target - beforeOrAt.blockTimestamp;
                return beforeOrAt.tickCumulative
                    + ((atOrAfter.tickCumulative - beforeOrAt.tickCumulative) / int56(uint56(observationTimeDelta)))
                        * int56(uint56(targetDelta));
            }
        }
    }

    /// @notice Returns the tick cumulatives for two points in time
    /// @param self The stored oracle array
    /// @param intermediate The intermediate observation
    /// @param time The current block.timestamp
    /// @param secondsAgo0 First amount of time to look back
    /// @param secondsAgo1 Second amount of time to look back
    /// @param tick The current tick
    /// @param lastIndex The index of the observation that was most recently written
    /// @param oldestIndex The index of the oldest observation
    /// @return tickCumulative0 The first tick cumulative
    /// @return tickCumulative1 The second tick cumulative
    function observeDouble(
        Observation[ORACLE_CARDINALITY] storage self,
        Observation memory intermediate,
        uint32 time,
        uint32 secondsAgo0,
        uint32 secondsAgo1,
        int24 tick,
        uint16 lastIndex,
        uint16 oldestIndex
    ) internal view returns (int56 tickCumulative0, int56 tickCumulative1) {
        unchecked {
            tickCumulative0 = observeSingle(self, intermediate, time, secondsAgo0, tick, lastIndex, oldestIndex);
            tickCumulative1 = observeSingle(self, intermediate, time, secondsAgo1, tick, lastIndex, oldestIndex);
        }
    }

    /// @notice comparator for 32-bit timestamps
    /// @dev safe for 0 or 1 overflows, a and b _must_ be chronologically before or equal to time
    /// @param time A timestamp truncated to 32 bits
    /// @param a A comparison timestamp
    /// @param b A comparison timestamp
    /// @return Whether `a` is chronologically <= `b`
    function lte(uint32 time, uint32 a, uint32 b) private pure returns (bool) {
        unchecked {
            // if there hasn't been overflow, no need to adjust
            if (a <= time && b <= time) return a <= b;

            uint256 aAdjusted = a > time ? a : a + 2 ** 32;
            uint256 bAdjusted = b > time ? b : b + 2 ** 32;

            return aAdjusted <= bAdjusted;
        }
    }
}
