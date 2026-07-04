// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/**
 * @title LibUtilsTime
 * @author Rain Team
 * @notice Conversion and arithmetic involving time.
 * @dev Intended to give clarity of usage.
 */
library LibUtilsTime {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev Converts time in seconds to milliseconds.
     * @param fromSeconds Time in seconds to convert.
     */
    function toMilliseconds(uint256 fromSeconds) internal pure returns (uint256) {
        return fromSeconds * 1000;
    }

    /**
     * @dev Converts time in milliseconds to seconds.
     * @param fromMilliseconds Time in milliseconds to convert.
     */
    function toSeconds(uint256 fromMilliseconds) internal pure returns (uint256) {
        return fromMilliseconds / 1000;
    }
}
