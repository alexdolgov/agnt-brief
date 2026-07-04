// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

/// @notice Withdrawal request struct - optimized for storage packing
/// @dev Fields ordered to minimize storage slots (5 slots instead of 7)
struct WithdrawalRequest {
    address requester;          // 20 bytes
    bool processed;             // 1 byte
    bool cancelled;             // 1 byte
    // 10 bytes padding - slot 0 complete
    uint256 shareAmount;        // slot 1
    uint256 requestTimestamp;   // slot 2
    uint256 requestId;          // slot 3
    uint256 wbtcAmount;         // slot 4
}
