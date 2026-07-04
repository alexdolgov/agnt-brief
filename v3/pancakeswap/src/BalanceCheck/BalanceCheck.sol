// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract BalanceCheck {
    function getAddressBalance(address addr) external view returns(uint256) {
        return addr.balance;
    } 
}