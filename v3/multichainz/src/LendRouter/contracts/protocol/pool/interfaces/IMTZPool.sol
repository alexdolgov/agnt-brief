// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IMTZPool {
    
    function supply(address tokenAddress, uint256 amount, address onBehalfOf) external payable;
    function borrow(address tokenAddress, uint256 amount, address onBehalfOf) external;
    function payDebt(address tokenAddress, uint256 amount, address onBehalfOf) external;
    function withdraw(address tokenAddress, uint256 amount, address onBehalfOf) external;
}