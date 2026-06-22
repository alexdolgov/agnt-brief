// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IStaker {

    event Started(uint64 startTime);
    event Ended(uint256 endTime);

    struct ValidatorInfo {
        address owner;
        uint32 ownerSharingRatio;
        uint64 unlockDuration;
        uint256 ownerStakedAmount;
        bool election;
    }

    struct UnregisterData {
        uint256 epoch;
        uint256 unlockAmount;
    }

    struct ActiveValidator {
        uint256 accTokenPerPower;
        uint256 accCoefficient;
        uint256 totalPowerBackup;
        uint256 totalStakedBackup;
        uint256 totalRewardBackup;
    }

    struct ValidatorStake {
        uint256 staked;
        uint256 activePower;
        mapping(uint256 epoch => uint256) virtualPowers;
        mapping(uint256 epoch => uint256) unlockingStakes;
        mapping(address account => UserStake) userStakes;
    }

    struct UserStake {
        uint256 staked;
        uint256 activePower;
        mapping(uint256 epoch => uint256) virtualPowers;
        mapping(uint256 epoch => uint256) unlockingStakes;
        uint256 lastSettledEpoch;
        uint256 accruedRewards;
        uint256 lastRewardReleaseEpoch;
    }

    struct ActiveValidatorInfo {
        address validator;
        uint256 staked;
        uint256 effectivePower;
        uint256 activePower;
        uint256 currentEpochVirtualPower;
    }

    struct UserStakeInfo {
        address account;
        address validator;
        uint256 staked;
        uint256 effectivePower;
        uint256 activePower;
        uint256 currentEpochVirtualPower;
        uint256 lastSettledEpoch;
        uint256 accruedRewards;
    }

    struct DistributeData {
        address validator;
        uint256 accTokenPerPower;
        uint256 accCoefficient;
        uint256 effectivePower;
    }

    function EPOCH_DURATION() external view returns (uint256);

    function REWARD_POINT_OFFSET() external view returns (uint256);

    function MAX_VALIDATOR_REWARDS_STAKED() external view returns (uint256);

    function startTime() external view returns (uint64);

    function currentEpoch() external view returns (uint256);

    function epochActiveInfo(
        uint256 epoch
    ) external view returns (ActiveValidatorInfo[] memory _activeValidators, bool settled);

    function getEpochInfo(
        uint256 epoch
    ) external view returns (address[] memory activeValidators, bool settled, uint256 totalRewards);

    function getValidatorInfo(address validator) external view returns (ValidatorInfo memory);

    function getActiveValidatorInfo(uint256 epoch, address validator) external view returns (ActiveValidatorInfo memory);

    function getActiveValidatorsInfo(uint256 epoch) external view returns (ActiveValidatorInfo[] memory activeValidatorInfo);

    function isActiveValidator(uint256 epoch, address target) external view returns (bool isActive);

    function getActiveValidators(uint256 epoch) external view returns (address[] memory);

    function getUserStakeInfo(address account, address validator) external view returns (UserStakeInfo memory);

    function epochTimeBounds(uint256 epoch) external view returns (uint256 epochStartTime, uint256 epochEndTime);

    function distribute(
        uint256 epoch,
        address[] calldata validators,
        uint256[] calldata rewards
    ) external returns (DistributeData[] memory distributes);

    function settleRewards(address account, address validator) external returns (uint256 epochFrom, uint256 epochTo, uint256 rewards);

    function pendingRewards(address account, address validator) external view returns (uint256 rewards);
}
