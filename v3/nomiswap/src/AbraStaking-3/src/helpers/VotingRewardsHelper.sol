// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.19;

import {Bribe} from "../bribes/Bribe.sol";
import "../VoterV4.sol";

contract VotingRewardsHelper {
    struct Reward {
        address token;
        uint256 amount;
    }

    struct YsReward {
        address ys;
        address internalBribe;
        Reward[] internalBribeRewards;
        address externalBribe;
        Reward[] externalBribeRewards;
    }

    struct PoolReward {
        address pool;
        YsReward[] ysRewards;
    }

    VoterV4 public immutable voter;

    constructor(address _voter) {
        voter = VoterV4(_voter);
    }

    function getUnclaimedRewards(address account) external view returns (PoolReward[] memory poolRewards) {
        uint256 poolsLength = voter.poolsLength();
        poolRewards = new PoolReward[](poolsLength);
        for (uint256 i = 0; i < poolsLength; ++i) {
            address pool = voter.pools(i);
            poolRewards[i].pool = pool;
            address gauge = voter.gauges(pool);
            address[] memory ys = IGauge(gauge).yieldSources();
            YsReward[] memory ysRewards = new YsReward[](ys.length);
            poolRewards[i].ysRewards = ysRewards;
            for (uint256 j = 0; j < ys.length; ++j) {
                YsReward memory ysReward = ysRewards[j];
                ysReward.ys = ys[j];
                ysReward.internalBribe = voter.internalBribes(ysReward.ys);
                ysReward.internalBribeRewards = getBribeRewards(account, Bribe(ysReward.internalBribe));
                ysReward.externalBribe = voter.externalBribes(ysReward.ys);
                ysReward.externalBribeRewards = getBribeRewards(account, Bribe(ysReward.externalBribe));
            }
        }
    }

    function getBribeRewards(address account, Bribe bribe) private view returns (Reward[] memory rewards) {
        uint256 rewardsLength = Bribe(bribe).rewardsListLength();
        rewards = new Reward[](rewardsLength);
        for (uint256 i = 0; i < rewardsLength; ++i) {
            address token = Bribe(bribe).rewardTokens(i);
            rewards[i].token = token;
            rewards[i].amount = Bribe(bribe).earned(account, token);
        }
    }
}
