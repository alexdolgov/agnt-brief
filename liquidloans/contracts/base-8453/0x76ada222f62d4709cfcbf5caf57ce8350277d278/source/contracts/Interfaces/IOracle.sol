// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

interface IOracle {
    function getCurrentValue() external returns (bool, uint256, uint256, bytes32);
    function getPreviousValue(uint timestamp, bytes32 data) external returns (bool, uint256, uint256, bytes32);
}
// 2025 Liquid Loans