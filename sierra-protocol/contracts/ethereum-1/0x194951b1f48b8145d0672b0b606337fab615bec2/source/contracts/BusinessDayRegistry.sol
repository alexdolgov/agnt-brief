// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./interfaces/IBusinessDayRegistry.sol";
import "./interfaces/IPoolFlex.sol";

import "./upgrades/BeaconImplementation.sol";

/**
 * @title Terms of Service Acceptance Registry.
 * @dev Terms of Service acceptance is required in the permissioned version of Perimeter
 * before lenders, borrowers, or PoolAdmin's can meaningfully interact with the protocol.
 */
contract BusinessDayRegistry is IBusinessDayRegistry, BeaconImplementation {
    mapping(uint64 => bool) private _isHoliday;
    error TransferInOverflow();
    error NotOperator();
    error NotPoolAdmin();
    error NotPoolsCalendar();
    uint64[] public isHolidayKeys;

    IPoolFlex private _pool;
    /**
     * @dev Restricts caller to ServiceOperator
     */
    modifier onlyOperator() {
        if (!_pool.serviceConfiguration().isOperator(msg.sender)) {
            revert NotOperator();
        }
        _;
    }
    modifier onlyPoolAdmin() {
        if (!_pool.serviceConfiguration().isPoolAdmin(msg.sender)) {
            revert NotPoolAdmin();
        }
        _;
    }
    modifier onlyPool() {
        if (address(_pool) != msg.sender) {
            revert NotPoolsCalendar();
        }
        _;
    }
    // 0 = Monday, 7 = Sunday
    function isWeekDay(uint64 _timestamp) public pure returns (bool) {
        uint64 _days = _timestamp / 1 days;

        uint64 dayOfWeek = ((_days + 4) % 7);

        return !(dayOfWeek == 0 || dayOfWeek == 6);
    }

    function toMidnight(uint64 _timestamp) public pure returns (uint64) {
        return _timestamp - (_timestamp % 1 days);
    }

    function addHoliday(uint64 _timestamp) external onlyPoolAdmin {
        uint64 _midnight = toMidnight(_timestamp);
        _isHoliday[_midnight] = true;
        isHolidayKeys.push(_midnight);

        emit AddHoliday(_midnight);
    }

    function isHoliday(uint64 _timestamp) public view returns (bool) {
        uint64 _midnight = toMidnight(_timestamp);

        return _isHoliday[_midnight];
    }

    function isBusinessDay(uint64 _timestamp) public view returns (bool) {
        if (!isWeekDay(_timestamp)) {
            return false;
        }
        if (isHoliday(_timestamp)) {
            return false;
        }
        return true;
    }

    function nonBusinessDays() public view returns (uint64[] memory) {
        return isHolidayKeys;
    }

    function updateNonBusinessDays(
        uint64[] memory _timestamps
    ) onlyPool public{
        uint256 length = isHolidayKeys.length;
        for (uint i = 0; i < length; i++) {
            delete _isHoliday[isHolidayKeys[i]];
        }
        for (uint i = 0; i < length; i++) {
            isHolidayKeys.pop();
        }

        for (uint i = 0; i < _timestamps.length; i++) {
            uint64 _midnight = toMidnight(_timestamps[i]);
            _isHoliday[_midnight] = true;
            isHolidayKeys.push(_midnight);
        }
    }

    function businessDaysToCalendarDays(
        uint64 _timestamp,
        uint256 cutoffTime,
        uint256 transferBusinessDays
    ) public view returns (uint8 numberOfDays, uint256 transferDayTimestamp) {
        require(transferBusinessDays < 5, "BD: transferInBusinessDays > 5");
        uint64 currentDay = toMidnight(_timestamp);

        uint256 timeOfDay = _timestamp % 1 days;

        if (timeOfDay < cutoffTime) {
            transferDayTimestamp = currentDay - 1 days;
            numberOfDays = 0;

            uint256 businessDays = 0;

            for (uint i = 0; i < 10; i++) {
                if (isBusinessDay(currentDay)) {
                    if (businessDays == transferBusinessDays) {
                        return (numberOfDays, transferDayTimestamp);
                    }

                    businessDays += 1;
                }

                transferDayTimestamp += 1 days;
                currentDay += 1 days;
                numberOfDays += 1;
            }
        } else {
            transferDayTimestamp = currentDay;
            numberOfDays = 0;

            transferDayTimestamp += 1 days;
            currentDay += 1 days;
            numberOfDays += 1;

            uint256 businessDays = 0;

            for (uint i = 0; i < 10; i++) {
                if (isBusinessDay(currentDay)) {
                    if (businessDays == transferBusinessDays) {
                        return (numberOfDays, transferDayTimestamp);
                    }

                    businessDays += 1;
                }

                transferDayTimestamp += 1 days;
                currentDay += 1 days;
                numberOfDays += 1;
            }
        }
        revert TransferInOverflow();
    }

    /**
     * @dev Initializer for the BusinessDayRegistry
     */
    function initialize(address poolAddr) public initializer {
        _pool = IPoolFlex(poolAddr);
    }
}
