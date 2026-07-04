// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.29;

error InvalidExchangeRate();
error ExchangeRateNotSet();
error WithdrawalRequestNotFound();
error InsufficientVaultBalance();
error InvalidRequestId();
error WithdrawalQueueEmpty();
error NotRequestOwner();
error ShareTokenAlreadyInitialized();
error ShareTokenNotInitialized();
error NoAllocationToClaim();
error RequestAlreadyAllocated();
error AlreadyInitialized();
error NotInitialized();
error ZeroAmount();
error InvalidDuration();
error LockNotFound();
error InsufficientAmount();
error TooManyLocks();
error InvalidLockId();
error InvalidTimestamp();
error CustodianNotSet();
error CustodianAlreadySet();
error InvalidCustodianAddress();
error RequestAlreadyCanceled();
error ZeroMaxRequests();
error QueueAtCapacity();
error QueueAlreadyPaused();
error QueueNotPaused();
error QueuePausedError();
error SPRTokenNotInitialized();
error ZeroAddress();
error FactorGtPrecision();
