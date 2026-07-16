// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

/// @title Referral system data structures with multi-collateral support
/// @notice Contains all data structures used by the multi-collateral referral system

/// @notice Configuration for a referrer (keyed by wallet address)
struct ReferrerConfig {
    bool isActive;                      // Whether this referrer is active
    uint256 discountRate;               // Discount rate for traders in basis points (0-10000)
    uint256 rebateRate;                 // Rebate rate for referrer in basis points (0-10000)
    uint256 discountValidityDuration;   // How long trader can use discounts (seconds)
    uint256 rebateValidityDuration;     // How long referrer can earn rebates (seconds)
    uint256 expiresAt;                  // When this config expires (timestamp)
    uint256 monthlyRebateLimit;         // Monthly rebate limit in USD (in wei, e.g., 1000e18 = $1000, 0 = no limit)
    uint256 totalVolume;                // Total volume generated through this referrer
    uint256 totalReferrals;             // Total number of people referred
    uint256 currentMonthUsdRebates;     // Current month total USD rebates (across all collaterals)
    uint256 currentMonthStart;          // Current month start timestamp for global USD tracking
}

/// @notice Information about a trader's referral setup
struct TraderReferralInfo {
    address referrer;                   // The referrer's wallet address
    uint256 activatedAt;                // When the trader activated this referrer
}

/// @notice USD price configuration for a collateral token
struct CollateralPriceConfig {
    address collateralToken;            // The collateral token address
    uint256 usdPrice;                   // USD price per unit (in wei, e.g., 1e18 = $1.00)
    uint256 decimals;                   // Token decimals for price calculation
    bool isActive;                      // Whether this price config is active
}

/// @notice Authorization signature for setting referrer config
struct AuthorizationSignature {
    address referrer;                   // Referrer address
    uint256 discountRate;               // Discount rate in basis points
    uint256 rebateRate;                 // Rebate rate in basis points
    uint256 discountValidityDuration;   // Discount validity duration in seconds
    uint256 rebateValidityDuration;     // Rebate validity duration in seconds
    uint256 expiresAt;                  // Config expiration timestamp
    uint256 monthlyRebateLimit;         // Monthly rebate limit in wei (0 = no limit)
    uint256 deadline;                   // Signature deadline timestamp
    bytes signature;                    // Server authorization signature
}

/// @notice Authorization signature for binding trader to referrer
struct TraderReferralBindingSignature {
    address trader;                     // Trader address to be bound
    address referrer;                   // Referrer address to bind to
    uint256 deadline;                   // Signature deadline timestamp
    bytes signature;                    // Server authorization signature
}


/// @notice Discount statistics for a trader (USD-based, across all collaterals)
struct DiscountStats {
    uint256 totalDiscountReceivedUsd;   // Total discount value in USD across all collaterals
}


/// @notice Rebate statistics for a referrer (USD-based, across all collaterals)
struct RebateStats {
    uint256 totalRebatesReceivedUsd;    // Total rebate value in USD across all collaterals
}



