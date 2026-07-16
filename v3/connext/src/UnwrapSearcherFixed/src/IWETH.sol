// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IWETH {
    function balanceOf(address) external returns (uint256);

    function withdraw(uint256 amount) external payable;

    function transfer(address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 amount) external returns (bool);
}
