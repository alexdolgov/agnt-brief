// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IValidatorManager {

    event TipCollectorAdded(address indexed provider, address tipCollector);

    event RewardPoolAdded(address indexed provider, address rewardPool);

    event StakerKeyRewardClaimed(address indexed staker, address indexed provider, uint128 amount);

    event ExtraCommissionChanged(address indexed provider, uint16 prevPercent, uint16 newPercent);

    event PendingRewardPublished(address indexed provider, uint64 totalReward, uint64 extraFee);

    function deployCollector(address provider) external;

    function deployRewardPool(address provider) external;

    function getTotalTipReward(address provider) external view returns (uint256);

    function getPendingReward(address provider) external view returns (uint256);
}
