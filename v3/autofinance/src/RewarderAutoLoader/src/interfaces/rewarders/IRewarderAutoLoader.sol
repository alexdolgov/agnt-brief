// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

/**
 * @title IRewarderAutoLoader
 * @notice Interface for automated reward loading system for Tokemak v2 rewarders
 * @dev Manages configurations and token bank for automated reward queuing
 */
interface IRewarderAutoLoader {
    // ========================================
    // Structs
    // ========================================

    /**
     * @notice Configuration for automated reward loading
     * @param rewardAmount Amount of reward tokens to queue each time
     * @param validUntil Timestamp after which this configuration is no longer valid
     */
    struct RewarderConfig {
        uint256 rewardAmount;
        uint256 validUntil;
    }

    // ========================================
    // Events
    // ========================================

    /**
     * @notice Emitted when a rewarder is configured or updated
     * @param rewarder Address of the rewarder contract
     * @param rewardAmount Amount of rewards to queue per period
     * @param validUntil Timestamp when configuration expires
     */
    event RewarderConfigured(address indexed rewarder, uint256 rewardAmount, uint256 validUntil);

    /**
     * @notice Emitted when rewards are successfully loaded to a rewarder
     * @param rewarder Address of the rewarder contract
     * @param token Address of the reward token
     * @param amount Amount of rewards queued
     */
    event RewardsLoaded(address indexed rewarder, address indexed token, uint256 amount);

    /**
     * @notice Emitted when tokens are loaded into the bank for a rewarder
     * @param rewarder Address of the rewarder
     * @param token Address of the token loaded
     * @param amount Amount loaded
     */
    event BankLoaded(address indexed rewarder, address indexed token, uint256 amount);

    /**
     * @notice Emitted when tokens are recovered from the bank for a rewarder
     * @param rewarder Address of the rewarder
     * @param token Address of the token recovered
     * @param recipient Address receiving the tokens
     * @param amount Amount recovered
     */
    event BankRecovered(address indexed rewarder, address indexed token, address indexed recipient, uint256 amount);

    /**
     * @notice Emitted when a rewarder is removed from the tracking list
     * @param rewarder Address of the rewarder that was removed
     */
    event RewarderRemoved(address indexed rewarder);

    // ========================================
    // Errors
    // ========================================

    /// @notice Thrown when trying to queue rewards for an expired configuration
    error ConfigExpired();

    /// @notice Thrown when trying to queue rewards for a disabled rewarder
    error RewarderNotEnabled();

    // ========================================
    // Configuration Functions
    // ========================================

    /**
     * @notice Configure or update a rewarder for automated loading
     * @param rewarder Address of the rewarder contract
     * @param rewardAmount Amount of rewards to queue each time
     * @param validUntil Timestamp when this configuration expires
     */
    function configureRewarder(address rewarder, uint256 rewardAmount, uint256 validUntil) external;

    /**
     * @notice Remove a rewarder configuration
     * @param rewarder Address of the rewarder to remove
     */
    function removeRewarder(
        address rewarder
    ) external;

    // ========================================
    // Banking Functions
    // ========================================

    /**
     * @notice Load tokens into the contract bank for a specific rewarder
     * @param rewarder Address of the rewarder these tokens are allocated for
     * @param token Token address to load
     * @param amount Amount to load
     */
    function loadBank(address rewarder, address token, uint256 amount) external;

    /**
     * @notice Recover tokens from the bank for a specific rewarder
     * @param rewarder Address of the rewarder to recover tokens from
     * @param token Token address to recover
     * @param amount Amount to recover
     */
    function recoverFromBank(address rewarder, address token, uint256 amount) external;

    // ========================================
    // Execution Functions
    // ========================================

    /**
     * @notice Queue rewards for a specific rewarder
     * @param rewarder Address of the rewarder to load
     */
    function queueRewards(
        address rewarder
    ) external;

    /**
     * @notice Queue rewards for multiple rewarders in a single transaction
     * @param rewarders Array of rewarder addresses
     */
    function queueRewardsBatch(
        address[] calldata rewarders
    ) external;

    // ========================================
    // View Functions
    // ========================================

    /**
     * @notice Check if a rewarder needs rewards queued
     * @param rewarder Address of the rewarder
     * @return True if rewarder needs rewards loaded
     */
    function needsRewards(
        address rewarder
    ) external view returns (bool);

    /**
     * @notice Get list of all rewarders that currently need rewards loaded
     * @return Array of rewarder addresses that need rewards
     */
    function getRewardersNeedingRewards() external view returns (address[] memory);

    /**
     * @notice Get configuration for a specific rewarder
     * @param rewarder Address of the rewarder
     * @return Configuration struct containing rewardAmount, validUntil, enabled
     */
    function getRewarderConfig(
        address rewarder
    ) external view returns (RewarderConfig memory);

    /**
     * @notice Get total number of configured rewarders
     * @return Number of rewarders in the tracking list
     */
    function getRewarderCount() external view returns (uint256);

    /**
     * @notice Get rewarder address at specific index
     * @param index Index in the rewarder list
     * @return Address of the rewarder
     */
    function rewarderList(
        uint256 index
    ) external view returns (address);

    /**
     * @notice Get token balance in the bank for a specific rewarder
     * @param rewarder Address of the rewarder
     * @return Balance in the bank for this rewarder
     */
    function tokenBank(
        address rewarder
    ) external view returns (uint256);

    /**
     * @notice Get the specific operator role for a rewarder
     * @dev Role is keccak256(abi.encode(Roles.SPECIFIC_REWARDER_OPERATOR, rewarderAddress))
     * @param rewarder Address of the rewarder
     * @return bytes32 role hash for specific rewarder operator
     */
    function getSpecificRewarderRole(
        address rewarder
    ) external pure returns (bytes32);
}
