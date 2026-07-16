// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.5.16;

import {Ownable} from "./openzeppelin/Ownable.sol";
import {StakingRewards} from "./StakingRewards.sol";
import {IERC20} from "./openzeppelin/IERC20.sol";

/// @dev Owner of this contract should be an L2 Bridge Executor.
contract StakingRewardsFactory is Ownable {
    address public RUBI;

    constructor(address rubi) public {
        RUBI = rubi;
    }

    event StakingRewardsSpawned(
        address indexed stackingRewards,
        uint256 duration,
        uint256 reward
    );

    /// @dev Spawns and initializes `StakingRewards` contract.
    ///      That is, calls: setRewardsDuration(), notifyRewardAmount()
    /// @notice For the above to work, this contract will be set as
    ///         the `owner` and `rewardsDistribution` of `StakingRewards`,
    ///         and the the ownership will be transferred to the bridge executor.
    /// @param rewardsDuration - for `StakingRewards.setRewardsDuration()`
    /// @param reward - for `StakingRewards.notifyRewardAmount()`
    function spawnStakingRewards(
        address stakingToken,
        uint256 rewardsDuration,
        uint256 reward
    ) external onlyOwner {
        StakingRewards sr = new StakingRewards(RUBI, stakingToken);
        sr.setRewardsDuration(rewardsDuration);
	
        IERC20(RUBI).transfer(address(sr), reward);
        sr.notifyRewardAmount(reward);

        emit StakingRewardsSpawned(address(sr), rewardsDuration, reward);

        sr.transferOwnership(owner());
    }
}
