// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IValidatorManager {

    event TipCollectorAdded(address indexed provider, address tipCollector);

    event RewardPoolAdded(address indexed provider, address rewardPool);

    event StakerKeyRewardClaimed(address indexed staker, address indexed provider, uint128 amount);

    function deployCollector(address provider) external;

    function deployRewardPool(address provider) external;

    function getTotalTipReward(address provider) external view returns (uint256);

    function getPendingReward(address provider) external view returns (uint256);
}
