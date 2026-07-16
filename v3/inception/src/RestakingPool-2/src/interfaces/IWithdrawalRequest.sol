// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface IWithdrawalRequest {
    event WithdrawalDelayChanged(uint256 _oldWithdrawalDelayBlocks, uint256 _withdrawalDelayBlocks);
    event WithdrawalsRequest(address _receiver, uint256 _withdrawalAmount, uint256 _blockNumber);
    event WithdrawalsClaimed(address _receiver, uint256 _requestId, uint256 _claimAmount);
}
