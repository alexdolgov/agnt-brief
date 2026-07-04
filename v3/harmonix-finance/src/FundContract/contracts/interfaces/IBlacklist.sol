// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

interface IBlacklist {
    function isWalletInBlacklist(address wallet) external view returns (bool);
}