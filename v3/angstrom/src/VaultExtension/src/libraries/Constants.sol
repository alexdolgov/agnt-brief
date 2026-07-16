// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

uint256 constant FACTOR_E6 = 1e6;
uint256 constant FACTOR_E18 = 1e18;
uint256 constant FACTOR_E36 = 1e36;
uint256 constant SECONDS_PER_YEAR = 365 days;

abstract contract Constants {
    int256 internal constant MAX_PERPS_DELTA = type(int128).max;
    int256 internal constant MIN_PERPS_DELTA = type(int128).min;
}
