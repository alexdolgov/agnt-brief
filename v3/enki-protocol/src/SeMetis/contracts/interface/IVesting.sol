//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IVesting {
    /**
     * Vesting eMetis to user 
     * @param user vesting user
     * @param amount asset amount
     */
    function deposit(address user, uint256 amount) external;
}