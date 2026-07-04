// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface IStrategyVBNB {
    function supplyBal() external view returns (uint);
    function borrowBal() external view returns (uint);

    function updateBalance() external;
    function deposit(address userAddress, uint256 wantAmt) external payable returns (uint256 shares);
    function withdraw(address userAddress, uint256 wantAmt) external returns (uint256 shares);
}