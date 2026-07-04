// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

struct LockPosition {
    uint256 amount; // Amount of tokens locked
    uint256 lockDuration; // Duration in weeks
    uint256 startTime; // Timestamp when lock started
    uint256 unlockTime; // Timestamp when lock ends
    uint256 weight; // Calculated weight (stored for efficiency)
    bool active; // Whether lock is still active
}
