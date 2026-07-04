// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ISOUPayoutStrategy.sol";

/**
 * @title ISOUDistributionManager
 * @notice Interface for the SOUDistributionManager contract
 * @dev Minimal coordinator between SOU holders and strategy contracts
 *
 * Design Philosophy:
 * - Users/admins create distributions directly on strategy contracts
 * - DistributionManager only handles claims and strategy approval
 * - Acts as a bridge: gives strategies permission to modify SOUCore
 * - Compatible with any strategy implementing ISOUPayoutStrategy
 */
interface ISOUDistributionManager {
    // ============================================
    // STRUCTS
    // ============================================

    struct ClaimParams {
        address strategy;      // Strategy contract address
        uint256 payoutId;      // Payout ID within that strategy
        uint256 tokenId;       // SOU token ID
    }

    // ============================================
    // EVENTS
    // ============================================

    event StrategyApproved(address indexed strategy, bool approved);
    event ClaimExecuted(
        address indexed strategy,
        uint256 indexed payoutId,
        uint256 indexed tokenId,
        address claimer,
        uint256 amount
    );
    event BatchClaimExecuted(
        address indexed claimer,
        uint256 claimCount,
        uint256 totalAmount
    );

    // ============================================
    // STRATEGY MANAGEMENT
    // ============================================

    /**
     * @notice Approve or remove a strategy
     * @param strategy Strategy contract address
     * @param approved True to approve, false to remove
     */
    function setStrategyApproval(address strategy, bool approved) external;

    /**
     * @notice Batch approve multiple strategies
     * @param strategies Array of strategy addresses
     * @param approvals Array of approval statuses
     */
    function batchSetStrategyApproval(
        address[] calldata strategies,
        bool[] calldata approvals
    ) external;

    /**
     * @notice Check if strategy is approved
     * @param strategy Strategy address
     * @return approved True if approved
     */
    function isStrategyApproved(address strategy) external view returns (bool approved);

    // ============================================
    // CLAIM EXECUTION
    // ============================================

    /**
     * @notice Execute single claim from a strategy
     * @param strategy Strategy contract address
     * @param payoutId Payout ID within that strategy
     * @param tokenId SOU token ID to claim with
     * @param activityType Activity type to record (from SOUActivityTracker.ActivityType enum)
     * @return amount Amount claimed
     */
    function executeClaim(
        address strategy,
        uint256 payoutId,
        uint256 tokenId,
        uint8 activityType
    ) external returns (uint256 amount);

    /**
     * @notice Execute batch claims from multiple strategies
     * @param claims Array of claim parameters
     * @param activityType Activity type to record (from SOUActivityTracker.ActivityType enum)
     * @return totalAmount Total amount claimed across all claims
     */
    function batchExecuteClaims(
        ClaimParams[] calldata claims,
        uint8 activityType
    ) external returns (uint256 totalAmount);

    // ============================================
    // QUERY FUNCTIONS
    // ============================================

    /**
     * @notice Calculate claimable amount for a specific claim
     * @param strategy Strategy address
     * @param payoutId Payout ID
     * @param tokenId SOU token ID
     * @return amount Claimable amount
     */
    function calculateClaimable(
        address strategy,
        uint256 payoutId,
        uint256 tokenId
    ) external view returns (uint256 amount);

    /**
     * @notice Check if claim is eligible
     * @param strategy Strategy address
     * @param payoutId Payout ID
     * @param tokenId SOU token ID
     * @return eligible True if eligible
     */
    function isEligible(
        address strategy,
        uint256 payoutId,
        uint256 tokenId
    ) external view returns (bool eligible);

    /**
     * @notice Check if already claimed
     * @param strategy Strategy address
     * @param payoutId Payout ID
     * @param tokenId SOU token ID
     * @return claimed True if already claimed
     */
    function hasClaimed(
        address strategy,
        uint256 payoutId,
        uint256 tokenId
    ) external view returns (bool claimed);

    /**
     * @notice Get payout info from strategy
     * @param strategy Strategy address
     * @param payoutId Payout ID
     * @return info Payout info struct
     */
    function getPayoutInfo(
        address strategy,
        uint256 payoutId
    ) external view returns (ISOUPayoutStrategy.PayoutInfo memory info);

    /**
     * @notice Get total payouts in a strategy
     * @param strategy Strategy address
     * @return count Total payout count
     */
    function getStrategyPayoutCount(address strategy) external view returns (uint256 count);
}
