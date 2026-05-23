// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

/// @dev Meaning that price of the staking token is denominated in 1e8 precision
/// @dev when price is 1e8, it means 1 staking token = 1 USBD
uint256 constant PRICE_DECIMAL_PRECISION = 1e8;

/// @dev Constants for daily compounding rates
uint256 constant RATE_5_PERCENT = 0.000133680617e12; // ~5% APY
uint256 constant RATE_10_PERCENT = 0.000261157876e12; // ~10% APY
uint256 constant RATE_15_PERCENT = 0.000382982750e12; // ~15% APY
uint256 constant RATE_20_PERCENT = 0.000499635891e12; // ~20% APY
uint256 constant RATE_25_PERCENT = 0.000611539109e12; // ~25% APY
uint256 constant RATE_50_PERCENT = 0.001111480547e12; // ~50% APY
uint256 constant RATE_100_PERCENT = 0.001900837677e12; // ~100% APY
