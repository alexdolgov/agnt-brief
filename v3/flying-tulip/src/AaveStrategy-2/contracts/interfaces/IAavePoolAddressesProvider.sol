// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

interface IAavePoolAddressesProvider {
    function getPool() external view returns (address);
}
