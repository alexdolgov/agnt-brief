// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {TimeUtils} from "../libraries/TimeUtils.sol";
import {IReleaseLocker} from "./interfaces/IReleaseLocker.sol";
import {IRewardDistributor} from "./interfaces/IRewardDistributor.sol";
import {IStaker} from "./interfaces/IStaker.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract UiStakeDataProvider {
    IStaker public immutable STAKER;
    IRewardDistributor public immutable REWARD_DISTRIBUTOR;
    IReleaseLocker public immutable RELEASE_LOCKER;
    IERC20 public immutable MYX_TOKEN;

    struct ValidatorFullInfo {
        address validator;
        address owner;
        uint32 ownerSharingRatio;
        uint64 unlockDuration;
        uint256 ownerStakedAmount;
        bool election;
        uint256 totalStaked;
        uint256 effectivePower;
        bool isActive;
    }

    struct UserStakeInfo {
        uint256 myxBalance;
        uint256 stakedAmount;
        uint256 effectivePower;
        uint256 pendingRewards;
        IReleaseLocker.ReleaseData[] lockingTokens;
    }

    struct EpochActiveSummary {
        uint256 epoch;
        uint256 startTime;
        uint256 endTime;
        uint256 totalStaked;
        uint256 totalEffectivePower;
        bool isSettled;
    }

    struct ReleaseData {
        uint256 tokenId;
        uint256 releaseTime;
        uint256 lockDuration;
        uint256 amount;
    }

    constructor(
        address staker,
        address rewardDistributor,
        address releaseLocker,
        address myxToken
    ) {
        STAKER = IStaker(staker);
        REWARD_DISTRIBUTOR = IRewardDistributor(rewardDistributor);
        RELEASE_LOCKER = IReleaseLocker(releaseLocker);
        MYX_TOKEN = IERC20(myxToken);
    }

    function getValidatorFullInfo(address validator) external view returns (ValidatorFullInfo memory info) {
        IStaker.ValidatorInfo memory valInfo = STAKER.getValidatorInfo(validator);
        uint256 currentEpoch = STAKER.currentEpoch();
        IStaker.ActiveValidatorInfo memory stakeInfo = STAKER.getActiveValidatorInfo(currentEpoch, validator);
        bool isActive = STAKER.isActiveValidator(currentEpoch, validator);

        return ValidatorFullInfo({
            validator: validator,
            owner: valInfo.owner,
            ownerSharingRatio: valInfo.ownerSharingRatio,
            unlockDuration: valInfo.unlockDuration,
            ownerStakedAmount: valInfo.ownerStakedAmount,
            election: valInfo.election,
            totalStaked: stakeInfo.staked,
            effectivePower: stakeInfo.effectivePower,
            isActive: isActive
        });
    }

    function getUserStakeInfo(
        address user,
        address validator
    ) external view returns (UserStakeInfo memory info) {
        IStaker.UserStakeInfo memory stakeInfo = STAKER.getUserStakeInfo(user, validator);
        (uint256 stakeRewards, uint256 ownerCommission) = REWARD_DISTRIBUTOR.pendingRewards(user, validator);

        uint256[] memory userTokens = RELEASE_LOCKER.getTokensOfOwner(user);
        IReleaseLocker.ReleaseData[] memory lockingTokens = new IReleaseLocker.ReleaseData[](userTokens.length);
        for (uint256 i = 0; i < userTokens.length; i++) {
            uint256 tokenId = userTokens[i];
            lockingTokens[i] = RELEASE_LOCKER.getReleaseData(tokenId);
        }

        return UserStakeInfo({
            myxBalance: IERC20(MYX_TOKEN).balanceOf(user),
            stakedAmount: stakeInfo.staked,
            effectivePower: stakeInfo.effectivePower,
            pendingRewards: stakeRewards + ownerCommission,
            lockingTokens: lockingTokens
        });
    }

    function getCurrentEpochActiveSummary() external view returns (EpochActiveSummary memory summary) {
        uint256 currentEpoch = STAKER.currentEpoch();
        (uint256 startTime, uint256 endTime) = STAKER.epochTimeBounds(currentEpoch);

        (
            IStaker.ActiveValidatorInfo[] memory activeValidators,
            bool settled
        ) = STAKER.epochActiveInfo(currentEpoch);

        uint256 totalStaked;
        uint256 totalEffectivePower;
        for (uint256 i = 0; i < activeValidators.length; i++) {
            totalStaked += activeValidators[i].staked;
            totalEffectivePower += activeValidators[i].effectivePower;
        }

        return EpochActiveSummary({
            epoch: currentEpoch,
            startTime: startTime,
            endTime: endTime,
            totalStaked: totalStaked,
            totalEffectivePower: totalEffectivePower,
            isSettled: settled
        });
    }

    function getAllActiveValidators() external view returns (ValidatorFullInfo[] memory validators) {
        address[] memory activeVals = STAKER.getActiveValidators(STAKER.currentEpoch());
        validators = new ValidatorFullInfo[](activeVals.length);

        for (uint256 i = 0; i < activeVals.length; i++) {
            validators[i] = this.getValidatorFullInfo(activeVals[i]);
        }
    }

    function getUserTotalStakeInfo(
        address[] calldata validators,
        address user
    ) external view returns (uint256 totalStaked, uint256 totalPendingRewards, uint256 totalLocking) {

        totalStaked = 0;
        totalPendingRewards = 0;
        for (uint256 i = 0; i < validators.length; i++) {
            address validator = validators[i];

            IStaker.UserStakeInfo memory stakeInfo = STAKER.getUserStakeInfo(user, validator);
            (uint256 stakeRewards, uint256 ownerCommission) = REWARD_DISTRIBUTOR.pendingRewards(user, validator);

            totalStaked += stakeInfo.staked;
            totalPendingRewards += (stakeRewards + ownerCommission);
        }

        totalLocking = 0;
        uint256[] memory userTokens = RELEASE_LOCKER.getTokensOfOwner(user);
        for (uint256 i = 0; i < userTokens.length; i++) {
            IReleaseLocker.ReleaseData memory releaseData = RELEASE_LOCKER.getReleaseData(userTokens[i]);
            totalLocking += releaseData.amount;
        }
    }

    function getUserReleaseData(
        address user
    ) external view returns (ReleaseData[] memory lockingTokens) {
        uint256[] memory userTokens = RELEASE_LOCKER.getTokensOfOwner(user);
        lockingTokens = new ReleaseData[](userTokens.length);
        for (uint256 i = 0; i < userTokens.length; i++) {
            uint256 tokenId = userTokens[i];
            IReleaseLocker.ReleaseData memory _releaseData = RELEASE_LOCKER.getReleaseData(tokenId);
            lockingTokens[i] = ReleaseData({
                tokenId: tokenId,
                releaseTime: _releaseData.releaseTime,
                lockDuration: _releaseData.lockDuration,
                amount: _releaseData.amount
            });
        }
    }

    function getGlobalStats(
        address[] calldata validators
    ) external view returns (uint256 currentEpoch, uint256 totalStaked, uint256 totalPower) {
        currentEpoch = STAKER.currentEpoch();

        totalStaked = 0;
        totalPower = 0;
        for (uint256 i = 0; i < validators.length; i++) {
            IStaker.ActiveValidatorInfo memory stakeInfo = STAKER.getActiveValidatorInfo(currentEpoch, validators[i]);
            totalStaked += stakeInfo.staked;
            totalPower += stakeInfo.effectivePower;
        }
    }
}
