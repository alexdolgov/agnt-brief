// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IPendleBoosterMainchain {
    function deposit(uint256 _pid, uint256 _amount, bool _stake) external;

    function withdraw(uint256 _pid, uint256 _amount) external;
}
