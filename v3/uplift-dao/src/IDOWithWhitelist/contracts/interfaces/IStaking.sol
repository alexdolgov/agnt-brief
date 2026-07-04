// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.8;

interface IStaking {
    struct StakeDetails {
        uint256 stakeId; // 256
        uint256 amountInToken; // 256
        uint256 stakingPower; // 256
        uint64 startDateInSeconds; // 64
        // in seconds this is 136 years
        uint32 durationInSeconds; // 64 + 32 = 96
        uint16 tierBoosterInBP; // 64 + 32 + 16 = 112
        uint8 nextTierIndex; // 64 + 32 + 16 + 8 = 120
        uint136 tierSnapshot; // 64 + 32 + 16 + 8 + 136 = 256
    }

    struct Tier {
        // % booster for tier qualification
        uint16 boosterInBP;
        // amount of LIFT required to qualify for this tier
        uint240 thresholdInToken;
        // vesting period
        uint256 vestingLockPeriodInSeconds;
    }

    struct AccountDetails {
        uint256 totalBoostedStake; // 256
        uint256 totalStake; // 256
        uint256 totalStakingPower; // 256
        uint256 lastIDOParticipation; // 256
        address referrer; // 160
        uint16 referralBoosterInBP; // 160 + 16 = 176
        uint256 lastIDORegistration; // 256
    }

    struct InfoAccountDetails {
        uint8 tierLength;
        Tier[] tiers;
        AccountDetails accountDetails;
        uint256 minReferrerStakeAmount;
        uint32 stakingPowerInitialBreak;
        string whitelistLink;
    }

    function stakingPowerData() external view returns (uint32 stakingPowerInitialBreak, uint32 participationBreak);

    function setLastRegistrationDate(address account_, uint256 registrationDate_) external;

    function setLastParticipationDate(address account_, uint256 participationDate_) external;

    function updateStakingPower(address account_, uint256[] calldata ids_) external;

    function info(address account_) external view returns (InfoAccountDetails memory details);

    function canParticipate(address account_) external view returns (bool);
}
