// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IStakingRewardsFactory {
    /// @notice Event emitted when a new farm is created
    event ItsAlive(
        address indexed stakingRewards, // The new farm contract address
        address indexed stakingToken,   // LP token to stake
        address indexed owner           // Farm owner
    );

    /// @notice Create a new yield farm
    /// @param stakingToken LP token address (the pair)
    /// @param rewardsTokens Array of reward token addresses
    /// @param rewards Array of reward amounts (raw units)
    /// @param rewardsDurations Array of durations in SECONDS
    /// @param owner Farm owner address
    function spawnStakingRewards(
        address stakingToken,
        address[] calldata rewardsTokens,
        uint256[] calldata rewards,
        uint256[] calldata rewardsDurations,
        address owner
    ) external;
}

