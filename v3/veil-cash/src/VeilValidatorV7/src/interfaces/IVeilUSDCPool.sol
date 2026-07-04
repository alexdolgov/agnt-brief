// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

interface IVeilUSDCPool {
    function deposit(bytes32 commitment) external payable;
    function denomination() external view returns (uint256);
    function gasDeposit() external view returns (uint256);
} 