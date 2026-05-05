// ============================================================
// FILE: lib/BokkyPooBahsDateTimeLibrary/contracts/BokkyPooBahsDateTimeLibrary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

// ----------------------------------------------------------------------------
// BokkyPooBah's DateTime Library v1.01
//
// A gas-efficient Solidity date and time library
//
// https://github.com/bokkypoobah/BokkyPooBahsDateTimeLibrary
//
// Tested date range 1970/01/01 to 2345/12/31
//
// Conventions:
// Unit      | Range         | Notes
// :-------- |:-------------:|:-----
// timestamp | >= 0          | Unix timestamp, number of seconds since 1970/01/01 00:00:00 UTC
// year      | 1970 ... 2345 |
// month     | 1 ... 12      |
// day       | 1 ... 31      |
// hour      | 0 ... 23      |
// minute    | 0 ... 59      |
// second    | 0 ... 59      |
// dayOfWeek | 1 ... 7       | 1 = Monday, ..., 7 = Sunday
//
//
// Enjoy. (c) BokkyPooBah / Bok Consulting Pty Ltd 2018-2019. The MIT Licence.
// ----------------------------------------------------------------------------

library BokkyPooBahsDateTimeLibrary {

    uint constant SECONDS_PER_DAY = 24 * 60 * 60;
    uint constant SECONDS_PER_HOUR = 60 * 60;
    uint constant SECONDS_PER_MINUTE = 60;
    int constant OFFSET19700101 = 2440588;

    uint constant DOW_MON = 1;
    uint constant DOW_TUE = 2;
    uint constant DOW_WED = 3;
    uint constant DOW_THU = 4;
    uint constant DOW_FRI = 5;
    uint constant DOW_SAT = 6;
    uint constant DOW_SUN = 7;

    // ------------------------------------------------------------------------
    // Calculate the number of days from 1970/01/01 to year/month/day using
    // the date conversion algorithm from
    //   https://aa.usno.navy.mil/faq/JD_formula.html
    // and subtracting the offset 2440588 so that 1970/01/01 is day 0
    //
    // days = day
    //      - 32075
    //      + 1461 * (year + 4800 + (month - 14) / 12) / 4
    //      + 367 * (month - 2 - (month - 14) / 12 * 12) / 12
    //      - 3 * ((year + 4900 + (month - 14) / 12) / 100) / 4
    //      - offset
    // ------------------------------------------------------------------------
    function _daysFromDate(uint year, uint month, uint day) internal pure returns (uint _days) {
        require(year >= 1970);
        int _year = int(year);
        int _month = int(month);
        int _day = int(day);

        int __days = _day
          - 32075
          + 1461 * (_year + 4800 + (_month - 14) / 12) / 4
          + 367 * (_month - 2 - (_month - 14) / 12 * 12) / 12
          - 3 * ((_year + 4900 + (_month - 14) / 12) / 100) / 4
          - OFFSET19700101;

        _days = uint(__days);
    }

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
    function _daysToDate(uint _days) internal pure returns (uint year, uint month, uint day) {
        int __days = int(_days);

        int L = __days + 68569 + OFFSET19700101;
        int N = 4 * L / 146097;
        L = L - (146097 * N + 3) / 4;
        int _year = 4000 * (L + 1) / 1461001;
        L = L - 1461 * _year / 4 + 31;
        int _month = 80 * L / 2447;
        int _day = L - 2447 * _month / 80;
        L = _month / 11;
        _month = _month + 2 - 12 * L;
        _year = 100 * (N - 49) + _year + L;

        year = uint(_year);
        month = uint(_month);
        day = uint(_day);
    }

    function timestampFromDate(uint year, uint month, uint day) internal pure returns (uint timestamp) {
        timestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY;
    }
    function timestampFromDateTime(uint year, uint month, uint day, uint hour, uint minute, uint second) internal pure returns (uint timestamp) {
        timestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY + hour * SECONDS_PER_HOUR + minute * SECONDS_PER_MINUTE + second;
    }
    function timestampToDate(uint timestamp) internal pure returns (uint year, uint month, uint day) {
        (year, month, day) = _daysToDate(timestamp / SECONDS_PER_DAY);
    }
    function timestampToDateTime(uint timestamp) internal pure returns (uint year, uint month, uint day, uint hour, uint minute, uint second) {
        (year, month, day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        uint secs = timestamp % SECONDS_PER_DAY;
        hour = secs / SECONDS_PER_HOUR;
        secs = secs % SECONDS_PER_HOUR;
        minute = secs / SECONDS_PER_MINUTE;
        second = secs % SECONDS_PER_MINUTE;
    }

    function isValidDate(uint year, uint month, uint day) internal pure returns (bool valid) {
        if (year >= 1970 && month > 0 && month <= 12) {
            uint daysInMonth = _getDaysInMonth(year, month);
            if (day > 0 && day <= daysInMonth) {
                valid = true;
            }
        }
    }
    function isValidDateTime(uint year, uint month, uint day, uint hour, uint minute, uint second) internal pure returns (bool valid) {
        if (isValidDate(year, month, day)) {
            if (hour < 24 && minute < 60 && second < 60) {
                valid = true;
            }
        }
    }
    function isLeapYear(uint timestamp) internal pure returns (bool leapYear) {
        (uint year,,) = _daysToDate(timestamp / SECONDS_PER_DAY);
        leapYear = _isLeapYear(year);
    }
    function _isLeapYear(uint year) internal pure returns (bool leapYear) {
        leapYear = ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
    }
    function isWeekDay(uint timestamp) internal pure returns (bool weekDay) {
        weekDay = getDayOfWeek(timestamp) <= DOW_FRI;
    }
    function isWeekEnd(uint timestamp) internal pure returns (bool weekEnd) {
        weekEnd = getDayOfWeek(timestamp) >= DOW_SAT;
    }
    function getDaysInMonth(uint timestamp) internal pure returns (uint daysInMonth) {
        (uint year, uint month,) = _daysToDate(timestamp / SECONDS_PER_DAY);
        daysInMonth = _getDaysInMonth(year, month);
    }
    function _getDaysInMonth(uint year, uint month) internal pure returns (uint daysInMonth) {
        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
            daysInMonth = 31;
        } else if (month != 2) {
            daysInMonth = 30;
        } else {
            daysInMonth = _isLeapYear(year) ? 29 : 28;
        }
    }
    // 1 = Monday, 7 = Sunday
    function getDayOfWeek(uint timestamp) internal pure returns (uint dayOfWeek) {
        uint _days = timestamp / SECONDS_PER_DAY;
        dayOfWeek = (_days + 3) % 7 + 1;
    }

    function getYear(uint timestamp) internal pure returns (uint year) {
        (year,,) = _daysToDate(timestamp / SECONDS_PER_DAY);
    }
    function getMonth(uint timestamp) internal pure returns (uint month) {
        (,month,) = _daysToDate(timestamp / SECONDS_PER_DAY);
    }
    function getDay(uint timestamp) internal pure returns (uint day) {
        (,,day) = _daysToDate(timestamp / SECONDS_PER_DAY);
    }
    function getHour(uint timestamp) internal pure returns (uint hour) {
        uint secs = timestamp % SECONDS_PER_DAY;
        hour = secs / SECONDS_PER_HOUR;
    }
    function getMinute(uint timestamp) internal pure returns (uint minute) {
        uint secs = timestamp % SECONDS_PER_HOUR;
        minute = secs / SECONDS_PER_MINUTE;
    }
    function getSecond(uint timestamp) internal pure returns (uint second) {
        second = timestamp % SECONDS_PER_MINUTE;
    }

    function addYears(uint timestamp, uint _years) internal pure returns (uint newTimestamp) {
        (uint year, uint month, uint day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        year += _years;
        uint daysInMonth = _getDaysInMonth(year, month);
        if (day > daysInMonth) {
            day = daysInMonth;
        }
        newTimestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY + timestamp % SECONDS_PER_DAY;
        require(newTimestamp >= timestamp);
    }
    function addMonths(uint timestamp, uint _months) internal pure returns (uint newTimestamp) {
        (uint year, uint month, uint day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        month += _months;
        year += (month - 1) / 12;
        month = (month - 1) % 12 + 1;
        uint daysInMonth = _getDaysInMonth(year, month);
        if (day > daysInMonth) {
            day = daysInMonth;
        }
        newTimestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY + timestamp % SECONDS_PER_DAY;
        require(newTimestamp >= timestamp);
    }
    function addDays(uint timestamp, uint _days) internal pure returns (uint newTimestamp) {
        newTimestamp = timestamp + _days * SECONDS_PER_DAY;
        require(newTimestamp >= timestamp);
    }
    function addHours(uint timestamp, uint _hours) internal pure returns (uint newTimestamp) {
        newTimestamp = timestamp + _hours * SECONDS_PER_HOUR;
        require(newTimestamp >= timestamp);
    }
    function addMinutes(uint timestamp, uint _minutes) internal pure returns (uint newTimestamp) {
        newTimestamp = timestamp + _minutes * SECONDS_PER_MINUTE;
        require(newTimestamp >= timestamp);
    }
    function addSeconds(uint timestamp, uint _seconds) internal pure returns (uint newTimestamp) {
        newTimestamp = timestamp + _seconds;
        require(newTimestamp >= timestamp);
    }

    function subYears(uint timestamp, uint _years) internal pure returns (uint newTimestamp) {
        (uint year, uint month, uint day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        year -= _years;
        uint daysInMonth = _getDaysInMonth(year, month);
        if (day > daysInMonth) {
            day = daysInMonth;
        }
        newTimestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY + timestamp % SECONDS_PER_DAY;
        require(newTimestamp <= timestamp);
    }
    function subMonths(uint timestamp, uint _months) internal pure returns (uint newTimestamp) {
        (uint year, uint month, uint day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        uint yearMonth = year * 12 + (month - 1) - _months;
        year = yearMonth / 12;
        month = yearMonth % 12 + 1;
        uint daysInMonth = _getDaysInMonth(year, month);
        if (day > daysInMonth) {
            day = daysInMonth;
        }
        newTimestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY + timestamp % SECONDS_PER_DAY;
        require(newTimestamp <= timestamp);
    }
    function subDays(uint timestamp, uint _days) internal pure returns (uint newTimestamp) {
        newTimestamp = timestamp - _days * SECONDS_PER_DAY;
        require(newTimestamp <= timestamp);
    }
    function subHours(uint timestamp, uint _hours) internal pure returns (uint newTimestamp) {
        newTimestamp = timestamp - _hours * SECONDS_PER_HOUR;
        require(newTimestamp <= timestamp);
    }
    function subMinutes(uint timestamp, uint _minutes) internal pure returns (uint newTimestamp) {
        newTimestamp = timestamp - _minutes * SECONDS_PER_MINUTE;
        require(newTimestamp <= timestamp);
    }
    function subSeconds(uint timestamp, uint _seconds) internal pure returns (uint newTimestamp) {
        newTimestamp = timestamp - _seconds;
        require(newTimestamp <= timestamp);
    }

    function diffYears(uint fromTimestamp, uint toTimestamp) internal pure returns (uint _years) {
        require(fromTimestamp <= toTimestamp);
        (uint fromYear,,) = _daysToDate(fromTimestamp / SECONDS_PER_DAY);
        (uint toYear,,) = _daysToDate(toTimestamp / SECONDS_PER_DAY);
        _years = toYear - fromYear;
    }
    function diffMonths(uint fromTimestamp, uint toTimestamp) internal pure returns (uint _months) {
        require(fromTimestamp <= toTimestamp);
        (uint fromYear, uint fromMonth,) = _daysToDate(fromTimestamp / SECONDS_PER_DAY);
        (uint toYear, uint toMonth,) = _daysToDate(toTimestamp / SECONDS_PER_DAY);
        _months = toYear * 12 + toMonth - fromYear * 12 - fromMonth;
    }
    function diffDays(uint fromTimestamp, uint toTimestamp) internal pure returns (uint _days) {
        require(fromTimestamp <= toTimestamp);
        _days = (toTimestamp - fromTimestamp) / SECONDS_PER_DAY;
    }
    function diffHours(uint fromTimestamp, uint toTimestamp) internal pure returns (uint _hours) {
        require(fromTimestamp <= toTimestamp);
        _hours = (toTimestamp - fromTimestamp) / SECONDS_PER_HOUR;
    }
    function diffMinutes(uint fromTimestamp, uint toTimestamp) internal pure returns (uint _minutes) {
        require(fromTimestamp <= toTimestamp);
        _minutes = (toTimestamp - fromTimestamp) / SECONDS_PER_MINUTE;
    }
    function diffSeconds(uint fromTimestamp, uint toTimestamp) internal pure returns (uint _seconds) {
        require(fromTimestamp <= toTimestamp);
        _seconds = toTimestamp - fromTimestamp;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.1) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;

import "../../utils/AddressUpgradeable.sol";

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized < type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/interfaces/draft-IERC1822.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.0;

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822Proxiable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/proxy/beacon/IBeacon.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.0;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {BeaconProxy} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Upgrade.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (proxy/ERC1967/ERC1967Upgrade.sol)

pragma solidity ^0.8.2;

import "../beacon/IBeacon.sol";
import "../../interfaces/draft-IERC1822.sol";
import "../../utils/Address.sol";
import "../../utils/StorageSlot.sol";

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 *
 * _Available since v4.1._
 *
 * @custom:oz-upgrades-unsafe-allow delegatecall
 */
abstract contract ERC1967Upgrade {
    // This is the keccak-256 hash of "eip1967.proxy.rollback" subtracted by 1
    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Returns the current implementation address.
     */
    function _getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Perform implementation upgrade
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeTo(address newImplementation) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);
    }

    /**
     * @dev Perform implementation upgrade with additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCall(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        _upgradeTo(newImplementation);
        if (data.length > 0 || forceCall) {
            Address.functionDelegateCall(newImplementation, data);
        }
    }

    /**
     * @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCallUUPS(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        // Upgrades from old implementations will perform a rollback test. This test requires the new
        // implementation to upgrade back to the old, non-ERC1822 compliant, implementation. Removing
        // this special case will break upgrade paths from old UUPS implementation to new ones.
        if (StorageSlot.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822Proxiable(newImplementation).proxiableUUID() returns (bytes32 slot) {
                require(slot == _IMPLEMENTATION_SLOT, "ERC1967Upgrade: unsupported proxiableUUID");
            } catch {
                revert("ERC1967Upgrade: new implementation is not UUPS");
            }
            _upgradeToAndCall(newImplementation, data, forceCall);
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Returns the current admin.
     */
    function _getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(_ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlot.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {AdminChanged} event.
     */
    function _changeAdmin(address newAdmin) internal {
        emit AdminChanged(_getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is bytes32(uint256(keccak256('eip1967.proxy.beacon')) - 1)) and is validated in the constructor.
     */
    bytes32 internal constant _BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Emitted when the beacon is upgraded.
     */
    event BeaconUpgraded(address indexed beacon);

    /**
     * @dev Returns the current beacon.
     */
    function _getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(_BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        require(Address.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(
            Address.isContract(IBeacon(newBeacon).implementation()),
            "ERC1967: beacon implementation is not a contract"
        );
        StorageSlot.getAddressSlot(_BEACON_SLOT).value = newBeacon;
    }

    /**
     * @dev Perform beacon upgrade with additional setup call. Note: This upgrades the address of the beacon, it does
     * not upgrade the implementation contained in the beacon (see {UpgradeableBeacon-_setImplementation} for that).
     *
     * Emits a {BeaconUpgraded} event.
     */
    function _upgradeBeaconToAndCall(
        address newBeacon,
        bytes memory data,
        bool forceCall
    ) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);
        if (data.length > 0 || forceCall) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.1) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;

import "../../utils/Address.sol";

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!Address.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized < type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/proxy/utils/UUPSUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (proxy/utils/UUPSUpgradeable.sol)

pragma solidity ^0.8.0;

import "../../interfaces/draft-IERC1822.sol";
import "../ERC1967/ERC1967Upgrade.sol";

/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 *
 * _Available since v4.1._
 */
abstract contract UUPSUpgradeable is IERC1822Proxiable, ERC1967Upgrade {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address private immutable __self = address(this);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        require(address(this) != __self, "Function must be called through delegatecall");
        require(_getImplementation() == __self, "Function must be called through active proxy");
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        require(address(this) == __self, "UUPSUpgradeable: must not be called through delegatecall");
        _;
    }

    /**
     * @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate the implementation's compatibility when performing an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual override notDelegated returns (bytes32) {
        return _IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeTo(address newImplementation) external virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, new bytes(0), false);
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) external payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data, true);
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeTo} and {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal override onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/draft-IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/draft-IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../extensions/draft-IERC20Permit.sol";
import "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    function safeTransfer(
        IERC20 token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            uint256 newAllowance = oldAllowance - value;
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        }
    }

    function safePermit(
        IERC20Permit token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) {
            // Return data is optional
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1);

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator,
        Rounding rounding
    ) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10**64) {
                value /= 10**64;
                result += 64;
            }
            if (value >= 10**32) {
                value /= 10**32;
                result += 32;
            }
            if (value >= 10**16) {
                value /= 10**16;
                result += 16;
            }
            if (value >= 10**8) {
                value /= 10**8;
                result += 8;
            }
            if (value >= 10**4) {
                value /= 10**4;
                result += 4;
            }
            if (value >= 10**2) {
                value /= 10**2;
                result += 2;
            }
            if (value >= 10**1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10**result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result * 8) < value ? 1 : 0);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/StorageSlot.sol)

pragma solidity ^0.8.0;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * _Available since v4.1 for `address`, `bool`, `bytes32`, and `uint256`._
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }
}

// ============================================================
// FILE: src/config/constants.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

/// @dev Fees are 18-decimal places. For example: 20 * 10**18 = 20%
uint256 constant FEE_MULTIPLIER = 10 ** 18;
uint256 constant HUNDRED_PCT = 100 * FEE_MULTIPLIER;

uint256 constant AFTER_HOURS_DISABLED = type(uint256).max;

uint8 constant ROLE_INVESTOR = 0;
uint8 constant ROLE_INVESTOR_BETA = 1;
uint8 constant ROLE_RESERVES = 7;
uint8 constant ROLE_ENTITLEMENTS = 8;
uint8 constant ROLE_TELLER = 9;
uint8 constant ROLE_ORACLE = 10;
uint8 constant ROLE_MESSENGER = 11;
uint8 constant ROLE_CCTP = 12;
uint8 constant ROLE_CUSTODIAN_CENTRAL = 18;
uint8 constant ROLE_CUSTODIAN_DECENTRAL = 19;
uint8 constant ROLE_TOKEN_MINTER = 20;
uint8 constant ROLE_FUND_ADMIN = type(uint8).max;

// ============================================================
// FILE: src/config/errors.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

error NoAccess();
error NotPermissioned();
error NotSupported();
error BadAddress();
error BadAmount();
error BadDecimals();
error ZeroShares();
error ZeroAssets();
error BadTime();
error BadArrayLength();
error CallFailed();
error LimitExceeded();

// ============================================================
// FILE: src/config/types.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

struct TellerConfig {
    address owner;
    address asset;
    address share;
    address oracle;
    address treasury;
    address feeRecipient;
    uint64 subscribeFee;
    uint64 redeemFee;
    uint256 afterHourTrading;
    uint56 subscribeLimit;
    uint56 redeemLimit;
}

// ============================================================
// FILE: src/core/coins/ERC20.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

/// @notice Modern and gas efficient ERC20 + EIP-2612 implementation.
/// @author dsshap (Circle)
/// @author Modified from Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC20.sol)
/// @author Modified from Uniswap (https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol)
/// @dev Do not manually set balances without updating totalSupply, as the sum of all user balances must not exceed it.
abstract contract ERC20 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 amount);

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    /*//////////////////////////////////////////////////////////////
                            EIP-2612 STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(address => uint256) public nonces;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor() {}

    /*//////////////////////////////////////////////////////////////
                               ERC20 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(address to, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(address from, address to, uint256 amount) public virtual returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 amount) internal virtual {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        balanceOf[from] -= amount;

        // Cannot underflow because a user's balance
        // will never be larger than the total supply.
        unchecked {
            totalSupply -= amount;
        }

        emit Transfer(from, address(0), amount);
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        public
        virtual
    {
        require(deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");

        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(
                            abi.encode(
                                keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)"),
                                owner,
                                spender,
                                value,
                                nonces[owner]++,
                                deadline
                            )
                        )
                    )
                ),
                v,
                r,
                s
            );

            require(recoveredAddress != address(0) && recoveredAddress == owner, "INVALID_SIGNER");

            allowance[recoveredAddress][spender] = value;
        }

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return _computeDomainSeparator();
    }

    function _computeDomainSeparator() internal view virtual returns (bytes32) {
        return keccak256(
            abi.encode(
                keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                keccak256(bytes(name)),
                keccak256("1"),
                block.chainid,
                address(this)
            )
        );
    }
}

// ============================================================
// FILE: src/core/coins/YieldCoin.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

// imported contracts and libraries
import {Access} from "../entitlements/Access.sol";
import {ERC20} from "./ERC20.sol";
import {Initializable} from "openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {Ownable} from "../entitlements/Ownable.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "openzeppelin/proxy/utils/UUPSUpgradeable.sol";

// interfaces
import {IToken} from "../../interfaces/IToken.sol";
import {Teller} from "../tellers/Teller.sol";

import "../../config/constants.sol";
import "../../config/errors.sol";

/**
 * @title   YieldCoin
 * @author  dsshap
 * @dev     Represent the shares of a tokenized Fund
 *             The value of the token should always be positive.
 */
contract YieldCoin is ERC20, Initializable, Access, Ownable, UUPSUpgradeable {
    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event TellerSet(address teller, address newTeller);
    event UnderlyingSet(address token);
    event Sweep(address indexed recipient, address token, uint256 amount);
    event MinterConfigured(address minter, uint256 amount);

    /// @notice ***DEPRECATED***
    event FeeRecipientSet(address recipient, address newRecipient);
    event ManagementFeeSet(uint256 managementFee, uint256 newManagementFee);
    event OracleSet(address oracle, address newOracle);
    event TradeToFiat(address indexed recipient, address token, uint256 amount);
    event Deposit(address indexed from, uint256 amount);
    event Withdrawal(address indexed to, uint256 amount);
    event FeeProcessed(address indexed recipient, uint256 fee);

    /*///////////////////////////////////////////////////////////////
                         State Variables V1 & V2
    //////////////////////////////////////////////////////////////*/

    uint256[7] private __deprecatedGap0;

    /*///////////////////////////////////////////////////////////////
                         State Variables V3
    //////////////////////////////////////////////////////////////*/

    /// @notice the addresses that are able to mint new tokens
    mapping(address => uint256) public minterAllowance;

    /*///////////////////////////////////////////////////////////////
                         State Variables V4
    //////////////////////////////////////////////////////////////*/

    uint256 internal _decimals;

    uint256 internal immutable _initialChainId;

    bytes32 internal _initialDomainSeparator;

    uint256[1] private __deprecatedGap1;

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _authority) ERC20() Access(_authority) {
        _initialChainId = block.chainid;

        _disableInitializers();
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/

    function initialize(string memory _name, string memory _symbol, uint8 _dec, address _owner, address _minter)
        external
        initializer
    {
        if (_owner == address(0)) revert BadAddress();
        if (_minter == address(0)) revert BadAddress();

        _transferOwnership(_owner);

        name = _name;
        symbol = _symbol;
        _decimals = _dec;

        minterAllowance[_minter] = type(uint256).max;

        _initialDomainSeparator = _computeDomainSeparator();
    }

    /*///////////////////////////////////////////////////////////////
                        ERC20 Functions
    //////////////////////////////////////////////////////////////*/

    function transfer(address _to, uint256 _amount) public virtual override returns (bool) {
        _assertPermission(msg.sender);
        _assertCanReceive(address(this), _to);

        return super.transfer(_to, _amount);
    }

    function transferFrom(address _from, address _to, uint256 _amount) public virtual override returns (bool) {
        if (_isFundAdmin()) {
            balanceOf[_from] -= _amount;

            // Cannot overflow because the sum of all user
            // balances can't exceed the max uint256 value.
            unchecked {
                balanceOf[_to] += _amount;
            }

            emit Transfer(_from, _to, _amount);

            return true;
        } else {
            _assertPermission(msg.sender);
            _assertCanReceive(address(this), _from, _to);

            return super.transferFrom(_from, _to, _amount);
        }
    }

    function mint(address _to, uint256 _amount) external returns (bool) {
        uint256 allowed = minterAllowance[msg.sender]; // Saves gas for limited approvals.
        if (allowed != type(uint256).max) minterAllowance[msg.sender] = allowed - _amount;

        // checking that recipient has permissions to hold/transfer token
        _assertCanReceive(address(this), _to);

        _mint(_to, _amount);

        return true;
    }

    /**
     * @notice burns for sender
     * @param _amount The amount to burn
     */
    function burn(uint256 _amount) external {
        _assertPermission(msg.sender);

        _burn(msg.sender, _amount);
    }

    /**
     * @notice burns tokens for a user
     * @dev only callable by minter
     * @param _from The address to burn tokens for
     * @param _amount The amount of tokens to burn
     */
    function burn(address _from, uint256 _amount) public {
        if (minterAllowance[msg.sender] == 0) revert NoAccess();

        // checking that recipient has permissions to hold/transfer token
        _assertCanReceive(address(this), _from);

        _burn(_from, _amount);
    }

    /**
     * @notice burns tokens for a user
     * @dev only callable by minter
     * @param _from The address to burn tokens for
     * @param _amount The amount of tokens to burn
     */
    function burnFor(address _from, uint256 _amount) external {
        burn(_from, _amount);
    }

    function decimals() public view returns (uint8) {
        return uint8(_decimals);
    }

    /**
     * @notice Sends token to be converted to fiat
     * @param _token address of token
     * @param _amount is the amount
     * @param _recipient the destination
     */
    function sweep(address _token, uint256 _amount, address _recipient) external virtual {
        _assertFundAdmin();

        if (!authority.doesUserHaveRole(_recipient, ROLE_RESERVES)) revert NotPermissioned();

        emit Sweep(_recipient, _token, _amount);

        SafeERC20.safeTransfer(IToken(_token), _recipient, _amount);
    }

    /*///////////////////////////////////////////////////////////////
                        Management Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Sets the minter role and the amount of tokens the minter is allowed to mint
     * @param _minter is the address of the new minter
     * @param _amount is the amount of tokens the minter is allowed to mint
     */
    function setMinterAllowance(address _minter, uint256 _amount) public {
        _assertPermission(msg.sender);

        if (_minter == address(0)) revert BadAddress();

        emit MinterConfigured(_minter, _amount);

        minterAllowance[_minter] = _amount;
    }

    /**
     * @notice Increments the amount of token a minter is allowed to mint
     * @param _minter is the address of the new minter
     * @param _amount is the amount of tokens to increase the allowance by
     */
    function incrementMinterAllowance(address _minter, uint256 _amount) external {
        uint256 current = minterAllowance[_minter];

        setMinterAllowance(_minter, current + _amount);
    }

    /**
     * @notice Decrements the amount of tokens a minter is allowed to mint
     * @param _minter is the address of the new minter
     * @param _amount is the amount of tokens to decrease the allowance by
     */
    function decrementMinterAllowance(address _minter, uint256 _amount) external {
        uint256 current = minterAllowance[_minter];
        uint256 decrement = current > _amount ? _amount : current;

        setMinterAllowance(_minter, current - decrement);
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function DOMAIN_SEPARATOR() public view override returns (bytes32) {
        return block.chainid == _initialChainId ? _initialDomainSeparator : _computeDomainSeparator();
    }

    /*///////////////////////////////////////////////////////////////
                    Override Upgrade Permission
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Upgradable by the owner.
     *
     */
    function _authorizeUpgrade(
        address /*newImplementation*/
    )
        internal
        virtual
        override
    {
        _assertOwner();
    }
}

// ============================================================
// FILE: src/core/entitlements/Access.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

import {RolesAuthority} from "./RolesAuthority.sol";

import "../../config/constants.sol";
import "../../config/errors.sol";

/// @notice Abstract contract that provides a base for role-based access control.
/// @author dsshap (Circle)
abstract contract Access {
    /*///////////////////////////////////////////////////////////////
                         Immutables & Constants
    //////////////////////////////////////////////////////////////*/

    /// @notice authority to check entitlements
    RolesAuthority public immutable authority;

    /*///////////////////////////////////////////////////////////////
                         Storage Variables
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     */
    uint256[50] private __gap;

    /// @notice bytes sig for token transfer function
    bytes4 private constant _TOKEN_TRANSFER_SELECTOR = bytes4(keccak256("transfer(address,uint256)"));

    constructor(address _authority) {
        if (_authority == address(0)) revert BadAddress();

        authority = RolesAuthority(_authority);
    }

    /**
     * @dev queries if msg.sender is fund admin
     *
     */
    function _isFundAdmin() internal view virtual returns (bool) {
        return authority.doesUserHaveRole(msg.sender, ROLE_FUND_ADMIN);
    }

    /**
     * @dev asserts that msg.sender is fund admin
     *
     */
    function _assertFundAdmin() internal view virtual {
        if (!_isFundAdmin()) revert NotPermissioned();
    }

    /**
     * @dev asserts that address is able to call function
     *
     */
    function _assertPermission(address addr) internal view virtual {
        _assertCanCall(addr, address(this), msg.sig);
    }

    /**
     * @dev asserts that address is able to transfer erc20 token
     *
     */
    function _assertCanReceive(address token, address addr) internal view virtual {
        _assertCanCall(addr, token, _TOKEN_TRANSFER_SELECTOR);
    }

    /**
     * @dev asserts that two addresses can transfer erc20 token
     *
     */
    function _assertCanReceive(address token, address addr1, address addr2) internal view virtual {
        _assertCanCall(addr1, addr2, token, _TOKEN_TRANSFER_SELECTOR);
    }

    /**
     * @dev call authority and asserts if address can call function on target
     *
     */
    function _assertCanCall(address addr, address target, bytes4 functionSig) internal view virtual {
        if (!authority.canCall(addr, target, functionSig)) revert NotPermissioned();
    }

    /**
     * @dev call authority and asserts if two addresses can call function on target
     *
     */
    function _assertCanCall(address addr1, address addr2, address target, bytes4 functionSig) internal view virtual {
        if (!authority.canCall(addr1, addr2, target, functionSig)) revert NotPermissioned();
    }
}

// ============================================================
// FILE: src/core/entitlements/Ownable.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

import "../../config/errors.sol";

/// @notice Slimmed down version of OpenZeppelin's Ownable2Step contract.
/// @author dsshap (Circle)
abstract contract Ownable {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /*///////////////////////////////////////////////////////////////
                          State Variables V1
    //////////////////////////////////////////////////////////////*/

    address public owner;
    address public pendingOwner;

    /// @notice gap from OwnableUpgradeable(49) - pendingOwner
    uint256[48] private __gap;

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _assertOwner() internal view virtual {
        if (owner != msg.sender) revert NoAccess();
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual {
        _assertOwner();

        if (newOwner == address(0)) revert BadAddress();

        pendingOwner = newOwner;

        emit OwnershipTransferStarted(owner, newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() external {
        if (pendingOwner != msg.sender) revert NoAccess();

        _transferOwnership(pendingOwner);
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual {
        _assertOwner();
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        delete pendingOwner;

        emit OwnershipTransferred(owner, newOwner);

        owner = newOwner;
    }
}

// ============================================================
// FILE: src/core/entitlements/RolesAuthority.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

import {UUPSUpgradeable} from "openzeppelin/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "openzeppelin/proxy/utils/Initializable.sol";
import {RolesUtil} from "./RolesUtil.sol";
import {Ownable} from "./Ownable.sol";

import {IAuthority} from "../../interfaces/IAuthority.sol";

import "../../config/errors.sol";

/// @notice Role based Authority that supports up to 256 roles.
/// @author dsshap (Circle)
/// @author Modified from Solmate (https://github.com/transmissions11/solmate/blob/main/src/auth/authorities/RolesAuthority.sol)
/// @author Modified from Dappsys (https://github.com/dapphub/ds-roles/blob/master/src/roles.sol)
contract RolesAuthority is IAuthority, Initializable, Ownable, UUPSUpgradeable {
    using RolesUtil for bytes32;

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/

    bool public paused;

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/
    event UserRoleUpdated(address indexed user, uint8 indexed role, bool enabled);

    event PublicCapabilityUpdated(address indexed target, bytes4 indexed functionSig, bool enabled);

    event RoleCapabilityUpdated(uint8 indexed role, address indexed target, bytes4 indexed functionSig, bool enabled);

    event Paused(address account);

    event Unpaused(address account);

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor() {
        _disableInitializers();
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/

    function initialize(address _owner) external initializer {
        if (_owner == address(0)) revert BadAddress();

        owner = _owner;
    }

    /*//////////////////////////////////////////////////////////////
                            ROLE/USER STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(address => bytes32) public getUserRoles;

    mapping(address => mapping(bytes4 => bool)) public isCapabilityPublic;

    mapping(address => mapping(bytes4 => bytes32)) public getRolesWithCapability;

    function doesUserHaveRole(address user, uint8 role) public view virtual returns (bool) {
        if (paused) revert NoAccess();

        return getUserRoles[user].doesHaveRole(role);
    }

    function doesRoleHaveCapability(uint8 role, address target, bytes4 functionSig) public view virtual returns (bool) {
        if (paused) revert NoAccess();

        return getRolesWithCapability[target][functionSig].doesHaveCapability(role);
    }

    /*//////////////////////////////////////////////////////////////
                           AUTHORIZATION LOGIC
    //////////////////////////////////////////////////////////////*/

    function canCall(address user, address target, bytes4 functionSig) public view virtual returns (bool) {
        if (paused) revert NoAccess();

        return
            isCapabilityPublic[target][functionSig]
                || bytes32(0) != getUserRoles[user] & getRolesWithCapability[target][functionSig];
    }

    function canCall(address user1, address user2, address target, bytes4 functionSig) public view virtual returns (bool) {
        return canCall(user1, target, functionSig) && canCall(user2, target, functionSig);
    }

    /*//////////////////////////////////////////////////////////////
                   ROLE CAPABILITY CONFIGURATION LOGIC
    //////////////////////////////////////////////////////////////*/

    function _assertPermissions() internal view {
        if (!canCall(msg.sender, address(this), msg.sig)) revert NoAccess();
    }

    function setPublicCapability(address target, bytes4 functionSig, bool enabled) public virtual {
        _assertPermissions();

        isCapabilityPublic[target][functionSig] = enabled;

        emit PublicCapabilityUpdated(target, functionSig, enabled);
    }

    function setRoleCapability(uint8 role, address target, bytes4 functionSig, bool enabled) public virtual {
        role == type(uint8).max ? _assertOwner() : _assertPermissions();

        if (enabled) getRolesWithCapability[target][functionSig] |= bytes32(1 << role);
        else getRolesWithCapability[target][functionSig] &= ~bytes32(1 << role);

        emit RoleCapabilityUpdated(role, target, functionSig, enabled);
    }

    /*//////////////////////////////////////////////////////////////
                       USER ROLE ASSIGNMENT LOGIC
    //////////////////////////////////////////////////////////////*/

    function _setUserRole(address user, uint8 role, bool enabled) internal virtual {
        if (enabled) getUserRoles[user] |= bytes32(1 << role);
        else getUserRoles[user] &= ~bytes32(1 << role);

        emit UserRoleUpdated(user, uint8(role), enabled);
    }

    function setUserRole(address user, uint8 role, bool enabled) public virtual {
        if (role == type(uint8).max) _assertOwner();
        else _assertPermissions();

        _setUserRole(user, role, enabled);
    }

    function setUserRoleBatch(address[] memory users, uint8[] memory roles, bool[] memory enabled) public virtual {
        _assertPermissions();

        uint256 length = users.length;
        if (length == 0 || length != roles.length || length != enabled.length) revert BadArrayLength();

        for (uint256 i; i < length;) {
            if (roles[i] == type(uint8).max) _assertOwner();

            _setUserRole(users[i], roles[i], enabled[i]);

            unchecked {
                ++i;
            }
        }
    }

    function revokeRole(uint8 role) external virtual {
        if (!doesUserHaveRole(msg.sender, role)) revert NoAccess();

        _setUserRole(msg.sender, role, false);
    }

    /*//////////////////////////////////////////////////////////////
                            PAUSE LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Pauses
     * @dev reverts on any check of permissions preventing any movement of funds
     *      between vault, auction, and option protocol
     */
    function pause() public {
        _assertPermissions();

        paused = true;

        emit Paused(msg.sender);
    }

    /**
     * @notice Unpauses
     */
    function unpause() public {
        _assertOwner();

        paused = false;

        emit Unpaused(msg.sender);
    }

    /*///////////////////////////////////////////////////////////////
                    Override Upgrade Permission
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Upgradable by the owner.
     *
     */
    function _authorizeUpgrade(
        address /*newImplementation*/
    )
        internal
        view
        override
    {
        _assertOwner();
    }
}

// ============================================================
// FILE: src/core/entitlements/RolesUtil.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

/// @notice Role Utility
/// @author dsshap (Circle)
/// @author Modified from Solmate (https://github.com/transmissions11/solmate/blob/main/src/auth/authorities/RolesAuthority.sol)
/// @author Modified from Dappsys (https://github.com/dapphub/ds-roles/blob/master/src/roles.sol)
library RolesUtil {
    /**
     * @dev checks if userRole has role
     */
    function doesHaveRole(bytes32 userRoles, uint8 role) internal pure returns (bool) {
        return (uint256(userRoles) >> role) & 1 != 0;
    }

    /**
     * @dev checks if role has capability
     */
    function doesHaveCapability(bytes32 capabilities, uint8 role) internal pure returns (bool) {
        return (uint256(capabilities) >> role) & 1 != 0;
    }
}

// ============================================================
// FILE: src/core/tellers/calendars/DaylightSavingsCalendar.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

/// @notice Data contract encoding Daylight Savings start/end timestamps.
///         Each start/end pair is encoded as two 32-bit values, representing
///         seconds since Jan 1, 2023 UTC. Use DaylightSavingsLibrary to decode.
/// @author horsefacts (https://github.com/horsefacts/trading-days/blob/main/src/calendars/DaylightSavingsCalendar.sol)
contract DaylightSavingsCalendar {
    constructor() {
        bytes memory data = (
            hex"00" // STOP opcode
            hex"005cab7001967070023c8d7003765270041c6f700556347005fc517007361670"
            hex"07e56df0091f32f009c54ff00aff14f00ba531f00cdef6f00d8513f00ebed8f0"
            hex"0f64f5f0109ebaf0114e12701287d770132df4701467b970150dd67016479b70"
            hex"16edb87018277d7018cd9a701a075f701aad7c701be741701c9698f01dd05df0"
            hex"1e767af01fb03ff020565cf0219021f022363ef0237003f0241620f0254fe5f0"
            hex"25f602f0272fc7f027df1f702918e47029bf01702af8c6702b9ee3702cd8a870"
            hex"2d7ec5702eb88a702f5ea77030986c703147c3f0328188f03327a5f034616af0"
            hex"350787f036414cf036e769f038212ef038c74bf03a0110f03aa72df03be0f2f0"
            hex"3c904a703dca0f703e702c703fa9f17040500e704189d370422ff0704369b570"
            hex"440fd2704549977045f8eef04732b3f047d8d0f0491295f049b8b2f04af277f0"
            hex"4b9894f04cd259f04d7876f04eb23bf04f5858f050921df051417570527b3a70"
            hex"53215770545b1c7055013970563afe7056e11b70581ae07058c0fd7059fac270"
            hex"5aa0df705bdaa4705c89fbf05dc3c0f05e69ddf05fa3a2f06049bff0618384f0"
            hex"6229a1f0636366f0640983f0654348f065f2a070672c657067d28270690c4770"
            hex"69b264706aec29706b9246706ccc0b706d7228706eabed706f520a70708bcf70"
            hex"713b26f07274ebf0731b08f07454cdf074faeaf07634aff076daccf0781491f0"
            hex"78baaef079f473f07aa3cb707bdd90707c83ad707dbd72707e638f707f9d5470"
            hex"80437170817d367082235370835d187084033570853cfa7085ec51f0872616f0"
            hex"87cc33f08905f8f089ac15f08ae5daf08b8bf7f08cc5bcf08d6bd9f08ea59ef0"
            hex"8f4bbbf0908580f09134d870926e9d709314ba70944e7f7094f49c70962e6170"
            hex"96d47e70980e437098b4607099ee25709a9442709bce07709c7d5ef09db723f0"
            hex"9e5d40f09f9705f0a03d22f0a176e7f0a21d04f0a356c9f0a3fce6f0a536abf0"
            hex"a5dcc8f0a7168df0a7c5e570a8ffaa70a9a5c770aadf8c70ab85a970acbf6e70"
            hex"ad658b70ae9f5070af456d70b07f3270b12e89f0b2684ef0b30e6bf0b44830f0"
            hex"b4ee4df0b62812f0b6ce2ff0b807f4f0b8ae11f0b9e7d6f0ba8df3f0bbc7b8f0"
            hex"bc771070bdb0d570"
        );
        assembly {
            return(add(data, 0x20), mload(data))
        }
    }
}

// ============================================================
// FILE: src/core/tellers/calendars/DaylightSavingsLibrary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import {DaylightSavingsCalendar} from "./DaylightSavingsCalendar.sol";

/// @author horsefacts (https://github.com/horsefacts/trading-days/blob/main/src/calendars/DaylightSavingsLibrary.sol)
library DaylightSavingsLibrary {
    /// @notice DaylightSavingsLibrary supports 100 years, from 2023 to 2123.
    ///         Years outside this range revert with this error.
    error YearNotFound();

    /// @dev Timestamps are stored as seconds since Jan 1, 2023 UTC.
    uint256 private constant EPOCH_START = 1672531200;

    /// @dev Size of the leading STOP opcode byte in the data contract.
    uint256 private constant STOP_BYTE = 0x1;

    /// @dev Width of one encoded timestamp pair.
    uint256 private constant ONE_PAIR = 0x8;

    /// @dev Offset copied bytes by 24 bytes, so the 8 byte encoded pair
    ///      is laid out at the end of a 32-byte word in scratch space.
    uint256 private constant COPY_OFFSET = 0x18;

    /// @dev Alias for scratch space memory address.
    uint256 private constant SCRATCH_SPACE = 0x0;

    /// @dev Width of one encoded date in bits.
    uint256 private constant DATE_BIT_WIDTH = 32;

    /// @dev Mask to extract upper 32 bits from an encoded pair.
    uint256 private constant START_BIT_MASK = 0xffffffff00000000;

    /// @dev Mask to extract lower 32 bits from an encoded pair.
    uint256 private constant END_BIT_MASK = 0xffffffff;

    function getTimestamps(DaylightSavingsCalendar dst, uint256 year) internal view returns (uint256 start, uint256 end) {
        if (year < 2023 || year > 2123) revert YearNotFound();

        assembly ("memory-safe") {
            extcodecopy(dst, COPY_OFFSET, add(STOP_BYTE, mul(sub(year, 2023), ONE_PAIR)), ONE_PAIR)
            let pair := mload(SCRATCH_SPACE)
            start := add(shr(DATE_BIT_WIDTH, and(pair, START_BIT_MASK)), EPOCH_START)
            end := add(and(pair, END_BIT_MASK), EPOCH_START)
        }
    }
}

// ============================================================
// FILE: src/core/tellers/Teller.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

// imported contracts and libraries
import {Access} from "../entitlements/Access.sol";
import {BokkyPooBahsDateTimeLibrary as DateTimeUtil} from "bpb-dateTime/BokkyPooBahsDateTimeLibrary.sol";
import {DaylightSavingsCalendar} from "./calendars/DaylightSavingsCalendar.sol";
import {DaylightSavingsLibrary} from "./calendars/DaylightSavingsLibrary.sol";
import {Initializable} from "openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {Ownable} from "../entitlements/Ownable.sol";
import {Math} from "openzeppelin/utils/math/Math.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "openzeppelin/proxy/utils/UUPSUpgradeable.sol";

// interfaces
import {IToken} from "../../interfaces/IToken.sol";
import {IOracle} from "../../interfaces/IOracle.sol";

import "../../config/constants.sol";
import "../../config/errors.sol";
import "../../config/types.sol";

/**
 * @title   Token Teller 3
 * @author  dsshap (Circle)
 * @dev     Provides liquidity for Share/Asset pair.
 */
contract Teller is Access, Initializable, Ownable, UUPSUpgradeable {
    using DaylightSavingsLibrary for DaylightSavingsCalendar;
    using Math for uint256;
    using DateTimeUtil for uint256;
    using SafeERC20 for IToken;

    /*///////////////////////////////////////////////////////////////
                        Constants & Immutables
    //////////////////////////////////////////////////////////////*/

    /// @notice Data contract encoding DST start/end timestamps through 2123.
    DaylightSavingsCalendar public immutable dst;

    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event Deposit(address indexed caller, address indexed owner, uint256 assets, uint256 shares);
    event Withdraw(address indexed caller, address indexed receiver, address indexed owner, uint256 assets, uint256 shares);
    event Subscribe(address indexed from, address indexed receiver, uint256 assets, uint256 shares, uint256 price, uint256 fee);
    event Redeem(address indexed from, address indexed receiver, uint256 assets, uint256 shares, uint256 price, uint256 fee);
    event Approval(address indexed owner, address indexed spender, uint256 amount);
    event Sweep(address indexed token, address indexed treasury, uint256 amount, address indexed recipient);
    event FeesSet(address indexed owner, uint256 subscribe, uint256 newSubscribe, uint256 redeem, uint256 newRedeem);
    event OracleSet(address indexed oracle, address indexed newOracle);
    event TreasurySet(address indexed owner, address treasury, address newTreasury);
    event FeeRecipientSet(address indexed feeRecipient, address indexed newFeeRecipient);
    event AfterHourTradingSet(uint256 afterHourTrading, uint256 newAfterHourTrading);
    event LimitsSet(address indexed owner, uint256 subscribe, uint256 newSubscribe, uint256 redeem, uint256 newRedeem);

    /*///////////////////////////////////////////////////////////////
                                Structures
    //////////////////////////////////////////////////////////////*/

    struct FeeSchedule {
        uint64 subscribe;
        uint64 redeem;
    }

    struct Limit {
        uint56 subscribe;
        uint56 redeem;
    }

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/

    IToken public asset;

    IToken public share;

    IOracle public oracle;

    uint256 private _oracleScale;

    address public feeRecipient;

    /// @notice investor fee schedule
    mapping(address => FeeSchedule) public feeSchedule;

    /// @notice after hour trading
    uint256 public afterHourTrading;

    /// @notice allowance for owners USYC to be redeem/withdraw on their behalf
    mapping(address => mapping(address => uint256)) public allowance;

    /// @notice investor specific treasury
    mapping(address => address) private _treasury;

    /// @notice investor specific subscription and redemption limits
    mapping(address => Limit) public limit;

    /// @notice investor subscription amount per day
    mapping(address => mapping(uint256 => uint256)) public subscription;

    /// @notice investor redemption amount per day
    mapping(address => mapping(uint256 => uint256)) public redemption;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     */
    uint256[50] private __gap0;

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _authority, address _dst) Access(_authority) {
        if (_dst == address(0)) revert BadAddress();

        _disableInitializers();

        dst = DaylightSavingsCalendar(_dst);
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/

    function initialize(TellerConfig calldata config) external initializer {
        __Teller_init(config);
    }

    function __Teller_init(TellerConfig calldata config) internal onlyInitializing {
        if (config.owner == address(0)) revert BadAddress();
        if (config.asset == address(0)) revert BadAddress();
        if (config.share == address(0)) revert BadAddress();
        if (config.oracle == address(0)) revert BadAddress();
        if (config.treasury == address(0)) revert BadAddress();
        if (config.feeRecipient == address(0)) revert BadAddress();

        _transferOwnership(config.owner);

        asset = IToken(config.asset);
        share = IToken(config.share);

        if (asset.decimals() != share.decimals()) revert BadDecimals();

        oracle = IOracle(config.oracle);
        _oracleScale = 10 ** oracle.decimals();
        _treasury[address(0)] = config.treasury;
        feeRecipient = config.feeRecipient;
        feeSchedule[address(0)] = FeeSchedule(config.subscribeFee, config.redeemFee);
        afterHourTrading = config.afterHourTrading;
        limit[address(0)] = Limit(config.subscribeLimit, config.redeemLimit);
    }

    /*//////////////////////////////////////////////////////////////
                                VAULT ACTIONS
    //////////////////////////////////////////////////////////////*/

    function _inbound(address account, uint256 assets, uint256 shares, uint256 fee, address receiver) internal virtual {
        uint256 today = todayTimestamp();
        uint256 remaining = subscriptionLimitRemaining(account, today);
        if (remaining < assets) revert LimitExceeded();
        subscription[account][today] += assets;

        address treasury_ = treasury(account);
        asset.safeTransferFrom(account, treasury_, assets - fee);
        if (fee > 0) asset.safeTransferFrom(account, feeRecipient, fee);

        share.mint(receiver, shares);
    }

    function _deposit(uint256 assets, address receiver, address account) internal virtual returns (uint256 shares) {
        uint256 fee;
        int256 price;
        (shares, fee, price) = previewDepositData(account, assets);

        if (shares == 0) revert ZeroShares();

        _assertPermission(account);
        _assertCanReceive(address(share), receiver);

        _inbound(account, assets, shares, fee, receiver);

        emit Deposit(account, receiver, assets, shares);
        emit Subscribe(account, receiver, assets, shares, uint256(price), fee);
    }

    function deposit(uint256 assets, address receiver) public virtual returns (uint256 shares) {
        return _deposit(assets, receiver, msg.sender);
    }

    function depositWithPermit(uint256 assets, address receiver, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        public
        virtual
        returns (uint256 shares)
    {
        return depositWithPermit(assets, receiver, deadline, abi.encodePacked(r, s, v));
    }

    function depositWithPermit(uint256 assets, address receiver, uint256 deadline, bytes memory signature)
        public
        virtual
        returns (uint256 shares)
    {
        asset.permit(receiver, address(this), assets, deadline, signature);
        return _deposit(assets, receiver, receiver);
    }

    function mint(uint256 shares, address receiver) public virtual returns (uint256 assets) {
        uint256 fee;
        int256 price;
        (assets, fee, price) = previewMintData(msg.sender, shares);

        if (assets == 0) revert ZeroAssets();

        _assertPermission(msg.sender);
        _assertCanReceive(address(share), receiver);

        _inbound(msg.sender, assets, shares, fee, receiver);

        emit Deposit(msg.sender, receiver, assets, shares);
        emit Subscribe(msg.sender, receiver, assets, shares, uint256(price), fee);
    }

    function _outbound(address account, uint256 assets, uint256 shares, uint256 fee, address receiver) internal virtual {
        uint256 today = todayTimestamp();
        uint256 remaining = redemptionLimitRemaining(account, today);
        if (remaining < assets) revert LimitExceeded();
        redemption[account][today] += assets;

        share.burn(account, shares);

        address treasury_ = treasury(account);
        asset.safeTransferFrom(treasury_, receiver, assets);
        if (fee > 0) asset.safeTransferFrom(treasury_, feeRecipient, fee);
    }

    function withdraw(uint256 assets, address receiver, address account) public virtual returns (uint256 shares) {
        uint256 fee;
        int256 price;
        (shares, fee, price) = previewWithdrawData(account, assets);

        if (shares == 0) revert ZeroShares();

        _spendAllowance(account, shares);
        _assertPermission(msg.sender);
        _assertCanReceive(address(share), account, receiver);

        _outbound(account, assets, shares, fee, receiver);

        emit Withdraw(msg.sender, receiver, account, assets, shares);
        emit Redeem(account, receiver, assets, shares, uint256(price), fee);
    }

    function redeem(uint256 shares, address receiver, address account) public virtual returns (uint256 assets) {
        _spendAllowance(account, shares);

        uint256 fee;
        int256 price;
        (assets, fee, price) = previewRedeemData(account, shares);

        if (assets == 0) revert ZeroAssets();

        _assertPermission(msg.sender);
        _assertCanReceive(address(share), account, receiver);

        _outbound(account, assets, shares, fee, receiver);

        emit Withdraw(msg.sender, receiver, account, assets, shares);
        emit Redeem(account, receiver, assets, shares, uint256(price), fee);
    }

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        _assertPermission(msg.sender);

        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    /**
     * @notice Returns treasury for an account
     * @dev if no treasury set for account then the public treasury is returned
     *      the public treasury is set at address(0)
     * @param account address of investor
     * @return treasuryAddr address of treasury
     */
    function treasury(address account) public view virtual returns (address treasuryAddr) {
        if ((treasuryAddr = _treasury[account]) == address(0)) treasuryAddr = _treasury[address(0)];
    }

    /*//////////////////////////////////////////////////////////////
                                ACCOUNTING
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns assets available for redemptions
     * @dev if called offchain this returns public assets available for redemptions
     *      if called onchain this returns the assets available for redemptions by msg.sender
     * @return assets available for redemptions
     */
    function totalAssets() public view virtual returns (uint256) {
        return totalAssets(msg.sender);
    }

    /**
     * @notice Returns assets available for redemptions by account
     * @dev returns which ever is lowest: the balance of the asset in the treasury or the allowance
     *      the public treasury is set at address(0)
     * @param account address of investor
     * @return assets available for redemptions
     */
    function totalAssets(address account) public view virtual returns (uint256) {
        return asset.balanceOf(treasury(account)).min(asset.allowance(treasury(account), address(this)));
    }

    /**
     * @notice Returns the current price for minting USYC
     * @dev The price is in oracle decimals
     * @return price the price from the oracle
     */
    function mintPrice() public view virtual returns (int256 price) {
        // current price in terms of USD
        uint256 updatedAt;
        (, price,, updatedAt,) = oracle.latestRoundData();

        uint256 afterHour = afterHourTrading;
        if (afterHour == AFTER_HOURS_DISABLED) return price;

        uint256 afterHourH = afterHour / 100;
        uint256 afterHourM = afterHour % 100;

        uint256 currentTime = _eT(block.timestamp);
        (uint256 updatedY, uint256 updatedM, uint256 updatedD) = _eT(updatedAt).timestampToDate();
        (uint256 nowY, uint256 nowM, uint256 nowD) = currentTime.timestampToDate();

        // if price was not updated today OR in after hour trading, then use next price
        if (
            updatedY != nowY || updatedM != nowM || updatedD != nowD || currentTime.getHour() > afterHourH
                || (currentTime.getHour() == afterHourH && currentTime.getMinute() >= afterHourM)
        ) {
            price = oracle.nextPrice();
        }
    }

    function convertToShares(uint256 assets) public view virtual returns (uint256 shares) {
        shares = assets.mulDiv(_oracleScale, uint256(mintPrice()));
    }

    function convertToAssets(uint256 shares) public view virtual returns (uint256 assets) {
        (, int256 price,,,) = oracle.latestRoundData();
        assets = shares.mulDiv(uint256(price), _oracleScale);
    }

    /**
     * @notice Gets the subscription fee rate
     * @dev If individual account rate is not set (aka 0) then uses default rate
     *      If rate is set to type(uint64).max, then fee rate is 0
     * @return rate the rate to be charged
     */
    function subscriptionFeeRate(address account) public view virtual returns (uint256 rate) {
        if ((rate = feeSchedule[account].subscribe) == 0) rate = feeSchedule[address(0)].subscribe;
        else if (rate == type(uint64).max) return 0;
    }

    /**
     * @notice Gets the redemption fee rate
     * @dev If individual account rate is not set (aka 0) then uses default rate
     *      If rate is set to type(uint64).max, then fee rate is 0
     * @return rate the rate to be charged
     */
    function redemptionFeeRate(address account) public view virtual returns (uint256 rate) {
        if ((rate = feeSchedule[account].redeem) == 0) rate = feeSchedule[address(0)].redeem;
        else if (rate == type(uint64).max) return 0;
    }

    /**
     * @notice Gets the remaining subscription amount
     * @dev If individual limit is not set (aka 0) then uses default rate
     * @return assets the amount of assets that can be subscribed
     */
    function subscriptionLimitRemaining(address account, uint256 date) public view virtual returns (uint256 assets) {
        if ((assets = limit[account].subscribe) == 0) assets = limit[address(0)].subscribe;
        uint256 current = subscription[account][date];
        if (current > assets) return 0; // if subscription limit was reduced during the day to less than current
        else return assets - current;
    }

    /**
     * @notice Gets the remaining redemption amount
     * @dev If individual limit is not set (aka 0) then uses default rate
     * @return assets the amount of assets that can be redeemed
     */
    function redemptionLimitRemaining(address account, uint256 date) public view virtual returns (uint256 assets) {
        if ((assets = limit[account].redeem) == 0) assets = limit[address(0)].redeem;
        uint256 current = redemption[account][date];
        if (current > assets) return 0; // if redemption limit was reduced during the day to less than current
        else return assets - current;
    }

    function previewDepositData(address account, uint256 assets)
        public
        view
        virtual
        returns (uint256 shares, uint256 fee, int256 price)
    {
        fee = subscriptionFeeRate(account);
        uint256 netAssets = fee > 0 ? assets.mulDiv(HUNDRED_PCT, HUNDRED_PCT + fee) : assets;
        fee = assets - netAssets;

        price = mintPrice();
        shares = netAssets.mulDiv(_oracleScale, uint256(price));
    }

    function previewDeposit(uint256 assets) external view virtual returns (uint256 shares) {
        (shares,,) = previewDepositData(msg.sender, assets);
    }

    function previewMintData(address account, uint256 shares)
        public
        view
        virtual
        returns (uint256 assets, uint256 fee, int256 price)
    {
        price = mintPrice();
        assets = shares.mulDiv(uint256(price), _oracleScale, Math.Rounding.Up);
        fee = assets.mulDiv(subscriptionFeeRate(account), HUNDRED_PCT, Math.Rounding.Up);
        assets += fee;
    }

    function previewMint(uint256 shares) external view virtual returns (uint256 assets) {
        (assets,,) = previewMintData(msg.sender, shares);
    }

    function previewWithdrawData(address account, uint256 assets)
        public
        view
        virtual
        returns (uint256 shares, uint256 fee, int256 price)
    {
        fee = assets.mulDiv(redemptionFeeRate(account), HUNDRED_PCT, Math.Rounding.Up);
        assets += fee;
        (, price,,,) = oracle.latestRoundData();
        shares = assets.mulDiv(_oracleScale, uint256(price), Math.Rounding.Up);
    }

    function previewWithdraw(uint256 assets) external view virtual returns (uint256 shares) {
        (shares,,) = previewWithdrawData(msg.sender, assets);
    }

    function previewRedeemData(address account, uint256 shares)
        public
        view
        virtual
        returns (uint256 assets, uint256 fee, int256 price)
    {
        (, price,,,) = oracle.latestRoundData();
        assets = shares.mulDiv(uint256(price), _oracleScale);

        fee = redemptionFeeRate(account);
        uint256 netAssets = fee > 0 ? assets.mulDiv(HUNDRED_PCT, HUNDRED_PCT + fee) : assets;
        fee = assets - netAssets;

        assets -= fee;
    }

    function previewRedeem(uint256 shares) external view virtual returns (uint256 assets) {
        (assets,,) = previewRedeemData(msg.sender, shares);
    }

    /*//////////////////////////////////////////////////////////////
                                MAXIMUMS
    //////////////////////////////////////////////////////////////*/

    function maxDeposit(address account) public view virtual returns (uint256 maxAssets) {
        return asset.balanceOf(account).min(subscriptionLimitRemaining(account, todayTimestamp()));
    }

    function maxMint(address account) public view virtual returns (uint256 maxShares) {
        return convertToShares(maxDeposit(account));
    }

    function maxWithdraw(address account) public view virtual returns (uint256 maxAssets) {
        maxAssets = convertToAssets(share.balanceOf(account));
        uint256 totalAssets_ = totalAssets(account).min(redemptionLimitRemaining(account, todayTimestamp()));
        if (maxAssets > totalAssets_) maxAssets = totalAssets_;
    }

    function maxRedeem(address account) public view virtual returns (uint256 maxShares) {
        (, int256 price,,,) = oracle.latestRoundData();
        maxShares =
            totalAssets(account).min(redemptionLimitRemaining(account, todayTimestamp())).mulDiv(_oracleScale, uint256(price));
        uint256 totalShares = share.balanceOf(account);
        if (maxShares > totalShares) maxShares = totalShares;
    }

    /*///////////////////////////////////////////////////////////////
                        LIQUIDITY MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Sweep tokens from teller to recipient
     * @param token is the address of the token to transfer
     * @param account is the address of the account tied to a treasury
     * @param amount is the amount of token to transfer
     * @param recipient is the address to send token to
     */
    function sweep(address token, address account, uint256 amount, address recipient) external virtual {
        if (amount == 0) revert BadAmount();

        _assertFundAdmin();

        if (!authority.doesUserHaveRole(recipient, ROLE_RESERVES)) revert NotPermissioned();

        address treasury_ = account == address(this) ? address(this) : treasury(account);

        if (treasury_ == address(this)) IToken(token).safeTransfer(recipient, amount);
        else IToken(token).safeTransferFrom(treasury_, recipient, amount);

        emit Sweep(token, treasury_, amount, recipient);
    }

    /*///////////////////////////////////////////////////////////////
                    DST & Time Conversion Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns timestamp at the start of the day (UTC)
     * @dev Capturing the timestamp at the start of UTC day.
     *      We get the timestamp then get the date from `timestampToDate`,
     *      then we get the timestamp of that date from `timestampFromDate`,
     */
    function todayTimestamp() public view returns (uint256) {
        (uint256 year, uint256 month, uint256 day) = block.timestamp.timestampToDate();
        return DateTimeUtil.timestampFromDate(year, month, day);
    }

    /**
     * @notice Return true if it's Daylight Savings Time in New York
     */
    function isDST() public view virtual returns (bool) {
        // The DST calendar stores exact timestamps for start/end of DST in New York
        uint256 year = block.timestamp.getYear();
        (uint256 start, uint256 end) = dst.getTimestamps(year);
        return block.timestamp >= start && block.timestamp < end;
    }

    /**
     * @notice Return time in New York
     */
    function _eT(uint256 timestamp) internal view virtual returns (uint256) {
        // Adjusts datetime to US Eastern Time
        return timestamp - _etOffset();
    }

    /**
     * @notice Return timezone offset in New York
     * @dev ensure applied to UTC timestamp
     */
    function _etOffset() internal view virtual returns (uint256) {
        return isDST() ? 4 hours : 5 hours;
    }

    /*///////////////////////////////////////////////////////////////
                        Internal Functions
    //////////////////////////////////////////////////////////////*/

    function _spendAllowance(address account, uint256 shares) internal {
        if (msg.sender != account && !_isFundAdmin()) {
            uint256 allowed = allowance[account][msg.sender];

            if (allowed != type(uint256).max) allowance[account][msg.sender] = allowed - shares;
        }
    }

    /*///////////////////////////////////////////////////////////////
                            Admin Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Sets oracle address
     * @param _oracle address of oracle
     */
    function setOracle(address _oracle) external {
        _assertFundAdmin();

        if (_oracle == address(0)) revert BadAddress();

        emit OracleSet(address(oracle), _oracle);

        oracle = IOracle(_oracle);
        _oracleScale = 10 ** oracle.decimals();
    }

    /**
     * @notice Sets treasury address
     * @param account address of account
     * @param treasuryAddr address of treasury
     */
    function setTreasury(address account, address treasuryAddr) external {
        _assertFundAdmin();

        emit TreasurySet(account, _treasury[account], treasuryAddr);

        _treasury[account] = treasuryAddr;
    }

    /**
     * @notice Sets fee recipient address
     * @param _feeRecipient address of recipient
     */
    function setFeeRecipient(address _feeRecipient) external {
        _assertFundAdmin();

        if (_feeRecipient == address(0)) revert BadAddress();

        emit FeeRecipientSet(feeRecipient, _feeRecipient);

        feeRecipient = _feeRecipient;
    }

    /**
     * @notice Sets fees for subscribing and redeeming
     * @dev fees are in bps, 18 decimals, max fee is 2.5%
     *      to set default fees, use address(0) for _account
     * @param _account address of account
     * @param _subscribe fees for subscribing
     * @param _redeem fees for redeeming
     */
    function setFees(address _account, uint64 _subscribe, uint64 _redeem) external {
        _assertFundAdmin();

        FeeSchedule memory schedule = feeSchedule[_account];

        emit FeesSet(_account, schedule.subscribe, _subscribe, schedule.redeem, _redeem);

        feeSchedule[_account] = FeeSchedule(_subscribe, _redeem);
    }

    /**
     * @notice Sets limits for subscribing and redeeming
     * @dev limits are in terms of asset
     *      to set default limit, use address(0) for _account
     * @param _account address of account
     * @param _subscribe limit for subscribing
     * @param _redeem limit for redeeming
     */
    function setLimits(address _account, uint56 _subscribe, uint56 _redeem) external {
        _assertFundAdmin();

        Limit memory limit_ = limit[_account];

        emit LimitsSet(_account, limit_.subscribe, _subscribe, limit_.redeem, _redeem);

        limit[_account] = Limit(_subscribe, _redeem);
    }

    /**
     * @notice Sets after hours trading
     * @dev value set as hhmm in 24h format, e.g. 1700 for 5pm
     * if value is type(uint256).max, then turns off after hour pricing
     * @param hourMinute hour and minute
     */
    function setAfterHourTrading(uint256 hourMinute) external {
        _assertFundAdmin();

        if (hourMinute != AFTER_HOURS_DISABLED) if (hourMinute / 100 > 23 || hourMinute % 100 > 59) revert BadTime();

        emit AfterHourTradingSet(afterHourTrading, hourMinute);

        afterHourTrading = hourMinute;
    }

    /*///////////////////////////////////////////////////////////////
                        Override Upgrade Permission
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Upgradable by the owner.
     *
     */
    function _authorizeUpgrade(
        address /*newImplementation*/
    )
        internal
        virtual
        override
    {
        _assertOwner();
    }
}

// ============================================================
// FILE: src/interfaces/IAggregatorV3.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @author Modified from smartcontractkit (https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol)
interface IAggregatorV3 {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    // getRoundData and latestRoundData should both raise "No data present"
    // if they do not have data to report, instead of returning unset values
    // which could be misinterpreted as actual reported values.
    function getRoundData(uint80 _roundId)
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

    function latestRound() external view returns (uint256);

    function transmit(uint256 _answer, uint256 _updatedAt) external returns (uint80 roundId);
}

// ============================================================
// FILE: src/interfaces/IAuthority.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

interface IAuthority {
    function canCall(address user, address target, bytes4 functionSig) external view returns (bool);
    function doesUserHaveRole(address user, uint8 role) external view returns (bool);
    function getUserRoles(address user) external view returns (bytes32);
}

// ============================================================
// FILE: src/interfaces/IOracle.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

import {IAggregatorV3} from "./IAggregatorV3.sol";

interface IOracle is IAggregatorV3 {
    function getRoundDetails(uint80)
        external
        view
        returns (uint80 roundId, uint256 balance, uint256 interest, uint256 totalSupply, uint256 updatedAt);

    function latestRoundDetails()
        external
        view
        returns (uint80 roundId, uint256 balance, uint256 interest, uint256 totalSupply, uint256 updatedAt);

    function nextPrice() external view returns (int256);
}

// ============================================================
// FILE: src/interfaces/IToken.sol
// ============================================================

/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

import {IERC20Metadata} from "openzeppelin/token/ERC20/extensions/IERC20Metadata.sol";

interface IToken is IERC20Metadata {
    function permit(address owner, address spender, uint256 value, uint256 deadline, bytes memory signature) external;
    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;
    function mint(address _to, uint256 _amount) external returns (bool);
    function burn(uint256 _amount) external;
    function burn(address _from, uint256 _amount) external;
}
