//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library ClubTiers {
    enum Tier {
        Bronze,
        Silver,
        Gold
    }

    function getTierPercent(Tier _tier) internal pure returns (uint8) {
        if (_tier == Tier.Bronze) {
            return 25;
        } else if (_tier == Tier.Silver) {
            return 50;
        } else if (_tier == Tier.Gold) {
            return 100;
        } else {
            return 100; // If the level is not set, it returns 100%
        }
    }

    function tierLabel(Tier _tier) internal pure returns (string memory) {
        return
            _tier == Tier.Bronze
                ? "Bronze"
                : _tier == Tier.Silver
                    ? "Silver"
                    : _tier == Tier.Gold
                        ? "Gold"
                        : "Unknown";
    }
}
