// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct FCU {
    /// @dev the address of the FCU contract
    address fcu;
    /// @dev the percentage of revenue this FCU will receive (in basis points, e.g., 1e17 = 10%)
    uint64 percentage;
    /// @dev the epoch at which the FCU will expire
    uint32 expiryEpoch;
}
