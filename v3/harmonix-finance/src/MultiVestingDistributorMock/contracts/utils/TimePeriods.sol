// evm/test-contract/contracts/utils/TimePeriods.sol

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/**
 * @title TimePeriods
 * @dev Abstract contract to manage discrete time periods by explicit ID.
 */
abstract contract TimePeriods {
  // --- Structs ---
  struct Period {
    uint48 openingTime;
    uint48 closingTime;
  }

  // --- Custom Errors ---
  error PeriodExists(uint256 periodId);
  error PeriodNotFound(uint256 periodId);
  error InvalidTimeRange(uint256 openingTime, uint256 closingTime);
  error PeriodNotOpen(uint256 periodId);
  error PeriodNotClosed(uint256 periodId);
  error PeriodAlreadyOpen(uint256 periodId);
  error PeriodNotYetClosed(uint256 periodId);
  error PeriodNotYetOpen(uint256 periodId);

  // --- Storage ---
  mapping(uint256 => Period) private _periods;

  // --- Events ---
  event PeriodCreated(
    uint256 indexed periodId,
    uint48 openingTime,
    uint48 closingTime
  );
  event PeriodExtended(
    uint256 indexed periodId,
    uint48 oldClosingTime,
    uint48 newClosingTime
  );
  event PeriodUpdated(
    uint256 indexed periodId,
    uint48 openingTime,
    uint48 closingTime
  );
  event PeriodDeleted(uint256 indexed periodId);

  // --- Public Views ---

  /// @notice Check if a period exists.
  function periodExists(uint256 periodId) public view returns (bool) {
    return _periods[periodId].closingTime != 0;
  }

  /// @notice Get a period's opening and closing times.
  function getPeriod(
    uint256 periodId
  ) public view returns (uint48 openingTime, uint48 closingTime) {
    if (!periodExists(periodId)) revert PeriodNotFound(periodId);
    Period storage p = _periods[periodId];
    return (p.openingTime, p.closingTime);
  }

  /// @notice Check if the given period is currently open. A period is open from its openingTime up to (but not including) its closingTime.
  function isOpen(uint256 periodId) public view returns (bool) {
    if (!periodExists(periodId)) revert PeriodNotFound(periodId);
    Period storage p = _periods[periodId];
    // CORRECTED LOGIC: Use `<` instead of `<=` for closingTime.
    return block.timestamp >= p.openingTime && block.timestamp < p.closingTime;
  }

  // --- Internal Management ---

  /**
   * @dev Create a new period by ID. Requires unique ID and valid time range.
   */
  function _createPeriod(
    uint256 periodId,
    uint48 openingTime,
    uint48 closingTime
  ) internal virtual {
    if (periodExists(periodId)) revert PeriodExists(periodId);
    // You can also check `block.timestamp` here if desired, but your test does it at the deploy level which is also fine.
    if (closingTime <= openingTime) {
      revert InvalidTimeRange(openingTime, closingTime);
    }
    _periods[periodId] = Period(openingTime, closingTime);
    emit PeriodCreated(periodId, openingTime, closingTime);
  }

  /**
   * @dev Extend an existing period's closing time by ID.
   */
  function _extendPeriod(
    uint256 periodId,
    uint48 newClosingTime
  ) internal virtual {
    if (!periodExists(periodId)) revert PeriodNotFound(periodId);
    Period storage p = _periods[periodId];
    if (newClosingTime <= p.closingTime) {
      revert InvalidTimeRange(p.closingTime, newClosingTime);
    }
    uint48 oldClosing = p.closingTime;
    p.closingTime = newClosingTime;
    emit PeriodExtended(periodId, oldClosing, newClosingTime);
  }

  /**
   * @dev Update both opening and closing times of a period by ID.
   */
  function _updatePeriod(
    uint256 periodId,
    uint48 newOpeningTime,
    uint48 newClosingTime
  ) internal virtual {
    if (!periodExists(periodId)) revert PeriodNotFound(periodId);
    if (newClosingTime <= newOpeningTime) {
      revert InvalidTimeRange(newOpeningTime, newClosingTime);
    }
    _periods[periodId] = Period(newOpeningTime, newClosingTime);
    emit PeriodUpdated(periodId, newOpeningTime, newClosingTime);
  }

  /**
   * @dev Delete a period by ID.
   */
  function _deletePeriod(uint256 periodId) internal virtual {
    if (!periodExists(periodId)) revert PeriodNotFound(periodId);
    delete _periods[periodId];
    emit PeriodDeleted(periodId);
  }

  // --- Modifiers ---

  /**
   * @dev NEW: Restricts execution to only BEFORE the specified period opens.
   */
  modifier onlyBeforeOpen(uint256 periodId) {
    Period storage p = _periods[periodId];
    if (p.closingTime == 0) revert PeriodNotFound(periodId);
    if (block.timestamp >= p.openingTime) revert PeriodAlreadyOpen(periodId);
    _;
  }
  /**
   * @dev NEW: Restricts execution to any time on or after the period has started.
   * @notice This is useful for actions that become available at the opening time
   * and remain available indefinitely, ignoring the closing time.
   */
  modifier onlySinceOpen(uint256 periodId) {
    Period storage p = _periods[periodId];
    if (p.closingTime == 0) revert PeriodNotFound(periodId);
    if (block.timestamp < p.openingTime) revert PeriodNotYetOpen(periodId);
    _;
  }

  /// @dev Restricts execution to when the specified period is open.
  modifier onlyWhileOpen(uint256 periodId) {
    if (!isOpen(periodId)) revert PeriodNotOpen(periodId);
    _;
  }

  /// @dev Restricts execution to when the specified period is closed (either before or after).
  modifier onlyWhileClosed(uint256 periodId) {
    if (isOpen(periodId)) revert PeriodNotClosed(periodId);
    _;
  }

  /**
   * @dev NEW: Restricts execution to only AFTER the specified period has closed.
   */
  modifier onlyAfterClosed(uint256 periodId) {
    Period storage p = _periods[periodId];
    if (p.closingTime == 0) revert PeriodNotFound(periodId);
    if (block.timestamp < p.closingTime) revert PeriodNotYetClosed(periodId);
    _;
  }
}
