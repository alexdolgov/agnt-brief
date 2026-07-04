// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title IVeilDepositQueue
/// @notice Interface for VeilDepositQueue contract
interface IVeilDepositQueue {
    /// @notice Operator processes the next deposit in queue (FIFO order)
    /// @return amount Amount of ETH in the deposit
    /// @return shieldAmount Amount of shield tokens deposited
    /// @return fee Fee amount deducted from the deposit
    function processNextDeposit() external returns (uint256 amount, uint256 shieldAmount, uint256 fee);

    /// @notice Operator refunds the next deposit in queue (FIFO order)
    /// @return amount Amount of ETH refunded
    /// @return shieldAmount Amount of shield tokens that would have been deposited
    /// @return fee Fee amount that would have been deducted
    function processRefund() external returns (uint256 amount, uint256 shieldAmount, uint256 fee);

    /// @notice New functions for deposit queue

    /// @notice Queue a deposit with a deposit key
    /// @param _depositKey The deposit key to be used for building zk proof
    function queueDeposit(address _depositor, uint256 _amount, bytes calldata _depositKey) external payable;

    /// new functions for deposit queue
    /// @notice Operator accepts a specific deposit by nonce and forwards funds to VeilEntry
    /// @param _nonce The deposit nonce to accept
    function acceptDeposit(uint256 _nonce) external returns (uint256 shieldAmount, uint256 fee);

    /// reject a deposit by nonce
    /// @param _nonce The deposit nonce to reject
    function rejectDeposit(uint256 _nonce) external;
}
