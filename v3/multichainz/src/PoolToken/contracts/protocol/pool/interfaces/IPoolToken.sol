// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IPoolToken {

function mint(address to, uint256 amount) external;

function burn(address to, uint256 amount) external;

function balanceOfUser(address account) external view returns (uint256);

}