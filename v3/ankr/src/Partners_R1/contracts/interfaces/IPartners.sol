//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

interface IPartners {
    /**
     * Events
     */

    event PartnerAdded(uint256 indexed code, address indexed partnerAddress);

    event PartnerAddressUpdated(
        uint256 indexed code,
        address indexed newAddress
    );

    event PartnerRemoved(uint256 indexed code, address indexed partnerAddress);

    event RewardsReceived(uint256 rewards);

    event RewardsClaimed(uint256 indexed code, uint256 rewards);

    event RewardsAddedFor(uint256 indexed code, uint256 rewards);

    event RewardsAddedForPartners(
        uint256[] codes,
        uint256[] rewards,
        uint256[] missing
    );

    event CommissionWithdrawn(uint256 commission);

    event TokenHubAddressChanged(address indexed tokenHub);

    event PoolAddressChanged(address indexed poolAddress);

    event TreasuryAddressChanged(address indexed treasuryAddress);

    event PercentOfDailyRewardsChanged(uint256 percentOfDailyRewards);

    /**
     * Methods
     */

    function ifExistPartnerByCode(uint256 code) external returns (bool);
}
