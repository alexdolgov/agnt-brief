// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

uint256 constant SECONDS_IN_DAY = 86400; // 24 hours * 60 minutes * 60 seconds

// The minimum amount of ICNT that can be staked into the pool
// used to prevent the pool from incurring too much rounding error
uint256 constant MIN_DEPOSIT_AMOUNT = 1e12;

uint256 constant ICNT_TOTAL_SUPPLY = 700_000_000e18;

uint256 constant ONE_MONTH = 30 days;

uint256 constant LOCKUP_6_MONTHS = 6 * ONE_MONTH;
uint256 constant LOCKUP_12_MONTHS = 12 * ONE_MONTH;
uint256 constant LOCKUP_18_MONTHS = 18 * ONE_MONTH;
uint256 constant LOCKUP_24_MONTHS = 24 * ONE_MONTH;
uint256 constant LOCKUP_30_MONTHS = 30 * ONE_MONTH;
uint256 constant LOCKUP_36_MONTHS = 36 * ONE_MONTH;
uint256 constant LOCKUP_42_MONTHS = 42 * ONE_MONTH;
uint256 constant LOCKUP_48_MONTHS = 48 * ONE_MONTH;
