// SPDX-License-Identifier: MIT
pragma solidity =0.8.26;

/*
 * @title Clock
 * @dev Non-upgradeable monotonic clock utility. 
 *      Guarantees time never goes backwards by caching the last seen timestamp
 *      and returning max(last, block.timestamp).
 */
abstract contract Clock {
    // Errors
    error FutureTimeSince(uint time, uint since);

    // Internal storage variable for last observed time
    uint private _lastTime;

    /*
     * @dev Returns the current time and updates the cached time so it never decreases.
     */
    function _time() internal returns (uint time) {
        uint prev = _lastTime;
        uint nowTs = block.timestamp;
        if (nowTs > prev) {
            time = _lastTime = nowTs;
        } else {
            time = prev;
        }
    }

    /*
     * @dev Peek current time without modifying storage. Returns max(_lastTime, block.timestamp).
     */
    function peekTime() public view returns (uint time) {
        uint prev = _lastTime;
        uint nowTs = block.timestamp;
        time = nowTs > prev ? nowTs : prev;
    }

    /*
     * @dev Returns the time elapsed since `since`. Reverts if since > current time.
     */
    function _timeSince(
        uint since
    ) internal returns (uint) {
        uint t = _time();
        if (t < since) {
            revert FutureTimeSince(t, since);
        }
        return t - since;
    }

    /*
     * @dev Like _timeSince but doesn't revert when `since` is in the future, returns 0 instead.
     */
    function _timeSinceZero(
        uint since
    ) internal returns (uint) {
        uint t = _time();
        return t < since ? 0 : (t - since);
    }

    /*
     * @dev View-only versions (do not update cache)
     */
    function peekTimeSince(
        uint since
    ) public view returns (uint) {
        uint t = peekTime();
        if (t < since) {
            revert FutureTimeSince(t, since);
        }
        return t - since;
    }

    function peekTimeSinceZero(
        uint since
    ) public view returns (uint) {
        uint t = peekTime();
        return t < since ? 0 : (t - since);
    }

    function internalClockTime() public view returns (uint) {
        return _lastTime;
    }
}
