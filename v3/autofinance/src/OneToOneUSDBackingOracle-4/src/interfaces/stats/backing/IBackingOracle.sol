// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

interface IBackingOracle {
    /// @notice Returns the backing of the asset in terms of the chains native asset
    /// @param asset Asset to check the backing of
    function getAssetBackingPerShare(
        address asset
    ) external returns (uint256);
}
