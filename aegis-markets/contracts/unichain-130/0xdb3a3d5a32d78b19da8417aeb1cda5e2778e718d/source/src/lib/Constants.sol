// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

library Constants {
    uint256 internal constant BPS_DENOMINATOR = 10_000; // Basis point denominator (1 bps = 1/10,000).

    uint256 internal constant MAX_EARNED_SLOTS_MULTIPLE = 10; // Cap multiplier: maxEarnedSlots = baseSlots * this.
    uint256 internal constant PRE_CCA_EARNED_SLOTS_PER_REFERRAL = 1; // Earned slots granted per successful referral mint.
    uint256 internal constant POST_CCA_EARNED_SLOTS_PER_POOL_SUCCESS = 3; // Earned slots granted once per pool on first successful, non-zero claim.
    uint256 internal constant MAX_CLAIM_MANY = 50; // Max poolIds length allowed in claimMany.
    uint256 internal constant MAX_PERMIT_DEADLINE_SECONDS = 14 days; // Upper bound on sponsor slot permit validity to limit long-lived leaked signatures.
    uint256 internal constant SPONSOR_BENEFIT_BPS = 5_000; // Parent sponsor share of gross payout when lineage applies.
    uint256 internal constant ROYALTY_BPS = 1_000; // Default EIP-2981 royalty rate (bps) for secondary sales.

    uint256 internal constant TIER_BUCKLER_MINT_FEE = 0.01 ether; // Mint fee in wei for the Buckler tier.
    uint256 internal constant TIER_KITE_SHIELD_MINT_FEE = 0.1 ether; // Mint fee in wei for the Kite Shield tier.
    uint256 internal constant TIER_TOWER_SHIELD_MINT_FEE = 1 ether; // Mint fee in wei for the Tower Shield tier.

    uint256 internal constant TIER_BUCKLER_BASE_SLOTS = 2; // Base slots granted on mint for Buckler sponsors.
    uint256 internal constant TIER_KITE_SHIELD_BASE_SLOTS = 10; // Base slots granted on mint for Kite Shield sponsors.
    uint256 internal constant TIER_TOWER_SHIELD_BASE_SLOTS = 100; // Base slots granted on mint for Tower Shield sponsors.

    uint256 internal constant TIER_BUCKLER_BONUS_BPS = 1_000; // Pre-CCA bonus rate in bps for Buckler.
    uint256 internal constant TIER_KITE_SHIELD_BONUS_BPS = 1_500; // Pre-CCA bonus rate in bps for Kite Shield.
    uint256 internal constant TIER_TOWER_SHIELD_BONUS_BPS = 2_500; // Pre-CCA bonus rate in bps for Tower Shield.

    uint32 internal constant TWAP_WINDOW_SHORT = 60; // Short TWAP window in seconds for polValue oracle reads.
    uint32 internal constant TWAP_WINDOW_MEDIUM = 300; // Medium TWAP window in seconds for polValue oracle reads.
    uint32 internal constant TWAP_WINDOW_LONG = 1_800; // Long TWAP window in seconds for polValue oracle reads.
}
