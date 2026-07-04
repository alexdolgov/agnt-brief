// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity 0.8.17;

/// @title Capture information about a pool or destination
interface IIncentiveStatsCalculator {
    /// @notice returns address of the platform token
    function platformToken() external view returns (address);
}
