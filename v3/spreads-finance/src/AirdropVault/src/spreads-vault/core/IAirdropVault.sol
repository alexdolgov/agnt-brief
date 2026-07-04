// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {LockPosition} from "../structs/LockPosition.sol";

interface IAirdropVault {
    // Lock functions
    function lock(uint256 amount, uint256 durationWeeks) external returns (uint256 lockId);
    function unlock(uint256 lockId) external;
    function unlockAll() external;
    function extendLock(uint256 lockId, uint256 newDurationWeeks) external;

    // View functions
    function getLockPosition(address user, uint256 lockId) external view returns (LockPosition memory);
    function getUserLocks(address user) external view returns (LockPosition[] memory);
    function getUserTotalWeight(address user) external view returns (uint256);
    function getTotalVaultWeight() external view returns (uint256);
    function calculateLockWeight(uint256 durationWeeks) external view returns (uint256);
    function getUserActiveLocksCount(address user) external view returns (uint256);
    function getTotalSPRStaked() external view returns (uint256);
    function transferForRebalance(address recipient, uint256 amount) external;

    // Events
    event Locked(
        address indexed user,
        uint256 indexed lockId,
        uint256 amount,
        uint256 durationWeeks,
        uint256 weight,
        uint256 unlockTime
    );
    event Unlocked(address indexed user, uint256 indexed lockId, uint256 amount, uint256 penalty);
    event LockExtended(address indexed user, uint256 indexed oldLockId, uint256 indexed newLockId, uint256 newDuration);
    event WeightUpdated(address indexed user, uint256 oldWeight, uint256 newWeight);
}
