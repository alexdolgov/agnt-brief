// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

interface IVaultManagerAdmin {
    event SetAddress(address indexed value, bytes configType);
    event SetUint(uint256 value, bytes configType);
    event SetBool(bool value, bytes configType, address haContract, bytes4 selector);
}
