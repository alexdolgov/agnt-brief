//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ISwapRouter {
    function swap(address,address) external payable returns (uint256);
}
