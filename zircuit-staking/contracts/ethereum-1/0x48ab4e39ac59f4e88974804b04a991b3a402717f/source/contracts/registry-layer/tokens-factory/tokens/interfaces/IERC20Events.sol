// Copyright 2024 DTCC All Rights Reserved
// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

/// @title Interface for ERC-20 ERC20 token events
/// @dev This interface defines the events related to ERC-20 ERC20 tokens.
interface IERC20Events {
    /// @notice Emit when tokens are transferred
    /// @param from The address tokens are transferred from
    /// @param to The address tokens are transferred to
    /// @param value The amount of tokens transferred
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @notice Emit when approval occurs
    /// @param owner The address that approves the tokens
    /// @param spender The address that is approved to spend the tokens
    /// @param value The amount of tokens approved
    event Approval(address indexed owner, address indexed spender, uint256 value);
}
