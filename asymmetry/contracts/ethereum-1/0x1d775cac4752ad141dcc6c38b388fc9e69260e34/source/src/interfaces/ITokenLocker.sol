// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface ITokenLocker {
    function getAccountWeightAt(address account, uint256 week) external view returns (uint256);
    function getTotalWeightAt(uint256 week) external view returns (uint256);
    function startTime() external view returns (uint256);    
}