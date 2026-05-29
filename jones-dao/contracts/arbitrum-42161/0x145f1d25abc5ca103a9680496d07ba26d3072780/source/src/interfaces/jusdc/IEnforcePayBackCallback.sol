// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IEnforcePayBackCallback {
    function enforcePaybackCallback(uint256 amount, uint256 retention) external;
}
