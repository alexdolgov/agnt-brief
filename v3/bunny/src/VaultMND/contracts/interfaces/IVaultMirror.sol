// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

interface IVaultMirror {
    function deposit(uint _amount, address _to) external;
    function withdraw(uint _amount, address _to) external;
}