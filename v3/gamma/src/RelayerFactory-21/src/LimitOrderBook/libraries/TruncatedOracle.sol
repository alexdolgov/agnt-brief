// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title TruncatedOracle
/// @notice Provides observation storage and TWAP queries for paged oracle architecture
/// @dev Designed to work with 512-slot pages, supporting lazy allocation
library TruncatedOracle {
    /// @notice Maximum number of observations across all pages
    /// @dev With PAGE_SIZE=512, this allows 16 full pages (8192 / 512 = 16)
    uint16 public constant MAX_CARDINALITY_ALLOWED = 8192;

    /// @notice Thrown when trying to observe a price that is older than the oldest recorded price
    error TargetPredatesOldestObservation(uint32 oldestTimestamp, uint32 targetTimestamp);

    struct Observation {
        // the block timestamp of the observation
        uint32 blockTimestamp;
        // the tick accumulator, i.e. tick * time elapsed since the pool was first initialized
        int56 tickCumulative;
        // the seconds per liquidity accumulator, i.e. seconds elapsed / max(1, liquidity) since the pool was first initialized
        uint160 secondsPerLiquidityCumulativeX128;
        // whether or not the observation is initialized
        bool initialized;
    }

    /// @notice Initialize the first observation in a page
    /// @param self The storage array (512 slots)
    /// @param time The time of the observation
    function initialize(Observation[512] storage self, uint32 time, int24) internal {
        self[0] = Observation({
            blockTimestamp: time,
            tickCumulative: 0,
            secondsPerLiquidityCumulativeX128: 0,
            initialized: true
        });
    }

    /// @notice Transforms a previous observation into a new observation, given the passage of time and the current tick and liquidity values
    /// @param last The specified observation to be transformed
    /// @param blockTimestamp The timestamp of the new observation
    /// @param tick The active tick at the time of the new observation
    /// @param liquidity The total in-range liquidity at the time of the new observation
    /// @return Observation The newly populated observation
    function transform(
        Observation memory last,
        uint32 blockTimestamp,
        int24 tick,
        uint128 liquidity
    ) private pure returns (Observation memory) {
        unchecked {
            uint32 delta = blockTimestamp - last.blockTimestamp;

            return Observation({
                blockTimestamp: blockTimestamp,
                tickCumulative: last.tickCumulative + int56(tick) * int56(uint56(delta)),
                secondsPerLiquidityCumulativeX128: last.secondsPerLiquidityCumulativeX128
                    + ((uint160(delta) << 128) / (liquidity > 0 ? liquidity : 1)),
                initialized: true
            });
        }
    }

    /// @notice Writes an oracle observation to the page
    /// @dev Writable at most once per block within a page
    /// @param self The stored oracle page (512 slots)
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param blockTimestamp The timestamp of the new observation
    /// @param tick The active tick at the time of the new observation
    /// @param liquidity The total in-range liquidity at the time of the new observation
    /// @param cardinality The number of populated observations in this page
    /// @param cardinalityNext The new length of the observations array after this write, capped at page size (512)
    /// @return indexUpdated The new index of the most recently written element in the oracle array
    /// @return cardinalityUpdated The new cardinality of the observations array
    function write(
        Observation[512] storage self,
        uint16 index,
        uint32 blockTimestamp,
        int24 tick,
        uint128 liquidity,
        uint16 cardinality,
        uint16 cardinalityNext
    ) internal returns (uint16 indexUpdated, uint16 cardinalityUpdated) {
        unchecked {
            Observation memory last = self[index];

            // early return if we've already written an observation this block
            if (last.blockTimestamp == blockTimestamp) {
                return (index, cardinality);
            }

            // if the conditions are right, we can bump the cardinality
            if (cardinalityNext > cardinality && index == (cardinality - 1)) {
                cardinalityUpdated = cardinalityNext;
            } else {
                cardinalityUpdated = cardinality;
            }

            // increment index wrapping at page size (512)
            indexUpdated = (index + 1) % 512;
            self[indexUpdated] = transform(last, blockTimestamp, tick, liquidity);
        }
    }

    /// @notice Prepares the page to store observations by setting next-cardinality
    /// @dev Does not allocate storage; cardinality is incremented on first write
    /// @param current The current cardinality
    /// @param next The proposed next cardinality (what we want to grow to)
    /// @return The new cardinality-next value, capped at 512 and MAX_CARDINALITY_ALLOWED
    function grow(
        Observation[512] storage,
        uint16 current,
        uint16 next
    ) internal pure returns (uint16) {
        unchecked {
            if (next <= current) return current;
            // Cap at page size
            if (next > 512) next = 512;
            // Cap at global maximum
            if (next > MAX_CARDINALITY_ALLOWED) next = MAX_CARDINALITY_ALLOWED;
            return next;
        }
    }

    /// @notice comparator for 32-bit timestamps
    /// @dev safe for 0 or 1 overflows, a and b _must_ be chronologically before or equal to time
    /// @param time A timestamp truncated to 32 bits
    /// @param a A comparison timestamp from which to determine the relative position of `time`
    /// @param b A comparison timestamp from which to determine the relative position of `time`
    /// @return Whether `a` is chronologically <= `b`
    function lte(
        uint32 time,
        uint32 a,
        uint32 b
    ) private pure returns (bool) {
        unchecked {
            // if there hasn't been overflow, no need to adjust
            if (a <= time && b <= time) return a <= b;

            uint256 aAdjusted = a > time ? a : a + 2 ** 32;
            uint256 bAdjusted = b > time ? b : b + 2 ** 32;

            return aAdjusted <= bAdjusted;
        }
    }

    /// @notice Fetches the observations beforeOrAt and atOrAfter a target, i.e. where [beforeOrAt, atOrAfter] is satisfied
    /// @dev Assumes there is at least 1 initialized observation
    /// @dev Used by observeSingle() to compute time-weighted averages
    /// @param self The stored oracle array
    /// @param time The current block.timestamp
    /// @param target The timestamp at which the reserved observation should be for
    /// @param tick The active tick at the time of the returned or simulated observation
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param liquidity The total pool liquidity at the time of the call
    /// @param cardinality The number of populated elements in the oracle array
    /// @return beforeOrAt The observation recorded before, or at, the target
    /// @return atOrAfter The observation recorded at, or after, the target
    function getSurroundingObservations(
        Observation[512] storage self,
        uint32 time,
        uint32 target,
        int24 tick,
        uint16 index,
        uint128 liquidity,
        uint16 cardinality
    ) private view returns (Observation memory beforeOrAt, Observation memory atOrAfter) {
        unchecked {
            // optimistically set before to the newest observation
            beforeOrAt = self[index];

            // if the target is chronologically at or after the newest observation, we can early return
            if (lte(time, beforeOrAt.blockTimestamp, target)) {
                if (beforeOrAt.blockTimestamp == target) {
                    return (beforeOrAt, atOrAfter);
                } else {
                    return (beforeOrAt, transform(beforeOrAt, target, tick, liquidity));
                }
            }

            // now, set before to the oldest observation
            beforeOrAt = self[0];
            if (!beforeOrAt.initialized) beforeOrAt = self[0];

            // ensure that the target is chronologically at or after the oldest observation
            if (!lte(time, beforeOrAt.blockTimestamp, target)) {
                revert TargetPredatesOldestObservation(beforeOrAt.blockTimestamp, target);
            }

            // perform binary search
            return binarySearch(self, time, target, index, cardinality);
        }
    }

    /// @notice Fetches the observations beforeOrAt and atOrAfter a given target using binary search
    /// @param self The stored oracle array
    /// @param time The current block.timestamp
    /// @param target The timestamp at which the reserved observation should be for
    /// @param cardinality The number of populated elements in the oracle array
    /// @return beforeOrAt The observation which occurred at, or before, the given timestamp
    /// @return atOrAfter The observation which occurred at, or after, the given timestamp
    function binarySearch(
        Observation[512] storage self,
        uint32 time,
        uint32 target,
        uint16,
        uint16 cardinality
    ) private view returns (Observation memory beforeOrAt, Observation memory atOrAfter) {
        unchecked {
            uint256 l = 0;
            uint256 r = cardinality - 1;
            uint256 i;

            while (true) {
                i = (l + r) / 2;

                beforeOrAt = self[i];

                // we've landed on an uninitialized tick, keep searching higher (more recently)
                if (!beforeOrAt.initialized) {
                    l = i + 1;
                    continue;
                }

                atOrAfter = self[i + 1];

                bool targetAtOrAfter = lte(time, beforeOrAt.blockTimestamp, target);

                // check if we've found the answer!
                if (targetAtOrAfter && lte(time, target, atOrAfter.blockTimestamp)) {
                    break;
                }

                if (!targetAtOrAfter) r = i - 1;
                else l = i + 1;
            }
        }
    }

    /// @notice Observes a single point in time
    /// @param self The stored oracle array
    /// @param time The current block timestamp
    /// @param secondsAgo The amount of time to look back, in seconds, from the current block timestamp
    /// @param tick The current tick
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param liquidity The current in-range pool liquidity
    /// @param cardinality The number of populated elements in the oracle array
    /// @return tickCumulative The tick * time elapsed since the pool was first initialized, as of `secondsAgo`
    /// @return secondsPerLiquidityCumulativeX128 The time elapsed / max(1, liquidity) since the pool was first initialized, as of `secondsAgo`
    function observeSingle(
        Observation[512] storage self,
        uint32 time,
        uint32 secondsAgo,
        int24 tick,
        uint16 index,
        uint128 liquidity,
        uint16 cardinality
    ) internal view returns (int56 tickCumulative, uint160 secondsPerLiquidityCumulativeX128) {
        unchecked {
            if (secondsAgo == 0) {
                Observation memory last = self[index];
                if (last.blockTimestamp != time) {
                    last = transform(last, time, tick, liquidity);
                }
                return (last.tickCumulative, last.secondsPerLiquidityCumulativeX128);
            }

            uint32 target = time - secondsAgo;

            (Observation memory beforeOrAt, Observation memory atOrAfter) =
                getSurroundingObservations(self, time, target, tick, index, liquidity, cardinality);

            if (target == beforeOrAt.blockTimestamp) {
                return (beforeOrAt.tickCumulative, beforeOrAt.secondsPerLiquidityCumulativeX128);
            } else if (target == atOrAfter.blockTimestamp) {
                return (atOrAfter.tickCumulative, atOrAfter.secondsPerLiquidityCumulativeX128);
            } else {
                // we're in the middle, interpolate
                uint32 observationTimeDelta = atOrAfter.blockTimestamp - beforeOrAt.blockTimestamp;
                uint32 targetDelta = target - beforeOrAt.blockTimestamp;

                tickCumulative = beforeOrAt.tickCumulative
                    + ((atOrAfter.tickCumulative - beforeOrAt.tickCumulative) / int56(uint56(observationTimeDelta)))
                        * int56(uint56(targetDelta));

                secondsPerLiquidityCumulativeX128 = beforeOrAt.secondsPerLiquidityCumulativeX128
                    + uint160(
                        (uint256(
                            atOrAfter.secondsPerLiquidityCumulativeX128 - beforeOrAt.secondsPerLiquidityCumulativeX128
                        ) * targetDelta) / observationTimeDelta
                    );
            }
        }
    }

    /// @notice Returns the accumulator values as of each time seconds ago from the given time in the array of `secondsAgos`
    /// @dev Reverts if `secondsAgos` > oldest observation
    /// @param self The stored oracle array
    /// @param time The current block.timestamp
    /// @param secondsAgos Each amount of time to look back, in seconds, at which point to return an observation
    /// @param tick The current tick
    /// @param index The index of the observation that was most recently written to the observations array
    /// @param liquidity The current in-range pool liquidity
    /// @param cardinality The number of populated elements in the oracle array
    /// @return tickCumulatives The tick * time elapsed since the pool was first initialized, as of each `secondsAgo`
    /// @return secondsPerLiquidityCumulativeX128s The cumulative seconds / max(1, liquidity) since the pool was first initialized, as of each `secondsAgo`
    function observe(
        Observation[512] storage self,
        uint32 time,
        uint32[] memory secondsAgos,
        int24 tick,
        uint16 index,
        uint128 liquidity,
        uint16 cardinality
    ) internal view returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s) {
        require(cardinality > 0, "I");

        tickCumulatives = new int56[](secondsAgos.length);
        secondsPerLiquidityCumulativeX128s = new uint160[](secondsAgos.length);

        unchecked {
            for (uint256 i = 0; i < secondsAgos.length; i++) {
                (tickCumulatives[i], secondsPerLiquidityCumulativeX128s[i]) =
                    observeSingle(self, time, secondsAgos[i], tick, index, liquidity, cardinality);
            }
        }
    }
}
