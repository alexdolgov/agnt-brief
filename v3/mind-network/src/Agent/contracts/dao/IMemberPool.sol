// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IGeneralError} from "../common/IGeneralError.sol";

interface IMemberPool is IGeneralError {
    event RewardSettled(
        uint256 tsFrom,
        uint256 tsTo,
        uint256 hubId,
        uint256 agentRewardAmount,
        uint256 hubOwnerRewardAmount
    );
    event Deposit(uint256 hubId, uint256 agentId, uint256 assetAmount);
    event Withdraw(uint256 hubId, uint256 agentId, uint256 assetAmount);
    event RewardEarned(address user, uint256 agentId, uint256 hubId, uint256 rewardAmount);
    event RewardClaimed(address user, uint256 rewardAmount);
    event HubOwnerRewardClaimed(uint256 hubId, address beneficiary, uint256 rewardAmount);
    event HubOwnerRewardDistributed(uint256 hubId, address recipient, uint256 amount);
}
