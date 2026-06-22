// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IEmiter {

    event ValidatorRegistered(uint256 eventIndex, address validator, uint256 stakedAmount, uint32 ownerSharingRatio, uint64 unlockDuration);

    event ValidatorUnregistered(uint256 eventIndex, address validator, uint256 epoch);

    event ValidatorElected(uint256 eventIndex, uint256 epoch, uint256 epochStart, uint256 epochEnd, address[] activeValidators);

    event SharingRatioUpdated(address validator, uint32 oldSharingRatio, uint32 newSharingRatio);

    event Staked(
        uint256 eventIndex,
        uint256 epoch,
        address validator,
        address account,
        uint256 amount,
        uint256 validatorStakedAmount,
        uint256 validatorActivePower,
        uint256 validatorVirtualPower,
        uint256 validatorUnlockingAmount,
        uint256 userStakedAmount,
        uint256 userActivePower,
        uint256 userVirtualPower,
        uint256 userUnlockingAmount
    );

    event Unstaked(
        uint256 eventIndex,
        uint256 epoch,
        address validator,
        address account,
        uint256 amount,
        uint256 unlockTime,
        uint256 unlockUntilEpoch,
        uint256 validatorStakedAmount,
        uint256 validatorActivePower,
        uint256 validatorVirtualPower,
        uint256 validatorUnlockingAmount,
        uint256 userStakedAmount,
        uint256 userActivePower,
        uint256 userVirtualPower,
        uint256 userUnlockingAmount
    );

    event DistributeValidatorReward(
        uint256 epoch,
        uint256 totalRewards,
        address validator,
        uint256 rewards,
        uint256 ownerCommission,
        uint256 accTokenPerPower,
        uint256 accCoefficient,
        uint256 globalPower,
        uint256 validatorPower
    );

    event RewardSettled(
        address validator,
        address account,
        uint256 epochFrom,
        uint256 epochTo,
        uint64 point,
        uint256 rewards,
        uint64 unlockDuration,
        uint32 penaltyRatio,
        uint256 penaltyAmount
    );

    event RewardClaimed(address account, uint64 point, uint256 receivedRewards, uint256 penaltyAmount);

    event StakeReleasing(
        address validator,
        uint256 amount,
        uint256 lockDuration,
        address recipient,
        uint256 tokenId
    );

    event StakeClaimed(
        uint256 tokenId,
        uint256 amount,
        address recipient
    );

    struct StakedData {
        uint256 epoch;
        address validator;
        address account;
        uint256 amount;
        uint256 validatorStakedAmount;
        uint256 validatorActivePower;
        uint256 validatorVirtualPower;
        uint256 validatorUnlockingAmount;
        uint256 userStakedAmount;
        uint256 userActivePower;
        uint256 userVirtualPower;
        uint256 userUnlockingAmount;
    }

    struct UnstakedData {
        uint256 epoch;
        address validator;
        address account;
        uint256 amount;
        uint256 unlockTime;
        uint256 unlockUntilEpoch;
        uint256 validatorStakedAmount;
        uint256 validatorActivePower;
        uint256 validatorVirtualPower;
        uint256 validatorUnlockingAmount;
        uint256 userStakedAmount;
        uint256 userActivePower;
        uint256 userVirtualPower;
        uint256 userUnlockingAmount;
    }

    struct DistributeValidatorRewardData {
        uint256 epoch;
        uint256 totalRewards;
        address validator;
        uint256 rewards;
        uint256 ownerCommission;
        uint256 accTokenPerPower;
        uint256 accCoefficient;
        uint256 globalPower;
        uint256 validatorPower;
    }

    struct RewardSettledData {
        address validator;
        address account;
        uint256 epochFrom;
        uint256 epochTo;
        uint64 point;
        uint256 rewards;
        uint64 unlockDuration;
        uint32 penaltyRatio;
        uint256 penaltyAmount;
    }

    function emitValidatorRegistered(
        address validator,
        uint256 stakedAmount,
        uint32 ownerSharingRatio,
        uint64 unlockDuration
    ) external;

    function emitValidatorUnregistered(address validator, uint256 epoch) external;

    function emitSharingRatioUpdated(address validator, uint32 oldSharingRatio, uint32 newSharingRatio) external;

    function emitValidatorElected(
        uint256 epoch,
        uint256 epochStart,
        uint256 epochEnd,
        address[] calldata activeValidators
    ) external;

    function emitStaked(StakedData calldata staked) external;

    function emitUnstaked(UnstakedData calldata unstaked) external;

    function emitDistributeValidatorReward(DistributeValidatorRewardData[] memory distributes) external;

    function emitRewardSettled(RewardSettledData memory settled) external;

    function emitRewardClaimed(address account, uint64 point, uint256 receivedRewards, uint256 penaltyAmount) external;

    function emitStakeReleasing(address validator, uint256 amount, uint256 lockDuration, address recipient, uint256 tokenId) external;

    function emitStakeClaimed(uint256 tokenId, uint256 amount, address recipient) external;

    function eventIndex() external view returns (uint256);
}
