// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0;

address constant NULL_ADDRESS = address(0);

uint256 constant PRECISION = 10 ** 18;

// forgefmt: disable-start
// PCT values are in basis points (BSP)
// 1 BSP = 0.01%
uint256 constant PCT_DIVISOR = 100_00; // 100% in BSP
uint256 constant ONE_PCT = 1_00;       // 1% in BSP
uint256 constant TEN_PCT = 10_00;      // 10% in BSP
// forgefmt: disable-end

uint32 constant DEFAULT_TWAP_PERIOD = 60 minutes;

// Minimum initial deposit to prevent "first deposit" attacks
uint256 constant MIN_INITIAL_DEPOSIT = 500;

uint256 constant ZERO = 0;
uint256 constant MAX_UINT256 = type(uint256).max;
