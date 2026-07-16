// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title ILinearVestingDepositor
 * @notice Minimal interface to deposit vesting rewards into LinearVestingRewards
 */
interface ILinearVestingDepositor {
    /**
     * @notice Deposit a new vesting reward for a user
     * @param user beneficiary address
     * @param amount token amount (must be approved before calling)
     * @param start vesting start timestamp (seconds)
     * @param duration linear vesting duration in seconds
     */
    function depositReward(
        address user,
        uint256 amount,
        uint256 start,
        uint256 duration
    ) external;
}