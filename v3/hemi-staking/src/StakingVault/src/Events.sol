// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

event RewardVaultSetting(address indexed rewardVault);

event AssetAddedToEmissionList(address indexed asset);

event AssetRemovedFromEmissionList(address indexed asset);

event RewardParamsSet(address indexed token, uint256 rewardRate, uint256 rewardIntegral, uint32 claimStartTime);

event RewardClaimed(address indexed token, address indexed receiver, uint256 amount);

event RewardIntegralForAccountUpdated(
    address indexed account, address indexed token, uint256 pendingReward, uint256 rewardIntegral
);

event RewardIntegralUpdated(address indexed token, uint256 rewardIntegral);
