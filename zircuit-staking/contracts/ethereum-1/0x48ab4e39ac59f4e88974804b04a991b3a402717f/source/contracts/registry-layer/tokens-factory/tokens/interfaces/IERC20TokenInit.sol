// Copyright 2024 DTCC All Rights Reserved
// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

/// @title ERC-20 token init package interface
/// @dev This interface defines the functions for initializing a ERC-20 token smart contract.
interface IERC20TokenInit {
    /// @notice Initialize smart contract with msg sender as owner
    /// @param name Token name
    /// @param description Token description
    /// @param updatesRepository Updates repository address
    /// @param controller Token controller
    /// @param extraBytes Extra bytes
    function initialize(
        string calldata name,
        string calldata description,
        address updatesRepository,
        address controller,
        bytes memory extraBytes
    ) external;
}
