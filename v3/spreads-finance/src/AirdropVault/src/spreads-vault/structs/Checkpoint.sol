// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

/// @notice Checkpoint for historical voting power queries
/// @dev Stores voting power at a specific timestamp
struct Checkpoint {
    uint256 timestamp; // When this checkpoint was created
    uint256 votingPower; // Total voting power at this time
}
