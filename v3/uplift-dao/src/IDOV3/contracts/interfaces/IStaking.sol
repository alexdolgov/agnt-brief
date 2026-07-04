// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IStaking {
    event SetWhitelist(address whitelist);
    event SetMinTierReferrerBooster(uint16 minTierReferrerBooster);
    event SetMinReferrerStakeAmount(uint minReferrerStakeAmount);
    event Stake(address indexed account, address indexed referrer, uint stakeId);
    event Unstake(address indexed account, uint stakeId, uint amountInToken, uint exitFeeInToken);
    event SetStakingPowerData(uint32 stakingPowerInitialBreak, uint32 participationBreak);
    event SetLastRegistrationDate(address indexed caller, address account, uint registrationDate);
    event SetLastParticipationDate(address indexed caller, address account, uint participationDate);
    event UpdateStakingPowerForId(address indexed caller, address indexed account, uint id, uint stakingPower);
    event PayFee(address indexed from, address indexed parent, uint amountToParent, address indexed grandparent, uint amountToGrandparent);

    struct Tier {
        // % booster for tier qualification
        uint16 boosterInBP;
        // amount of LIFT required to qualify for this tier
        uint240 thresholdInToken;
        // vesting period
        uint vestingLockPeriodInSeconds;
    }

    struct AccountDetails {
        uint totalBoostedStake; // 256
        uint totalStake; // 256
        uint totalStakingPower; // 256
        uint lastIDOParticipation; // 256
        address referrer; // 160
        uint16 referralBoosterInBP; // 160 + 16 = 176
        uint lastIDORegistration; // 256
    }

    struct StakeDetails {
        uint stakeId; // 256
        uint amountInToken; // 256
        uint stakingPower; // 256
        uint64 startDateInSeconds; // 64
        // in seconds this is 136 years
        uint32 durationInSeconds; // 64 + 32 = 96
        uint16 tierBoosterInBP; // 64 + 32 + 16 = 112
        uint8 nextTierIndex; // 64 + 32 + 16 + 8 = 120
        uint136 tierSnapshot; // 64 + 32 + 16 + 8 + 136 = 256
    }

    struct StakeIdentifier {
        address account;
        uint id;
    }

    struct InfoAccountDetails {
        uint8 tierLength; 
        Tier[] tiers; 
        AccountDetails accountDetails;
        uint minReferrerStakeAmount;
        uint32 stakingPowerInitialBreak;
        string whitelistLink;
    }

    struct StakeInfo {
        address referrer;
        uint8 row;
        uint8 column;
        uint amount;
    }

    struct PermitStakeDetails {
        uint amount;
        uint8 row;
        uint8 column;
        uint deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    struct StakeRewardDetails {
        uint amountInToken;
        uint earlyExitFee;
        uint stakeProfit;
    }

    struct PermitStakeDetailsWithReferrer {
        bytes[] signaturesUser;
        address referrer;
        bytes[] signaturesReferrer;
        address[] signers;
        uint amount;
        uint8 row;
        uint8 column;
        uint deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    struct StakeWithReferrerParams {
        bytes[] signaturesUser;
        address referrer;
        bytes[] signaturesReferrer;
        address[] signers;
        uint amount;
        uint8 row;
        uint8 column;
    }

    function registry() external view returns (address);
    function token() external view returns (address);
    function tokenPool() external view returns (address);
    function whitelist() external view returns (address);
    function referrersData() external view returns (address);
    function stakingPowerData() external view returns (uint32 stakingPowerInitialBreak, uint32 participationBreak);
    
    function minTierReferrerBooster() external view returns (uint16);
    function stakesCount() external view returns (uint);
    function minReferrerStakeAmount() external view returns (uint);

    function stakes(address, uint) external view returns (
        uint stakeId,
        uint amountInToken,
        uint stakingPower,
        uint64 startDateInSeconds,
        uint32 durationInSeconds,
        uint16 tierBoosterInBP,
        uint8 nextTierIndex,
        uint136 tierSnapshot
    );
    function lastTierSnapshot() external view returns (uint);
    function setWhitelist(address _whitelist) external;
    function setMinTierReferrerBooster(uint16 _minTierReferrerBooster) external;
    function setMinReferrerStakeAmount(uint _minReferrerStakeAmount) external;
    function stake(uint _amount, uint8 _row, uint8 _column) external;
    function stakeWithReferrer(StakeWithReferrerParams calldata _stakeParams) external;
    function stakeWithPermit(PermitStakeDetails calldata _details) external;
    function stakeWithPermitWithReferrer(PermitStakeDetailsWithReferrer calldata _details) external;
    function unstake(uint _id) external;
    function unstakeWithoutFee(address _address, uint _id) external;
    function setStakingPowerData(uint32 _stakingPowerInitialBreak, uint32 _participationBreak) external;
    function setTiers(Tier[] calldata _tiers, uint8 _tierLength, uint8 _firstEarlyUnstakeIndex) external;
    function info(address _account) external view returns (InfoAccountDetails memory details);
    function tierSnapshotInfo(uint _snapshotIndex) external view returns (
        Tier[] memory snapshot,
        uint8 columnCount,
        uint8 firstEarlyUnstakeIndex
    );
    function canParticipate(address _account) external view returns (bool);
    function expectedStakingPower(address _account, uint[] calldata _ids) external view returns (uint[] memory stakingPower);
    function expectedRewards(StakeIdentifier[] calldata _stakes) external view returns (uint[] memory rewards);
    function setLastRegistrationDate(address _account, uint _registrationDate) external;
    function setLastParticipationDate(address _account, uint _participationDate) external;
    function updateStakingPower(address _account, uint[] calldata _ids) external;
}