// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

/// @dev Functions for calculating compound interest

function compoundValue(uint256 value, uint256 daysCount, uint256 discountRate) pure returns (uint256) {
    return (value * compoundFactor(daysCount, discountRate)) / 1e36;
}

function compoundFactor(uint256 daysCount, uint256 discountRate) pure returns (uint256) {
    uint256 n = daysCount;
    uint256 r = discountRate;

    uint256 t1 = 1e36;
    uint256 t2 = 1e24 * n * r;

    if (n == 0) return t1 + t2;

    uint256 t3 = (1e12 * (n * (n - 1) * r ** 2)) / 2;

    if (n == 1) return t1 + t2 + t3;

    uint256 t4 = (n * (n - 1) * (n - 2) * r ** 3) / 6;

    return t1 + t2 + t3 + t4;
}
