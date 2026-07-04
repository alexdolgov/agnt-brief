// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Constants {
    // Shared definitions of how we represent percentages and basis points
    uint16 public constant ONE_BPS = 100; // 1 basis point with 2 decimals
    uint32 public constant ONE_PERCENT_BPS = ONE_BPS * 100;
    uint32 public constant ONE_HUNDRED_PERCENT_BPS = ONE_PERCENT_BPS * 100;

    uint32 public constant ORACLE_BASE_CURRENCY_UNIT = 1e8;
}
