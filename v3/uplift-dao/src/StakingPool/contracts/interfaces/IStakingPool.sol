// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IStakingPool {
    event WithdrawForAccount(address indexed account, uint withdrawAmount, uint fee, uint id);

    function withdrawForAccount(address _account, uint _id, uint _withdrawAmount, uint _fee) external;
}