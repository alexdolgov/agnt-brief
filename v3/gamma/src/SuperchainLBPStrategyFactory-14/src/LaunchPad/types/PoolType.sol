// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

/// @title PoolType
/// @notice Enum for different pool types supported by OrderBookFactory
enum PoolType {
    REGULAR,    // Fixed fee pool
    DYNAMIC,    // Dynamic fee pool
    VOLATILITY  // Volatility-based dynamic fee pool
}
