// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IInterestRateStrategy {
    function initialize(bytes calldata initData) external;

    function registerVault(uint8 vaultId, bytes memory registerData) external;

    function interestRate(uint8 vaultId) external returns (uint256);
    function interestRateView(uint8 vaultId) external view returns (uint256);
}
