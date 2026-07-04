// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IEsTokenUsage {
    function allocate(address userAddress, uint256 amount, bytes calldata data) external;
    function deallocate(address userAddress, uint256 amount, bytes calldata data) external;
    function harvest(uint256 pid) external;
    function esTokens(address token) external view returns (uint256);
}