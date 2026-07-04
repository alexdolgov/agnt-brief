// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "./IWalletFactory.sol";


interface IVestingWallet {
    function start() external view returns (uint256);

    function duration() external view returns (uint256);

    function cliff(uint64 timestamp) external view returns (uint256);

    function beneficiary() external view returns (address);

    function releasable(address token) external view returns (uint256);
    
    function released(address token) external view returns (uint256);
}

interface IManagedVestingWallet is IVestingWallet {
    function vestingManager() external view returns (address);
}

interface ITransferableVestingWallet1 is IManagedVestingWallet {
    function pinnedTo() external view returns (uint256);
    function pin(uint256 tokenId_) external;
    function unpin(uint256 tokenId_) external;
    function merge(address to) external;
    function increaseReleased(address token, uint256 amount) external;
}

interface ITransferableVestingWallet2 is ITransferableVestingWallet1 {
    function transfer(address beneficiary_, uint8 v, bytes32 r, bytes32 s, uint256 deadline) external;
    function transfer(address beneficiary_) external;
}