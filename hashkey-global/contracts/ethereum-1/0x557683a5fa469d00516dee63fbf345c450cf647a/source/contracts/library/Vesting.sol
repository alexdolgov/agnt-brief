//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./Mint.sol";

library Vesting {

    /// Cliff Vesting defines `amount` tokens will be fully unlocked after `expiration`.
    struct Cliff {
        bool            active;
        Mint.Bucket     bucket;
        uint64          expiration;
        uint256         amount;
    }

    /// Linear Vesting defines `amount` tokens will start unlocking linearly from `start` to `end`.
    /// Tokens will unlock every `interval` seconds.
    struct Linear {
        bool            active;
        Mint.Bucket     bucket;
        uint64          start;
        uint64          end;
        uint64          interval;
        uint256         amount;
    }

    /// @dev compute current (locking, released) amount of a Cliff Vesting.
    function getCliff(Cliff storage vesting, uint256 timestamp) internal view returns (uint256, uint256) {
        require(vesting.active, "Cliff Vesting is not active");

        if (timestamp >= vesting.expiration) {
            return (0, vesting.amount);
        } else {
            return (vesting.amount, 0);
        }
    }

    /// @dev compute current (locking, released) amount of a Linear Vesting.
    function getLinear(Linear storage vesting, uint256 timestamp) internal view returns (uint256, uint256) {
        require(vesting.active, "Linear Vesting is not active");

        if (timestamp <= vesting.start) {
            return (vesting.amount, 0);
        } else if (timestamp > vesting.start && timestamp < vesting.end) {
            // the following computation will never overflow
            unchecked {
                // interval is always greater than 0 less than 1 year
                uint256 iTimes = (timestamp - vesting.start) / vesting.interval;
                uint256 nTimes = (vesting.end - vesting.start) / vesting.interval;
                // nTimes interval is always greater
                uint256 released = vesting.amount * iTimes / nTimes;
                return (vesting.amount - released, released);
            }
        } else {
            return (0, vesting.amount);
        }
    }

    /// @dev update a Cliff Vesting, return the released amount.
    function updateCliff(Cliff storage vesting, uint256 timestamp) internal returns (uint256) {
        if (!vesting.active || timestamp < vesting.expiration) {
            return 0;
        }

        vesting.active = false;
        return vesting.amount;
    }

    /// @dev update a Linear Vesting, return the released amount.
    function updateLinear(Linear storage vesting, uint256 timestamp) internal returns (uint256) {
        if (!vesting.active || timestamp < vesting.start + vesting.interval) {
            return 0;
        }

        if (timestamp < vesting.end) {
            // the following computation will never overflow
            unchecked {
                uint256 iTimes = (timestamp - vesting.start) / vesting.interval;
                uint256 nTimes = (vesting.end - vesting.start) / vesting.interval;
                uint256 released = vesting.amount * iTimes / nTimes;
                vesting.start = uint64(iTimes * vesting.interval + vesting.start);
                vesting.amount = vesting.amount - released;
                return released;
            }
        } else {
            vesting.active = false;
            return vesting.amount;
        }
    }
}