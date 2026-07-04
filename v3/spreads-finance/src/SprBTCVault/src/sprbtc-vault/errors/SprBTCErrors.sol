// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

error ZeroAmount();
error ZeroAddress();
error InsufficientBalance();
error InsufficientShares();
error InvalidExchangeRate();
error ExchangeRateNotSet();
error CustodianNotSet();
error WithdrawalRequestNotFound();
error NotRequestOwner();
error RequestAlreadyProcessed();
error RequestAlreadyCancelled();
error WithdrawalQueueEmpty();
error QueueAtCapacity();
error QueuePausedError();
error NoSharesToClaim();
error EmergencyPausedError();
error Unauthorized();
error InvalidFee();
error TooManyPendingRequests();
error InsufficientWithdrawalAmount();
