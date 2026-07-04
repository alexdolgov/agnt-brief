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
  
} 