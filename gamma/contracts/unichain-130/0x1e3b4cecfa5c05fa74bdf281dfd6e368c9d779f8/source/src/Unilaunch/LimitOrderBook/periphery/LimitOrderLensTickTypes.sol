// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

/// @notice Tick information including liquidity and token amounts
struct TickInfo {
    int24 tick;
    uint160 sqrtPrice;
    uint256 token0Amount;
    uint256 token1Amount;
    uint256 totalTokenAmountsinToken1;
}

/// @notice Populated tick data from the pool
struct PopulatedTick {
    int24 tick;
    int128 liquidityNet;
    uint128 liquidityGross;
}
