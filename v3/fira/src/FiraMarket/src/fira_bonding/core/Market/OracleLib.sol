// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../libraries/Errors.sol";

/// @title OracleLib
/// @notice Time-weighted average price (TWAP) oracle library for implied rate tracking
/// @dev Adapted from UniswapV3's Oracle. Stores cumulative ln(impliedRate) observations that can be
///      queried for TWAP calculations over arbitrary time windows. Uses a circular buffer of
///      observations with configurable cardinality.
library OracleLib {
    /// @notice Single observation storing cumulative ln(impliedRate) at a point in time
    /// @dev Packed into a single 256-bit storage slot
    /// @param blockTimestamp The block timestamp of this observation
    /// @param lnImpliedRateCumulative Cumulative sum of ln(impliedRate) * time elapsed
    /// @param initialized Whether this observation slot has been written to
    struct Observation {
        uint32 blockTimestamp;
        uint216 lnImpliedRateCumulative;
        bool initialized;
    }

    // 1 SLOT = 256 bits

    /// @notice Creates a new observation by extending the cumulative rate from a previous observation
    /// @param last The previous observation to extend from
    /// @param blockTimestamp The timestamp for the new observation
    /// @param lnImpliedRate The current ln(impliedRate) to accumulate
    /// @return A new Observation with updated cumulative values
    function transform(Observation memory last, uint32 blockTimestamp, uint96 lnImpliedRate)
        public
        pure
        returns (Observation memory)
    {
        return Observation({
            blockTimestamp: blockTimestamp,
            lnImpliedRateCumulative: last.lnImpliedRateCumulative + uint216(lnImpliedRate)
                * (blockTimestamp - last.blockTimestamp),
            initialized: true
        });
    }

    /// @notice Initializes the oracle with the first observation
    /// @param self The observation array to initialize
    /// @param time The current block timestamp
    /// @return cardinality The initial cardinality (1)
    /// @return cardinalityNext The next cardinality target (1)
    function initialize(Observation[65535] storage self, uint32 time)
        public
        returns (uint16 cardinality, uint16 cardinalityNext)
    {
        self[0] = Observation({blockTimestamp: time, lnImpliedRateCumulative: 0, initialized: true});
        return (1, 1);
    }

    /// @notice Writes a new observation to the oracle's circular buffer
    /// @dev Only writes if the block timestamp differs from the last observation
    /// @param self The observation array to write to
    /// @param index The current observation index
    /// @param blockTimestamp The current block timestamp
    /// @param lnImpliedRate The current ln(impliedRate) to record
    /// @param cardinality The current buffer size
    /// @param cardinalityNext The target buffer size after growth
    /// @return indexUpdated The new observation index
    /// @return cardinalityUpdated The new cardinality (may increase if buffer grew)
    function write(
        Observation[65535] storage self,
        uint16 index,
        uint32 blockTimestamp,
        uint96 lnImpliedRate,
        uint16 cardinality,
        uint16 cardinalityNext
    ) public returns (uint16 indexUpdated, uint16 cardinalityUpdated) {
        Observation memory last = self[index];

        // early return if we've already written an observation this block
        if (last.blockTimestamp == blockTimestamp) return (index, cardinality);

        // if the conditions are right, we can bump the cardinality
        if (cardinalityNext > cardinality && index == (cardinality - 1)) {
            cardinalityUpdated = cardinalityNext;
        } else {
            cardinalityUpdated = cardinality;
        }

        indexUpdated = (index + 1) % cardinalityUpdated;
        self[indexUpdated] = transform(last, blockTimestamp, lnImpliedRate);
    }

    /// @notice Expands the oracle's observation buffer capacity
    /// @dev Pre-initializes storage slots to reduce gas costs during swaps
    /// @param self The observation array to grow
    /// @param current The current cardinality
    /// @param next The target cardinality to grow to
    /// @return The new cardinality (unchanged if next <= current)
    function grow(Observation[65535] storage self, uint16 current, uint16 next) public returns (uint16) {
        if (current == 0) revert Errors.OracleUninitialized();
        // no-op if the passed next value isn't greater than the current next value
        if (next <= current) return current;
        // store in each slot to prevent fresh SSTOREs in swaps
        // this data will not be used because the initialized boolean is still false
        for (uint16 i = current; i != next;) {
            self[i].blockTimestamp = 1;
            unchecked {
                ++i;
            }
        }
        return next;
    }

    /// @notice Performs binary search to find observations surrounding a target timestamp
    /// @param self The observation array to search
    /// @param target The target timestamp to find
    /// @param index The current observation index
    /// @param cardinality The current buffer size
    /// @return beforeOrAt The observation at or before the target
    /// @return atOrAfter The observation at or after the target
    function binarySearch(Observation[65535] storage self, uint32 target, uint16 index, uint16 cardinality)
        public
        view
        returns (Observation memory beforeOrAt, Observation memory atOrAfter)
    {
        uint256 l = (index + 1) % cardinality; // oldest observation
        uint256 r = l + cardinality - 1; // newest observation
        uint256 i;
        while (true) {
            i = (l + r) / 2;

            beforeOrAt = self[i % cardinality];

            // we've landed on an uninitialized observation, keep searching higher (more recently)
            if (!beforeOrAt.initialized) {
                l = i + 1;
                continue;
            }

            atOrAfter = self[(i + 1) % cardinality];

            bool targetAtOrAfter = beforeOrAt.blockTimestamp <= target;

            // check if we've found the answer!
            if (targetAtOrAfter && target <= atOrAfter.blockTimestamp) break;

            if (!targetAtOrAfter) r = i - 1;
            else l = i + 1;
        }
    }

    /// @notice Finds the two observations that bound a target timestamp
    /// @dev Optimistically checks newest observation first, then oldest, then binary searches
    /// @param self The observation array to search
    /// @param target The target timestamp to find bounds for
    /// @param lnImpliedRate The current ln(impliedRate) for interpolation if needed
    /// @param index The current observation index
    /// @param cardinality The current buffer size
    /// @return beforeOrAt The observation at or before the target
    /// @return atOrAfter The observation at or after the target
    function getSurroundingObservations(
        Observation[65535] storage self,
        uint32 target,
        uint96 lnImpliedRate,
        uint16 index,
        uint16 cardinality
    ) public view returns (Observation memory beforeOrAt, Observation memory atOrAfter) {
        // optimistically set before to the newest observation
        beforeOrAt = self[index];

        // if the target is chronologically at or after the newest observation, we can early return
        if (beforeOrAt.blockTimestamp <= target) {
            if (beforeOrAt.blockTimestamp == target) {
                // if newest observation equals target, we're in the same block, so we can ignore
                // atOrAfter
                return (beforeOrAt, atOrAfter);
            } else {
                // otherwise, we need to transform
                return (beforeOrAt, transform(beforeOrAt, target, lnImpliedRate));
            }
        }

        // now, set beforeOrAt to the oldest observation
        beforeOrAt = self[(index + 1) % cardinality];
        if (!beforeOrAt.initialized) beforeOrAt = self[0];

        // ensure that the target is chronologically at or after the oldest observation
        if (target < beforeOrAt.blockTimestamp) {
            revert Errors.OracleTargetTooOld(target, beforeOrAt.blockTimestamp);
        }

        // if we've reached this point, we have to binary search
        return binarySearch(self, target, index, cardinality);
    }

    /// @notice Returns the cumulative ln(impliedRate) at a single point in time
    /// @dev Interpolates between surrounding observations if target is between them
    /// @param self The observation array to query
    /// @param time The current block timestamp
    /// @param secondsAgo How many seconds in the past to query (0 = current)
    /// @param lnImpliedRate The current ln(impliedRate) for interpolation
    /// @param index The current observation index
    /// @param cardinality The current buffer size
    /// @return lnImpliedRateCumulative The cumulative ln(impliedRate) at the target time
    function observeSingle(
        Observation[65535] storage self,
        uint32 time,
        uint32 secondsAgo,
        uint96 lnImpliedRate,
        uint16 index,
        uint16 cardinality
    ) public view returns (uint216 lnImpliedRateCumulative) {
        if (secondsAgo == 0) {
            Observation memory last = self[index];
            if (last.blockTimestamp != time) {
                return transform(last, time, lnImpliedRate).lnImpliedRateCumulative;
            }
            return last.lnImpliedRateCumulative;
        }

        uint32 target = time - secondsAgo;

        (Observation memory beforeOrAt, Observation memory atOrAfter) =
            getSurroundingObservations(self, target, lnImpliedRate, index, cardinality);

        if (target == beforeOrAt.blockTimestamp) {
            // we're at the left boundary
            return beforeOrAt.lnImpliedRateCumulative;
        } else if (target == atOrAfter.blockTimestamp) {
            // we're at the right boundary
            return atOrAfter.lnImpliedRateCumulative;
        } else {
            // we're in the middle
            return (beforeOrAt.lnImpliedRateCumulative
                    + uint216(
                        (uint256(atOrAfter.lnImpliedRateCumulative - beforeOrAt.lnImpliedRateCumulative)
                                * (target - beforeOrAt.blockTimestamp))
                            / (atOrAfter.blockTimestamp - beforeOrAt.blockTimestamp)
                    ));
        }
    }

    /// @notice Returns cumulative ln(impliedRate) values at multiple points in time
    /// @param self The observation array to query
    /// @param time The current block timestamp
    /// @param secondsAgos Array of seconds in the past to query
    /// @param lnImpliedRate The current ln(impliedRate) for interpolation
    /// @param index The current observation index
    /// @param cardinality The current buffer size
    /// @return lnImpliedRateCumulative Array of cumulative values, one per secondsAgo entry
    function observe(
        Observation[65535] storage self,
        uint32 time,
        uint32[] memory secondsAgos,
        uint96 lnImpliedRate,
        uint16 index,
        uint16 cardinality
    ) public view returns (uint216[] memory lnImpliedRateCumulative) {
        if (cardinality == 0) revert Errors.OracleZeroCardinality();

        lnImpliedRateCumulative = new uint216[](secondsAgos.length);
        for (uint256 i = 0; i < lnImpliedRateCumulative.length; ++i) {
            lnImpliedRateCumulative[i] = observeSingle(self, time, secondsAgos[i], lnImpliedRate, index, cardinality);
        }
    }
}
