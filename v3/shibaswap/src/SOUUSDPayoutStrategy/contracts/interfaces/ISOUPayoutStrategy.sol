// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ISOUStrategy.sol";

/**
 * @title ISOUPayoutStrategy
 * @notice Interface for admin-controlled payout strategy implementations
 * @dev Extends ISOUStrategy with payout-specific functions
 */
interface ISOUPayoutStrategy is ISOUStrategy {
    // ============================================
    // PAYOUT-SPECIFIC ENUMS (for backwards compatibility)
    // ============================================

    // Legacy aliases for DistributionType
    enum PayoutType {
        USD_BASED,              // Traditional USD payout (all users)
        TOKEN_SPECIFIC,         // Only users who lost specific token
        REWARD_UNIVERSAL,       // Universal reward (all SOU holders)
        REWARD_CONDITIONAL,     // Conditional reward (specific criteria)
        DYNAMIC_PREMIUM         // Dynamic premium based on price movement
    }

    // ============================================
    // STRUCTS
    // ============================================

    struct PayoutConfig {
        PayoutType payoutType;
        EligibilityRule eligibilityRule;
        address paymentToken;       // Token being distributed
        address targetToken;        // For eligibility (e.g., only SHIB losers)
        uint256 amount;             // Total amount to distribute
        bytes32 priceSnapshotId;    // Price snapshot for calculations
        bytes extraData;            // For complex logic (premiums, ratios, etc.)
    }

    // Legacy struct for backwards compatibility
    struct PayoutInfo {
        PayoutType payoutType;
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

    event PayoutCreated(
        uint256 indexed payoutId,
        PayoutType payoutType,
        address indexed paymentToken,
        uint256 totalAmount
    );

    event PayoutClaimed(
        uint256 indexed payoutId,
        uint256 indexed tokenId,
        address indexed recipient,
        uint256 amount,
        uint256 usdValue
    );

    event PayoutCancelled(uint256 indexed payoutId);

    // ============================================
    // PAYOUT FUNCTIONS
    // ============================================

    /**
     * @notice Create a new payout
     * @param config Payout configuration
     * @return payoutId The ID of the created payout
     */
    function createPayout(PayoutConfig calldata config) external returns (uint256 payoutId);

    /**
     * @notice Get payout information (legacy - use getDistributionInfo for new code)
     * @param payoutId Payout ID
     * @return info PayoutInfo struct
     */
    function getPayoutInfo(uint256 payoutId) external view returns (PayoutInfo memory info);

    /**
     * @notice Cancel a payout (admin only)
     * @param payoutId Payout ID
     */
    function cancelPayout(uint256 payoutId) external;

    /**
     * @notice Get total number of payouts created (legacy - use getDistributionCount for new code)
     * @return count Total payout count
     */
    function getPayoutCount() external view returns (uint256 count);
}
