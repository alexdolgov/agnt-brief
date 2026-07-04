// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

interface IL1Block {
    /// @notice The latest L1 block number known by the L2 system.
    function number() external view returns (uint64);

    /// @notice The latest L1 blockhash.
    function hash() external view returns (bytes32);
}
