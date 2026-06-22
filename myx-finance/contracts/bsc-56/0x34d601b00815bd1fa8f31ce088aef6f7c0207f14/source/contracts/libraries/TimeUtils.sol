// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

library TimeUtils {
    uint256 public constant WEEK = 7 days;

    function getWeekBounds(uint256 timestamp, uint256 baseTimestamp) internal pure returns (uint256 startOfWeek, uint256 endOfWeek) {
        uint256 weekNumber = _calculateWeekNumber(timestamp, baseTimestamp);
        return getWeekBoundsByNumber(weekNumber, baseTimestamp);
    }

    function getWeekNumber(uint256 timestamp, uint256 baseTimestamp) internal pure returns (uint256 weekNumber) {
        return _calculateWeekNumber(timestamp, baseTimestamp);
    }

    function getWeekBoundsByNumber(uint256 weekNumber, uint256 baseTimestamp) internal pure returns (uint256 startOfWeek, uint256 endOfWeek) {
        require(weekNumber > 0, "Week number must be greater than 0");

        startOfWeek = baseTimestamp + (weekNumber - 1) * WEEK;
        endOfWeek = startOfWeek + WEEK - 1;
    }

    function _calculateWeekNumber(uint256 timestamp, uint256 baseTimestamp) private pure returns (uint256 weekNumber) {
        require(timestamp >= baseTimestamp, "Timestamp before base timestamp");
        weekNumber = ((timestamp - baseTimestamp) / WEEK) + 1;
    }
}
