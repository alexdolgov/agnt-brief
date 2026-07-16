// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.2.0
pragma solidity =0.8.26;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/*
 * @title UpgradeableClock
 * @dev The clock contract allows users to get the current time.
 *      The clock never goes back in time, even if the time is manipulated by validators.
 * @author Felix
 */
abstract contract UpgradeableClock is Initializable {
    /*
     * @dev Throws when the time is in the future.
     * @param time The current time.
     * @param since The time to compare.
     */
    error FutureTimeSince(uint time, uint since);

    /// @custom:storage-location erc7201:turtle.storage.ClockStorage
    struct ClockStorage {
        uint _time;
    }

    /// keccak256(abi.encode(uint256(keccak256("turtle.storage.ClockStorage")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ClockStorageLocation = 0xce3c6b2d8e12e79199df47e21bafe2bf46a1d2162c1f5d95a0fa79ded294c500;

    /*
     * @dev Returns the clock storage in the form of ClockStorage.
     * @return The clock storage.
     */
    function _getClockStorage() private pure returns (ClockStorage storage $) {
        assembly ("memory-safe") {
            $.slot := ClockStorageLocation
        }
    }

    /*
     * @dev Initializes the clock.
     */
    function __Clock_init() internal onlyInitializing {
        __Clock_init_unchained();
    }

    /*
     * @dev Initializes the clock.
     */
    function __Clock_init_unchained() internal onlyInitializing {
        ClockStorage storage $ = _getClockStorage();
        $._time = block.timestamp;
    }

    /*
     * @dev Returns the current time.
     * @return The current time.
     */
    function _time() internal returns (uint time) {
        ClockStorage storage $ = _getClockStorage();
        uint prev = $._time;

        if (block.timestamp > prev) {
            time = $._time = block.timestamp;
        } else {
            time = prev;
        }
    }

    /*
     * @dev Returns the current time.
     * @return The current time.
     */
    function peekTime() public view returns (uint time) {
        ClockStorage storage $ = _getClockStorage();
        uint prev = $._time;

        if (block.timestamp > prev) {
            time = block.timestamp;
        } else {
            time = prev;
        }
    }

    /*
     * @dev Returns the time since a given time.
     * @param since The time to compare.
     * @return The time since the given time.
     */
    function _timeSince(
        uint since
    ) internal returns (uint) {
        uint time = _time();

        if (since > time) {
            revert FutureTimeSince(time, since);
        }

        unchecked {
            return time - since;
        }
    }

    /*
     * @dev Returns the time since a given time.
     *      If the time is in the future, it returns 0.
     * @param since The time to compare.
     * @return The time since the given time.
     */
    function _timeSinceZero(
        uint since
    ) internal returns (uint) {
        uint time = _time();

        if (since > time) {
            return 0;
        }

        unchecked {
            return time - since;
        }
    }

    /*
     * @dev Returns the time since a given time.
     * @param since The time to compare.
     * @return The time since the given time.
     */
    function peekTimeSince(
        uint since
    ) public view returns (uint) {
        uint time = peekTime();

        if (since > time) {
            revert FutureTimeSince(time, since);
        }

        unchecked {
            return time - since;
        }
    }

    /*
     * @dev Returns the time since a given time.
     *      If the time is in the future, it returns 0.
     * @param since The time to compare.
     * @return The time since the given time.
     */
    function peekTimeSinceZero(
        uint since
    ) public view returns (uint) {
        uint time = peekTime();

        if (since > time) {
            return 0;
        }

        unchecked {
            return time - since;
        }
    }

    /*
     * @dev Returns the internal time for the clock.
     * @return The internal time.
     */
    function internalClockTime() public view returns (uint) {
        return _getClockStorage()._time;
    }
}
