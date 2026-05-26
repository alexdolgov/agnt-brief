//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title The interface for interacting with IBusinessDayRegistry
 */

interface IBusinessDayRegistry {
  event AddHoliday(uint256 _timestamp);

  function isBusinessDay(uint64 _timestamp) external view returns (bool);

  function isHoliday(uint64 _timestamp) external view returns (bool);

  function isWeekDay(uint64 _timestamp) external pure returns (bool);

  function addHoliday(uint64 _timestamp) external;

  function toMidnight(uint64 _timestamp) external pure returns (uint64);

  function nonBusinessDays() external view returns (uint64[] memory);

  function updateNonBusinessDays(uint64[] memory _timestamps) external;

  function businessDaysToCalendarDays(
    uint64 _timestamp,
    uint256 depositCutoffTime,
    uint256 transferBusinessDays
  ) external view returns (uint8 numberOfDays, uint256 transferDayTimestamp);
}
