// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

/// @title IHealthcheck
/// @notice Simple interface for system health verification at withdrawal execution
/// @dev Implementations define their own invariants specific to their system
interface IHealthcheck {
    /// @notice Check if a queued withdrawal should be allowed to execute
    /// @param queueId The queue entry ID being executed
    /// @param token The token being withdrawn
    /// @param recipient The withdrawal recipient
    /// @param amount The withdrawal amount
    /// @return healthy True if system invariants pass, false to block withdrawal
    /// @dev MUST NOT revert under normal conditions - reverts block all withdrawals
    function isHealthy(
        uint256 queueId,
        address token,
        address recipient,
        uint256 amount
    )
        external
        view
        returns (bool healthy);
}
