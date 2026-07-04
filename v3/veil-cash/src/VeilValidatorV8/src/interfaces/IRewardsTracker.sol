// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

interface IRewardsTracker {
    /// @dev Records a deposit commitment for a specific pool size
    /// @param commitment The commitment hash to record
    /// @param poolSize The pool size identifier (1 = 0.01 ETH, 2 = 0.1 ETH, 3 = 1 ETH)
    /// @param depositor The address of the depositor
    function recordDeposit(bytes32 commitment, uint8 poolSize, address depositor) external;

}
