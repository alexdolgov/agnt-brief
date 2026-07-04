// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;


interface IWalletFactory {
    function walletFor(address beneficiary, address vestingManager, uint256 idx, bool strict) external view returns (address);
    function walletForOrigin(address beneficiary, address vestingManager, uint256 idx, bool strict) external view returns (address);
    function createWallet(address beneficiary, address vestingManager, uint256 idx) external returns (address);
    function walletToIdx(address wallet) external returns (uint256);
    function isValidWallet(address wallet) external returns (bool);
}