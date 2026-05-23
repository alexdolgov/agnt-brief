// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

/// @title User Tier System Data Structures
/// @notice Contains structures for flexible user tier management system

/// @notice Configuration for a user tier
/// @dev Streamlined tier configuration focused on fee discounts
struct TierConfig {
    bool isActive;                  // Whether this tier is currently active
    string name;                    // Human-readable tier name (e.g., "Bronze", "Gold", "VIP")
    uint256 feeDiscountBps;         // Fee discount in basis points (0-10000)
    uint256 validUntil;             // Tier validity expiration timestamp (0 = permanent)
    bytes32 metadata;               // Additional tier-specific metadata
}

/// @notice User's tier information
/// @dev Tracks current tier and trading statistics
struct UserTierInfo {
    uint256 tierId;                 // Current tier ID
    uint256 assignedAt;             // When tier was assigned
    uint256 totalVolume;            // Total trading volume by user (in USDC)
    bool isActive;                  // Whether user tier is active
}