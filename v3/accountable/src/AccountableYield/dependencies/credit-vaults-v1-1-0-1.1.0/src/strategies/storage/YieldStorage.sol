// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import {LoanTerms} from "../../interfaces/IAccountableStrategy.sol";
import {IAccountableYield} from "../../interfaces/IAccountableYield.sol";

/// @title YieldStorage
/// @notice Storage layout for AccountableYield with upgrade safety gap
/// @dev Centralizes storage to avoid collisions and simplify upgradeable contract development
///      All storage variables MUST be declared here
abstract contract YieldStorage is IAccountableYield {
    /// @notice Last fee accrual timestamp
    uint256 internal _lastFeeTime;

    /// @notice Last timestamp when penalties were accrued
    uint256 internal _lastPenaltyTime;

    /// @notice Pending terms awaiting borrower acceptance
    LoanTerms internal _pendingTerms;

    /// @notice Underlying asset address
    address public asset;

    /// @notice Time when delinquency started
    uint256 public delinquencyStartTime;

    /// @notice Last recorded total assets
    uint256 public lastTotalAssets;

    /// @notice Peak total assets for performance fee calculation
    uint256 public peakTotalAssets;

    /// @notice Value of assets deployed outside the vault
    uint256 public deployedAssets;

    /// @notice Realized losses that should not generate fees on recovery (cumulative, never resets)
    uint256 public lostAssets;

    /// @notice Timestamp when NAV grace period expires
    uint256 public navGraceDeadline;

    /// @notice Duration of NAV grace period after update
    uint256 public navGracePeriod;

    /// @notice Accumulated penalties from delinquency past grace period
    uint256 public accruedPenalties;

    /// @notice Timestamp of the last accepted DVN measurement
    uint256 public lastNavMeasuredAt;

    /// @notice Timestamp of the last borrow/repay operation
    uint256 public lastFlowTimestamp;

    /// @dev Gap for future storage variables
    /// @dev Reserves slots for future additions to YieldStorage
    uint256[50] private __gap;
}
