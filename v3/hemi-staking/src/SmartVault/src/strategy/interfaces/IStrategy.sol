// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IStrategy {
    error InvalidStrategy(address strategy);

    event Execute(bytes data);

    function execute(bytes calldata _data) external payable returns (uint256);
}
