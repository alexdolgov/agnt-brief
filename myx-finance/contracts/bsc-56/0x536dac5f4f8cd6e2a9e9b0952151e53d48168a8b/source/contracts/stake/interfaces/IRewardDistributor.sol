// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IRewardDistributor {

    event UnlockRulesUpdated(
        UnlockRule[] oldRules,
        UnlockRule[] newRules
    );

    event UpdateBlacklist(
        bool isAdded,
        address[] accounts
    );

    struct UnlockRule {
        uint64 duration;
        uint32 penaltyRatio;
    }

    struct UserRewardData {
        uint256 actuallyAmount;
        uint256 penaltyAmount;
    }

    struct UnclaimedRewardData {
        uint64 point;
        uint256 rewards;
    }

    function unlockRules() external view returns (UnlockRule[] memory);

    function getUnclaimedReward(address account, uint64 point) external view returns (uint256 amount);

    function pendingRewards(address account, address validator) external view returns (uint256 stakeRewards, uint256 ownerCommission);
}
