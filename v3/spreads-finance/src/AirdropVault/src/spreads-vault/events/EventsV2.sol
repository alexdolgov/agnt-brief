// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.29;

import {WithdrawalRequest} from "@src/spreads-vault/structs/WithdrawalRequest.sol";

import {ReceiptTokens} from "@src/spreads-vault/structs/ReceiptTokens.sol";

event ExchangeRateUpdated(uint256 indexed rate, address indexed updater, uint256 timestamp);

event Deposit(
    address indexed depositor, uint256 collateralAmount, uint256 sharesMinted, uint256 exchangeRate, uint256 fee
);

event Withdraw(
    address indexed withdrawer, uint256 sharesAmount, uint256 collateralReceived, uint256 exchangeRate, uint256 fee
);

event WithdrawalQueued(address indexed requester, uint256 indexed requestId, uint256 shareAmount, uint256 timestamp);

event WithdrawalAllocated(
    address indexed requester,
    uint256 indexed requestId,
    uint256 shareAmount,
    uint256 collateralAmount,
    uint256 timestamp
);

event WithdrawalClaimed(address indexed requester, uint256 collateralAmount, uint256 timestamp);

event WithdrawalCancelled(address indexed requester, uint256 indexed requestId, uint256 shareAmount);

event QueueProcessed(uint256 requestsAllocated, uint256 totalCollateralAllocated);

event SPRTokenInitialized(address indexed sprToken);

event Initialized(address sprToken, address rewardDistributor);

event RewardsClaimed(address indexed user, uint256 amount);

event Staked(address indexed user, uint256 sprAmount, uint256 shares);

event Unstaked(address indexed user, uint256 shares, uint256 sprAmount);

event RewardsDistributed(address indexed distributor, uint256 totalSPRMinted);

event EmergencyPaused();

event EmergencyUnpaused();

event EmergencyWithdraw(address indexed token, address indexed recipient, uint256 amount);

event SPRTokenSet(address indexed sprToken);

event CustodianSet(address indexed custodian);

event CustodianSet(address indexed custodian, address indexed setter);

event CancellationFeeCollected(address indexed user, uint256 requestId, uint256 feeAmount);

event MaxLocksPerUserSet(uint256 maxLocks);

event MinLockWeightSet(uint256 minWeight);

event MaxLockWeightSet(uint256 maxWeight);

event OptimalLockDurationSet(uint256 weekCount);

event WaterfallBaseAPRSet(uint256 baseAPR);

event WaterfallCapRatioSet(uint256 capRatio);

event InitialExchangeRateSet(uint256 rate);

event FarmVaultFeeRateSet(uint256 feeRate);

event CancellationFeeFactorSet(uint256 cancellationFeeFactor);

event CollateralTokenSet(address indexed token);

event ReceiptTokensSet(ReceiptTokens[] tokens);

event FarmVaultRewardDistributorSet(address indexed distributor);

event AirdropVaultRewardDistributorSet(address indexed distributor);

event RequestsCleaned(uint256 requestsRemoved);

event QueuePaused(address indexed pauser, uint256 timestamp);

event QueueUnpaused(address indexed unpauser, uint256 timestamp);

event MaxQueueSizeSet(uint256 maxSize);

event ExchangeRateUpdated(address indexed updater, uint256 indexed rate, uint256 timestamp);

event CollateralRewardsConverted(uint256 amount);
