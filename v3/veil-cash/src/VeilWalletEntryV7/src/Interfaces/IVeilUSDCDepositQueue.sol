// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title IVeilUSDCDepositQueue
/// @notice Interface for VeilUSDCDepositQueue contract
interface IVeilUSDCDepositQueue {
    /// @notice Queue a USDC deposit with a deposit key
    /// @param _depositor The address of the depositor
    /// @param _amount The amount of USDC to deposit
    /// @param _depositKey The deposit key to be used for building zk proof
    function queueDeposit(address _depositor, uint256 _amount, bytes calldata _depositKey) external;

    /// @notice Operator accepts a specific deposit by nonce and forwards funds to VeilEntry
    /// @param _nonce The deposit nonce to accept
    /// @return shieldAmount The amount to be shielded after fee deduction
    /// @return fee The fee amount deducted from the deposit
    function acceptDeposit(uint256 _nonce) external returns (uint256 shieldAmount, uint256 fee);

    /// @notice Operator rejects a deposit by nonce and refunds to the depositor
    /// @param _nonce The deposit nonce to reject
    function rejectDeposit(uint256 _nonce) external;
}

