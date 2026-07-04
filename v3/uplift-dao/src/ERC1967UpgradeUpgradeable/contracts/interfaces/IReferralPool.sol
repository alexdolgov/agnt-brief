// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IReferralPool {
    event WithdrawForAccount(address indexed account, uint reward);

    function withdrawForAccount(address _account) external returns (uint);
}