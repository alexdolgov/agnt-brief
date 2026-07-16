// SPDX-License-Identifier: GPL-3.0-only

pragma solidity >=0.8.0;

import "./Math.sol";

// a library for performing various date operations
library Dates {
    uint constant SECONDS_PER_DAY = 24 * 60 * 60;
    int constant OFFSET19700101 = 2440588;

    // Credit: https://github.com/bokkypoobah/BokkyPooBahsDateTimeLibrary/blob/master/contracts/BokkyPooBahsDateTimeLibrary.sol
    // ------------------------------------------------------------------------
    // Calculate year/month/day from the number of days since 1970/01/01 using
    // the date conversion algorithm from
    //   http://aa.usno.navy.mil/faq/docs/JD_Formula.php
    // and adding the offset 2440588 so that 1970/01/01 is day 0
    //
    // int L = days + 68569 + offset
    // int N = 4 * L / 146097
    // L = L - (146097 * N + 3) / 4
    // year = 4000 * (L + 1) / 1461001
    // L = L - 1461 * year / 4 + 31
    // month = 80 * L / 2447
    // dd = L - 2447 * month / 80
    // L = month / 11
    // month = month + 2 - 12 * L
    // year = 100 * (N - 49) + year + L
    // ------------------------------------------------------------------------
    function _daysToDate(
        uint _days
    ) internal pure returns (uint year, uint month, uint day) {
        int __days = int(_days);

        int L = __days + 68569 + OFFSET19700101;
        int N = (4 * L) / 146097;
        L = L - (146097 * N + 3) / 4;
        int _year = (4000 * (L + 1)) / 1461001;
        L = L - (1461 * _year) / 4 + 31;
        int _month = (80 * L) / 2447;
        int _day = L - (2447 * _month) / 80;
        L = _month / 11;
        _month = _month + 2 - 12 * L;
        _year = 100 * (N - 49) + _year + L;

        year = uint(_year);
        month = uint(_month);
        day = uint(_day);
    }

    /// @notice Returns the given timestamp date, but aligned to the prior 8am UTC dateOffset in the past
    /// unless the timestamp is exactly 8am UTC, in which case it will return the same
    /// value as the timestamp. If _dateOffset is 1 day then this function
    /// will align on every day at 8am, and if its 1 week it will align on every Friday 8am UTC
    /// @param _timestamp a block time (seconds past epoch)
    /// @return the block time of the prior (or current) 8am UTC date, dateOffset in the past
    function get8amAligned(
        uint256 _timestamp,
        uint256 _dateOffset
    ) internal pure returns (uint256) {
        require(
            _dateOffset == 1 weeks || _dateOffset == 1 days,
            "Invalid dateOffset"
        );

        uint256 numOffsetsSinceEpochStart = _timestamp / _dateOffset;

        // this will get us the timestamp of the Thursday midnight date prior to _timestamp if
        // dateOffset equals 1 week, or it will get us the timestamp of midnight of the previous
        // day if dateOffset equals 1 day. We rely on Solidity's integral rounding in the line above
        uint256 timestampRoundedDown = numOffsetsSinceEpochStart * _dateOffset;

        if (_dateOffset == 1 days) {
            uint256 eightHoursAligned = timestampRoundedDown + 8 hours;
            if (eightHoursAligned > _timestamp) {
                return eightHoursAligned - 1 days;
            } else {
                return eightHoursAligned;
            }
        } else {
            uint256 fridayEightHoursAligned = timestampRoundedDown +
                (1 days + 8 hours);
            if (fridayEightHoursAligned > _timestamp) {
                return fridayEightHoursAligned - 1 weeks;
            } else {
                return fridayEightHoursAligned;
            }
        }
    }
}
