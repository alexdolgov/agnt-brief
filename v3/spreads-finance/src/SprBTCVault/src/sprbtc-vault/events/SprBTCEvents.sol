// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

// Deposit/Withdrawal events
event Deposit(
    address indexed depositor,
    uint256 wbtcAmount,
    uint256 sharesMinted,
    uint256 pricePerShare
);

event WithdrawalQueued(
    address indexed requester,
    uint256 indexed requestId,
    uint256 shareAmount,
    uint256 timestamp
);

event WithdrawalProcessed(
    address indexed requester,
    uint256 indexed requestId,
    uint256 shareAmount,
    uint256 wbtcAmount,
    uint256 fee
);

event WithdrawalCancelled(
    address indexed requester,
    uint256 indexed requestId,
    uint256 sharesReturned
);

event Claimed(
    address indexed user,
    uint256 wbtcAmount
);

event QueueProcessed(
    uint256 requestsProcessed,
    uint256 totalWbtcDistributed
);

// Rewards events
event RewardsDistributed(
    address indexed distributor,
    uint256 wbtcAmount
);

// Configuration events
event ExchangeRateUpdated(
    uint256 indexed newRate,
    address indexed updater,
    uint256 timestamp
);

event CustodianSet(address indexed custodian);
event TreasurySet(address indexed treasury);
event WithdrawalFeeSet(uint256 fee);

// Emergency events
event EmergencyPaused();
event EmergencyUnpaused();
event EmergencyWithdraw(
    address indexed token,
    address indexed recipient,
    uint256 amount
);

// Queue events
event QueuePaused(address indexed pauser, uint256 timestamp);
event QueueUnpaused(address indexed unpauser, uint256 timestamp);
