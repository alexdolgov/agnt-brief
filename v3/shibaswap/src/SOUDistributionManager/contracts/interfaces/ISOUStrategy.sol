// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title ISOUStrategy
 * @notice Base interface for all SOU distribution strategies
 * @dev Common interface for payouts, donations, rewards, etc.
 */
interface ISOUStrategy {
    // ============================================
    // ENUMS
    // ============================================

    enum DistributionType {
        USD_BASED,              // Traditional USD payout (all users)
        TOKEN_SPECIFIC,         // Only users who lost specific token
        REWARD_UNIVERSAL,       // Universal reward (all SOU holders)
        REWARD_CONDITIONAL,     // Conditional reward (specific criteria)
        DYNAMIC_PREMIUM,        // Dynamic premium based on price movement
        DONATION                // Permissionless donation
    }

    enum EligibilityRule {
        ALL_USERS,              // Anyone with active SOU
        LOST_SPECIFIC_TOKEN,    // Only users who lost specific token (e.g., SHIB holders)
        USD_PRINCIPAL_BASED,    // Based on USD principal
        TOKEN_AMOUNT_BASED      // Based on token amount lost
    }

    // ============================================
    // STRUCTS
    // ============================================

    struct DistributionInfo {
        DistributionType distributionType;
        EligibilityRule eligibilityRule;
        address paymentToken;
        address targetToken;
        uint256 totalAmount;
        uint256 totalClaimed;
        uint256 snapshotTotalPrincipal;
        uint256 snapshotTotalTokenLost;
        bytes32 priceSnapshotId;
        uint256 createdAt;
        bool active;
    }

    // ============================================
    // EVENTS
    // ============================================

    event DistributionClaimed(
        uint256 indexed distributionId,
        uint256 indexed tokenId,
        address indexed recipient,
        uint256 amount,
        uint256 usdValue
    );

    // ============================================
    // CORE FUNCTIONS
    // ============================================

    /**
     * @notice Calculate claimable amount for a token
     * @param tokenId SOU token ID
     * @param distributionId Distribution ID
     * @return amount Claimable amount in USD value
     */
    function calculateClaimable(uint256 tokenId, uint256 distributionId) external view returns (uint256 amount);

    /**
     * @notice Check if token is eligible for distribution
     * @param tokenId SOU token ID
     * @param distributionId Distribution ID
     * @return eligible True if eligible
     */
    function isEligible(uint256 tokenId, uint256 distributionId) external view returns (bool eligible);

    /**
     * @notice Execute claim for a token
     * @param tokenId SOU token ID
     * @param distributionId Distribution ID
     * @return claimedAmount Amount claimed in USD value
     */
    function executeClaim(uint256 tokenId, uint256 distributionId) external returns (uint256 claimedAmount);

    /**
     * @notice Check if token has already claimed from distribution
     * @param tokenId SOU token ID
     * @param distributionId Distribution ID
     * @return claimed True if already claimed
     */
    function hasClaimed(uint256 tokenId, uint256 distributionId) external view returns (bool claimed);

    /**
     * @notice Get distribution information
     * @param distributionId Distribution ID
     * @return info DistributionInfo struct
     */
    function getDistributionInfo(uint256 distributionId) external view returns (DistributionInfo memory info);

    /**
     * @notice Get total number of distributions created
     * @return count Total distribution count
     */
    function getDistributionCount() external view returns (uint256 count);
}
