// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title LinearThrottleLib
/// @notice Helper library implementing a linear refill rate limiter used by the PSM for mint/redeem throttles.
library LinearThrottleLib {
    uint256 internal constant PRECISION = 1e18;
    uint256 internal constant UNBOUNDED = type(uint256).max;

    struct Throttle {
        uint256 cap; // Target maximum capacity (0 when disabled)
        uint256 available; // Cached amount currently available
        uint256 refillRate; // Tokens per second scaled by 1e18
        uint48 duration; // Seconds to fully refill
        uint48 lastUpdated; // Timestamp of last refresh
    }

    function initialize(Throttle storage throttle) internal {
        throttle.cap = 0;
        throttle.available = UNBOUNDED;
        throttle.refillRate = 0;
        throttle.duration = 0;
        throttle.lastUpdated = 0;
    }

    function configure(Throttle storage throttle, uint256 newCap, uint48 newDuration) internal {
        uint256 previousCap = throttle.cap;
        refresh(throttle);

        throttle.cap = newCap;
        throttle.duration = newDuration;

        if (newCap == 0 || newDuration == 0) {
            throttle.available = UNBOUNDED;
            throttle.refillRate = 0;
            throttle.lastUpdated = uint48(block.timestamp);
            return;
        }

        throttle.refillRate = (newCap * PRECISION + uint256(newDuration) - 1) / uint256(newDuration);

        if (throttle.available == UNBOUNDED || previousCap == 0) {
            throttle.available = newCap;
        } else {
            throttle.available = (throttle.available * newCap) / previousCap;
            if (throttle.available > newCap) {
                throttle.available = newCap;
            }
        }

        throttle.lastUpdated = uint48(block.timestamp);
    }

    function refresh(Throttle storage throttle) internal returns (uint256) {
        if (throttle.cap == 0 || throttle.duration == 0) {
            throttle.available = UNBOUNDED;
            throttle.lastUpdated = uint48(block.timestamp);
            return throttle.available;
        }

        if (throttle.lastUpdated == 0) {
            throttle.available = throttle.cap;
            throttle.lastUpdated = uint48(block.timestamp);
            return throttle.available;
        }

        if (throttle.available >= throttle.cap) {
            throttle.lastUpdated = uint48(block.timestamp);
            return throttle.available;
        }

        uint256 elapsed = block.timestamp - uint256(throttle.lastUpdated);
        if (elapsed == 0 || throttle.refillRate == 0) {
            return throttle.available;
        }

        uint256 refill = (elapsed * throttle.refillRate) / PRECISION;
        if (refill == 0) {
            return throttle.available;
        }

        uint256 newAvailable = throttle.available + refill;
        if (newAvailable > throttle.cap) {
            newAvailable = throttle.cap;
        }

        throttle.available = newAvailable;
        throttle.lastUpdated = uint48(block.timestamp);
        return newAvailable;
    }

    function consume(Throttle storage throttle, uint256 amount) internal {
        if (amount == 0) {
            return;
        }

        if (throttle.cap == 0 || throttle.duration == 0) {
            return;
        }

        throttle.available = throttle.available - amount;
        throttle.lastUpdated = uint48(block.timestamp);
    }

    function projectedAvailable(Throttle storage throttle) internal view returns (uint256) {
        if (throttle.cap == 0 || throttle.duration == 0) {
            return UNBOUNDED;
        }

        if (throttle.available >= throttle.cap) {
            return throttle.cap;
        }

        if (throttle.refillRate == 0 || throttle.lastUpdated == 0) {
            return throttle.available;
        }

        uint256 elapsed = block.timestamp - uint256(throttle.lastUpdated);
        if (elapsed == 0) {
            return throttle.available;
        }

        uint256 refill = (elapsed * throttle.refillRate) / PRECISION;
        uint256 newAvailable = throttle.available + refill;
        if (newAvailable > throttle.cap) {
            newAvailable = throttle.cap;
        }
        return newAvailable;
    }

    function isEnabled(Throttle storage throttle) internal view returns (bool) {
        return throttle.cap != 0 && throttle.duration != 0;
    }
}
