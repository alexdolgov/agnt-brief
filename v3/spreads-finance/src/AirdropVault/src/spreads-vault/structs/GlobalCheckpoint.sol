//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.29;

/// @notice Global checkpoint for total vault voting power
struct GlobalCheckpoint {
    uint256 timestamp;
    uint256 totalVotingPower;
    uint256 totalLockedAmount; // Total tokens locked
}
