// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title IftYieldWrapperV2
/// @notice Extended wrapper interface that surfaces queue IDs from withdrawals.
/// @dev Standalone interface — does NOT extend IftYieldWrapper because adding
///      return values to withdraw/withdrawUnderlying would create conflicting
///      selectors (Solidity treats return types as part of override resolution).
///      At the EVM level, function selectors are identical (return types don't
///      affect them), so existing callers using IftYieldWrapper-typed variables
///      continue to work at runtime.
interface IftYieldWrapperV2 is IERC20Metadata {
    function token() external view returns (address);

    function deposit(uint256 amount) external;

    function canWithdraw(uint256 amount) external view returns (bool);

    function maxAbleToWithdraw(uint256 amount) external view returns (uint256);

    /// @notice Withdraw underlying tokens from the wrapper
    /// @param amount The amount of underlying tokens to withdraw
    /// @param to The recipient address
    /// @return queueId The CB queue entry ID (0 if transfer was immediate)
    function withdraw(uint256 amount, address to) external returns (uint256 queueId);

    /// @notice Withdraw position tokens directly from strategies
    /// @param amount The amount (in share terms) to withdraw
    /// @param to The recipient address
    /// @return queueIds Per-strategy CB queue entry IDs (0 if immediate or strategy skipped)
    function withdrawUnderlying(
        uint256 amount,
        address to
    )
        external
        returns (uint256[] memory queueIds);

    function circuitBreaker() external view returns (address);

    function setCircuitBreaker(address _circuitBreaker) external;
}
