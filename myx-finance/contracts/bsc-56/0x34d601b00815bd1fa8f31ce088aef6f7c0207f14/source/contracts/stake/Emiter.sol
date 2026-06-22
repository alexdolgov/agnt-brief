// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {IAddressesProvider} from "../interfaces/IAddressesProvider.sol";
import {Upgradeable} from "../libraries/Upgradeable.sol";
import {IEmiter} from "./interfaces/IEmiter.sol";
import {StakeErrors} from "./StakeErrors.sol";

contract Emiter is IEmiter, Upgradeable {

    uint256 public eventIndex;
    address public stake;
    address public rewardDistributor;
    address public releaseLocker;

    modifier onlyStakeSystem() {
        address caller = msg.sender;
        require(caller == stake || caller == rewardDistributor || caller == releaseLocker, StakeErrors.ERR_INVALID_ROLE);
        _;
    }

    function initialize(IAddressesProvider addressProvider, address _stake, address _rewardDistributor, address _releaseLocker) public initializer {
        ADDRESS_PROVIDER = addressProvider;
        stake = _stake;
        rewardDistributor = _rewardDistributor;
        releaseLocker = _releaseLocker;
    }

    function emitValidatorRegistered(
        address validator,
        uint256 stakedAmount,
        uint32 ownerSharingRatio,
        uint64 unlockDuration
    ) external onlyStakeSystem override {
        _beforeEmit();
        emit ValidatorRegistered(eventIndex, validator, stakedAmount, ownerSharingRatio, unlockDuration);
    }

    function emitValidatorUnregistered(address validator, uint256 epoch) external onlyStakeSystem override {
        _beforeEmit();
        emit ValidatorUnregistered(eventIndex, validator, epoch);
    }

    function emitSharingRatioUpdated(address validator, uint32 oldSharingRatio, uint32 newSharingRatio) external onlyStakeSystem override {
        emit SharingRatioUpdated(validator, oldSharingRatio, newSharingRatio);
    }

    function emitValidatorElected(
        uint256 epoch,
        uint256 epochStart,
        uint256 epochEnd,
        address[] calldata activeValidators
    ) external onlyStakeSystem override {
        _beforeEmit();
        emit ValidatorElected(eventIndex, epoch, epochStart, epochEnd, activeValidators);
    }

    function emitStaked(StakedData calldata staked) external onlyStakeSystem override {
        _beforeEmit();
        emit Staked(
            eventIndex,
            staked.epoch,
            staked.validator,
            staked.account,
            staked.amount,
            staked.validatorStakedAmount,
            staked.validatorActivePower,
            staked.validatorVirtualPower,
            staked.validatorUnlockingAmount,
            staked.userStakedAmount,
            staked.userActivePower,
            staked.userVirtualPower,
            staked.userUnlockingAmount
        );
    }

    function emitUnstaked(UnstakedData calldata unstaked) external onlyStakeSystem override {
        _beforeEmit();
        emit Unstaked(
            eventIndex,
            unstaked.epoch,
            unstaked.validator,
            unstaked.account,
            unstaked.amount,
            unstaked.unlockTime,
            unstaked.unlockUntilEpoch,
            unstaked.validatorStakedAmount,
            unstaked.validatorActivePower,
            unstaked.validatorVirtualPower,
            unstaked.validatorUnlockingAmount,
            unstaked.userStakedAmount,
            unstaked.userActivePower,
            unstaked.userVirtualPower,
            unstaked.userUnlockingAmount
        );
    }

    function emitDistributeValidatorReward(DistributeValidatorRewardData[] memory distributes) external onlyStakeSystem override {
        for (uint256 i = 0; i < distributes.length; i++) {
            DistributeValidatorRewardData memory distribute = distributes[i];
            emit DistributeValidatorReward(
                distribute.epoch,
                distribute.totalRewards,
                distribute.validator,
                distribute.rewards,
                distribute.ownerCommission,
                distribute.accTokenPerPower,
                distribute.accCoefficient,
                distribute.globalPower,
                distribute.validatorPower
            );
        }
    }

    function emitRewardSettled(RewardSettledData memory settled) external onlyStakeSystem override {
        emit RewardSettled(
            settled.validator,
            settled.account,
            settled.epochFrom,
            settled.epochTo,
            settled.point,
            settled.rewards,
            settled.unlockDuration,
            settled.penaltyRatio,
            settled.penaltyAmount
        );
    }

    function emitRewardClaimed(address account, uint64 point, uint256 receivedRewards, uint256 penaltyAmount) external onlyStakeSystem override {
        emit RewardClaimed(account, point, receivedRewards, penaltyAmount);
    }

    function emitStakeReleasing(address validator, uint256 amount, uint256 lockDuration, address recipient, uint256 tokenId) external onlyStakeSystem override {
        emit StakeReleasing(validator, amount, lockDuration, recipient, tokenId);
    }

    function emitStakeClaimed(uint256 tokenId, uint256 amount, address recipient) external onlyStakeSystem override {
        emit StakeClaimed(tokenId, amount, recipient);
    }

    function _beforeEmit() private {
        eventIndex++;
    }
}
