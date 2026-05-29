// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.
pragma solidity ^0.8.20;

interface IIndividualBuffer {
    struct Deposit {
        uint256 usdcAmount;
        uint256 ethAmount;
        address creator;
        address receiver;
    }

    struct Withdrawal {
        uint256 sharesAmount;
        uint256 ethAmount;
        address receiver;
        address creator;
    }

    event JoinedDepositQueue(uint256 indexed nonce, Deposit deposit);
    event BotDepositExecuted(uint256 indexed nonce, Deposit deposit);
    event BotWithdrawExecuted(uint256 indexed nonce, Withdrawal withdrawal);
    event JoinedWithdrawQueue(uint256 indexed nonce, Withdrawal withdrawal);
    event Refunded(address indexed user, uint256 indexed nonce, uint256 usdcAmount, uint256 ethAmount);

    function deposit(Deposit memory _deposit) external payable;
    function depositInternal(Deposit memory _deposit) external payable;
}
