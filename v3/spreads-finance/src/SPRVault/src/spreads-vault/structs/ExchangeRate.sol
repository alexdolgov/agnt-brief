// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.29;

struct ExchangeRate {
    uint256 rate;
    uint256 lastUpdated;
    address updater;
}
